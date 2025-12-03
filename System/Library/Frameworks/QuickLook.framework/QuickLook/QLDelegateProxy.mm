@interface QLDelegateProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (id)firstDelegate;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)secondDelegate;
- (void)forwardInvocation:(id)invocation;
@end

@implementation QLDelegateProxy

- (BOOL)respondsToSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_secondDelegate);
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  v6 = [WeakRetained methodSignatureForSelector:selector];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_secondDelegate);
    v8 = [v9 methodSignatureForSelector:selector];
  }

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_firstDelegate);
    [invocationCopy selector];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_firstDelegate);
      [invocationCopy invokeWithTarget:v8];
    }
  }

  v9 = objc_loadWeakRetained(&self->_secondDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_secondDelegate);
    [invocationCopy selector];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_secondDelegate);
      [invocationCopy invokeWithTarget:v13];
    }
  }
}

- (id)firstDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);

  return WeakRetained;
}

- (id)secondDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secondDelegate);

  return WeakRetained;
}

@end