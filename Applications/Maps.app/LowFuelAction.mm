@interface LowFuelAction
- (LowFuelAction)initWithEngineType:(int)a3;
@end

@implementation LowFuelAction

- (LowFuelAction)initWithEngineType:(int)a3
{
  v5.receiver = self;
  v5.super_class = LowFuelAction;
  result = [(LowFuelAction *)&v5 init];
  if (result)
  {
    result->_engineType = a3;
  }

  return result;
}

@end