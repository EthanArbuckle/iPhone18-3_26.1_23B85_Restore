@interface ContinuityCaptureShieldUIBackgroundActivityManager
+ (id)sharedInstance;
- (ContinuityCaptureShieldUIBackgroundActivityManager)init;
- (id)_currentBackgroundActivityIdentifier;
- (void)updateState:(int64_t)a3 micOnly:(BOOL)a4 withUserInteractionHandler:(id)a5;
@end

@implementation ContinuityCaptureShieldUIBackgroundActivityManager

+ (id)sharedInstance
{
  if (qword_100019E98 != -1)
  {
    sub_10000B1B0();
  }

  v3 = qword_100019E90;

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

- (void)updateState:(int64_t)a3 micOnly:(BOOL)a4 withUserInteractionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((v6 & 0x30) == 0x10)
  {
    v9 = CMContinuityCaptureLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ removing background activity", &v23, 0xCu);
    }

    v10 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
    [v10 enumerateKeysAndObjectsUsingBlock:&stru_100014510];
  }

  else
  {
    if (v5)
    {
      v11 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = v11;
      v13 = @"com.apple.systemstatus.background-activity.continuitycapture.mic-only";
    }

    else if (v6)
    {
      v11 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = v11;
      v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
    }

    else
    {
      v11 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
      v12 = v11;
      if ((v6 & 6) == 2)
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
      }

      else if ((v6 & 4) != 0)
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
      }

      else
      {
        v13 = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
      }
    }

    v10 = [v11 objectForKey:v13];

    v14 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self _currentBackgroundActivityIdentifier];
    v15 = [v10 backgroundActivityIdentifier];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      if (v14)
      {
        v17 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
        v18 = [v17 objectForKey:v14];

        [v18 deactivateBackgroundActivity];
      }

      v19 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 backgroundActivityIdentifier];
        v23 = 138412802;
        v24 = self;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ updating backgroundActivity %@ -> %@", &v23, 0x20u);
      }

      [v10 activateBackgroundActivityWithUserInteractionHandler:v8];
      v21 = CMContinuityCaptureLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v10 backgroundActivityIdentifier];
        v23 = 138412802;
        v24 = self;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v22;
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
  v9 = sub_100001728;
  v10 = sub_100001738;
  v11 = 0;
  v2 = [(ContinuityCaptureShieldUIBackgroundActivityManager *)self backgroundActivityControllers];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001740;
  v5[3] = &unk_100014538;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end