@interface CDSDockSettingsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (CDSDockSettingsViewController)init;
- (id)_activeStateForSpecifier:(id)specifier;
- (id)_tableIndexPathForAppWhenDeactivated:(id)deactivated;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)_indexForNthApp:(int64_t)app withActiveState:(BOOL)state;
- (int64_t)_indexOfAppWithBundleID:(id)d;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)_indexForAppWhenDeactivated:(id)deactivated;
- (unint64_t)activeGroupSectionIndex;
- (unint64_t)inactiveGroupSectionIndex;
- (void)_loadDataWithCompletion:(id)completion;
- (void)_prepareSpecifiers;
- (void)_saveSettings;
- (void)_setActiveState:(BOOL)state forSpecifier:(id)specifier updateTable:(BOOL)table;
- (void)_setActiveState:(id)state forSpecifier:(id)specifier;
- (void)_settingsDidChange;
- (void)_showAlertWithTitle:(id)title message:(id)message specifier:(id)specifier;
- (void)_showLimitReached:(id)reached;
- (void)_updateOrderingFooterForSelectedSpecifier;
- (void)dataProviderDidChange:(id)change;
- (void)dealloc;
- (void)didSelectOrderingSpecifier:(id)specifier;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation CDSDockSettingsViewController

- (CDSDockSettingsViewController)init
{
  v11.receiver = self;
  v11.super_class = CDSDockSettingsViewController;
  v2 = [(CDSDockSettingsViewController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(CSLAppSwitcherModeSetting);
    modeSetting = v2->_modeSetting;
    v2->_modeSetting = v3;

    [(CSLAppSwitcherModeSetting *)v2->_modeSetting setDelegate:v2];
    v5 = objc_alloc_init(CSLAppSwitcherFavoritesSetting);
    favoritesSetting = v2->_favoritesSetting;
    v2->_favoritesSetting = v5;

    [(CSLAppSwitcherFavoritesSetting *)v2->_favoritesSetting setDelegate:v2];
    v7 = objc_alloc_init(CSLPRFDefaultAppDataProvider);
    appLibrary = v2->_appLibrary;
    v2->_appLibrary = v7;

    [(CSLPRFDefaultAppDataProvider *)v2->_appLibrary setDelegate:v2];
    v9 = +[MCProfileConnection sharedConnection];
    [v9 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = CDSDockSettingsViewController;
  [(CDSDockSettingsViewController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(CDSDockSettingsViewController *)self _prepareSpecifiers];
    v4 = *&self->PSEditableListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CDSDockSettingsViewController;
  [(CDSDockSettingsViewController *)&v4 viewDidLoad];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12BC;
  v3[3] = &unk_81E8;
  v3[4] = self;
  [(CDSDockSettingsViewController *)self _loadDataWithCompletion:v3];
}

- (unint64_t)activeGroupSectionIndex
{
  v3 = [(CDSDockSettingsViewController *)self getGroupSpecifierForSpecifierID:@"ActiveGroup"];
  v4 = [(CDSDockSettingsViewController *)self indexPathForSpecifier:v3];
  section = [v4 section];

  return section;
}

- (unint64_t)inactiveGroupSectionIndex
{
  v3 = [(CDSDockSettingsViewController *)self getGroupSpecifierForSpecifierID:@"InactiveGroup"];
  v4 = [(CDSDockSettingsViewController *)self indexPathForSpecifier:v3];
  section = [v4 section];

  return section;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = [(CDSDockSettingsViewController *)self specifierAtIndexPath:pathCopy];
  activeGroupSectionIndex = [(CDSDockSettingsViewController *)self activeGroupSectionIndex];
  section = [indexPathCopy section];
  section2 = [pathCopy section];
  if (section2 != [indexPathCopy section] && section == activeGroupSectionIndex && -[CDSDockSettingsViewController _hasMaximumNumberOfActiveApps](self, "_hasMaximumNumberOfActiveApps"))
  {
    [(CDSDockSettingsViewController *)self _showLimitReached:0];
    goto LABEL_14;
  }

  v12 = [v8 app];
  v13 = v12;
  if (section == activeGroupSectionIndex)
  {
    inactiveBundleIDs = self->_inactiveBundleIDs;
    bundleIdentifier = [v12 bundleIdentifier];
    [(NSMutableArray *)inactiveBundleIDs removeObject:bundleIdentifier];

    activeBundleIDs = self->_activeBundleIDs;
    bundleIdentifier2 = [v13 bundleIdentifier];
    [(NSMutableArray *)activeBundleIDs removeObject:bundleIdentifier2];

    v20 = self->_activeBundleIDs;
    bundleIdentifier3 = [v13 bundleIdentifier];
    -[NSMutableArray insertObject:atIndex:](v20, "insertObject:atIndex:", bundleIdentifier3, [indexPathCopy row]);

    [(CDSDockSettingsViewController *)self _saveSettings];
    if ([pathCopy section] == activeGroupSectionIndex && objc_msgSend(indexPathCopy, "section") == activeGroupSectionIndex)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_12;
  }

  [(CDSDockSettingsViewController *)self _setActiveState:0 forSpecifier:v8 updateTable:0];
  section3 = [pathCopy section];
  if (section3 != [indexPathCopy section])
  {
    v15 = 0;
LABEL_12:
    [CSLPRFAppSwitcherEditing logAppSwitcherEditingAction:v15 fromSource:2];
  }

  [(CDSDockSettingsViewController *)self reloadSpecifiers];

LABEL_14:
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  activeGroupSectionIndex = [(CDSDockSettingsViewController *)self activeGroupSectionIndex];
  if ([indexPathCopy section] == activeGroupSectionIndex)
  {
    v12 = indexPathCopy;
  }

  else
  {
    inactiveGroupSectionIndex = [(CDSDockSettingsViewController *)self inactiveGroupSectionIndex];
    if (([indexPathCopy section] != inactiveGroupSectionIndex || objc_msgSend(pathCopy, "section") != inactiveGroupSectionIndex) && (objc_msgSend(indexPathCopy, "section") == inactiveGroupSectionIndex || objc_msgSend(indexPathCopy, "section") == activeGroupSectionIndex))
    {
      v19.receiver = self;
      v19.super_class = CDSDockSettingsViewController;
      v14 = [(CDSDockSettingsViewController *)&v19 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
      specifier = [v14 specifier];
      v16 = [specifier app];
      v17 = [(CDSDockSettingsViewController *)self _tableIndexPathForAppWhenDeactivated:v16];

      goto LABEL_10;
    }

    v12 = pathCopy;
  }

  v17 = v12;
LABEL_10:

  return v17;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(CDSDockSettingsViewController *)self specifierAtIndexPath:path];
  v6 = [v5 app];
  table = [(CDSDockSettingsViewController *)self table];
  isEditing = [table isEditing];

  if (isEditing)
  {
    bundleIdentifier = [v6 bundleIdentifier];
    if ([(CDSDockSettingsViewController *)self _isAppActiveWithBundleID:bundleIdentifier])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DOCK_REMOVE" value:&stru_8320 table:@"CompanionDockSettings"];

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(CDSDockSettingsViewController *)self specifierAtIndexPath:pathCopy];
  if (style != 2 || ![(CDSDockSettingsViewController *)self _hasMaximumNumberOfActiveApps])
  {
    v15.receiver = self;
    v15.super_class = CDSDockSettingsViewController;
    [(CDSDockSettingsViewController *)&v15 tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:pathCopy];
    v11 = [v10 app];
    bundleIdentifier = [v11 bundleIdentifier];
    v13 = [(CDSDockSettingsViewController *)self _isAppActiveWithBundleID:bundleIdentifier];

    v14 = 1;
    [(CDSDockSettingsViewController *)self _setActiveState:v13 ^ 1 forSpecifier:v10 updateTable:1];
    if (style != 2)
    {
      if (style != 1)
      {
LABEL_8:

        goto LABEL_9;
      }

      v14 = 0;
    }

    [CSLPRFAppSwitcherEditing logAppSwitcherEditingAction:v14 fromSource:2];
    goto LABEL_8;
  }

  [(CDSDockSettingsViewController *)self _showLimitReached:v10];
LABEL_9:
}

- (void)dataProviderDidChange:(id)change
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1A8C;
  v3[3] = &unk_81E8;
  v3[4] = self;
  [(CDSDockSettingsViewController *)self _loadDataWithCompletion:v3];
}

- (void)_showLimitReached:(id)reached
{
  reachedCopy = reached;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v5 localizedStringForKey:@"DOCK_LIMIT_TITLE" value:&stru_8320 table:@"CompanionDockSettings"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DOCK_LIMIT_MESSAGE" value:&stru_8320 table:@"CompanionDockSettings"];
  v8 = [NSString localizedStringWithFormat:v7, self->_maximumActiveBundleIDs];

  [(CDSDockSettingsViewController *)self _showAlertWithTitle:v9 message:v8 specifier:reachedCopy];
}

- (void)_showAlertWithTitle:(id)title message:(id)message specifier:(id)specifier
{
  specifierCopy = specifier;
  v9 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DOCK_OK" value:&stru_8320 table:@"CompanionDockSettings"];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1D3C;
  v17 = &unk_8210;
  v18 = specifierCopy;
  selfCopy = self;
  v12 = specifierCopy;
  v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:&v14];
  [v9 addAction:{v13, v14, v15, v16, v17}];

  [(CDSDockSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_saveSettings
{
  if (self->_maximumActiveBundleIDs)
  {
    [(CSLAppSwitcherFavoritesSetting *)self->_favoritesSetting setFavorites:self->_activeBundleIDs];
  }
}

- (void)_loadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  favorites = [(CSLAppSwitcherFavoritesSetting *)self->_favoritesSetting favorites];
  self->_maximumActiveBundleIDs = [(CSLAppSwitcherFavoritesSetting *)self->_favoritesSetting maximumFavorites];
  appLibrary = self->_appLibrary;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E74;
  v9[3] = &unk_8278;
  v9[4] = self;
  v10 = favorites;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = favorites;
  [(CSLPRFDefaultAppDataProvider *)appLibrary loadAppsWithCompletion:v9];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_224C;
  v4[3] = &unk_81E8;
  v4[4] = self;
  [(CDSDockSettingsViewController *)self _loadDataWithCompletion:v4, info];
}

- (void)_settingsDidChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2340;
  v2[3] = &unk_81E8;
  v2[4] = self;
  [(CDSDockSettingsViewController *)self _loadDataWithCompletion:v2];
}

- (void)_updateOrderingFooterForSelectedSpecifier
{
  orderingGroupSpecifier = self->_orderingGroupSpecifier;
  if (!orderingGroupSpecifier)
  {
    return;
  }

  v4 = [(PSSpecifier *)orderingGroupSpecifier propertyForKey:PSRadioGroupCheckedSpecifierKey];
  v8 = v4;
  if (v4 == self->_favoritesOrderingSpecifier)
  {
    v6 = @"DOCK_ORDERING_FAVORITES_SELECTED_FOOTER";
LABEL_8:
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v7 localizedStringForKey:v6 value:&stru_8320 table:@"CompanionDockSettings"];

    goto LABEL_9;
  }

  if (v4 == self->_MRUOrderingSpecifier)
  {
    v6 = @"DOCK_ORDERING_MRU_SELECTED_FOOTER";
    goto LABEL_8;
  }

  v5 = &stru_8320;
LABEL_9:
  [(PSSpecifier *)self->_orderingGroupSpecifier setProperty:v5 forKey:PSFooterTextGroupKey];
}

- (void)_prepareSpecifiers
{
  v33 = +[NSMutableArray array];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DOCK_ORDERING_GROUP_NAME" value:&stru_8320 table:@"CompanionDockSettings"];
  v5 = [PSSpecifier groupSpecifierWithID:@"OrderingOptionGroup" name:v4];
  orderingGroupSpecifier = self->_orderingGroupSpecifier;
  self->_orderingGroupSpecifier = v5;

  [(PSSpecifier *)self->_orderingGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DOCK_ORDERING_FAVORITES" value:&stru_8320 table:@"CompanionDockSettings"];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  favoritesOrderingSpecifier = self->_favoritesOrderingSpecifier;
  self->_favoritesOrderingSpecifier = v9;

  v11 = PSEnabledKey;
  [(PSSpecifier *)self->_favoritesOrderingSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DOCK_ORDERING_MRU" value:&stru_8320 table:@"CompanionDockSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  MRUOrderingSpecifier = self->_MRUOrderingSpecifier;
  self->_MRUOrderingSpecifier = v14;

  [(PSSpecifier *)self->_MRUOrderingSpecifier setProperty:&__kCFBooleanTrue forKey:v11];
  v16 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
  spinnerSpecifier = self->_spinnerSpecifier;
  self->_spinnerSpecifier = v16;

  if ([(CDSDockSettingsViewController *)self useMRUOrdering])
  {
    v18 = 232;
  }

  else
  {
    v18 = 224;
  }

  v19 = *&self->PSEditableListController_opaque[v18];
  [(PSSpecifier *)self->_orderingGroupSpecifier setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
  [(CDSDockSettingsViewController *)self _updateOrderingFooterForSelectedSpecifier];
  [v33 addObject:self->_orderingGroupSpecifier];
  [v33 addObject:self->_MRUOrderingSpecifier];
  [v33 addObject:self->_favoritesOrderingSpecifier];
  v20 = objc_opt_new();
  groupSpecifiers = self->_groupSpecifiers;
  self->_groupSpecifiers = v20;

  v22 = objc_alloc_init(NSMutableArray);
  favoritesListSpecifiers = self->_favoritesListSpecifiers;
  self->_favoritesListSpecifiers = v22;

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"DOCK_FAVORITES_INCLUDED_SECTION_HEADER" value:&stru_8320 table:@"CompanionDockSettings"];
  v26 = [PSSpecifier groupSpecifierWithID:@"ActiveGroup" name:v25];

  [v33 addObject:v26];
  [(NSMutableArray *)self->_groupSpecifiers addObject:v26];
  if ([(CDSDockSettingsViewController *)self useMRUOrdering])
  {
    [v33 removeObject:v26];
    [(CDSDockSettingsViewController *)self setEditingButtonHidden:1 animated:0];
  }

  else
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_29C0;
    v34[3] = &unk_82A0;
    v34[4] = self;
    v27 = objc_retainBlock(v34);
    [(NSMutableArray *)self->_activeBundleIDs enumerateObjectsUsingBlock:v27];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"DOCK_DO_NOT_INCLUDE_HEADER" value:&stru_8320 table:@"CompanionDockSettings"];
    v30 = [PSSpecifier groupSpecifierWithID:@"InactiveGroup" name:v29];

    [(NSMutableArray *)self->_favoritesListSpecifiers addObject:v30];
    [(NSMutableArray *)self->_groupSpecifiers addObject:v30];
    [(NSMutableArray *)self->_inactiveBundleIDs enumerateObjectsUsingBlock:v27];
    [v33 addObjectsFromArray:self->_favoritesListSpecifiers];
    [(CDSDockSettingsViewController *)self setEditingButtonHidden:0 animated:0];
  }

  v31 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] = v33;
  v32 = v33;
}

- (void)_setActiveState:(id)state forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  -[CDSDockSettingsViewController _setActiveState:forSpecifier:updateTable:](self, "_setActiveState:forSpecifier:updateTable:", [state BOOLValue], specifierCopy, 1);

  [(CDSDockSettingsViewController *)self reloadSpecifiers];
}

