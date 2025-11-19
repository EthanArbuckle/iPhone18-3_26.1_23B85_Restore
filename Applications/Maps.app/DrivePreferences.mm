@interface DrivePreferences
- (BOOL)hasAnyNonStandardPreferences;
- (DrivePreferences)initWithAutomobileOptions:(id)a3 defaults:(id)a4;
- (DrivePreferences)initWithAvoidTolls:(BOOL)a3 avoidHighways:(BOOL)a4 ignoreLiveTraffic:(BOOL)a5 defaults:(id)a6;
- (DrivePreferences)initWithCopy:(id)a3;
- (DrivePreferences)initWithDefaults:(id)a3;
- (id)_values;
- (id)automobileOptions;
- (id)writtenDefaults;
- (void)loadValuesFromDefaults;
@end

@implementation DrivePreferences

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setAvoidTolls:](self, "setAvoidTolls:", [v3 BOOLForKey:@"MapsDefaultAvoidTollsKey"]);

  v4 = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setAvoidHighways:](self, "setAvoidHighways:", [v4 BOOLForKey:@"MapsDefaultAvoidHighwaysKey"]);

  v5 = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setIgnoreLiveTraffic:](self, "setIgnoreLiveTraffic:", [v5 BOOLForKey:@"NavigationDirectionsIgnoreLiveTraffic"]);
}

- (id)automobileOptions
{
  v3 = objc_opt_new();
  [v3 setIncludeHistoricTravelTime:1];
  if ([(DrivePreferences *)self ignoreLiveTraffic])
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  [v3 setTrafficType:v4];
  v5 = objc_opt_new();
  [v5 setAvoidTolls:{-[DrivePreferences avoidTolls](self, "avoidTolls")}];
  [v5 setAvoidHighways:{-[DrivePreferences avoidHighways](self, "avoidHighways")}];
  [v3 setUserPreferences:v5];

  return v3;
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidTolls];
  v4 = [NSNumber numberWithBool:self->_avoidHighways, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_ignoreLiveTraffic];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(DrivePreferences *)self avoidTolls])
  {
    return 1;
  }

  return [(DrivePreferences *)self avoidHighways];
}

- (id)writtenDefaults
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v6[0] = v2;
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (DrivePreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DrivePreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v5->_avoidTolls = v4[24];
        v5->_avoidHighways = v4[25];
        v5->_ignoreLiveTraffic = v4[26];
      }
    }
  }

  return v5;
}

- (DrivePreferences)initWithDefaults:(id)a3
{
  v4.receiver = self;
  v4.super_class = DrivePreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:a3];
}

- (DrivePreferences)initWithAutomobileOptions:(id)a3 defaults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 userPreferences];
  v9 = [v8 avoidTolls];
  v10 = [v7 userPreferences];
  v11 = [v10 avoidHighways];
  v12 = [v7 trafficType];

  v13 = [(DrivePreferences *)self initWithAvoidTolls:v9 avoidHighways:v11 ignoreLiveTraffic:v12 != 3 defaults:v6];
  return v13;
}

- (DrivePreferences)initWithAvoidTolls:(BOOL)a3 avoidHighways:(BOOL)a4 ignoreLiveTraffic:(BOOL)a5 defaults:(id)a6
{
  v10.receiver = self;
  v10.super_class = DrivePreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:a6];
  if (result)
  {
    result->_avoidTolls = a3;
    result->_avoidHighways = a4;
    result->_ignoreLiveTraffic = a5;
  }

  return result;
}

@end