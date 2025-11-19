@interface HOSSettingsController
+ (void)initialize;
- (BOOL)_showMyHomesGroup;
- (BOOL)_showNoHomesGroup;
- (BOOL)_showSharedHomesGroup;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (HMHomeManager)homeManager;
- (HOSSettingsController)init;
- (HUEditLocationViewController)detailController;
- (id)_sortByNameDescriptor;
- (id)_sortedHomesPassingTest:(id)a3;
- (id)createAppReinstallSpecifiers;
- (id)createGroupSpecifierForHomeHub;
- (id)createGroupSpecifierForMyHomes;
- (id)createGroupSpecifierForNoHomes;
- (id)createGroupSpecifierForSharedHomes;
- (id)createHomeHubSpecifiers;
- (id)createMyHomesSpecifiers;
- (id)createSharedHomesSpecifiers;
- (id)createSpecifierForHome:(id)a3;
- (id)createSpecifierForHomeHub;
- (id)createSpecifierForHomeKitReset;
- (id)homeHubEnabled:(id)a3;
- (id)specifierForHome:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (int64_t)specifierIndexForHome:(id)a3;
- (void)_resetButtonConfirmed;
- (void)_resetButtonPressed:(id)a3;
- (void)_setUpActiveAssertion;
- (void)_tearDownActiveAssertion;
- (void)deleteHome:(id)a3;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)homeDidUpdateName:(id)a3;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)receivedApplicationDidEnterBackground:(id)a3;
- (void)setHomeHubEnabled:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v6 = [v5 homeManager];

    if (!v6)
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
  v3 = [(HOSSettingsController *)self activeAssertion];

  if (!v3)
  {
    v5 = [(HOSSettingsController *)self homeManager];
    v4 = [v5 _beginActiveAssertionWithReason:@"HOSSettingsHomeVisible"];
    [(HOSSettingsController *)self setActiveAssertion:v4];
  }
}

- (void)_tearDownActiveAssertion
{
  v3 = [(HOSSettingsController *)self activeAssertion];

  if (v3)
  {
    v4 = [(HOSSettingsController *)self homeManager];
    v5 = [(HOSSettingsController *)self activeAssertion];
    [v4 _endActiveAssertion:v5];

    [(HOSSettingsController *)self setActiveAssertion:0];
  }
}

- (HMHomeManager)homeManager
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(HOSSettingsController *)self homeManager];
    v7 = [v6 isThisDeviceResidentCapable];

    if (v7)
    {
      v8 = [(HOSSettingsController *)self createHomeHubSpecifiers];
      [v5 addObjectsFromArray:v8];
    }

    v9 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Home"];
    v10 = [v9 appState];
    v11 = [v10 isInstalled];

    if ((v11 & 1) == 0)
    {
      v12 = [(HOSSettingsController *)self createAppReinstallSpecifiers];
      [v5 addObjectsFromArray:v12];

      if ([(HOSSettingsController *)self _showMyHomesGroup])
      {
        v13 = [(HOSSettingsController *)self createMyHomesSpecifiers];
        [v5 addObjectsFromArray:v13];
      }

      if ([(HOSSettingsController *)self _showSharedHomesGroup])
      {
        v14 = [(HOSSettingsController *)self createGroupSpecifierForSharedHomes];
        [v5 addObject:v14];

        v15 = [(HOSSettingsController *)self createSharedHomesSpecifiers];
        [v5 addObjectsFromArray:v15];
      }
    }

    if ([(HOSSettingsController *)self _showNoHomesGroup])
    {
      v16 = [(HOSSettingsController *)self createGroupSpecifierForNoHomes];
      [v5 addObject:v16];
    }

    if (CFPreferencesGetAppBooleanValue(@"kDisplayResetButton", @"com.apple.HomeSettings", 0))
    {
      v17 = [(HOSSettingsController *)self createGroupSpecifierForResetButton];
      [v5 addObject:v17];

      v18 = [(HOSSettingsController *)self createSpecifierForHomeKitReset];
      [v5 addObject:v18];
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

- (id)_sortedHomesPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(HOSSettingsController *)self homeManager];
  v6 = [v5 homes];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1C3C;
  v16[3] = &unk_10628;
  v17 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v16];

  v9 = [(HOSSettingsController *)self homeManager];
  v10 = [v9 homes];
  v11 = [v10 objectsAtIndexes:v8];

  v12 = [(HOSSettingsController *)self _sortByNameDescriptor];
  v18 = v12;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [v11 sortedArrayUsingDescriptors:v13];

  return v14;
}

