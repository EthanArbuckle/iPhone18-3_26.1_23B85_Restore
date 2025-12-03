@interface APUILinkSuggestionView
- (void)_tapRecognized:(id)recognized;
- (void)layoutSuggestion:(id)suggestion;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation APUILinkSuggestionView

- (void)layoutSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    [(APUISuggestionView *)self setSuggestion:suggestionCopy];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(APUILinkSuggestionView *)self addGestureRecognizer:self->_tapRecognizer];
    executableSpecification = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_linkAction, executableObject);
      bundleId = [executableObject bundleId];
      uiSpecification = [suggestionCopy uiSpecification];
      title = [uiSpecification title];

      uiSpecification2 = [suggestionCopy uiSpecification];
      subtitle = [uiSpecification2 subtitle];

      image = [executableObject image];
      [(APUISuggestionView *)self setLNImage:image withBundleID:bundleId];

      titleLabel = [(APUISuggestionView *)self titleLabel];
      [titleLabel setText:title];

      subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
      [subtitleLabel setText:subtitle];
    }

    else
    {
      v17 = __atxlog_handle_ui();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [APUILinkSuggestionView layoutSuggestion:];
      }
    }
  }

  else
  {
    executableObject = __atxlog_handle_ui();
    if (os_log_type_enabled(executableObject, OS_LOG_TYPE_ERROR))
    {
      [APUILinkSuggestionView layoutSuggestion:];
    }
  }
}

- (void)_tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (![(APUISuggestionView *)self canEngageSuggestion])
  {
    workflowRunnerClient = __atxlog_handle_ui();
    if (os_log_type_enabled(workflowRunnerClient, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView _tapRecognized:];
    }

    goto LABEL_8;
  }

  [(APUISuggestionView *)self setCanEngageSuggestion:0];
  if ([recognizedCopy state] == 3)
  {
    delegate = [(APUISuggestionView *)self delegate];
    suggestion = [(APUISuggestionView *)self suggestion];
    [delegate view:self didTapSuggestion:suggestion];

    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: Invoking ShortcutsRuntime for link action execution", v13, 2u);
    }

    v8 = objc_alloc(MEMORY[0x277D7A150]);
    action = [(ATXLinkActionContainer *)self->_linkAction action];
    bundleId = [(ATXLinkActionContainer *)self->_linkAction bundleId];
    v11 = [v8 initWithLinkAction:action bundleIdentifier:bundleId resultSurface:1];

    [v11 setDelegate:self];
    [v11 start];
    workflowRunnerClient = self->_workflowRunnerClient;
    self->_workflowRunnerClient = v11;
LABEL_8:
  }
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  progressCopy = progress;
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = clientCopy;
    v11 = 2048;
    v12 = progressCopy;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  errorCopy = error;
  v11 = __atxlog_handle_ui();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = clientCopy;
    _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", buf, 0xCu);
  }

  if (errorCopy || cancelledCopy)
  {
    if (cancelledCopy)
    {
      v15 = __atxlog_handle_ui();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: ShortcutsRuntime was cancelled", buf, 2u);
      }
    }

    if (errorCopy)
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
    v14 = __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_64;
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
    v14 = __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
  }

  v13[2] = v14;
  v13[3] = &unk_278C90A18;
  v13[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  v17 = *MEMORY[0x277D85DE8];
}

void __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFinishExecutingSuggestion:v3];
}

void __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_64(uint64_t a1)
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
  OUTLINED_FUNCTION_2(&dword_240036000, v0, v1, "e:%ld * SuggestionsWidget: error: suggestion is not a link action", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)layoutSuggestion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_240036000, v0, v1, "e:%ld * SuggestionsWidget: No suggestions provided to LinkSuggestionView", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end