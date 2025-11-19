@interface NLCSettings
- (BOOL)hasActiveNetworkCondition;
- (NLCSettings)init;
- (id)currentProfile;
- (id)isNLCRunning:(id)a3;
- (id)selectedProfile:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)enableNLC:(BOOL)a3;
- (void)loadFromSelectedProfile;
- (void)presentAddProfile;
- (void)setCurrentProfile:(id)a3;
- (void)setNLCRunning:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFromSelectedProfile;
- (void)updateNLCProfilesList;
- (void)viewDidLoad;
@end

@implementation NLCSettings

- (NLCSettings)init
{
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings init %p", a2, self);
  }

  v10.receiver = self;
  v10.super_class = NLCSettings;
  v3 = [(NLCSettings *)&v10 init];
  if (v3)
  {
    objc_storeStrong(&qword_49E60, v3);
    v4 = 0;
    values = v3->_values;
    do
    {
      v6 = values[v4];
      values[v4] = @"0";

      ++v4;
    }

    while (v4 != 11);
    v7 = objc_alloc_init(NLCSavedProfiles);
    v8 = qword_49FB8;
    qword_49FB8 = v7;

    [qword_49FB8 loadPreferences];
    [(NLCSettings *)v3 loadFromSelectedProfile];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NLCSettings;
  [(NLCSettings *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NETWORK_LINK_CONDITIONER" value:&stru_3E0D8 table:@"NLCSettings"];
  [(NLCSettings *)self setTitle:v4];
}

- (void)dealloc
{
  v3 = qword_49FB8;
  qword_49FB8 = 0;

  v4.receiver = self;
  v4.super_class = NLCSettings;
  [(NLCSettings *)&v4 dealloc];
}

- (BOOL)hasActiveNetworkCondition
{
  v2 = +[COConditionSession getActiveConditions];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (dword_49FB0)
        {
          NSLog(@"Active Condition: %@", *(*(&v11 + 1) + 8 * i));
        }

        if ([v8 containsString:@"SlowNetwork"])
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)specifiers
{
  v2 = self;
  if (dword_49FB0)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    NSLog(@"NLCSettings specifiers %p parent %p", v2, WeakRetained);
  }

  v4 = objc_alloc_init(NSMutableArray);
  [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:v2 set:0 get:0 detail:0 cell:0 edit:0];
  v42 = v48 = v4;
  [v4 addObject:?];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENABLE" value:&stru_3E0D8 table:@"NLCSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:v2 set:"setNLCRunning:specifier:" get:"isNLCRunning:" detail:0 cell:6 edit:0];

  if ([(NLCSettings *)v2 hasActiveNetworkCondition])
  {
    if (dword_49FB0)
    {
      NSLog(@"Found an active SlowNetwork condition. Prevent NLC from being enabled");
    }

    [v7 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  v41 = v7;
  [v48 addObject:v7];
  v44 = [NSNumber numberWithBool:0];
  v45 = [NSNumber numberWithBool:1];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CHOOSE_PROFILE" value:&stru_3E0D8 table:@"NLCSettings"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:v2 set:0 get:0 detail:0 cell:0 edit:0];

  v40 = v10;
  [v48 addObject:v10];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [qword_49FB8 allProfilesArray];
  v11 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v47 = *v50;
    v46 = PSSetupCustomClassKey;
    v13 = PSCellClassKey;
    v14 = PSTableCellHeightKey;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = v2;
        v18 = [PSSpecifier preferenceSpecifierNamed:v16 target:v2 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        v19 = objc_opt_class();
        v20 = [NSNumber numberWithInt:50];
        v21 = [NSDictionary dictionaryWithObjectsAndKeys:@"NLCProfileDetailController", v46, v19, v13, v20, v14, 0];

        [v18 setProperties:v21];
        v22 = [qword_49FB8 profileDictionaryWithName:v16];
        v23 = [v22 objectForKey:@"Preset"];
        v24 = v23;
        if (!v23 || (v25 = [v23 BOOLValue], v26 = v44, (v25 & 1) == 0))
        {
          v26 = v45;
        }

        v27 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v26, @"user-created", 0];
        [v18 setUserInfo:v27];
        [v48 addObject:v18];

        v2 = v17;
      }

      v12 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v12);
  }

  v28 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:v2 set:0 get:0 detail:0 cell:0 edit:0];
  [v48 addObject:v28];
  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"ADD_PROFILE" value:&stru_3E0D8 table:@"NLCSettings"];
  v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:v2 set:0 get:0 detail:objc_opt_class() cell:4 edit:0];

  [v31 setButtonAction:"presentAddProfile"];
  addProfileSpecifier = v2->_addProfileSpecifier;
  v2->_addProfileSpecifier = v31;
  v33 = v31;

  [v48 addObject:v2->_addProfileSpecifier];
  v34 = OBJC_IVAR___PSListController__specifiers;
  v35 = *&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v48;
  v36 = v48;

  v37 = *&v2->PSListController_opaque[v34];
  v38 = v37;

  return v37;
}

