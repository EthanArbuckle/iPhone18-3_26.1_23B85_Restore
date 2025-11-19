@interface WalkPreferences
- (BOOL)hasAnyNonStandardPreferences;
- (WalkPreferences)initWithAvoidHills:(BOOL)a3 avoidBusyRoads:(BOOL)a4 avoidStairs:(BOOL)a5 defaults:(id)a6;
- (WalkPreferences)initWithCopy:(id)a3;
- (WalkPreferences)initWithDefaults:(id)a3;
- (WalkPreferences)initWithWalkingOptions:(id)a3 defaults:(id)a4;
- (id)_values;
- (id)walkingOptions;
- (void)loadValuesFromDefaults;
@end

@implementation WalkPreferences

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidHills:](self, "setAvoidHills:", [v3 BOOLForKey:@"MapsDefaultWalkingAvoidHillsKey"]);

  v4 = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidBusyRoads:](self, "setAvoidBusyRoads:", [v4 BOOLForKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"]);

  v5 = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidStairs:](self, "setAvoidStairs:", [v5 BOOLForKey:@"MapsDefaultWalkingAvoidStairsKey"]);
}

- (id)walkingOptions
{
  v3 = objc_opt_new();
  [v3 setAvoidHills:{-[WalkPreferences avoidHills](self, "avoidHills")}];
  [v3 setAvoidBusyRoads:{-[WalkPreferences avoidBusyRoads](self, "avoidBusyRoads")}];
  [v3 setAvoidStairs:{-[WalkPreferences avoidStairs](self, "avoidStairs")}];
  v4 = objc_opt_new();
  [v4 setWalkingUserPreferences:v3];

  return v4;
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidHills];
  v4 = [NSNumber numberWithBool:self->_avoidBusyRoads, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_avoidStairs];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(WalkPreferences *)self avoidHills]|| [(WalkPreferences *)self avoidBusyRoads])
  {
    return 1;
  }

  return [(WalkPreferences *)self avoidStairs];
}

- (WalkPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WalkPreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v5->_avoidHills = v4[24];
        v5->_avoidBusyRoads = v4[25];
        v5->_avoidStairs = v4[26];
      }
    }
  }

  return v5;
}

- (WalkPreferences)initWithDefaults:(id)a3
{
  v4.receiver = self;
  v4.super_class = WalkPreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:a3];
}

- (WalkPreferences)initWithWalkingOptions:(id)a3 defaults:(id)a4
{
  v6 = a4;
  v7 = [a3 walkingUserPreferences];
  v8 = -[WalkPreferences initWithAvoidHills:avoidBusyRoads:avoidStairs:defaults:](self, "initWithAvoidHills:avoidBusyRoads:avoidStairs:defaults:", [v7 avoidHills], objc_msgSend(v7, "avoidBusyRoads"), objc_msgSend(v7, "avoidStairs"), v6);

  return v8;
}

- (WalkPreferences)initWithAvoidHills:(BOOL)a3 avoidBusyRoads:(BOOL)a4 avoidStairs:(BOOL)a5 defaults:(id)a6
{
  v10.receiver = self;
  v10.super_class = WalkPreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:a6];
  if (result)
  {
    result->_avoidHills = a3;
    result->_avoidBusyRoads = a4;
    result->_avoidStairs = a5;
  }

  return result;
}

@end