@interface CompassController
- (CLLocationManager)sharedLocManager;
- (void)_setSharedLocationManagerOnPagesIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)startAnimations;
- (void)startLocationUpdatesIfNecessary;
- (void)stopAnimations;
- (void)stopLocationUpdates;
- (void)updateDisplay:(id)a3;
- (void)viewDidLoad;
@end

@implementation CompassController

- (void)loadView
{
  v9 = objc_alloc_init(UIView);
  [v9 _accessibilitySetInterfaceStyleIntent:2];
  [(CompassController *)self setView:v9];
  v3 = +[UIColor whiteColor];
  [v9 setTintColor:v3];

  v4 = objc_alloc_init(CompassPageViewController);
  compassPageController = self->_compassPageController;
  self->_compassPageController = v4;

  [(CompassController *)self _setSharedLocationManagerOnPagesIfNeeded];
  [(CompassController *)self addChildViewController:self->_compassPageController];
  v6 = [(CompassPageViewController *)self->_compassPageController view];
  [v6 setAutoresizingMask:18];

  v7 = [(CompassPageViewController *)self->_compassPageController view];
  [v9 bounds];
  [v7 setFrame:?];

  v8 = [(CompassPageViewController *)self->_compassPageController view];
  [v9 addSubview:v8];
}

- (void)_setSharedLocationManagerOnPagesIfNeeded
{
  v3 = [(CompassController *)self sharedLocManager];

  if (v3)
  {
    compassPageController = self->_compassPageController;
    if (objc_opt_respondsToSelector())
    {
      v5 = self->_compassPageController;
      v6 = [(CompassController *)self sharedLocManager];
      [(CompassPageViewController *)v5 setSharedLocationManager:v6];
    }
  }
}

- (CLLocationManager)sharedLocManager
{
  sharedLocManager = self->_sharedLocManager;
  if (!sharedLocManager)
  {
    v4 = objc_alloc_init(CLLocationManager);
    v5 = self->_sharedLocManager;
    self->_sharedLocManager = v4;

    [(CLLocationManager *)self->_sharedLocManager setDelegate:self];
    [(CompassController *)self _setSharedLocationManagerOnPagesIfNeeded];
    [(CLLocationManager *)self->_sharedLocManager requestWhenInUseAuthorization];
    sharedLocManager = self->_sharedLocManager;
  }

  return sharedLocManager;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CompassController;
  [(CompassController *)&v3 viewDidLoad];
  [(CompassController *)self startLocationUpdatesIfNecessary];
  [(CompassController *)self startAnimations];
}

- (void)startLocationUpdatesIfNecessary
{
  if (self->_canUseLocation)
  {
    v3 = [(CompassController *)self sharedLocManager];
    [v3 startUpdatingLocation];
  }

  else
  {
    v2 = [(CompassController *)self sharedLocManager];
  }
}

- (void)startAnimations
{
  if (!self->_displayLink)
  {
    v3 = [CADisplayLink displayLinkWithTarget:self selector:"updateDisplay:"];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    v6 = +[NSRunLoop currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];
  }
}

- (void)stopAnimations
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_sharedLocManager stopUpdatingLocation];
  v3.receiver = self;
  v3.super_class = CompassController;
  [(CompassController *)&v3 dealloc];
}

- (void)updateDisplay:(id)a3
{
  v4 = a3;
  if ([(CompassController *)self isViewLoaded])
  {
    [(CompassPageViewController *)self->_compassPageController updateDisplay:v4];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = [v4 authorizationStatus];
  self->_canUseLocation = (v5 - 3) < 0xFFFFFFFE;
  compassPageController = self->_compassPageController;
  if (objc_opt_respondsToSelector())
  {
    [(CompassPageViewController *)self->_compassPageController locationAuthorizationDidChange:v5];
  }

  if ((v5 - 3) >= 2)
  {
    if (v5)
    {
      [(CompassController *)self stopLocationUpdates];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006418;
      block[3] = &unk_100014460;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      [v4 requestWhenInUseAuthorization];
    }
  }

  else
  {
    [v4 startUpdatingLocation];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000064A4;
  block[3] = &unk_100014460;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000657C;
  v8[3] = &unk_100014488;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)stopLocationUpdates
{
  v2 = [(CompassController *)self sharedLocManager];
  [v2 stopUpdatingLocation];
}

@end