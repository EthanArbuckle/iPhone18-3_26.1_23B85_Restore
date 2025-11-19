@interface ADSessionAssertion
- (ADSessionAssertion)initWithTimestamp:(unint64_t)a3 reason:(id)a4;
- (NSString)description;
@end

@implementation ADSessionAssertion

- (NSString)description
{
  v3 = [NSString alloc];
  v10.receiver = self;
  v10.super_class = ADSessionAssertion;
  v4 = [(ADSessionAssertion *)&v10 description];
  timestamp = self->_timestamp;
  reason = self->_reason;
  mach_absolute_time();
  AFMachAbsoluteTimeGetTimeInterval();
  v8 = [v3 initWithFormat:@"%@ {timestamp = %llu, reason = %@, duration = %f seconds}", v4, timestamp, reason, v7];

  return v8;
}

- (ADSessionAssertion)initWithTimestamp:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ADSessionAssertion;
  v7 = [(ADSessionAssertion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_timestamp = a3;
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;
  }

  return v8;
}

@end