- (id)_activeStateForSpecifier:(id)specifier
{
  v4 = [specifier app];
  activeBundleIDs = self->_activeBundleIDs;
  bundleIdentifier = [v4 bundleIdentifier];
  v7 = [(NSMutableArray *)activeBundleIDs containsObject:bundleIdentifier];

  v8 = [NSNumber numberWithBool:v7];

  return v8;
}

- (void)_setActiveState:(BOOL)state forSpecifier:(id)specifier updateTable:(BOOL)table
{
  tableCopy = table;
  stateCopy = state;
  specifierCopy = specifier;
  if (stateCopy && [(CDSDockSettingsViewController *)self _hasMaximumNumberOfActiveApps])
  {
    [(CDSDockSettingsViewController *)self _showLimitReached:specifierCopy];
    goto LABEL_17;
  }

  v9 = [specifierCopy app];
  bundleIdentifier = [v9 bundleIdentifier];

  if (bundleIdentifier)
  {
    if (stateCopy)
    {
      inactiveBundleIDs = self->_inactiveBundleIDs;
      bundleIdentifier2 = [v9 bundleIdentifier];
      [(NSMutableArray *)inactiveBundleIDs removeObject:bundleIdentifier2];

      activeBundleIDs = self->_activeBundleIDs;
      bundleIdentifier3 = [v9 bundleIdentifier];
      LOBYTE(activeBundleIDs) = [(NSMutableArray *)activeBundleIDs containsObject:bundleIdentifier3];

      if ((activeBundleIDs & 1) == 0)
      {
        v15 = self->_activeBundleIDs;
        bundleIdentifier4 = [v9 bundleIdentifier];
        [(NSMutableArray *)v15 addObject:bundleIdentifier4];
LABEL_10:
      }
    }

    else
    {
      v17 = self->_activeBundleIDs;
      bundleIdentifier5 = [v9 bundleIdentifier];
      [(NSMutableArray *)v17 removeObject:bundleIdentifier5];

      v19 = self->_inactiveBundleIDs;
      bundleIdentifier6 = [v9 bundleIdentifier];
      LOBYTE(v19) = [(NSMutableArray *)v19 containsObject:bundleIdentifier6];

      if ((v19 & 1) == 0)
      {
        v21 = [(CDSDockSettingsViewController *)self _indexForAppWhenDeactivated:v9];
        v22 = self->_inactiveBundleIDs;
        bundleIdentifier4 = [v9 bundleIdentifier];
        [(NSMutableArray *)v22 insertObject:bundleIdentifier4 atIndex:v21];
        goto LABEL_10;
      }
    }
  }

  if (tableCopy)
  {
    [(CDSDockSettingsViewController *)self removeSpecifier:specifierCopy];
    identifier = [specifierCopy identifier];
    v24 = [(CDSDockSettingsViewController *)self _indexOfAppWithBundleID:identifier];

    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_364C(specifierCopy, stateCopy);
      }
    }

    else
    {
      [(CDSDockSettingsViewController *)self insertSpecifier:specifierCopy atIndex:v24 animated:1];
    }
  }

  [(CDSDockSettingsViewController *)self _saveSettings];

