@interface SCSensitivityAnalysisAvailabilityObserver
- (SCSensitivityAnalysisAvailabilityObserver)initWithSubscription:(id)a3;
@end

@implementation SCSensitivityAnalysisAvailabilityObserver

- (SCSensitivityAnalysisAvailabilityObserver)initWithSubscription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCSensitivityAnalysisAvailabilityObserver;
  v6 = [(SCSensitivityAnalysisAvailabilityObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, a3);
  }

  return v7;
}

@end