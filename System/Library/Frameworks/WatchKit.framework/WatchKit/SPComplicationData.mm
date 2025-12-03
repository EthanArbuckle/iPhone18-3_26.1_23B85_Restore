@interface SPComplicationData
- (SPComplicationData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPComplicationData

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"_TimestampKey"];
  [coderCopy encodeDouble:@"_TimeToLiveKey" forKey:self->_timeToLive];
}

- (SPComplicationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SPComplicationData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_TimestampKey"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    [coderCopy decodeDoubleForKey:@"_TimeToLiveKey"];
    v5->_timeToLive = v8;
  }

  return v5;
}

@end