- (BOOL)_showMyHomesGroup
{
  v2 = [(HOSSettingsController *)self _sortedMyHomes];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_showSharedHomesGroup
{
  v2 = [(HOSSettingsController *)self _sortedSharedHomes];
  v3 = [v2 count] != 0;

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

- (id)homeHubEnabled:(id)a3
{
  v3 = [(HOSSettingsController *)self homeManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isResidentEnabledForThisDevice]);

  return v4;
}

- (void)setHomeHubEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HOSSettingsController *)self homeManager];
  v9 = [v6 BOOLValue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1EC8;
  v11[3] = &unk_106B0;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v8 updateResidentEnabledForThisDevice:v9 completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)createHomeHubSpecifiers
{
  v3 = [(HOSSettingsController *)self createGroupSpecifierForHomeHub];
  v7[0] = v3;
  v4 = [(HOSSettingsController *)self createSpecifierForHomeHub];
  v7[1] = v4;
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
  v4 = [(HOSSettingsController *)self createGroupSpecifierForMyHomes];
  [v3 addObject:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HOSSettingsController *)self _sortedMyHomes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(HOSSettingsController *)self createSpecifierForHome:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(HOSSettingsController *)self _sortedSharedHomes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(HOSSettingsController *)self createSpecifierForHome:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)createSpecifierForHome:(id)a3
{
  v4 = a3;
  if ([v4 hos_isMyHome])
  {
    v5 = [v4 name];
LABEL_4:
    [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    goto LABEL_5;
  }

  v6 = [v4 administrator];
  v7 = [v6 name];

  v5 = [v4 name];
  if (v7)
  {
    goto LABEL_4;
  }

  [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
  v8 = LABEL_5:;

  v9 = [v4 uniqueIdentifier];
  v10 = [v9 UUIDString];
  [v8 setIdentifier:v10];

  [v8 setProperty:v4 forKey:kHUHomePropertyKey];
  v11 = NSStringFromSelector("reloadSpecifier:");
  [v8 setProperty:v11 forKey:kHUUpdateSpecifierActionKey];

  [v8 setProperty:&off_11D20 forKey:PSTableCellHeightKey];
  v12 = NSStringFromSelector("deleteHome:");
  [v8 setProperty:v12 forKey:PSDeletionActionKey];

  return v8;
}

- (int64_t)specifierIndexForHome:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(HOSSettingsController *)self specifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2C24;
  v9[3] = &unk_106D8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)specifierForHome:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [(HOSSettingsController *)self specifierForID:v5];

  return v6;
}

- (void)deleteHome:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:kHUHomePropertyKey];
  v6 = [(HOSSettingsController *)self homeManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2DE4;
  v8[3] = &unk_10700;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 removeHome:v5 completionHandler:v8];
}

- (id)createSpecifierForHomeKitReset
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOSButtonResetConfirmation" value:&stru_108D8 table:@"HOSLocalizable"];
  v5 = [PSSpecifier deleteButtonSpecifierWithName:v4 target:self action:"_resetButtonPressed:"];

  return v5;
}

