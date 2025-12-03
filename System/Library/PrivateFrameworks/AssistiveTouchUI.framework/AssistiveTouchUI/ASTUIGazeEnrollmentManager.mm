@interface ASTUIGazeEnrollmentManager
+ (id)sharedManager;
- (ASTUIGazeEnrollmentManager)init;
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point;
- (void)_setupCalibrationStrategy;
- (void)captureCurrentEnrollmentPoint:(CGPoint)point gazePoint:(CGPoint)gazePoint positionName:(id)name;
- (void)setEnrollmentComplete:(BOOL)complete;
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
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__ASTUIGazeEnrollmentManager_init__block_invoke;
    v6[3] = &unk_278CDC5D8;
    objc_copyWeak(&v7, &location);
    [mEMORY[0x277CE7E20] registerUpdateBlock:v6 forRetrieveSelector:sel_assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy withListener:v3];

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

- (void)setEnrollmentComplete:(BOOL)complete
{
  self->_enrollmentComplete = complete;
  if (complete)
  {
    [(ASTUIGazeEnrollmentManager *)self _learnCalibration];
  }
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)captureCurrentEnrollmentPoint:(CGPoint)point gazePoint:(CGPoint)gazePoint positionName:(id)name
{
  y = gazePoint.y;
  x = gazePoint.x;
  v7 = point.y;
  v8 = point.x;
  nameCopy = name;
  v11 = objc_opt_new();
  [v11 setPredictedPoint:{x, y}];
  [v11 setGroundTruthPoint:{v8, v7}];
  [v11 setPositionName:nameCopy];

  [(ASTUICalibrationStrategy *)self->_calibrationStrategy captureGazeEnrollmentPoint:v11];
}

- (void)_setupCalibrationStrategy
{
  [(ASTUICalibrationStrategy *)self->_calibrationStrategy reset];
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy = [mEMORY[0x277CE7E20] assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy];

  if (assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy)
  {
    if (assistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy != 1)
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