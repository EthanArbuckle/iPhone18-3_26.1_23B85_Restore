@interface ASTUISingularMatrixCalibrationStrategy
- (ASTUISingularMatrixCalibrationStrategy)init;
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3;
- (id)learnCalibrationForPoints:(id)a3;
- (void)captureGazeEnrollmentPoint:(id)a3;
- (void)learnCalibration;
@end

@implementation ASTUISingularMatrixCalibrationStrategy

- (ASTUISingularMatrixCalibrationStrategy)init
{
  v6.receiver = self;
  v6.super_class = ASTUISingularMatrixCalibrationStrategy;
  v2 = [(ASTUISingularMatrixCalibrationStrategy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (void)captureGazeEnrollmentPoint:(id)a3
{
  store = self->_store;
  v4 = a3;
  [v4 groundTruthPoint];
  v6 = v5;
  v8 = v7;
  [v4 predictedPoint];
  v10 = v9;
  v12 = v11;

  [(ASTUIGazeEnrollmentStore *)store saveEnrollmentPoint:v6 withGazePoint:v8, v10, v12];
}

- (void)learnCalibration
{
  v3 = [(ASTUIGazeEnrollmentStore *)self->_store enrollmentPointToGazePointDict];
  v4 = [(ASTUISingularMatrixCalibrationStrategy *)self learnCalibrationForPoints:v3];

  [(ASTUIGazeEnrollmentStore *)self->_store saveCalibratedArray:v4];
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)a3
{
  v5.receiver = self;
  v5.super_class = ASTUISingularMatrixCalibrationStrategy;
  [(ASTUILinearMatrixCalibrationStrategy *)&v5 calibratedGazePointForGazePoint:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)learnCalibrationForPoints:(id)a3
{
  v5.receiver = self;
  v5.super_class = ASTUISingularMatrixCalibrationStrategy;
  v3 = [(ASTUILinearMatrixCalibrationStrategy *)&v5 learnCalibrationForPoints:a3];

  return v3;
}

@end