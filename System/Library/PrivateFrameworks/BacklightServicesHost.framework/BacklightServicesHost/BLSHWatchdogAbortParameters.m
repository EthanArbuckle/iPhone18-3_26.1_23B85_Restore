@interface BLSHWatchdogAbortParameters
- (BLSHWatchdogAbortParameters)initWithDelegate:(id)a3 abortContext:(id)a4 isPotentialHang:(BOOL)a5 sleepMonitorAggregateState:(id)a6 sleepImminentSinceScheduled:(BOOL)a7 explanation:(id)a8;
- (BLSHWatchdogDelegate)delegate;
@end

@implementation BLSHWatchdogAbortParameters

- (BLSHWatchdogAbortParameters)initWithDelegate:(id)a3 abortContext:(id)a4 isPotentialHang:(BOOL)a5 sleepMonitorAggregateState:(id)a6 sleepImminentSinceScheduled:(BOOL)a7 explanation:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BLSHWatchdogAbortParameters;
  v18 = [(BLSHWatchdogAbortParameters *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v14);
    objc_storeStrong(&v19->_abortContext, a4);
    v19->_isPotentialHang = a5;
    objc_storeStrong(&v19->_sleepMonitorAggregateState, a6);
    v19->_sleepImminentSinceScheduled = a7;
    v19->_abortTimestamp = mach_continuous_time();
    v20 = [v17 copy];
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