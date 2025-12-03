@interface RPAngelConnectionManager
+ (id)sharedInstance;
- (BOOL)addConnection:(id)connection;
- (BOOL)isConnectingProcessAuthorized:(id)authorized;
- (BOOL)showReactionsTipForApplication:(id)application bundleID:(id)d;
- (RPAngelConnectionManager)init;
- (id)connectionManagerQueue;
- (void)cancelRecordingCountdown;
- (void)connectToAngelWithCompletionHandler:(id)handler;
- (void)countdownInterruptWithStatus:(id)status;
- (void)dealloc;
- (void)disableCameraPip;
- (void)dismissReactionsTipForApplication:(id)application bundleID:(id)d;
- (void)enableCameraPip;
- (void)hideAndStopRecordingBanner;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)pauseCurrentSystemSession;
- (void)requestToCancelReadyToRecord;
- (void)resumeCurrentSystemSession;
- (void)setCountdownState:(id)state;
- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d completionHandler:(id)handler;
- (void)showRecordingBanner;
- (void)startReadyToRecord;
- (void)startRecordingCountdownWithSessionType:(id)type;
- (void)stopCurrentSession;
- (void)stopReadyToRecord;
- (void)stopRecordingCalled;
- (void)updateTimer:(id)timer;
@end

@implementation RPAngelConnectionManager

+ (id)sharedInstance
{
  if (qword_100069868 != -1)
  {
    sub_1000434F4();
  }

  v3 = qword_100069860;

  return v3;
}

- (RPAngelConnectionManager)init
{
  v12.receiver = self;
  v12.super_class = RPAngelConnectionManager;
  v2 = [(RPAngelConnectionManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100005E14;
    v10[3] = &unk_10005D248;
    v4 = v2;
    v11 = v4;
    v5 = [BSServiceConnectionListener listenerWithConfigurator:v10];
    publicListener = v4->_publicListener;
    v4->_publicListener = v5;

    v7 = +[NSMutableDictionary dictionary];
    connections = v4->_connections;
    v4->_connections = v7;
  }

  return v3;
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_publicListener invalidate];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_connections objectForKey:*(*(&v12 + 1) + 8 * v7)];
        [v8 invalidate];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  cameraPipViewController = self->_cameraPipViewController;
  self->_cameraPipViewController = 0;

  v10 = +[RPRemoteAlertManager sharedInstance];
  [v10 clearRemoteHandle];

  v11.receiver = self;
  v11.super_class = RPAngelConnectionManager;
  [(RPAngelConnectionManager *)&v11 dealloc];
}

- (id)connectionManagerQueue
{
  if (qword_100069878 != -1)
  {
    sub_100043508();
  }

  v3 = qword_100069870;

  return v3;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v8 = [(RPAngelConnectionManager *)self isConnectingProcessAuthorized:remoteProcess];

  if (v8)
  {
    if (qword_100069888 != -1)
    {
      sub_1000435A8();
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000062A8;
    v12[3] = &unk_10005D330;
    v12[4] = self;
    [connectionCopy configureConnection:v12];
    connectionManagerQueue = [(RPAngelConnectionManager *)self connectionManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006634;
    block[3] = &unk_10005D188;
    block[4] = self;
    v11 = connectionCopy;
    dispatch_sync(connectionManagerQueue, block);
  }

  else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004351C();
  }
}

- (BOOL)isConnectingProcessAuthorized:(id)authorized
{
  authorizedCopy = authorized;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [authorizedCopy bundleIdentifier];
    v5 = [authorizedCopy pid];
    v6 = [authorizedCopy valueForEntitlement:@"application-identifier"];
    v10 = 136447234;
    v11 = "[RPAngelConnectionManager isConnectingProcessAuthorized:]";
    v12 = 1024;
    v13 = 136;
    v14 = 2112;
    v15 = bundleIdentifier;
    v16 = 1024;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Connection BundleID=%@ pid=%d valueFor=%@", &v10, 0x2Cu);
  }

  if ([authorizedCopy hasEntitlement:@"com.apple.private.ReplayKitAngel.client"])
  {
    v7 = 1;
  }

  else
  {
    bundleIdentifier2 = [authorizedCopy bundleIdentifier];
    v7 = [bundleIdentifier2 isEqualToString:@"com.apple.springboard"];
  }

  return v7;
}

