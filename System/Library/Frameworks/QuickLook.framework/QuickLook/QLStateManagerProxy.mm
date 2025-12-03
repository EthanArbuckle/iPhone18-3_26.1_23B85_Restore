@interface QLStateManagerProxy
- (QLPreviewControllerStateProtocolHostOnly)stateManager;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation QLStateManagerProxy

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_stateManager);
    v7 = [v6 methodSignatureForSelector:selector];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = QLStateManagerProxy;
    v7 = [(QLStateManagerProxy *)&v9 methodSignatureForSelector:sel_dropMethod];
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_stateManager);
    [invocationCopy invokeWithTarget:v5];
  }
}

- (QLPreviewControllerStateProtocolHostOnly)stateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  return WeakRetained;
}

@end