@interface PresentParkedCarAction
- (PresentParkedCarAction)initWithParkedCarAction:(int64_t)a3;
@end

@implementation PresentParkedCarAction

- (PresentParkedCarAction)initWithParkedCarAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PresentParkedCarAction;
  result = [(PresentParkedCarAction *)&v5 init];
  if (result)
  {
    result->_parkedCarAction = a3;
  }

  return result;
}

@end