- (BOOL)addConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  if (!connectionCopy || ([connectionCopy remoteToken], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  remoteToken = [v5 remoteToken];
  v8 = [remoteToken valueForEntitlement:@"application-identifier"];

  if (!v8)
  {
    if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000435BC();
    }

    goto LABEL_11;
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446978;
    v12 = "[RPAngelConnectionManager addConnection:]";
    v13 = 1024;
    v14 = 144;
    v15 = 2048;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d adding connection=%p identifer=%@", &v11, 0x26u);
  }

  [(NSMutableDictionary *)self->_connections setObject:v5 forKeyedSubscript:v8];

  v9 = 1;
LABEL_12:

  return v9;
}

- (void)showRecordingBanner
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager showRecordingBanner]";
    v5 = 1024;
    v6 = 157;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  [(RPAngelConnectionManagerDelegate *)self->_delegate startRecording];
}

- (void)stopRecordingCalled
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager stopRecordingCalled]";
    v5 = 1024;
    v6 = 162;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  [(RPAngelConnectionManagerDelegate *)self->_delegate didTapStopButton];
}

- (void)hideAndStopRecordingBanner
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager hideAndStopRecordingBanner]";
    v5 = 1024;
    v6 = 167;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  v2 = objc_alloc_init(RPSessionProxy);
  [(RPSessionProxy *)v2 finish];
}

- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446722;
    v18 = "[RPAngelConnectionManager showBannerWithURL:identifier:sessionID:completionHandler:]";
    v19 = 1024;
    v20 = 172;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d sessionID=%@", &v17, 0x1Cu);
  }

  v14 = objc_alloc_init(RPSessionProxy);
  currentSessionID = [(RPSessionProxy *)v14 currentSessionID];
  if (self->_delegate && [dCopy isEqualToString:currentSessionID])
  {
    [(RPAngelConnectionManagerDelegate *)self->_delegate showBannerWithURL:lCopy identifier:identifierCopy sessionID:dCopy];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446722;
      v18 = "[RPAngelConnectionManager showBannerWithURL:identifier:sessionID:completionHandler:]";
      v19 = 1024;
      v20 = 179;
      v21 = 2112;
      v22 = currentSessionID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d saved to photos completed when session has finished, currentSessionID=%@", &v17, 0x1Cu);
    }

    v16 = [NSError _rpUserErrorForCode:-5800 userInfo:0];
    (handlerCopy)[2](handlerCopy, v16);
  }
}

- (void)updateTimer:(id)timer
{
  timerCopy = timer;
  if (!__RPLogLevel && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager updateTimer:]";
    v7 = 1024;
    v8 = 186;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", &v5, 0x12u);
  }

  [(RPAngelConnectionManagerDelegate *)self->_delegate updateTimer:timerCopy];
}

- (void)startRecordingCountdownWithSessionType:(id)type
{
  typeCopy = type;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager startRecordingCountdownWithSessionType:]";
    v7 = 1024;
    v8 = 191;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v4 = objc_alloc_init(RPSessionProxy);
  [(RPSessionProxy *)v4 startWithSessionType:typeCopy];
}

- (void)cancelRecordingCountdown
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager cancelRecordingCountdown]";
    v5 = 1024;
    v6 = 197;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  v2 = objc_alloc_init(RPSessionProxy);
  [(RPSessionProxy *)v2 finish];
}

- (void)startReadyToRecord
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager startReadyToRecord]";
    v5 = 1024;
    v6 = 203;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  v2 = +[_TtC14ReplayKitAngel16RPSessionGateway shared];
  [v2 startReadyBanner];
}

- (void)stopReadyToRecord
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager stopReadyToRecord]";
    v5 = 1024;
    v6 = 209;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v3, 0x12u);
  }

  v2 = +[_TtC14ReplayKitAngel16RPSessionGateway shared];
  [v2 stopReadyBanner];
}