- (void)presentAddProfile
{
  v4 = objc_alloc_init(NLCProfileSetupController);
  v3 = +[PSSpecifier emptyGroupSpecifier];
  [v3 setObject:@"NLCProfileDetailController" forKeyedSubscript:PSSetupCustomClassKey];
  [(NLCProfileSetupController *)v4 setSpecifier:v3];
  [(NLCProfileSetupController *)v4 setParentController:self];
  [(NLCProfileSetupController *)v4 setupController];
  [(NLCSettings *)self presentViewController:v4 animated:1 completion:0];
}

- (void)enableNLC:(BOOL)a3
{
  v3 = a3;
  if (![(NLCSettings *)self hasActiveNetworkCondition])
  {
    v5 = 0uLL;
    memset(v27, 0, 208);
    v26 = 0;
    if (dword_49FB0)
    {
      v6 = "off";
      if (v3)
      {
        v6 = "on";
      }

      NSLog(@"%s %s", "[NLCSettings enableNLC:]", v6);
      v5 = 0uLL;
    }

    v27[12] = v5;
    *(&v27[11] + 4) = v5;
    *(&v27[10] + 4) = v5;
    *(&v27[9] + 4) = v5;
    *(&v27[8] + 4) = v5;
    *(&v27[7] + 4) = v5;
    *(&v27[6] + 4) = v5;
    *(&v27[5] + 4) = v5;
    *(&v27[4] + 4) = v5;
    *(&v27[3] + 4) = v5;
    *(&v27[2] + 4) = v5;
    *(&v27[1] + 4) = v5;
    *(v27 + 4) = v5;
    LODWORD(v27[0]) = 21;
    if (v3)
    {
      v30 = 0;
      v28 = v5;
      v29 = v5;
      v27[15] = v5;
      v27[16] = v5;
      v27[13] = v5;
      v27[14] = v5;
      v7 = [(NSString *)self->_values[0] intValue];
      [(NSString *)self->_values[1] floatValue];
      v9 = v8 / 100.0;
      v10 = [(NSString *)self->_values[2] intValue];
      if (!v7 && (v9 == 0.0 ? (v11 = v10 == 0) : (v11 = 0), v11))
      {
        v12 = 5;
      }

      else
      {
        LODWORD(v27[13]) = 9;
        *&v28 = v7;
        *(&v28 + 1) = __PAIR64__(v10, LODWORD(v9));
        v29 = 0uLL;
        v12 = 13;
        v30 = 0;
      }

      v13 = [(NSString *)self->_values[3] intValue];
      [(NSString *)self->_values[4] floatValue];
      v15 = v14 / 100.0;
      v16 = [(NSString *)self->_values[5] intValue];
      if (v13 || (v15 == 0.0 ? (v17 = v16 == 0) : (v17 = 0), !v17))
      {
        LODWORD(v27[13]) = v12;
        HIDWORD(v27[14]) = v13;
        LODWORD(v27[15]) = 0;
        *(&v27[15] + 4) = __PAIR64__(v16, LODWORD(v15));
        memset(&v27[15] + 12, 0, 20);
      }

      v18 = self->_values[7];
      if (v18 && ![(NSString *)v18 isEqualToString:&stru_3E0D8])
      {
        [(NSString *)self->_values[7] cStringUsingEncoding:1];
        __strlcpy_chk();
        LODWORD(v27[13]) |= 1u;
      }

      DWORD1(v27[13]) = [(NSString *)self->_values[8] intValue];
      if (DWORD1(v27[13]))
      {
        LODWORD(v27[13]) |= 1u;
      }

      DWORD2(v27[13]) = [(NSString *)self->_values[9] intValue];
      if (v27[13])
      {
        *(&v27[9] + 12) = v27[16];
        *(&v27[10] + 12) = v28;
        *(&v27[11] + 12) = v29;
        HIDWORD(v27[12]) = v30;
        *(&v27[6] + 12) = v27[13];
        *(&v27[7] + 12) = v27[14];
        *(&v27[8] + 12) = v27[15];
      }

      if ([(NSString *)self->_values[6] intValue]>= 1)
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        memset(&v27[13], 0, 64);
        v19 = [(NSString *)self->_values[6] intValue];
        memset(&v27[13] + 4, 0, 36);
        *(&v27[15] + 12) = 0;
        *(&v27[16] + 4) = 0x3500000011;
        HIDWORD(v27[16]) = 0;
        DWORD2(v27[15]) = v19;
        LODWORD(v27[13]) = 6;
        DWORD2(v27[13]) = [(NSString *)self->_values[9] intValue];
        *(&v27[3] + 8) = v27[16];
        memset(&v27[4] + 8, 0, 36);
        *(&v27[1] + 8) = v27[14];
        *(&v27[2] + 8) = v27[15];
        *(v27 + 8) = v27[13];
      }

      if (_nlc_connect(&v26) == 1)
      {
        if (_nlc_start_simulation(&v26, v27) != 1)
        {
          sub_1783C(self, @"_nlc_start_simulation failed");
        }

        if (_nlc_disconnect(&v26) == 1)
        {
          CFPreferencesSetAppValue(@"SimulatorIsRunning", kCFBooleanTrue, @"com.apple.network.prefPaneSimulate");
          v20 = +[NSDate date];
          [v20 timeIntervalSince1970];
          v22 = [NSNumber numberWithLong:v21];

          CFPreferencesSetAppValue(@"TimeAtLastRun", v22, @"com.apple.network.prefPaneSimulate");
          CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
          self->_nlcRunning = 1;
          [qword_49FB8 setSimulatorRunning:1];
          if (dword_49FB0)
          {
            NSLog(@"NLC Running");
          }

          goto LABEL_43;
        }

LABEL_47:
        v25 = @"_nlc_disconnect failed";
        goto LABEL_48;
      }
    }

    else if (_nlc_connect(&v26) == 1)
    {
      if (_nlc_stop_simulation(&v26, v27) != 1)
      {
        sub_1783C(self, @"_nlc_stop_simulation failed");
      }

      if (_nlc_disconnect(&v26) == 1)
      {
        CFPreferencesSetAppValue(@"SimulatorIsRunning", kCFBooleanFalse, @"com.apple.network.prefPaneSimulate");
        CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
        self->_nlcRunning = 0;
        [qword_49FB8 setSimulatorRunning:0];
        if (!dword_49FB0)
        {
LABEL_45:
          v24 = +[NSNotificationCenter defaultCenter];
          [v24 postNotificationName:@"com.apple.Preferences.nlcChanges" object:0];

          return;
        }

        NSLog(@"NLC Disabled");
LABEL_43:
        if (dword_49FB0)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SimulatorIsRunning", @"com.apple.network.prefPaneSimulate", 0);
          NSLog(@"%s done, kSimulatorIsRunning: %u", "[NLCSettings enableNLC:]", AppBooleanValue);
        }

        goto LABEL_45;
      }

      goto LABEL_47;
    }

    v25 = @"_nlc_connect failed";
