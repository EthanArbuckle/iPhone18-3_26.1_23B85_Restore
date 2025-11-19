@interface ICSApplication
- (BOOL)runEndCallTestWithOptions:(id)a3;
- (BOOL)runIncomingCallTestWithOptions:(id)a3;
- (BOOL)runOutgoingCallTestWithOptions:(id)a3;
- (BOOL)runSwapCameraTestWithOptions:(id)a3;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (id)_keyWindowForScreen:(id)a3;
- (id)pptOutgoingDialRequestWithDestinationID:(id)a3;
- (unint64_t)beginBackgroundTaskWithExpirationHandler:(id)a3;
- (unint64_t)beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)endBackgroundTask:(unint64_t)a3;
- (void)handleCallStatusChangedNotification:(id)a3;
- (void)sendEvent:(id)a3;
- (void)setUpTestNamed:(id)a3;
@end

@implementation ICSApplication

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ICSApplication;
  [(ICSApplication *)&v6 sendEvent:v4];
  if (![v4 type])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (unint64_t)beginBackgroundTaskWithExpirationHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ beginBackgroundTaskWithExpirationHandler", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = ICSApplication;
  v6 = [(ICSApplication *)&v8 beginBackgroundTaskWithExpirationHandler:v4];

  return v6;
}

- (unint64_t)beginBackgroundTaskWithName:(id)a3 expirationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ beginBackgroundTaskWithName:expirationHandler %{public}@", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = ICSApplication;
  v9 = [(ICSApplication *)&v11 beginBackgroundTaskWithName:v6 expirationHandler:v7];

  return v9;
}

- (void)endBackgroundTask:(unint64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ endBackgroundTask %lu", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ICSApplication;
  [(ICSApplication *)&v6 endBackgroundTask:a3];
}

- (id)_keyWindowForScreen:(id)a3
{
  v4 = a3;
  if ([v4 _userInterfaceIdiom] == 3)
  {
    v5 = +[_TtC13InCallService20CarPlayBannerManager shared];
    v6 = [v5 bannerWindow];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = ICSApplication;
      v8 = [(ICSApplication *)&v12 _keyWindowForScreen:v4];
    }

    v9 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICSApplication;
    v9 = [(ICSApplication *)&v11 _keyWindowForScreen:v4];
  }

  return v9;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to run testName: %@ with options: %@", buf, 0x16u);
  }

  [(ICSApplication *)self setUpTestNamed:v6];
  if (([v6 isEqualToString:@"PlaceOutgoingCall"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"FaceTimePlaceOutgoingCall"))
  {
    v9 = [(ICSApplication *)self runOutgoingCallTestWithOptions:v7];
  }

  else if (([v6 isEqualToString:@"AnswerIncomingCall"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"FaceTimeAnswerIncomingCall"))
  {
    v9 = [(ICSApplication *)self runIncomingCallTestWithOptions:v7];
  }

  else if (([v6 isEqualToString:@"FaceTimeEndActiveCall"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"EndActiveCall"))
  {
    v9 = [(ICSApplication *)self runEndCallTestWithOptions:v7];
  }

  else if ([v6 isEqualToString:@"FaceTimeSwapCamera"])
  {
    v9 = [(ICSApplication *)self runSwapCameraTestWithOptions:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ICSApplication;
    v9 = [(ICSApplication *)&v12 runTest:v6 options:v7];
  }

  v10 = v9;

  return v10;
}

- (void)setUpTestNamed:(id)a3
{
  objc_storeStrong(&qword_1003B8808, a3);
  v5 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)handleCallStatusChangedNotification:(id)a3
{
  if (qword_1003B8810)
  {
    v3 = [a3 object];
    (*(qword_1003B8810 + 16))(qword_1003B8810, v3);
  }
}

- (id)pptOutgoingDialRequestWithDestinationID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [TUHandle handleWithDestinationID:v4];

    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 providerManager];

    v8 = [v7 superboxProvider];
    if ([(ICSApplication *)self currentTestIsFaceTime]|| v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v7 telephonyProvider];
    }

    v11 = v9;
    if (v9)
    {
      v10 = [[TUDialRequest alloc] initWithProvider:v9];
      [v10 setHandle:v5];
      [v10 setVideo:{-[ICSApplication currentTestIsFaceTime](self, "currentTestIsFaceTime")}];
      [v10 setOriginatingUIType:36];
    }

    else
    {
      v12 = qword_1003B8808;
      v13 = [NSString stringWithFormat:@"Could not create a call provider using the call provider manager %@.", v7];
      [(ICSApplication *)self failedTest:v12 withFailure:v13];

      v10 = 0;
    }
  }

  else
  {
    v5 = [NSString stringWithFormat:@"Invalid destination ID: %@.  Did you remember to set the defaults?", v4];

    [(ICSApplication *)self failedTest:qword_1003B8808 withFailure:v5];
    v10 = 0;
  }

  return v10;
}

