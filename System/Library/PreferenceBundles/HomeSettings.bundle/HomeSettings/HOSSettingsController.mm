@interface HOSSettingsController
+ (void)initialize;
- (BOOL)_showMyHomesGroup;
- (BOOL)_showNoHomesGroup;
- (BOOL)_showSharedHomesGroup;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (HMHomeManager)homeManager;
- (HOSSettingsController)init;
- (HUEditLocationViewController)detailController;
- (id)_sortByNameDescriptor;
- (id)_sortedHomesPassingTest:(id)test;
- (id)createAppReinstallSpecifiers;
- (id)createGroupSpecifierForHomeHub;
- (id)createGroupSpecifierForMyHomes;
- (id)createGroupSpecifierForNoHomes;
- (id)createGroupSpecifierForSharedHomes;
- (id)createHomeHubSpecifiers;
- (id)createMyHomesSpecifiers;
- (id)createSharedHomesSpecifiers;
- (id)createSpecifierForHome:(id)home;
- (id)createSpecifierForHomeHub;
- (id)createSpecifierForHomeKitReset;
- (id)homeHubEnabled:(id)enabled;
- (id)specifierForHome:(id)home;
- (id)specifiers;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)specifierIndexForHome:(id)home;
- (void)_resetButtonConfirmed;
- (void)_resetButtonPressed:(id)pressed;
- (void)_setUpActiveAssertion;
- (void)_tearDownActiveAssertion;
- (void)deleteHome:(id)home;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)homeDidUpdateName:(id)name;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)receivedApplicationDidEnterBackground:(id)background;
- (void)setHomeHubEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateHomesSections;
@end

@implementation HOSSettingsController

+ (void)initialize
{
  v2 = +[HFHomeKitDispatcher configuration];
  v3 = [v2 mutableCopy];

  [v3 setDiscretionary:1];
  [v3 setAdaptive:1];
  [HFHomeKitDispatcher setConfiguration:v3];
}

- (HOSSettingsController)init
{
  v13.receiver = self;
  v13.super_class = HOSSettingsController;
  v2 = [(HOSSettingsController *)&v13 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"HOSHomeTitle" value:&stru_108D8 table:@"HOSLocalizable"];
    [(HOSSettingsController *)v2 setTitle:v4];

    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v5 homeManager];

    if (!homeManager)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Presented Home settings when the home manager has not yet been created!", v12, 2u);
      }
    }

    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    [v8 addHomeManagerObserver:v2];

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    [v9 addHomeObserver:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"receivedApplicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v2;
}

- (void)_setUpActiveAssertion
{
  activeAssertion = [(HOSSettingsController *)self activeAssertion];

  if (!activeAssertion)
  {
    homeManager = [(HOSSettingsController *)self homeManager];
    v4 = [homeManager _beginActiveAssertionWithReason:@"HOSSettingsHomeVisible"];
    [(HOSSettingsController *)self setActiveAssertion:v4];
  }
}

- (void)_tearDownActiveAssertion
{
  activeAssertion = [(HOSSettingsController *)self activeAssertion];

  if (activeAssertion)
  {
    homeManager = [(HOSSettingsController *)self homeManager];
    activeAssertion2 = [(HOSSettingsController *)self activeAssertion];
    [homeManager _endActiveAssertion:activeAssertion2];

    [(HOSSettingsController *)self setActiveAssertion:0];
  }
}

