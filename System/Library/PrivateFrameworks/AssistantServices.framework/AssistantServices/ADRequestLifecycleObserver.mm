@interface ADRequestLifecycleObserver
+ (id)sharedObserver;
- (ADRequestLifecycleObserver)init;
- (void)_addListener:(id)listener;
- (void)_enumerateListenersUsingBlock:(id)block;
- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)_removeListener:(id)listener;
- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)requestDidEndWithInfo:(id)info fromOrigin:(int64_t)origin client:(id)client;
- (void)requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo;
- (void)requestWillBeginWithInfo:(id)info fromOrigin:(int64_t)origin client:(id)client;
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

- (void)_enumerateListenersUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock(&self->_listenersLock);
    setRepresentation = [(NSHashTable *)self->_listeners setRepresentation];
    os_unfair_lock_unlock(&self->_listenersLock);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100228A58;
    v6[3] = &unk_100517230;
    v7 = blockCopy;
    [setRepresentation enumerateObjectsUsingBlock:v6];
  }
}

- (void)_removeListener:(id)listener
{
  if (listener)
  {
    listenerCopy = listener;
    os_unfair_lock_lock(&self->_listenersLock);
    [(NSHashTable *)self->_listeners removeObject:listenerCopy];

    os_unfair_lock_unlock(&self->_listenersLock);
  }
}

- (void)_addListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_listenersLock);
  [(NSHashTable *)self->_listeners addObject:listenerCopy];

  os_unfair_lock_unlock(&self->_listenersLock);
}

- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADRequestLifecycleObserver _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 2112;
    v23 = typeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, messageType = %@", &v18, 0x20u);
  }

  if ([typeCopy isEqualToString:@"requestlifecycle"])
  {
    v15 = [messageCopy objectForKey:@"event"];
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

    if (!completionCopy)
    {
      goto LABEL_16;
    }

    v17 = 0;
LABEL_15:
    completionCopy[2](completionCopy, 0, v17);
LABEL_16:

    goto LABEL_17;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[ADRequestLifecycleObserver _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v20 = 2112;
    v21 = typeCopy;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Received message from unknown message type: %@", &v18, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (completionCopy)
  {
LABEL_8:
    v17 = [AFError errorWithCode:1004];
    v15 = v17;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100228E94;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = messageCopy;
  v21 = typeCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = typeCopy;
  v18 = messageCopy;
  dispatch_async(queue, block);
}

- (void)requestDidEndWithInfo:(id)info fromOrigin:(int64_t)origin client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[ADRequestLifecycleObserver requestDidEndWithInfo:fromOrigin:client:]";
    v27 = 2048;
    originCopy = origin;
    v29 = 2112;
    v30 = clientCopy;
    v31 = 2112;
    v32 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100229098;
  v18 = &unk_100517160;
  selfCopy = self;
  v11 = infoCopy;
  v20 = v11;
  originCopy2 = origin;
  v12 = clientCopy;
  v21 = v12;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v15];
  if (origin == 5)
  {
    v13 = [ADCompanionService sharedInstance:v15];
    v23 = @"event";
    v24 = @"requestDidEnd";
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v13 sendStereoPartnerMessage:v14 messageType:@"requestlifecycle" completion:&stru_100517208];
  }
}

- (void)requestWasCancelledWithInfo:(id)info forReason:(int64_t)reason origin:(int64_t)origin client:(id)client successorInfo:(id)successorInfo
{
  infoCopy = info;
  clientCopy = client;
  successorInfoCopy = successorInfo;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v34 = "[ADRequestLifecycleObserver requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]";
    v35 = 2048;
    originCopy = origin;
    v37 = 2112;
    v38 = clientCopy;
    v39 = 2112;
    v40 = infoCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100229320;
  v24 = &unk_1005171C8;
  selfCopy = self;
  v16 = infoCopy;
  v26 = v16;
  reasonCopy = reason;
  originCopy2 = origin;
  v17 = clientCopy;
  v27 = v17;
  v18 = successorInfoCopy;
  v28 = v18;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v21];
  if (origin == 5)
  {
    v19 = [ADCompanionService sharedInstance:v21];
    v31 = @"event";
    v32 = @"requestWasCancelled";
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v19 sendStereoPartnerMessage:v20 messageType:@"requestlifecycle" completion:&stru_1005171E8];
  }
}

- (void)requestWillBeginWithInfo:(id)info fromOrigin:(int64_t)origin client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[ADRequestLifecycleObserver requestWillBeginWithInfo:fromOrigin:client:]";
    v27 = 2048;
    originCopy = origin;
    v29 = 2112;
    v30 = clientCopy;
    v31 = 2112;
    v32 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", buf, 0x2Au);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10022957C;
  v18 = &unk_100517160;
  selfCopy = self;
  v11 = infoCopy;
  v20 = v11;
  originCopy2 = origin;
  v12 = clientCopy;
  v21 = v12;
  [(ADRequestLifecycleObserver *)self _enumerateListenersUsingBlock:&v15];
  if (origin == 5)
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