@interface AMSConnectionDelegateProxy
+ (id)proxyWithDelegate:(id)a3;
- (id)delegate;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation AMSConnectionDelegateProxy

+ (id)proxyWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSConnectionDelegateProxy);
  [(AMSConnectionDelegateProxy *)v4 setDelegate:v3];

  return v4;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(AMSConnectionDelegateProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 methodSignatureForSelector:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(AMSConnectionDelegateProxy *)self delegate];
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:v4];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end