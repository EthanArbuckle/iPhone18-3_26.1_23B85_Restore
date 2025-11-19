@interface HMRequestBase
- (id)_init;
@end

@implementation HMRequestBase

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HMRequestBase;
  return [(HMRequestBase *)&v3 init];
}

@end