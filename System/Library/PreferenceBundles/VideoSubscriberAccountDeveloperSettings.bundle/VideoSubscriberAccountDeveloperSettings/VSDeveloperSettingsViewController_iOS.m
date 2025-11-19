@interface VSDeveloperSettingsViewController_iOS
- (NSArray)providerSpecifiers;
- (VSDeveloperSettingsViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (id)providerForUniqueID:(id)a3;
- (id)specifiers;
- (void)addProviderSelected;
- (void)dealloc;
- (void)developerProvidersDidChange;
- (void)developerSettingsDidChange;
- (void)setDisableRequestTimeouts:(id)a3;
- (void)setEnableCacheBuster:(id)a3;
- (void)setSimulateExpiredToken:(id)a3;
@end

@implementation VSDeveloperSettingsViewController_iOS

- (VSDeveloperSettingsViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v15.receiver = self;
  v15.super_class = VSDeveloperSettingsViewController_iOS;
  v4 = [(VSDeveloperSettingsViewController_iOS *)&v15 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"developerSettingsDidChange" name:@"VSDeveloperSettingsFacadeSettingsDidUpdateNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"developerProvidersDidChange" name:@"VSDeveloperSettingsFacadeProvidersDidUpdateNotification" object:0];

    v7 = objc_alloc_init(NSOperationQueue);
    privateQueue = v4->_privateQueue;
    v4->_privateQueue = v7;

    v9 = v4->_privateQueue;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(NSOperationQueue *)v9 setName:v11];

    v4->_hasLoadedInitialSettings = 0;
    v4->_providersDirty = 1;
    v12 = +[VSDeveloperSettingsFacade sharedFacade];
    settingsFacade = v4->_settingsFacade;
    v4->_settingsFacade = v12;
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VSDeveloperSettingsViewController_iOS;
  [(VSDeveloperSettingsViewController_iOS *)&v2 dealloc];
}

- (void)setEnableCacheBuster:(id)a3
{
  v4 = a3;
  v5 = [(NSNumber *)self->_enableCacheBuster copy];
  enableCacheBuster = self->_enableCacheBuster;
  self->_enableCacheBuster = v4;
  v7 = v4;

  v8 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v9 = [v8 settings];
  v10 = [v9 copy];

  [v10 setCacheBusterEnabled:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  v11 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5408;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v11 updateDeveloperSettings:v10 withCompletionHandler:v13];
}

- (void)setDisableRequestTimeouts:(id)a3
{
  v4 = a3;
  v5 = [(NSNumber *)self->_disableRequestTimeouts copy];
  disableRequestTimeouts = self->_disableRequestTimeouts;
  self->_disableRequestTimeouts = v4;
  v7 = v4;

  v8 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v9 = [v8 settings];
  v10 = [v9 copy];

  [v10 setRequestTimeoutsDisabled:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  v11 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_56B4;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v11 updateDeveloperSettings:v10 withCompletionHandler:v13];
}

- (void)setSimulateExpiredToken:(id)a3
{
  v4 = a3;
  v5 = [(NSNumber *)self->_simulateExpiredToken copy];
  simulateExpiredToken = self->_simulateExpiredToken;
  self->_simulateExpiredToken = v4;
  v7 = v4;

  v8 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v9 = [v8 settings];
  v10 = [v9 copy];

  [v10 setSimulateExpiredToken:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  v11 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5960;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [v11 updateDeveloperSettings:v10 withCompletionHandler:v13];
}

- (void)addProviderSelected
{
  v3 = +[NSBundle vs_frameworkBundle];
  v6 = [v3 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE_DEVELOPER" value:0 table:0];

  v4 = objc_alloc_init(VSDeveloperIdentityProviderViewController_iOS);
  [(VSDeveloperIdentityProviderViewController_iOS *)v4 setTitle:v6];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v5 setModalPresentationStyle:2];
  [(VSDeveloperSettingsViewController_iOS *)self presentViewController:v5 animated:1 completion:0];
}

- (id)providerForUniqueID:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v6 = [v5 providers];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v11 forceUnwrapObject];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (NSArray)providerSpecifiers
{
  if ([(VSDeveloperSettingsViewController_iOS *)self providersDirty])
  {
    v3 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
    v5 = [v4 providers];

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 displayName];
          v12 = [v11 forceUnwrapObject];

          v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          v14 = [v10 uniqueID];
          v15 = [v14 forceUnwrapObject];
          [v13 setIdentifier:v15];

          [(NSArray *)v3 addObject:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    providerSpecifiers = self->_providerSpecifiers;
    self->_providerSpecifiers = v3;
  }

  v17 = self->_providerSpecifiers;

  return v17;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v52 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[NSBundle vs_frameworkBundle];
    v6 = [v5 localizedStringForKey:@"DEVELOPER_IS_CACHEBUSTER_ENABLED_ACTION_DESCRIPTION" value:0 table:0];

    v7 = +[NSBundle vs_frameworkBundle];
    v8 = [v7 localizedStringForKey:@"DEVELOPER_OPTIONS_GROUP_TITLE" value:0 table:0];

    v50 = v8;
    v9 = [PSSpecifier groupSpecifierWithName:v8];
    v10 = PSFooterTextGroupKey;
    v51 = v6;
    v42 = PSFooterTextGroupKey;
    [v9 setProperty:v6 forKey:PSFooterTextGroupKey];
    v49 = v9;
    [v4 addObject:v9];
    v11 = +[NSBundle vs_frameworkBundle];
    v12 = [v11 localizedStringForKey:@"DEVELOPER_IS_CACHEBUSTER_ENABLED_ACTION_TITLE" value:0 table:0];

    v48 = v12;
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setEnableCacheBuster:" get:"enableCacheBuster" detail:0 cell:6 edit:0];
    [(VSDeveloperSettingsViewController_iOS *)self setCacheBusterSpecifier:v13];
    v14 = [NSNumber numberWithInt:[(VSDeveloperSettingsViewController_iOS *)self hasLoadedInitialSettings]^ 1];
    v15 = PSControlIsLoadingKey;
    [v13 setProperty:v14 forKey:PSControlIsLoadingKey];

    v16 = PSDefaultValueKey;
    [v13 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];
    v47 = v13;
    [v4 addObject:v13];
    v17 = +[NSBundle vs_frameworkBundle];
    v18 = [v17 localizedStringForKey:@"DEVELOPER_REQUEST_TIMEOUTS_DESCRIPTION" value:0 table:0];

    v19 = [PSSpecifier groupSpecifierWithName:0];
    v46 = v18;
    [v19 setProperty:v18 forKey:v10];
    v45 = v19;
    [v4 addObject:v19];
    v20 = +[NSBundle vs_frameworkBundle];
    v21 = [v20 localizedStringForKey:@"DEVELOPER_REQUEST_TIMEOUTS_TITLE" value:0 table:0];

    v44 = v21;
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:"setDisableRequestTimeouts:" get:"disableRequestTimeouts" detail:0 cell:6 edit:0];
    [(VSDeveloperSettingsViewController_iOS *)self setRequestTimeoutsSpecifier:v22];
    v23 = [NSNumber numberWithInt:[(VSDeveloperSettingsViewController_iOS *)self hasLoadedInitialSettings]^ 1];
    [v22 setProperty:v23 forKey:v15];

    [v22 setProperty:&__kCFBooleanTrue forKey:v16];
    [v4 addObject:v22];
    v24 = +[NSBundle vs_frameworkBundle];
    v25 = [v24 localizedStringForKey:@"DEVELOPER_SIMULATE_EXPIRED_TOKEN_TITLE" value:0 table:0];

    v26 = +[NSBundle vs_frameworkBundle];
    v27 = [v26 localizedStringForKey:@"DEVELOPER_SIMULATE_EXPIRED_TOKEN_DESCRIPTION" value:0 table:0];

    v28 = [PSSpecifier groupSpecifierWithName:0];
    v41 = v27;
    [v28 setProperty:v27 forKey:v42];
    [v4 addObject:v28];
    v43 = v25;
    v29 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setSimulateExpiredToken:" get:"simulateExpiredToken" detail:0 cell:6 edit:0];
    [(VSDeveloperSettingsViewController_iOS *)self setSimulateExpiredTokenSpecifier:v29];
    v30 = [NSNumber numberWithInt:[(VSDeveloperSettingsViewController_iOS *)self hasLoadedInitialSettings]^ 1];
    [v29 setProperty:v30 forKey:v15];

    [v29 setProperty:&__kCFBooleanFalse forKey:v16];
    [v4 addObject:v29];
    v31 = +[NSBundle vs_frameworkBundle];
    v32 = [v31 localizedStringForKey:@"DEVELOPER_PROVIDERS_TITLE" value:0 table:0];

    v33 = [PSSpecifier groupSpecifierWithName:v32];
    [v4 addObject:v33];
    v34 = [(VSDeveloperSettingsViewController_iOS *)self providerSpecifiers];
    if ([v34 count])
    {
      [v4 addObjectsFromArray:v34];
      v35 = [PSSpecifier groupSpecifierWithName:0];
      [v4 addObject:v35];
    }

    v36 = +[NSBundle vs_frameworkBundle];
    v37 = [v36 localizedStringForKey:@"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE_DEVELOPER" value:0 table:0];

    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v38 setButtonAction:"addProviderSelected"];
    [v38 setProperty:&off_CD88 forKey:PSAlignmentKey];
    [v4 addObject:v38];
    v39 = *&self->PSListController_opaque[v52];
    *&self->PSListController_opaque[v52] = v4;

    v3 = *&self->PSListController_opaque[v52];
  }

  return v3;
}

