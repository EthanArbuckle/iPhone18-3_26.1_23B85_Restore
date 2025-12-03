@interface MotionDetector
- (BOOL)isMoving;
- (MotionDetector)init;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation MotionDetector

- (MotionDetector)init
{
  v11.receiver = self;
  v11.super_class = MotionDetector;
  v2 = [(MotionDetector *)&v11 init];
  v4 = v2;
  if (v2)
  {
    v2->_rotationMagnitude = 0.0;
    v2->_accelerationMagnitude = 0.0;
    LODWORD(v3) = 1120403456;
    [(MotionDetector *)v2 setAccelerationThreshold:v3];
    LODWORD(v5) = 1120403456;
    [(MotionDetector *)v4 setRotationThreshold:v5];
    v6 = objc_alloc_init(off_100101178());
    [(MotionDetector *)v4 setMotion:v6];

    motion = [(MotionDetector *)v4 motion];
    isDeviceMotionAvailable = [motion isDeviceMotionAvailable];

    if (isDeviceMotionAvailable)
    {
      motion2 = [(MotionDetector *)v4 motion];
      [motion2 setDeviceMotionUpdateInterval:0.0333333333];
    }
  }

  return v4;
}

- (void)start
{
  motion = [(MotionDetector *)self motion];
  isDeviceMotionActive = [motion isDeviceMotionActive];

  if ((isDeviceMotionActive & 1) == 0)
  {
    motion2 = [(MotionDetector *)self motion];
    [motion2 startDeviceMotionUpdates];
  }
}

- (void)stop
{
  motion = [(MotionDetector *)self motion];
  isDeviceMotionActive = [motion isDeviceMotionActive];

  if (isDeviceMotionActive)
  {
    motion2 = [(MotionDetector *)self motion];
    [motion2 stopDeviceMotionUpdates];
  }

  self->_rotationMagnitude = 0.0;
  self->_accelerationMagnitude = 0.0;
}

- (BOOL)isMoving
{
  motion = [(MotionDetector *)self motion];
  isDeviceMotionActive = [motion isDeviceMotionActive];

  if (!isDeviceMotionActive)
  {
    return 0;
  }

  motion2 = [(MotionDetector *)self motion];
  deviceMotion = [motion2 deviceMotion];

  [deviceMotion rotationRate];
  v8 = v7;
  [deviceMotion rotationRate];
  v10 = v9;
  [deviceMotion rotationRate];
  v12 = v11;
  [deviceMotion rotationRate];
  v14 = v12 * v13 + v8 * v10;
  [deviceMotion rotationRate];
  v16 = v15;
  [deviceMotion rotationRate];
  v18 = sqrt(v14 + v16 * v17);
  self->_rotationMagnitude = v18;
  [(MotionDetector *)self rotationThreshold];
  if (v18 <= v19)
  {
    [deviceMotion userAcceleration];
    v21 = v20;
    [deviceMotion userAcceleration];
    v23 = v22;
    [deviceMotion userAcceleration];
    v25 = v24;
    [deviceMotion userAcceleration];
    v27 = v25 * v26 + v21 * v23;
    [deviceMotion userAcceleration];
    v29 = v28;
    [deviceMotion userAcceleration];
    v31 = sqrt(v27 + v29 * v30);
    self->_accelerationMagnitude = v31;
    [(MotionDetector *)self accelerationThreshold];
    v33 = v32;

    return v31 > v33;
  }

  return 1;
}

- (void)dealloc
{
  motion = [(MotionDetector *)self motion];
  [motion stopDeviceMotionUpdates];

  v4.receiver = self;
  v4.super_class = MotionDetector;
  [(MotionDetector *)&v4 dealloc];
}

@end