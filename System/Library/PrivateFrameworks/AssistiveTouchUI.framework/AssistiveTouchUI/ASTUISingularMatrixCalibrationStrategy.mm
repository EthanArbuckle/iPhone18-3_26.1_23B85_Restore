@interface ASTUISingularMatrixCalibrationStrategy
- (ASTUISingularMatrixCalibrationStrategy)init;
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point;
- (id)learnCalibrationForPoints:(id)points;
- (void)captureGazeEnrollmentPoint:(id)point;
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

- (void)captureGazeEnrollmentPoint:(id)point
{
  store = self->_store;
  pointCopy = point;
  [pointCopy groundTruthPoint];
  v6 = v5;
  v8 = v7;
  [pointCopy predictedPoint];
  v10 = v9;
  v12 = v11;

  [(ASTUIGazeEnrollmentStore *)store saveEnrollmentPoint:v6 withGazePoint:v8, v10, v12];
}

- (void)learnCalibration
{
  enrollmentPointToGazePointDict = [(ASTUIGazeEnrollmentStore *)self->_store enrollmentPointToGazePointDict];
  v4 = [(ASTUISingularMatrixCalibrationStrategy *)self learnCalibrationForPoints:enrollmentPointToGazePointDict];

  [(ASTUIGazeEnrollmentStore *)self->_store saveCalibratedArray:v4];
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point
{
  v5.receiver = self;
  v5.super_class = ASTUISingularMatrixCalibrationStrategy;
  [(ASTUILinearMatrixCalibrationStrategy *)&v5 calibratedGazePointForGazePoint:point.x, point.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)learnCalibrationForPoints:(id)points
{
  v5.receiver = self;
  v5.super_class = ASTUISingularMatrixCalibrationStrategy;
  v3 = [(ASTUILinearMatrixCalibrationStrategy *)&v5 learnCalibrationForPoints:points];

  return v3;
}

@end