- (void)developerSettingsDidChange
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Received developer settings did change notification.", v23, 2u);
  }

  [(VSDeveloperSettingsViewController_iOS *)self setHasLoadedInitialSettings:1];
  v4 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v5 = [v4 settings];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 cacheBusterEnabled]);
  enableCacheBuster = self->_enableCacheBuster;
  self->_enableCacheBuster = v6;

  v8 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v9 = [v8 settings];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 requestTimeoutsDisabled]);
  disableRequestTimeouts = self->_disableRequestTimeouts;
  self->_disableRequestTimeouts = v10;

  v12 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13 = [v12 settings];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 simulateExpiredToken]);
  simulateExpiredToken = self->_simulateExpiredToken;
  self->_simulateExpiredToken = v14;

  v16 = [(VSDeveloperSettingsViewController_iOS *)self cacheBusterSpecifier];
  v17 = PSControlIsLoadingKey;
  [v16 setProperty:&__kCFBooleanFalse forKey:PSControlIsLoadingKey];

  v18 = [(VSDeveloperSettingsViewController_iOS *)self cacheBusterSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:v18];

  v19 = [(VSDeveloperSettingsViewController_iOS *)self requestTimeoutsSpecifier];
  [v19 setProperty:&__kCFBooleanFalse forKey:v17];

  v20 = [(VSDeveloperSettingsViewController_iOS *)self requestTimeoutsSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:v20];

  v21 = [(VSDeveloperSettingsViewController_iOS *)self simulateExpiredTokenSpecifier];
  [v21 setProperty:&__kCFBooleanFalse forKey:v17];

  v22 = [(VSDeveloperSettingsViewController_iOS *)self simulateExpiredTokenSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:v22];
}

- (void)developerProvidersDidChange
{
  [(VSDeveloperSettingsViewController_iOS *)self setProvidersDirty:1];

  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifiers];
}

@end