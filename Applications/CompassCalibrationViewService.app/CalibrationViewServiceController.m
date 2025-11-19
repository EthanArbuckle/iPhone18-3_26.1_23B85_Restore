@interface CalibrationViewServiceController
+ (void)dismissCalibrationAlert;
- (CLLocationManager)locationManager;
- (CMMotionManager)motionManager;
- (CalibrationViewController)calibrationViewController;
- (CalibrationViewServiceController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)maximumTimeElapsed;
- (void)minimumTimeElapsed;
- (void)reset;
- (void)tryToDismissCalibration;
- (void)viewDidLoad;
@end

@implementation CalibrationViewServiceController

+ (void)dismissCalibrationAlert
{
  v2 = [qword_100008848 _remoteViewControllerProxy];
  [v2 dismiss];

  v3 = qword_100008848;
  qword_100008848 = 0;
}

- (CalibrationViewServiceController)init
{
  v4.receiver = self;
  v4.super_class = CalibrationViewServiceController;
  v2 = [(CalibrationViewServiceController *)&v4 init];
  if (v2)
  {
    [objc_opt_class() dismissCalibrationAlert];
    objc_storeStrong(&qword_100008848, v2);
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v3 viewDidLoad];
  [(CalibrationViewServiceController *)self reset];
}

- (void)reset
{
  v2 = [(CalibrationViewServiceController *)self calibrationViewController];
  [v2 reset];
}

- (CalibrationViewController)calibrationViewController
{
  calibrationViewController = self->_calibrationViewController;
  if (!calibrationViewController)
  {
    v4 = objc_alloc_init(CalibrationViewController);
    v5 = self->_calibrationViewController;
    self->_calibrationViewController = v4;

    calibrationViewController = self->_calibrationViewController;
  }

  return calibrationViewController;
}

- (CMMotionManager)motionManager
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    v4 = objc_alloc_init(CMMotionManager);
    v5 = self->_motionManager;
    self->_motionManager = v4;

    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.0500000007];
    motionManager = self->_motionManager;
  }

  return motionManager;
}

- (CLLocationManager)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/CompassCalibration.bundle" delegate:self onQueue:&_dispatch_main_q];
    v5 = self->_locationManager;
    self->_locationManager = v4;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)minimumTimeElapsed
{
  v3 = [(CalibrationViewServiceController *)self minimumTimer];
  [v3 invalidate];

  [(CalibrationViewServiceController *)self setMinimumTimer:0];
  self->_minTimeElapsed = 1;

  [(CalibrationViewServiceController *)self tryToDismissCalibration];
}

- (void)maximumTimeElapsed
{
  v3 = [(CalibrationViewServiceController *)self maximumTimer];
  [v3 invalidate];

  [(CalibrationViewServiceController *)self setMaximumTimer:0];
  self->_maxTimeElapsed = 1;

  [(CalibrationViewServiceController *)self tryToDismissCalibration];
}

- (void)tryToDismissCalibration
{
  if (self->_minTimeElapsed && self->_calibrated || self->_maxTimeElapsed)
  {
    v3 = [(CalibrationViewServiceController *)self motionManager];
    [v3 stopDeviceMotionUpdates];

    v4 = [(CalibrationViewServiceController *)self locationManager];
    [v4 stopUpdatingHeading];

    [objc_opt_class() dismissCalibrationAlert];
    v5 = [(CalibrationViewServiceController *)self maximumTimer];
    [v5 invalidate];

    [(CalibrationViewServiceController *)self setMaximumTimer:0];
    v6 = [(CalibrationViewServiceController *)self minimumTimer];
    [v6 invalidate];

    [(CalibrationViewServiceController *)self setMinimumTimer:0];
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_maximumTimer invalidate];
  [(NSTimer *)self->_minimumTimer invalidate];
  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  [(CLLocationManager *)self->_locationManager stopUpdatingHeading];
  v3.receiver = self;
  v3.super_class = CalibrationViewServiceController;
  [(CalibrationViewServiceController *)&v3 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (!self->_hasPresented)
  {
    return 30;
  }

  v2 = self->_finalOrientation - 2;
  if (v2 > 2)
  {
    return 2;
  }

  else
  {
    return qword_100002300[v2];
  }
}

@end