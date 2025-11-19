@interface ADSiriAnalyticsPhoneCallStateObserver
- (ADSiriAnalyticsPhoneCallStateObserver)initWithDelegate:(id)a3 queue:(id)a4;
- (void)callObserver:(id)a3 callStateDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)pollConditionStateWithCompletion:(id)a3;
@end

@implementation ADSiriAnalyticsPhoneCallStateObserver

- (void)pollConditionStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029B694;
  block[3] = &unk_10051BFA8;
  v9 = v4;
  v10 = v5;
  block[4] = self;
  v7 = v4;
  dispatch_async(queue, block);
}

- (void)callObserver:(id)a3 callStateDidChangeFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = mach_absolute_time();
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[ADSiriAnalyticsPhoneCallStateObserver callObserver:callStateDidChangeFrom:to:]";
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s fromState: %lu to: %lu", buf, 0x20u);
  }

  v10 = (a5 & 9) != 0 || (a4 & 9) == 0;
  v11 = !v10;
  v12 = 2;
  if (!v11)
  {
    v12 = 0;
  }

  if ((a4 & 9) == 0 && (a5 & 9) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 2)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[ADSiriAnalyticsPhoneCallStateObserver callObserver:callStateDidChangeFrom:to:]";
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Triggering endedAt: %llu", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sensitiveCondition:2 endedAt:v8];
    goto LABEL_19;
  }

  if (v13 == 1)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[ADSiriAnalyticsPhoneCallStateObserver callObserver:callStateDidChangeFrom:to:]";
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Triggering startedAt: %llu", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sensitiveCondition:2 startedAt:v8];
LABEL_19:
  }

  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10029B970;
  v18[3] = &unk_10051D770;
  v18[4] = self;
  v18[5] = a5;
  dispatch_async(queue, v18);
}

- (ADSiriAnalyticsPhoneCallStateObserver)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ADSiriAnalyticsPhoneCallStateObserver;
  v8 = [(ADSiriAnalyticsPhoneCallStateObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
    v10 = objc_alloc_init(ADCallObserver);
    callObserver = v9->_callObserver;
    v9->_callObserver = v10;

    [(ADCallObserver *)v9->_callObserver startObservingCallStateWithDelegate:v9];
  }

  return v9;
}

@end