LABEL_48:
    sub_1783C(self, v25);
  }
}

- (void)setNLCRunning:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(NLCSettings *)self enableNLC:v5];
}

- (id)isNLCRunning:(id)a3
{
  CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
  if (dword_49FB0)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SimulatorIsRunning", @"com.apple.network.prefPaneSimulate", 0);
    NSLog(@"%s kSimulatorIsRunning: %u", "[NLCSettings isNLCRunning:]", AppBooleanValue);
  }

  v5 = CFPreferencesGetAppBooleanValue(@"SimulatorIsRunning", @"com.apple.network.prefPaneSimulate", 0);
  self->_nlcRunning = v5 != 0;
  if (v5)
  {
    v6 = CFPreferencesCopyAppValue(@"TimeAtLastRun", @"com.apple.network.prefPaneSimulate");
    v7 = [v6 longValue];

    v8 = +[NSProcessInfo processInfo];
    [v8 systemUptime];
    v10 = v9;

    v11 = +[NSDate date];
    [v11 timeIntervalSince1970];
    v13 = [NSNumber numberWithLong:v12];

    if (dword_49FB0)
    {
      NSLog(@"%s: timeSince1970 %ld lastRunTime %f systemUpTime %f", "-[NLCSettings isNLCRunning:]", [v13 longValue], *&v7, *&v10);
    }

    v14 = +[NSDate date];
    [v14 timeIntervalSince1970];
    v16 = v15 - v7;

    if (v16 > v10)
    {
      if (dword_49FB0)
      {
        NSLog(@"%s: time was reset, NLC is off", "[NLCSettings isNLCRunning:]");
      }

      self->_nlcRunning = 0;
      [qword_49FB8 setSimulatorRunning:0];
    }

    nlcRunning = self->_nlcRunning;
  }

  else
  {
    nlcRunning = 0;
  }

  if (dword_49FB0)
  {
    if (nlcRunning)
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    NSLog(@"%s %s", "[NLCSettings isNLCRunning:]", v18);
    nlcRunning = self->_nlcRunning;
  }

  return [NSNumber numberWithBool:nlcRunning];
}