- (HMHomeManager)homeManager
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v2 homeManager];

  return homeManager;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    homeManager = [(HOSSettingsController *)self homeManager];
    isThisDeviceResidentCapable = [homeManager isThisDeviceResidentCapable];

    if (isThisDeviceResidentCapable)
    {
      createHomeHubSpecifiers = [(HOSSettingsController *)self createHomeHubSpecifiers];
      [v5 addObjectsFromArray:createHomeHubSpecifiers];
    }

    v9 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Home"];
    appState = [v9 appState];
    isInstalled = [appState isInstalled];

    if ((isInstalled & 1) == 0)
    {
      createAppReinstallSpecifiers = [(HOSSettingsController *)self createAppReinstallSpecifiers];
      [v5 addObjectsFromArray:createAppReinstallSpecifiers];

      if ([(HOSSettingsController *)self _showMyHomesGroup])
      {
        createMyHomesSpecifiers = [(HOSSettingsController *)self createMyHomesSpecifiers];
        [v5 addObjectsFromArray:createMyHomesSpecifiers];
      }

      if ([(HOSSettingsController *)self _showSharedHomesGroup])
      {
        createGroupSpecifierForSharedHomes = [(HOSSettingsController *)self createGroupSpecifierForSharedHomes];
        [v5 addObject:createGroupSpecifierForSharedHomes];

        createSharedHomesSpecifiers = [(HOSSettingsController *)self createSharedHomesSpecifiers];
        [v5 addObjectsFromArray:createSharedHomesSpecifiers];
      }
    }

    if ([(HOSSettingsController *)self _showNoHomesGroup])
    {
      createGroupSpecifierForNoHomes = [(HOSSettingsController *)self createGroupSpecifierForNoHomes];
      [v5 addObject:createGroupSpecifierForNoHomes];
    }

    if (CFPreferencesGetAppBooleanValue(@"kDisplayResetButton", @"com.apple.HomeSettings", 0))
    {
      createGroupSpecifierForResetButton = [(HOSSettingsController *)self createGroupSpecifierForResetButton];
      [v5 addObject:createGroupSpecifierForResetButton];

      createSpecifierForHomeKitReset = [(HOSSettingsController *)self createSpecifierForHomeKitReset];
      [v5 addObject:createSpecifierForHomeKitReset];
    }

    v19 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_sortByNameDescriptor
{
  v2 = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:1 selector:"localizedStandardCompare:"];

  return v2;
}

- (id)_sortedHomesPassingTest:(id)test
{
  testCopy = test;
  homeManager = [(HOSSettingsController *)self homeManager];
  homes = [homeManager homes];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1C3C;
  v16[3] = &unk_10628;
  v17 = testCopy;
  v7 = testCopy;
  v8 = [homes indexesOfObjectsPassingTest:v16];

  homeManager2 = [(HOSSettingsController *)self homeManager];
  homes2 = [homeManager2 homes];
  v11 = [homes2 objectsAtIndexes:v8];

  _sortByNameDescriptor = [(HOSSettingsController *)self _sortByNameDescriptor];
  v18 = _sortByNameDescriptor;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [v11 sortedArrayUsingDescriptors:v13];

  return v14;
}

- (BOOL)_showMyHomesGroup
{
  _sortedMyHomes = [(HOSSettingsController *)self _sortedMyHomes];
  v3 = [_sortedMyHomes count] != 0;

  return v3;
}

- (BOOL)_showSharedHomesGroup
{
  _sortedSharedHomes = [(HOSSettingsController *)self _sortedSharedHomes];
  v3 = [_sortedSharedHomes count] != 0;

  return v3;
}

- (BOOL)_showNoHomesGroup
{
  if ([(HOSSettingsController *)self _showMyHomesGroup])
  {
    return 0;
  }

  else
  {
    return ![(HOSSettingsController *)self _showSharedHomesGroup];
  }
}

- (id)homeHubEnabled:(id)enabled
{
  homeManager = [(HOSSettingsController *)self homeManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [homeManager isResidentEnabledForThisDevice]);

  return v4;
}