LABEL_17:
}

- (int64_t)_indexOfAppWithBundleID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableArray *)self->_activeBundleIDs indexOfObject:dCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSMutableArray *)self->_inactiveBundleIDs indexOfObject:dCopy];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = @"InactiveGroup";
    }
  }

  else
  {
    v6 = v5;
    v7 = @"ActiveGroup";
  }

  v8 = [(CDSDockSettingsViewController *)self rangeOfSpecifiersInGroupID:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8 + v6 + 1;
  }

  return v9;
}

- (int64_t)_indexForNthApp:(int64_t)app withActiveState:(BOOL)state
{
  appCopy = app;
  if (!state)
  {
    return [(NSMutableArray *)self->_activeBundleIDs count]+ app;
  }

  return appCopy;
}

- (unint64_t)_indexForAppWhenDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_inactiveBundleIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v14 = &v7[v8];
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [(NSDictionary *)self->_apps objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v10)];
      v12 = [deactivatedCopy compare:v11];

      if (v12 == -1)
      {
        break;
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v8 = v14;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_tableIndexPathForAppWhenDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  inactiveGroupSectionIndex = [(CDSDockSettingsViewController *)self inactiveGroupSectionIndex];
  v6 = [(CDSDockSettingsViewController *)self _indexForAppWhenDeactivated:deactivatedCopy];

  return [NSIndexPath indexPathForRow:v6 inSection:inactiveGroupSectionIndex];
}

