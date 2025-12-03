@interface CLLocationExtendedTimestamps
- (CLLocationExtendedTimestamps)initWithCLLocation:(id)location systemTime:(id)time machContinuousTimeSec:(double)sec;
- (CLLocationExtendedTimestamps)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationExtendedTimestamps

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLLocationExtendedTimestamps;
  [(CLLocationExtendedTimestamps *)&v3 dealloc];
}

- (CLLocationExtendedTimestamps)initWithCLLocation:(id)location systemTime:(id)time machContinuousTimeSec:(double)sec
{
  v10.receiver = self;
  v10.super_class = CLLocationExtendedTimestamps;
  v8 = [(CLLocationExtendedTimestamps *)&v10 init];
  if (v8)
  {
    v8->_location = location;
    v8->_systemTimeNotUserTime = time;
    v8->_machContinuousTimeSec = sec;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [[(CLLocationExtendedTimestamps *)self location] copyWithZone:zone];
  v7 = [(NSDate *)[(CLLocationExtendedTimestamps *)self systemTimeNotUserTime] copyWithZone:zone];
  machContinuousTimeSec = self->_machContinuousTimeSec;

  return [v5 initWithCLLocation:v6 systemTime:v7 machContinuousTimeSec:machContinuousTimeSec];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[CLLocationExtendedTimestamps location](self forKey:{"location"), @"CLLocationExtendedTimestampsLocation"}];
  [coder encodeObject:-[CLLocationExtendedTimestamps systemTimeNotUserTime](self forKey:{"systemTimeNotUserTime"), @"CLLocationExtendedTimestampsSystemTime"}];
  [(CLLocationExtendedTimestamps *)self machContinuousTimeSec];

  [coder encodeDouble:@"CLLocationExtendedTimestampsMachContinuousTime" forKey:?];
}

- (CLLocationExtendedTimestamps)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CLLocationExtendedTimestampsLocation"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"CLLocationExtendedTimestampsSystemTime"];
  [coder decodeDoubleForKey:@"CLLocationExtendedTimestampsMachContinuousTime"];

  return [(CLLocationExtendedTimestamps *)self initWithCLLocation:v6 systemTime:v7 machContinuousTimeSec:?];
}

@end