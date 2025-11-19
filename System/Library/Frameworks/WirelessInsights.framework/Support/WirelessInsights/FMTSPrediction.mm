@interface FMTSPrediction
- (BOOL)isEqualToPrediction:(id)a3;
- (id)description;
- (id)init:(id)a3 predictionSources:(id)a4 numPrevTimesUntilAnomaly:(unint64_t)a5 numPrevPredictions:(unint64_t)a6 numPrevPredictionsCorrect:(unint64_t)a7 predictedTimeUntilAnomaly:(int)a8 predictedDuration:(int)a9 confidenceAnomaly:(double)a10 confidenceDuration:(double)a11 confidenceTimeUntilAnomaly:(double)a12 predictionTimestamp:(unint64_t)a13;
- (int)actualDuration;
- (int)actualTimeUntilAnomaly;
- (void)predictedAnomalyEndedAtTimestamp:(unint64_t)a3;
@end

@implementation FMTSPrediction

- (id)init:(id)a3 predictionSources:(id)a4 numPrevTimesUntilAnomaly:(unint64_t)a5 numPrevPredictions:(unint64_t)a6 numPrevPredictionsCorrect:(unint64_t)a7 predictedTimeUntilAnomaly:(int)a8 predictedDuration:(int)a9 confidenceAnomaly:(double)a10 confidenceDuration:(double)a11 confidenceTimeUntilAnomaly:(double)a12 predictionTimestamp:(unint64_t)a13
{
  v23 = a3;
  v24 = a4;
  v29.receiver = self;
  v29.super_class = FMTSPrediction;
  v25 = [(FMTSPrediction *)&v29 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_predictionTime, a3);
    objc_storeStrong(&v26->_predictionSources, a4);
    v26->_numPrevTimesUntilAnomaly = a5;
    v26->_numPrevPredictions = a6;
    v26->_numPrevPredictionCorrect = a7;
    v26->_predictedTimeUntilAnomaly = a8;
    v26->_predictedDuration = a9;
    v26->_confidenceAnomaly = a10;
    v26->_confidenceDuration = a11;
    v26->_confidenceTimeUntilAnomaly = a12;
    v26->_didAnomalyHappen = 0;
    v26->_actualStartTimestamp = 0;
    v26->_actualEndTimestamp = 0;
    v26->_predictionTimestamp = a13;
    v27 = v26;
  }

  return v26;
}

- (void)predictedAnomalyEndedAtTimestamp:(unint64_t)a3
{
  if ([(FMTSPrediction *)self didAnomalyHappen])
  {
    self->_actualEndTimestamp = a3;
  }
}

- (int)actualTimeUntilAnomaly
{
  LODWORD(v3) = [(FMTSPrediction *)self didAnomalyHappen];
  if (v3)
  {
    v4 = [(FMTSPrediction *)self actualStartTimestamp];
    return (v4 - [(FMTSPrediction *)self predictionTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (int)actualDuration
{
  LODWORD(v3) = [(FMTSPrediction *)self didAnomalyHappen];
  if (v3)
  {
    v4 = [(FMTSPrediction *)self actualEndTimestamp];
    return (v4 - [(FMTSPrediction *)self actualStartTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (BOOL)isEqualToPrediction:(id)a3
{
  v4 = a3;
  if (([(FMTSPrediction *)self conformsToProtocol:&OBJC_PROTOCOL___FMTSPredictionProtocol]& 1) != 0)
  {
    v5 = self;
    v6 = [(FMTSPrediction *)v5 predictedAnomalyType];
    if (v6 == [v4 predictedAnomalyType])
    {
      v7 = [(FMTSPrediction *)v5 predictionSources];
      v8 = [v4 predictionSources];
      v9 = [v7 isEqualToSet:v8];
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
  v3 = [(FMTSPrediction *)self predictionTime];
  v4 = [(FMTSPrediction *)self predictionSources];
  v23 = [v4 count];
  v22 = [(FMTSPrediction *)self numPrevTimesUntilAnomaly];
  v5 = [(FMTSPrediction *)self numPrevPredictions];
  v6 = [(FMTSPrediction *)self numPrevPredictionCorrect];
  v7 = [(FMTSPrediction *)self predictedTimeUntilAnomaly];
  v8 = [(FMTSPrediction *)self predictedDuration];
  [(FMTSPrediction *)self confidenceAnomaly];
  v10 = v9;
  [(FMTSPrediction *)self confidenceDuration];
  v12 = v11;
  [(FMTSPrediction *)self confidenceTimeUntilAnomaly];
  v14 = v13;
  v15 = [(FMTSPrediction *)self predictionTimestamp];
  v16 = [(FMTSPrediction *)self actualStartTimestamp];
  v17 = [(FMTSPrediction *)self actualEndTimestamp];
  v18 = [(FMTSPrediction *)self didAnomalyHappen];
  v19 = @"NO";
  if (v18)
  {
    v19 = @"YES";
  }

  v20 = [NSString stringWithFormat:@"predictionTime %@, # of predictionSources %lu, numPrevTimesUntilAnomaly %lu, numPrevPredictions %lu, numPrevPredictionsCorrect %lu, predictedTimeUntilAnomaly %d, predictedDuration %d, confidenceAnomaly %f, confidenceDuration %f, confidenceTimeUntilAnomaly %f, predictionTimestamp %llu, actualStartTimestamp %llu, actualEndTimestamp %llu, didAnomalyHappen %@", v3, v23, v22, v5, v6, v7, v8, v10, v12, v14, v15, v16, v17, v19];

  return v20;
}

@end