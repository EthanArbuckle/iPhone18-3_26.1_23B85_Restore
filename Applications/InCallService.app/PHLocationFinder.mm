@interface PHLocationFinder
+ (void)findLocationWithBundle:(id)bundle completion:(id)completion;
- (PHLocationFinder)initWithBundle:(id)bundle;
- (void)_timerFired;
- (void)dealloc;
- (void)setCompletionHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation PHLocationFinder

- (PHLocationFinder)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = PHLocationFinder;
  v5 = [(PHLocationFinder *)&v9 init];
  if (v5)
  {
    v6 = [[CLLocationManager alloc] initWithEffectiveBundle:bundleCopy];
    locationManager = v5->_locationManager;
    v5->_locationManager = v6;

    [(CLLocationManager *)v5->_locationManager setDelegate:v5];
    [(CLLocationManager *)v5->_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
  }

  return v5;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  [(PCPersistentTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = PHLocationFinder;
  [(PHLocationFinder *)&v3 dealloc];
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandler = self->_completionHandler;
  v8 = handlerCopy;
  if (completionHandler)
  {
    self->_completionHandler = 0;

    handlerCopy = v8;
  }

  if (handlerCopy)
  {
    v6 = [v8 copy];
    v7 = self->_completionHandler;
    self->_completionHandler = v6;

    handlerCopy = v8;
  }
}

- (void)start
{
  if (([(CLLocationManager *)self->_locationManager locationServicesAvailable]& 1) != 0)
  {
    [(CLLocationManager *)self->_locationManager startUpdatingLocationWithPrompt];
    [(PCPersistentTimer *)self->_timer invalidate];
    v3 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.TelephonyUtilities.PHLocationFinder" serviceIdentifier:self target:"_timerFired" selector:0 userInfo:10.0];
    timer = self->_timer;
    self->_timer = v3;

    v5 = +[NSRunLoop currentRunLoop];

    v6 = self->_timer;
    if (v5)
    {
      +[NSRunLoop currentRunLoop];
    }

    else
    {
      +[NSRunLoop mainRunLoop];
    }
    v8 = ;
    [(PCPersistentTimer *)v6 scheduleInRunLoop:v8];
  }

  else
  {
    v7 = *(self->_completionHandler + 2);

    v7();
  }
}

- (void)stop
{
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  [(PCPersistentTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_timerFired
{
  location = [(CLLocationManager *)self->_locationManager location];
  (*(self->_completionHandler + 2))();
  [(PHLocationFinder *)self stop];
}

+ (void)findLocationWithBundle:(id)bundle completion:(id)completion
{
  bundleCopy = bundle;
  completionCopy = completion;
  if (qword_1003B0D00 != -1)
  {
    sub_100254880();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10007393C;
  v19 = sub_10007394C;
  v20 = [[PHLocationFinder alloc] initWithBundle:bundleCopy];
  [qword_1003B0D08 addObject:v16[5]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073954;
  v12 = &unk_100357718;
  v7 = completionCopy;
  v13 = v7;
  v14 = &v15;
  v8 = objc_retainBlock(&v9);
  [v16[5] setCompletionHandler:{v8, v9, v10, v11, v12}];
  [v16[5] start];

  _Block_object_dispose(&v15, 8);
}

@end