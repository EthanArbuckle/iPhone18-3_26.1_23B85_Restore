@interface BLSHSuppressionEvent
- (BLSHSuppressionEvent)initWithCoreMotionEvent:(id)event timestamp:(unint64_t)timestamp;
- (BLSHSuppressionEvent)initWithType:(unint64_t)type reason:(unint64_t)reason timestamp:(unint64_t)timestamp;
- (id)description;
@end

@implementation BLSHSuppressionEvent

- (BLSHSuppressionEvent)initWithCoreMotionEvent:(id)event timestamp:(unint64_t)timestamp
{
  eventCopy = event;
  if ([eventCopy type] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  reason = [eventCopy reason];

  return [(BLSHSuppressionEvent *)self initWithType:v7 reason:reason timestamp:timestamp];
}

- (BLSHSuppressionEvent)initWithType:(unint64_t)type reason:(unint64_t)reason timestamp:(unint64_t)timestamp
{
  v9.receiver = self;
  v9.super_class = BLSHSuppressionEvent;
  result = [(BLSHSuppressionEvent *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_reason = reason;
    result->_machContinuousTimestamp = timestamp;
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

  build = [v3 build];

  return build;
}

@end