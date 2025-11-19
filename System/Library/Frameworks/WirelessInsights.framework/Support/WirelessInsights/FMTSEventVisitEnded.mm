@interface FMTSEventVisitEnded
- (FMTSEventVisitEnded)initWithTimestamp:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6;
- (NSDictionary)detailsAsDict;
- (id)description;
@end

@implementation FMTSEventVisitEnded

- (FMTSEventVisitEnded)initWithTimestamp:(unint64_t)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6
{
  v13.receiver = self;
  v13.super_class = FMTSEventVisitEnded;
  v9 = [(FMTSEvent *)&v13 initWithTimestamp:a3];
  v10 = v9;
  if (v9)
  {
    v9->_latitude = a4;
    v9->_longitude = a5;
    v9->_accuracy = a6;
    v11 = v9;
  }

  return v10;
}

- (NSDictionary)detailsAsDict
{
  v8[0] = @"latitude";
  [(FMTSEventVisitEnded *)self latitude];
  v3 = [NSNumber numberWithDouble:?];
  v9[0] = v3;
  v8[1] = @"longitude";
  [(FMTSEventVisitEnded *)self longitude];
  v4 = [NSNumber numberWithDouble:?];
  v9[1] = v4;
  v8[2] = @"accuracy";
  [(FMTSEventVisitEnded *)self accuracy];
  v5 = [NSNumber numberWithDouble:?];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMTSEventVisitEnded;
  v3 = [(FMTSEvent *)&v7 description];
  [(FMTSEventVisitEnded *)self accuracy];
  v5 = [NSString stringWithFormat:@"FMTSEventVisitEnded: %@, accuracy %lf", v3, v4];

  return v5;
}

@end