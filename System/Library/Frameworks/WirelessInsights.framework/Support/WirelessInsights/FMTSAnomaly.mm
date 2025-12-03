@interface FMTSAnomaly
- (FMTSAnomaly)initWithTime:(id)time timestamp:(unint64_t)timestamp location:(id)location events:(id)events;
- (id)description;
- (int)duration;
@end

@implementation FMTSAnomaly

- (FMTSAnomaly)initWithTime:(id)time timestamp:(unint64_t)timestamp location:(id)location events:(id)events
{
  timeCopy = time;
  locationCopy = location;
  eventsCopy = events;
  v18.receiver = self;
  v18.super_class = FMTSAnomaly;
  v14 = [(FMTSAnomaly *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, time);
    v15->_startTimestamp = timestamp;
    objc_storeStrong(&v15->_startLocation, location);
    v15->_endTimestamp = 0;
    v15->_hasEnded = 0;
    objc_storeStrong(&v15->_events, events);
    v16 = v15;
  }

  return v15;
}

- (int)duration
{
  LODWORD(v3) = [(FMTSAnomaly *)self hasEnded];
  if (v3)
  {
    endTimestamp = [(FMTSAnomaly *)self endTimestamp];
    return (endTimestamp - [(FMTSAnomaly *)self startTimestamp]) / 0x3B9ACA00;
  }

  return v3;
}

- (id)description
{
  startTime = [(FMTSAnomaly *)self startTime];
  startTimestamp = [(FMTSAnomaly *)self startTimestamp];
  startLocation = [(FMTSAnomaly *)self startLocation];
  endTimestamp = [(FMTSAnomaly *)self endTimestamp];
  hasEnded = [(FMTSAnomaly *)self hasEnded];
  events = [(FMTSAnomaly *)self events];
  v9 = events;
  v10 = @"NO";
  if (hasEnded)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"startTime %@, startTimestamp %llu, startLocation %@, endTimestamp %llu, hasEnded %@, events %@", startTime, startTimestamp, startLocation, endTimestamp, v10, events];

  return v11;
}

@end