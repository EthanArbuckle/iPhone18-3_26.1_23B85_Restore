@interface QLStateManagerProxy
- (QLPreviewControllerStateProtocolHostOnly)stateManager;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation QLStateManagerProxy

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_stateManager);
    v7 = [v6 methodSignatureForSelector:a3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = QLStateManagerProxy;
    v7 = [(QLStateManagerProxy *)&v9 methodSignatureForSelector:sel_dropMethod];
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_stateManager);
    [v6 invokeWithTarget:v5];
  }
}

- (QLPreviewControllerStateProtocolHostOnly)stateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  return WeakRetained;
}

@end