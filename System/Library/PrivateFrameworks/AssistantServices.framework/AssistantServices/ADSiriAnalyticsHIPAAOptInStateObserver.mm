@interface ADSiriAnalyticsHIPAAOptInStateObserver
- (ADSiriAnalyticsHIPAAOptInStateObserver)initWithDelegate:(id)delegate queue:(id)queue;
- (void)pollConditionStateWithCompletion:(id)completion;
@end

@implementation ADSiriAnalyticsHIPAAOptInStateObserver

- (void)pollConditionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = mach_absolute_time();
  v5 = +[AFPreferences sharedPreferences];
  isDictationHIPAACompliant = [v5 isDictationHIPAACompliant];

  if (isDictationHIPAACompliant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sensitiveCondition:1 startedAt:v4];
  }

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

- (ADSiriAnalyticsHIPAAOptInStateObserver)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = ADSiriAnalyticsHIPAAOptInStateObserver;
  v8 = [(ADSiriAnalyticsHIPAAOptInStateObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

@end