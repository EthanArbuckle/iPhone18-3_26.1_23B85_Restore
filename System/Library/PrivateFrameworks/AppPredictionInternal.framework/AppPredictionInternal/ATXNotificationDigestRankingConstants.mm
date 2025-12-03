@interface ATXNotificationDigestRankingConstants
+ (id)sharedInstance;
- (ATXNotificationDigestRankingConstants)init;
- (double)dailyDecayFactor;
- (double)giveMarqueeToNonAppearingAppProbability;
- (double)logisticCenterXVal;
- (double)logisticGrowthRate;
- (double)minMarqueeAppearancesPerApp;
- (double)weightForBasicNotificationsSent;
- (double)weightForMarqueeAppearance;
- (double)weightForMarqueeEngagement;
- (double)weightForNonMarqueeAppearance;
- (double)weightForNonMarqueeEngagement;
- (double)weightForTimeSensitiveNotificationsSent;
- (unint64_t)numMarqueeSpots;
@end

@implementation ATXNotificationDigestRankingConstants

- (double)weightForMarqueeAppearance
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForMarqueeAppearance"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -0.2;
  }

  return v5;
}

- (double)weightForMarqueeEngagement
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForMarqueeEngagement"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (double)weightForNonMarqueeAppearance
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForNonMarqueeAppearance"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -0.15;
  }

  return v5;
}

- (double)weightForNonMarqueeEngagement
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForNonMarqueeEngagement"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (double)weightForBasicNotificationsSent
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForBasicNotificationsSent"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -0.002;
  }

  return v5;
}

- (double)weightForTimeSensitiveNotificationsSent
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"weightForTimeSensitiveNotificationsSent"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -0.005;
  }

  return v5;
}

- (double)logisticCenterXVal
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"logisticCenterXVal"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)logisticGrowthRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"logisticGrowthRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)minMarqueeAppearancesPerApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"minMarqueeAppearancesPerApp"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.9;
  }

  return v5;
}

- (double)giveMarqueeToNonAppearingAppProbability
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"giveMarqueeToNonAppearingAppProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (unint64_t)numMarqueeSpots
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"numMarqueeSpots"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  return unsignedIntegerValue;
}

- (double)dailyDecayFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"dailyDecayFactor"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.98;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_3 != -1)
  {
    +[ATXNotificationDigestRankingConstants sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_4;

  return v3;
}

void __55__ATXNotificationDigestRankingConstants_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_4;
  sharedInstance__pasExprOnceResult_4 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXNotificationDigestRankingConstants)init
{
  v8.receiver = self;
  v8.super_class = ATXNotificationDigestRankingConstants;
  v2 = [(ATXNotificationDigestRankingConstants *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    v4 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v3];
    abGroupContents = [v4 abGroupContents];
    parameters = v2->_parameters;
    v2->_parameters = abGroupContents;
  }

  return v2;
}

@end