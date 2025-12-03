@interface BCSContextMenuController
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)showMenuForAction:(id)action fromView:(id)view;
@end

@implementation BCSContextMenuController

- (void)showMenuForAction:(id)action fromView:(id)view
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  viewCopy = view;
  objc_storeStrong(&self->_viewForMenu, view);
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = actionCopy;
  obj = [actionCopy actionPickerItems];
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
        label = [v12 label];
        icon = [v12 icon];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __55__BCSContextMenuController_showMenuForAction_fromView___block_invoke;
        v24[3] = &unk_278D02448;
        v24[4] = self;
        v24[5] = v12;
        v16 = [v13 actionWithTitle:label image:icon identifier:0 handler:v24];

        [array addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = [MEMORY[0x277D75710] menuWithChildren:array];
  actionPickerMenu = self->_actionPickerMenu;
  self->_actionPickerMenu = v17;

  v19 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
  [(UIView *)self->_viewForMenu addInteraction:v19];
  [v19 _presentMenuAtLocation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__BCSContextMenuController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v6[3] = &unk_278D02470;
  v6[4] = self;
  v4 = [MEMORY[0x277D753B0] configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  [(UIView *)self->_viewForMenu removeInteraction:interaction, configuration, animator];
  finishAction = self->_finishAction;
  if (finishAction)
  {
    finishAction[2](finishAction, self->_selectedItem);
  }

  selectedItem = self->_selectedItem;
  self->_selectedItem = 0;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  defaultStyle = [MEMORY[0x277D75EA8] defaultStyle];
  [defaultStyle setPreferredLayout:3];

  return defaultStyle;
}

@end