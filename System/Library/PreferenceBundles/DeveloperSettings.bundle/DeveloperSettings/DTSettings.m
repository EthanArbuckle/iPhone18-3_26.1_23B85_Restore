@interface DTSettings
- (BOOL)isARKitAccessoryTrackingDebugViewAvailable;
- (BOOL)isClassKitAppInstalled;
- (BOOL)isNCOSupported;
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (DTSettings)init;
- (id)getDisplayRecentDonations:(id)a3;
- (id)getEnableWorkoutSeriesAggregation:(id)a3;
- (id)getNotifyAboutScoreSubmissions:(id)a3;
- (id)getSWCDeveloperMode:(id)a3;
- (id)getShowBTCarAudioOutput:(id)a3;
- (id)getUseRouteSharingPolicyForAirPlayRouting:(id)a3;
- (id)getWidgetKitDeveloperModeEnabled:(id)a3;
- (id)hangDetectionEnablementStatus:(id)a3;
- (id)nlcStatus:(id)a3;
- (id)performanceTraceEnablementStatus:(id)a3;
- (id)processorTraceEnablementStatus:(id)a3;
- (id)specifiers;
- (void)_manageSandboxAccount:(id)a3;
- (void)_signIntoSandboxAccount:(id)a3;
- (void)_updateSandboxSpecifier:(id)a3;
- (void)clearAppClipsCaches:(id)a3;
- (void)clearTrustedComputers:(id)a3;
- (void)dealloc;
- (void)postNotification:(id)a3;
- (void)refreshAdAttributionKitDeveloperModeEnabled;
- (void)setAdAttributionKitDeveloperMode:(id)a3 specifier:(id)a4;
- (void)setDisplayRecentDonations:(id)a3 specifier:(id)a4;
- (void)setEnableWorkoutSeriesAggregation:(id)a3 specifier:(id)a4;
- (void)setNotifyAboutScoreSubmissions:(id)a3 specifier:(id)a4;
- (void)setSWCDeveloperMode:(id)a3 specifier:(id)a4;
- (void)setShowBTCarAudioOutput:(id)a3 specifier:(id)a4;
- (void)setUseRouteSharingPolicyForAirPlayRouting:(id)a3 specifier:(id)a4;
- (void)setWidgetKitDeveloperModeEnabled:(id)a3 specifier:(id)a4;
- (void)showResetMediaServices:(id)a3;
- (void)syncRecentDonations:(id)a3;
- (void)updateAndReloadNCOStatusIfNeeded;
- (void)viewDidLoad;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation DTSettings

