@interface FMTSEventVisitStarted
- (FMTSEventVisitStarted)initWithTimestamp:(unint64_t)timestamp latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventVisitStarted

- (FMTSEventVisitStarted)initWithTimestamp:(unint64_t)timestamp latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy
{
  v13.receiver = self;
  v13.super_class = FMTSEventVisitStarted;
  v9 = [(FMTSEvent *)&v13 initWithTimestamp:timestamp];
  v10 = v9;
  if (v9)
  {
    v9->_latitude = latitude;
    v9->_longitude = longitude;
    v9->_accuracy = accuracy;
    v11 = v9;
  }

  return v10;
}

- (NSDictionary)detailsAsDict
{
  v8[0] = @"latitude";
  [(FMTSEventVisitStarted *)self latitude];
  v3 = [NSNumber numberWithDouble:?];
  v9[0] = v3;
  v8[1] = @"longitude";
  [(FMTSEventVisitStarted *)self longitude];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = v4;
  v8[2] = @"accuracy";
  [(FMTSEventVisitStarted *)self accuracy];
  v5 = [NSNumber numberWithDouble:?];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMTSEventVisitStarted;
  v3 = [(FMTSEvent *)&v7 description];
  [(FMTSEventVisitStarted *)self accuracy];
  v5 = [NSString stringWithFormat:@"FMTSEventVisitStarted: %@, accuracy %lf", v3, v4];

  return v5;
}

@end