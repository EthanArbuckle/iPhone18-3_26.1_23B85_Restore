@interface FMTSPrediction
- (BOOL)isEqualToPrediction:(id)prediction;
- (id)description;
- (id)init:(id)init predictionSources:(id)sources numPrevTimesUntilAnomaly:(unint64_t)anomaly numPrevPredictions:(unint64_t)predictions numPrevPredictionsCorrect:(unint64_t)correct predictedTimeUntilAnomaly:(int)untilAnomaly predictedDuration:(int)duration confidenceAnomaly:(double)self0 confidenceDuration:(double)self1 confidenceTimeUntilAnomaly:(double)self2 predictionTimestamp:(unint64_t)self3;
- (int)actualDuration;
- (int)actualTimeUntilAnomaly;
- (void)predictedAnomalyEndedAtTimestamp:(unint64_t)timestamp;
@end

@implementation FMTSPrediction

- (id)init:(id)init predictionSources:(id)sources numPrevTimesUntilAnomaly:(unint64_t)anomaly numPrevPredictions:(unint64_t)predictions numPrevPredictionsCorrect:(unint64_t)correct predictedTimeUntilAnomaly:(int)untilAnomaly predictedDuration:(int)duration confidenceAnomaly:(double)self0 confidenceDuration:(double)self1 confidenceTimeUntilAnomaly:(double)self2 predictionTimestamp:(unint64_t)self3
{
  initCopy = init;
  sourcesCopy = sources;
  v29.receiver = self;
  v29.super_class = FMTSPrediction;
  v25 = [(FMTSPrediction *)&v29 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_predictionTime, init);
    objc_storeStrong(&v26->_predictionSources, sources);
    v26->_numPrevTimesUntilAnomaly = anomaly;
    v26->_numPrevPredictions = predictions;
    v26->_numPrevPredictionCorrect = correct;
    v26->_predictedTimeUntilAnomaly = untilAnomaly;
    v26->_predictedDuration = duration;
    v26->_confidenceAnomaly = confidenceAnomaly;
    v26->_confidenceDuration = confidenceDuration;
    v26->_confidenceTimeUntilAnomaly = timeUntilAnomaly;
    v26->_didAnomalyHappen = 0;
    v26->_actualStartTimestamp = 0;
    v26->_actualEndTimestamp = 0;
    v26->_predictionTimestamp = timestamp;
    v27 = v26;
  }

  return v26;
}

- (void)predictedAnomalyEndedAtTimestamp:(unint64_t)timestamp
{
  if ([(FMTSPrediction *)self didAnomalyHappen])
  {
    self->_actualEndTimestamp = timestamp;
  }
}

- (int)actualTimeUntilAnomaly
{
  LODWORD(v3) = [(FMTSPrediction *)self didAnomalyHappen];
  if (v3)
  {
    actualStartTimestamp = [(FMTSPrediction *)self actualStartTimestamp];
    return (actualStartTimestamp - [(FMTSPrediction *)self predictionTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (int)actualDuration
{
  LODWORD(v3) = [(FMTSPrediction *)self didAnomalyHappen];
  if (v3)
  {
    actualEndTimestamp = [(FMTSPrediction *)self actualEndTimestamp];
    return (actualEndTimestamp - [(FMTSPrediction *)self actualStartTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (BOOL)isEqualToPrediction:(id)prediction
{
  predictionCopy = prediction;
  if (([(FMTSPrediction *)self conformsToProtocol:&OBJC_PROTOCOL___FMTSPredictionProtocol]& 1) != 0)
  {
    selfCopy = self;
    predictedAnomalyType = [(FMTSPrediction *)selfCopy predictedAnomalyType];
    if (predictedAnomalyType == [predictionCopy predictedAnomalyType])
    {
      predictionSources = [(FMTSPrediction *)selfCopy predictionSources];
      predictionSources2 = [predictionCopy predictionSources];
      v9 = [predictionSources isEqualToSet:predictionSources2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  predictionTime = [(FMTSPrediction *)self predictionTime];
  predictionSources = [(FMTSPrediction *)self predictionSources];
  v23 = [predictionSources count];
  numPrevTimesUntilAnomaly = [(FMTSPrediction *)self numPrevTimesUntilAnomaly];
  numPrevPredictions = [(FMTSPrediction *)self numPrevPredictions];
  numPrevPredictionCorrect = [(FMTSPrediction *)self numPrevPredictionCorrect];
  predictedTimeUntilAnomaly = [(FMTSPrediction *)self predictedTimeUntilAnomaly];
  predictedDuration = [(FMTSPrediction *)self predictedDuration];
  [(FMTSPrediction *)self confidenceAnomaly];
  v10 = v9;
  [(FMTSPrediction *)self confidenceDuration];
  v12 = v11;
  [(FMTSPrediction *)self confidenceTimeUntilAnomaly];
  v14 = v13;
  predictionTimestamp = [(FMTSPrediction *)self predictionTimestamp];
  actualStartTimestamp = [(FMTSPrediction *)self actualStartTimestamp];
  actualEndTimestamp = [(FMTSPrediction *)self actualEndTimestamp];
  didAnomalyHappen = [(FMTSPrediction *)self didAnomalyHappen];
  v19 = @"NO";
  if (didAnomalyHappen)
  {
    v19 = @"YES";
  }

  v20 = [NSString stringWithFormat:@"predictionTime %@, # of predictionSources %lu, numPrevTimesUntilAnomaly %lu, numPrevPredictions %lu, numPrevPredictionsCorrect %lu, predictedTimeUntilAnomaly %d, predictedDuration %d, confidenceAnomaly %f, confidenceDuration %f, confidenceTimeUntilAnomaly %f, predictionTimestamp %llu, actualStartTimestamp %llu, actualEndTimestamp %llu, didAnomalyHappen %@", predictionTime, v23, numPrevTimesUntilAnomaly, numPrevPredictions, numPrevPredictionCorrect, predictedTimeUntilAnomaly, predictedDuration, v10, v12, v14, predictionTimestamp, actualStartTimestamp, actualEndTimestamp, v19];

  return v20;
}

@end