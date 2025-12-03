@interface ADAlarmContextProvider
- (ADAlarmContextProvider)initWithDonationService:(id)service instanceContext:(id)context;
- (void)clockAlarmObserver:(id)observer alarmDidDismiss:(id)dismiss;
- (void)clockAlarmObserver:(id)observer alarmDidFire:(id)fire;
- (void)clockAlarmObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
@end

@implementation ADAlarmContextProvider

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
      alarmsByID = [v12 alarmsByID];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1002121E4;
      v28[3] = &unk_100516B50;
      v29 = [alarmsByID mutableCopy];
      v14 = v29;
      [alarmsByID enumerateKeysAndObjectsUsingBlock:v28];
      v15 = [AFClockAlarmSnapshot alloc];
      generation = [v13 generation];
      date = [v13 date];
      [v13 notifiedFiringAlarmIDs];
      v18 = v27 = v13;
      v19 = [v15 initWithGeneration:generation date:date alarmsByID:v14 notifiedFiringAlarmIDs:v18];

      v20 = [AFDeviceContextMetadata alloc];
      v21 = AFDeviceContextKeyAlarm;
      deliveryDate = [metadataCopy deliveryDate];
      expirationDate = [metadataCopy expirationDate];
      v30 = *(&AFClockAlarmSnapshotKey + 2);
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

- (void)clockAlarmObserver:(id)observer snapshotDidUpdateFrom:(id)from to:(id)to
{
  toCopy = to;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[ADAlarmContextProvider clockAlarmObserver:snapshotDidUpdateFrom:to:]";
    v15 = 2112;
    v16 = toCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal updated snapshot: %@", &v13, 0x16u);
  }

  v8 = +[NSDate date];
  v9 = [AFDeviceContextMetadata alloc];
  v10 = AFDeviceContextKeyAlarm;
  v11 = [v8 dateByAddingTimeInterval:900.0];
  v12 = [v9 initWithType:v10 deliveryDate:v8 expirationDate:v11 redactedKeyPaths:0 historyConfiguration:0];

  [(AFContextDonation *)self->_donationService donateContext:toCopy withMetadata:v12 pushToRemote:1];
}

- (void)clockAlarmObserver:(id)observer alarmDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADAlarmContextProvider clockAlarmObserver:alarmDidDismiss:]";
    v8 = 2112;
    v9 = dismissCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }
}

- (void)clockAlarmObserver:(id)observer alarmDidFire:(id)fire
{
  fireCopy = fire;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADAlarmContextProvider clockAlarmObserver:alarmDidFire:]";
    v9 = 2112;
    v10 = fireCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v7, 0x16u);
  }

  v6 = +[ADDeviceProximityManager sharedManager];
  [v6 performProximityScan];
}

- (ADAlarmContextProvider)initWithDonationService:(id)service instanceContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = ADAlarmContextProvider;
  v9 = [(ADAlarmContextProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_donationService, service);
    if (contextCopy)
    {
      v11 = contextCopy;
    }

    else
    {
      v11 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v10->_instanceContext;
    v10->_instanceContext = v11;

    v13 = [[SOClockAlarmObserver alloc] initWithInstanceContext:v10->_instanceContext];
    observer = v10->_observer;
    v10->_observer = v13;

    [(SOClockAlarmObserver *)v10->_observer addListener:v10];
    [(AFContextDonation *)v10->_donationService registerContextTransformer:v10 forType:AFDeviceContextKeyAlarm];
  }

  return v10;
}

@end