@interface ADClientLite
- (ADClientLite)initWithListener:(id)listener connection:(id)connection;
- (void)adRequestDidReceiveCommand:(id)command reply:(id)reply;
- (void)handleRemoteCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way completion:(id)completion;
@end

@implementation ADClientLite

- (void)adRequestDidReceiveCommand:(id)command reply:(id)reply
{
  commandCopy = command;
  replyCopy = reply;
  v8 = self->_outstandingCommandGroup;
  dispatch_group_enter(v8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10017828C;
  v18[3] = &unk_100513DA0;
  v19 = v8;
  v20 = replyCopy;
  v9 = replyCopy;
  v10 = v8;
  v11 = objc_retainBlock(v18);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001782F4;
  block[3] = &unk_10051E088;
  v16 = commandCopy;
  v17 = v11;
  block[4] = self;
  v13 = commandCopy;
  v14 = v11;
  dispatch_async(queue, block);
}

- (void)handleRemoteCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way completion:(id)completion
{
  wayCopy = way;
  requestCopy = request;
  commandCopy = command;
  completionCopy = completion;
  v12 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v12 assistantIsEnabled];

  v14 = AFSiriLogContextDaemon;
  if (assistantIsEnabled)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v52 = "[ADClientLite handleRemoteCommand:afterCurrentRequest:isOneWay:completion:]";
      v53 = 2112;
      v54 = commandCopy;
      v55 = 1024;
      v56 = requestCopy;
      v57 = 1024;
      v58 = wayCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s command = %@, afterCurrent = %d, isOneWay = %d", buf, 0x22u);
    }

    v15 = +[ADCommandCenter sharedCommandCenter];
    acquireShutdownAssertion = [v15 acquireShutdownAssertion];

    v17 = self->_queue;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100178924;
    v47[3] = &unk_100513D00;
    v47[4] = self;
    v18 = commandCopy;
    v19 = v17;
    v48 = v19;
    v50 = completionCopy;
    v20 = acquireShutdownAssertion;
    v49 = v20;
    v21 = objc_retainBlock(v47);
    v22 = [AFThreeArgumentSafetyBlock alloc];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100178A48;
    v45[3] = &unk_100513D28;
    v23 = v21;
    v46 = v23;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100178ADC;
    v40[3] = &unk_10051C958;
    v24 = [v22 initWithBlock:v45];
    v41 = v24;
    selfCopy = self;
    v32 = v18;
    v25 = v18;
    v43 = v25;
    v44 = requestCopy;
    v26 = objc_retainBlock(v40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100178BC4;
    v33[3] = &unk_100513D78;
    v27 = v19;
    v34 = v27;
    v38 = requestCopy;
    v39 = wayCopy;
    v35 = v25;
    selfCopy2 = self;
    v37 = v24;
    v28 = v24;
    v29 = objc_retainBlock(v33);
    v30 = v29;
    if (requestCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_listener);
      [WeakRetained doClientWork:v30 withTimeoutBlock:v26];
    }

    else
    {
      (v29[2])(v29);
    }

    commandCopy = v32;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v52 = "[ADClientLite handleRemoteCommand:afterCurrentRequest:isOneWay:completion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Rejecting ClientLite command because Siri is disabled", buf, 0xCu);
    }

    v20 = [AFError errorWithCode:18];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

- (ADClientLite)initWithListener:(id)listener connection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = ADClientLite;
  v8 = [(ADClientLite *)&v15 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(0, v9);

    queue = v8->_queue;
    v8->_queue = v10;

    v12 = dispatch_group_create();
    outstandingCommandGroup = v8->_outstandingCommandGroup;
    v8->_outstandingCommandGroup = v12;

    objc_storeWeak(&v8->_listener, listenerCopy);
    objc_storeWeak(&v8->_connection, connectionCopy);
  }

  return v8;
}

@end