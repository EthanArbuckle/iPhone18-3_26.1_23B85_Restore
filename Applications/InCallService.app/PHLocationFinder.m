@interface PHLocationFinder
+ (void)findLocationWithBundle:(id)a3 completion:(id)a4;
- (PHLocationFinder)initWithBundle:(id)a3;
- (void)_timerFired;
- (void)dealloc;
- (void)setCompletionHandler:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation PHLocationFinder

- (PHLocationFinder)initWithBundle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHLocationFinder;
  v5 = [(PHLocationFinder *)&v9 init];
  if (v5)
  {
    v6 = [[CLLocationManager alloc] initWithEffectiveBundle:v4];
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

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  completionHandler = self->_completionHandler;
  v8 = v4;
  if (completionHandler)
  {
    self->_completionHandler = 0;

    v4 = v8;
  }

  if (v4)
  {
    v6 = [v8 copy];
    v7 = self->_completionHandler;
    self->_completionHandler = v6;

    v4 = v8;
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
  v3 = [(CLLocationManager *)self->_locationManager location];
  (*(self->_completionHandler + 2))();
  [(PHLocationFinder *)self stop];
}

+ (void)findLocationWithBundle:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1003B0D00 != -1)
  {
    sub_100254880();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10007393C;
  v19 = sub_10007394C;
  v20 = [[PHLocationFinder alloc] initWithBundle:v5];
  [qword_1003B0D08 addObject:v16[5]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073954;
  v12 = &unk_100357718;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  v8 = objc_retainBlock(&v9);
  [v16[5] setCompletionHandler:{v8, v9, v10, v11, v12}];
  [v16[5] start];

  _Block_object_dispose(&v15, 8);
}

@end