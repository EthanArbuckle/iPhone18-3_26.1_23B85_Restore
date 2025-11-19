@interface QLDelegateProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (id)firstDelegate;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)secondDelegate;
- (void)forwardInvocation:(id)a3;
@end

@implementation QLDelegateProxy

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  v6 = [WeakRetained methodSignatureForSelector:a3];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_secondDelegate);
    v8 = [v9 methodSignatureForSelector:a3];
  }

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_firstDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_firstDelegate);
    [v14 selector];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_firstDelegate);
      [v14 invokeWithTarget:v8];
    }
  }

  v9 = objc_loadWeakRetained(&self->_secondDelegate);
  if (v9)
  {
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_secondDelegate);
    [v14 selector];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_secondDelegate);
      [v14 invokeWithTarget:v13];
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