@interface CSAccountController
- (CSAccountController)init;
- (id)_accessLevelStringForSpecifier:(id)a3;
- (id)_valueForAccountEnabledness:(id)a3;
- (id)specifiers;
- (id)specifiersForAccountsICanAccess;
- (id)specifiersForAccountsWithGrantedAccess;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_updateSpecifierSubtitle:(id)a3;
- (void)accountRefreshFinished:(id)a3;
- (void)cleanupAccountRefresher;
- (void)didModifyDelegate:(id)a3;
- (void)reloadDelegateSources;
- (void)reloadGrantedDelegates;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CSAccountController

- (CSAccountController)init
{
  v7.receiver = self;
  v7.super_class = CSAccountController;
  v2 = [(CSAccountController *)&v7 init];
  if (v2)
  {
    v3 = [[EKEventStore alloc] initWithEKOptions:64 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1];
    eventStore = v2->_eventStore;
    v2->_eventStore = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"eventStoreChanged:" name:EKEventStoreChangedNotification object:0];
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CSAccountController;
  [(CSAccountController *)&v16 viewDidAppear:a3];
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] isEqual:@"DELEGATE_CALENDARS"])
  {
    v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/DELEGATE_CALENDARS"];
    v5 = [_NSLocalizedStringResource alloc];
    v6 = +[NSLocale currentLocale];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 bundleURL];
    v9 = [v5 initWithKey:@"Delegate Calendars" table:@"MobileCalSettings" locale:v6 bundleURL:v8];

    v10 = [_NSLocalizedStringResource alloc];
    v11 = +[NSLocale currentLocale];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 bundleURL];
    v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:v13];

    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [(CSAccountController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];
  }
}

- (void)setSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = CSAccountController;
  v4 = a3;
  [(CSAccountController *)&v12 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"CSSourceKey", v12.receiver, v12.super_class}];
  ownerSource = self->_ownerSource;
  self->_ownerSource = v5;

  v7 = [v4 propertyForKey:@"CSPresentedFromDisambiguationControllerKey"];

  LODWORD(v4) = [v7 BOOLValue];
  if (v4)
  {
    v8 = CUIKDisplayedTitleForSource();
    v9 = [(CSAccountController *)self navigationItem];
    [v9 setTitle:v8];
  }

  [(CSAccountController *)self cleanupAccountRefresher];
  v10 = [[EKAccountRefresher alloc] initWithEventStore:self->_eventStore];
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = v10;

  [(EKAccountRefresher *)self->_currentAccountRefresher setDelegate:self];
  [(EKAccountRefresher *)self->_currentAccountRefresher refresh];
  [(CSAccountController *)self reloadGrantedDelegates];
  [(CSAccountController *)self reloadDelegateSources];
}

- (void)cleanupAccountRefresher
{
  [(EKAccountRefresher *)self->_currentAccountRefresher setDelegate:0];
  currentAccountRefresher = self->_currentAccountRefresher;
  self->_currentAccountRefresher = 0;
}

- (void)accountRefreshFinished:(id)a3
{
  [(CSAccountController *)self reloadDelegateSources];

  [(CSAccountController *)self cleanupAccountRefresher];
}

- (void)reloadGrantedDelegates
{
  self->_loadingGrantedDelegates = 1;
  eventStore = self->_eventStore;
  ownerSource = self->_ownerSource;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A2A0;
  v4[3] = &unk_20C40;
  v4[4] = self;
  [(EKEventStore *)eventStore fetchGrantedDelegatesForSource:ownerSource results:v4];
}

- (void)reloadDelegateSources
{
  v3 = [(EKEventStore *)self->_eventStore delegateSourcesForSource:self->_ownerSource];
  v4 = [v3 sortedArrayUsingComparator:&stru_20C80];
  accountsICanAccess = self->_accountsICanAccess;
  self->_accountsICanAccess = v4;

  [(CSAccountController *)self reloadSpecifiers];
}

- (id)specifiersForAccountsICanAccess
{
  v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_accountsICanAccess, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_accountsICanAccess;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = PSCellClassKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = CUIKDisplayedTitleForSource();
        v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"_valueForAccountEnabledness:" detail:objc_opt_class() cell:2 edit:0];

        [v10 setProperty:v8 forKey:@"CSSourceKey"];
        [v10 setProperty:objc_opt_class() forKey:v6];
        [(CSAccountController *)self _updateSpecifierSubtitle:v10];
        [v13 addObject:v10];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return v13;
}

- (void)_updateSpecifierSubtitle:(id)a3
{
  v3 = a3;
  v9 = [v3 propertyForKey:@"CSSourceKey"];
  v4 = [v9 isWritable];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"View & Edit";
  }

  else
  {
    v7 = @"View Only";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_210B8 table:@"MobileCalSettings"];
  [v3 setProperty:v8 forKey:PSTableCellSubtitleTextKey];
}

- (id)_valueForAccountEnabledness:(id)a3
{
  v3 = [a3 propertyForKey:@"CSSourceKey"];
  v4 = [v3 isEnabled];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"On";
  }

  else
  {
    v7 = @"Off";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_210B8 table:@"MobileCalSettings"];

  return v8;
}

