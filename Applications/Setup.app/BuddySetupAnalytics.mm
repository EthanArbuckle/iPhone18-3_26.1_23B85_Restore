@interface BuddySetupAnalytics
+ (id)loadFromDiskWithPreferences:(id)a3;
+ (void)removeFromDiskWithPreferences:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAnalytics:(id)a3;
- (BuddySetupAnalytics)initWithPreferences:(id)a3;
- (id)_dictionaryRepresentation;
- (void)addEventUsingAnalyticsManager:(id)a3;
- (void)persist;
@end

@implementation BuddySetupAnalytics

- (BuddySetupAnalytics)initWithPreferences:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddySetupAnalytics;
  v8 = [(BuddySetupAnalytics *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(v8 + 8, location[0]);
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

+ (id)loadFromDiskWithPreferences:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [location[0] objectForKey:@"setupAnalytics" includeCache:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [BuddySetupAnalytics alloc];
    v18 = [(BuddySetupAnalytics *)v3 initWithPreferences:location[0]];
    v4 = [v20 objectForKeyedSubscript:@"hasCompletedInitialSetup"];
    [v18 setHasCompletedInitialSetup:{objc_msgSend(v4, "BOOLValue") & 1}];

    v5 = [v20 objectForKeyedSubscript:@"usedProximitySetup"];
    [v18 setUsedProximitySetup:{objc_msgSend(v5, "BOOLValue") & 1}];

    v6 = [v20 objectForKeyedSubscript:@"dataTransferMethod"];
    [v18 setDataTransferMethod:{objc_msgSend(v6, "unsignedIntegerValue")}];

    v7 = [v20 objectForKeyedSubscript:@"inAppleStore"];
    [v18 setInAppleStore:{objc_msgSend(v7, "BOOLValue") & 1}];

    v8 = [v20 objectForKeyedSubscript:@"softwareUpdatePerformed"];
    [v18 setSoftwareUpdatePerformed:{objc_msgSend(v8, "BOOLValue") & 1}];

    v9 = [v20 objectForKeyedSubscript:@"numberOfPanesPresented"];
    [v18 setNumberOfPanesPresented:{objc_msgSend(v9, "unsignedIntegerValue")}];

    v10 = [v20 objectForKeyedSubscript:@"activeDuration"];
    [v10 doubleValue];
    [v18 setActiveDuration:?];

    v11 = [v20 objectForKeyedSubscript:@"backgroundDuration"];
    [v11 doubleValue];
    [v18 setBackgroundDuration:?];

    v12 = [v20 objectForKeyedSubscript:@"otherDuration"];
    [v12 doubleValue];
    [v18 setOtherDuration:?];

    v13 = [v20 objectForKeyedSubscript:@"isSignedIntoAppleID"];
    [v18 setIsSignedIntoAppleID:{objc_msgSend(v13, "BOOLValue") & 1}];

    v14 = [v20 objectForKeyedSubscript:@"followUpItemsCount"];
    [v14 doubleValue];
    [v18 setFollowUpItemsCount:v15];

    v22 = v18;
    v19 = 1;
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v22 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  v16 = v22;

  return v16;
}

- (void)persist
{
  v2 = [(BuddySetupAnalytics *)self preferences];
  v3 = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [(BYPreferencesController *)v2 setObject:v3 forKey:@"setupAnalytics" persistImmediately:1];
}

+ (void)removeFromDiskWithPreferences:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] removeObjectForKey:@"setupAnalytics" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

- (void)addEventUsingAnalyticsManager:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddySetupAnalytics *)v6 _dictionaryRepresentation];
  [v3 addEvent:@"com.apple.setupassistant.ios.setup" withPayload:v4 persist:0];

  objc_storeStrong(location, 0);
}

- (BOOL)isEqual:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5 == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BuddySetupAnalytics *)v5 isEqualToAnalytics:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToAnalytics:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySetupAnalytics *)v29 hasCompletedInitialSetup];
  v18 = v3 == ([location[0] hasCompletedInitialSetup] & 1);
  v4 = [(BuddySetupAnalytics *)v29 usedProximitySetup];
  v19 = (v18 & (v4 == ([location[0] usedProximitySetup] & 1))) != 0;
  v5 = [(BuddySetupAnalytics *)v29 dataTransferMethod];
  v20 = (v19 & (v5 == [location[0] dataTransferMethod])) != 0;
  LODWORD(v5) = [(BuddySetupAnalytics *)v29 inAppleStore];
  v21 = (v20 & (v5 == ([location[0] inAppleStore] & 1))) != 0;
  LODWORD(v5) = [(BuddySetupAnalytics *)v29 softwareUpdatePerformed];
  v22 = (v21 & (v5 == ([location[0] softwareUpdatePerformed] & 1))) != 0;
  v6 = [(BuddySetupAnalytics *)v29 numberOfPanesPresented];
  v23 = (v22 & (v6 == [location[0] numberOfPanesPresented])) != 0;
  [(BuddySetupAnalytics *)v29 activeDuration];
  v8 = v7;
  [location[0] activeDuration];
  v24 = v23 && v8 == v9;
  [(BuddySetupAnalytics *)v29 backgroundDuration];
  v11 = v10;
  [location[0] backgroundDuration];
  v25 = v24 && v11 == v12;
  [(BuddySetupAnalytics *)v29 otherDuration];
  v14 = v13;
  [location[0] otherDuration];
  v26 = v25 && v14 == v15;
  LODWORD(v6) = [(BuddySetupAnalytics *)v29 isSignedIntoAppleID];
  v27 = (v26 & (v6 == ([location[0] isSignedIntoAppleID] & 1))) != 0;
  v16 = [(BuddySetupAnalytics *)v29 followUpItemsCount];
  LOBYTE(v16) = (v27 & (v16 == [location[0] followUpItemsCount])) != 0;
  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (id)_dictionaryRepresentation
{
  v16 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableDictionary);
  v2 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)v16 hasCompletedInitialSetup]];
  [location[0] setObject:v2 forKeyedSubscript:@"hasCompletedInitialSetup"];

  v3 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)v16 usedProximitySetup]];
  [location[0] setObject:v3 forKeyedSubscript:@"usedProximitySetup"];

  v4 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)v16 dataTransferMethod]];
  [location[0] setObject:v4 forKeyedSubscript:@"dataTransferMethod"];

  v5 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)v16 inAppleStore]];
  [location[0] setObject:v5 forKeyedSubscript:@"inAppleStore"];

  v6 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)v16 softwareUpdatePerformed]];
  [location[0] setObject:v6 forKeyedSubscript:@"softwareUpdatePerformed"];

  v7 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)v16 numberOfPanesPresented]];
  [location[0] setObject:v7 forKeyedSubscript:@"numberOfPanesPresented"];

  [(BuddySetupAnalytics *)v16 activeDuration];
  v8 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v8 forKeyedSubscript:@"activeDuration"];

  [(BuddySetupAnalytics *)v16 backgroundDuration];
  v9 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v9 forKeyedSubscript:@"backgroundDuration"];

  [(BuddySetupAnalytics *)v16 otherDuration];
  v10 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v10 forKeyedSubscript:@"otherDuration"];

  v11 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)v16 isSignedIntoAppleID]];
  [location[0] setObject:v11 forKeyedSubscript:@"isSignedIntoAppleID"];

  v12 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)v16 followUpItemsCount]];
  [location[0] setObject:v12 forKeyedSubscript:@"followUpItemsCount"];

  v13 = location[0];
  objc_storeStrong(location, 0);
  return v13;
}

@end