- (DTSettings)init
{
  v10.receiver = self;
  v10.super_class = DTSettings;
  v2 = [(DTSettings *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"updateNLC" name:@"com.apple.Preferences.nlcChanges" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"updateHangDetection" name:@"com.apple.Preferences.hangTracerStateChanged" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"updatePerformanceTraceSpecifierState" name:@"com.apple.Preferences.performanceTraceEnabledStateChanged" object:0];

    v2->_classKitAppInstalled = [(DTSettings *)v2 isClassKitAppInstalled];
    cachedNCOStatus = v2->_cachedNCOStatus;
    v2->_cachedNCOStatus = &stru_3E0D8;

    v7 = objc_opt_new();
    ncoData = v2->_ncoData;
    v2->_ncoData = v7;

    v2->_cachedAdAttributionKitDeveloperModeEnabled = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DTSettings;
  [(DTSettings *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_35;
  }

  v5 = [(DTSettings *)self loadSpecifiersFromPlistName:@"DTSettings" target:self];
  v6 = [v5 specifierForID:@"NLC"];
  [v6 setTarget:self];
  if (![(DTSettings *)self isNCOSupported])
  {
    v7 = [v5 specifierForID:@"NCO"];
    [v5 removeObject:v7];
  }

  if (![(DTSettings *)self isAdAttributionKitSupported])
  {
    v8 = [v5 specifierForID:@"ADATTRIBUTIONKIT_GROUP"];
    [v5 removeObject:v8];

    v9 = [v5 specifierForID:@"ADATTRIBUTIONKIT_DEVELOPMENT_POSTBACKS"];
    [v5 removeObject:v9];

    v10 = [v5 specifierForID:@"ADATTRIBUTIONKIT_DEVELOPER_MODE_ENABLED"];
    [v5 removeObject:v10];
  }

  if (![(DTSettings *)self classKitAppInstalled])
  {
    v11 = [v5 specifierForID:@"ClassKitSettingsGroup"];
    [v5 removeObject:v11];

    v12 = [v5 specifierForID:@"ClassKitSettings"];
    [v5 removeObject:v12];
  }

  if (!+[DTAppClipSettings isAvailable])
  {
    v13 = [v5 specifierForID:@"APP_CLIPS_GROUP"];
    [v5 removeObject:v13];

    v14 = [v5 specifierForID:@"APP_CLIPS_LOCAL_EXPERIENCES"];
    [v5 removeObject:v14];

    v15 = [v5 specifierForID:@"APP_CLIPS_DIAGNOSTICS"];
    [v5 removeObject:v15];

    v16 = [v5 specifierForID:@"APP_CLIPS_CLEAR_CACHES"];
    [v5 removeObject:v16];
  }

  if (!+[DTAppClipSettings isAvailable]|| (_os_feature_enabled_impl() & 1) == 0)
  {
    v17 = [v5 specifierForID:@"APP_CLIPS_DIAGNOSTICS"];
    [v5 removeObject:v17];

    v18 = [v5 specifierForID:@"UNIVERSAL_LINKS_DIAGNOSTICS"];
    [v5 removeObject:v18];
  }

  v19 = [v5 specifierForID:@"UNIVERSAL_LINKS_DIAGNOSTICS"];
  if ([v5 containsObject:v19])
  {
    goto LABEL_16;
  }

  v20 = [v5 specifierForID:@"DEVELOPER_SWC"];
  v21 = [v5 containsObject:v20];

  if ((v21 & 1) == 0)
  {
    v19 = [v5 specifierForID:@"UNIVERSAL_LINKS_GROUP"];
    [v5 removeObject:v19];
LABEL_16:
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = [&off_41588 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(&off_41588);
        }

        v26 = [v5 specifierForID:*(*(&v42 + 1) + 8 * i)];
        [v5 removeObject:v26];
      }

      v23 = [&off_41588 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v23);
  }

  v27 = _os_feature_enabled_impl();
  v28 = +[DTProcessorTraceConfigurationState shared];
  if ([v28 hardwareSupported] && objc_msgSend(v28, "supportsStreaming") && (objc_msgSend(v28, "supportsVirtualBuffer") & 1) == 0)
  {
    v29 = [PSSpecifier alloc];
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"PROCESSOR_TRACE_CONFIGURE_SECTION" value:&stru_3E0D8 table:@"DTProcessorTrace"];
    v32 = [v29 initWithName:v31 target:self set:0 get:"processorTraceEnablementStatus:" detail:objc_opt_class() cell:2 edit:0];

    [v32 setProperty:&off_415A0 forKey:@"requiredCapabilities"];
    v33 = [v5 indexOfObjectPassingTest:&stru_3D7B0];
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 insertObject:v32 atIndex:v33 + 1];
    }
  }

  if ((v27 & 1) == 0)
  {
    v34 = [v5 specifierForID:@"HANGTRACER_EXTERNAL_CONFIGURE"];
    [v5 removeObject:v34];
  }

  if (!+[DTDMCESSOSettings isAvailable])
  {
    v35 = [v5 specifierForID:@"DEVICE_MANAGEMENT_GROUP"];
    [v5 removeObject:v35];

    v36 = [v5 specifierForID:@"DEVICE_MANAGEMENT_ESSO"];
    [v5 removeObject:v36];
  }

  [(DTSettings *)self _updateSandboxSpecifier:v5];
  v37 = [v5 copy];
  v38 = *&self->PSListController_opaque[v3];
  *&self->PSListController_opaque[v3] = v37;

  v39 = [(DTSettings *)self loadSpecifiersFromPlistName:@"ResetMediaServices" target:self];
  mediaServiceSpecifiers = self->_mediaServiceSpecifiers;
  self->_mediaServiceSpecifiers = v39;

  v4 = *&self->PSListController_opaque[v3];
