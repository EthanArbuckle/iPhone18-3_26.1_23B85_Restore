@interface ADRequestLifecycleObserver
+ (id)sharedObserver;
- (ADRequestLifecycleObserver)init;
- (void)_addListener:(id)a3;
- (void)_enumerateListenersUsingBlock:(id)a3;
- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)_removeListener:(id)a3;
- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)requestDidEndWithInfo:(id)a3 fromOrigin:(int64_t)a4 client:(id)a5;
- (void)requestWasCancelledWithInfo:(id)a3 forReason:(int64_t)a4 origin:(int64_t)a5 client:(id)a6 successorInfo:(id)a7;
- (void)requestWillBeginWithInfo:(id)a3 fromOrigin:(int64_t)a4 client:(id)a5;
@end

@implementation ADRequestLifecycleObserver

+ (id)sharedObserver
{
  if (qword_1005905F8 != -1)
  {
    dispatch_once(&qword_1005905F8, &stru_100517138);
  }

  v3 = qword_100590600;

  return v3;
}

- (void)_enumerateListenersUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_listenersLock);
    v5 = [(NSHashTable *)self->_listeners setRepresentation];
    os_unfair_lock_unlock(&self->_listenersLock);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100228A58;
    v6[3] = &unk_100517230;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

- (void)_removeListener:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_listenersLock);
    [(NSHashTable *)self->_listeners removeObject:v4];

    os_unfair_lock_unlock(&self->_listenersLock);
  }
}

- (void)_addListener:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_listenersLock);
  [(NSHashTable *)self->_listeners addObject:v4];

  os_unfair_lock_unlock(&self->_listenersLock);
}

- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADRequestLifecycleObserver _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, messageType = %@", &v18, 0x20u);
  }

  if ([v11 isEqualToString:@"requestlifecycle"])
  {
    v15 = [v10 objectForKey:@"event"];
    if ([v15 isEqualToString:@"requestWillBegin"])
    {
      [(ADRequestLifecycleObserver *)self requestWillBeginWithInfo:0 fromOrigin:7 client:0];
    }

    else if ([v15 isEqualToString:@"requestDidEnd"])
    {
      [(ADRequestLifecycleObserver *)self requestDidEndWithInfo:0 fromOrigin:7 client:0];
    }

    else if ([v15 isEqualToString:@"requestWasCancelled"])
    {
      [(ADRequestLifecycleObserver *)self requestWasCancelledWithInfo:0 forReason:0 origin:7 client:0 successorInfo:0];
    }

    if (!v13)
    {
      goto LABEL_16;
    }

    v17 = 0;
LABEL_15:
    v13[2](v13, 0, v17);
LABEL_16:

    goto LABEL_17;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[ADRequestLifecycleObserver _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v20 = 2112;
    v21 = v11;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Received message from unknown message type: %@", &v18, 0x16u);
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v13)
  {
LABEL_8:
    v17 = [AFError errorWithCode:1004];
    v15 = v17;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100228E94;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

- (void)requestDidEndWithInfo:(id)a3 fromOrigin:(int64_t)a4 client:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[ADRequestLifecycleObserver requestDidEndWithInfo:fromOrigin:client:]";
    v27 = 2048;
    v28 = a4;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100229098;
  v18 = &unk_100517160;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v22 = a4;
  v12 = v9;
  v21 = v12;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v15];
  if (a4 == 5)
  {
    v13 = [ADCompanionService sharedInstance:v15];
    v23 = @"event";
    v24 = @"requestDidEnd";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v13 sendStereoPartnerMessage:v14 messageType:@"requestlifecycle" completion:&stru_100517208];
  }
}

- (void)requestWasCancelledWithInfo:(id)a3 forReason:(int64_t)a4 origin:(int64_t)a5 client:(id)a6 successorInfo:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v34 = "[ADRequestLifecycleObserver requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]";
    v35 = 2048;
    v36 = a5;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100229320;
  v24 = &unk_1005171C8;
  v25 = self;
  v16 = v12;
  v26 = v16;
  v29 = a4;
  v30 = a5;
  v17 = v13;
  v27 = v17;
  v18 = v14;
  v28 = v18;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v21];
  if (a5 == 5)
  {
    v19 = [ADCompanionService sharedInstance:v21];
    v31 = @"event";
    v32 = @"requestWasCancelled";
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v19 sendStereoPartnerMessage:v20 messageType:@"requestlifecycle" completion:&stru_1005171E8];
  }
}

- (void)requestWillBeginWithInfo:(id)a3 fromOrigin:(int64_t)a4 client:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[ADRequestLifecycleObserver requestWillBeginWithInfo:fromOrigin:client:]";
    v27 = 2048;
    v28 = a4;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10022957C;
  v18 = &unk_100517160;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v22 = a4;
  v12 = v9;
  v21 = v12;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v15];
  if (a4 == 5)
  {
    v13 = [ADCompanionService sharedInstance:v15];
    v23 = @"event";
    v24 = @"requestWillBegin";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v13 sendStereoPartnerMessage:v14 messageType:@"requestlifecycle" completion:&stru_1005171A0];
  }
}

- (ADRequestLifecycleObserver)init
{
  v11.receiver = self;
  v11.super_class = ADRequestLifecycleObserver;
  v2 = [(ADRequestLifecycleObserver *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.assistant.request-lifecycle-observer", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_listenersLock._os_unfair_lock_opaque = 0;
    v7 = +[NSHashTable weakObjectsHashTable];
    listeners = v2->_listeners;
    v2->_listeners = v7;

    v9 = +[ADCompanionService sharedInstance];
    [v9 setMessageHandler:v2 forMessageType:@"requestlifecycle"];
  }

  return v2;
}

@end