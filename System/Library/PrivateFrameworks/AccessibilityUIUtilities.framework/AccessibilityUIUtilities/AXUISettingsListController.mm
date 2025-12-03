@interface AXUISettingsListController
- (AXUISettingsListController)init;
- (id)specifierForKey:(id)key;
- (void)dealloc;
- (void)setButtonCellStatus:(BOOL)status forSpecifier:(id)specifier;
@end

@implementation AXUISettingsListController

- (AXUISettingsListController)init
{
  v6.receiver = self;
  v6.super_class = AXUISettingsListController;
  v2 = [(AXUISettingsSetupCapableListController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityiTunesSettings, *MEMORY[0x1E69E4FC8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AXUISettingsListController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

- (id)specifierForKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  [(AXUISettingsListController *)self specifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x1E69C5940];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{v9, v16}];
        v13 = [v12 isEqualToString:keyCopy];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)setButtonCellStatus:(BOOL)status forSpecifier:(id)specifier
{
  if (specifier)
  {
    statusCopy = status;
    v5 = [specifier propertyForKey:*MEMORY[0x1E69C5990]];
    [v5 setCellEnabled:statusCopy];
  }
}

@end