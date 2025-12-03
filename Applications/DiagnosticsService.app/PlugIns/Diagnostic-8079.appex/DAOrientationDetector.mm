@interface DAOrientationDetector
- (DAOrientationDetector)initWithxThreshold:(id)threshold zThreshold:(id)zThreshold;
- (void)start;
- (void)stop;
@end

@implementation DAOrientationDetector

- (DAOrientationDetector)initWithxThreshold:(id)threshold zThreshold:(id)zThreshold
{
  thresholdCopy = threshold;
  zThresholdCopy = zThreshold;
  v16.receiver = self;
  v16.super_class = DAOrientationDetector;
  v8 = [(DAOrientationDetector *)&v16 init];
  if (v8)
  {
    [thresholdCopy doubleValue];
    if (v9 == 0.0)
    {
      v10 = [NSNumber numberWithDouble:0.4];
    }

    else
    {
      v10 = thresholdCopy;
    }

    xThreshold = v8->_xThreshold;
    v8->_xThreshold = v10;

    [zThresholdCopy doubleValue];
    if (v12 == 0.0)
    {
      v13 = [NSNumber numberWithDouble:0.4];
    }

    else
    {
      v13 = zThresholdCopy;
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

  motionManager = [(DAOrientationDetector *)self motionManager];
  isAccelerometerAvailable = [motionManager isAccelerometerAvailable];

  if (isAccelerometerAvailable)
  {
    motionManager2 = [(DAOrientationDetector *)self motionManager];
    [motionManager2 setAccelerometerUpdateInterval:0.01];

    motionManager3 = [(DAOrientationDetector *)self motionManager];
    v8 = objc_alloc_init(NSOperationQueue);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000261C;
    v9[3] = &unk_1000144B8;
    v9[4] = self;
    [motionManager3 startAccelerometerUpdatesToQueue:v8 withHandler:v9];
  }
}

- (void)stop
{
  motionManager = [(DAOrientationDetector *)self motionManager];

  if (motionManager)
  {
    motionManager2 = [(DAOrientationDetector *)self motionManager];
    isAccelerometerActive = [motionManager2 isAccelerometerActive];

    if (isAccelerometerActive)
    {
      motionManager3 = [(DAOrientationDetector *)self motionManager];
      [motionManager3 stopAccelerometerUpdates];
    }

    [(DAOrientationDetector *)self setMotionManager:0];
  }
}

@end