- (void)loadFromSelectedProfile
{
  v3 = qword_49FB8;
  v4 = [qword_49FB8 selectedProfileName];
  v54 = [v3 profileDictionaryWithName:v4];

  if (dword_49FB0)
  {
    v5 = [qword_49FB8 selectedProfileName];
    NSLog(@"%s selectedProfileName: %@", "[NLCSettings loadFromSelectedProfile]", v5);
  }

  v6 = [v54 objectForKey:@"DownlinkBandwidth"];
  v7 = [v6 intValue];

  v8 = [v54 objectForKey:@"DownlinkBandwidthUnit"];
  v9 = [v8 intValue];

  LODWORD(v10) = 1000 * v7;
  if (v9)
  {
    v10 = v10;
  }

  else
  {
    v10 = v7;
  }

  v11 = [NSString stringWithFormat:@"%u", v10];
  values = self->_values;
  v13 = self->_values[0];
  self->_values[0] = v11;

  v14 = [v54 objectForKey:@"DownlinkPacketLossRatio"];
  [v14 floatValue];
  v16 = v15;

  v17 = [NSString stringWithFormat:@"%f", v16];
  v18 = values[1];
  values[1] = v17;

  v19 = [v54 objectForKey:@"DownlinkDelay"];
  v20 = [v19 intValue];

  v21 = [NSString stringWithFormat:@"%u", v20];
  v22 = values[2];
  values[2] = v21;

  v23 = [v54 objectForKey:@"UplinkBandwidth"];
  v24 = [v23 intValue];

  v25 = [v54 objectForKey:@"UplinkBandwidthUnit"];
  v26 = [v25 intValue];

  LODWORD(v27) = 1000 * v24;
  if (v26)
  {
    v27 = v27;
  }

  else
  {
    v27 = v24;
  }

  v28 = [NSString stringWithFormat:@"%u", v27];
  v29 = values[3];
  values[3] = v28;

  v30 = [v54 objectForKey:@"UplinkPacketLossRatio"];
  [v30 floatValue];
  v32 = v31;

  v33 = [NSString stringWithFormat:@"%f", v32];
  v34 = values[4];
  values[4] = v33;

  v35 = [v54 objectForKey:@"UplinkDelay"];
  v36 = [v35 intValue];

  v37 = [NSString stringWithFormat:@"%u", v36];
  v38 = values[5];
  values[5] = v37;

  v39 = [v54 objectForKey:@"DNSDelayValue"];
  v40 = [v39 intValue];

  v41 = [NSString stringWithFormat:@"%u", v40];
  v42 = values[6];
  values[6] = v41;

  v43 = [v54 objectForKey:@"ProtocolFamily"];
  v44 = [v43 intValue];

  v45 = [NSString stringWithFormat:@"%u", v44];
  v46 = values[8];
  values[8] = v45;

  v47 = [v54 objectForKey:@"RunOnInterface"];
  v48 = values[7];
  values[7] = v47;

  v49 = [v54 objectForKey:@"ExcludeLoopback"];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 intValue];
  }

  else
  {
    v51 = &dword_0 + 1;
  }

  v52 = [NSString stringWithFormat:@"%u", v51];
  v53 = values[9];
  values[9] = v52;
}

- (void)updateFromSelectedProfile
{
  if (dword_49FB0)
  {
    v3 = [qword_49FB8 selectedProfileName];
    NSLog(@"%s updateFromSelectedProfile: %@", "[NLCSettings updateFromSelectedProfile]", v3);
  }

  [(NLCSettings *)self loadFromSelectedProfile];

  [(NLCSettings *)self reloadSpecifiers];
}

- (id)selectedProfile:(id)a3
{
  v4 = [qword_49FB8 selectedProfileName];
  v5 = v4;
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings %s: %@", "[NLCSettings selectedProfile:]", v4);
  }

  [(NLCSettings *)self updateFromSelectedProfile];

  return v5;
}

- (void)updateNLCProfilesList
{
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings %s", a2, "[NLCSettings updateNLCProfilesList]");
  }

  [(NLCSettings *)self reloadSpecifiers];
  v3 = +[NLCSettings sharedInstance];
  [v3 performSelector:"updateFromSelectedProfile" withObject:0];

  if (self->_nlcRunning)
  {

    [(NLCSettings *)self enableNLC:1];
  }
}