- (BOOL)runOutgoingCallTestWithOptions:(id)a3
{
  v4 = [(ICSApplication *)self currentTestIsFaceTime];
  v5 = +[ICSPreferences sharedPreferences];
  v6 = v5;
  if (v4)
  {
    [v5 pptOutgoingFaceTimeCallHandleValue];
  }

  else
  {
    [v5 pptOutgoingCallHandleValue];
  }
  v7 = ;

  v8 = [(ICSApplication *)self pptOutgoingDialRequestWithDestinationID:v7];
  [(ICSApplication *)self startedTest:qword_1003B8808];
  [(ICSApplication *)self startedSubTest:@"end-to-end" forTest:qword_1003B8808];
  v9 = qword_1003B8808;
  v13 = @"time";
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  [(ICSApplication *)self startedSubTest:@"applicationOpenURL" forTest:v9 withMetrics:v10];

  v11 = +[TUCallCenter sharedInstance];
  [v11 launchAppForDialRequest:v8 completion:0];

  return 1;
}

- (BOOL)runIncomingCallTestWithOptions:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014915C;
  v8[3] = &unk_10035A210;
  v8[4] = self;
  v4 = objc_retainBlock(v8);
  v5 = qword_1003B8810;
  qword_1003B8810 = v4;

  [(ICSApplication *)self startedTest:qword_1003B8808];
  [(ICSApplication *)self startedSubTest:@"AwaitIncomingCall" forTest:qword_1003B8808];
  if ([(ICSApplication *)self currentTestIsFaceTime])
  {
    v6 = "triggerIncomingSuperboxVideoCall";
  }

  else
  {
    v6 = "triggerIncomingSuperboxAudioCall";
  }

  notify_post(v6);
  return 1;
}

- (BOOL)runEndCallTestWithOptions:(id)a3
{
  v4 = [(ICSApplication *)self currentTestIsFaceTime];
  v5 = +[ICSPreferences sharedPreferences];
  v6 = v5;
  if (v4)
  {
    [v5 pptOutgoingFaceTimeCallHandleValue];
  }

  else
  {
    [v5 pptOutgoingCallHandleValue];
  }
  v7 = ;

  v8 = [(ICSApplication *)self pptOutgoingDialRequestWithDestinationID:v7];
  [(ICSApplication *)self startedTest:qword_1003B8808];
  v9 = +[TUCallCenter sharedInstance];
  [v9 launchAppForDialRequest:v8 completion:0];

  return 1;
}

- (BOOL)runSwapCameraTestWithOptions:(id)a3
{
  v4 = +[ICSPreferences sharedPreferences];
  v5 = [v4 pptOutgoingFaceTimeCallHandleValue];
  v6 = [(ICSApplication *)self pptOutgoingDialRequestWithDestinationID:v5];

  v7 = [v6 URL];

  if (v7)
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [v6 URL];
    [v8 openURL:v9 withCompletionHandler:0];

    [(ICSApplication *)self startedTest:qword_1003B8808];
  }

  return 1;
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  if (([UIApp isRunningTest:{@"AnswerIncomingCall", a4}] & 1) != 0 || objc_msgSend(UIApp, "isRunningTest:", @"FaceTimeAnswerIncomingCall"))
  {
    v5 = qword_1003B8808;

    [(ICSApplication *)self failedTest:v5 withFailure:@"Connection Error"];
  }
}

@end