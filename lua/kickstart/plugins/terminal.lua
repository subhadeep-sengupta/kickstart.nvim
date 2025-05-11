return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        -- You can tweak these options!
        size = 20,
        open_mapping = [[<c-\>]], -- Ctrl + \
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = 'float', -- "vertical" or "float" are also nice
        close_on_exit = true,
        shell = vim.o.shell,
      }

      -- Optional: Keymaps for different terminal layouts
      vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = 'Toggle Terminal' })
      vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', { desc = 'Vertical Terminal' })
      vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Floating Terminal' })
    end,
  },
}
