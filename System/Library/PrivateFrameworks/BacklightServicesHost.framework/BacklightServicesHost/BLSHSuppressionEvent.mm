@interface BLSHSuppressionEvent
- (BLSHSuppressionEvent)initWithCoreMotionEvent:(id)a3 timestamp:(unint64_t)a4;
- (BLSHSuppressionEvent)initWithType:(unint64_t)a3 reason:(unint64_t)a4 timestamp:(unint64_t)a5;
- (id)description;
@end

@implementation BLSHSuppressionEvent

- (BLSHSuppressionEvent)initWithCoreMotionEvent:(id)a3 timestamp:(unint64_t)a4
{
  v6 = a3;
  if ([v6 type] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [v6 reason];

  return [(BLSHSuppressionEvent *)self initWithType:v7 reason:v8 timestamp:a4];
}

- (BLSHSuppressionEvent)initWithType:(unint64_t)a3 reason:(unint64_t)a4 timestamp:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = BLSHSuppressionEvent;
  result = [(BLSHSuppressionEvent *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_reason = a4;
    result->_machContinuousTimestamp = a5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  type = self->_type;
  v5 = NSStringFromBLSAlwaysOnSuppressionType();
  [v3 appendString:v5 withName:@"type"];

  reason = self->_reason;
  v7 = NSStringFromBLSAlwaysOnSuppressionReason();
  [v3 appendString:v7 withName:@"reason"];

  v8 = [v3 build];

  return v8;
}

@end