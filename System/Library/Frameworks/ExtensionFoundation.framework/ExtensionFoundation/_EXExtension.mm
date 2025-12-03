@interface _EXExtension
- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken;
- (BOOL)loadDelegate;
- (id)delegate;
- (void)didFinishLaunching;
- (void)loadDelegate;
- (void)prepareForSceneConnectionWithConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)setStrongDelegate:(id)delegate;
- (void)willFinishLaunching;
@end

@implementation _EXExtension

- (BOOL)loadDelegate
{
  delegateClass = [(_EXExtension *)self delegateClass];
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_EXExtension *)delegateClass loadDelegate];
  }

  v5 = objc_alloc_init(delegateClass);
  if (v5)
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_EXExtension *)v5 loadDelegate];
    }

    [(_EXExtension *)self setDelegate:v5];
    [(_EXExtension *)self setStrongDelegate:v5];
  }

  return v5 != 0;
}

- (void)setStrongDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_strongDelegate != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    objc_storeStrong(&self->_strongDelegate, delegate);
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    strongDelegate = self->_strongDelegate;
    if (strongDelegate)
    {
      self->_strongDelegate = 0;
    }

    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)willFinishLaunching
{
  delegate = [(_EXExtension *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_EXExtension *)self delegate];
    [delegate2 extensionWillFinishLaunching:self];
  }
}

- (void)didFinishLaunching
{
  delegate = [(_EXExtension *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_EXExtension *)self delegate];
    [delegate2 extensionDidFinishLaunching:self];
  }
}

- (void)prepareForSceneConnectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(_EXExtension *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_EXExtension *)self delegate];
    [delegate2 extension:self prepareForSceneConnectionWithConfiguration:configurationCopy];
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken
{
  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  hostProcess = [currentProcess hostProcess];

  v5 = hostProcess;
  if (hostProcess)
  {
    [hostProcess auditToken];
    v5 = hostProcess;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadDelegate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "Extension delegate is: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end