- (id)currentProfile
{
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings %s: %@", a2, "[NLCSettings currentProfile]", self->_currentProfile);
  }

  currentProfile = self->_currentProfile;

  return currentProfile;
}

- (void)setCurrentProfile:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings %s: %@", "[NLCSettings setCurrentProfile:]", v4);
  }

  currentProfile = self->_currentProfile;
  self->_currentProfile = v5;
  v7 = v5;

  v8 = +[NSNotificationCenter defaultCenter];

  [v8 postNotificationName:@"com.apple.Preferences.nlcChanges" object:0];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NLCSettings *)self indexForIndexPath:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v6];
    v9 = [v8 userInfo];
    if (dword_49FB0)
    {
      v10 = [v8 name];
      NSLog(@"NLCSettings: willSelectRowAtIndexPath, row: %ld, name: %@ userInfo: %p", v7, v10, v9);
    }
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NLCSettings *)self indexForIndexPath:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v11 = v10;
    if (dword_49FB0)
    {
      v12 = [(PSSpecifier *)v10 name];
      v13 = v12;
      if (self->_nlcRunning)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      NSLog(@"%s: didSelectRowAtIndexPath, row: %ld, name: %@ _nlcRunning: %s", "[NLCSettings tableView:didSelectRowAtIndexPath:]", v9, v12, v14);
    }

    v15 = [(PSSpecifier *)v11 userInfo];
    v16 = [v15 objectForKey:@"user-created"];

    if (v16)
    {
      v17 = qword_49FB8;
      v18 = [(PSSpecifier *)v11 name];
      [v17 setSelectedProfileName:v18];

      if (self->_nlcRunning)
      {
        [(NLCSettings *)self loadFromSelectedProfile];
        [qword_49FB8 setSimulatorRunning:1];
        [(NLCSettings *)self enableNLC:1];
      }

      [qword_49FB8 applySimulationStatusChanges];
      v19 = +[NLCSettings sharedInstance];
      [v19 performSelector:"updateFromSelectedProfile" withObject:0];

      [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] selectRowAtIndexPath:0 animated:0 scrollPosition:0];
    }

    else
    {
      if (v11 == self->_addProfileSpecifier)
      {
        v20 = +[NLCSettings sharedInstance];
        [v20 setCurrentProfile:&stru_3E0D8];
      }

      v21.receiver = self;
      v21.super_class = NLCSettings;
      [(NLCSettings *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = NLCSettings;
  v6 = a4;
  v7 = [(NLCSettings *)&v21 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(NLCSettings *)self indexForIndexPath:v6];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 name];
  v11 = v10;
  if (dword_49FB0)
  {
    NSLog(@"NLCSettings: cellForRowAtIndexPath, row: %ld, name: %@", v8, v10, v21.receiver, v21.super_class);
  }

  v12 = [v9 userInfo];
  v13 = [v12 objectForKey:@"user-created"];
  if (v13)
  {
    [v7 setAccessoryType:2];
    v14 = [qword_49FB8 selectedProfileName];
    [v7 setChecked:{objc_msgSend(v11, "isEqualToString:", v14)}];

    if (objc_opt_respondsToSelector())
    {
      v15 = [v13 BOOLValue];
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = v16;
      if (v15)
      {
        v18 = @"CUSTOM";
      }

      else
      {
        v18 = @"PRESET";
      }

      v19 = [v16 localizedStringForKey:v18 value:&stru_3E0D8 table:@"NLCSettings"];
      [v7 setSubtitle:v19];
    }
  }

  else
  {
    [v7 setChecked:0];
  }

  return v7;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = [(NLCSettings *)self indexForIndexPath:a4];
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
  v15 = v6;
  if (dword_49FB0)
  {
    v7 = [v6 name];
    NSLog(@"NLCSettings: cellForRowAtIndexPath, row: %ld, name: %@", v5, v7);

    v6 = v15;
  }

  v8 = [v6 userInfo];
  v9 = [v8 objectForKey:@"user-created"];

  v10 = +[NLCSettings sharedInstance];
  v11 = v10;
  if (v9)
  {
    v12 = [v15 name];
    [v11 setCurrentProfile:v12];
  }

  else
  {
    [v10 setCurrentProfile:&stru_3E0D8];
  }

  v13 = objc_alloc_init(*&v15[OBJC_IVAR___PSSpecifier_detailControllerClass]);
  if (!v13)
  {
    v13 = objc_alloc_init(PSDetailController);
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__rootController]);
  [v13 setRootController:WeakRetained];

  [v13 setParentController:self];
  [v13 setSpecifier:v15];
  [(NLCSettings *)self showController:v13];
}

@end