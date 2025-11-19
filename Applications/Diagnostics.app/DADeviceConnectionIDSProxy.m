@interface DADeviceConnectionIDSProxy
- (DADeviceConnectionDelegate)delegate;
- (DADeviceConnectionIDSProxy)initWithState:(id)a3;
- (void)_ping;
- (void)_sendMessage:(id)a3 overrideCannotCommunicate:(BOOL)a4 response:(id)a5;
- (void)_startDeviceStatePingTimer;
- (void)_updateState:(id)a3;
- (void)connect;
- (void)end;
- (void)idle;
- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7;
- (void)requestSuiteFinishWithCompletionHandler:(id)a3;
- (void)startWithCompletion:(id)a3;
@end

@implementation DADeviceConnectionIDSProxy

- (DADeviceConnectionIDSProxy)initWithState:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DADeviceConnectionIDSProxy;
  v6 = [(DADeviceConnectionIDSProxy *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
    v8 = objc_alloc_init(DAIDSMessengerProxy);
    messenger = v7->_messenger;
    v7->_messenger = v8;

    [(DAIDSMessengerProxy *)v7->_messenger setReceiver:v7];
    v7->_communicationAvailable = 1;
    v10 = dispatch_queue_create("com.apple.Diagnostics.messageSendingQueue", 0);
    messageSendingQueue = v7->_messageSendingQueue;
    v7->_messageSendingQueue = v10;

    v12 = dispatch_queue_create("com.apple.Diagnostics.messageReceivingQueue", 0);
    messageReceivingQueue = v7->_messageReceivingQueue;
    v7->_messageReceivingQueue = v12;

    lastMessageTimestamp = v7->_lastMessageTimestamp;
    v7->_lastMessageTimestamp = &off_1001CCA10;
  }

  return v7;
}

- (void)connect
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001951C;
  v2[3] = &unk_1001BD100;
  v2[4] = self;
  [(DADeviceConnectionIDSProxy *)self _sendMessage:@"requestDeviceState" overrideCannotCommunicate:0 response:v2];
}

- (void)startWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019700;
  v4[3] = &unk_1001BD128;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(DADeviceConnectionIDSProxy *)v5 _sendMessage:@"wakeDevice" overrideCannotCommunicate:1 response:v4];
}

- (void)requestSuiteFinishWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000198D0;
  v4[3] = &unk_1001BD128;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(DADeviceConnectionIDSProxy *)v5 _sendMessage:@"requestSuiteFinish" overrideCannotCommunicate:0 response:v4];
}

- (void)idle
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100019A20;
  v2[3] = &unk_1001BD100;
  v2[4] = self;
  [(DADeviceConnectionIDSProxy *)self _sendMessage:@"idleDevice" overrideCannotCommunicate:0 response:v2];
}

- (void)end
{
  v3 = [(DADeviceConnectionIDSProxy *)self state];
  [v3 setPhase:5];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019B94;
  v4[3] = &unk_1001BD100;
  v4[4] = self;
  [(DADeviceConnectionIDSProxy *)self _sendMessage:@"endDevice" overrideCannotCommunicate:0 response:v4];
}

- (void)_ping
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100019CE0;
  v2[3] = &unk_1001BD100;
  v2[4] = self;
  [(DADeviceConnectionIDSProxy *)self _sendMessage:@"requestDeviceState" overrideCannotCommunicate:0 response:v2];
}

- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[DADeviceConnectionIDSProxy receiveMessage:data:fromDestination:expectsResponse:response:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[DADeviceConnectionIDSProxy] %s", &v22, 0xCu);
  }

  v16 = [(DADeviceConnectionIDSProxy *)self destination];
  v17 = [v16 isEqual:v13];

  if (v17)
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received message: %@; from destination: %@;", &v22, 0x16u);
    }

    v19 = @"messageReceived";
    if ([v11 isEqual:@"deviceState"])
    {
      v20 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412546;
          v23 = v20;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received device state: %@; from destination: %@;", &v22, 0x16u);
        }

        [(DADeviceConnectionIDSProxy *)self _updateState:v20];
      }
    }

    else
    {
      v20 = v19;
      v19 = @"unknownMessage";
    }

    if (v14)
    {
      v14[2](v14, v19, 0);
    }
  }
}

- (void)_sendMessage:(id)a3 overrideCannotCommunicate:(BOOL)a4 response:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(DADeviceConnectionIDSProxy *)self destination];

  if (v10)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_10001A3D0;
    v27[4] = sub_10001A3FC;
    v28 = objc_retainBlock(v9);
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(DADeviceConnectionIDSProxy *)self destination];
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding message to sending queue: %@; to destination: %@;", buf, 0x16u);
    }

    v13 = [(DADeviceConnectionIDSProxy *)self messageSendingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A404;
    block[3] = &unk_1001BD208;
    block[4] = self;
    v26 = a4;
    v23 = v8;
    v25 = v27;
    v24 = v9;
    dispatch_async(v13, block);

    _Block_object_dispose(v27, 8);
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100158AAC(v8, v14, v15, v16, v17, v18, v19, v20);
    }

    v21 = [NSError errorWithDomain:@"com.apple.Diagnostics.DADeviceConnectionIDSProxy" code:6 userInfo:0];
    if (v9)
    {
      (*(v9 + 2))(v9, 0, v21, 0, 0);
    }

    [DSAnalytics sendAnalyticsWithEvent:7 error:v21];
  }
}

- (void)_updateState:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceConnectionIDSProxy *)self lastMessageTimestamp];
  objc_sync_enter(v5);
  v6 = [(DADeviceConnectionIDSProxy *)self lastMessageTimestamp];
  v7 = [v4 timestamp];
  v8 = [v7 compare:v6];
  objc_sync_exit(v5);

  if (v8 == 1)
  {
    if ([v4 phase] == 1 || !objc_msgSend(v4, "phase"))
    {
      v12 = [(DADeviceConnectionIDSProxy *)self deviceStatePingTimer];
      [v12 invalidate];

      [(DADeviceConnectionIDSProxy *)self setDeviceStatePingTimer:0];
    }

    else
    {
      v9 = [(DADeviceConnectionIDSProxy *)self deviceStatePingTimer];
      v10 = [v9 isValid];

      if ((v10 & 1) == 0)
      {
        [(DADeviceConnectionIDSProxy *)self _startDeviceStatePingTimer];
      }
    }

    v11 = [(DADeviceConnectionIDSProxy *)self state];
    [v11 updateWithDeviceState:v4];
  }

  else
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100158EC4(v6, v7, v11);
    }
  }
}

- (void)_startDeviceStatePingTimer
{
  v3 = [(DADeviceConnectionIDSProxy *)self deviceStatePingTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [(DADeviceConnectionIDSProxy *)self deviceStatePingTimer];
    [v5 invalidate];

    [(DADeviceConnectionIDSProxy *)self setDeviceStatePingTimer:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF7C;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (DADeviceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end