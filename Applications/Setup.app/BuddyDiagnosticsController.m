@interface BuddyDiagnosticsController
+ (void)_writeValuesForKeysToIdMS:(id)a3;
+ (void)clearDeviceAnalyticsSettingWithSettingsManager:(id)a3 buddyPreferences:(id)a4;
+ (void)setDeviceAnalyticsSubmissionEnabled:(BOOL)a3 presented:(BOOL)a4 chronicle:(id)a5 settingsManager:(id)a6 buddyPreferences:(id)a7;
+ (void)setiCloudAnalyticsEnabled:(BOOL)a3;
+ (void)skippedByCloudConfigWithEnvironment:(id)a3;
- (BOOL)_determineDisplayModeShouldPotentiallyIncludeApps;
- (BOOL)_shouldReportCombinedAnalyticsChoice;
- (BOOL)controllerNeedsToRun;
- (BuddyDiagnosticsController)init;
- (id)_detailText;
- (id)_privacyBundlesForDisplayMode:(unint64_t)a3;
- (id)_titleText;
- (void)_addButtons;
- (void)_controllerDone:(BOOL)a3;
- (void)_determineDisplayMode:(id)a3;
- (void)_prepareAnalyticsWithCompletion:(id)a3;
- (void)loadView;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = BuddyDiagnosticsController;
  [(BuddyDiagnosticsController *)&v9 loadView];
  if ([(BuddyDiagnosticsController *)v11 mode]== 4)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100077E48(buf, [(BuddyDiagnosticsController *)v11 mode]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unsupported diagnostics display mode %ld", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v2 = [(BuddyDiagnosticsController *)v11 headerView];
  v3 = [(BuddyDiagnosticsController *)v11 _titleText];
  [v2 setTitle:v3];

  v4 = [(BuddyDiagnosticsController *)v11 headerView];
  v5 = [(BuddyDiagnosticsController *)v11 _detailText];
  [v4 setDetailText:v5];

  [(BuddyDiagnosticsController *)v11 _addButtons];
  v6 = [(BuddyDiagnosticsController *)v11 buttonTray];
  v7 = [(BuddyDiagnosticsController *)v11 _privacyBundlesForDisplayMode:[(BuddyDiagnosticsController *)v11 mode]];
  [v6 setPrivacyLinkForBundles:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18.receiver = self;
  v18.super_class = BuddyDiagnosticsController;
  [(BuddyDiagnosticsController *)&v18 viewDidAppear:a3];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, [(BuddyDiagnosticsController *)v21 mode]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Analytics showing mode %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (([(BuddyDiagnosticsController *)v21 isMovingToParentViewController]& 1) == 0)
  {
    v3 = [(BuddyDiagnosticsController *)v21 buddyPreferences];
    [(BYPreferencesController *)v3 setObject:&__kCFBooleanFalse forKey:@"PBDiagnostics4Presented"];

    if (([(BuddyDiagnosticsController *)v21 mode]& 2) != 0)
    {
      if ([(BuddyDiagnosticsController *)v21 initialDeviceAnalyticsUserSetting])
      {
        if ([(BuddyDiagnosticsController *)v21 initialDeviceAnalyticsUserSetting]== 2)
        {
          v8 = objc_opt_class();
          v9 = [(BuddyDiagnosticsController *)v21 chronicle];
          v10 = [(BuddyDiagnosticsController *)v21 settingsManager];
          v11 = [(BuddyDiagnosticsController *)v21 buddyPreferences];
          [v8 setDeviceAnalyticsSubmissionEnabled:0 presented:0 chronicle:v9 settingsManager:v10 buddyPreferences:v11];
        }
      }

      else
      {
        v4 = objc_opt_class();
        v5 = [(BuddyDiagnosticsController *)v21 settingsManager];
        v6 = [(BuddyDiagnosticsController *)v21 buddyPreferences];
        [v4 clearDeviceAnalyticsSettingWithSettingsManager:v5 buddyPreferences:v6];

        v7 = [(BuddyDiagnosticsController *)v21 paneFeatureAnalyticsManager];
        [(BYPaneFeatureAnalyticsManager *)v7 clearActionForFeature:5];
      }
    }

    if (([(BuddyDiagnosticsController *)v21 mode]& 4) != 0)
    {
      if ([(BuddyDiagnosticsController *)v21 initialAppAnalyticsUserSetting])
      {
        if ([(BuddyDiagnosticsController *)v21 initialAppAnalyticsUserSetting]== 2)
        {
          v15 = [(BuddyDiagnosticsController *)v21 settingsManager];
          v16 = [(BuddyDiagnosticsController *)v21 buddyPreferences];
          [BuddyAppActivityController setAppActivityEnabled:0 presented:0 settingsManager:v15 buddyPreferences:v16];
        }
      }

      else
      {
        v12 = [(BuddyDiagnosticsController *)v21 paneFeatureAnalyticsManager];
        [(BYPaneFeatureAnalyticsManager *)v12 clearActionForFeature:4];

        v13 = [(BuddyDiagnosticsController *)v21 settingsManager];
        v14 = [(BuddyDiagnosticsController *)v21 buddyPreferences];
        [BuddyAppActivityController clearAppActivitySettingWithSettingsManager:v13 buddyPreferences:v14];
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
    v4 = [(BuddyDiagnosticsController *)self mode];
    if (v4)
    {
      if (v4 - 1 < 3)
      {
        v5 = +[NSBundle mainBundle];
        v6 = [(NSBundle *)v5 localizedStringForKey:@"ENABLE_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];
        [(BuddyWelcomeController *)self addBoldButton:v6 action:"_enableAnalytics"];
      }

      else if (v4 != 4 && v4 - 6 < 2)
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
  v2 = [(BuddyDiagnosticsController *)self mode];
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = +[NSBundle mainBundle];
      v8 = [(NSBundle *)v5 localizedStringForKey:@"ANALYTICS_TITLE_ICLOUD" value:&stru_10032F900 table:@"Localizable"];

      goto LABEL_12;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_11;
      }

      if (v2 == 4)
      {
        goto LABEL_12;
      }

      if (v2 != 6)
      {
        if (v2 != 7)
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
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  v28 = 0;
  v27 = 0;
  v2 = [(BuddyDiagnosticsController *)self mode];
  if (v2)
  {
    switch(v2)
    {
      case 1uLL:
        objc_storeStrong(location, @"ANALYTICS_DESCRIPTION_ICLOUD");
        v27 = 1;
        break;
      case 2uLL:
        if ([(BuddyDiagnosticsController *)v30 imposeSeedPolicy])
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
        if (v2 != 4)
        {
          if (v2 == 6)
          {
            if ([(BuddyDiagnosticsController *)v30 imposeSeedPolicy])
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

          else if (v2 == 7)
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
    v3 = [(BuddyDiagnosticsController *)v30 flowItemDispositionProvider];
    v4 = [(BuddyFlowItemDispositionProvider *)v3 dispositions];

    v25 = v4;
    v5 = +[BYPreferencesController buddyPreferencesInternal];
    v24 = [v5 objectForKey:@"PBAnalyticsForceDisposition"];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 unsignedIntegerValue];
        oslog = _BYLoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          sub_100077E48(buf, v25);
          _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Analytics forcing disposition %lu", buf, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    if (v25 && v25 != 4)
    {
      v6 = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:location[0] disposition:v25];
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
  v15 = [(UIDevice *)v14 sf_isChinaRegionCellularDevice];

  if (v15)
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

+ (void)setDeviceAnalyticsSubmissionEnabled:(BOOL)a3 presented:(BOOL)a4 chronicle:(id)a5 settingsManager:(id)a6 buddyPreferences:(id)a7
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = 0;
  objc_storeStrong(&v12, a7);
  [v13 setBool:v16 forManagedConfigurationSetting:MCFeatureDiagnosticsSubmissionAllowed];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, DiagnosticsShouldSubmitNotification, 0, 0, 0);
  v10 = v12;
  v11 = [NSNumber numberWithBool:v15];
  [v10 setObject:v11 forKey:@"PBDiagnostics4Presented"];

  if (v15)
  {
    [location recordFeatureShown:2];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearDeviceAnalyticsSettingWithSettingsManager:(id)a3 buddyPreferences:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [location[0] removeBoolSettingForManagedConfigurationSetting:MCFeatureDiagnosticsSubmissionAllowed];
  [v5 removeObjectForKey:@"PBDiagnostics4Presented"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (void)setiCloudAnalyticsEnabled:(BOOL)a3
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  if (a3)
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
  [v8 _writeValuesForKeysToIdMS:v4];

  CFPreferencesSetAppValue(@"AllowiCloudAnalytics", [NSNumber numberWithBool:v6], @"com.apple.Preferences");
  objc_storeStrong(&location, 0);
}

- (id)_privacyBundlesForDisplayMode:(unint64_t)a3
{
  switch(a3)
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

- (void)_controllerDone:(BOOL)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  [(BuddyDiagnosticsController *)self imposeSeedPolicy];
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001DBF44(buf, [(BuddyDiagnosticsController *)v23 mode], v21, [(BuddyDiagnosticsController *)v23 imposeSeedPolicy]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Analytics opt-in done, mode = %ld, choice = %d, automatic = %d", buf, 0x18u);
  }

  objc_storeStrong(&oslog, 0);
  if (([(BuddyDiagnosticsController *)v23 mode]& 2) != 0)
  {
    v3 = v21;
    v4 = [(BuddyDiagnosticsController *)v23 chronicle];
    v5 = [(BuddyDiagnosticsController *)v23 settingsManager];
    v6 = [(BuddyDiagnosticsController *)v23 buddyPreferences];
    [BuddyDiagnosticsController setDeviceAnalyticsSubmissionEnabled:v3 presented:1 chronicle:v4 settingsManager:v5 buddyPreferences:v6];

    if ([(BuddyDiagnosticsController *)v23 imposeSeedPolicy])
    {
      v7 = [(BuddyDiagnosticsController *)v23 buddyPreferences];
      [(BYPreferencesController *)v7 setObject:&__kCFBooleanTrue forKey:@"DiagnosticsAutoOptInSet"];
    }

    if (![(BuddyDiagnosticsController *)v23 imposeSeedPolicy])
    {
      v8 = [(BuddyDiagnosticsController *)v23 paneFeatureAnalyticsManager];
      v9 = [NSNumber numberWithBool:v21];
      [(BYPaneFeatureAnalyticsManager *)v8 recordActionWithValue:v9 forFeature:5];
    }
  }

  else
  {
    v10 = [(BuddyDiagnosticsController *)v23 buddyPreferences];
    [(BYPreferencesController *)v10 setObject:&__kCFBooleanTrue forKey:@"PBDiagnostics4Presented"];
  }

  if (([(BuddyDiagnosticsController *)v23 mode]& 4) != 0)
  {
    v11 = v21;
    v12 = [(BuddyDiagnosticsController *)v23 settingsManager];
    v13 = [(BuddyDiagnosticsController *)v23 buddyPreferences];
    [BuddyAppActivityController setAppActivityEnabled:v11 presented:1 settingsManager:v12 buddyPreferences:v13];

    v14 = [(BuddyDiagnosticsController *)v23 paneFeatureAnalyticsManager];
    v15 = [NSNumber numberWithBool:v21];
    [(BYPaneFeatureAnalyticsManager *)v14 recordActionWithValue:v15 forFeature:4];
  }

  if (([(BuddyDiagnosticsController *)v23 mode]& 1) != 0)
  {
    [objc_opt_class() setiCloudAnalyticsEnabled:v21];
    v16 = [(BuddyDiagnosticsController *)v23 paneFeatureAnalyticsManager];
    v17 = [NSNumber numberWithBool:v21];
    [(BYPaneFeatureAnalyticsManager *)v16 recordActionWithValue:v17 forFeature:3];
  }

  if ([(BuddyDiagnosticsController *)v23 shouldReportCombinedAnalyticsChoice])
  {
    v18 = [(BuddyDiagnosticsController *)v23 analyticsManager];
    [(BYAnalyticsManager *)v18 setCombinedAnalyticsRepromptChoice:v21];
  }

  v19 = [(BuddyWelcomeController *)v23 delegate];
  [(BFFFlowItemDelegate *)v19 flowItemDone:v23];
}

- (void)_determineDisplayMode:(id)a3
{
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDiagnosticsController *)v50 buddyPreferences];
  v4 = [(BYPreferencesController *)v3 BOOLForKey:@"PBDiagnostics4Presented"];

  v48 = v4 & 1;
  v5 = [(BuddyDiagnosticsController *)v50 capabilities];
  v6 = [(BYCapabilities *)v5 isDeviceAnalyticsRestricted];

  v47 = v6 & 1;
  v7 = [(BuddyDiagnosticsController *)v50 managedConfiguration];
  v8 = [(MCProfileConnection *)v7 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed]== 1;

  v46 = v8;
  v45 = 0;
  v9 = [(BuddyDiagnosticsController *)v50 miscState];
  v10 = [(BuddyMiscState *)v9 launchedWithCombinedAnalyticsMismatch];

  v45 = (v10 & 1) == 0 && v46;
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
    if ([(BuddyDiagnosticsController *)v50 _determineDisplayModeShouldPotentiallyIncludeApps])
    {
      v12 = [(BuddyDiagnosticsController *)v50 capabilities];
      v13 = [(BYCapabilities *)v12 isAppAnalyticsRestricted];

      v38 = v13 & 1;
      v37 = !(v13 & 1);
      if ((v13 & 1) == 0)
      {
        v40[3] |= 4uLL;
      }
    }
  }

  v14 = +[ACAccountStore defaultStore];
  v36 = [v14 aa_primaryAppleAccount];

  v34 = 0;
  v15 = 0;
  if (![(BuddyDiagnosticsController *)v50 imposeSeedPolicy])
  {
    v15 = 0;
    if ((v48 & 1) == 0)
    {
      v15 = 0;
      if (v36)
      {
        v35 = [(BuddyDiagnosticsController *)v50 capabilities];
        v34 = 1;
        v15 = [(BYCapabilities *)v35 isCloudAnalyticsRestricted]^ 1;
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
    v29 = v50;
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
        v20 = [(BuddyDiagnosticsController *)v50 miscState];
        v21 = [(BuddyMiscState *)v20 launchedWithCombinedAnalyticsMismatch];
        sub_1001DC9C4(buf, v17, v18, v19, v21 & 1, v48 & 1);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Diagnostics display mode = %ld, factors: Restricted = %d, AlreadyYes = %d, Mismatch = %d, AlreadyPresented = %d", buf, 0x24u);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], v40[3]);
    }

    v23 = 0;
  }

  objc_storeStrong(&v36, 0);
  _Block_object_dispose(&v39, 8);
  objc_storeStrong(location, 0);
}

- (BOOL)_determineDisplayModeShouldPotentiallyIncludeApps
{
  v17 = self;
  oslog[1] = a2;
  v2 = [(BuddyDiagnosticsController *)self miscState];
  v3 = [(BuddyMiscState *)v2 launchedWithCombinedAnalyticsMismatch];

  if (v3)
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
    v6 = [(BuddyDiagnosticsController *)v17 capabilities];
    v7 = [(BYCapabilities *)v6 eligibleForChlorine];

    if (v7)
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

+ (void)_writeValuesForKeysToIdMS:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[ACAccountStore defaultStore];
  v27 = [v3 aa_primaryAppleAccount];

  if (v27)
  {
    v26 = [v27 aa_altDSID];
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
          v13 = v26;
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
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareAnalyticsWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDiagnosticsController *)v7 _shouldReportCombinedAnalyticsChoice];
  [(BuddyDiagnosticsController *)v7 setShouldReportCombinedAnalyticsChoice:v3 & 1];
  if ([(BuddyDiagnosticsController *)v7 shouldReportCombinedAnalyticsChoice])
  {
    v4 = [(BuddyDiagnosticsController *)v7 analyticsManager];

    if (!v4)
    {
      objc_exception_throw([NSException exceptionWithName:@"Missing analytics manager" reason:0 userInfo:0]);
    }

    v5 = [(BuddyDiagnosticsController *)v7 analyticsManager];
    [(BYAnalyticsManager *)v5 prepareForCombinedAnalyticsRepromptWithCompletion:location[0]];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldReportCombinedAnalyticsChoice
{
  v2 = [(BuddyDiagnosticsController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun]^ 1;

  if (v3)
  {
    return 0;
  }

  v4 = [(BuddyDiagnosticsController *)self miscState];
  v5 = ![(BuddyMiscState *)v4 launchedWithCombinedAnalyticsMismatch];

  return (v5 & 1) == 0 && ([(BuddyDiagnosticsController *)self mode]& 6) == 6;
}

- (BOOL)controllerNeedsToRun
{
  v14 = self;
  v13 = a2;
  if (![(BuddyDiagnosticsController *)self imposeSeedPolicy])
  {
    return 1;
  }

  if (![(BuddyDiagnosticsController *)v14 isSeedBuild])
  {
    return 0;
  }

  v2 = [(BuddyDiagnosticsController *)v14 capabilities];
  v3 = [(BYCapabilities *)v2 isDeviceAnalyticsRestricted];

  v12 = v3 & 1;
  v4 = [(BuddyDiagnosticsController *)v14 managedConfiguration];
  v5 = [(MCProfileConnection *)v4 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed]== 1;

  v11 = v5;
  v6 = [(BuddyDiagnosticsController *)v14 buddyPreferences];
  v7 = [(BYPreferencesController *)v6 BOOLForKey:@"PBDiagnostics4Presented"];

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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyDiagnosticsController *)v30 managedConfiguration];
  v4 = [(MCProfileConnection *)v3 userBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];
  [(BuddyDiagnosticsController *)v30 setInitialDeviceAnalyticsUserSetting:v4];

  v5 = [(BuddyDiagnosticsController *)v30 managedConfiguration];
  v6 = [(MCProfileConnection *)v5 userBoolValueForSetting:MCFeatureAppAnalyticsAllowed];
  [(BuddyDiagnosticsController *)v30 setInitialAppAnalyticsUserSetting:v6];

  v7 = +[BYPreferencesController buddyPreferencesInternal];
  v28 = [v7 objectForKey:@"PBAnalyticsForceMode"];

  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v28 unsignedIntegerValue];
      [(BuddyDiagnosticsController *)v30 setMode:v8];
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_100077E48(buf, [(BuddyDiagnosticsController *)v30 mode]);
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
  v23 = v30;
  v24 = location[0];
  v25 = objc_retainBlock(&v18);
  if ([(BuddyDiagnosticsController *)v30 mode])
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
    v15 = v30;
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

+ (void)skippedByCloudConfigWithEnvironment:(id)a3
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v4 = [location[0] chronicle];
  v5 = [location[0] settingsManager];
  v6 = [location[0] buddyPreferences];
  [v3 setDeviceAnalyticsSubmissionEnabled:0 presented:0 chronicle:v4 settingsManager:v5 buddyPreferences:v6];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, DiagnosticsShouldSubmitNotification, 0, 0, 0);
  objc_storeStrong(location, 0);
}

@end