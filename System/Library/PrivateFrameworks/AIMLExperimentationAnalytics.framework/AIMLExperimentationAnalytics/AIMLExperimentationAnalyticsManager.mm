@interface AIMLExperimentationAnalyticsManager
- (AIMLExperimentationAnalyticsManager)init;
@end

@implementation AIMLExperimentationAnalyticsManager

- (AIMLExperimentationAnalyticsManager)init
{
  v6.receiver = self;
  v6.super_class = AIMLExperimentationAnalyticsManager;
  v2 = [(AIMLExperimentationAnalyticsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    underlyingObject = v2->_underlyingObject;
    v2->_underlyingObject = v3;
  }

  return v2;
}

@end