@interface AMSMutableLazyPromise
- (AMSMutableLazyPromise)initWithBlock:(id)a3;
- (AMSMutableLazyPromise)initWithTimeout:(double)a3 block:(id)a4;
@end

@implementation AMSMutableLazyPromise

- (AMSMutableLazyPromise)initWithBlock:(id)a3
{
  v4.receiver = self;
  v4.super_class = AMSMutableLazyPromise;
  return [(AMSLazyPromise *)&v4 initWithBlock:a3];
}

- (AMSMutableLazyPromise)initWithTimeout:(double)a3 block:(id)a4
{
  v5.receiver = self;
  v5.super_class = AMSMutableLazyPromise;
  return [(AMSLazyPromise *)&v5 initWithTimeout:a4 block:a3];
}

@end