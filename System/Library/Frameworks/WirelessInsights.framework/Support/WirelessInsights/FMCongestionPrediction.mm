@interface FMCongestionPrediction
- (FMCongestionPrediction)initWithSeenCount:(int)count predictedBadCells:(id)cells predictedGoodCells:(id)goodCells predictedTimeUntilCongestion:(unint64_t)congestion predictedTimeInCongestion:(unint64_t)inCongestion;
- (double)actualTimeInCongestion;
- (double)actualTimeUntilCongestion;
- (id)description;
- (void)activateAtTime:(id)time;
- (void)end;
- (void)leftCongestionAtTime:(id)time;
@end

@implementation FMCongestionPrediction

- (FMCongestionPrediction)initWithSeenCount:(int)count predictedBadCells:(id)cells predictedGoodCells:(id)goodCells predictedTimeUntilCongestion:(unint64_t)congestion predictedTimeInCongestion:(unint64_t)inCongestion
{
  cellsCopy = cells;
  goodCellsCopy = goodCells;
  v27.receiver = self;
  v27.super_class = FMCongestionPrediction;
  v15 = [(FMCongestionPrediction *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_seenCount = count;
    v15->_state = 0;
    objc_storeStrong(&v15->_predictedBadCells, cells);
    objc_storeStrong(&v16->_predictedGoodCells, goodCells);
    v16->_predictedTimeUntilCongestion = congestion;
    v16->_predictedTimeInCongestion = inCongestion;
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

- (void)activateAtTime:(id)time
{
  timeCopy = time;
  if (![(FMCongestionPrediction *)self state])
  {
    self->_state = 1;
    objc_storeStrong(&self->_activatedTime, time);
  }
}

- (void)leftCongestionAtTime:(id)time
{
  timeCopy = time;
  if ([(FMCongestionPrediction *)self state]== 1)
  {
    self->_state = 2;
    objc_storeStrong(&self->_leftCongestionTime, time);
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
  activatedTime = [(FMCongestionPrediction *)self activatedTime];
  receivedTime = [(FMCongestionPrediction *)self receivedTime];
  v5 = 0.0;
  if (-[FMCongestionPrediction state](self, "state") && activatedTime && [activatedTime compare:receivedTime] != -1)
  {
    [activatedTime timeIntervalSinceDate:receivedTime];
    v5 = v6;
  }

  return v5;
}

- (double)actualTimeInCongestion
{
  leftCongestionTime = [(FMCongestionPrediction *)self leftCongestionTime];
  activatedTime = [(FMCongestionPrediction *)self activatedTime];
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

  if (activatedTime && leftCongestionTime && [leftCongestionTime compare:activatedTime] != -1)
  {
    [leftCongestionTime timeIntervalSinceDate:activatedTime];
    v5 = v6;
  }

LABEL_8:

  return v5;
}

- (id)description
{
  state = [(FMCongestionPrediction *)self state];
  seenCount = [(FMCongestionPrediction *)self seenCount];
  predictedBadCells = [(FMCongestionPrediction *)self predictedBadCells];
  predictedGoodCells = [(FMCongestionPrediction *)self predictedGoodCells];
  predictedTimeUntilCongestion = [(FMCongestionPrediction *)self predictedTimeUntilCongestion];
  predictedTimeInCongestion = [(FMCongestionPrediction *)self predictedTimeInCongestion];
  receivedTime = [(FMCongestionPrediction *)self receivedTime];
  activatedTime = [(FMCongestionPrediction *)self activatedTime];
  leftCongestionTime = [(FMCongestionPrediction *)self leftCongestionTime];
  if ([(FMCongestionPrediction *)self isFedMobilityPredictionEventSubmitted])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  actualBadCells = [(FMCongestionPrediction *)self actualBadCells];
  actualGoodCells = [(FMCongestionPrediction *)self actualGoodCells];
  v11 = [NSString stringWithFormat:@"state %u, seenCount %d, predictedBadCells %@, predictedGoodCells %@, predictedTimeUntilCongestion %llu, predictedTimeInCongestion %llu, receivedTime %@, activatedTime %@, leftCongestionTime %@, isFedMobilityPredictionEventSubmitted %@, actualBadCells %@, actualGoodCells %@, suppressionReason %u", state, seenCount, predictedBadCells, predictedGoodCells, predictedTimeUntilCongestion, predictedTimeInCongestion, receivedTime, activatedTime, leftCongestionTime, v8, actualBadCells, actualGoodCells, [(FMCongestionPrediction *)self suppressionReason]];

  return v11;
}

@end