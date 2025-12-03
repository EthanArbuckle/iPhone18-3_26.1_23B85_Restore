@interface ATXGlobalAppModeAffinityPrior
- (ATXGlobalAppModeAffinityPrior)initWithMode:(unint64_t)mode prior:(double)prior bundleId:(id)id;
@end

@implementation ATXGlobalAppModeAffinityPrior

- (ATXGlobalAppModeAffinityPrior)initWithMode:(unint64_t)mode prior:(double)prior bundleId:(id)id
{
  idCopy = id;
  v14.receiver = self;
  v14.super_class = ATXGlobalAppModeAffinityPrior;
  v9 = [(ATXGlobalAppModeAffinityPrior *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_mode = mode;
    v9->_prior = prior;
    v11 = [idCopy copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;
  }

  return v10;
}

@end