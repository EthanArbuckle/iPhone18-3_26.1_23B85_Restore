@interface LARatchetStateValueArmed
- (double)duration;
@end

@implementation LARatchetStateValueArmed

- (double)duration
{
  v3.receiver = self;
  v3.super_class = LARatchetStateValueArmed;
  [(LARatchetStateValue *)&v3 duration];
  return result;
}

@end