@interface BuddySetupAnalytics
+ (id)loadFromDiskWithPreferences:(id)preferences;
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
  preferencesCopy = preferences;
  v9.receiver = self;
  v9.super_class = BuddySetupAnalytics;
  v6 = [(BuddySetupAnalytics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, preferences);
  }

  return v7;
}

+ (id)loadFromDiskWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = [preferencesCopy objectForKey:@"setupAnalytics" includeCache:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[BuddySetupAnalytics alloc] initWithPreferences:preferencesCopy];
    v6 = [v4 objectForKeyedSubscript:@"hasCompletedInitialSetup"];
    -[BuddySetupAnalytics setHasCompletedInitialSetup:](v5, "setHasCompletedInitialSetup:", [v6 BOOLValue]);

    v7 = [v4 objectForKeyedSubscript:@"usedProximitySetup"];
    -[BuddySetupAnalytics setUsedProximitySetup:](v5, "setUsedProximitySetup:", [v7 BOOLValue]);

    v8 = [v4 objectForKeyedSubscript:@"dataTransferMethod"];
    -[BuddySetupAnalytics setDataTransferMethod:](v5, "setDataTransferMethod:", [v8 unsignedIntegerValue]);

    v9 = [v4 objectForKeyedSubscript:@"inAppleStore"];
    -[BuddySetupAnalytics setInAppleStore:](v5, "setInAppleStore:", [v9 BOOLValue]);

    v10 = [v4 objectForKeyedSubscript:@"softwareUpdatePerformed"];
    -[BuddySetupAnalytics setSoftwareUpdatePerformed:](v5, "setSoftwareUpdatePerformed:", [v10 BOOLValue]);

    v11 = [v4 objectForKeyedSubscript:@"numberOfPanesPresented"];
    -[BuddySetupAnalytics setNumberOfPanesPresented:](v5, "setNumberOfPanesPresented:", [v11 unsignedIntegerValue]);

    v12 = [v4 objectForKeyedSubscript:@"activeDuration"];
    [v12 doubleValue];
    [(BuddySetupAnalytics *)v5 setActiveDuration:?];

    v13 = [v4 objectForKeyedSubscript:@"backgroundDuration"];
    [v13 doubleValue];
    [(BuddySetupAnalytics *)v5 setBackgroundDuration:?];

    v14 = [v4 objectForKeyedSubscript:@"otherDuration"];
    [v14 doubleValue];
    [(BuddySetupAnalytics *)v5 setOtherDuration:?];

    v15 = [v4 objectForKeyedSubscript:@"isSignedIntoAppleID"];
    -[BuddySetupAnalytics setIsSignedIntoAppleID:](v5, "setIsSignedIntoAppleID:", [v15 BOOLValue]);

    v16 = [v4 objectForKeyedSubscript:@"followUpItemsCount"];
    [v16 doubleValue];
    [(BuddySetupAnalytics *)v5 setFollowUpItemsCount:v17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)persist
{
  preferences = [(BuddySetupAnalytics *)self preferences];
  _dictionaryRepresentation = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [preferences setObject:_dictionaryRepresentation forKey:@"setupAnalytics" persistImmediately:1];
}

- (void)addEventUsingAnalyticsManager:(id)manager
{
  managerCopy = manager;
  _dictionaryRepresentation = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [managerCopy addEvent:@"com.apple.setupassistant.ios.setup" withPayload:_dictionaryRepresentation persist:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BuddySetupAnalytics *)self isEqualToAnalytics:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  hasCompletedInitialSetup = [(BuddySetupAnalytics *)self hasCompletedInitialSetup];
  v6 = hasCompletedInitialSetup ^ [analyticsCopy hasCompletedInitialSetup];
  usedProximitySetup = [(BuddySetupAnalytics *)self usedProximitySetup];
  v8 = v6 | usedProximitySetup ^ [analyticsCopy usedProximitySetup];
  dataTransferMethod = [(BuddySetupAnalytics *)self dataTransferMethod];
  v10 = dataTransferMethod == [analyticsCopy dataTransferMethod];
  LODWORD(dataTransferMethod) = [(BuddySetupAnalytics *)self inAppleStore];
  v11 = dataTransferMethod ^ [analyticsCopy inAppleStore];
  LODWORD(dataTransferMethod) = [(BuddySetupAnalytics *)self softwareUpdatePerformed];
  v12 = v10 & ~(v8 | v11 | dataTransferMethod ^ [analyticsCopy softwareUpdatePerformed]);
  numberOfPanesPresented = [(BuddySetupAnalytics *)self numberOfPanesPresented];
  if (numberOfPanesPresented == [analyticsCopy numberOfPanesPresented])
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self activeDuration];
  v16 = v15;
  [analyticsCopy activeDuration];
  if (v16 != v17)
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self backgroundDuration];
  v19 = v18;
  [analyticsCopy backgroundDuration];
  if (v19 != v20)
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self otherDuration];
  v22 = v21;
  [analyticsCopy otherDuration];
  if (v22 == v23)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  isSignedIntoAppleID = [(BuddySetupAnalytics *)self isSignedIntoAppleID];
  v26 = v24 & ~(isSignedIntoAppleID ^ [analyticsCopy isSignedIntoAppleID]);
  followUpItemsCount = [(BuddySetupAnalytics *)self followUpItemsCount];
  followUpItemsCount2 = [analyticsCopy followUpItemsCount];

  if (followUpItemsCount == followUpItemsCount2)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)self hasCompletedInitialSetup]];
  [v3 setObject:v4 forKeyedSubscript:@"hasCompletedInitialSetup"];

  v5 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)self usedProximitySetup]];
  [v3 setObject:v5 forKeyedSubscript:@"usedProximitySetup"];

  v6 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)self dataTransferMethod]];
  [v3 setObject:v6 forKeyedSubscript:@"dataTransferMethod"];

  v7 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)self inAppleStore]];
  [v3 setObject:v7 forKeyedSubscript:@"inAppleStore"];

  v8 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)self softwareUpdatePerformed]];
  [v3 setObject:v8 forKeyedSubscript:@"softwareUpdatePerformed"];

  v9 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)self numberOfPanesPresented]];
  [v3 setObject:v9 forKeyedSubscript:@"numberOfPanesPresented"];

  [(BuddySetupAnalytics *)self activeDuration];
  v10 = [NSNumber numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"activeDuration"];

  [(BuddySetupAnalytics *)self backgroundDuration];
  v11 = [NSNumber numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"backgroundDuration"];

  [(BuddySetupAnalytics *)self otherDuration];
  v12 = [NSNumber numberWithDouble:?];
  [v3 setObject:v12 forKeyedSubscript:@"otherDuration"];

  v13 = [NSNumber numberWithBool:[(BuddySetupAnalytics *)self isSignedIntoAppleID]];
  [v3 setObject:v13 forKeyedSubscript:@"isSignedIntoAppleID"];

  v14 = [NSNumber numberWithUnsignedInteger:[(BuddySetupAnalytics *)self followUpItemsCount]];
  [v3 setObject:v14 forKeyedSubscript:@"followUpItemsCount"];

  return v3;
}

@end