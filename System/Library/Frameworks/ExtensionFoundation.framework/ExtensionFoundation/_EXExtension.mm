@interface _EXExtension
- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken;
- (BOOL)loadDelegate;
- (id)delegate;
- (void)didFinishLaunching;
- (void)loadDelegate;
- (void)prepareForSceneConnectionWithConfiguration:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setStrongDelegate:(id)a3;
- (void)willFinishLaunching;
@end

@implementation _EXExtension

- (BOOL)loadDelegate
{
  v3 = [(_EXExtension *)self delegateClass];
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(_EXExtension *)v3 loadDelegate];
  }

  v5 = objc_alloc_init(v3);
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

- (void)setStrongDelegate:(id)a3
{
  v5 = a3;
  if (self->_strongDelegate != v5)
  {
    objc_storeWeak(&self->_delegate, v5);
    objc_storeStrong(&self->_strongDelegate, a3);
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(_EXExtension *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_EXExtension *)self delegate];
    [v5 extensionWillFinishLaunching:self];
  }
}

- (void)didFinishLaunching
{
  v3 = [(_EXExtension *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_EXExtension *)self delegate];
    [v5 extensionDidFinishLaunching:self];
  }
}

- (void)prepareForSceneConnectionWithConfiguration:(id)a3
{
  v7 = a3;
  v4 = [(_EXExtension *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_EXExtension *)self delegate];
    [v6 extension:self prepareForSceneConnectionWithConfiguration:v7];
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken
{
  v4 = [MEMORY[0x1E69C75D0] currentProcess];
  v7 = [v4 hostProcess];

  v5 = v7;
  if (v7)
  {
    [v7 auditToken];
    v5 = v7;
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
  v4 = a1;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "Extension delegate is: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end