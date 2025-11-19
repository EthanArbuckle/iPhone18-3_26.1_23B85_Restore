@interface LARightContextHandler
- (LARightContextHandler)init;
- (LARightContextHandler)initWithDelegate:(id)a3;
- (LARightContextHandlerDelegate)delegate;
- (void)contextDidBecomeInvalid:(id)a3;
- (void)setContext:(id)a3;
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

- (LARightContextHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(LARightContextHandler *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  if (context != v5)
  {
    v7 = v5;
    if (context)
    {
      [(LAContext *)context removeContextObserver:self];
      [(LAContext *)self->_context invalidate];
    }

    objc_storeStrong(&self->_context, a3);
    context = [(LAContext *)self->_context addContextObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](context, v5);
}

- (void)contextDidBecomeInvalid:(id)a3
{
  if (self->_context == a3)
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