@interface NSUserDefaults
- (BOOL)forceKillPCViewService;
- (BOOL)forceKillProximitycontrold;
- (BOOL)transferToHomePod;
- (double)executeDistanceDefault;
- (double)executeDistanceLarge;
- (int64_t)updateRateBluetoothWatch;
- (int64_t)updateRateExecuteWatch;
- (void)setExecuteDistanceDefault:(double)a3;
- (void)setExecuteDistanceLarge:(double)a3;
- (void)setUpdateRateBluetoothWatch:(int64_t)a3;
- (void)setUpdateRateExecuteWatch:(int64_t)a3;
@end

@implementation NSUserDefaults

- (BOOL)forceKillProximitycontrold
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (BOOL)forceKillPCViewService
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (BOOL)transferToHomePod
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (double)executeDistanceDefault
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setExecuteDistanceDefault:(double)a3
{
  v5 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setDouble:v4 forKey:a3];
}

- (double)executeDistanceLarge
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v2 doubleForKey:v3];
  v5 = v4;

  return v5;
}

- (void)setExecuteDistanceLarge:(double)a3
{
  v5 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setDouble:v4 forKey:a3];
}

- (int64_t)updateRateBluetoothWatch
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 integerForKey:v3];

  return v4;
}

- (void)setUpdateRateBluetoothWatch:(int64_t)a3
{
  v5 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setInteger:a3 forKey:v4];
}

- (int64_t)updateRateExecuteWatch
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 integerForKey:v3];

  return v4;
}

- (void)setUpdateRateExecuteWatch:(int64_t)a3
{
  v5 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setInteger:a3 forKey:v4];
}

@end