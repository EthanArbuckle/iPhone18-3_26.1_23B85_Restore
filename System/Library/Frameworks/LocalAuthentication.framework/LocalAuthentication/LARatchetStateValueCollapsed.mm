@interface LARatchetStateValueCollapsed
- (double)duration;
@end

@implementation LARatchetStateValueCollapsed

- (double)duration
{
  v3.receiver = self;
  v3.super_class = LARatchetStateValueCollapsed;
  [(LARatchetStateValue *)&v3 duration];
  return result;
}

@end