LABEL_35:

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DTSettings;
  [(DTSettings *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DEVELOPER" value:&stru_3E0D8 table:@"DTSettings"];
  [(DTSettings *)self setTitle:v4];
}

- (BOOL)isNCOSupported
{
  v2 = [(DTSettings *)self ncoData];
  v3 = [v2 isHighDataModeSupported];

  return v3;
}

- (void)updateAndReloadNCOStatusIfNeeded
{
  if ([(DTSettings *)self indexOfSpecifierID:@"NCO"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3042000000;
    v5[3] = sub_1D0EC;
    v5[4] = sub_1D0F8;
    objc_initWeak(&v6, self);
    v3 = [(DTSettings *)self ncoData];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1D100;
    v4[3] = &unk_3D7D8;
    v4[4] = v5;
    [v3 fetchNCOStatusWithCompletion:v4];

    _Block_object_dispose(v5, 8);
    objc_destroyWeak(&v6);
  }
}

- (void)setAdAttributionKitDeveloperMode:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[AdAttributionKit] Setting developer mode enabled: %d", buf, 8u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x3042000000;
  v13 = sub_1D0EC;
  v14 = sub_1D0F8;
  objc_initWeak(v15, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1D448;
  v9[3] = &unk_3D298;
  v9[4] = buf;
  [_TtC17DeveloperSettings22AdAttributionKitBridge setDeveloperModeEnabled:v8 completion:v9];
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(v15);
}

- (void)refreshAdAttributionKitDeveloperModeEnabled
{
  if ([(DTSettings *)self indexOfSpecifierID:@"ADATTRIBUTIONKIT_DEVELOPER_MODE_ENABLED"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3042000000;
    v4[3] = sub_1D0EC;
    v4[4] = sub_1D0F8;
    objc_initWeak(&v5, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1D668;
    v3[3] = &unk_3D7D8;
    v3[4] = v4;
    [_TtC17DeveloperSettings22AdAttributionKitBridge getDeveloperModeEnabledWithCompletion:v3];
    _Block_object_dispose(v4, 8);
    objc_destroyWeak(&v5);
  }
}

- (id)nlcStatus:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
  if (CFPreferencesGetAppBooleanValue(@"SimulatorIsRunning", @"com.apple.network.prefPaneSimulate", 0) == 1)
  {
    v3 = CFPreferencesCopyAppValue(@"TimeAtLastRun", @"com.apple.network.prefPaneSimulate");
    v4 = [v3 longValue];

    v5 = +[NSProcessInfo processInfo];
    [v5 systemUptime];
    v7 = v6;

    v8 = +[NSDate date];
    [v8 timeIntervalSince1970];
    v10 = v9 - v4;

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10 <= v7)
    {
      v13 = @"ON";
    }

    else
    {
      v13 = @"OFF";
    }
  }

  else
  {
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"OFF";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_3E0D8 table:@"DTSettings"];

  return v14;
}

- (id)getUseRouteSharingPolicyForAirPlayRouting:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v3 = CFPreferencesGetAppBooleanValue(@"honorRouteSharingPolicyForAirPlayRouting", @"com.apple.coremedia", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setUseRouteSharingPolicyForAirPlayRouting:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"honorRouteSharingPolicyForAirPlayRouting", a3, @"com.apple.coremedia");

  CFPreferencesAppSynchronize(@"com.apple.coremedia");
}

- (void)showResetMediaServices:(id)a3
{
  v4 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_mediaServiceSpecifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 cellType] == &dword_C + 1)
        {
          v11 = [v10 name];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1DC60;
          v15[3] = &unk_3D600;
          v15[4] = self;
          v15[5] = v10;
          v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v15];
          [v4 addAction:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = sub_19D14(@"RESET_CONFIRMATION_CANCEL");
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v4 addAction:v14];

  [(DTSettings *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)isARKitAccessoryTrackingDebugViewAvailable
{
  v2 = PSBundlePathForPreferenceBundle();
  v3 = SFRuntimeAbsoluteFilePathForPath();
  v4 = [NSBundle bundleWithPath:v3];

  if (!v4)
  {
    NSLog(@"DTARKitAccessoryTrackingDebugView - Failed to find preference bundle");
  }

  return v4 != 0;
}

- (id)getSWCDeveloperMode:(id)a3
{
  v3 = +[_SWCServiceDetails isDeveloperModeEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setSWCDeveloperMode:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  [_SWCServiceDetails setDeveloperModeEnabled:v4 completionHandler:0];
}

- (id)hangDetectionEnablementStatus:(id)a3
{
  v3 = objc_opt_new();
  v4 = [v3 isEnabled];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_3E0D8 table:@"DTSettings"];

  return v8;
}

- (id)performanceTraceEnablementStatus:(id)a3
{
  v3 = +[PTTraceConfig isControlCenterModuleAvailable];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_3E0D8 table:@"DTSettings"];

  return v7;
}

- (id)processorTraceEnablementStatus:(id)a3
{
  v3 = +[DTProcessorTraceConfigurationState shared];
  v4 = [v3 hardwareConfigured];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_3E0D8 table:@"DTSettings"];

  return v8;
}

