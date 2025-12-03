@interface DisplayFilterBaseSettingsController
- (DisplayFilterBaseSettingsController)init;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (unint64_t)_filterTypeForRow:(int64_t)row;
- (unint64_t)selectedFilter;
- (void)accessibilitySettingsDidChange;
- (void)dealloc;
- (void)setFilterCategory:(unint64_t)category filter:(unint64_t)filter;
- (void)setGlobalFilterEnabled:(BOOL)enabled;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

- (unint64_t)_filterTypeForRow:(int64_t)row
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
            if (v8 == row)
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
  filterCategory = [(DisplayFilterBaseSettingsController *)self filterCategory];

  return _MADisplayFilterPrefGetType(filterCategory);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(DisplayFilterBaseSettingsController *)self specifierAtIndex:[(DisplayFilterBaseSettingsController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"filterOption"];
  if ([v9 length])
  {
    v10 = -[DisplayFilterBaseSettingsController _filterTypeForRow:](self, "_filterTypeForRow:", [pathCopy row]);
    if (v10)
    {
      v11 = v10 == [(DisplayFilterBaseSettingsController *)self selectedFilter];
    }

    else
    {
      v11 = 0;
    }

    [cellCopy setChecked:v11];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = DisplayFilterBaseSettingsController;
  [(DisplayFilterBaseSettingsController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(DisplayFilterBaseSettingsController *)self specifierAtIndex:[(DisplayFilterBaseSettingsController *)self indexForIndexPath:pathCopy]];
  v8 = [v7 propertyForKey:@"filterOption"];
  if ([v8 length])
  {
    -[DisplayFilterBaseSettingsController setFilterCategory:filter:](self, "setFilterCategory:filter:", -[DisplayFilterBaseSettingsController filterCategory](self, "filterCategory"), -[DisplayFilterBaseSettingsController _filterTypeForRow:](self, "_filterTypeForRow:", [pathCopy row]));
    [(DisplayFilterBaseSettingsController *)self updateSystemFilter];
  }
}

- (void)setFilterCategory:(unint64_t)category filter:(unint64_t)filter
{
  MADisplayFilterPrefSetType();

  __AXSGrayscaleSetEnabled(filter == 1);
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(DisplayFilterBaseSettingsController *)self indexForIndexPath:pathCopy];
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
    [(DisplayFilterBaseSettingsController *)&v15 tableView:viewCopy estimatedHeightForRowAtIndexPath:pathCopy];
  }

  v13 = v12;

  return v13;
}

- (void)updateSystemFilter
{
  globalFilterEnabled = [(DisplayFilterBaseSettingsController *)self globalFilterEnabled];

  [(DisplayFilterBaseSettingsController *)self setGlobalFilterEnabled:globalFilterEnabled];
}

- (void)setGlobalFilterEnabled:(BOOL)enabled
{
  [(DisplayFilterBaseSettingsController *)self filterCategory];
  v3 = MADisplayFilterPrefSetCategoryEnabled();

  __AXSUpdateGrayscaleEnabledCache(v3);
}

- (void)accessibilitySettingsDidChange
{
  table = [(DisplayFilterBaseSettingsController *)self table];
  [table reloadData];
}

@end