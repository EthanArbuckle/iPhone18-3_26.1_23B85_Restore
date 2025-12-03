@interface _AXEFixedDurationQueueValueWithTimestamp
+ (id)createWithValue:(id)value timestamp:(id)timestamp;
- (_AXEFixedDurationQueueValueWithTimestamp)initWithValue:(id)value timestamp:(id)timestamp;
@end

@implementation _AXEFixedDurationQueueValueWithTimestamp

+ (id)createWithValue:(id)value timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  valueCopy = value;
  v8 = [[self alloc] initWithValue:valueCopy timestamp:timestampCopy];

  return v8;
}

- (_AXEFixedDurationQueueValueWithTimestamp)initWithValue:(id)value timestamp:(id)timestamp
{
  valueCopy = value;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = _AXEFixedDurationQueueValueWithTimestamp;
  v9 = [(_AXEFixedDurationQueueValueWithTimestamp *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_timestamp, timestamp);
  }

  return v10;
}

@end