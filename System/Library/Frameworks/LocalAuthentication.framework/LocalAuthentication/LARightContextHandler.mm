@interface LARightContextHandler
- (LARightContextHandler)init;
- (LARightContextHandler)initWithDelegate:(id)delegate;
- (LARightContextHandlerDelegate)delegate;
- (void)contextDidBecomeInvalid:(id)invalid;
- (void)setContext:(id)context;
@end

@implementation LARightContextHandler

- (LARightContextHandler)init
{
  v5.receiver = self;
  v5.super_class = LARightContextHandler;
  v2 = [(LARightContextHandler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(LAContext);
    [(LARightContextHandler *)v2 setContext:v3];
  }

  return v2;
}

- (LARightContextHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(LARightContextHandler *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    v7 = contextCopy;
    if (context)
    {
      [(LAContext *)context removeContextObserver:self];
      [(LAContext *)self->_context invalidate];
    }

    objc_storeStrong(&self->_context, context);
    context = [(LAContext *)self->_context addContextObserver:self];
    contextCopy = v7;
  }

  MEMORY[0x1EEE66BB8](context, contextCopy);
}

- (void)contextDidBecomeInvalid:(id)invalid
{
  if (self->_context == invalid)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rightContextDidBecomeInvalid];
  }
}

- (LARightContextHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end