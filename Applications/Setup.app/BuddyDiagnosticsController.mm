@interface BuddyDiagnosticsController
+ (void)_writeValuesForKeysToIdMS:(id)s;
+ (void)clearDeviceAnalyticsSettingWithSettingsManager:(id)manager buddyPreferences:(id)preferences;
+ (void)setDeviceAnalyticsSubmissionEnabled:(BOOL)enabled presented:(BOOL)presented chronicle:(id)chronicle settingsManager:(id)manager buddyPreferences:(id)preferences;
+ (void)setiCloudAnalyticsEnabled:(BOOL)enabled;
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BOOL)_determineDisplayModeShouldPotentiallyIncludeApps;
- (BOOL)_shouldReportCombinedAnalyticsChoice;
- (BOOL)controllerNeedsToRun;
- (BuddyDiagnosticsController)init;
- (id)_detailText;
- (id)_privacyBundlesForDisplayMode:(unint64_t)mode;
- (id)_titleText;
- (void)_addButtons;
- (void)_controllerDone:(BOOL)done;
- (void)_determineDisplayMode:(id)mode;
- (void)_prepareAnalyticsWithCompletion:(id)completion;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyDiagnosticsController

- (BuddyDiagnosticsController)init
{
  location = self;
  v9[1] = a2;
  v2 = +[NSBundle mainBundle];
  v9[0] = [(NSBundle *)v2 localizedStringForKey:@"ANALYTICS_TITLE_BOTH" value:&stru_10032F900 table:@"Localizable"];

  v3 = location;
  location = 0;
  v8.receiver = v3;
  v8.super_class = BuddyDiagnosticsController;
  location = [(BuddyDiagnosticsController *)&v8 initWithTitle:v9[0] detailText:0 symbolName:@"chart.bar.xaxis"];
  objc_storeStrong(&location, location);
  if (location)
  {
    v4 = +[BYPreferencesController buddyPreferencesInternal];
    v7 = [v4 BOOLForKey:@"ForceSeedDignostics"] & 1;

    *(location + 17) = v7 & 1;
  }

  v5 = location;
  objc_storeStrong(v9, 0);
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)loadView
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyDiagnosticsController;
  [(BuddyDiagnosticsController *)&v9 loadView];
  if ([(BuddyDiagnosticsController *)selfCopy mode]== 4)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100077E48(buf, [(BuddyDiagnosticsController *)selfCopy mode]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unsupported diagnostics display mode %ld", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  headerView = [(BuddyDiagnosticsController *)selfCopy headerView];
  _titleText = [(BuddyDiagnosticsController *)selfCopy _titleText];
  [headerView setTitle:_titleText];

  headerView2 = [(BuddyDiagnosticsController *)selfCopy headerView];
  _detailText = [(BuddyDiagnosticsController *)selfCopy _detailText];
  [headerView2 setDetailText:_detailText];

  [(BuddyDiagnosticsController *)selfCopy _addButtons];
  buttonTray = [(BuddyDiagnosticsController *)selfCopy buttonTray];
  v7 = [(BuddyDiagnosticsController *)selfCopy _privacyBundlesForDisplayMode:[(BuddyDiagnosticsController *)selfCopy mode]];
  [buttonTray setPrivacyLinkForBundles:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v20 = a2;
  appearCopy = appear;
  v18.receiver = self;
  v18.super_class = BuddyDiagnosticsController;
  [(BuddyDiagnosticsController *)&v18 viewDidAppear:appear];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, [(BuddyDiagnosticsController *)selfCopy mode]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Analytics showing mode %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (([(BuddyDiagnosticsController *)selfCopy isMovingToParentViewController]& 1) == 0)
  {
    buddyPreferences = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"PBDiagnostics4Presented"];

    if (([(BuddyDiagnosticsController *)selfCopy mode]& 2) != 0)
    {
      if ([(BuddyDiagnosticsController *)selfCopy initialDeviceAnalyticsUserSetting])
      {
        if ([(BuddyDiagnosticsController *)selfCopy initialDeviceAnalyticsUserSetting]== 2)
        {
          v8 = objc_opt_class();
          chronicle = [(BuddyDiagnosticsController *)selfCopy chronicle];
          settingsManager = [(BuddyDiagnosticsController *)selfCopy settingsManager];
          buddyPreferences2 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
          [v8 setDeviceAnalyticsSubmissionEnabled:0 presented:0 chronicle:chronicle settingsManager:settingsManager buddyPreferences:buddyPreferences2];
        }
      }

      else
      {
        v4 = objc_opt_class();
        settingsManager2 = [(BuddyDiagnosticsController *)selfCopy settingsManager];
        buddyPreferences3 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
        [v4 clearDeviceAnalyticsSettingWithSettingsManager:settingsManager2 buddyPreferences:buddyPreferences3];

        paneFeatureAnalyticsManager = [(BuddyDiagnosticsController *)selfCopy paneFeatureAnalyticsManager];
        [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:5];
      }
    }

    if (([(BuddyDiagnosticsController *)selfCopy mode]& 4) != 0)
    {
      if ([(BuddyDiagnosticsController *)selfCopy initialAppAnalyticsUserSetting])
      {
        if ([(BuddyDiagnosticsController *)selfCopy initialAppAnalyticsUserSetting]== 2)
        {
          settingsManager3 = [(BuddyDiagnosticsController *)selfCopy settingsManager];
          buddyPreferences4 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
          [BuddyAppActivityController setAppActivityEnabled:0 presented:0 settingsManager:settingsManager3 buddyPreferences:buddyPreferences4];
        }
      }

      else
      {
        paneFeatureAnalyticsManager2 = [(BuddyDiagnosticsController *)selfCopy paneFeatureAnalyticsManager];
        [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 clearActionForFeature:4];

        settingsManager4 = [(BuddyDiagnosticsController *)selfCopy settingsManager];
        buddyPreferences5 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:settingsManager4 buddyPreferences:buddyPreferences5];
      }
    }
  }
}

