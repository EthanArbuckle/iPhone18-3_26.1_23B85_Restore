@interface VSDeveloperSettingsViewController_iOS
- (NSArray)providerSpecifiers;
- (VSDeveloperSettingsViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (id)providerForUniqueID:(id)d;
- (id)specifiers;
- (void)addProviderSelected;
- (void)dealloc;
- (void)developerProvidersDidChange;
- (void)developerSettingsDidChange;
- (void)setDisableRequestTimeouts:(id)timeouts;
- (void)setEnableCacheBuster:(id)buster;
- (void)setSimulateExpiredToken:(id)token;
@end

@implementation VSDeveloperSettingsViewController_iOS

- (VSDeveloperSettingsViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
{
  v15.receiver = self;
  v15.super_class = VSDeveloperSettingsViewController_iOS;
  v4 = [(VSDeveloperSettingsViewController_iOS *)&v15 initWithNibName:name bundle:bundle];
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

- (void)setEnableCacheBuster:(id)buster
{
  busterCopy = buster;
  v5 = [(NSNumber *)self->_enableCacheBuster copy];
  enableCacheBuster = self->_enableCacheBuster;
  self->_enableCacheBuster = busterCopy;
  v7 = busterCopy;

  settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings = [settingsFacade settings];
  v10 = [settings copy];

  [v10 setCacheBusterEnabled:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  settingsFacade2 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5408;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [settingsFacade2 updateDeveloperSettings:v10 withCompletionHandler:v13];
}

- (void)setDisableRequestTimeouts:(id)timeouts
{
  timeoutsCopy = timeouts;
  v5 = [(NSNumber *)self->_disableRequestTimeouts copy];
  disableRequestTimeouts = self->_disableRequestTimeouts;
  self->_disableRequestTimeouts = timeoutsCopy;
  v7 = timeoutsCopy;

  settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings = [settingsFacade settings];
  v10 = [settings copy];

  [v10 setRequestTimeoutsDisabled:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  settingsFacade2 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_56B4;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [settingsFacade2 updateDeveloperSettings:v10 withCompletionHandler:v13];
}

- (void)setSimulateExpiredToken:(id)token
{
  tokenCopy = token;
  v5 = [(NSNumber *)self->_simulateExpiredToken copy];
  simulateExpiredToken = self->_simulateExpiredToken;
  self->_simulateExpiredToken = tokenCopy;
  v7 = tokenCopy;

  settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings = [settingsFacade settings];
  v10 = [settings copy];

  [v10 setSimulateExpiredToken:{-[NSNumber BOOLValue](v7, "BOOLValue")}];
  settingsFacade2 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5960;
  v13[3] = &unk_C770;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  [settingsFacade2 updateDeveloperSettings:v10 withCompletionHandler:v13];
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

- (id)providerForUniqueID:(id)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  providers = [settingsFacade providers];

  v7 = [providers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(providers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uniqueID = [v10 uniqueID];
        forceUnwrapObject = [uniqueID forceUnwrapObject];
        v13 = [forceUnwrapObject isEqualToString:dCopy];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [providers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
    providers = [settingsFacade providers];

    v6 = [providers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(providers);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          displayName = [v10 displayName];
          forceUnwrapObject = [displayName forceUnwrapObject];

          v13 = [PSSpecifier preferenceSpecifierNamed:forceUnwrapObject target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          uniqueID = [v10 uniqueID];
          forceUnwrapObject2 = [uniqueID forceUnwrapObject];
          [v13 setIdentifier:forceUnwrapObject2];

          [(NSArray *)v3 addObject:v13];
        }

        v7 = [providers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    providerSpecifiers = [(VSDeveloperSettingsViewController_iOS *)self providerSpecifiers];
    if ([providerSpecifiers count])
    {
      [v4 addObjectsFromArray:providerSpecifiers];
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
  settingsFacade = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings = [settingsFacade settings];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings cacheBusterEnabled]);
  enableCacheBuster = self->_enableCacheBuster;
  self->_enableCacheBuster = v6;

  settingsFacade2 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings2 = [settingsFacade2 settings];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings2 requestTimeoutsDisabled]);
  disableRequestTimeouts = self->_disableRequestTimeouts;
  self->_disableRequestTimeouts = v10;

  settingsFacade3 = [(VSDeveloperSettingsViewController_iOS *)self settingsFacade];
  settings3 = [settingsFacade3 settings];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings3 simulateExpiredToken]);
  simulateExpiredToken = self->_simulateExpiredToken;
  self->_simulateExpiredToken = v14;

  cacheBusterSpecifier = [(VSDeveloperSettingsViewController_iOS *)self cacheBusterSpecifier];
  v17 = PSControlIsLoadingKey;
  [cacheBusterSpecifier setProperty:&__kCFBooleanFalse forKey:PSControlIsLoadingKey];

  cacheBusterSpecifier2 = [(VSDeveloperSettingsViewController_iOS *)self cacheBusterSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:cacheBusterSpecifier2];

  requestTimeoutsSpecifier = [(VSDeveloperSettingsViewController_iOS *)self requestTimeoutsSpecifier];
  [requestTimeoutsSpecifier setProperty:&__kCFBooleanFalse forKey:v17];

  requestTimeoutsSpecifier2 = [(VSDeveloperSettingsViewController_iOS *)self requestTimeoutsSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:requestTimeoutsSpecifier2];

  simulateExpiredTokenSpecifier = [(VSDeveloperSettingsViewController_iOS *)self simulateExpiredTokenSpecifier];
  [simulateExpiredTokenSpecifier setProperty:&__kCFBooleanFalse forKey:v17];

  simulateExpiredTokenSpecifier2 = [(VSDeveloperSettingsViewController_iOS *)self simulateExpiredTokenSpecifier];
  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifier:simulateExpiredTokenSpecifier2];
}

- (void)developerProvidersDidChange
{
  [(VSDeveloperSettingsViewController_iOS *)self setProvidersDirty:1];

  [(VSDeveloperSettingsViewController_iOS *)self reloadSpecifiers];
}

@end