- (void)clearTrustedComputers:(id)a3
{
  v3 = lockdown_delete_pair_records();
  if (v3)
  {
    NSLog(@"clearTrustedComputers: failed to remove all lockdown pairing records with error %d", v3);
  }

  else
  {
    NSLog(@"clearTrustedComputers: removed all lockdown pairing records");
  }
}

- (BOOL)isClassKitAppInstalled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1E1B8;
  v4[3] = &unk_3D800;
  v4[4] = &v5;
  [v2 enumerateApplicationsOfType:0 block:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)postNotification:(id)a3
{
  name = [a3 propertyForKey:PSValueChangedNotificationKey];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)setDisplayRecentDonations:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"displayRecentDonations", a3, @"com.apple.duetexpertd");
  CFPreferencesAppSynchronize(@"com.apple.duetexpertd");
  v4 = objc_opt_new();
  v7 = @"displayRecentDonations";
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [NSSet setWithArray:v5];
  [v4 synchronizeUserDefaultsDomain:@"com.apple.duetexpertd" keys:v6];
}

- (id)getDisplayRecentDonations:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.duetexpertd");
  v3 = CFPreferencesGetAppBooleanValue(@"displayRecentDonations", @"com.apple.duetexpertd", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setWidgetKitDeveloperModeEnabled:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"widgetKitDeveloperModeEnabled", a3, @"com.apple.duetexpertd");
  CFPreferencesAppSynchronize(@"com.apple.duetexpertd");
  v4 = objc_opt_new();
  v7 = @"widgetKitDeveloperModeEnabled";
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [NSSet setWithArray:v5];
  [v4 synchronizeUserDefaultsDomain:@"com.apple.duetexpertd" keys:v6];
}

- (id)getWidgetKitDeveloperModeEnabled:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.duetexpertd");
  v3 = CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)syncRecentDonations:(id)a3
{
  CFPreferencesSetAppValue(@"lastRequestedDeveloperDonationSyncDate", +[NSDate date], @"com.apple.duetexpertd");
  CFPreferencesAppSynchronize(@"com.apple.duetexpertd");
  v3 = objc_opt_new();
  v6 = @"lastRequestedDeveloperDonationSyncDate";
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  v5 = [NSSet setWithArray:v4];
  [v3 synchronizeUserDefaultsDomain:@"com.apple.duetexpertd" keys:v5];
}

- (void)clearAppClipsCaches:(id)a3
{
  v3 = objc_alloc_init(BCSBusinessQueryService);
  [v3 clearCachesForType:2 completion:&stru_3D840];
  SFKillProcessNamed();
}

- (void)setShowBTCarAudioOutput:(id)a3 specifier:(id)a4
{
  value = a3;
  if ([value isEqualToNumber:&off_413C8])
  {
    CFPreferencesSetAppValue(@"preferredOutputRoute_v2", @"HFP", @"com.apple.siri.CarBluetooth");
  }

  CFPreferencesSetAppValue(@"showBTAudioRouteSetting", value, @"com.apple.siri.CarBluetooth");
  CFPreferencesAppSynchronize(@"com.apple.siri.CarBluetooth");
}

- (id)getShowBTCarAudioOutput:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.siri.CarBluetooth");
  v3 = CFPreferencesGetAppBooleanValue(@"showBTAudioRouteSetting", @"com.apple.siri.CarBluetooth", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setNotifyAboutScoreSubmissions:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"GKNotifyScoreSubmit", a3, @"com.apple.gamecenter");

  CFPreferencesAppSynchronize(@"com.apple.gamecenter");
}

- (id)getNotifyAboutScoreSubmissions:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.gamecenter");
  v3 = CFPreferencesGetAppBooleanValue(@"GKNotifyScoreSubmit", @"com.apple.gamecenter", 0) != 0;

  return [NSNumber numberWithBool:v3];
}

- (void)setEnableWorkoutSeriesAggregation:(id)a3 specifier:(id)a4
{
  CFPreferencesSetAppValue(@"HKEnableWorkoutSeriesAggregation", a3, @"com.apple.healthd");

  CFPreferencesAppSynchronize(@"com.apple.healthd");
}

- (id)getEnableWorkoutSeriesAggregation:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.healthd");
  v3 = CFPreferencesGetAppBooleanValue(@"HKEnableWorkoutSeriesAggregation", @"com.apple.healthd", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v3 = 1;
    v4 = [NSNumber numberWithBool:1];
    CFPreferencesSetAppValue(@"HKEnableWorkoutSeriesAggregation", v4, @"com.apple.healthd");

    CFPreferencesAppSynchronize(@"com.apple.healthd");
  }

  v5 = [NSNumber numberWithBool:v3];

  return v5;
}