- (void)_addButtons
{
  if ([(BuddyDiagnosticsController *)self imposeSeedPolicy])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"ENABLE_DIAGNOSTICS_AUTO_OPT_IN" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)self addBoldButton:v3 action:"_enableAnalytics"];
  }

  else
  {
    mode = [(BuddyDiagnosticsController *)self mode];
    if (mode)
    {
      if (mode - 1 < 3)
      {
        v5 = +[NSBundle mainBundle];
        v6 = [(NSBundle *)v5 localizedStringForKey:@"ENABLE_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];
        [(BuddyWelcomeController *)self addBoldButton:v6 action:"_enableAnalytics"];
      }

      else if (mode != 4 && mode - 6 < 2)
      {
        v7 = +[NSBundle mainBundle];
        v8 = [(NSBundle *)v7 localizedStringForKey:@"ENABLE_ANALYTICS_INCLUDING_APPS" value:&stru_10032F900 table:@"Localizable"];
        [(BuddyWelcomeController *)self addBoldButton:v8 action:"_enableAnalytics"];
      }
    }

    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"DISABLE_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)self addLinkButton:v10 action:"_disableAnalytics"];
  }
}

- (id)_titleText
{
  mode = [(BuddyDiagnosticsController *)self mode];
  if (mode)
  {
    if (mode == 1)
    {
      v5 = +[NSBundle mainBundle];
      v8 = [(NSBundle *)v5 localizedStringForKey:@"ANALYTICS_TITLE_ICLOUD" value:&stru_10032F900 table:@"Localizable"];

      goto LABEL_12;
    }

    if (mode != 2)
    {
      if (mode == 3)
      {
        goto LABEL_11;
      }

      if (mode == 4)
      {
        goto LABEL_12;
      }

      if (mode != 6)
      {
        if (mode != 7)
        {
          goto LABEL_12;
        }

LABEL_11:
        v6 = +[NSBundle mainBundle];
        v8 = [(NSBundle *)v6 localizedStringForKey:@"ANALYTICS_TITLE_BOTH" value:&stru_10032F900 table:@"Localizable"];

        goto LABEL_12;
      }
    }

    v3 = +[NSBundle mainBundle];
    v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ANALYTICS_TITLE_DEVICE"];
    v8 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  }

LABEL_12:

  return v8;
}

