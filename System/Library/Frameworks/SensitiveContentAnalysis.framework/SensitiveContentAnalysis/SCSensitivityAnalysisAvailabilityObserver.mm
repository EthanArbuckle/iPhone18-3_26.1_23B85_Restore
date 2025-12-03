@interface SCSensitivityAnalysisAvailabilityObserver
- (SCSensitivityAnalysisAvailabilityObserver)initWithSubscription:(id)subscription;
@end

@implementation SCSensitivityAnalysisAvailabilityObserver

- (SCSensitivityAnalysisAvailabilityObserver)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v9.receiver = self;
  v9.super_class = SCSensitivityAnalysisAvailabilityObserver;
  v6 = [(SCSensitivityAnalysisAvailabilityObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, subscription);
  }

  return v7;
}

@end