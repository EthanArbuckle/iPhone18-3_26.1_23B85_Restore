@interface HMProxyObjectIVar
- (void)dealloc;
@end

@implementation HMProxyObjectIVar

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = HMProxyObjectIVar;
  [(HMProxyObjectIVar *)&v3 dealloc];
}

@end