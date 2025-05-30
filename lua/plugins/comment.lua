return {
  "numToStr/Comment.nvim",
  opts = {},
  keys = {
    -- Disable default gc mapping
    { "gc", false },
    { "gb", false },
    -- Add your custom mapping
    {
      "<leader>/",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      desc = "Toggle comment line",
      mode = "n",
    },
    {
      "<leader>/",
      function()
        local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
        vim.api.nvim_feedkeys(esc, "nx", false)
        require("Comment.api").toggle.linewise(vim.fn.visualmode())
      end,
      desc = "Toggle comment selection",
      mode = "v",
    },
  },
}
