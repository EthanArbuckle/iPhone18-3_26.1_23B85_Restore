@interface FMTSAnomaly
- (FMTSAnomaly)initWithTime:(id)a3 timestamp:(unint64_t)a4 location:(id)a5 events:(id)a6;
- (id)description;
- (int)duration;
@end

@implementation FMTSAnomaly

- (FMTSAnomaly)initWithTime:(id)a3 timestamp:(unint64_t)a4 location:(id)a5 events:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = FMTSAnomaly;
  v14 = [(FMTSAnomaly *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, a3);
    v15->_startTimestamp = a4;
    objc_storeStrong(&v15->_startLocation, a5);
    v15->_endTimestamp = 0;
    v15->_hasEnded = 0;
    objc_storeStrong(&v15->_events, a6);
    v16 = v15;
  }

  return v15;
}

- (int)duration
{
  LODWORD(v3) = [(FMTSAnomaly *)self hasEnded];
  if (v3)
  {
    v4 = [(FMTSAnomaly *)self endTimestamp];
    return (v4 - [(FMTSAnomaly *)self startTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (id)description
{
  v3 = [(FMTSAnomaly *)self startTime];
  v4 = [(FMTSAnomaly *)self startTimestamp];
  v5 = [(FMTSAnomaly *)self startLocation];
  v6 = [(FMTSAnomaly *)self endTimestamp];
  v7 = [(FMTSAnomaly *)self hasEnded];
  v8 = [(FMTSAnomaly *)self events];
  v9 = v8;
  v10 = @"NO";
  if (v7)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"startTime %@, startTimestamp %llu, startLocation %@, endTimestamp %llu, hasEnded %@, events %@", v3, v4, v5, v6, v10, v8];

  return v11;
}

@end