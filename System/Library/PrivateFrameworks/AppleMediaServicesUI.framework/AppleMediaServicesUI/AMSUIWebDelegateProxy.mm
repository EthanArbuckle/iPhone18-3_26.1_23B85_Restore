@interface AMSUIWebDelegateProxy
- (AMSUIWebDelegateProxy)initWithDelegate:(id)delegate;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)delegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation AMSUIWebDelegateProxy

- (AMSUIWebDelegateProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = AMSUIWebDelegateProxy;
  v5 = [(AMSUIWebDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  delegate = [(AMSUIWebDelegateProxy *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AMSUIWebDelegateProxy *)self delegate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AMSUIWebDelegateProxy;
    delegate2 = [(AMSUIWebDelegateProxy *)&v9 forwardingTargetForSelector:selector];
  }

  return delegate2;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  delegate = [(AMSUIWebDelegateProxy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AMSUIWebDelegateProxy;
    v6 = [(AMSUIWebDelegateProxy *)&v8 respondsToSelector:selector];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = AMSUIWebDelegateProxy;
  v3 = [(AMSUIWebDelegateProxy *)&v5 methodSignatureForSelector:selector];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:"@:"];
  }

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end