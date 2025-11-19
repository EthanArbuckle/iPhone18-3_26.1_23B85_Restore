@interface LARatchetStateValueExpired
- (double)duration;
@end

@implementation LARatchetStateValueExpired

- (double)duration
{
  v3.receiver = self;
  v3.super_class = LARatchetStateValueExpired;
  [(LARatchetStateValue *)&v3 duration];
  return result;
}

@end