- (void)didSelectOrderingSpecifier:(id)specifier
{
  specifierCopy = specifier;
  mRUOrderingSpecifier = [(CDSDockSettingsViewController *)self MRUOrderingSpecifier];

  if ((mRUOrderingSpecifier == specifierCopy) != [(CDSDockSettingsViewController *)self useMRUOrdering])
  {
    [(CSLAppSwitcherModeSetting *)self->_modeSetting setMode:mRUOrderingSpecifier == specifierCopy];

    [(CDSDockSettingsViewController *)self reloadSpecifiers];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CDSDockSettingsViewController *)self specifierAtIndexPath:pathCopy];
  favoritesOrderingSpecifier = [(CDSDockSettingsViewController *)self favoritesOrderingSpecifier];
  if (v8 == favoritesOrderingSpecifier)
  {
    goto LABEL_6;
  }

  mRUOrderingSpecifier = [(CDSDockSettingsViewController *)self MRUOrderingSpecifier];
  v11 = mRUOrderingSpecifier;
  if (v8 == mRUOrderingSpecifier)
  {

LABEL_6:
    goto LABEL_7;
  }

  spinnerSpecifier = [(CDSDockSettingsViewController *)self spinnerSpecifier];

  if (v8 == spinnerSpecifier)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v15.receiver = self;
  v15.super_class = CDSDockSettingsViewController;
  v13 = [(CDSDockSettingsViewController *)&v15 tableView:viewCopy canEditRowAtIndexPath:pathCopy];
LABEL_8:

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = CDSDockSettingsViewController;
  pathCopy = path;
  [(CDSDockSettingsViewController *)&v10 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CDSDockSettingsViewController *)self specifierAtIndexPath:pathCopy, v10.receiver, v10.super_class];

  v8 = [(CDSDockSettingsViewController *)self getGroupSpecifierForSpecifier:v7];
  orderingGroupSpecifier = [(CDSDockSettingsViewController *)self orderingGroupSpecifier];

  if (v8 == orderingGroupSpecifier)
  {
    [(CDSDockSettingsViewController *)self didSelectOrderingSpecifier:v7];
    [(CDSDockSettingsViewController *)self _updateOrderingFooterForSelectedSpecifier];
  }
}

@end