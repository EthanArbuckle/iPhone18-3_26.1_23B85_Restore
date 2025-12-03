@interface PHIntervalTimer
+ (id)oneSecondTimer;
- (PHIntervalTimer)init;
- (PHIntervalTimer)initWithInterval:(double)interval;
- (void)_createTimerIfNecessary;
- (void)_invalidateTimerIfNecessary;
- (void)_postNotification;
- (void)addObserver:(id)observer selector:(SEL)selector;
- (void)dealloc;
- (void)fire;
- (void)pause;
- (void)removeObserver:(id)observer;
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
  block[4] = self;
  if (qword_1003B1028 != -1)
  {
    dispatch_once(&qword_1003B1028, block);
  }

  v2 = qword_1003B1020;

  return v2;
}

- (PHIntervalTimer)initWithInterval:(double)interval
{
  v9.receiver = self;
  v9.super_class = PHIntervalTimer;
  v4 = [(PHIntervalTimer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(PHIntervalTimer *)v4 setInterval:interval];
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
  timer = [(PHIntervalTimer *)self timer];
  [timer invalidate];

  v4.receiver = self;
  v4.super_class = PHIntervalTimer;
  [(PHIntervalTimer *)&v4 dealloc];
}

- (void)addObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  queue = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014128C;
  block[3] = &unk_100357AB0;
  block[4] = self;
  v10 = observerCopy;
  selectorCopy = selector;
  v8 = observerCopy;
  dispatch_sync(queue, block);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(PHIntervalTimer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001413BC;
  v7[3] = &unk_100357110;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)fire
{
  queue = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001414BC;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)pause
{
  queue = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141588;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resume
{
  queue = [(PHIntervalTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100141694;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_createTimerIfNecessary
{
  queue = [(PHIntervalTimer *)self queue];
  dispatch_assert_queue_V2(queue);

  observers = [(PHIntervalTimer *)self observers];
  if ([observers count])
  {
    timer = [(PHIntervalTimer *)self timer];
    if (timer)
    {
      v5 = timer;
      timer2 = [(PHIntervalTimer *)self timer];
      isValid = [timer2 isValid];

      if (isValid)
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
  queue = [(PHIntervalTimer *)self queue];
  dispatch_assert_queue_V2(queue);

  observers = [(PHIntervalTimer *)self observers];
  if ([observers count])
  {
  }

  else
  {
    timer = [(PHIntervalTimer *)self timer];

    if (timer)
    {
      timer2 = [(PHIntervalTimer *)self timer];
      [timer2 invalidate];

      [(PHIntervalTimer *)self setTimer:0];
    }
  }
}

@end