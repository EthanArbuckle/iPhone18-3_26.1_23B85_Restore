@interface APUIWidgetContainerView
- (APUISuggestionsWidgetViewDelegate)delegate;
- (void)_createStackViewIfNeeded;
- (void)_displayNoSuggestionsWithSuggestion:(id)a3;
- (void)_setActionSuggestion:(id)a3;
- (void)_setAppClipSuggestion:(id)a3;
- (void)_setAppSuggestion:(id)a3;
- (void)_setLinkSuggestion:(id)a3;
- (void)displaySuggestion:(id)a3;
- (void)setSuggestion:(id)a3 inView:(id)a4;
- (void)setSuggestionViewLabelsAlpha:(double)a3;
- (void)setViewPressed:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation APUIWidgetContainerView

- (void)_createStackViewIfNeeded
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (!self->_stackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = self->_stackView;
    self->_stackView = v3;

    [(UIStackView *)self->_stackView setDistribution:0];
    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(APUIWidgetContainerView *)self addSubview:self->_stackView];
    v16 = MEMORY[0x277CCAAD0];
    v19 = [(UIStackView *)self->_stackView leadingAnchor];
    v18 = [(APUIWidgetContainerView *)self leadingAnchor];
    v17 = [v19 constraintEqualToAnchor:v18];
    v20[0] = v17;
    v5 = [(UIStackView *)self->_stackView topAnchor];
    v6 = [(APUIWidgetContainerView *)self topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v20[1] = v7;
    v8 = [(APUIWidgetContainerView *)self trailingAnchor];
    v9 = [(UIStackView *)self->_stackView trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v20[2] = v10;
    v11 = [(APUIWidgetContainerView *)self bottomAnchor];
    v12 = [(UIStackView *)self->_stackView bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v20[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [v16 activateConstraints:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesBegan:a3 withEvent:a4];
  [(APUIWidgetContainerView *)self setViewPressed:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesEnded:a3 withEvent:a4];
  [(APUIWidgetContainerView *)self setViewPressed:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesCancelled:a3 withEvent:a4];
  [(APUIWidgetContainerView *)self setViewPressed:0];
}

- (void)setViewPressed:(BOOL)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
    v5 = [(APUIWidgetContainerView *)self layer];
    v11[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v5 setFilters:v6];

    v7 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:1.0];
    [v4 setValue:objc_msgSend(v7 forKey:{"CGColor"), @"inputColor"}];

    [(APUIWidgetContainerView *)self setSuggestionViewLabelsAlpha:0.5];
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [(APUIWidgetContainerView *)self layer];
    [v9 setFilters:0];

    v10 = *MEMORY[0x277D85DE8];

    [(APUIWidgetContainerView *)self setSuggestionViewLabelsAlpha:1.0];
  }
}

- (void)setSuggestionViewLabelsAlpha:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(APUISuggestionView *)self->_suggestionView labels];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAlpha:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSuggestion:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  suggestion = self->_suggestion;
  self->_suggestion = v6;
  v12 = v6;

  suggestionView = self->_suggestionView;
  self->_suggestionView = v7;
  v10 = v7;

  [(APUIWidgetContainerView *)self _createStackViewIfNeeded];
  v11 = [(APUIWidgetContainerView *)self delegate];
  [(APUISuggestionView *)v10 setDelegate:v11];

  [(APUISuggestionView *)v10 setPlatterSize:[(APUIWidgetContainerView *)self platterSize]];
  [(APUISuggestionView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(APUISuggestionView *)v10 setCanEngageSuggestion:1];
  [(APUISuggestionView *)v10 layoutSuggestion:v12];
  [(UIStackView *)self->_stackView addArrangedSubview:v10];
}

- (void)_setAppClipSuggestion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    v10 = 136446466;
    v11 = "[APUIWidgetContainerView _setAppClipSuggestion:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v10, 0x16u);
  }

  v8 = objc_opt_new();
  [(APUIWidgetContainerView *)self setSuggestion:v4 inView:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setAppSuggestion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    v10 = 136446466;
    v11 = "[APUIWidgetContainerView _setAppSuggestion:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v10, 0x16u);
  }

  v8 = objc_opt_new();
  [(APUIWidgetContainerView *)self setSuggestion:v4 inView:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setActionSuggestion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    v10 = 136446466;
    v11 = "[APUIWidgetContainerView _setActionSuggestion:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v10, 0x16u);
  }

  v8 = objc_alloc_init(APUIActionSuggestionView);
  [(APUIWidgetContainerView *)self setSuggestion:v4 inView:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setLinkSuggestion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    v10 = 136446466;
    v11 = "[APUIWidgetContainerView _setLinkSuggestion:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v10, 0x16u);
  }

  v8 = objc_alloc_init(APUILinkSuggestionView);
  [(APUIWidgetContainerView *)self setSuggestion:v4 inView:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_displayNoSuggestionsWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(APUIWidgetContainerView *)v4 _displayNoSuggestionsWithSuggestion:v5];
  }

  suggestion = self->_suggestion;
  self->_suggestion = 0;

  [(APUIWidgetContainerView *)self _createStackViewIfNeeded];
}

- (void)displaySuggestion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(APUIWidgetContainerView *)self setSuggestion:v4];
  if (!v4)
  {
    v11 = self;
    v12 = 0;
LABEL_7:
    [(APUIWidgetContainerView *)v11 _displayNoSuggestionsWithSuggestion:v12];
    goto LABEL_14;
  }

  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    v8 = [v4 executableSpecification];
    v20 = 136446722;
    v21 = "[APUIWidgetContainerView displaySuggestion:]";
    v22 = 2112;
    v23 = v7;
    v24 = 2048;
    v25 = [v8 executableType];
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@ executableSpecification: %ld", &v20, 0x20u);
  }

  v9 = [v4 executableSpecification];
  v10 = [v9 executableType];

  if (v10 != 5)
  {
    v13 = [v4 executableSpecification];
    v14 = [v13 executableType];

    if (v14 == 1)
    {
      [(APUIWidgetContainerView *)self _setAppSuggestion:v4];
      goto LABEL_14;
    }

    v15 = [v4 executableSpecification];
    v16 = [v15 executableType];

    if (v16 == 2)
    {
      [(APUIWidgetContainerView *)self _setActionSuggestion:v4];
      goto LABEL_14;
    }

    v17 = [v4 executableSpecification];
    v18 = [v17 executableType];

    v11 = self;
    v12 = v4;
    if (v18 == 10)
    {
      [(APUIWidgetContainerView *)self _setLinkSuggestion:v4];
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  [(APUIWidgetContainerView *)self _setAppClipSuggestion:v4];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (APUISuggestionsWidgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_displayNoSuggestionsWithSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = 5517;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: could not display suggestion: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end