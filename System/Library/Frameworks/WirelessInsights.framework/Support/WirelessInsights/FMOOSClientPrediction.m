@interface FMOOSClientPrediction
- (FMOOSClientPrediction)initWithPredictedCell:(id)a3 nextCells:(id)a4 oosAreaSeenCount:(int)a5 predictedOOSDuration:(double)a6 validPredictionDuration:(double)a7 isSent:(BOOL)a8;
@end

@implementation FMOOSClientPrediction

- (FMOOSClientPrediction)initWithPredictedCell:(id)a3 nextCells:(id)a4 oosAreaSeenCount:(int)a5 predictedOOSDuration:(double)a6 validPredictionDuration:(double)a7 isSent:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v21.receiver = self;
  v21.super_class = FMOOSClientPrediction;
  v17 = [(FMOOSClientPrediction *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_predictedRecoveryCell, a3);
    objc_storeStrong(&v18->_nextCells, a4);
    v18->_oosAreaSeenCount = a5;
    v18->_predictedOOSDuration = a6;
    v18->_validPredictionDuration = a7;
    v18->_isSent = a8;
    v19 = v18;
  }

  return v18;
}

@end