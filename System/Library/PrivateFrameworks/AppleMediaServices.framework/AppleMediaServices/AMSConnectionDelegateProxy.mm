@interface AMSConnectionDelegateProxy
+ (id)proxyWithDelegate:(id)delegate;
- (id)delegate;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation AMSConnectionDelegateProxy

+ (id)proxyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_alloc_init(AMSConnectionDelegateProxy);
  [(AMSConnectionDelegateProxy *)v4 setDelegate:delegateCopy];

  return v4;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  delegate = [(AMSConnectionDelegateProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate methodSignatureForSelector:selector];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  delegate = [(AMSConnectionDelegateProxy *)self delegate];
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:delegate];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end