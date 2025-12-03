@interface BLSHWatchdogAbortParameters
- (BLSHWatchdogAbortParameters)initWithDelegate:(id)delegate abortContext:(id)context isPotentialHang:(BOOL)hang sleepMonitorAggregateState:(id)state sleepImminentSinceScheduled:(BOOL)scheduled explanation:(id)explanation;
- (BLSHWatchdogDelegate)delegate;
@end

@implementation BLSHWatchdogAbortParameters

- (BLSHWatchdogAbortParameters)initWithDelegate:(id)delegate abortContext:(id)context isPotentialHang:(BOOL)hang sleepMonitorAggregateState:(id)state sleepImminentSinceScheduled:(BOOL)scheduled explanation:(id)explanation
{
  delegateCopy = delegate;
  contextCopy = context;
  stateCopy = state;
  explanationCopy = explanation;
  v23.receiver = self;
  v23.super_class = BLSHWatchdogAbortParameters;
  v18 = [(BLSHWatchdogAbortParameters *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v19->_abortContext, context);
    v19->_isPotentialHang = hang;
    objc_storeStrong(&v19->_sleepMonitorAggregateState, state);
    v19->_sleepImminentSinceScheduled = scheduled;
    v19->_abortTimestamp = mach_continuous_time();
    v20 = [explanationCopy copy];
    explanation = v19->_explanation;
    v19->_explanation = v20;
  }

  return v19;
}

- (BLSHWatchdogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end