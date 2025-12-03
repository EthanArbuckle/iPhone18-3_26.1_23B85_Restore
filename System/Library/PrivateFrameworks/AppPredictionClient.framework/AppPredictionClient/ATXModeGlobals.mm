@interface ATXModeGlobals
+ (id)sharedInstance;
- (ATXModeGlobals)initWithAssetClass:(Class)class;
- (BOOL)isAutomationTriggerSuggestionsForFocusEnabled;
- (BOOL)isSetupSuggestionsForFocusEnabled;
- (int)currentLocationUpdateInterval;
- (int)frequentLOIMinimumVisits;
- (int)homeLOISearchRadius;
- (int)locationOfInterestSearchRadius;
- (int)locationOfInterestUpdateInterval;
- (int)predictedExitTimesUpdateInterval;
- (int)predictedLocationsOfInterestUpdateInterval;
- (int)previousLOIExpirationTime;
- (int)workLOISearchRadius;
@end

@implementation ATXModeGlobals

- (int)previousLOIExpirationTime
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PreviousLOIExpirationTime"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 7200;
  }

  return intValue;
}

- (ATXModeGlobals)initWithAssetClass:(Class)class
{
  v12.receiver = self;
  v12.super_class = ATXModeGlobals;
  v4 = [(ATXModeGlobals *)&v12 init];
  if (v4)
  {
    v5 = [ATXAssetsABHelper alloc];
    if (class)
    {
      v6 = NSStringFromClass(class);
    }

    else
    {
      v6 = @"_ATXGlobals";
    }

    v7 = +[ATXABHelper abGroupOverride];
    v8 = [(ATXAssetsABHelper *)v5 initWithAssetsForResource:v6 ofType:@"plplist" specifiedABGroup:v7];

    if (class)
    {
    }

    abGroupContents = [(ATXAssetsABHelper *)v8 abGroupContents];
    parameters = v4->_parameters;
    v4->_parameters = abGroupContents;
  }

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_1 != -1)
  {
    +[ATXModeGlobals sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_2;

  return v3;
}

void __32__ATXModeGlobals_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_2;
  sharedInstance__pasExprOnceResult_2 = v1;

  objc_autoreleasePoolPop(v0);
}

- (int)locationOfInterestSearchRadius
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LocationOfInterestSearchRadius"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 400;
  }

  return intValue;
}

- (int)homeLOISearchRadius
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeLOISearchRadius"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 400;
  }

  return intValue;
}

- (int)workLOISearchRadius
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WorkLOISearchRadius"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 800;
  }

  return intValue;
}

- (int)frequentLOIMinimumVisits
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"FrequentLOIMinimumVisits"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 25;
  }

  return intValue;
}

- (int)currentLocationUpdateInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"CurrentLocationUpdateInterval"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 900;
  }

  return intValue;
}

- (int)locationOfInterestUpdateInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LocationOfInterestUpdateInterval"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 30;
  }

  return intValue;
}

- (int)predictedLocationsOfInterestUpdateInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PredictedLocationsOfInterestUpdateInterval"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 300;
  }

  return intValue;
}

- (int)predictedExitTimesUpdateInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PredictedExitTimesUpdateInterval"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 300;
  }

  return intValue;
}

- (BOOL)isAutomationTriggerSuggestionsForFocusEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IsAutomationTriggerSuggestionsForFocusEnabled"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isSetupSuggestionsForFocusEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IsSetupSuggestionsForFocusEnabled"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end