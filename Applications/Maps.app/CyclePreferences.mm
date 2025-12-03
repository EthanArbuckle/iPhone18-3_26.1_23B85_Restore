@interface CyclePreferences
- (BOOL)hasAnyNonStandardPreferences;
- (CyclePreferences)initWithAvoidHills:(BOOL)hills avoidBusyRoads:(BOOL)roads ebike:(BOOL)ebike defaults:(id)defaults;
- (CyclePreferences)initWithCopy:(id)copy;
- (CyclePreferences)initWithCyclingOptions:(id)options defaults:(id)defaults;
- (CyclePreferences)initWithDefaults:(id)defaults;
- (id)_values;
- (id)cyclingOptions;
- (void)loadValuesFromDefaults;
@end

@implementation CyclePreferences

- (void)loadValuesFromDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setAvoidHills:](self, "setAvoidHills:", [defaults BOOLForKey:@"MapsDefaultAvoidHillsKey"]);

  defaults2 = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setAvoidBusyRoads:](self, "setAvoidBusyRoads:", [defaults2 BOOLForKey:@"MapsDefaultAvoidBusyRoadsKey"]);

  defaults3 = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setEbike:](self, "setEbike:", [defaults3 BOOLForKey:@"MapsDefaultUseEbikeKey"]);
}

- (id)cyclingOptions
{
  v3 = objc_opt_new();
  [v3 setAvoidHills:{-[CyclePreferences avoidHills](self, "avoidHills")}];
  [v3 setAvoidBusyRoads:{-[CyclePreferences avoidBusyRoads](self, "avoidBusyRoads")}];
  v4 = objc_alloc_init(GEOCyclingVehicleSpecifications);
  [v4 setIsEbike:{-[CyclePreferences ebike](self, "ebike")}];
  v5 = objc_opt_new();
  [v5 setCyclingUserPreferences:v3];
  [v5 setCyclingVehicleSpecifications:v4];

  return v5;
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidHills];
  v4 = [NSNumber numberWithBool:self->_avoidBusyRoads, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_ebike];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(CyclePreferences *)self avoidHills])
  {
    return 1;
  }

  return [(CyclePreferences *)self avoidBusyRoads];
}

- (CyclePreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v8.receiver = self;
  v8.super_class = CyclePreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:copyCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (copyCopy)
    {
      if (isKindOfClass)
      {
        v5->_avoidHills = copyCopy[24];
        v5->_avoidBusyRoads = copyCopy[25];
        v5->_ebike = copyCopy[26];
      }
    }
  }

  return v5;
}

- (CyclePreferences)initWithDefaults:(id)defaults
{
  v4.receiver = self;
  v4.super_class = CyclePreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:defaults];
}

- (CyclePreferences)initWithCyclingOptions:(id)options defaults:(id)defaults
{
  defaultsCopy = defaults;
  optionsCopy = options;
  cyclingUserPreferences = [optionsCopy cyclingUserPreferences];
  cyclingVehicleSpecifications = [optionsCopy cyclingVehicleSpecifications];

  v10 = -[CyclePreferences initWithAvoidHills:avoidBusyRoads:ebike:defaults:](self, "initWithAvoidHills:avoidBusyRoads:ebike:defaults:", [cyclingUserPreferences avoidHills], objc_msgSend(cyclingUserPreferences, "avoidBusyRoads"), objc_msgSend(cyclingVehicleSpecifications, "isEbike"), defaultsCopy);
  return v10;
}

- (CyclePreferences)initWithAvoidHills:(BOOL)hills avoidBusyRoads:(BOOL)roads ebike:(BOOL)ebike defaults:(id)defaults
{
  v10.receiver = self;
  v10.super_class = CyclePreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:defaults];
  if (result)
  {
    result->_avoidHills = hills;
    result->_avoidBusyRoads = roads;
    result->_ebike = ebike;
  }

  return result;
}

@end