- (void)setHomeHubEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  homeManager = [(HOSSettingsController *)self homeManager];
  bOOLValue = [enabledCopy BOOLValue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1EC8;
  v11[3] = &unk_106B0;
  objc_copyWeak(&v13, &location);
  v10 = specifierCopy;
  v12 = v10;
  [homeManager updateResidentEnabledForThisDevice:bOOLValue completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)createHomeHubSpecifiers
{
  createGroupSpecifierForHomeHub = [(HOSSettingsController *)self createGroupSpecifierForHomeHub];
  v7[0] = createGroupSpecifierForHomeHub;
  createSpecifierForHomeHub = [(HOSSettingsController *)self createSpecifierForHomeHub];
  v7[1] = createSpecifierForHomeHub;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (id)createAppReinstallSpecifiers
{
  v2 = [PSSpecifier groupSpecifierWithID:@"HOSSettingsAppReinstallID"];
  v3 = +[HMClientConnection areAnySpeakersConfigured];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"HOSAppReinstallInfo_IsInPossessionOfAHomePod";
  }

  else
  {
    v6 = @"HOSAppReinstallInfo_IsNotInPossessionOfAHomePod";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_108D8 table:@"HOSLocalizable"];
  [v2 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = +[HOSHomeAppReinstallPreferencesCell specifier];
  v11[0] = v2;
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)createMyHomesSpecifiers
{
  v3 = objc_opt_new();
  createGroupSpecifierForMyHomes = [(HOSSettingsController *)self createGroupSpecifierForMyHomes];
  [v3 addObject:createGroupSpecifierForMyHomes];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _sortedMyHomes = [(HOSSettingsController *)self _sortedMyHomes];
  v6 = [_sortedMyHomes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_sortedMyHomes);
        }

        v10 = [(HOSSettingsController *)self createSpecifierForHome:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [_sortedMyHomes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)createSharedHomesSpecifiers
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _sortedSharedHomes = [(HOSSettingsController *)self _sortedSharedHomes];
  v5 = [_sortedSharedHomes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_sortedSharedHomes);
        }

        v9 = [(HOSSettingsController *)self createSpecifierForHome:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [_sortedSharedHomes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)createGroupSpecifierForSharedHomes
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HOSSharedHomesTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  v4 = [PSSpecifier groupSpecifierWithID:@"HOSSettingsSharedHomesGroupID" name:v3];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOSSharedHomesInfo" value:&stru_108D8 table:@"HOSLocalizable"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  return v4;
}

- (id)createGroupSpecifierForMyHomes
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HOSMyHomesTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  v4 = [PSSpecifier groupSpecifierWithID:@"HOSSettingsMyHomesGroupID" name:v3];

  return v4;
}

- (id)createGroupSpecifierForNoHomes
{
  v2 = [PSSpecifier groupSpecifierWithID:@"HOSSettingsNoHomesGroupID"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSNoHomesInfo" value:&stru_108D8 table:@"HOSLocalizable"];
  [v2 setProperty:v4 forKey:PSFooterTextGroupKey];

  return v2;
}

- (id)createGroupSpecifierForHomeHub
{
  v2 = [PSSpecifier groupSpecifierWithID:@"HOSSettingsHomeHubGroupID"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSHomeHubFooter" value:&stru_108D8 table:@"HOSLocalizable"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOSHomeHubLearnMore" value:&stru_108D8 table:@"HOSLocalizable"];

  v7 = [NSString stringWithFormat:@"%@ %@", v4, v6];
  v8 = [v7 rangeOfString:v6];
  v10 = v9;
  v11 = [NSURL URLWithString:@"https://support.apple.com/kb/HT207057"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v2 setProperty:v13 forKey:PSFooterCellClassGroupKey];

  [v2 setProperty:v7 forKey:PSFooterHyperlinkViewTitleKey];
  v17.location = v8;
  v17.length = v10;
  v14 = NSStringFromRange(v17);
  [v2 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

  [v2 setProperty:v11 forKey:PSFooterHyperlinkViewURLKey];

  return v2;
}

- (id)createSpecifierForHomeHub
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSHomeHubSwitchTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setHomeHubEnabled:specifier:" get:"homeHubEnabled:" detail:0 cell:6 edit:0];

  [v5 setIdentifier:@"HOSSettingsHomeHubSpecifierID"];

  return v5;
}

- (id)createSpecifierForHome:(id)home
{
  homeCopy = home;
  if ([homeCopy hos_isMyHome])
  {
    name = [homeCopy name];
LABEL_4:
    [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    goto LABEL_5;
  }

  administrator = [homeCopy administrator];
  name2 = [administrator name];

  name = [homeCopy name];
  if (name2)
  {
    goto LABEL_4;
  }

  [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];
  v8 = LABEL_5:;

  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v8 setIdentifier:uUIDString];

  [v8 setProperty:homeCopy forKey:kHUHomePropertyKey];
  v11 = NSStringFromSelector("reloadSpecifier:");
  [v8 setProperty:v11 forKey:kHUUpdateSpecifierActionKey];

  [v8 setProperty:&off_11D20 forKey:PSTableCellHeightKey];
  v12 = NSStringFromSelector("deleteHome:");
  [v8 setProperty:v12 forKey:PSDeletionActionKey];

  return v8;
}

- (int64_t)specifierIndexForHome:(id)home
{
  homeCopy = home;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  specifiers = [(HOSSettingsController *)self specifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2C24;
  v9[3] = &unk_106D8;
  v6 = homeCopy;
  v10 = v6;
  v11 = &v12;
  [specifiers enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)specifierForHome:(id)home
{
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v6 = [(HOSSettingsController *)self specifierForID:uUIDString];

  return v6;
}

- (void)deleteHome:(id)home
{
  homeCopy = home;
  v5 = [homeCopy propertyForKey:kHUHomePropertyKey];
  homeManager = [(HOSSettingsController *)self homeManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2DE4;
  v8[3] = &unk_10700;
  v8[4] = self;
  v9 = homeCopy;
  v7 = homeCopy;
  [homeManager removeHome:v5 completionHandler:v8];
}

- (id)createSpecifierForHomeKitReset
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSButtonResetConfirmation" value:&stru_108D8 table:@"HOSLocalizable"];
  v5 = [PSSpecifier deleteButtonSpecifierWithName:v4 target:self action:"_resetButtonPressed:"];

  return v5;
}

- (void)_resetButtonPressed:(id)pressed
{
  v16 = objc_alloc_init(PSConfirmationSpecifier);
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"HOSResetHomeAlertTitle" value:&stru_108D8 table:@"HOSLocalizable"];
  v12 = PSConfirmationTitleKey;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSResetHomeAlertMessage" value:&stru_108D8 table:@"HOSLocalizable"];
  v5 = PSConfirmationPromptKey;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HOSButtonResetConfirmation" value:&stru_108D8 table:@"HOSLocalizable"];
  v8 = PSConfirmationOKKey;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"HOSButtonAlertCancel" value:&stru_108D8 table:@"HOSLocalizable"];
  v11 = [NSDictionary dictionaryWithObjectsAndKeys:v13, v12, v4, v5, v7, v8, v10, PSConfirmationCancelKey, 0];
  [v16 setupWithDictionary:v11];

  [v16 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v16 setTarget:self];
  [v16 setConfirmationAction:"_resetButtonConfirmed"];
  [(HOSSettingsController *)self showConfirmationViewForSpecifier:v16];
}

- (void)_resetButtonConfirmed
{
  homeManager = [(HOSSettingsController *)self homeManager];
  homeManager2 = [(HOSSettingsController *)self homeManager];

  if (!homeManager2)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_6E64(v5);
    }

    v6 = objc_alloc_init(HMHomeManager);
    homeManager = v6;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_324C;
  v7[3] = &unk_10728;
  v7[4] = self;
  [homeManager eraseHomeDataWithCompletionHandler:v7];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HOSSettingsController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 propertyForKey:kHUHomePropertyKey];
  if (v9)
  {
    [(HOSSettingsController *)self _setUpActiveAssertion];
    v10 = [[HFHomeBuilder alloc] initWithExistingObject:v9 inHome:v9];
    v11 = [[HUEditLocationViewController alloc] initWithHomeBuilder:v10 presentationDelegate:self addLocationDelegate:0 context:1];
    [(HOSSettingsController *)self setDetailController:v11];
    [(HOSSettingsController *)self showController:v11 animate:1];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HOSSettingsController;
    [(HOSSettingsController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(HOSSettingsController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:kHUHomePropertyKey];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HOSSettingsController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 propertyForKey:kHUHomePropertyKey];
  v10 = v9;
  if (v9)
  {
    hos_isMyHome = [v9 hos_isMyHome];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (hos_isMyHome)
    {
      v14 = @"HOSRemoveHomeTitle";
    }

    else
    {
      v14 = @"HOSLeaveHomeTitle";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_108D8 table:@"HOSLocalizable"];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HOSSettingsController;
    v15 = [(HOSSettingsController *)&v17 tableView:viewCopy titleForDeleteConfirmationButtonForRowAtIndexPath:pathCopy];
  }

  return v15;
}

- (void)updateHomesSections
{
  v9 = 0;
  if (([(HOSSettingsController *)self getGroup:&v9 row:0 ofSpecifierID:@"HOSSettingsHomeHubGroupID"]& 1) == 0)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(HOSSettingsController *)self _showMyHomesGroup])
  {
    v3 = [(HOSSettingsController *)self specifierForID:@"HOSSettingsMyHomesGroupID"];

    if (!v3)
    {
      createGroupSpecifierForMyHomes = [(HOSSettingsController *)self createGroupSpecifierForMyHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:createGroupSpecifierForMyHomes atEndOfGroup:v9 animated:1];
    }

    ++v9;
  }

  else
  {
    [(HOSSettingsController *)self removeSpecifierID:@"HOSSettingsMyHomesGroupID" animated:1];
  }

  if ([(HOSSettingsController *)self _showSharedHomesGroup])
  {
    v5 = [(HOSSettingsController *)self specifierForID:@"HOSSettingsSharedHomesGroupID"];

    if (!v5)
    {
      createGroupSpecifierForSharedHomes = [(HOSSettingsController *)self createGroupSpecifierForSharedHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:createGroupSpecifierForSharedHomes atEndOfGroup:v9 animated:1];
    }

    ++v9;
  }

  else
  {
    [(HOSSettingsController *)self removeSpecifierID:@"HOSSettingsSharedHomesGroupID" animated:1];
  }

  if ([(HOSSettingsController *)self _showNoHomesGroup])
  {
    v7 = [(HOSSettingsController *)self specifierForID:@"HOSSettingsNoHomesGroupID"];

    if (!v7)
    {
      createGroupSpecifierForNoHomes = [(HOSSettingsController *)self createGroupSpecifierForNoHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:createGroupSpecifierForNoHomes atEndOfGroup:v9 animated:1];
    }
  }

  else
  {
    [(HOSSettingsController *)self removeSpecifierID:@"HOSSettingsNoHomesGroupID" animated:1];
  }
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_39B8;
  v13[3] = &unk_10750;
  v13[4] = self;
  v5 = [NSPredicate predicateWithBlock:v13];
  detailController = [(HOSSettingsController *)self detailController];
  if (detailController)
  {
    v7 = detailController;
    homes = [homesCopy homes];
    v9 = [homes filteredArrayUsingPredicate:v5];
    v10 = [v9 count];

    if (!v10)
    {
      navigationController = [(HOSSettingsController *)self navigationController];
      v12 = [navigationController popToViewController:self animated:1];

      [(HOSSettingsController *)self setDetailController:0];
      [(HOSSettingsController *)self _tearDownActiveAssertion];
    }
  }

  [(HOSSettingsController *)self reloadSpecifiers];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  if ([homeCopy hos_isMyHome])
  {
    [(HOSSettingsController *)self _sortedMyHomes];
  }

  else
  {
    [(HOSSettingsController *)self _sortedSharedHomes];
  }
  v6 = ;
  [homeCopy setDelegate:self];
  v7 = [v6 indexOfObject:homeCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HOSSettingsController.m" lineNumber:514 description:@"This home isn't in the HomeList - this is a serious bug.  Please triage / file a radar."];
  }

  else
  {
    v9 = v7;
    [(HOSSettingsController *)self updateHomesSections];
    if (v9)
    {
      v10 = [v6 objectAtIndexedSubscript:v9 - 1];
      v8 = [(HOSSettingsController *)self specifierForHome:v10];

      v11 = homeCopy;
    }

    else
    {
      if ([homeCopy hos_isMyHome])
      {
        v12 = @"HOSSettingsMyHomesGroupID";
      }

      else
      {
        v12 = @"HOSSettingsSharedHomesGroupID";
      }

      v13 = [(HOSSettingsController *)self specifierForID:v12];
      v11 = homeCopy;
      v8 = v13;
    }

    v14 = [(HOSSettingsController *)self createSpecifierForHome:v11];
    [(HOSSettingsController *)self insertSpecifier:v14 afterSpecifier:v8 animated:1];
  }
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  homeCopy = home;
  detailController = [(HOSSettingsController *)self detailController];
  if (detailController)
  {
    v6 = detailController;
    detailController2 = [(HOSSettingsController *)self detailController];
    homeBuilder = [detailController2 homeBuilder];
    home = [homeBuilder home];

    if (home == homeCopy)
    {
      navigationController = [(HOSSettingsController *)self navigationController];
      v11 = [navigationController popToViewController:self animated:1];

      [(HOSSettingsController *)self setDetailController:0];
      [(HOSSettingsController *)self _tearDownActiveAssertion];
    }
  }

  v12 = [(HOSSettingsController *)self specifierForHome:homeCopy];
  [(HOSSettingsController *)self removeSpecifier:v12 animated:1];
  [(HOSSettingsController *)self updateHomesSections];
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  v6 = [(HOSSettingsController *)self specifierForHome:nameCopy];
  name = [nameCopy name];

  [v6 setName:name];
  [(HOSSettingsController *)self reloadSpecifier:v6 animated:1];
}

- (void)home:(id)home didAddUser:(id)user
{
  user = [(HOSSettingsController *)self specifierForHome:home, user];
  [(HOSSettingsController *)self reloadSpecifier:user animated:1];
}

- (void)home:(id)home didRemoveUser:(id)user
{
  user = [(HOSSettingsController *)self specifierForHome:home, user];
  [(HOSSettingsController *)self reloadSpecifier:user animated:1];
}

- (void)receivedApplicationDidEnterBackground:(id)background
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[PREF] receivedApplicationDidEnterBackground", v5, 2u);
  }

  [(HOSSettingsController *)self _tearDownActiveAssertion];
}

- (HUEditLocationViewController)detailController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailController);

  return WeakRetained;
}

@end