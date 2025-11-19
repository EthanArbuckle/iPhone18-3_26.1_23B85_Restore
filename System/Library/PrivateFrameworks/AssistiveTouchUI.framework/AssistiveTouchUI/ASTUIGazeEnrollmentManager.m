@interface ASTUIGazeEnrollmentManager
+ (id)sharedManager;
- (ASTUIGazeEnrollmentManager)init;
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3;
- (void)_setupCalibrationStrategy;
- (void)captureCurrentEnrollmentPoint:(CGPoint)a3 gazePoint:(CGPoint)a4 positionName:(id)a5;
- (void)setEnrollmentComplete:(BOOL)a3;
@end

@implementation ASTUIGazeEnrollmentManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ASTUIGazeEnrollmentManager sharedManager];
  }

  v3 = sharedManager_SharedManager;

  return v3;
}

uint64_t __43__ASTUIGazeEnrollmentManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ASTUIGazeEnrollmentManager)init
{
  v9.receiver = self;
  v9.super_class = ASTUIGazeEnrollmentManager;
  v2 = [(ASTUIGazeEnrollmentManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(ASTUIGazeEnrollmentManager *)v2 _setupCalibrationStrategy];
    objc_initWeak(&location, v3);
    v4 = [MEMORY[0x277CE7E20] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__ASTUIGazeEnrollmentManager_init__block_invoke;
    v6[3] = &unk_278CDC5D8;
    objc_copyWeak(&v7, &location);
    [v4 registerUpdateBlock:v6 forRetrieveSelector:sel_assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy withListener:v3];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __34__ASTUIGazeEnrollmentManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupCalibrationStrategy];
}

- (void)setEnrollmentComplete:(BOOL)a3
{
  self->_enrollmentComplete = a3;
  if (a3)
  {
    [(ASTUIGazeEnrollmentManager *)self _learnCalibration];
  }
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(ASTUIGazeEnrollmentManager *)self enrollmentComplete])
  {
    [(ASTUICalibrationStrategy *)self->_calibrationStrategy calibratedGazePointForGazePoint:x, y];
    x = v6;
    y = v7;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)captureCurrentEnrollmentPoint:(CGPoint)a3 gazePoint:(CGPoint)a4 positionName:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = a5;
  v11 = objc_opt_new();
  [v11 setPredictedPoint:{x, y}];
  [v11 setGroundTruthPoint:{v8, v7}];
  [v11 setPositionName:v10];

  [(ASTUICalibrationStrategy *)self->_calibrationStrategy captureGazeEnrollmentPoint:v11];
}

- (void)_setupCalibrationStrategy
{
  [(ASTUICalibrationStrategy *)self->_calibrationStrategy reset];
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  v4 = [v3 assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy];

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = off_278CDC340;
  }

  else
  {
    v5 = &off_278CDC358;
  }

  v6 = *v5;
  v7 = objc_opt_new();
  calibrationStrategy = self->_calibrationStrategy;
  self->_calibrationStrategy = v7;

  MEMORY[0x2821F96F8]();
}

@end