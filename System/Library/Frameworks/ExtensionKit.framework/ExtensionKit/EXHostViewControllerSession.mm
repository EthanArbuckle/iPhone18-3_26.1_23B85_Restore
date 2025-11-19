@interface EXHostViewControllerSession
@end

@implementation EXHostViewControllerSession

void __89___EXHostViewControllerSession_sessionWithProcessConfiguration_configuration_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89___EXHostViewControllerSession_sessionWithProcessConfiguration_configuration_completion___block_invoke_2;
  v3[3] = &unk_1E8401B80;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 resumeWithReadyNotification:v3];
}

void __52___EXHostViewControllerSession_processDidInvalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionProcess];

  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = [*(a1 + 32) extensionProcess];
    v5 = [v4 configuration];
    v6 = [v5 extensionIdentity];
    v7 = [v6 localizedName];
    v8 = [*(a1 + 32) extensionProcess];
    v9 = [v3 _EX_processExitedErrorWithName:v7 pid:{objc_msgSend(v8, "rbs_pid")}];
    [*(a1 + 32) setError:v9];

    v10 = *(a1 + 32);

    [v10 setState:5];
  }
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processDidInvalidate];
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_137(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_137_cold_1();
  }

  [v3 _invalidateSession];
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_138_cold_1();
  }
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_147(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(*(a1 + 56) + 8) + 40) sceneEndpoint];
    if (v2)
    {
      v3 = *(a1 + 40);

      if (v3)
      {
        [*(a1 + 48) setSceneSessionConnection:*(a1 + 40)];
        [*(a1 + 48) setExtensionProcess:*(a1 + 32)];
        v4 = [*(*(*(a1 + 56) + 8) + 40) sceneEndpoint];
        [*(a1 + 48) setRemoteViewControllerEndpoint:v4];

LABEL_8:
        v5 = *(a1 + 48);

        return [v5 setState:2];
      }
    }

    if (*(a1 + 32) && [*(a1 + 48) requiresFBSceneHosting])
    {
      [*(a1 + 48) setExtensionProcess:*(a1 + 32)];
      goto LABEL_8;
    }
  }

  v7 = _EXDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_147_cold_1(a1);
  }

  [*(a1 + 48) setError:*(*(*(a1 + 64) + 8) + 40)];
  return [*(a1 + 48) setState:5];
}

void __59___EXHostViewControllerSession_requestRemoteViewController__block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = _EXDefaultLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __59___EXHostViewControllerSession_requestRemoteViewController__block_invoke_155_cold_1();
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    [v10 setRemoteViewController:v5];
    v11 = 4;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59___EXHostViewControllerSession_requestRemoteViewController__block_invoke_155_cold_2();
    }

    v12 = *(a1 + 32);
    v9 = (a1 + 32);
    [v12 setError:v6];
    v11 = 5;
  }

  [*v9 setState:v11];
}

uint64_t __67___EXHostViewControllerSession_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldAcceptXPCConnection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_137_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_138_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60___EXHostViewControllerSession__internalQueue_prepareToHost__block_invoke_147_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 64) + 8) + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __59___EXHostViewControllerSession_requestRemoteViewController__block_invoke_155_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59___EXHostViewControllerSession_requestRemoteViewController__block_invoke_155_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end