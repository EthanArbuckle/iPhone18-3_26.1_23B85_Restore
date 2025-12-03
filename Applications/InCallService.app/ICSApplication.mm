@interface ICSApplication
- (BOOL)runEndCallTestWithOptions:(id)options;
- (BOOL)runIncomingCallTestWithOptions:(id)options;
- (BOOL)runOutgoingCallTestWithOptions:(id)options;
- (BOOL)runSwapCameraTestWithOptions:(id)options;
- (BOOL)runTest:(id)test options:(id)options;
- (id)_keyWindowForScreen:(id)screen;
- (id)pptOutgoingDialRequestWithDestinationID:(id)d;
- (unint64_t)beginBackgroundTaskWithExpirationHandler:(id)handler;
- (unint64_t)beginBackgroundTaskWithName:(id)name expirationHandler:(id)handler;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)endBackgroundTask:(unint64_t)task;
- (void)handleCallStatusChangedNotification:(id)notification;
- (void)sendEvent:(id)event;
- (void)setUpTestNamed:(id)named;
@end

@implementation ICSApplication

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v6.receiver = self;
  v6.super_class = ICSApplication;
  [(ICSApplication *)&v6 sendEvent:eventCopy];
  if (![eventCopy type])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = eventCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (unint64_t)beginBackgroundTaskWithExpirationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ beginBackgroundTaskWithExpirationHandler", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = ICSApplication;
  v6 = [(ICSApplication *)&v8 beginBackgroundTaskWithExpirationHandler:handlerCopy];

  return v6;
}

- (unint64_t)beginBackgroundTaskWithName:(id)name expirationHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ beginBackgroundTaskWithName:expirationHandler %{public}@", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = ICSApplication;
  v9 = [(ICSApplication *)&v11 beginBackgroundTaskWithName:nameCopy expirationHandler:handlerCopy];

  return v9;
}

- (void)endBackgroundTask:(unint64_t)task
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    taskCopy = task;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ endBackgroundTask %lu", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ICSApplication;
  [(ICSApplication *)&v6 endBackgroundTask:task];
}

- (id)_keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([screenCopy _userInterfaceIdiom] == 3)
  {
    v5 = +[_TtC13InCallService20CarPlayBannerManager shared];
    bannerWindow = [v5 bannerWindow];
    v7 = bannerWindow;
    if (bannerWindow)
    {
      v8 = bannerWindow;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = ICSApplication;
      v8 = [(ICSApplication *)&v12 _keyWindowForScreen:screenCopy];
    }

    v9 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICSApplication;
    v9 = [(ICSApplication *)&v11 _keyWindowForScreen:screenCopy];
  }

  return v9;
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = testCopy;
    v15 = 2112;
    v16 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to run testName: %@ with options: %@", buf, 0x16u);
  }

  [(ICSApplication *)self setUpTestNamed:testCopy];
  if (([testCopy isEqualToString:@"PlaceOutgoingCall"] & 1) != 0 || objc_msgSend(testCopy, "isEqualToString:", @"FaceTimePlaceOutgoingCall"))
  {
    v9 = [(ICSApplication *)self runOutgoingCallTestWithOptions:optionsCopy];
  }

  else if (([testCopy isEqualToString:@"AnswerIncomingCall"] & 1) != 0 || objc_msgSend(testCopy, "isEqualToString:", @"FaceTimeAnswerIncomingCall"))
  {
    v9 = [(ICSApplication *)self runIncomingCallTestWithOptions:optionsCopy];
  }

  else if (([testCopy isEqualToString:@"FaceTimeEndActiveCall"] & 1) != 0 || objc_msgSend(testCopy, "isEqualToString:", @"EndActiveCall"))
  {
    v9 = [(ICSApplication *)self runEndCallTestWithOptions:optionsCopy];
  }

  else if ([testCopy isEqualToString:@"FaceTimeSwapCamera"])
  {
    v9 = [(ICSApplication *)self runSwapCameraTestWithOptions:optionsCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ICSApplication;
    v9 = [(ICSApplication *)&v12 runTest:testCopy options:optionsCopy];
  }

  v10 = v9;

  return v10;
}

- (void)setUpTestNamed:(id)named
{
  objc_storeStrong(&qword_1003B8808, named);
  namedCopy = named;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)handleCallStatusChangedNotification:(id)notification
{
  if (qword_1003B8810)
  {
    object = [notification object];
    (*(qword_1003B8810 + 16))(qword_1003B8810, object);
  }
}

- (id)pptOutgoingDialRequestWithDestinationID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    dCopy = [TUHandle handleWithDestinationID:dCopy];

    v6 = +[TUCallCenter sharedInstance];
    providerManager = [v6 providerManager];

    superboxProvider = [providerManager superboxProvider];
    if ([(ICSApplication *)self currentTestIsFaceTime]|| superboxProvider)
    {
      telephonyProvider = superboxProvider;
    }

    else
    {
      telephonyProvider = [providerManager telephonyProvider];
    }

    v11 = telephonyProvider;
    if (telephonyProvider)
    {
      v10 = [[TUDialRequest alloc] initWithProvider:telephonyProvider];
      [v10 setHandle:dCopy];
      [v10 setVideo:{-[ICSApplication currentTestIsFaceTime](self, "currentTestIsFaceTime")}];
      [v10 setOriginatingUIType:36];
    }

    else
    {
      v12 = qword_1003B8808;
      v13 = [NSString stringWithFormat:@"Could not create a call provider using the call provider manager %@.", providerManager];
      [(ICSApplication *)self failedTest:v12 withFailure:v13];

      v10 = 0;
    }
  }

  else
  {
    dCopy = [NSString stringWithFormat:@"Invalid destination ID: %@.  Did you remember to set the defaults?", dCopy];

    [(ICSApplication *)self failedTest:qword_1003B8808 withFailure:dCopy];
    v10 = 0;
  }

  return v10;
}

- (BOOL)runOutgoingCallTestWithOptions:(id)options
{
  currentTestIsFaceTime = [(ICSApplication *)self currentTestIsFaceTime];
  v5 = +[ICSPreferences sharedPreferences];
  v6 = v5;
  if (currentTestIsFaceTime)
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

- (BOOL)runIncomingCallTestWithOptions:(id)options
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

- (BOOL)runEndCallTestWithOptions:(id)options
{
  currentTestIsFaceTime = [(ICSApplication *)self currentTestIsFaceTime];
  v5 = +[ICSPreferences sharedPreferences];
  v6 = v5;
  if (currentTestIsFaceTime)
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

- (BOOL)runSwapCameraTestWithOptions:(id)options
{
  v4 = +[ICSPreferences sharedPreferences];
  pptOutgoingFaceTimeCallHandleValue = [v4 pptOutgoingFaceTimeCallHandleValue];
  v6 = [(ICSApplication *)self pptOutgoingDialRequestWithDestinationID:pptOutgoingFaceTimeCallHandleValue];

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

- (void)connection:(id)connection didFailWithError:(id)error
{
  if (([UIApp isRunningTest:{@"AnswerIncomingCall", error}] & 1) != 0 || objc_msgSend(UIApp, "isRunningTest:", @"FaceTimeAnswerIncomingCall"))
  {
    v5 = qword_1003B8808;

    [(ICSApplication *)self failedTest:v5 withFailure:@"Connection Error"];
  }
}

@end