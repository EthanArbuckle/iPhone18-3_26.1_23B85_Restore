@interface BCSContextMenuController
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)showMenuForAction:(id)a3 fromView:(id)a4;
@end

@implementation BCSContextMenuController

- (void)showMenuForAction:(id)a3 fromView:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  objc_storeStrong(&self->_viewForMenu, a4);
  v7 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v6;
  obj = [v6 actionPickerItems];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = MEMORY[0x277D750C8];
        v14 = [v12 label];
        v15 = [v12 icon];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __55__BCSContextMenuController_showMenuForAction_fromView___block_invoke;
        v24[3] = &unk_278D02448;
        v24[4] = self;
        v24[5] = v12;
        v16 = [v13 actionWithTitle:v14 image:v15 identifier:0 handler:v24];

        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = [MEMORY[0x277D75710] menuWithChildren:v7];
  actionPickerMenu = self->_actionPickerMenu;
  self->_actionPickerMenu = v17;

  v19 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
  [(UIView *)self->_viewForMenu addInteraction:v19];
  [v19 _presentMenuAtLocation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__BCSContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_278D02470;
  v6[4] = self;
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  [(UIView *)self->_viewForMenu removeInteraction:a3, a4, a5];
  finishAction = self->_finishAction;
  if (finishAction)
  {
    finishAction[2](finishAction, self->_selectedItem);
  }

  selectedItem = self->_selectedItem;
  self->_selectedItem = 0;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v4 = [MEMORY[0x277D75EA8] defaultStyle];
  [v4 setPreferredLayout:3];

  return v4;
}

@end