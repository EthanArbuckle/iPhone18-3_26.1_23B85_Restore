@interface EXSceneSession
@end

@implementation EXSceneSession

void __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke_cold_1();
  }

  v3 = _EXSignpostLog();
  if ([WeakRetained signpost] && os_signpost_enabled(v3))
  {
    v4 = v3;
    v5 = [WeakRetained signpost];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v4, OS_SIGNPOST_EVENT, v6, "extensionkit-lifecycle", "XPC connection invalidate", v11, 2u);
      }
    }
  }

  v7 = [WeakRetained sceneConnectionListener];
  [v7 invalidate];

  v8 = [WeakRetained identifier];

  if (v8)
  {
    v9 = +[_EXSceneSessionManager sharedInstance];
    v10 = [WeakRetained identifier];
    [v9 removeSessionForIdentifier:v10];
  }
}

void __56___EXSceneSession_connectSceneSessionWithRequest_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "XPC interface invalidated for session '%{public}@'.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end