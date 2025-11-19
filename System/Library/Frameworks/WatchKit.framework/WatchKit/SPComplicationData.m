@interface SPComplicationData
- (SPComplicationData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPComplicationData

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"_TimestampKey"];
  [v5 encodeDouble:@"_TimeToLiveKey" forKey:self->_timeToLive];
}

- (SPComplicationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPComplicationData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_TimestampKey"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    [v4 decodeDoubleForKey:@"_TimeToLiveKey"];
    v5->_timeToLive = v8;
  }

  return v5;
}

@end