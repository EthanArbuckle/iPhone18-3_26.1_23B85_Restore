@interface AXActionDetailController
- (BOOL)isActionAvailable:(int64_t)available;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)actionForSpecifier:(id)specifier;
- (int64_t)currentAction;
- (void)_updateCheckmarkForCell:(id)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCurrentAction:(int64_t)action;
- (void)updateSpecifierStateAndReload:(BOOL)reload;
@end

@implementation AXActionDetailController

- (void)updateSpecifierStateAndReload:(BOOL)reload
{
  reloadCopy = reload;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = PSEnabledKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 cellType] == &dword_0 + 3)
        {
          v12 = [NSNumber numberWithBool:[(AXActionDetailController *)self isActionAvailable:[(AXActionDetailController *)self actionForSpecifier:v11]]];
          [v11 setProperty:v12 forKey:v9];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (reloadCopy)
  {
    [(AXActionDetailController *)self reloadSpecifiers];
  }
}

- (void)_updateCheckmarkForCell:(id)cell
{
  cellCopy = cell;
  currentAction = [(AXActionDetailController *)self currentAction];
  specifier = [cellCopy specifier];
  [cellCopy setChecked:{currentAction == -[AXActionDetailController actionForSpecifier:](self, "actionForSpecifier:", specifier)}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = AXActionDetailController;
  v5 = [(AXActionDetailController *)&v7 tableView:view cellForRowAtIndexPath:path];
  [(AXActionDetailController *)self _updateCheckmarkForCell:v5];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AXActionDetailController;
  pathCopy = path;
  viewCopy = view;
  [(AXActionDetailController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v12.receiver, v12.super_class}];

  specifier = [v8 specifier];
  currentAction = [(AXActionDetailController *)self currentAction];
  v11 = [(AXActionDetailController *)self actionForSpecifier:specifier];
  if (currentAction != v11)
  {
    [(AXActionDetailController *)self updateCurrentAction:v11];
    [(AXActionDetailController *)self updateSpecifierStateAndReload:1];
  }
}

- (int64_t)actionForSpecifier:(id)specifier
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return -1;
}

- (BOOL)isActionAvailable:(int64_t)available
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)currentAction
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return -1;
}

- (void)updateCurrentAction:(int64_t)action
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

@end