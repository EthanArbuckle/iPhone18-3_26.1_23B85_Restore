@interface NTKFoghornPreferences
+ (BOOL)compassDemoMode;
+ (BOOL)depthDemoMode;
+ (BOOL)elevationDemoMode;
+ (BOOL)harmoniaDemoMode;
+ (BOOL)statusIndicatorMove;
+ (BOOL)timeViewUseStretchAnimation;
+ (double)compassDemoRate;
+ (double)compassDemoValue;
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

+ (BOOL)compassDemoMode
{
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return v3[0];
}

+ (double)compassDemoValue
{
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *(v3 + 1);
}

+ (double)compassDemoRate
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_23BEC5114(&v3);
  return *&v4;
}

+ (BOOL)depthDemoMode
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_23BEC5114(&v3);
  return BYTE8(v4);
}

+ (double)depthDemoValue
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *&v4;
}

+ (double)depthDemoRate
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *(&v4 + 1);
}

+ (BOOL)elevationDemoMode
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return v4;
}

+ (double)elevationDemoValue
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *(&v4 + 1);
}

+ (double)elevationDemoRate
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *&v4;
}

+ (double)elevationDemoAccuracy
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *(&v4 + 1);
}

+ (double)elevationDemoPrecision
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *&v4;
}

+ (BOOL)statusIndicatorMove
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return BYTE8(v4);
}

+ (BOOL)timeViewUseStretchAnimation
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return BYTE9(v4);
}

+ (unint64_t)timeViewAnimationSnapStyle
{
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return v4;
}

+ (BOOL)harmoniaDemoMode
{
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return BYTE8(v4);
}

+ (int64_t)harmoniaDemoOvernightScenario
{
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return v4;
}

+ (int64_t)harmoniaDemoTrainingScenario
{
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_23BEC5114(v3);
  return *(&v4 + 1);
}

@end