- (id)_detailText
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  v28 = 0;
  v27 = 0;
  mode = [(BuddyDiagnosticsController *)self mode];
  if (mode)
  {
    switch(mode)
    {
      case 1uLL:
        objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_ICLOUD");
        v27 = 1;
        break;
      case 2uLL:
        if ([(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy])
        {
          objc_storeStrong(location, @"DIAGNOSTICS_DESCRIPTION_AUTO_OPT_IN");
        }

        else
        {
          objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_DEVICE");
          v28 = 1;
          v27 = 1;
        }

        break;
      case 3uLL:
        objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_BOTH");
        v28 = 1;
        v27 = 1;
        break;
      default:
        if (mode != 4)
        {
          if (mode == 6)
          {
            if ([(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy])
            {
              objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_AUTO_OPT_IN_DEVICE_AND_APPS");
            }

            else
            {
              objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_DEVICE_AND_APPS");
              v28 = 1;
              v27 = 1;
            }
          }

          else if (mode == 7)
          {
            objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_DEVICE_AND_APPS_AND_ICLOUD");
            v28 = 1;
            v27 = 1;
          }
        }

        break;
    }
  }

  v26 = 0;
  if (v27)
  {
    flowItemDispositionProvider = [(BuddyDiagnosticsController *)selfCopy flowItemDispositionProvider];
    dispositions = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions];

    unsignedIntegerValue = dispositions;
    v5 = +[BYPreferencesController buddyPreferencesInternal];
    v24 = [v5 objectForKey:@"PBAnalyticsForceDisposition"];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v24 unsignedIntegerValue];
        oslog = _BYLoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          sub_100077E48(buf, unsignedIntegerValue);
          _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Analytics forcing disposition %lu", buf, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    if (unsignedIntegerValue && unsignedIntegerValue != 4)
    {
      v6 = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:location[0] disposition:unsignedIntegerValue];
      v7 = location[0];
      location[0] = v6;
    }

    objc_storeStrong(&v24, 0);
  }

  if (v28)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:location[0]];
    v10 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];
    v11 = v26;
    v26 = v10;
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v12 = [(NSBundle *)v8 localizedStringForKey:location[0] value:&stru_10032F900 table:@"Localizable"];
    v13 = v26;
    v26 = v12;
  }

  v14 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [(UIDevice *)v14 sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice)
  {
    v16 = v26;
    v17 = +[NSBundle mainBundle];
    v18 = [(NSBundle *)v17 localizedStringForKey:@"ANALYTICS_CELLULAR_DATA_NOTICE" value:&stru_10032F900 table:@"Localizable"];
    v19 = [v16 stringByAppendingFormat:@"\n\n%@", v18];
    v20 = v26;
    v26 = v19;
  }

  v21 = v26;
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v21;
}

