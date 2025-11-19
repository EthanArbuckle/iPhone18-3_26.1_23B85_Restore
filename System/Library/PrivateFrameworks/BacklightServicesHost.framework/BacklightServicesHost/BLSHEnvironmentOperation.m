@interface BLSHEnvironmentOperation
- (BLSHEnvironmentOperation)initWithBacklightState:(int64_t)a3;
- (id)description;
@end

@implementation BLSHEnvironmentOperation

- (BLSHEnvironmentOperation)initWithBacklightState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BLSHEnvironmentOperation;
  result = [(BLSHEnvironmentOperation *)&v5 init];
  if (result)
  {
    result->_backlightState = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  backlightState = self->_backlightState;
  v5 = NSStringFromBLSBacklightState();
  v6 = [v3 appendObject:v5 withName:@"backlightState"];

  v7 = [v3 build];

  return v7;
}

@end