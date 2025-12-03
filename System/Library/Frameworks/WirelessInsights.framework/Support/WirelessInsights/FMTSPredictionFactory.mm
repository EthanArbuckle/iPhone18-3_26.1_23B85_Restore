@interface FMTSPredictionFactory
+ (id)predictionWithType:(signed __int16)type predictionTime:(id)time predictionSources:(id)sources numPrevTimesUntilAnomaly:(unint64_t)anomaly numPrevPredictions:(unint64_t)predictions numPrevPredictionsCorrect:(unint64_t)correct predictedTimeUntilAnomaly:(int)untilAnomaly predictedDuration:(int)self0 confidenceAnomaly:(double)self1 confidenceDuration:(double)self2 confidenceTimeUntilAnomaly:(double)self3 predictionTimestamp:(unint64_t)self4;
@end

@implementation FMTSPredictionFactory

+ (id)predictionWithType:(signed __int16)type predictionTime:(id)time predictionSources:(id)sources numPrevTimesUntilAnomaly:(unint64_t)anomaly numPrevPredictions:(unint64_t)predictions numPrevPredictionsCorrect:(unint64_t)correct predictedTimeUntilAnomaly:(int)untilAnomaly predictedDuration:(int)self0 confidenceAnomaly:(double)self1 confidenceDuration:(double)self2 confidenceTimeUntilAnomaly:(double)self3 predictionTimestamp:(unint64_t)self4
{
  typeCopy = type;
  timeCopy = time;
  sourcesCopy = sources;
  if ((typeCopy - 1) < 3 && (v24 = *(&off_1002AC478)[(typeCopy - 1)], (v25 = objc_opt_class()) != 0))
  {
    LODWORD(v28) = duration;
    v26 = [[v25 alloc] init:timeCopy predictionSources:sourcesCopy numPrevTimesUntilAnomaly:anomaly numPrevPredictions:predictions numPrevPredictionsCorrect:correct predictedTimeUntilAnomaly:untilAnomaly predictedDuration:confidenceAnomaly confidenceAnomaly:confidenceDuration confidenceDuration:timeUntilAnomaly confidenceTimeUntilAnomaly:v28 predictionTimestamp:timestamp];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end