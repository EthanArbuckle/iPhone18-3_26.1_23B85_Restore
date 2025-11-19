@interface SOExtensionViewService
- (SORemoteExtensionContext)extensionContext;
- (id)exportedInterface;
- (id)remoteViewControllerInterface;
- (void)_connectChildView;
- (void)connectToContextWithSessionID:(id)a3 completion:(id)a4;
- (void)loadView;
@end

@implementation SOExtensionViewService

- (void)loadView
{
  v3 = SO_LOG_SOExtensionViewService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "Loading view for view service", v5, 2u);
  }

  v4 = objc_opt_new();
  [(SOExtensionViewService *)self setView:v4];
}

- (id)remoteViewControllerInterface
{
  v2 = objc_opt_class();

  return [v2 _remoteViewControllerInterface];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 _exportedInterface];
}

- (void)connectToContextWithSessionID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696B0F8];
  v8 = a3;
  v9 = [v7 _sharedExtensionContextVendor];
  v10 = [v9 _extensionContextForUUID:v8];

  [(SOExtensionViewService *)self setExtensionContext:v10];
  v11 = [(SOExtensionViewService *)self extensionContext];
  [v11 setViewService:self];

  v12 = SO_LOG_SOExtensionViewService();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SOExtensionViewService connectToContextWithSessionID:v12 completion:?];
  }

  [(SOExtensionViewService *)self _connectChildView];
  if (v6)
  {
    v6[2](v6);
  }
}

- (void)_connectChildView
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 extensionContext];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "Couldn't find child view controller for context (%{public}@)", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (SORemoteExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

- (void)connectToContextWithSessionID:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 extensionContext];
  OUTLINED_FUNCTION_0_5();
  v7 = v4;
  _os_log_debug_impl(&dword_1C1317000, a2, OS_LOG_TYPE_DEBUG, "Connecting view service (%{public}@) to context (%{public}@)", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end