@interface ADMultiUserStateContextProvider
- (ADMultiUserStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context;
- (void)handleMultiUserDidReceiveScoresNotification:(id)notification;
@end

@implementation ADMultiUserStateContextProvider

- (void)handleMultiUserDidReceiveScoresNotification:(id)notification
{
  notificationCopy = notification;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v20 = v5;
    object = [notificationCopy object];
    v22 = 136315394;
    v23 = "[ADMultiUserStateContextProvider handleMultiUserDidReceiveScoresNotification:]";
    v24 = 2112;
    v25 = object;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v22, 0x16u);
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object3 = [notificationCopy object];
    if (object3)
    {
      v9 = object3;
      v10 = [object3 objectForKey:@"vtSatScore"];
      if (v10 && (v11 = [[AFMultiUserStateSnapshot alloc] initWithVtSatScore:v10]) != 0)
      {
        v12 = v11;
        v13 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v22 = 136315394;
          v23 = "[ADMultiUserStateContextProvider handleMultiUserDidReceiveScoresNotification:]";
          v24 = 2112;
          v25 = v12;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v22, 0x16u);
        }

        v14 = +[NSDate date];
        v15 = [v14 dateByAddingTimeInterval:5.0];
        v16 = [AFDeviceContextMetadata alloc];
        v17 = [v16 initWithType:AFDeviceContextKeyMultiUserState deliveryDate:v14 expirationDate:v15 redactedKeyPaths:0 historyConfiguration:0];
        WeakRetained = objc_loadWeakRetained(&self->_donationService);
        [WeakRetained donateContext:v12 withMetadata:v17 pushToRemote:1];
      }

      else
      {
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315138;
          v23 = "[ADMultiUserStateContextProvider handleMultiUserDidReceiveScoresNotification:]";
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s #hal Invalid score", &v22, 0xCu);
        }
      }
    }
  }
}

- (ADMultiUserStateContextProvider)initWithDonationService:(id)service instanceContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = ADMultiUserStateContextProvider;
  v8 = [(ADMultiUserStateContextProvider *)&v15 init];
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

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"handleMultiUserDidReceiveScoresNotification:" name:@"ADMultiUserDidReceiveScoresNotification" object:0];

    WeakRetained = objc_loadWeakRetained(&v9->_donationService);
    [WeakRetained registerContextTransformer:v9 forType:AFDeviceContextKeyMultiUserState];
  }

  return v9;
}

@end