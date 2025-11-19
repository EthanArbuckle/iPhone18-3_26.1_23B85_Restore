@interface PHIntervalTimer
+ (id)oneSecondTimer;
- (PHIntervalTimer)init;
- (PHIntervalTimer)initWithInterval:(double)a3;
- (void)_createTimerIfNecessary;
- (void)_invalidateTimerIfNecessary;
- (void)_postNotification;
- (void)addObserver:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)fire;
- (void)pause;
- (void)removeObserver:(id)a3;
- (void)resume;
@end

@implementation PHIntervalTimer

- (void)_postNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHIntervalTimerNotification" object:self];
}

+ (id)oneSecondTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140FFC;
  block[3] = &unk_1003567B0;
  block[4] = a1;
  if (qword_1003B1028 != -1)
  {
    dispatch_once(&qword_1003B1028, block);
  }

  v2 = qword_1003B1020;

  return v2;
}

- (PHIntervalTimer)initWithInterval:(double)a3
{
  v9.receiver = self;
  v9.super_class = PHIntervalTimer;
  v4 = [(PHIntervalTimer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(PHIntervalTimer *)v4 setInterval:a3];
    v6 = +[NSMutableSet set];
    [(PHIntervalTimer *)v5 setObservers:v6];

    v7 = dispatch_queue_create("com.apple.mobilephone.PHIntervalTimer", 0);
    [(PHIntervalTimer *)v5 setQueue:v7];
  }

  return v5;
}

- (PHIntervalTimer)init
{
  v3 = [NSString stringWithUTF8String:"[PHIntervalTimer init]"];
  v4 = [NSString stringWithFormat:@"Don't call %@, call designated initializer instead.", v3];
  NSLog(@"** TUAssertion failure: %@", v4);

  _TUAssertShouldCrashApplication();
  return 0;
}

- (void)dealloc
{
  v3 = [(PHIntervalTimer *)self timer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = PHIntervalTimer;
  [(PHIntervalTimer *)&v4 dealloc];
}

- (void)addObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014128C;
  block[3] = &unk_100357AB0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PHIntervalTimer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001413BC;
  v7[3] = &unk_100357110;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)fire
{
  v3 = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001414BC;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)pause
{
  v3 = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141588;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)resume
{
  v3 = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141694;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_createTimerIfNecessary
{
  v3 = [(PHIntervalTimer *)self queue];
  dispatch_assert_queue_V2(v3);

  v10 = [(PHIntervalTimer *)self observers];
  if ([v10 count])
  {
    v4 = [(PHIntervalTimer *)self timer];
    if (v4)
    {
      v5 = v4;
      v6 = [(PHIntervalTimer *)self timer];
      v7 = [v6 isValid];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating interval timer", buf, 2u);
    }

    [(PHIntervalTimer *)self interval];
    v9 = [NSTimer scheduledTimerWithTimeInterval:self target:"_postNotification" selector:0 userInfo:1 repeats:?];
    [(PHIntervalTimer *)self setTimer:v9];
  }

  else
  {
  }
}

- (void)_invalidateTimerIfNecessary
{
  v3 = [(PHIntervalTimer *)self queue];
  dispatch_assert_queue_V2(v3);

  v6 = [(PHIntervalTimer *)self observers];
  if ([v6 count])
  {
  }

  else
  {
    v4 = [(PHIntervalTimer *)self timer];

    if (v4)
    {
      v5 = [(PHIntervalTimer *)self timer];
      [v5 invalidate];

      [(PHIntervalTimer *)self setTimer:0];
    }
  }
}

@end