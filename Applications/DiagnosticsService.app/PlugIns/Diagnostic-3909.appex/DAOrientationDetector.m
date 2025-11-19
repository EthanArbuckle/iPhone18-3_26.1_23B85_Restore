@interface DAOrientationDetector
- (DAOrientationDetector)initWithxThreshold:(id)a3 zThreshold:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation DAOrientationDetector

- (DAOrientationDetector)initWithxThreshold:(id)a3 zThreshold:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = DAOrientationDetector;
  v8 = [(DAOrientationDetector *)&v16 init];
  if (v8)
  {
    [v6 doubleValue];
    if (v9 == 0.0)
    {
      v10 = [NSNumber numberWithDouble:0.4];
    }

    else
    {
      v10 = v6;
    }

    xThreshold = v8->_xThreshold;
    v8->_xThreshold = v10;

    [v7 doubleValue];
    if (v12 == 0.0)
    {
      v13 = [NSNumber numberWithDouble:0.4];
    }

    else
    {
      v13 = v7;
    }

    zThreshold = v8->_zThreshold;
    v8->_zThreshold = v13;
  }

  return v8;
}

- (void)start
{
  v3 = objc_alloc_init(CMMotionManager);
  [(DAOrientationDetector *)self setMotionManager:v3];

  v4 = [(DAOrientationDetector *)self motionManager];
  v5 = [v4 isAccelerometerAvailable];

  if (v5)
  {
    v6 = [(DAOrientationDetector *)self motionManager];
    [v6 setAccelerometerUpdateInterval:0.01];

    v7 = [(DAOrientationDetector *)self motionManager];
    v8 = objc_alloc_init(NSOperationQueue);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001DA4;
    v9[3] = &unk_1000103E8;
    v9[4] = self;
    [v7 startAccelerometerUpdatesToQueue:v8 withHandler:v9];
  }
}

- (void)stop
{
  v3 = [(DAOrientationDetector *)self motionManager];

  if (v3)
  {
    v4 = [(DAOrientationDetector *)self motionManager];
    v5 = [v4 isAccelerometerActive];

    if (v5)
    {
      v6 = [(DAOrientationDetector *)self motionManager];
      [v6 stopAccelerometerUpdates];
    }

    [(DAOrientationDetector *)self setMotionManager:0];
  }
}

@end