- (id)specifiersForAccountsWithGrantedAccess
{
  v12 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_accountsWithGrantedAccess, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_accountsWithGrantedAccess;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v11 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 displayName];
        v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_accessLevelStringForSpecifier:" detail:objc_opt_class() cell:2 edit:0];

        [v8 setProperty:v6 forKey:@"CSGrantedDelegateKey"];
        [v8 setProperty:self->_ownerSource forKey:@"CSSourceKey"];
        [v8 setProperty:self forKey:@"CSDelegateClassInstanceKey"];
        [v12 addObject:v8];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v12;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    self->_accountsWithGrantedAccessSection = 0;
    self->_accountsICanAccessSection = 1;
    v7 = [v6 localizedStringForKey:@"Accounts with access to me group title" value:@"Allow access to my calendar:" table:@"MobileCalSettings"];
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    v9 = [v6 localizedStringForKey:@"Accounts with access to me explanatory note" value:@"Manage who has access to your calendars." table:@"MobileCalSettings"];
    v10 = PSFooterTextGroupKey;
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v5 addObject:v8];
    v11 = [(CSAccountController *)self specifiersForAccountsWithGrantedAccess];
    [v5 addObjectsFromArray:v11];

    if (self->_loadingGrantedDelegates && ![(NSArray *)self->_accountsWithGrantedAccess count])
    {
      self->_isShowingLoadingCell = 1;
      v22 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];

      [v5 addObject:v22];
      v8 = v22;
    }

    else
    {
      self->_isShowingLoadingCell = 0;
    }

    v12 = [v6 localizedStringForKey:@"New button title" value:@"Add Person" table:@"MobileCalSettings"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v13 setProperty:self->_ownerSource forKey:@"CSSourceKey"];
    [v13 setProperty:self forKey:@"CSParentControllerKey"];
    [v5 addObject:v13];
    v14 = [v6 localizedStringForKey:@"Accounts I can access group title" value:@"Accounts I can access:" table:@"MobileCalSettings"];
    v15 = [PSSpecifier groupSpecifierWithName:v14];

    if ([(NSArray *)self->_accountsICanAccess count])
    {
      v16 = @"Accounts I can access explanatory note";
      v17 = @"Use the Calendar app to show or hide calendars for the accounts you have turned on.";
    }

    else
    {
      v16 = @"No accounts I can access explanatory note";
      v17 = @"No accounts have granted you access to read or manage their calendars.";
    }

    v18 = [v6 localizedStringForKey:v16 value:v17 table:@"MobileCalSettings"];
    [v15 setProperty:v18 forKey:v10];

    [v5 addObject:v15];
    v19 = [(CSAccountController *)self specifiersForAccountsICanAccess];
    [v5 addObjectsFromArray:v19];

    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == self->_accountsWithGrantedAccessSection && !self->_isShowingLoadingCell)
  {
    v7 = [v5 row];
    v6 = v7 != [(NSArray *)self->_accountsWithGrantedAccess count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 1 && [v7 section] == self->_accountsWithGrantedAccessSection)
  {
    v9 = [(CSAccountController *)self specifierAtIndexPath:v8];
    v10 = [v9 propertyForKey:@"CSGrantedDelegateKey"];

    [v10 setPermission:0];
    eventStore = self->_eventStore;
    ownerSource = self->_ownerSource;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_B018;
    v15[3] = &unk_209F8;
    v15[4] = self;
    [(EKEventStore *)eventStore updateGrantedDelegate:v10 action:2 source:ownerSource completion:v15];
    v13 = [NSMutableArray arrayWithArray:self->_accountsWithGrantedAccess];
    -[NSArray removeObjectAtIndex:](v13, "removeObjectAtIndex:", [v8 row]);
    accountsWithGrantedAccess = self->_accountsWithGrantedAccess;
    self->_accountsWithGrantedAccess = v13;

    [(CSAccountController *)self reloadSpecifiers];
  }
}

- (id)_accessLevelStringForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"CSGrantedDelegateKey"];
  if ([v3 permission] == &def_F7BC + 1)
  {
    v4 = @"View Only";
LABEL_5:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_210B8 table:@"MobileCalSettings"];

    goto LABEL_7;
  }

  if ([v3 permission] == &def_F7BC + 2)
  {
    v4 = @"View & Edit";
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)didModifyDelegate:(id)a3
{
  v4 = a3;
  accountsWithGrantedAccess = self->_accountsWithGrantedAccess;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_B2D0;
  v15[3] = &unk_20CA8;
  v6 = v4;
  v16 = v6;
  v7 = [(NSArray *)accountsWithGrantedAccess indexOfObjectPassingTest:v15];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSArray *)self->_accountsWithGrantedAccess arrayByAddingObject:v6];
    v9 = [v8 sortedArrayUsingComparator:&stru_20BF0];
    v10 = self->_accountsWithGrantedAccess;
    self->_accountsWithGrantedAccess = v9;
  }

  else
  {
    v11 = v7;
    v12 = [v6 permission];
    v13 = self->_accountsWithGrantedAccess;
    if (v12)
    {
      v8 = [(NSArray *)v13 objectAtIndexedSubscript:v11];
      [v8 setPermission:{objc_msgSend(v6, "permission")}];
    }

    else
    {
      v14 = [(NSArray *)v13 mutableCopy];
      [(NSArray *)v14 removeObjectAtIndex:v11];
      v8 = self->_accountsWithGrantedAccess;
      self->_accountsWithGrantedAccess = v14;
    }
  }

  [(CSAccountController *)self reloadSpecifiers];
}

@end