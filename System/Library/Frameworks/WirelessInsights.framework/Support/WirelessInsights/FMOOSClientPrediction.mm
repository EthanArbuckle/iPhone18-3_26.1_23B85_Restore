@interface FMOOSClientPrediction
- (FMOOSClientPrediction)initWithPredictedCell:(id)cell nextCells:(id)cells oosAreaSeenCount:(int)count predictedOOSDuration:(double)duration validPredictionDuration:(double)predictionDuration isSent:(BOOL)sent;
@end

@implementation FMOOSClientPrediction

- (FMOOSClientPrediction)initWithPredictedCell:(id)cell nextCells:(id)cells oosAreaSeenCount:(int)count predictedOOSDuration:(double)duration validPredictionDuration:(double)predictionDuration isSent:(BOOL)sent
{
  cellCopy = cell;
  cellsCopy = cells;
  v21.receiver = self;
  v21.super_class = FMOOSClientPrediction;
  v17 = [(FMOOSClientPrediction *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_predictedRecoveryCell, cell);
    objc_storeStrong(&v18->_nextCells, cells);
    v18->_oosAreaSeenCount = count;
    v18->_predictedOOSDuration = duration;
    v18->_validPredictionDuration = predictionDuration;
    v18->_isSent = sent;
    v19 = v18;
  }

  return v18;
}

@end