@interface NTKFoghornPreferences
+ (BOOL)depthDemoMode;
+ (BOOL)elevationDemoMode;
+ (BOOL)harmoniaDemoMode;
+ (BOOL)statusIndicatorMove;
+ (BOOL)timeViewUseStretchAnimation;
+ (double)depthDemoRate;
+ (double)depthDemoValue;
+ (double)elevationDemoAccuracy;
+ (double)elevationDemoPrecision;
+ (double)elevationDemoRate;
+ (double)elevationDemoValue;
+ (int64_t)harmoniaDemoOvernightScenario;
+ (int64_t)harmoniaDemoTrainingScenario;
+ (unint64_t)timeViewAnimationSnapStyle;
@end

@implementation NTKFoghornPreferences

+ (BOOL)depthDemoMode
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return v3[0];
}

+ (double)depthDemoValue
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *(v3 + 1);
}

+ (double)depthDemoRate
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_23BE6BD48(&v3);
  return *&v4;
}

+ (BOOL)elevationDemoMode
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_23BE6BD48(&v3);
  return BYTE8(v4);
}

+ (double)elevationDemoValue
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *&v4;
}

+ (double)elevationDemoRate
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *(&v4 + 1);
}

+ (double)elevationDemoAccuracy
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *&v4;
}

+ (double)elevationDemoPrecision
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *(&v4 + 1);
}

+ (BOOL)statusIndicatorMove
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return v4;
}

+ (BOOL)timeViewUseStretchAnimation
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return BYTE1(v4);
}

+ (unint64_t)timeViewAnimationSnapStyle
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *(&v4 + 1);
}

+ (BOOL)harmoniaDemoMode
{
  v5 = 0;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return v4;
}

+ (int64_t)harmoniaDemoOvernightScenario
{
  v5 = 0;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return *(&v4 + 1);
}

+ (int64_t)harmoniaDemoTrainingScenario
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_23BE6BD48(v3);
  return v4;
}

@end