- (void)connectToAngelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPAngelConnectionManager connectToAngelWithCompletionHandler:]";
    v8 = 1024;
    v9 = 215;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  v4 = objc_alloc_init(RPSessionProxy);
  currentSessionID = [(RPSessionProxy *)v4 currentSessionID];
  handlerCopy[2](handlerCopy, currentSessionID, 0);
}

- (void)setCountdownState:(id)state
{
  stateCopy = state;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPAngelConnectionManager setCountdownState:]";
    v10 = 1024;
    v11 = 221;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007648;
  v6[3] = &unk_10005D188;
  v6[4] = self;
  v7 = stateCopy;
  v5 = stateCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)enableCameraPip
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPAngelConnectionManager enableCameraPip]";
    v6 = 1024;
    v7 = 230;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007864;
  block[3] = &unk_10005D098;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)disableCameraPip
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPAngelConnectionManager disableCameraPip]";
    v6 = 1024;
    v7 = 242;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007ABC;
  block[3] = &unk_10005D098;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (BOOL)showReactionsTipForApplication:(id)application bundleID:(id)d
{
  applicationCopy = application;
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPAngelConnectionManager showReactionsTipForApplication:bundleID:]";
    v12 = 1024;
    v13 = 250;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v7 = +[RPRemoteAlertManager sharedInstance];
  v8 = [v7 createRemoteHandleForApplication:applicationCopy bundleID:dCopy];

  return v8;
}

- (void)dismissReactionsTipForApplication:(id)application bundleID:(id)d
{
  applicationCopy = application;
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPAngelConnectionManager dismissReactionsTipForApplication:bundleID:]";
    v10 = 1024;
    v11 = 255;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  v7 = +[RPRemoteAlertManager sharedInstance];
  [v7 clearRemoteHandle];
}

- (void)stopCurrentSession
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager stopCurrentSession]";
    v7 = 1024;
    v8 = 262;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:@"com.apple.springboard"];
  remoteTarget = [v3 remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget stopCurrentSession];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager stopCurrentSession]";
    v7 = 1024;
    v8 = 267;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelClientProtocol nil", &v5, 0x12u);
  }
}

- (void)requestToCancelReadyToRecord
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager requestToCancelReadyToRecord]";
    v7 = 1024;
    v8 = 272;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:@"com.apple.springboard"];
  remoteTarget = [v3 remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget requestToCancelReadyToRecord];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager requestToCancelReadyToRecord]";
    v7 = 1024;
    v8 = 277;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelClientProtocol nil", &v5, 0x12u);
  }
}

- (void)countdownInterruptWithStatus:(id)status
{
  statusCopy = status;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPAngelConnectionManager countdownInterruptWithStatus:]";
    v9 = 1024;
    v10 = 282;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:@"com.apple.springboard"];
  remoteTarget = [v5 remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget countdownInterruptWithStatus:statusCopy];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPAngelConnectionManager countdownInterruptWithStatus:]";
    v9 = 1024;
    v10 = 287;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelClientProtocol nil", &v7, 0x12u);
  }
}

- (void)pauseCurrentSystemSession
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager pauseCurrentSystemSession]";
    v7 = 1024;
    v8 = 293;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:@"com.apple.replayd"];
  remoteTarget = [v3 remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget pauseCurrentSystemSession];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager pauseCurrentSystemSession]";
    v7 = 1024;
    v8 = 298;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelClientProtocol nil", &v5, 0x12u);
  }
}

- (void)resumeCurrentSystemSession
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager resumeCurrentSystemSession]";
    v7 = 1024;
    v8 = 303;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:@"com.apple.replayd"];
  remoteTarget = [v3 remoteTarget];

  if (remoteTarget)
  {
    [remoteTarget resumeCurrentSystemSession];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPAngelConnectionManager resumeCurrentSystemSession]";
    v7 = 1024;
    v8 = 308;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngelClientProtocol nil", &v5, 0x12u);
  }
}

@end