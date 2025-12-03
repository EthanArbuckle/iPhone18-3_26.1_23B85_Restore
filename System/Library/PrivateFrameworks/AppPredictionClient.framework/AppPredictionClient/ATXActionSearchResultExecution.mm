@interface ATXActionSearchResultExecution
- (ATXActionSearchResultExecutionDelegate)delegate;
- (BOOL)_delegateDoesRespond;
- (BOOL)_shouldTellDelegateToClearActionOnDismissal:(int64_t)dismissal;
- (void)_spawnShortcutExecutionWithShortcut:(id)shortcut executionContext:(int64_t)context;
- (void)executeShortcut;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation ATXActionSearchResultExecution

- (void)executeShortcut
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_1BF549000, log, OS_LOG_TYPE_FAULT, "e:fault searchExec: shortcut has unexpected zkw type: %ld", buf, 0xCu);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699F990];
  v9[0] = *MEMORY[0x1E699F970];
  v9[1] = v2;
  v10[0] = MEMORY[0x1E695E118];
  v10[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v4 = __atxlog_handle_ui();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "searchExec: launching UAUserActivityProxy...", buf, 2u);
  }

  v5 = [*(a1 + 32) userActivityProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57;
  v6[3] = &unk_1E80C3CD0;
  v7 = *(a1 + 32);
  [v5 launchActivityWithOptions:v3 completionHandler:v6];
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v9 = v5 == 0;
    goto LABEL_7;
  }

  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) bundleId];
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "searchExec: successfully launched UAUserActivityProxy for bundleId: %@", &v14, 0xCu);
  }

  if (v6)
  {
    v9 = 0;
LABEL_7:
    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57_cold_1(a1);
    }

    if (!v9)
    {
      v11 = __atxlog_handle_ui();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57_cold_2(v6);
      }
    }
  }

  v12 = [*(a1 + 32) userActivityProxy];
  v13 = objc_opt_self();
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2;
  block[3] = &unk_1E80C1728;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = __atxlog_handle_ui();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_cold_1(v1, v2);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = [v4 shortcut];

      v6 = __atxlog_handle_ui();
      v2 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "searchExec: fetched voiceShortcut SUCCESS. Continuing...", v8, 2u);
        }

        v7 = *(a1 + 48);
        v2 = [*(a1 + 40) shortcut];
        [v7 _spawnShortcutExecutionWithShortcut:v2 executionContext:5];
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_cold_2();
      }
    }

    else
    {
      v2 = __atxlog_handle_ui();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_cold_3();
      }
    }
  }
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81;
  block[3] = &unk_1E80C3D20;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_ui();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "searchExec: fetchDataAndUpdateIntentFromIdentifier attributeValues: %@", buf, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_ui();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_1();
      }

      goto LABEL_27;
    }

    v5 = v4;
    if (![v5 count])
    {
      v6 = __atxlog_handle_ui();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_5();
      }

      goto LABEL_26;
    }

    v6 = [v5 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = __atxlog_handle_ui();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_2();
      }
    }

    v8 = objc_autoreleasePoolPush();
    v15 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
    v10 = v15;
    objc_autoreleasePoolPop(v8);
    if (v10 || !v9)
    {
      v14 = __atxlog_handle_ui();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_3();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_alloc(MEMORY[0x1E696EA38]) initWithIntent:v9];
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        [*(a1 + 40) _spawnShortcutExecutionWithShortcut:*(*(*(a1 + 48) + 8) + 40) executionContext:5];
LABEL_25:

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }

      v14 = __atxlog_handle_ui();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_4();
      }
    }

    goto LABEL_25;
  }

  v4 = __atxlog_handle_ui();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_6();
  }

LABEL_28:
}

- (void)_spawnShortcutExecutionWithShortcut:(id)shortcut executionContext:(int64_t)context
{
  shortcutCopy = shortcut;
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "searchExec: invoking ShortcutsRuntime for execution", v13, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x1E69E0D68]) initWithINShortcut:shortcutCopy executionContext:context];
  [(ATXActionSearchResultExecution *)self setWorkflowRunnerClient:v8];

  runViewSource = [(ATXActionSearchResultExecution *)self runViewSource];
  workflowRunnerClient = [(ATXActionSearchResultExecution *)self workflowRunnerClient];
  [workflowRunnerClient setRunViewSource:runViewSource];

  workflowRunnerClient2 = [(ATXActionSearchResultExecution *)self workflowRunnerClient];
  [workflowRunnerClient2 setDelegate:self];

  workflowRunnerClient3 = [(ATXActionSearchResultExecution *)self workflowRunnerClient];
  [workflowRunnerClient3 start];
}

- (BOOL)_shouldTellDelegateToClearActionOnDismissal:(int64_t)dismissal
{
  searchResult = [(ATXActionSearchResultExecution *)self searchResult];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  if (CFPreferencesGetAppBooleanValue(@"displayRecentDonations", @"com.apple.duetexpertd", 0))
  {
    return 0;
  }

  return (dismissal & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (BOOL)_delegateDoesRespond
{
  delegate = [(ATXActionSearchResultExecution *)self delegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  v12 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  progressCopy = progress;
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = clientCopy;
    v10 = 2048;
    v11 = progressCopy;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "searchExec: workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v8, 0x16u);
  }
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v22 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  errorCopy = error;
  v11 = __atxlog_handle_ui();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = clientCopy;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "searchExec: workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", &v20, 0xCu);
  }

  _delegateDoesRespond = [(ATXActionSearchResultExecution *)self _delegateDoesRespond];
  v13 = __atxlog_handle_ui();
  v14 = v13;
  if (errorCopy || cancelledCopy)
  {
    if (errorCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXActionSearchResultExecution workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }

      v14 = __atxlog_handle_ui();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXActionSearchResultExecution workflowRunnerClient:errorCopy didFinishRunningWorkflowWithOutput:? error:? cancelled:?];
      }

      v15 = 1;
      v16 = 2;
    }

    else if (cancelledCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "searchExec: workflowRunnerClient:didFinishRunningWithError: CANCELLED", &v20, 2u);
      }

      v15 = 1;
      v16 = 5;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [ATXActionSearchResultExecution workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }

      v16 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "searchExec: workflowRunnerClient:didFinishRunningWithError: SUCCEEDED", &v20, 2u);
    }

    v15 = 3;
    v16 = 1;
  }

  if (_delegateDoesRespond)
  {
    v17 = __atxlog_handle_ui();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_INFO, "searchExec: calling delegate for ATXActionSearchResultExecution", &v20, 2u);
    }

    v18 = [(ATXActionSearchResultExecution *)self _shouldTellDelegateToClearActionOnDismissal:v15];
    delegate = [(ATXActionSearchResultExecution *)self delegate];
    [delegate actionSearchResultExecution:self didDismissRemoteAlertWithReason:v15 actionCompleted:1 withResult:v16 shouldClearAction:v18];
  }
}

- (ATXActionSearchResultExecutionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleId];
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_57_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x34u);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134218242;
  v4 = 5516;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "e:%ld * searchExec: VoiceShortcutClient fetch error: %@", &v3, 0x16u);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __49__ATXActionSearchResultExecution_executeShortcut__block_invoke_2_81_cold_3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_20();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "e:%ld * searchExec: Could not unarchive intent: %@", v1, 0x16u);
}

- (void)workflowRunnerClient:(void *)a1 didFinishRunningWorkflowWithOutput:error:cancelled:.cold.3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x34u);
}

@end