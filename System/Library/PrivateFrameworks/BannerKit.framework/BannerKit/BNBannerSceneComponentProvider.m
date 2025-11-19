@interface BNBannerSceneComponentProvider
+ (id)delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:(id)a3;
+ (void)registerDelegate:(id)a3 forSceneForPresentableWithUniqueIdentifier:(id)a4;
+ (void)unregisterDelegateForSceneForPresentableWithUniqueIdentifier:(id)a3;
- (BNBannerSceneComponentProvider)initWithScene:(id)a3;
- (BNBannerSceneComponentProviderDelegate)delegate;
- (UIScene)_scene;
- (id)_actionRespondersForScene:(id)a3;
- (id)_newSceneWindowWithRootViewController:(id)a3;
- (id)_settingsDiffActionsForScene:(id)a3;
- (void)_setScene:(id)a3;
@end

@implementation BNBannerSceneComponentProvider

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

+ (void)registerDelegate:(id)a3 forSceneForPresentableWithUniqueIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11 && v7)
  {
    if (registerDelegate_forSceneForPresentableWithUniqueIdentifier__onceToken != -1)
    {
      +[BNBannerSceneComponentProvider registerDelegate:forSceneForPresentableWithUniqueIdentifier:];
    }

    v8 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v8);
    v9 = [__presentableUniqueIDsToDelegates objectForKey:v7];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"BNBannerSource.m" lineNumber:739 description:{@"Delegate already registered for scene with unique ID '%@'", v7}];
    }

    [__presentableUniqueIDsToDelegates setObject:v11 forKey:v7];
    objc_sync_exit(v8);
  }
}

uint64_t __94__BNBannerSceneComponentProvider_registerDelegate_forSceneForPresentableWithUniqueIdentifier___block_invoke()
{
  __presentableUniqueIDsToDelegates = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)unregisterDelegateForSceneForPresentableWithUniqueIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v4);
    [__presentableUniqueIDsToDelegates removeObjectForKey:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

+ (id)delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v4);
    v5 = [__presentableUniqueIDsToDelegates objectForKey:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newSceneWindowWithRootViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = objc_opt_class();
  v7 = WeakRetained;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    [BNBannerSceneComponentProvider _newSceneWindowWithRootViewController:];
  }

  v10 = off_1E81E4100;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v4 isAccessibilityIgnoringSmartInvertColors];
    if (v11)
    {
      v10 = off_1E81E40F8;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_alloc(*v10) initWithWindowScene:v9];
  [v12 setAccessibilityIgnoresInvertColors:v11];
  [v12 setRootViewController:v4];
  [v12 setHidden:0];

  return v12;
}

- (BNBannerSceneComponentProvider)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BNBannerSceneComponentProvider;
  v5 = [(BNBannerSceneComponentProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BNBannerSceneComponentProvider *)v5 _setScene:v4];
  }

  return v6;
}

- (void)_setScene:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained != v4)
  {
    if (!v4)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [v6 sceneWillInvalidateForBannerSceneComponentProvider:self];
      }
    }

    v7 = [v4 bn_presentableUniqueIdentifier];
    v8 = [objc_opt_class() delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:v7];
    v9 = v8;
    if (!v4 || v8)
    {
      v10 = objc_storeWeak(&self->_scene, v4);

      if (v4 && v9)
      {
        [(BNBannerSceneComponentProvider *)self setDelegate:v9];
        [objc_opt_class() unregisterDelegateForSceneForPresentableWithUniqueIdentifier:v7];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v9 containerViewControllerForBannerSceneComponentProvider:self];
          containerViewController = self->_containerViewController;
          self->_containerViewController = v11;

          v13 = [(BNBannerSceneComponentProvider *)self _newSceneWindowWithRootViewController:self->_containerViewController];
          sceneWindow = self->_sceneWindow;
          self->_sceneWindow = v13;
        }

        else if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
        {
          [BNBannerSceneComponentProvider _setScene:];
        }
      }
    }

    else if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSceneComponentProvider _setScene:];
    }
  }
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_containerViewController)
  {
    v9[0] = self->_containerViewController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSceneComponentProvider _settingsDiffActionsForScene:];
    }

    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)_actionRespondersForScene:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_containerViewController)
  {
    v9[0] = self->_containerViewController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSceneComponentProvider _actionRespondersForScene:];
    }

    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (BNBannerSceneComponentProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_newSceneWindowWithRootViewController:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  WeakRetained = objc_loadWeakRetained(v0);
  OUTLINED_FUNCTION_0_0();
  [v2 handleFailureInMethod:WeakRetained object:? file:? lineNumber:? description:?];
}

- (void)_setScene:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C42DC000, v0, OS_LOG_TYPE_ERROR, "No delegate registered for scene: %{public}@", v1, 0xCu);
}

- (void)_setScene:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_4(&dword_1C42DC000, v1, v1, "Delegate '%{public}@' is unable to provide a container view controller for scene: %{public}@", v2);
}

- (void)_settingsDiffActionsForScene:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "[BNBannerSceneComponentProvider _settingsDiffActionsForScene:]";
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_4(&dword_1C42DC000, v1, v2, "%{public}s: No container view controller for scene: %{public}@", &v3);
}

- (void)_actionRespondersForScene:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "[BNBannerSceneComponentProvider _actionRespondersForScene:]";
  OUTLINED_FUNCTION_5();
  v5 = v0;
  OUTLINED_FUNCTION_4(&dword_1C42DC000, v1, v2, "%{public}s: No container view controller for scene: %{public}@", &v3);
}

@end