@interface FMCongestionPrediction
- (FMCongestionPrediction)initWithSeenCount:(int)a3 predictedBadCells:(id)a4 predictedGoodCells:(id)a5 predictedTimeUntilCongestion:(unint64_t)a6 predictedTimeInCongestion:(unint64_t)a7;
- (double)actualTimeInCongestion;
- (double)actualTimeUntilCongestion;
- (id)description;
- (void)activateAtTime:(id)a3;
- (void)end;
- (void)leftCongestionAtTime:(id)a3;
@end

@implementation FMCongestionPrediction

- (FMCongestionPrediction)initWithSeenCount:(int)a3 predictedBadCells:(id)a4 predictedGoodCells:(id)a5 predictedTimeUntilCongestion:(unint64_t)a6 predictedTimeInCongestion:(unint64_t)a7
{
  v13 = a4;
  v14 = a5;
  v27.receiver = self;
  v27.super_class = FMCongestionPrediction;
  v15 = [(FMCongestionPrediction *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_seenCount = a3;
    v15->_state = 0;
    objc_storeStrong(&v15->_predictedBadCells, a4);
    objc_storeStrong(&v16->_predictedGoodCells, a5);
    v16->_predictedTimeUntilCongestion = a6;
    v16->_predictedTimeInCongestion = a7;
    v17 = +[NSDate now];
    receivedTime = v16->_receivedTime;
    v16->_receivedTime = v17;

    activatedTime = v16->_activatedTime;
    v16->_activatedTime = 0;

    leftCongestionTime = v16->_leftCongestionTime;
    v16->_leftCongestionTime = 0;

    v16->_isFedMobilityPredictionEventSubmitted = 0;
    v21 = objc_alloc_init(NSMutableArray);
    actualBadCells = v16->_actualBadCells;
    v16->_actualBadCells = v21;

    v23 = objc_alloc_init(NSMutableArray);
    actualGoodCells = v16->_actualGoodCells;
    v16->_actualGoodCells = v23;

    v16->_suppressionReason = 0;
    v25 = v16;
  }

  return v16;
}

- (void)activateAtTime:(id)a3
{
  v5 = a3;
  if (![(FMCongestionPrediction *)self state])
  {
    self->_state = 1;
    objc_storeStrong(&self->_activatedTime, a3);
  }
}

- (void)leftCongestionAtTime:(id)a3
{
  v5 = a3;
  if ([(FMCongestionPrediction *)self state]== 1)
  {
    self->_state = 2;
    objc_storeStrong(&self->_leftCongestionTime, a3);
  }
}

- (void)end
{
  if ([(FMCongestionPrediction *)self state]== 2)
  {
    self->_state = 100;
  }
}

- (double)actualTimeUntilCongestion
{
  v3 = [(FMCongestionPrediction *)self activatedTime];
  v4 = [(FMCongestionPrediction *)self receivedTime];
  v5 = 0.0;
  if (-[FMCongestionPrediction state](self, "state") && v3 && [v3 compare:v4] != -1)
  {
    [v3 timeIntervalSinceDate:v4];
    v5 = v6;
  }

  return v5;
}

- (double)actualTimeInCongestion
{
  v3 = [(FMCongestionPrediction *)self leftCongestionTime];
  v4 = [(FMCongestionPrediction *)self activatedTime];
  if ([(FMCongestionPrediction *)self state]== 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.0;
    if ([(FMCongestionPrediction *)self state]!= 100)
    {
      goto LABEL_8;
    }
  }

  if (v4 && v3 && [v3 compare:v4] != -1)
  {
    [v3 timeIntervalSinceDate:v4];
    v5 = v6;
  }

LABEL_8:

  return v5;
}

- (id)description
{
  v14 = [(FMCongestionPrediction *)self state];
  v13 = [(FMCongestionPrediction *)self seenCount];
  v16 = [(FMCongestionPrediction *)self predictedBadCells];
  v15 = [(FMCongestionPrediction *)self predictedGoodCells];
  v3 = [(FMCongestionPrediction *)self predictedTimeUntilCongestion];
  v4 = [(FMCongestionPrediction *)self predictedTimeInCongestion];
  v5 = [(FMCongestionPrediction *)self receivedTime];
  v6 = [(FMCongestionPrediction *)self activatedTime];
  v7 = [(FMCongestionPrediction *)self leftCongestionTime];
  if ([(FMCongestionPrediction *)self isFedMobilityPredictionEventSubmitted])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(FMCongestionPrediction *)self actualBadCells];
  v10 = [(FMCongestionPrediction *)self actualGoodCells];
  v11 = [NSString stringWithFormat:@"state %u, seenCount %d, predictedBadCells %@, predictedGoodCells %@, predictedTimeUntilCongestion %llu, predictedTimeInCongestion %llu, receivedTime %@, activatedTime %@, leftCongestionTime %@, isFedMobilityPredictionEventSubmitted %@, actualBadCells %@, actualGoodCells %@, suppressionReason %u", v14, v13, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, [(FMCongestionPrediction *)self suppressionReason]];

  return v11;
}

@end