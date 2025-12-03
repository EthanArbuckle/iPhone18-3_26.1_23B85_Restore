@interface ContinuityCaptureShieldUIBackgroundActivityManager
+ (id)sharedInstance;
- (ContinuityCaptureShieldUIBackgroundActivityManager)init;
- (id)_currentBackgroundActivityIdentifier;
- (void)updateState:(int64_t)state micOnly:(BOOL)only withUserInteractionHandler:(id)handler;
@end

@implementation ContinuityCaptureShieldUIBackgroundActivityManager

+ (id)sharedInstance
{
  if (qword_10001EE18 != -1)
  {
    sub_10000C0B8();
  }

  v3 = qword_10001EE10;

  return v3;
}

- (ContinuityCaptureShieldUIBackgroundActivityManager)init
{
  v12.receiver = self;
  v12.super_class = ContinuityCaptureShieldUIBackgroundActivityManager;
  v2 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)&v12 init];
  if (v2)
  {
    v3 = [[ContinuityCaptureShieldUIBackgroundActivityController alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.continuitycapture.streaming-video"];
    v4 = [[ContinuityCaptureShieldUIBackgroundActivityController alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio"];
    v5 = [[ContinuityCaptureShieldUIBackgroundActivityController alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.continuitycapture.streaming-none"];
    v6 = [[ContinuityCaptureShieldUIBackgroundActivityController alloc] initWithBackgroundActivityIdentifier:@"com.apple.systemstatus.background-activity.continuitycapture.mic-only"];
    v10[0] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
    v10[1] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
    v11[0] = v3;
    v11[1] = v4;
    v10[2] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
    v10[3] = @"com.apple.systemstatus.background-activity.continuitycapture.mic-only";
    v11[2] = v5;
    v11[3] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
    backgroundActivityControllers = v2->_backgroundActivityControllers;
    v2->_backgroundActivityControllers = v7;
  }

  return v2;
}

- (void)updateState:(int64_t)state micOnly:(BOOL)only withUserInteractionHandler:(id)handler
{
  onlyCopy = only;
  stateCopy = state;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((stateCopy & 0x30) == 0x10)
  {
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ removing background activity", &v23, 0xCu);
    }

    backgroundActivityControllers = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
    [backgroundActivityControllers enumerateKeysAndObjectsUsingBlock:&stru_1000186C0];
  }

  else
  {
    if (onlyCopy)
    {
      backgroundActivityControllers2 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = backgroundActivityControllers2;
      v13 = @"com.apple.systemstatus.background-activity.continuitycapture.mic-only";
    }

    else if (stateCopy)
    {
      backgroundActivityControllers2 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = backgroundActivityControllers2;
      v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
    }

    else
    {
      backgroundActivityControllers2 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = backgroundActivityControllers2;
      if ((stateCopy & 6) == 2)
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
      }

      else if ((stateCopy & 4) != 0)
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
      }

      else
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
      }
    }

    backgroundActivityControllers = [backgroundActivityControllers2 objectForKey:v13];

    _currentBackgroundActivityIdentifier = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self _currentBackgroundActivityIdentifier];
    backgroundActivityIdentifier = [backgroundActivityControllers backgroundActivityIdentifier];
    v16 = [_currentBackgroundActivityIdentifier isEqualToString:backgroundActivityIdentifier];

    if ((v16 & 1) == 0)
    {
      if (_currentBackgroundActivityIdentifier)
      {
        backgroundActivityControllers3 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
        v18 = [backgroundActivityControllers3 objectForKey:_currentBackgroundActivityIdentifier];

        [v18 deactivateBackgroundActivity];
      }

      v19 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        backgroundActivityIdentifier2 = [backgroundActivityControllers backgroundActivityIdentifier];
        v23 = 138412802;
        selfCopy3 = self;
        v25 = 2112;
        v26 = _currentBackgroundActivityIdentifier;
        v27 = 2112;
        v28 = backgroundActivityIdentifier2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ updating backgroundActivity %@ -> %@", &v23, 0x20u);
      }

      [backgroundActivityControllers activateBackgroundActivityWithUserInteractionHandler:handlerCopy];
      v21 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        backgroundActivityIdentifier3 = [backgroundActivityControllers backgroundActivityIdentifier];
        v23 = 138412802;
        selfCopy3 = self;
        v25 = 2112;
        v26 = _currentBackgroundActivityIdentifier;
        v27 = 2112;
        v28 = backgroundActivityIdentifier3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ updated backgroundActivity %@ -> %@", &v23, 0x20u);
      }
    }
  }
}

- (id)_currentBackgroundActivityIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000059B8;
  v10 = sub_1000059C8;
  v11 = 0;
  backgroundActivityControllers = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000059D0;
  v5[3] = &unk_1000186E8;
  v5[4] = &v6;
  [backgroundActivityControllers enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end