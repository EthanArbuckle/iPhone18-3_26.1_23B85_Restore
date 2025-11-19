@interface APUIAppSuggestionView
- (void)_setAppWithBundleId:(id)a3 reason:(id)a4;
- (void)_tapRecognized:(id)a3;
- (void)layoutSuggestion:(id)a3;
@end

@implementation APUIAppSuggestionView

- (void)layoutSuggestion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(APUISuggestionView *)self setSuggestion:v4];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(APUIAppSuggestionView *)self addGestureRecognizer:self->_tapRecognizer];
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_tapRecognizer;
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: added gesture recognizer: %@", &v22, 0xCu);
    }

    v9 = [v4 executableSpecification];
    v10 = [v9 executableClassString];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v4 executableSpecification];
      v16 = [v15 executable];
      v17 = [v14 initWithData:v16 encoding:4];

      v18 = [v4 uiSpecification];
      v19 = [v18 reason];

      [(APUIAppSuggestionView *)self _setAppWithBundleId:v17 reason:v19];
    }

    else
    {
      v17 = __atxlog_handle_ui();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [APUIAppSuggestionView layoutSuggestion:];
      }
    }

    [(APUISuggestionView *)self installReasonLabelIfNecessary];
  }

  else
  {
    v20 = __atxlog_handle_ui();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [APUIAppSuggestionView layoutSuggestion:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_setAppWithBundleId:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_appBundleId, a3);
  v9 = [(APUISuggestionView *)self iconView];
  [v9 setAppBundleIdentifier:v7];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Open %@" value:&stru_285201410 table:0];
  v13 = [MEMORY[0x277CEB3B8] localizedNameForBundle:v7];
  v14 = [v10 localizedStringWithFormat:v12, v13];

  v15 = [(APUISuggestionView *)self titleLabel];
  [v15 setText:v14];

  if (![v8 length])
  {
    v16 = __atxlog_handle_ui();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(APUIAppSuggestionView *)v7 _setAppWithBundleId:v8 reason:v16];
    }
  }

  v17 = [(APUISuggestionView *)self subtitleLabel];
  [v17 setText:v8];
}

- (void)_tapRecognized:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(APUISuggestionView *)self canEngageSuggestion])
  {
    [(APUISuggestionView *)self setCanEngageSuggestion:0];
    if ([v4 state] == 3)
    {
      v5 = [(APUISuggestionView *)self suggestion];
      v6 = __atxlog_handle_ui();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        appBundleId = self->_appBundleId;
        *buf = 138412290;
        v15 = appBundleId;
        _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: gesture recognizer ended; attempting to launch app: %@...", buf, 0xCu);
      }

      v8 = [(APUISuggestionView *)self delegate];
      [v8 view:self didTapSuggestion:v5];

      v9 = self->_appBundleId;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__APUIAppSuggestionView__tapRecognized___block_invoke;
      v12[3] = &unk_278C90DB0;
      v12[4] = self;
      v13 = v5;
      v10 = v5;
      [APUIAppIconDataSource openApplication:v9 completion:v12];
    }

    else
    {
      v10 = __atxlog_handle_ui();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = [v4 state];
        _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: gesture recognizer state: %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [APUIAppSuggestionView _tapRecognized:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v3 = __40__APUIAppSuggestionView__tapRecognized___block_invoke_2;
  }

  else
  {
    v2 = v5;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v3 = __40__APUIAppSuggestionView__tapRecognized___block_invoke_3;
  }

  v2[2] = v3;
  v2[3] = &unk_278C909F0;
  v4 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v2[5] = v4;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFinishExecutingSuggestion:*(a1 + 40)];
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFailExecutingSuggestion:*(a1 + 40)];
}

- (void)layoutSuggestion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_240036000, v1, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: suggestion executable is not a string: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)layoutSuggestion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: No suggestions provided", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_setAppWithBundleId:(os_log_t)log reason:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136446722;
  v5 = "[APUIAppSuggestionView _setAppWithBundleId:reason:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: %{public}s:%@ reason:%@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_tapRecognized:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: tried to tap a suggestion before the last execution ended", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end