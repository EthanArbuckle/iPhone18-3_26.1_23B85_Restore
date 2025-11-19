@interface CXCallDirectoryNSExtensionManager
+ (NSDictionary)baseExtensionMatchingAttributes;
- (CXCallDirectoryNSExtensionManager)init;
- (CXCallDirectoryNSExtensionManagerDelegate)delegate;
- (void)_beginMatchingExtensionsIfNecessary;
- (void)_extensionForIdentifier:(id)a3 containingAppBundleURL:(id)a4 completion:(id)a5;
- (void)beginMatchingExtensions;
- (void)dealloc;
- (void)extensionsWithCompletionHandler:(id)a3;
- (void)pluginsDidInstall:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation CXCallDirectoryNSExtensionManager

- (CXCallDirectoryNSExtensionManager)init
{
  v7.receiver = self;
  v7.super_class = CXCallDirectoryNSExtensionManager;
  v2 = [(CXCallDirectoryNSExtensionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.calldirectorynsextensionmanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v5 addObserver:v2];

  return v2;
}

- (void)dealloc
{
  v3 = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];

  if (v3)
  {
    v4 = MEMORY[0x1E696ABD0];
    v5 = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];
    [v4 endMatchingExtensions:v5];
  }

  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = CXCallDirectoryNSExtensionManager;
  [(CXCallDirectoryNSExtensionManager *)&v7 dealloc];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXCallDirectoryNSExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CXCallDirectoryNSExtensionManager_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __55__CXCallDirectoryNSExtensionManager_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)beginMatchingExtensions
{
  v3 = [(CXCallDirectoryNSExtensionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CXCallDirectoryNSExtensionManager_beginMatchingExtensions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (NSDictionary)baseExtensionMatchingAttributes
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v12[0] = @"com.apple.callkit.call-directory";
    v12[1] = @"com.apple.live-lookup";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v12;
    v4 = 2;
  }

  else
  {
    v11 = @"com.apple.callkit.call-directory";
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v11;
    v4 = 1;
  }

  v5 = [v2 arrayWithObjects:v3 count:v4];
  v9 = *MEMORY[0x1E696A2F8];
  v10 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_beginMatchingExtensionsIfNecessary
{
  v3 = [(CXCallDirectoryNSExtensionManager *)self extensionMatchingContext];

  if (!v3)
  {
    v4 = [objc_opt_class() baseExtensionMatchingAttributes];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E696ABD0];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke;
    v11 = &unk_1E7C07048;
    objc_copyWeak(&v14, &location);
    v12 = self;
    v6 = v4;
    v13 = v6;
    v7 = [v5 beginMatchingExtensionsWithAttributes:v6 completion:&v8];
    [(CXCallDirectoryNSExtensionManager *)self setExtensionMatchingContext:v7, v8, v9, v10, v11, v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = CXDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_cold_1(a1);
      }
    }

    else
    {
      v10 = [WeakRetained queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_2;
      block[3] = &unk_1E7C06C80;
      v11 = v5;
      v12 = *(a1 + 32);
      v14 = v11;
      v15 = v12;
      v16 = v8;
      dispatch_async(v10, block);

      v9 = v14;
    }
  }
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "matchingExtensions=%@", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) setExtensions:v4];
  v12 = [*(a1 + 40) delegateQueue];

  if (v12)
  {
    v13 = [*(a1 + 40) delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_14;
    block[3] = &unk_1E7C06C80;
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryNSExtensionManager:*(a1 + 40) extensionsChanged:*(a1 + 48)];
}

- (void)extensionsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() baseExtensionMatchingAttributes];
  [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v4 completion:v3];
}

void __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_extensionForIdentifier:(id)a3 containingAppBundleURL:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() baseExtensionMatchingAttributes];
  v11 = [v10 mutableCopy];

  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A2E0]];
  v12 = [v8 path];

  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A2B0]];
  v13 = MEMORY[0x1E696ABD0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke;
  v16[3] = &unk_1E7C07098;
  v17 = v11;
  v18 = v7;
  v14 = v7;
  v15 = v11;
  [v13 extensionsWithMatchingAttributes:v15 completion:v16];
}

void __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 firstObject];
  }

  else
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke_cold_1(a1);
    }

    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pluginsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDirectoryNSExtensionManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegateQueue];

  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "pluginKitProxies=%@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [*(a1 + 32) extensions];
          v13 = [v11 pluginIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v3 addObject:v14];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v15 = CXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_1B47F3000, v15, OS_LOG_TYPE_DEFAULT, "installedPlugins=%@", buf, 0xCu);
    }

    if ([v3 count])
    {
      v16 = [*(a1 + 32) delegateQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke_20;
      v18[3] = &unk_1E7C06BE0;
      v18[4] = *(a1 + 32);
      v19 = v3;
      dispatch_async(v16, v18);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __55__CXCallDirectoryNSExtensionManager_pluginsDidInstall___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callDirectoryNSExtensionManager:*(a1 + 32) extensionsChanged:*(a1 + 40)];
}

- (CXCallDirectoryNSExtensionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __72__CXCallDirectoryNSExtensionManager__beginMatchingExtensionsIfNecessary__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_1B47F3000, v2, v3, "Error beginning to match extensions with attributes %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)extensionWithIdentifier:(int)a1 inContainingAppWithProcessIdentifier:(NSObject *)a2 completion:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "No containing app bundle ID found for containingAppPID %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __109__CXCallDirectoryNSExtensionManager_extensionWithIdentifier_inContainingAppWithProcessIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  v7 = v3;
  _os_log_error_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_ERROR, "No NSExtension found for identifier %@ containingAppBundleURL %@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __95__CXCallDirectoryNSExtensionManager__extensionForIdentifier_containingAppBundleURL_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_1B47F3000, v2, v3, "Error matching extensions with attributes %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end