- (void)_resetButtonPressed:(id)a3
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
  v3 = [(HOSSettingsController *)self homeManager];
  v4 = [(HOSSettingsController *)self homeManager];

  if (!v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_6E64(v5);
    }

    v6 = objc_alloc_init(HMHomeManager);
    v3 = v6;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_324C;
  v7[3] = &unk_10728;
  v7[4] = self;
  [v3 eraseHomeDataWithCompletionHandler:v7];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HOSSettingsController *)self specifierAtIndexPath:v7];
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
    [(HOSSettingsController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(HOSSettingsController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:kHUHomePropertyKey];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HOSSettingsController *)self specifierAtIndexPath:v7];
  v9 = [v8 propertyForKey:kHUHomePropertyKey];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hos_isMyHome];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v11)
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
    v15 = [(HOSSettingsController *)&v17 tableView:v6 titleForDeleteConfirmationButtonForRowAtIndexPath:v7];
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
      v4 = [(HOSSettingsController *)self createGroupSpecifierForMyHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:v4 atEndOfGroup:v9 animated:1];
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
      v6 = [(HOSSettingsController *)self createGroupSpecifierForSharedHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:v6 atEndOfGroup:v9 animated:1];
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
      v8 = [(HOSSettingsController *)self createGroupSpecifierForNoHomes];
      [(HOSSettingsController *)self hos_insertSpecifier:v8 atEndOfGroup:v9 animated:1];
    }
  }

  else
  {
    [(HOSSettingsController *)self removeSpecifierID:@"HOSSettingsNoHomesGroupID" animated:1];
  }
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_39B8;
  v13[3] = &unk_10750;
  v13[4] = self;
  v5 = [NSPredicate predicateWithBlock:v13];
  v6 = [(HOSSettingsController *)self detailController];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 homes];
    v9 = [v8 filteredArrayUsingPredicate:v5];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = [(HOSSettingsController *)self navigationController];
      v12 = [v11 popToViewController:self animated:1];

      [(HOSSettingsController *)self setDetailController:0];
      [(HOSSettingsController *)self _tearDownActiveAssertion];
    }
  }

  [(HOSSettingsController *)self reloadSpecifiers];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v15 = a4;
  if ([v15 hos_isMyHome])
  {
    [(HOSSettingsController *)self _sortedMyHomes];
  }

  else
  {
    [(HOSSettingsController *)self _sortedSharedHomes];
  }
  v6 = ;
  [v15 setDelegate:self];
  v7 = [v6 indexOfObject:v15];
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

      v11 = v15;
    }

    else
    {
      if ([v15 hos_isMyHome])
      {
        v12 = @"HOSSettingsMyHomesGroupID";
      }

      else
      {
        v12 = @"HOSSettingsSharedHomesGroupID";
      }

      v13 = [(HOSSettingsController *)self specifierForID:v12];
      v11 = v15;
      v8 = v13;
    }

    v14 = [(HOSSettingsController *)self createSpecifierForHome:v11];
    [(HOSSettingsController *)self insertSpecifier:v14 afterSpecifier:v8 animated:1];
  }
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v13 = a4;
  v5 = [(HOSSettingsController *)self detailController];
  if (v5)
  {
    v6 = v5;
    v7 = [(HOSSettingsController *)self detailController];
    v8 = [v7 homeBuilder];
    v9 = [v8 home];

    if (v9 == v13)
    {
      v10 = [(HOSSettingsController *)self navigationController];
      v11 = [v10 popToViewController:self animated:1];

      [(HOSSettingsController *)self setDetailController:0];
      [(HOSSettingsController *)self _tearDownActiveAssertion];
    }
  }

  v12 = [(HOSSettingsController *)self specifierForHome:v13];
  [(HOSSettingsController *)self removeSpecifier:v12 animated:1];
  [(HOSSettingsController *)self updateHomesSections];
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v6 = [(HOSSettingsController *)self specifierForHome:v4];
  v5 = [v4 name];

  [v6 setName:v5];
  [(HOSSettingsController *)self reloadSpecifier:v6 animated:1];
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v5 = [(HOSSettingsController *)self specifierForHome:a3, a4];
  [(HOSSettingsController *)self reloadSpecifier:v5 animated:1];
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v5 = [(HOSSettingsController *)self specifierForHome:a3, a4];
  [(HOSSettingsController *)self reloadSpecifier:v5 animated:1];
}

- (void)receivedApplicationDidEnterBackground:(id)a3
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