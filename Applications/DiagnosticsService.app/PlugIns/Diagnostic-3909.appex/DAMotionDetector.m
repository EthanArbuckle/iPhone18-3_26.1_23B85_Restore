@interface DAMotionDetector
- (DAMotionDetector)initWithThreshold:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DAMotionDetector

- (DAMotionDetector)initWithThreshold:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAMotionDetector;
  v6 = [(DAMotionDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_threshold, a3);
  }

  return v7;
}

- (void)start
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0x7FEFFFFFFFFFFFFFLL;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0x7FEFFFFFFFFFFFFFLL;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0x7FEFFFFFFFFFFFFFLL;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x10000000000000;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0x10000000000000;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0x10000000000000;
  v3 = objc_alloc_init(CMMotionManager);
  [(DAMotionDetector *)self setMotionManager:v3];

  v4 = [(DAMotionDetector *)self motionManager];
  v5 = [v4 isAccelerometerAvailable];

  if (v5)
  {
    v6 = [(DAMotionDetector *)self motionManager];
    [v6 setAccelerometerUpdateInterval:0.01];

    v7 = [(DAMotionDetector *)self motionManager];
    v8 = objc_alloc_init(NSOperationQueue);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001720;
    v9[3] = &unk_1000103B8;
    v9[6] = v15;
    v9[7] = v11;
    v9[8] = v14;
    v9[9] = v10;
    v9[4] = self;
    v9[5] = v12;
    v9[10] = v13;
    v9[11] = v16;
    [v7 startAccelerometerUpdatesToQueue:v8 withHandler:v9];
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
}

- (void)stop
{
  v3 = [(DAMotionDetector *)self motionManager];

  if (v3)
  {
    v4 = [(DAMotionDetector *)self motionManager];
    v5 = [v4 isAccelerometerActive];

    if (v5)
    {
      v6 = [(DAMotionDetector *)self motionManager];
      [v6 stopAccelerometerUpdates];
    }

    [(DAMotionDetector *)self setMotionManager:0];
  }
}

@end