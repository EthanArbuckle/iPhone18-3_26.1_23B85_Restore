@interface ADDeviceSyncCoordinator
- (ADDeviceSyncCoordinator)init;
- (id)_sessionWithDeviceIdentifier:(id)a3;
- (void)_getGenerationsForDataTypes:(id)a3 andPushToDeviceWithIdentifier:(id)a4;
- (void)deviceSyncDataProviderDidUpdate:(id)a3;
- (void)deviceSyncMessageService:(id)a3 didFoundDeviceWithIdentifier:(id)a4;
- (void)deviceSyncMessageService:(id)a3 didLostDeviceWithIdentifier:(id)a4;
- (void)deviceSyncMessageService:(id)a3 didReceiveMessage:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
@end

@implementation ADDeviceSyncCoordinator

- (void)_getGenerationsForDataTypes:(id)a3 andPushToDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v19 = a4;
  queue = self->_queue;
  v7 = dispatch_group_create();
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = [(NSDictionary *)self->_dataProvidersByType allKeys];
  }

  v10 = v9;
  v21 = v6;
  v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:{16, v19}];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [(NSDictionary *)self->_dataProvidersByType objectForKey:v15];
        if (v16)
        {
          dispatch_group_enter(v7);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001484A8;
          v27[3] = &unk_100513438;
          v28 = queue;
          v29 = v8;
          v30 = v15;
          v31 = v7;
          [v16 getGenerationWithCompletion:v27];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100148558;
  block[3] = &unk_10051DB68;
  v24 = v20;
  v25 = self;
  v26 = v8;
  v17 = v8;
  v18 = v20;
  dispatch_group_notify(v7, queue, block);
}

- (id)_sessionWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sessionsByDeviceIdentifier objectForKey:v4];
  if (!v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[ADDeviceSyncCoordinator _sessionWithDeviceIdentifier:]";
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Creating session for device with identifier %@...", buf, 0x16u);
    }

    v7 = [[NSMutableSet alloc] initWithCapacity:{-[NSDictionary count](self->_messagingServicesByChannel, "count")}];
    messagingServicesByChannel = self->_messagingServicesByChannel;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10014896C;
    v19[3] = &unk_100512FF0;
    v9 = v7;
    v20 = v9;
    v10 = v4;
    v21 = v10;
    [(NSDictionary *)messagingServicesByChannel enumerateKeysAndObjectsUsingBlock:v19];
    v11 = [ADDeviceSyncSession alloc];
    v12 = [[NSString alloc] initWithFormat:@"com.apple.assistant.device-sync.session.%@", v10];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_DEFAULT, 0);

    v16 = dispatch_queue_create(v13, v15);
    v5 = [(ADDeviceSyncSession *)v11 initWithQueue:v16 deviceIdentifier:v10 dataConsumersByType:self->_dataConsumersByType dataProvidersByType:self->_dataProvidersByType messageSenders:v9];

    [(NSMutableDictionary *)self->_sessionsByDeviceIdentifier setObject:v5 forKey:v10];
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[ADDeviceSyncCoordinator _sessionWithDeviceIdentifier:]";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Created session %@ for device with identifier %@.", buf, 0x20u);
    }
  }

  return v5;
}

- (void)deviceSyncDataProviderDidUpdate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[ADDeviceSyncCoordinator deviceSyncDataProviderDidUpdate:]";
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s deviceSyncDataProvider = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100148B24;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)deviceSyncMessageService:(id)a3 didReceiveMessage:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v24 = "[ADDeviceSyncCoordinator deviceSyncMessageService:didReceiveMessage:fromDeviceWithIdentifier:completion:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v11;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s deviceSyncMessageService = %@, deviceIdentifier = %@, incomingMessage = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100148D68;
  v19[3] = &unk_10051E0D8;
  v19[4] = self;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  v16 = v13;
  v17 = v11;
  v18 = v12;
  dispatch_async(queue, v19);
}

- (void)deviceSyncMessageService:(id)a3 didLostDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[ADDeviceSyncCoordinator deviceSyncMessageService:didLostDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s deviceSyncMessageService = %@, deviceIdentifier = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100148F20;
  v11[3] = &unk_10051E010;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (void)deviceSyncMessageService:(id)a3 didFoundDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[ADDeviceSyncCoordinator deviceSyncMessageService:didFoundDeviceWithIdentifier:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s deviceSyncMessageService = %@, deviceIdentifier = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100149140;
  v11[3] = &unk_10051E010;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (ADDeviceSyncCoordinator)init
{
  v46.receiver = self;
  v46.super_class = ADDeviceSyncCoordinator;
  v2 = [(ADDeviceSyncCoordinator *)&v46 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.assistant.device-sync.coordinator", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    if (AFIsHorseman())
    {
      v9 = objc_alloc_init(ADDeviceSyncTimerConsumer);
      [v7 addObject:v9];

      v10 = [[ADDeviceSyncTimerProvider alloc] initWithDelegate:v2];
      [v8 addObject:v10];
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          v18 = [v17 type];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    dataConsumersByType = v2->_dataConsumersByType;
    v2->_dataConsumersByType = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v38 + 1) + 8 * j);
          v28 = [v27 type];
          [v21 setObject:v27 forKey:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v24);
    }

    v29 = [v21 copy];
    dataProvidersByType = v2->_dataProvidersByType;
    v2->_dataProvidersByType = v29;

    v31 = objc_alloc_init(NSMutableDictionary);
    sessionsByDeviceIdentifier = v2->_sessionsByDeviceIdentifier;
    v2->_sessionsByDeviceIdentifier = v31;

    v33 = [[ADDeviceSyncMessagingServiceRapport alloc] initWithMode:1 delegate:v2];
    v34 = [(ADDeviceSyncMessagingServiceRapport *)v33 channel];
    v47 = v34;
    v48 = v33;
    v35 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    messagingServicesByChannel = v2->_messagingServicesByChannel;
    v2->_messagingServicesByChannel = v35;
  }

  return v2;
}

@end