- (void)_manageSandboxAccount:(id)a3
{
  v3 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v19 = [v3 ams_activeiTunesAccount];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SANDBOX_APPLE_ACCOUNT" value:&stru_3E0D8 table:@"DTSettings"];
  v6 = [v19 username];
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MANAGE_ACCOUNT" value:&stru_3E0D8 table:@"DTSettings"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1ECC8;
  v21[3] = &unk_3D4E8;
  v21[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v21];

  [v7 addAction:v10];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SIGN_OUT" value:&stru_3E0D8 table:@"DTSettings"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1F07C;
  v20[3] = &unk_3D4E8;
  v20[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];

  [v7 addAction:v13];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_3E0D8 table:@"DTSettings"];
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:0];

  [v7 addAction:v16];
  v17 = [v7 popoverPresentationController];
  [v17 setPermittedArrowDirections:0];
  [v17 setSourceView:0];
  [v17 _setCentersPopoverIfSourceViewNotSet:1];
  [(DTSettings *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_signIntoSandboxAccount:(id)a3
{
  v4 = a3;
  v5 = [(DTSettings *)self firstResponder];
  [v5 resignFirstResponder];

  self->_isRunningSandboxAuthentication = 1;
  v6 = objc_alloc_init(AMSAuthenticateOptions);
  v7 = [v6 clientInfo];
  [v7 setAccountMediaType:AMSAccountMediaTypeAppStoreSandbox];

  v8 = [[AMSUIAuthenticateTask alloc] initWithAccount:0 presentingViewController:self options:v6];
  v9 = [v8 performAuthentication];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1F364;
  v10[3] = &unk_3D8B8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v9 addFinishBlock:v10];
  [(DTSettings *)self _updateSandboxSpecifier:0];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_updateSandboxSpecifier:(id)a3
{
  v20 = a3;
  v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v5 = [v4 ams_activeiTunesAccount];
  v6 = v20;
  if (!v20)
  {
    v6 = self;
  }

  v7 = [(DTSettings *)v6 specifierForID:@"SANDBOX_ACCOUNT_BUTTON"];
  if (v5)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"APPLE_ACCOUNT_FORMAT" value:&stru_3E0D8 table:@"DTSettings"];
    v10 = [v5 username];
    v11 = [AKUsernameFormatter formattedUsernameFromUsername:v10];
    v12 = [NSString stringWithFormat:v9, v11];

    [v7 setButtonAction:"_manageSandboxAccount:"];
    [v7 setName:v12];
    v13 = PSEnabledKey;
    v14 = &__kCFBooleanTrue;
    v15 = v7;
  }

  else
  {
    v16 = +[MCProfileConnection sharedConnection];
    v17 = [v16 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] != 2;

    v12 = [NSNumber numberWithInt:v17 & ~self->_isRunningSandboxAuthentication];
    [v7 setButtonAction:"_signIntoSandboxAccount:"];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SIGN_IN_BUTTON" value:&stru_3E0D8 table:@"DTSettings"];
    [v7 setName:v19];

    v13 = PSEnabledKey;
    v15 = v7;
    v14 = v12;
  }

  [v15 setProperty:v14 forKey:v13];

  if (!v20)
  {
    [(DTSettings *)self reloadSpecifierID:@"SANDBOX_ACCOUNT_BUTTON"];
  }
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[AMSLogConfig sharedAccountsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  v15 = [AMSUIAuthenticateTask alloc];
  if (self->_sandboxNavController)
  {
    sandboxNavController = self->_sandboxNavController;
  }

  else
  {
    sandboxNavController = self;
  }

  v17 = [v15 initWithRequest:v9 presentingViewController:sandboxNavController];

  v18 = [v17 performAuthentication];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1F8E8;
  v20[3] = &unk_3D8E0;
  v21 = v8;
  v19 = v8;
  [v18 addFinishBlock:v20];
}

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v6 = [AMSLogConfig sharedAccountsConfig:a3];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@", &v12, 0x20u);
  }

  return 0;
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[AMSLogConfig sharedAccountsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
  }

  v15 = [[AMSUIAlertDialogTask alloc] initWithRequest:v9 presentingViewController:self];
  v16 = [v15 present];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1FC14;
  v18[3] = &unk_3D908;
  v19 = v8;
  v17 = v8;
  [v16 addFinishBlock:v18];
}

@end