@interface ADSiriAnalyticsHIPAAOptInStateObserver
- (ADSiriAnalyticsHIPAAOptInStateObserver)initWithDelegate:(id)a3 queue:(id)a4;
- (void)pollConditionStateWithCompletion:(id)a3;
@end

@implementation ADSiriAnalyticsHIPAAOptInStateObserver

- (void)pollConditionStateWithCompletion:(id)a3
{
  v9 = a3;
  v4 = mach_absolute_time();
  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 isDictationHIPAACompliant];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sensitiveCondition:1 startedAt:v4];
  }

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (ADSiriAnalyticsHIPAAOptInStateObserver)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ADSiriAnalyticsHIPAAOptInStateObserver;
  v8 = [(ADSiriAnalyticsHIPAAOptInStateObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
  }

  return v9;
}

@end