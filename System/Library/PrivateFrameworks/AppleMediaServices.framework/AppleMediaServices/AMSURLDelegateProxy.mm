@interface AMSURLDelegateProxy
- (AMSURLDelegateProxy)initWithSession:(id)session delegate:(id)delegate;
- (AMSURLSession)session;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)delegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)invalidate;
@end

@implementation AMSURLDelegateProxy

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMSURLSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)invalidate
{
  [(AMSURLDelegateProxy *)self setSession:0];

  [(AMSURLDelegateProxy *)self setDelegate:0];
}

- (AMSURLDelegateProxy)initWithSession:(id)session delegate:(id)delegate
{
  sessionCopy = session;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AMSURLDelegateProxy;
  v8 = [(AMSURLDelegateProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_session, sessionCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  session = [(AMSURLDelegateProxy *)self session];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    session2 = [(AMSURLDelegateProxy *)self session];
  }

  else
  {
    delegate = [(AMSURLDelegateProxy *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      session2 = [(AMSURLDelegateProxy *)self delegate];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = AMSURLDelegateProxy;
      session2 = [(AMSURLDelegateProxy *)&v11 forwardingTargetForSelector:selector];
    }
  }

  return session2;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  session = [(AMSURLDelegateProxy *)self session];
  if (objc_opt_respondsToSelector())
  {
    v6 = 1;
  }

  else
  {
    delegate = [(AMSURLDelegateProxy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = AMSURLDelegateProxy;
      v6 = [(AMSURLDelegateProxy *)&v9 respondsToSelector:selector];
    }
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = AMSURLDelegateProxy;
  v3 = [(AMSURLDelegateProxy *)&v5 methodSignatureForSelector:selector];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:"@:"];
  }

  return v3;
}

@end