+ (void)setDeviceAnalyticsSubmissionEnabled:(BOOL)enabled presented:(BOOL)presented chronicle:(id)chronicle settingsManager:(id)manager buddyPreferences:(id)preferences
{
  selfCopy = self;
  v17 = a2;
  enabledCopy = enabled;
  presentedCopy = presented;
  location = 0;
  objc_storeStrong(&location, chronicle);
  v13 = 0;
  objc_storeStrong(&v13, manager);
  v12 = 0;
  objc_storeStrong(&v12, preferences);
  [v13 setBool:enabledCopy forManagedConfigurationSetting:MCFeatureDiagnosticsSubmissionAllowed];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, DiagnosticsShouldSubmitNotification, 0, 0, 0);
  v10 = v12;
  v11 = [NSNumber numberWithBool:presentedCopy];
  [v10 setObject:v11 forKey:@"PBDiagnostics4Presented"];

  if (presentedCopy)
  {
    [location recordFeatureShown:2];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearDeviceAnalyticsSettingWithSettingsManager:(id)manager buddyPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, preferences);
  [location[0] removeBoolSettingForManagedConfigurationSetting:MCFeatureDiagnosticsSubmissionAllowed];
  [v5 removeObjectForKey:@"PBDiagnostics4Presented"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (void)setiCloudAnalyticsEnabled:(BOOL)enabled
{
  selfCopy = self;
  v7 = a2;
  enabledCopy = enabled;
  if (enabled)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  location = v3;
  v9 = @"com.apple.idms.config.privacy.icloud.data";
  v10 = location;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [selfCopy _writeValuesForKeysToIdMS:v4];

  CFPreferencesSetAppValue(@"AllowiCloudAnalytics", [NSNumber numberWithBool:enabledCopy], @"com.apple.Preferences");
  objc_storeStrong(&location, 0);
}

- (id)_privacyBundlesForDisplayMode:(unint64_t)mode
{
  switch(mode)
  {
    case 0uLL:
      goto LABEL_14;
    case 1uLL:
      v8 = BYPrivacyAnalyticsiCloudIdentifier;
      v4 = [NSArray arrayWithObjects:&v8 count:1, 1, a2, self];
      break;
    case 2uLL:
      v9 = BYPrivacyAnalyticsDeviceIdentifier;
      v4 = [NSArray arrayWithObjects:&v9 count:1, 2, a2, self];
      break;
    case 3uLL:
      v7[0] = BYPrivacyAnalyticsDeviceIdentifier;
      v7[1] = BYPrivacyAnalyticsiCloudIdentifier;
      v4 = [NSArray arrayWithObjects:v7 count:2, 3, a2, self];
      break;
    case 4uLL:
LABEL_14:
      v4 = 0;
      break;
    case 6uLL:
      v6[0] = BYPrivacyAnalyticsDeviceIdentifier;
      v6[1] = BYPrivacyAnalyticsAppIdentifier;
      v4 = [NSArray arrayWithObjects:v6 count:2, 6, a2, self];
      break;
    case 7uLL:
      v5[0] = BYPrivacyAnalyticsDeviceIdentifier;
      v5[1] = BYPrivacyAnalyticsAppIdentifier;
      v5[2] = BYPrivacyAnalyticsiCloudIdentifier;
      v4 = [NSArray arrayWithObjects:v5 count:3, 7, a2, self];
      break;
  }

  return v4;
}

- (void)_controllerDone:(BOOL)done
{
  selfCopy = self;
  v22 = a2;
  doneCopy = done;
  [(BuddyDiagnosticsController *)self imposeSeedPolicy];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001DBF44(buf, [(BuddyDiagnosticsController *)selfCopy mode], doneCopy, [(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Analytics opt-in done, mode = %ld, choice = %d, automatic = %d", buf, 0x18u);
  }

  objc_storeStrong(&oslog, 0);
  if (([(BuddyDiagnosticsController *)selfCopy mode]& 2) != 0)
  {
    v3 = doneCopy;
    chronicle = [(BuddyDiagnosticsController *)selfCopy chronicle];
    settingsManager = [(BuddyDiagnosticsController *)selfCopy settingsManager];
    buddyPreferences = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
    [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:v3 presented:1 chronicle:chronicle settingsManager:settingsManager buddyPreferences:buddyPreferences];

    if ([(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy])
    {
      buddyPreferences2 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
      [(BYPreferencesController *)buddyPreferences2 setObject:&__kCFBooleanTrue forKey:@"DiagnosticsAutoOptInSet"];
    }

    if (![(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy])
    {
      paneFeatureAnalyticsManager = [(BuddyDiagnosticsController *)selfCopy paneFeatureAnalyticsManager];
      v9 = [NSNumber numberWithBool:doneCopy];
      [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v9 forFeature:5];
    }
  }

  else
  {
    buddyPreferences3 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences3 setObject:&__kCFBooleanTrue forKey:@"PBDiagnostics4Presented"];
  }

  if (([(BuddyDiagnosticsController *)selfCopy mode]& 4) != 0)
  {
    v11 = doneCopy;
    settingsManager2 = [(BuddyDiagnosticsController *)selfCopy settingsManager];
    buddyPreferences4 = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
    [BuddyAppActivityController setAppActivityEnabled:v11 presented:1 settingsManager:settingsManager2 buddyPreferences:buddyPreferences4];

    paneFeatureAnalyticsManager2 = [(BuddyDiagnosticsController *)selfCopy paneFeatureAnalyticsManager];
    v15 = [NSNumber numberWithBool:doneCopy];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 recordActionWithValue:v15 forFeature:4];
  }

  if (([(BuddyDiagnosticsController *)selfCopy mode]& 1) != 0)
  {
    [objc_opt_class() setiCloudAnalyticsEnabled:doneCopy];
    paneFeatureAnalyticsManager3 = [(BuddyDiagnosticsController *)selfCopy paneFeatureAnalyticsManager];
    v17 = [NSNumber numberWithBool:doneCopy];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager3 recordActionWithValue:v17 forFeature:3];
  }

  if ([(BuddyDiagnosticsController *)selfCopy shouldReportCombinedAnalyticsChoice])
  {
    analyticsManager = [(BuddyDiagnosticsController *)selfCopy analyticsManager];
    [(BYAnalyticsManager *)analyticsManager setCombinedAnalyticsRepromptChoice:doneCopy];
  }

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
}

- (void)_determineDisplayMode:(id)mode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, mode);
  buddyPreferences = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
  v4 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"PBDiagnostics4Presented"];

  v48 = v4 & 1;
  capabilities = [(BuddyDiagnosticsController *)selfCopy capabilities];
  isDeviceAnalyticsRestricted = [(BYCapabilities *)capabilities isDeviceAnalyticsRestricted];

  v47 = isDeviceAnalyticsRestricted & 1;
  managedConfiguration = [(BuddyDiagnosticsController *)selfCopy managedConfiguration];
  v8 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed]== 1;

  v46 = v8;
  v45 = 0;
  miscState = [(BuddyDiagnosticsController *)selfCopy miscState];
  launchedWithCombinedAnalyticsMismatch = [(BuddyMiscState *)miscState launchedWithCombinedAnalyticsMismatch];

  v45 = (launchedWithCombinedAnalyticsMismatch & 1) == 0 && v46;
  v11 = 1;
  if ((v47 & 1) == 0)
  {
    v11 = 1;
    if (!v45)
    {
      v11 = v48;
    }
  }

  v44 = (v11 ^ 1) & 1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x20000000;
  v42 = 32;
  v43 = 0;
  if (v44)
  {
    v40[3] |= 2uLL;
    if ([(BuddyDiagnosticsController *)selfCopy _determineDisplayModeShouldPotentiallyIncludeApps])
    {
      capabilities2 = [(BuddyDiagnosticsController *)selfCopy capabilities];
      isAppAnalyticsRestricted = [(BYCapabilities *)capabilities2 isAppAnalyticsRestricted];

      v38 = isAppAnalyticsRestricted & 1;
      v37 = !(isAppAnalyticsRestricted & 1);
      if ((isAppAnalyticsRestricted & 1) == 0)
      {
        v40[3] |= 4uLL;
      }
    }
  }

  v14 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v14 aa_primaryAppleAccount];

  v34 = 0;
  v15 = 0;
  if (![(BuddyDiagnosticsController *)selfCopy imposeSeedPolicy])
  {
    v15 = 0;
    if ((v48 & 1) == 0)
    {
      v15 = 0;
      if (aa_primaryAppleAccount)
      {
        capabilities3 = [(BuddyDiagnosticsController *)selfCopy capabilities];
        v34 = 1;
        v15 = [(BYCapabilities *)capabilities3 isCloudAnalyticsRestricted]^ 1;
      }
    }
  }

  if (v34)
  {
  }

  if (v15)
  {
    v16 = +[BuddyAccountTools sharedBuddyAccountTools];
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_1001DC53C;
    v28 = &unk_10032EB18;
    v30[1] = &v39;
    v30[0] = location[0];
    v31 = v47 & 1;
    v32 = v46;
    v29 = selfCopy;
    v33 = v48 & 1;
    [v16 primaryAccountIsChildAccount:&v24];

    v23 = 1;
    objc_storeStrong(&v29, 0);
    objc_storeStrong(v30, 0);
  }

  else
  {
    if (location[0])
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v40[3];
        v18 = v47 & 1;
        v19 = v46;
        miscState2 = [(BuddyDiagnosticsController *)selfCopy miscState];
        launchedWithCombinedAnalyticsMismatch2 = [(BuddyMiscState *)miscState2 launchedWithCombinedAnalyticsMismatch];
        sub_1001DC9C4(buf, v17, v18, v19, launchedWithCombinedAnalyticsMismatch2 & 1, v48 & 1);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Diagnostics display mode = %ld, factors: Restricted = %d, AlreadyYes = %d, Mismatch = %d, AlreadyPresented = %d", buf, 0x24u);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], v40[3]);
    }

    v23 = 0;
  }

  objc_storeStrong(&aa_primaryAppleAccount, 0);
  _Block_object_dispose(&v39, 8);
  objc_storeStrong(location, 0);
}

