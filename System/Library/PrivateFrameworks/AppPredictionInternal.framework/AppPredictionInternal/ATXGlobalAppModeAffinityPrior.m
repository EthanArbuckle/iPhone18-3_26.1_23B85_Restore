@interface ATXGlobalAppModeAffinityPrior
- (ATXGlobalAppModeAffinityPrior)initWithMode:(unint64_t)a3 prior:(double)a4 bundleId:(id)a5;
@end

@implementation ATXGlobalAppModeAffinityPrior

- (ATXGlobalAppModeAffinityPrior)initWithMode:(unint64_t)a3 prior:(double)a4 bundleId:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = ATXGlobalAppModeAffinityPrior;
  v9 = [(ATXGlobalAppModeAffinityPrior *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_mode = a3;
    v9->_prior = a4;
    v11 = [v8 copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;
  }

  return v10;
}

@end