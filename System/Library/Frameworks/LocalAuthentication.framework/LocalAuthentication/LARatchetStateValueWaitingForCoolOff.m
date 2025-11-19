@interface LARatchetStateValueWaitingForCoolOff
- (double)duration;
@end

@implementation LARatchetStateValueWaitingForCoolOff

- (double)duration
{
  v3.receiver = self;
  v3.super_class = LARatchetStateValueWaitingForCoolOff;
  [(LARatchetStateValue *)&v3 duration];
  return result;
}

@end