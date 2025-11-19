@interface _AXEFixedDurationQueueValueWithTimestamp
+ (id)createWithValue:(id)a3 timestamp:(id)a4;
- (_AXEFixedDurationQueueValueWithTimestamp)initWithValue:(id)a3 timestamp:(id)a4;
@end

@implementation _AXEFixedDurationQueueValueWithTimestamp

+ (id)createWithValue:(id)a3 timestamp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithValue:v7 timestamp:v6];

  return v8;
}

- (_AXEFixedDurationQueueValueWithTimestamp)initWithValue:(id)a3 timestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _AXEFixedDurationQueueValueWithTimestamp;
  v9 = [(_AXEFixedDurationQueueValueWithTimestamp *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    objc_storeStrong(&v10->_timestamp, a4);
  }

  return v10;
}

@end