@interface WKScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)a3;
- (WKScrollViewDelegateForwarder)initWithInternalDelegate:(id)a3 externalDelegate:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation WKScrollViewDelegateForwarder

- (WKScrollViewDelegateForwarder)initWithInternalDelegate:(id)a3 externalDelegate:(id)a4
{
  v9.receiver = self;
  v9.super_class = WKScrollViewDelegateForwarder;
  v6 = [(WKScrollViewDelegateForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_internalDelegate = a3;
    objc_storeWeak(&v6->_externalDelegate.m_weakReference, a4);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  v8.receiver = self;
  v8.super_class = WKScrollViewDelegateForwarder;
  v6 = [(WKScrollViewDelegateForwarder *)&v8 methodSignatureForSelector:a3];
  if (!v6)
  {
    v6 = [(WKWebView *)self->_internalDelegate methodSignatureForSelector:a3];
    if (!v6)
    {
      v6 = [WeakRetained methodSignatureForSelector:a3];
    }
  }

  if (WeakRetained)
  {
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = WKScrollViewDelegateForwarder;
  if ([(WKScrollViewDelegateForwarder *)&v7 respondsToSelector:?]|| (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
    v4 = objc_opt_respondsToSelector();
    if (WeakRetained)
    {
    }
  }

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  v6 = [a3 selector];
  v7 = objc_opt_respondsToSelector();
  if (sel_isEqual(v6, sel_viewForZoomingInScrollView_))
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = objc_opt_respondsToSelector();
  if ((v7 & v8 & 1) == 0)
  {
LABEL_6:
    v9 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [(WKWebView *)self->_internalDelegate _willInvokeUIScrollViewDelegateCallback];
  v9 = 0;
  v8 = 1;
  if (v7)
  {
LABEL_7:
    [a3 invokeWithTarget:self->_internalDelegate];
  }

LABEL_8:
  if (v8)
  {
    [a3 invokeWithTarget:WeakRetained];
  }

  if ((v9 & 1) == 0)
  {
    [(WKWebView *)self->_internalDelegate _didInvokeUIScrollViewDelegateCallback];
  }

  if (((v7 | v8) & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = WKScrollViewDelegateForwarder;
    [(WKScrollViewDelegateForwarder *)&v10 forwardInvocation:a3];
  }

  if (WeakRetained)
  {
  }
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = objc_opt_respondsToSelector();
  if (sel_isEqual(a3, sel_viewForZoomingInScrollView_))
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
    v6 = objc_opt_respondsToSelector();
    if (WeakRetained)
    {
    }
  }

  if ((v5 & 1) != 0 && (v6 & 1) == 0)
  {
    return self->_internalDelegate;
  }

  if (v5 & 1 | ((v6 & 1) == 0))
  {
    return 0;
  }

  return objc_loadWeak(&self->_externalDelegate.m_weakReference);
}

@end