@interface ADVoiceTriggerInCallDiscoverabilitySignalManager
- (ADVoiceTriggerInCallDiscoverabilitySignalManager)init;
@end

@implementation ADVoiceTriggerInCallDiscoverabilitySignalManager

- (ADVoiceTriggerInCallDiscoverabilitySignalManager)init
{
  v6.receiver = self;
  v6.super_class = ADVoiceTriggerInCallDiscoverabilitySignalManager;
  v2 = [(ADVoiceTriggerInCallDiscoverabilitySignalManager *)&v6 init];
  if (v2)
  {
    [AFTipKitDonator donateCallHangUpAvailabilityChanged:AFSupportsCallHangUp()];
    v3 = +[ADVoiceTriggerInCallAvailabilityObserver sharedObserver];
    observer = v2->_observer;
    v2->_observer = v3;

    [(ADVoiceTriggerInCallAvailabilityObserver *)v2->_observer addDelegate:v2];
  }

  return v2;
}

@end