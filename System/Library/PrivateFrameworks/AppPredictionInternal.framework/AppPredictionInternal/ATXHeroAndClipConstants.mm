@interface ATXHeroAndClipConstants
+ (id)sharedInstance;
- (ATXHeroAndClipConstants)init;
- (double)appClipsFeedbackHistogramHalfLifeInDays;
- (double)appClipsHighConfidenceScoreThreshold;
- (double)appClipsMediumConfidenceScoreThreshold;
- (double)appClipsOverallEngagementThreshold;
- (double)appClipsOverallMinRejects;
- (double)appClipsPerAppClipEngagementThreshold;
- (double)appClipsPerAppClipEngagementThresholdNoDecay;
- (double)appClipsPerAppClipMinRejects;
- (double)appClipsPerAppClipMinRejectsNoDecay;
- (double)heroAppEngagementThreshold;
- (double)heroAppMinRefreshInterval;
- (double)heroAppMinimumRejects;
- (double)heroAppPredictionExpirationInterval;
- (double)heroAppTileMaxErrorDistance;
- (double)heroAppWorstCaseLocationAccuracy;
- (id)appClipsModelVersion;
- (unint64_t)appClipSessionLogNegativeSamplesPerDay;
- (unint64_t)appClipSessionLogPositiveSamplesPerDay;
- (unint64_t)appClipShadowLogSamplesPerDay;
- (unint64_t)appShadowLogSamplesPerDay;
- (unint64_t)heroAppSessionLogNegativeSamplesPerDay;
- (unint64_t)heroAppSessionLogPositiveSamplesPerDay;
@end

@implementation ATXHeroAndClipConstants

- (ATXHeroAndClipConstants)init
{
  v8.receiver = self;
  v8.super_class = ATXHeroAndClipConstants;
  v2 = [(ATXHeroAndClipConstants *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    v4 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v3];
    v5 = [v4 abGroupContents];
    parameters = v2->_parameters;
    v2->_parameters = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_26 != -1)
  {
    +[ATXHeroAndClipConstants sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_32;

  return v3;
}

void __41__ATXHeroAndClipConstants_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_32;
  sharedInstance__pasExprOnceResult_32 = v1;

  objc_autoreleasePoolPop(v0);
}

- (double)appClipsOverallEngagementThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsOverallEngagementThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.1;
  }

  return v5;
}

- (double)appClipsOverallMinRejects
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsOverallMinRejects"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 9.9;
  }

  return v5;
}

- (double)appClipsPerAppClipEngagementThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsPerAppClipEngagementThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.3;
  }

  return v5;
}

- (double)appClipsPerAppClipMinRejects
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsPerAppClipMinRejects"];
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

- (double)appClipsMediumConfidenceScoreThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsMediumConfidenceScoreThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.1;
  }

  return v5;
}

- (double)appClipsHighConfidenceScoreThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsHighConfidenceScoreThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)appClipsFeedbackHistogramHalfLifeInDays
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsFeedbackHistogramHalfLifeInDays"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 14.0;
  }

  return v5;
}

- (id)appClipsModelVersion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsModelVersion"];
  v3 = NSClassFromString(&cfstr_Nsstring.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"1.0";
  }

  v8 = v7;

  return v7;
}

- (double)appClipsPerAppClipMinRejectsNoDecay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsPerAppClipMinRejectsNoDecay"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 4.99;
  }

  return v5;
}

- (double)appClipsPerAppClipEngagementThresholdNoDecay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipsPerAppClipEngagementThresholdNoDecay"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.011;
  }

  return v5;
}

- (double)heroAppEngagementThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppEngagementThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.2;
  }

  return v5;
}

- (double)heroAppMinimumRejects
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppMinimumRejects"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.6;
  }

  return v5;
}

- (double)heroAppWorstCaseLocationAccuracy
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppWorstCaseLocationAccuracy"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 45.0;
  }

  return v5;
}

- (double)heroAppTileMaxErrorDistance
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppTileMaxErrorDistance"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 25.0;
  }

  return v5;
}

- (double)heroAppMinRefreshInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppMinRefreshInterval"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5.0;
  }

  return v5;
}

- (double)heroAppPredictionExpirationInterval
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppPredictionExpirationInterval"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1500.0;
  }

  return v5;
}

- (unint64_t)heroAppSessionLogPositiveSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppSessionLogPositiveSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (unint64_t)heroAppSessionLogNegativeSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeroAppSessionLogNegativeSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (unint64_t)appClipSessionLogPositiveSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipSessionLogPositiveSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (unint64_t)appClipSessionLogNegativeSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipSessionLogNegativeSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (unint64_t)appShadowLogSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppShadowLogSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (unint64_t)appClipShadowLogSamplesPerDay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppClipShadowLogSamplesPerDay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

@end