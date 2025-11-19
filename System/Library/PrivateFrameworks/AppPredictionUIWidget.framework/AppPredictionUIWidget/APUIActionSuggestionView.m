@interface APUIActionSuggestionView
- (void)_tapRecognized:(id)a3;
- (void)layoutSuggestion:(id)a3;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
@end

@implementation APUIActionSuggestionView

- (void)layoutSuggestion:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(APUISuggestionView *)self setSuggestion:v4];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(APUIActionSuggestionView *)self addGestureRecognizer:self->_tapRecognizer];
    v7 = [v4 executableSpecification];
    v8 = [v7 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      objc_storeStrong(&self->_atxAction, v8);
      v10 = [v9 bundleId];
      v11 = [v9 userActivityWebpageURL];
      v12 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

      v13 = [v9 intent];
      v14 = [v13 keyImage];
      v15 = __atxlog_handle_ui();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: %@ inImage = intent.keyImage = %@", buf, 0x16u);
      }

      [(APUISuggestionView *)self setINImage:v14 withBundleID:v12];
      v16 = objc_getAssociatedObject(v9, sel_title);
      v17 = objc_getAssociatedObject(v9, sel_subtitle);
      v18 = [(APUISuggestionView *)self titleLabel];
      v19 = v18;
      if (v16)
      {
        [v18 setText:v16];
      }

      else
      {
        [v9 actionTitle];
        v29 = v14;
        v20 = v13;
        v22 = v21 = v12;
        [v19 setText:v22];

        v12 = v21;
        v13 = v20;
        v14 = v29;
      }

      v23 = [(APUISuggestionView *)self subtitleLabel];
      v24 = v23;
      if (v17)
      {
        [v23 setText:v17];
      }

      else
      {
        [v9 subtitleForSuggestionsWidget];
        v30 = v14;
        v25 = v13;
        v27 = v26 = v12;
        [v24 setText:v27];

        v12 = v26;
        v13 = v25;
        v14 = v30;
      }
    }

    else
    {
      v9 = __atxlog_handle_ui();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [APUIActionSuggestionView layoutSuggestion:];
      }
    }

    [(APUISuggestionView *)self installReasonLabelIfNecessary];
  }

  else
  {
    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView layoutSuggestion:];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:(id)a3
{
  v4 = a3;
  if (![(APUISuggestionView *)self canEngageSuggestion])
  {
    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView _tapRecognized:];
    }

    goto LABEL_31;
  }

  [(APUISuggestionView *)self setCanEngageSuggestion:0];
  if ([v4 state] == 3)
  {
    v5 = [(APUISuggestionView *)self delegate];
    v6 = [(APUISuggestionView *)self suggestion];
    [v5 view:self didTapSuggestion:v6];

    if (![(ATXAction *)self->_atxAction actionType])
    {
      v7 = [(ATXAction *)self->_atxAction intent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [(ATXAction *)self->_atxAction intent];
        v10 = [v9 linkAction];

        if (v10)
        {
          v11 = 0;
LABEL_13:
          v16 = __atxlog_handle_ui();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&dword_240036000, v16, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: invoking ShortcutsRuntime for action execution", v27, 2u);
          }

          v17 = objc_alloc(MEMORY[0x277D7A150]);
          v18 = v17;
          if (v10)
          {
            v19 = [(ATXAction *)self->_atxAction bundleId];
            v20 = [v18 initWithLinkAction:v10 bundleIdentifier:v19 resultSurface:1];
            workflowRunnerClient = self->_workflowRunnerClient;
            self->_workflowRunnerClient = v20;
          }

          else
          {
            v26 = [v17 initWithINShortcut:v11 executionContext:3];
            v19 = self->_workflowRunnerClient;
            self->_workflowRunnerClient = v26;
          }

          [(WFSuggestionsWorkflowRunnerClient *)self->_workflowRunnerClient setDelegate:self];
          [(WFSuggestionsWorkflowRunnerClient *)self->_workflowRunnerClient start];
          goto LABEL_30;
        }

        v25 = __atxlog_handle_ui();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:v25];
        }

LABEL_29:

        v10 = [(APUISuggestionView *)self delegate];
        v11 = [(APUISuggestionView *)self suggestion];
        [v10 view:self didFailExecutingSuggestion:v11];
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    if ([(ATXAction *)self->_atxAction actionType]&& [(ATXAction *)self->_atxAction actionType]!= 2)
    {
      if ([(ATXAction *)self->_atxAction actionType]!= 1)
      {
        v25 = __atxlog_handle_ui();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }

      v22 = objc_alloc(MEMORY[0x277CD4158]);
      v23 = [(ATXAction *)self->_atxAction userActivity];
      v24 = [(ATXAction *)self->_atxAction bundleId];
      v11 = [v22 initWithUserActivity:v23 bundleIdentifier:v24];

      if (!v11)
      {
        v25 = __atxlog_handle_ui();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }
    }

    else
    {
      v12 = [(ATXAction *)self->_atxAction bundleId];
      v13 = [(ATXAction *)self->_atxAction intent];
      [v13 _setLaunchId:v12];

      v14 = objc_alloc(MEMORY[0x277CD4158]);
      v15 = [(ATXAction *)self->_atxAction intent];
      v11 = [v14 initWithIntent:v15];

      if (!v11)
      {
        v25 = __atxlog_handle_ui();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

LABEL_32:
}

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v6 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = __atxlog_handle_ui();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v9;
    _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", buf, 0xCu);
  }

  if (v10 || v6)
  {
    if (v6)
    {
      v15 = __atxlog_handle_ui();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: ShortcutsRuntime was cancelled", buf, 2u);
      }
    }

    if (v10)
    {
      v16 = __atxlog_handle_ui();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [APUIActionSuggestionView workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }
    }

    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_70;
  }

  else
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: ShortcutsRuntime completed successfully.", buf, 2u);
    }

    v13 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v14 = __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
  }

  v13[2] = v14;
  v13[3] = &unk_278C90A18;
  v13[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  v17 = *MEMORY[0x277D85DE8];
}

void __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFinishExecutingSuggestion:v3];
}

void __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_70(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFailExecutingSuggestion:v3];
}

- (void)layoutSuggestion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_240036000, v0, v1, "e:%ld * SuggestionsWidget: error: suggestion is not an action", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)layoutSuggestion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_240036000, v0, v1, "e:%ld * SuggestionsWidget: No suggestions provided to ActionSuggestionView", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_240036000, v0, v1, "e:%ld * SuggestionsWidget: tried to tap a suggestion before the last execution ended", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:(id *)a1 .cold.2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 actionType];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:(id *)a1 .cold.3(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*a1 userActivity];
  v9 = [*a1 bundleId];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:(id *)a1 .cold.4(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [*a1 intent];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_240036000, v1, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: ShortcutsRuntime had an error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end