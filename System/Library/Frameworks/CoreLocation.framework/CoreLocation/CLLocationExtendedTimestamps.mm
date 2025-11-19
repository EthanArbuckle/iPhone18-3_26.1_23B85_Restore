@interface CLLocationExtendedTimestamps
- (CLLocationExtendedTimestamps)initWithCLLocation:(id)a3 systemTime:(id)a4 machContinuousTimeSec:(double)a5;
- (CLLocationExtendedTimestamps)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLLocationExtendedTimestamps

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationExtendedTimestamps;
  [(CLLocationExtendedTimestamps *)&v3 dealloc];
}

- (CLLocationExtendedTimestamps)initWithCLLocation:(id)a3 systemTime:(id)a4 machContinuousTimeSec:(double)a5
{
  v10.receiver = self;
  v10.super_class = CLLocationExtendedTimestamps;
  v8 = [(CLLocationExtendedTimestamps *)&v10 init];
  if (v8)
  {
    v8->_location = a3;
    v8->_systemTimeNotUserTime = a4;
    v8->_machContinuousTimeSec = a5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [[(CLLocationExtendedTimestamps *)self location] copyWithZone:a3];
  v7 = [(NSDate *)[(CLLocationExtendedTimestamps *)self systemTimeNotUserTime] copyWithZone:a3];
  machContinuousTimeSec = self->_machContinuousTimeSec;

  return [v5 initWithCLLocation:v6 systemTime:v7 machContinuousTimeSec:machContinuousTimeSec];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[CLLocationExtendedTimestamps location](self forKey:{"location"), @"CLLocationExtendedTimestampsLocation"}];
  [a3 encodeObject:-[CLLocationExtendedTimestamps systemTimeNotUserTime](self forKey:{"systemTimeNotUserTime"), @"CLLocationExtendedTimestampsSystemTime"}];
  [(CLLocationExtendedTimestamps *)self machContinuousTimeSec];

  [a3 encodeDouble:@"CLLocationExtendedTimestampsMachContinuousTime" forKey:?];
}

- (CLLocationExtendedTimestamps)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"CLLocationExtendedTimestampsLocation"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"CLLocationExtendedTimestampsSystemTime"];
  [a3 decodeDoubleForKey:@"CLLocationExtendedTimestampsMachContinuousTime"];

  return [(CLLocationExtendedTimestamps *)self initWithCLLocation:v6 systemTime:v7 machContinuousTimeSec:?];
}

@end