- (BOOL)_determineDisplayModeShouldPotentiallyIncludeApps
{
  selfCopy = self;
  oslog[1] = a2;
  miscState = [(BuddyDiagnosticsController *)self miscState];
  launchedWithCombinedAnalyticsMismatch = [(BuddyMiscState *)miscState launchedWithCombinedAnalyticsMismatch];

  if (launchedWithCombinedAnalyticsMismatch)
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostics display mode potentially including apps (via mismatch)", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    return 1;
  }

  else
  {
    capabilities = [(BuddyDiagnosticsController *)selfCopy capabilities];
    eligibleForChlorine = [(BYCapabilities *)capabilities eligibleForChlorine];

    if (eligibleForChlorine)
    {
      v13 = _BYLoggingFacility();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v13;
        v9 = v12;
        sub_10006AA68(v11);
        _os_log_impl(&_mh_execute_header, v8, v9, "Diagnostics display mode potentially including apps (via eligibility)", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

+ (void)_writeValuesForKeysToIdMS:(id)s
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, s);
  v3 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    v25 = objc_opt_new();
    memset(__b, 0, sizeof(__b));
    v4 = location[0];
    v5 = [v4 countByEnumeratingWithState:__b objects:v30 count:16];
    if (v5)
    {
      v6 = *__b[2];
      do
      {
        for (i = 0; i < v5; ++i)
        {
          if (*__b[2] != v6)
          {
            objc_enumerationMutation(v4);
          }

          v24 = *(__b[1] + 8 * i);
          v22 = [location[0] objectForKeyedSubscript:v24];
          oslog = _BYLoggingFacility();
          v20 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v8 = oslog;
            v9 = v20;
            sub_100078180(buf, v24, v22);
            _os_log_impl(&_mh_execute_header, v8, v9, "Writing value to IdMS '%@' = '%@'...", buf, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          v10 = v25;
          v11 = v22;
          v12 = v24;
          v13 = aa_altDSID;
          v14 = _NSConcreteStackBlock;
          v15 = -1073741824;
          v16 = 0;
          v17 = sub_1001DCE80;
          v18 = &unk_10032BAE8;
          v19 = v24;
          [v10 setConfigurationInfo:v11 forIdentifier:v12 forAltDSID:v13 completion:&v14];
          objc_storeStrong(&v19, 0);
          objc_storeStrong(&v22, 0);
        }

        v5 = [v4 countByEnumeratingWithState:__b objects:v30 count:16];
      }

      while (v5);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&aa_altDSID, 0);
  }

  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareAnalyticsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _shouldReportCombinedAnalyticsChoice = [(BuddyDiagnosticsController *)selfCopy _shouldReportCombinedAnalyticsChoice];
  [(BuddyDiagnosticsController *)selfCopy setShouldReportCombinedAnalyticsChoice:_shouldReportCombinedAnalyticsChoice & 1];
  if ([(BuddyDiagnosticsController *)selfCopy shouldReportCombinedAnalyticsChoice])
  {
    analyticsManager = [(BuddyDiagnosticsController *)selfCopy analyticsManager];

    if (!analyticsManager)
    {
      objc_exception_throw([NSException exceptionWithName:@"Missing analytics manager" reason:0 userInfo:0]);
    }

    analyticsManager2 = [(BuddyDiagnosticsController *)selfCopy analyticsManager];
    [(BYAnalyticsManager *)analyticsManager2 prepareForCombinedAnalyticsRepromptWithCompletion:location[0]];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldReportCombinedAnalyticsChoice
{
  runState = [(BuddyDiagnosticsController *)self runState];
  v3 = [(BYRunState *)runState hasCompletedInitialRun]^ 1;

  if (v3)
  {
    return 0;
  }

  miscState = [(BuddyDiagnosticsController *)self miscState];
  v5 = ![(BuddyMiscState *)miscState launchedWithCombinedAnalyticsMismatch];

  return (v5 & 1) == 0 && ([(BuddyDiagnosticsController *)self mode]& 6) == 6;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v13 = a2;
  if (![(BuddyDiagnosticsController *)self imposeSeedPolicy])
  {
    return 1;
  }

  if (![(BuddyDiagnosticsController *)selfCopy isSeedBuild])
  {
    return 0;
  }

  capabilities = [(BuddyDiagnosticsController *)selfCopy capabilities];
  isDeviceAnalyticsRestricted = [(BYCapabilities *)capabilities isDeviceAnalyticsRestricted];

  v12 = isDeviceAnalyticsRestricted & 1;
  managedConfiguration = [(BuddyDiagnosticsController *)selfCopy managedConfiguration];
  v5 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed]== 1;

  v11 = v5;
  buddyPreferences = [(BuddyDiagnosticsController *)selfCopy buddyPreferences];
  v7 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"PBDiagnostics4Presented"];

  v10 = v7 & 1;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10008685C(buf, v12 & 1, v11, v10 & 1);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Seed diagnostics preemptors: Restricted = %d, IsAlreadyYes = %d, already presented = %d", buf, 0x14u);
  }

  objc_storeStrong(&oslog, 0);
  return (v12 & 1) == 0 && !v11 && (v10 & 1) == 0;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  managedConfiguration = [(BuddyDiagnosticsController *)selfCopy managedConfiguration];
  v4 = [(MCProfileConnection *)managedConfiguration userBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];
  [(BuddyDiagnosticsController *)selfCopy setInitialDeviceAnalyticsUserSetting:v4];

  managedConfiguration2 = [(BuddyDiagnosticsController *)selfCopy managedConfiguration];
  v6 = [(MCProfileConnection *)managedConfiguration2 userBoolValueForSetting:MCFeatureAppAnalyticsAllowed];
  [(BuddyDiagnosticsController *)selfCopy setInitialAppAnalyticsUserSetting:v6];

  v7 = +[BYPreferencesController buddyPreferencesInternal];
  v28 = [v7 objectForKey:@"PBAnalyticsForceMode"];

  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v28 unsignedIntegerValue];
      [(BuddyDiagnosticsController *)selfCopy setMode:unsignedIntegerValue];
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100077E48(buf, [(BuddyDiagnosticsController *)selfCopy mode]);
        _os_log_debug_impl(&_mh_execute_header, oslog, v26, "Analytics forcing mode %lu", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_1001DD810;
  v22 = &unk_10032B020;
  v23 = selfCopy;
  v24 = location[0];
  v25 = objc_retainBlock(&v18);
  if ([(BuddyDiagnosticsController *)selfCopy mode])
  {
    (*(v25 + 2))(v25, 1);
    v17 = 1;
  }

  else
  {
    v9 = dispatch_get_global_queue(2, 0);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001DD948;
    v14 = &unk_10032AFD0;
    v15 = selfCopy;
    v16 = v25;
    dispatch_async(v9, &v10);

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v17 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v3 = selfCopy;
  chronicle = [location[0] chronicle];
  settingsManager = [location[0] settingsManager];
  buddyPreferences = [location[0] buddyPreferences];
  [v3 setDeviceAnalyticsSubmissionEnabled:0 presented:0 chronicle:chronicle settingsManager:settingsManager buddyPreferences:buddyPreferences];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, DiagnosticsShouldSubmitNotification, 0, 0, 0);
  objc_storeStrong(location, 0);
}

@end