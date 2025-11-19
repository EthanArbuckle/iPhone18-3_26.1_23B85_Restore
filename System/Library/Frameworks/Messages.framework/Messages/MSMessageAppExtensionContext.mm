@interface MSMessageAppExtensionContext
@end

@implementation MSMessageAppExtensionContext

void __84___MSMessageAppExtensionContext__extensionContextHostProtocolAllowedClassesForItems__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS____MSMessageAppExtensionContext;
  v1 = objc_msgSendSuper2(&v7, sel__extensionContextHostProtocolAllowedClassesForItems);
  v2 = MEMORY[0x1E695DFA8];
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 setWithArray:v3];

  [v4 unionSet:v1];
  v5 = [v4 copy];
  v6 = _extensionContextHostProtocolAllowedClassesForItems_allowedClasses;
  _extensionContextHostProtocolAllowedClassesForItems_allowedClasses = v5;
}

void __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = +[_MSExtensionGlobalState sharedInstance];
    [v3 setActiveExtensionContext:*(a1 + 32)];
  }
}

void __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (+[_MSExtensionGlobalState sharedInstance](_MSExtensionGlobalState, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), [v2 activeExtensionContext], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(a1 + 32), v3, v2, v3 == v4))
  {
    v5 = +[_MSExtensionGlobalState sharedInstance];
    [v5 setActiveExtensionContext:0];
  }

  else
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "_MSExtensionGlobalState: not clearing active extension context because either it is not the primary or a new extension context has already been created.", v14, 2u);
    }
  }

  v6 = ms_traceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __81___MSMessageAppExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke_2_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

void __64___MSMessageAppExtensionContext__installPrincipalObjectObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _principalObject];

  if (v1)
  {
    [WeakRetained _handlePrincipalObjectCreated];
  }
}

void __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_2;
  v3[3] = &unk_1E83A2E98;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __59___MSMessageAppExtensionContext_openURL_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke_2;
  v3[3] = &unk_1E83A2EC0;
  v3[4] = *(a1 + 32);
  [v2 updateSnapshotWithCompletionBlock:v3];
}

void __62___MSMessageAppExtensionContext__hostDidBeginDeferredTeardown__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 remoteProxy];
    [v4 _updateSnapshotForNextLaunch:v3];
  }
}

void __62___MSMessageAppExtensionContext_beginDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) _principalObject];
    [v4 disableUserInteraction];
  }
}

void __60___MSMessageAppExtensionContext_endDisablingUserInteraction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) _principalObject];
    [v4 enableUserInteraction];
  }
}

@end