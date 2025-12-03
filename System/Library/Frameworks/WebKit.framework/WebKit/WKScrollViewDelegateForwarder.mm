@interface WKScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)selector;
- (WKScrollViewDelegateForwarder)initWithInternalDelegate:(id)delegate externalDelegate:(id)externalDelegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation WKScrollViewDelegateForwarder

- (WKScrollViewDelegateForwarder)initWithInternalDelegate:(id)delegate externalDelegate:(id)externalDelegate
{
  v9.receiver = self;
  v9.super_class = WKScrollViewDelegateForwarder;
  v6 = [(WKScrollViewDelegateForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_internalDelegate = delegate;
    objc_storeWeak(&v6->_externalDelegate.m_weakReference, externalDelegate);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  v8.receiver = self;
  v8.super_class = WKScrollViewDelegateForwarder;
  v6 = [(WKScrollViewDelegateForwarder *)&v8 methodSignatureForSelector:selector];
  if (!v6)
  {
    v6 = [(WKWebView *)self->_internalDelegate methodSignatureForSelector:selector];
    if (!v6)
    {
      v6 = [WeakRetained methodSignatureForSelector:selector];
    }
  }

  if (WeakRetained)
  {
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
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

- (void)forwardInvocation:(id)invocation
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  selector = [invocation selector];
  v7 = objc_opt_respondsToSelector();
  if (sel_isEqual(selector, sel_viewForZoomingInScrollView_))
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
    [invocation invokeWithTarget:self->_internalDelegate];
  }

LABEL_8:
  if (v8)
  {
    [invocation invokeWithTarget:WeakRetained];
  }

  if ((v9 & 1) == 0)
  {
    [(WKWebView *)self->_internalDelegate _didInvokeUIScrollViewDelegateCallback];
  }

  if (((v7 | v8) & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = WKScrollViewDelegateForwarder;
    [(WKScrollViewDelegateForwarder *)&v10 forwardInvocation:invocation];
  }

  if (WeakRetained)
  {
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = objc_opt_respondsToSelector();
  if (sel_isEqual(selector, sel_viewForZoomingInScrollView_))
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