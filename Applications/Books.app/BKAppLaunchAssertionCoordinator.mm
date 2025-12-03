@interface BKAppLaunchAssertionCoordinator
- (BKAppLaunchAssertionCoordinator)initWithCondition:(unint64_t)condition;
- (BOOL)leave;
@end

@implementation BKAppLaunchAssertionCoordinator

- (BOOL)leave
{
  holdCount = self->_holdCount;
  if (!holdCount)
  {
    return 0;
  }

  v3 = holdCount - 1;
  self->_holdCount = v3;
  return v3 == 0;
}

- (BKAppLaunchAssertionCoordinator)initWithCondition:(unint64_t)condition
{
  v5.receiver = self;
  v5.super_class = BKAppLaunchAssertionCoordinator;
  result = [(BKAppLaunchAssertionCoordinator *)&v5 init];
  if (result)
  {
    result->_condition = condition;
  }

  return result;
}

@end