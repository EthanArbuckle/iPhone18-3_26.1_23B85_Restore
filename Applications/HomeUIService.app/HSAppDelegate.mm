@interface HSAppDelegate
- (HSAppDelegate)init;
- (void)dealloc;
- (void)makeIdleTimerAssertion;
- (void)releaseIdleTimerAssertion;
- (void)startBackgroundTask;
@end

@implementation HSAppDelegate

- (HSAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = HSAppDelegate;
  v2 = [(HSAppDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[UIApplication sharedApplication];
    [v3 setDelegate:v2];

    v2->_backgroundTaskIdentifier = UIBackgroundTaskInvalid;
    idleTimerAssertion = v2->_idleTimerAssertion;
    v2->_idleTimerAssertion = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(HSAppDelegate *)self releaseIdleTimerAssertion];
  v3.receiver = self;
  v3.super_class = HSAppDelegate;
  [(HSAppDelegate *)&v3 dealloc];
}

- (void)startBackgroundTask
{
  backgroundTaskIdentifier = [(HSAppDelegate *)self backgroundTaskIdentifier];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (backgroundTaskIdentifier == UIBackgroundTaskInvalid)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating background task to prevent HomeUIService from going into backgroundSuspended state", buf, 2u);
    }

    v6 = +[UIApplication sharedApplication];
    -[HSAppDelegate setBackgroundTaskIdentifier:](self, "setBackgroundTaskIdentifier:", [v6 beginBackgroundTaskWithName:@"startBackgroundTask" expirationHandler:&stru_1000C75B0]);

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100045938;
    v8[3] = &unk_1000C75D8;
    v8[4] = self;
    v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:0.25];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring startBackgroundTask call since already running", buf, 2u);
    }
  }
}

- (void)makeIdleTimerAssertion
{
  idleTimerAssertion = [(HSAppDelegate *)self idleTimerAssertion];

  if (!idleTimerAssertion)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"HomeUIService-Pairing";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HomeUIService creating new assertion to disable idle timer with reason: %@", &v7, 0xCu);
    }

    v5 = +[ITIdleTimerState sharedInstance];
    v6 = [v5 newAssertionToDisableIdleTimerForReason:@"HomeUIService-Pairing"];
    [(HSAppDelegate *)self setIdleTimerAssertion:v6];
  }
}

- (void)releaseIdleTimerAssertion
{
  idleTimerAssertion = [(HSAppDelegate *)self idleTimerAssertion];

  if (idleTimerAssertion)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HomeUIService invalidation idle timer assertion", v6, 2u);
    }

    idleTimerAssertion2 = [(HSAppDelegate *)self idleTimerAssertion];
    [idleTimerAssertion2 invalidate];

    [(HSAppDelegate *)self setIdleTimerAssertion:0];
  }
}

@end