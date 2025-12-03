@interface ADTimerContextProvider
- (ADTimerContextProvider)initWithDonationService:(id)service instanceContext:(id)context;
- (void)clockTimerObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to;
- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss;
- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
@end

@implementation ADTimerContextProvider

- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion
{
  snapshotCopy = snapshot;
  metadataCopy = metadata;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = snapshotCopy;
    v13 = v12;
    if (!policy || policy == 50)
    {
      timersByID = [v12 timersByID];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000E2EC0;
      v28[3] = &unk_10051A338;
      v29 = [timersByID mutableCopy];
      v14 = v29;
      [timersByID enumerateKeysAndObjectsUsingBlock:v28];
      v15 = [AFClockTimerSnapshot alloc];
      generation = [v13 generation];
      date = [v13 date];
      [v13 notifiedFiringTimerIDs];
      v18 = v27 = v13;
      v19 = [v15 initWithGeneration:generation date:date timersByID:v14 notifiedFiringTimerIDs:v18];

      v20 = [AFDeviceContextMetadata alloc];
      v21 = AFDeviceContextKeyTimer;
      deliveryDate = [metadataCopy deliveryDate];
      expirationDate = [metadataCopy expirationDate];
      v30 = *(&AFClockTimerSnapshotKey + 2);
      v24 = [NSArray arrayWithObjects:&v30 count:1];
      v25 = [v20 initWithType:v21 deliveryDate:deliveryDate expirationDate:expirationDate redactedKeyPaths:v24 historyConfiguration:0];

      v13 = v27;
      completionCopy[2](completionCopy, v19, v25);
    }

    else if (policy == 10)
    {
      completionCopy[2](completionCopy, v12, metadataCopy);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)clockTimerObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to
{
  toCopy = to;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[ADTimerContextProvider clockTimerObserver:snapshotDidUpdateFrom:to:]";
    v16 = 2112;
    v17 = toCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal updated snapshot: %@", &v14, 0x16u);
  }

  v8 = +[NSDate date];
  v9 = [AFDeviceContextMetadata alloc];
  v10 = AFDeviceContextKeyTimer;
  v11 = [v8 dateByAddingTimeInterval:900.0];
  v12 = [v9 initWithType:v10 deliveryDate:v8 expirationDate:v11 redactedKeyPaths:0 historyConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:toCopy withMetadata:v12 pushToRemote:1];
}

- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADTimerContextProvider clockTimerObserver:timerDidDismiss:]";
    v8 = 2112;
    v9 = dismissCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }
}

- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire
{
  fireCopy = fire;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADTimerContextProvider clockTimerObserver:timerDidFire:]";
    v9 = 2112;
    v10 = fireCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v7, 0x16u);
  }

  v6 = +[ADDeviceProximityManager sharedManager];
  [v6 performProximityScan];
}

- (ADTimerContextProvider)initWithDonationService:(id)service instanceContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = ADTimerContextProvider;
  v8 = [(ADTimerContextProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_donationService, serviceCopy);
    if (contextCopy)
    {
      v10 = contextCopy;
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