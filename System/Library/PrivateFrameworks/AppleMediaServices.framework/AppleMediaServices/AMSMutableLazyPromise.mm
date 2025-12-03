@interface AMSMutableLazyPromise
- (AMSMutableLazyPromise)initWithBlock:(id)block;
- (AMSMutableLazyPromise)initWithTimeout:(double)timeout block:(id)block;
@end

@implementation AMSMutableLazyPromise

- (AMSMutableLazyPromise)initWithBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = AMSMutableLazyPromise;
  return [(AMSLazyPromise *)&v4 initWithBlock:block];
}

- (AMSMutableLazyPromise)initWithTimeout:(double)timeout block:(id)block
{
  v5.receiver = self;
  v5.super_class = AMSMutableLazyPromise;
  return [(AMSLazyPromise *)&v5 initWithTimeout:block block:timeout];
}

@end