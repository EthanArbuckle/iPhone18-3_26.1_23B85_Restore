@interface LowFuelAction
- (LowFuelAction)initWithEngineType:(int)type;
@end

@implementation LowFuelAction

- (LowFuelAction)initWithEngineType:(int)type
{
  v5.receiver = self;
  v5.super_class = LowFuelAction;
  result = [(LowFuelAction *)&v5 init];
  if (result)
  {
    result->_engineType = type;
  }

  return result;
}

@end