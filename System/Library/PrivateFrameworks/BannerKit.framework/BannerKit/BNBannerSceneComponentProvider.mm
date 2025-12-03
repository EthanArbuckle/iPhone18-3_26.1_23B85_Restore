@interface BNBannerSceneComponentProvider
+ (id)delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:(id)identifier;
+ (void)registerDelegate:(id)delegate forSceneForPresentableWithUniqueIdentifier:(id)identifier;
+ (void)unregisterDelegateForSceneForPresentableWithUniqueIdentifier:(id)identifier;
- (BNBannerSceneComponentProvider)initWithScene:(id)scene;
- (BNBannerSceneComponentProviderDelegate)delegate;
- (UIScene)_scene;
- (id)_actionRespondersForScene:(id)scene;
- (id)_newSceneWindowWithRootViewController:(id)controller;
- (id)_settingsDiffActionsForScene:(id)scene;
- (void)_setScene:(id)scene;
@end

@implementation BNBannerSceneComponentProvider

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

+ (void)registerDelegate:(id)delegate forSceneForPresentableWithUniqueIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  if (delegateCopy && identifierCopy)
  {
    if (registerDelegate_forSceneForPresentableWithUniqueIdentifier__onceToken != -1)
    {
      +[BNBannerSceneComponentProvider registerDelegate:forSceneForPresentableWithUniqueIdentifier:];
    }

    v8 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v8);
    v9 = [__presentableUniqueIDsToDelegates objectForKey:identifierCopy];

    if (v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BNBannerSource.m" lineNumber:739 description:{@"Delegate already registered for scene with unique ID '%@'", identifierCopy}];
    }

    [__presentableUniqueIDsToDelegates setObject:delegateCopy forKey:identifierCopy];
    objc_sync_exit(v8);
  }
}

uint64_t __94__BNBannerSceneComponentProvider_registerDelegate_forSceneForPresentableWithUniqueIdentifier___block_invoke()
{
  __presentableUniqueIDsToDelegates = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)unregisterDelegateForSceneForPresentableWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    v4 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v4);
    [__presentableUniqueIDsToDelegates removeObjectForKey:v5];
    objc_sync_exit(v4);

    identifierCopy = v5;
  }
}

+ (id)delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = __presentableUniqueIDsToDelegates;
    objc_sync_enter(v4);
    v5 = [__presentableUniqueIDsToDelegates objectForKey:identifierCopy];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newSceneWindowWithRootViewController:(id)controller
{
  controllerCopy = controller;
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
    isAccessibilityIgnoringSmartInvertColors = [controllerCopy isAccessibilityIgnoringSmartInvertColors];
    if (isAccessibilityIgnoringSmartInvertColors)
    {
      v10 = off_1E81E40F8;
    }
  }

  else
  {
    isAccessibilityIgnoringSmartInvertColors = 0;
  }

  v12 = [objc_alloc(*v10) initWithWindowScene:v9];
  [v12 setAccessibilityIgnoresInvertColors:isAccessibilityIgnoringSmartInvertColors];
  [v12 setRootViewController:controllerCopy];
  [v12 setHidden:0];

  return v12;
}

- (BNBannerSceneComponentProvider)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = BNBannerSceneComponentProvider;
  v5 = [(BNBannerSceneComponentProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BNBannerSceneComponentProvider *)v5 _setScene:sceneCopy];
  }

  return v6;
}

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained != sceneCopy)
  {
    if (!sceneCopy)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [v6 sceneWillInvalidateForBannerSceneComponentProvider:self];
      }
    }

    bn_presentableUniqueIdentifier = [sceneCopy bn_presentableUniqueIdentifier];
    v8 = [objc_opt_class() delegateAssociatedWithSceneForPresentableWithUniqueIdentifier:bn_presentableUniqueIdentifier];
    v9 = v8;
    if (!sceneCopy || v8)
    {
      v10 = objc_storeWeak(&self->_scene, sceneCopy);

      if (sceneCopy && v9)
      {
        [(BNBannerSceneComponentProvider *)self setDelegate:v9];
        [objc_opt_class() unregisterDelegateForSceneForPresentableWithUniqueIdentifier:bn_presentableUniqueIdentifier];
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

- (id)_settingsDiffActionsForScene:(id)scene
{
  v9[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
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

- (id)_actionRespondersForScene:(id)scene
{
  v9[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
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