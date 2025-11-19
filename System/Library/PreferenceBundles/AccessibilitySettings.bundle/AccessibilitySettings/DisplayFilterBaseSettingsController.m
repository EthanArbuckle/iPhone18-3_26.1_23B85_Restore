@interface DisplayFilterBaseSettingsController
- (DisplayFilterBaseSettingsController)init;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (unint64_t)_filterTypeForRow:(int64_t)a3;
- (unint64_t)selectedFilter;
- (void)accessibilitySettingsDidChange;
- (void)dealloc;
- (void)setFilterCategory:(unint64_t)a3 filter:(unint64_t)a4;
- (void)setGlobalFilterEnabled:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSystemFilter;
@end

@implementation DisplayFilterBaseSettingsController

- (DisplayFilterBaseSettingsController)init
{
  v6.receiver = self;
  v6.super_class = DisplayFilterBaseSettingsController;
  v2 = [(DisplayFilterBaseSettingsController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityUpdateSettings, kMADisplayFilterSettingsChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = DisplayFilterBaseSettingsController;
  [(DisplayFilterBaseSettingsController *)&v4 dealloc];
}

- (unint64_t)_filterTypeForRow:(int64_t)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 cellType] == &dword_0 + 3)
        {
          v12 = [v11 propertyForKey:@"filterOption"];
          if ([v12 length])
          {
            if (v8 == a3)
            {
              v13 = [(DisplayFilterBaseSettingsController *)self filterForCellIdentifier:v12];

              goto LABEL_15;
            }

            ++v8;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (unint64_t)selectedFilter
{
  v2 = [(DisplayFilterBaseSettingsController *)self filterCategory];

  return _MADisplayFilterPrefGetType(v2);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(DisplayFilterBaseSettingsController *)self specifierAtIndex:[(DisplayFilterBaseSettingsController *)self indexForIndexPath:v7]];
  v9 = [v8 propertyForKey:@"filterOption"];
  if ([v9 length])
  {
    v10 = -[DisplayFilterBaseSettingsController _filterTypeForRow:](self, "_filterTypeForRow:", [v7 row]);
    if (v10)
    {
      v11 = v10 == [(DisplayFilterBaseSettingsController *)self selectedFilter];
    }

    else
    {
      v11 = 0;
    }

    [v12 setChecked:v11];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = DisplayFilterBaseSettingsController;
  [(DisplayFilterBaseSettingsController *)&v9 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(DisplayFilterBaseSettingsController *)self specifierAtIndex:[(DisplayFilterBaseSettingsController *)self indexForIndexPath:v6]];
  v8 = [v7 propertyForKey:@"filterOption"];
  if ([v8 length])
  {
    -[DisplayFilterBaseSettingsController setFilterCategory:filter:](self, "setFilterCategory:filter:", -[DisplayFilterBaseSettingsController filterCategory](self, "filterCategory"), -[DisplayFilterBaseSettingsController _filterTypeForRow:](self, "_filterTypeForRow:", [v6 row]));
    [(DisplayFilterBaseSettingsController *)self updateSystemFilter];
  }
}

- (void)setFilterCategory:(unint64_t)a3 filter:(unint64_t)a4
{
  MADisplayFilterPrefSetType();

  __AXSGrayscaleSetEnabled(a4 == 1);
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DisplayFilterBaseSettingsController *)self indexForIndexPath:v7];
  v9 = [*&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 propertyForKey:PSCellClassKey];
  v11 = [v10 isEqual:objc_opt_class()];

  if (v11)
  {
    +[DisplayFilterPreviewCell previewCellHeight];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DisplayFilterBaseSettingsController;
    [(DisplayFilterBaseSettingsController *)&v15 tableView:v6 estimatedHeightForRowAtIndexPath:v7];
  }

  v13 = v12;

  return v13;
}

- (void)updateSystemFilter
{
  v3 = [(DisplayFilterBaseSettingsController *)self globalFilterEnabled];

  [(DisplayFilterBaseSettingsController *)self setGlobalFilterEnabled:v3];
}

- (void)setGlobalFilterEnabled:(BOOL)a3
{
  [(DisplayFilterBaseSettingsController *)self filterCategory];
  v3 = MADisplayFilterPrefSetCategoryEnabled();

  __AXSUpdateGrayscaleEnabledCache(v3);
}

- (void)accessibilitySettingsDidChange
{
  v2 = [(DisplayFilterBaseSettingsController *)self table];
  [v2 reloadData];
}

@end