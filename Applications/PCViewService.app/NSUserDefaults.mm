@interface NSUserDefaults
- (BOOL)forceKillPCViewService;
- (BOOL)forceKillProximitycontrold;
- (BOOL)transferToHomePod;
- (double)executeDistanceDefault;
- (double)executeDistanceLarge;
- (int64_t)updateRateBluetoothWatch;
- (int64_t)updateRateExecuteWatch;
- (void)setExecuteDistanceDefault:(double)default;
- (void)setExecuteDistanceLarge:(double)large;
- (void)setUpdateRateBluetoothWatch:(int64_t)watch;
- (void)setUpdateRateExecuteWatch:(int64_t)watch;
@end

@implementation NSUserDefaults

- (BOOL)forceKillProximitycontrold
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (BOOL)forceKillPCViewService
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (BOOL)transferToHomePod
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (double)executeDistanceDefault
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setExecuteDistanceDefault:(double)default
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setDouble:v4 forKey:default];
}

- (double)executeDistanceLarge
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setExecuteDistanceLarge:(double)large
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setDouble:v4 forKey:large];
}

- (int64_t)updateRateBluetoothWatch
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy integerForKey:v3];

  return v4;
}

- (void)setUpdateRateBluetoothWatch:(int64_t)watch
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setInteger:watch forKey:v4];
}

- (int64_t)updateRateExecuteWatch
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy integerForKey:v3];

  return v4;
}

- (void)setUpdateRateExecuteWatch:(int64_t)watch
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setInteger:watch forKey:v4];
}

@end