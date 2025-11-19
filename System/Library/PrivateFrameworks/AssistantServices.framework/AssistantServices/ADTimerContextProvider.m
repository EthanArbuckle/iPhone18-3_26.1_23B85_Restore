@interface ADTimerContextProvider
- (ADTimerContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4;
- (void)clockTimerObserver:(id)a3 snapshotDidUpdateFrom:(id)a4 to:(id)a5;
- (void)clockTimerObserver:(id)a3 timerDidDismiss:(id)a4;
- (void)clockTimerObserver:(id)a3 timerDidFire:(id)a4;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
@end

@implementation ADTimerContextProvider

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v13 = v12;
    if (!a5 || a5 == 50)
    {
      v26 = [v12 timersByID];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000E2EC0;
      v28[3] = &unk_10051A338;
      v29 = [v26 mutableCopy];
      v14 = v29;
      [v26 enumerateKeysAndObjectsUsingBlock:v28];
      v15 = [AFClockTimerSnapshot alloc];
      v16 = [v13 generation];
      v17 = [v13 date];
      [v13 notifiedFiringTimerIDs];
      v18 = v27 = v13;
      v19 = [v15 initWithGeneration:v16 date:v17 timersByID:v14 notifiedFiringTimerIDs:v18];

      v20 = [AFDeviceContextMetadata alloc];
      v21 = AFDeviceContextKeyTimer;
      v22 = [v10 deliveryDate];
      v23 = [v10 expirationDate];
      v30 = *(&AFClockTimerSnapshotKey + 2);
      v24 = [NSArray arrayWithObjects:&v30 count:1];
      v25 = [v20 initWithType:v21 deliveryDate:v22 expirationDate:v23 redactedKeyPaths:v24 historyConfiguration:0];

      v13 = v27;
      v11[2](v11, v19, v25);
    }

    else if (a5 == 10)
    {
      v11[2](v11, v12, v10);
    }
  }

  else
  {
    v11[2](v11, 0, 0);
  }
}

- (void)clockTimerObserver:(id)a3 snapshotDidUpdateFrom:(id)a4 to:(id)a5
{
  v6 = a5;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[ADTimerContextProvider clockTimerObserver:snapshotDidUpdateFrom:to:]";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal updated snapshot: %@", &v14, 0x16u);
  }

  v8 = +[NSDate date];
  v9 = [AFDeviceContextMetadata alloc];
  v10 = AFDeviceContextKeyTimer;
  v11 = [v8 dateByAddingTimeInterval:900.0];
  v12 = [v9 initWithType:v10 deliveryDate:v8 expirationDate:v11 redactedKeyPaths:0 historyConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:v6 withMetadata:v12 pushToRemote:1];
}

- (void)clockTimerObserver:(id)a3 timerDidDismiss:(id)a4
{
  v4 = a4;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADTimerContextProvider clockTimerObserver:timerDidDismiss:]";
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }
}

- (void)clockTimerObserver:(id)a3 timerDidFire:(id)a4
{
  v4 = a4;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADTimerContextProvider clockTimerObserver:timerDidFire:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v7, 0x16u);
  }

  v6 = +[ADDeviceProximityManager sharedManager];
  [v6 performProximityScan];
}

- (ADTimerContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ADTimerContextProvider;
  v8 = [(ADTimerContextProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_donationService, v6);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v9->_instanceContext;
    v9->_instanceContext = v10;

    v12 = [[SOClockTimerObserver alloc] initWithInstanceContext:v9->_instanceContext];
    observer = v9->_observer;
    v9->_observer = v12;

    [(SOClockTimerObserver *)v9->_observer addListener:v9];
    WeakRetained = objc_loadWeakRetained(&v9->_donationService);
    [WeakRetained registerContextTransformer:v9 forType:AFDeviceContextKeyTimer];
  }

  return v9;
}

@end