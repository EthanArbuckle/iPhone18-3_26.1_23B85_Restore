@interface NLCSavedProfiles
- (BOOL)createPresetProfiles;
- (id)addNewProfile:(id)a3;
- (id)restoreRowToSelect;
- (void)applyChanges;
- (void)applySimulationStatusChanges;
- (void)loadPreferences;
- (void)refreshArrays;
- (void)removeProfileWithName:(id)a3;
@end

@implementation NLCSavedProfiles

- (void)refreshArrays
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(NSMutableDictionary *)self->profileDictionary allKeys];
  [v5 addObjectsFromArray:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSMutableDictionary *)self->profileDictionary allKeys];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->profileDictionary objectForKey:v11];
        v13 = [v12 objectForKey:@"Preset"];

        if ([v13 BOOLValue])
        {
          v14 = v4;
        }

        else
        {
          v14 = v3;
        }

        [v14 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [v4 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  [(NLCSavedProfiles *)self setSuppliedProfilesArray:v15];

  v16 = [v3 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  [(NLCSavedProfiles *)self setCustomProfilesArray:v16];

  v17 = [v5 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  [(NLCSavedProfiles *)self setAllProfilesArray:v17];
}

- (void)removeProfileWithName:(id)a3
{
  profileDictionary = self->profileDictionary;
  v5 = a3;
  [(NSMutableDictionary *)profileDictionary removeObjectForKey:v5];
  [(NLCSavedProfiles *)self refreshArrays];
  LODWORD(profileDictionary) = [v5 isEqualToString:self->selectedProfileName];

  if (profileDictionary)
  {
    v6 = [(NLCSavedProfiles *)self allProfilesArray];
    v7 = [v6 count];

    if (v7)
    {
      v9 = [(NLCSavedProfiles *)self allProfilesArray];
      v8 = [v9 objectAtIndex:0];
      [(NLCSavedProfiles *)self setSelectedProfileName:v8];
    }

    else
    {

      [(NLCSavedProfiles *)self setSelectedProfileName:0];
    }
  }
}

- (id)restoreRowToSelect
{
  v3 = [(NLCSavedProfiles *)self simulatedProfileName];
  if (v3 && (v4 = v3, v5 = [(NLCSavedProfiles *)self simulatorRunning], v4, v5))
  {
    v6 = self->simulatedProfileName;
  }

  else
  {
    v6 = CFPreferencesCopyAppValue(@"SelectedProfile", @"com.apple.network.prefPaneSimulate");
  }

  selectedProfileName = self->selectedProfileName;
  self->selectedProfileName = v6;

  v8 = self->selectedProfileName;

  return v8;
}

- (void)loadPreferences
{
  v3 = CFPreferencesCopyAppValue(@"Profiles", @"com.apple.network.prefPaneSimulate");
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    [(NLCSavedProfiles *)self createPresetProfiles];
    v5 = CFPreferencesCopyAppValue(@"Profiles", @"com.apple.network.prefPaneSimulate");

    v4 = v5;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  profileDictionary = self->profileDictionary;
  self->profileDictionary = v6;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = self->profileDictionary;
        v15 = [v8 valueForKey:{v13, v33}];
        v16 = [v15 mutableCopy];
        [(NSMutableDictionary *)v14 setObject:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  v17 = CFPreferencesCopyAppValue(@"SimulatedProfile", @"com.apple.network.prefPaneSimulate");
  simulatedProfileName = self->simulatedProfileName;
  self->simulatedProfileName = v17;

  v19 = CFPreferencesCopyAppValue(@"SelectedProfile", @"com.apple.network.prefPaneSimulate");
  selectedProfileName = self->selectedProfileName;
  self->selectedProfileName = v19;

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SimulatorIsRunning", @"com.apple.network.prefPaneSimulate", 0);
  *&self->simulatorRunning = AppBooleanValue != 0;
  if (AppBooleanValue && self->simulatedProfileName)
  {
    v22 = [(NSMutableDictionary *)self->profileDictionary objectForKey:?];
    v23 = [v22 valueForKey:@"DNSDelayValue"];
    self->secondarySimulatorRunning = [v23 BOOLValue];
  }

  v24 = CFPreferencesCopyAppValue(@"TimeAtLastRun", @"com.apple.network.prefPaneSimulate");
  v25 = [v24 longValue];

  v26 = +[NSProcessInfo processInfo];
  [v26 systemUptime];
  v28 = v27;

  v29 = +[NSDate date];
  [v29 timeIntervalSince1970];
  v31 = v30 - v25;

  if (v31 > v28)
  {
    *&self->simulatorRunning = 0;
    v32 = self->simulatedProfileName;
    self->simulatedProfileName = 0;
  }

  [(NLCSavedProfiles *)self refreshArrays];
}

- (BOOL)createPresetProfiles
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"com.apple.network.prefPaneSimulate" ofType:@"plist"];

  v4 = [[NSMutableDictionary alloc] initWithContentsOfFile:v3];
  CFPreferencesSetMultiple(v4, 0, @"com.apple.network.prefPaneSimulate", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v5 = CFPreferencesSynchronize(@"com.apple.network.prefPaneSimulate", kCFPreferencesCurrentUser, kCFPreferencesAnyHost) != 0;

  return v5;
}

- (void)applyChanges
{
  CFPreferencesSetAppValue(@"Profiles", self->profileDictionary, @"com.apple.network.prefPaneSimulate");

  [(NLCSavedProfiles *)self applySimulationStatusChanges];
}

- (void)applySimulationStatusChanges
{
  if ([(NLCSavedProfiles *)self simulatorRunning])
  {
    CFPreferencesSetAppValue(@"SimulatorIsRunning", kCFBooleanTrue, @"com.apple.network.prefPaneSimulate");
    v3 = +[NSDate date];
    [v3 timeIntervalSince1970];
    v5 = [NSNumber numberWithLong:v4];

    CFPreferencesSetAppValue(@"TimeAtLastRun", v5, @"com.apple.network.prefPaneSimulate");
  }

  else
  {
    CFPreferencesSetAppValue(@"SimulatorIsRunning", kCFBooleanFalse, @"com.apple.network.prefPaneSimulate");
  }

  CFPreferencesSetAppValue(@"SelectedProfile", self->selectedProfileName, @"com.apple.network.prefPaneSimulate");
  CFPreferencesSetAppValue(@"SimulatedProfile", self->simulatedProfileName, @"com.apple.network.prefPaneSimulate");

  CFPreferencesAppSynchronize(@"com.apple.network.prefPaneSimulate");
}

- (id)addNewProfile:(id)a3
{
  v4 = a3;
  v5 = [(NLCSavedProfiles *)self profileDictionaryWithName:v4];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v21 = [NSArray arrayWithObjects:@"UplinkBandwidth", @"UplinkDelay", @"UplinkPacketLossRatio", @"UplinkBandwidthUnit", @"DownlinkBandwidth", @"DownlinkDelay", @"DownlinkPacketLossRatio", @"DownlinkBandwidthUnit", @"RunOnInterface", @"DNSDelayValue", @"ProtocolFamily", @"ExcludeLoopback", 0];
    v19 = [NSNumber numberWithFloat:0.0];
    v22 = [NSNumber numberWithFloat:0.0];
    v16 = [NSNumber numberWithFloat:0.0];
    v18 = [NSNumber numberWithInt:0];
    v17 = [NSNumber numberWithFloat:0.0];
    v8 = [NSNumber numberWithFloat:0.0];
    v9 = [NSNumber numberWithFloat:0.0];
    v10 = [NSNumber numberWithInt:0];
    v11 = [NSNumber numberWithInt:0];
    v12 = [NSNumber numberWithInt:0];
    v13 = [NSNumber numberWithInt:1];
    v20 = [NSArray arrayWithObjects:v19, v22, v16, v18, v17, v8, v9, v10, @"All", v11, v12, v13, 0];

    v14 = [[NSMutableDictionary alloc] initWithObjects:v20 forKeys:v21];
    [(NSMutableDictionary *)self->profileDictionary setObject:v14 forKey:v4];
    [(NLCSavedProfiles *)self refreshArrays];
    v6 = v14;

    v7 = v6;
  }

  return v7;
}

@end