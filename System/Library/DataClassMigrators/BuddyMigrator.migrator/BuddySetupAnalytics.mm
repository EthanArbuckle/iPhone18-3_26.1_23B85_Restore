@interface BuddySetupAnalytics
+ (id)loadFromDiskWithPreferences:(id)a3;
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
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BuddySetupAnalytics;
  v6 = [(BuddySetupAnalytics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, a3);
  }

  return v7;
}

+ (id)loadFromDiskWithPreferences:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"setupAnalytics" includeCache:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[BuddySetupAnalytics alloc] initWithPreferences:v3];
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
  v4 = [(BuddySetupAnalytics *)self preferences];
  v3 = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [v4 setObject:v3 forKey:@"setupAnalytics" persistImmediately:1];
}

- (void)addEventUsingAnalyticsManager:(id)a3
{
  v4 = a3;
  v5 = [(BuddySetupAnalytics *)self _dictionaryRepresentation];
  [v4 addEvent:@"com.apple.setupassistant.ios.setup" withPayload:v5 persist:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BuddySetupAnalytics *)self isEqualToAnalytics:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAnalytics:(id)a3
{
  v4 = a3;
  v5 = [(BuddySetupAnalytics *)self hasCompletedInitialSetup];
  v6 = v5 ^ [v4 hasCompletedInitialSetup];
  v7 = [(BuddySetupAnalytics *)self usedProximitySetup];
  v8 = v6 | v7 ^ [v4 usedProximitySetup];
  v9 = [(BuddySetupAnalytics *)self dataTransferMethod];
  v10 = v9 == [v4 dataTransferMethod];
  LODWORD(v9) = [(BuddySetupAnalytics *)self inAppleStore];
  v11 = v9 ^ [v4 inAppleStore];
  LODWORD(v9) = [(BuddySetupAnalytics *)self softwareUpdatePerformed];
  v12 = v10 & ~(v8 | v11 | v9 ^ [v4 softwareUpdatePerformed]);
  v13 = [(BuddySetupAnalytics *)self numberOfPanesPresented];
  if (v13 == [v4 numberOfPanesPresented])
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self activeDuration];
  v16 = v15;
  [v4 activeDuration];
  if (v16 != v17)
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self backgroundDuration];
  v19 = v18;
  [v4 backgroundDuration];
  if (v19 != v20)
  {
    v14 = 0;
  }

  [(BuddySetupAnalytics *)self otherDuration];
  v22 = v21;
  [v4 otherDuration];
  if (v22 == v23)
  {
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  v25 = [(BuddySetupAnalytics *)self isSignedIntoAppleID];
  v26 = v24 & ~(v25 ^ [v4 isSignedIntoAppleID]);
  v27 = [(BuddySetupAnalytics *)self followUpItemsCount];
  v28 = [v4 followUpItemsCount];

  if (v27 == v28)
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