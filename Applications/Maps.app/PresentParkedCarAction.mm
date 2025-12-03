@interface PresentParkedCarAction
- (PresentParkedCarAction)initWithParkedCarAction:(int64_t)action;
@end

@implementation PresentParkedCarAction

- (PresentParkedCarAction)initWithParkedCarAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = PresentParkedCarAction;
  result = [(PresentParkedCarAction *)&v5 init];
  if (result)
  {
    result->_parkedCarAction = action;
  }

  return result;
}

@end