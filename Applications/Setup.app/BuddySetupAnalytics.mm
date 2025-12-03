@interface BuddySetupAnalytics
+ (id)loadFromDiskWithPreferences:(id)preferences;
+ (void)removeFromDiskWithPreferences:(id)preferences;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAnalytics:(id)analytics;
- (BuddySetupAnalytics)initWithPreferences:(id)preferences;
- (id)_dictionaryRepresentation;
- (void)addEventUsingAnalyticsManager:(id)manager;
- (void)persist;
@end

@implementation BuddySetupAnalytics

- (BuddySetupAnalytics)initWithPreferences:(id)preferences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddySetupAnalytics;
  selfCopy = [(BuddySetupAnalytics *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 8, location[0]);
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

+ (id)loadFromDiskWithPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
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
  preferences = [(BuddySetupAnalytics *)self preferences];
  _dictionaryRepresentation = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [(BYPreferencesController *)preferences setObject:_dictionaryRepresentation forKey:@"setupAnalytics" persistImmediately:1];
}

+ (void)removeFromDiskWithPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  [location[0] removeObjectForKey:@"setupAnalytics" onlyFromMemory:0];
  objc_storeStrong(location, 0);
}

- (void)addEventUsingAnalyticsManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v3 = location[0];
  _dictionaryRepresentation = [(BuddySetupAnalytics *)selfCopy _dictionaryRepresentation];
  [v3 addEvent:@"com.apple.setupassistant.ios.setup" withPayload:_dictionaryRepresentation persist:0];

  objc_storeStrong(location, 0);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(BuddySetupAnalytics *)selfCopy isEqualToAnalytics:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToAnalytics:(id)analytics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, analytics);
  hasCompletedInitialSetup = [(BuddySetupAnalytics *)selfCopy hasCompletedInitialSetup];
  v18 = hasCompletedInitialSetup == ([location[0] hasCompletedInitialSetup] & 1);
  usedProximitySetup = [(BuddySetupAnalytics *)selfCopy usedProximitySetup];
  v19 = (v18 & (usedProximitySetup == ([location[0] usedProximitySetup] & 1))) != 0;
  dataTransferMethod = [(BuddySetupAnalytics *)selfCopy dataTransferMethod];
  v20 = (v19 & (dataTransferMethod == [location[0] dataTransferMethod])) != 0;
  LODWORD(dataTransferMethod) = [(BuddySetupAnalytics *)selfCopy inAppleStore];
  v21 = (v20 & (dataTransferMethod == ([location[0] inAppleStore] & 1))) != 0;
  LODWORD(dataTransferMethod) = [(BuddySetupAnalytics *)selfCopy softwareUpdatePerformed];
  v22 = (v21 & (dataTransferMethod == ([location[0] softwareUpdatePerformed] & 1))) != 0;
  numberOfPanesPresented = [(BuddySetupAnalytics *)selfCopy numberOfPanesPresented];
  v23 = (v22 & (numberOfPanesPresented == [location[0] numberOfPanesPresented])) != 0;
  [(BuddySetupAnalytics *)selfCopy activeDuration];
  v8 = v7;
  [location[0] activeDuration];
  v24 = v23 && v8 == v9;
  [(BuddySetupAnalytics *)selfCopy backgroundDuration];
  v11 = v10;
  [location[0] backgroundDuration];
  v25 = v24 && v11 == v12;
  [(BuddySetupAnalytics *)selfCopy otherDuration];
  v14 = v13;
  [location[0] otherDuration];
  v26 = v25 && v14 == v15;
  LODWORD(numberOfPanesPresented) = [(BuddySetupAnalytics *)selfCopy isSignedIntoAppleID];
  v27 = (v26 & (numberOfPanesPresented == ([location[0] isSignedIntoAppleID] & 1))) != 0;
  followUpItemsCount = [(BuddySetupAnalytics *)selfCopy followUpItemsCount];
  LOBYTE(followUpItemsCount) = (v27 & (followUpItemsCount == [location[0] followUpItemsCount])) != 0;
  objc_storeStrong(location, 0);
  return followUpItemsCount & 1;
}

- (id)_dictionaryRepresentation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableDictionary);
  v2 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)selfCopy hasCompletedInitialSetup]];
  [location[0] setObject:v2 forKeyedSubscript:@"hasCompletedInitialSetup"];

  v3 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)selfCopy usedProximitySetup]];
  [location[0] setObject:v3 forKeyedSubscript:@"usedProximitySetup"];

  v4 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)selfCopy dataTransferMethod]];
  [location[0] setObject:v4 forKeyedSubscript:@"dataTransferMethod"];

  v5 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)selfCopy inAppleStore]];
  [location[0] setObject:v5 forKeyedSubscript:@"inAppleStore"];

  v6 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)selfCopy softwareUpdatePerformed]];
  [location[0] setObject:v6 forKeyedSubscript:@"softwareUpdatePerformed"];

  v7 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)selfCopy numberOfPanesPresented]];
  [location[0] setObject:v7 forKeyedSubscript:@"numberOfPanesPresented"];

  [(BuddySetupAnalytics *)selfCopy activeDuration];
  v8 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v8 forKeyedSubscript:@"activeDuration"];

  [(BuddySetupAnalytics *)selfCopy backgroundDuration];
  v9 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v9 forKeyedSubscript:@"backgroundDuration"];

  [(BuddySetupAnalytics *)selfCopy otherDuration];
  v10 = [NSNumber numberWithDouble:?];
  [location[0] setObject:v10 forKeyedSubscript:@"otherDuration"];

  v11 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)selfCopy isSignedIntoAppleID]];
  [location[0] setObject:v11 forKeyedSubscript:@"isSignedIntoAppleID"];

  v12 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)selfCopy followUpItemsCount]];
  [location[0] setObject:v12 forKeyedSubscript:@"followUpItemsCount"];

  v13 = location[0];
  objc_storeStrong(location, 0);
  return v13;
}

@end