@interface RestorationAction
- (RestorationAction)init;
@end

@implementation RestorationAction

- (RestorationAction)init
{
  v3.receiver = self;
  v3.super_class = RestorationAction;
  result = [(RestorationAction *)&v3 init];
  if (result)
  {
    result->_source = 6;
    result->_fidelity = 0xFFFFFFFLL;
  }

  return result;
}

@end