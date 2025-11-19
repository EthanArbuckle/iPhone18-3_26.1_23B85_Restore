@interface APUISuggestionsWidgetView
+ (id)_developerModeSuggestions:(unint64_t)a3;
- (APUISuggestionsWidgetViewDelegate)delegate;
- (BOOL)_hasBundleInstalledAndNotRestrictedForSuggestion:(id)a3;
- (id)_addWidgetContainerViewWithSuggestion:(id)a3 toVerticalStackView:(id)a4;
- (id)_createWidgetContainerViewWithSuggestion:(id)a3;
- (id)_validSuggestionsWithSuggestions:(id)a3;
- (id)suggestionAtLocation:(CGPoint)a3;
- (void)_addFullWidthWidgetContainerViewWithSuggestion:(id)a3 withTopSeparator:(BOOL)a4;
- (void)_checkOrLoadSuggestions:(id)a3 inDeveloperMode:(BOOL)a4 rowCount:(unint64_t)a5 completion:(id)a6;
- (void)_clearStackView;
- (void)_displayNoSuggestions;
- (void)_layout1x4WithRowCount:(unint64_t)a3;
- (void)_layoutNotSupported:(int64_t)a3;
- (void)_layoutOne2x2;
- (void)_precomputeActionTitlesForSuggestions:(id)a3;
- (void)_setupStackViewIfNecessary;
- (void)addSeparatorViewToView:(id)a3;
- (void)highlightSuggestion:(id)a3;
- (void)layoutSubviews;
- (void)logLayoutSuggestions:(id)a3;
- (void)updateWithSuggestionLayout:(id)a3;
@end

@implementation APUISuggestionsWidgetView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = APUISuggestionsWidgetView;
  [(APUISuggestionsWidgetView *)&v3 layoutSubviews];
  [(APUISuggestionsWidgetView *)self _setupStackViewIfNecessary];
}

- (void)_setupStackViewIfNecessary
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = [(APUISuggestionsWidgetView *)self stackView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(APUISuggestionsWidgetView *)self setStackView:v4];

    v5 = [(APUISuggestionsWidgetView *)self stackView];
    [v5 setAxis:0];

    v6 = [(APUISuggestionsWidgetView *)self stackView];
    [v6 setDistribution:1];

    v7 = [(APUISuggestionsWidgetView *)self stackView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(APUISuggestionsWidgetView *)self stackView];
    [v8 setSpacing:0.0];

    v9 = [(APUISuggestionsWidgetView *)self stackView];
    [(APUISuggestionsWidgetView *)self addSubview:v9];

    v21 = MEMORY[0x277CCAAD0];
    v28 = [(APUISuggestionsWidgetView *)self stackView];
    v27 = [v28 leadingAnchor];
    v26 = [(APUISuggestionsWidgetView *)self leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v23 = [(APUISuggestionsWidgetView *)self trailingAnchor];
    v24 = [(APUISuggestionsWidgetView *)self stackView];
    v22 = [v24 trailingAnchor];
    v10 = [v23 constraintEqualToAnchor:v22];
    v29[1] = v10;
    v11 = [(APUISuggestionsWidgetView *)self stackView];
    v12 = [v11 topAnchor];
    v13 = [(APUISuggestionsWidgetView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v29[2] = v14;
    v15 = [(APUISuggestionsWidgetView *)self bottomAnchor];
    v16 = [(APUISuggestionsWidgetView *)self stackView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v29[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateWithSuggestionLayout:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (self->_suggestionLayout != v5 || [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting])
    {
      objc_storeStrong(&self->_suggestionLayout, a3);
      v7 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        suggestionLayout = self->_suggestionLayout;
        v13 = 136315394;
        v14 = "[APUISuggestionsWidgetView updateWithSuggestionLayout:]";
        v15 = 2112;
        v16 = suggestionLayout;
        _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  _suggestionLayout:%@", &v13, 0x16u);
      }

      v9 = [(ATXSuggestionLayout *)v6 layoutType];
      if (v9 <= 0x11)
      {
        if (((1 << v9) & 0x3F5C0) != 0)
        {
LABEL_13:
          [(APUISuggestionsWidgetView *)self _layoutNotSupported:[(ATXSuggestionLayout *)v6 layoutType]];
          goto LABEL_14;
        }

        if (v9 == 9)
        {
          v10 = self;
          v11 = 2;
          goto LABEL_18;
        }

        if (v9 == 11)
        {
          v10 = self;
          v11 = 4;
LABEL_18:
          [(APUISuggestionsWidgetView *)v10 _layout1x4WithRowCount:v11];
          goto LABEL_14;
        }
      }

      if (v9 < 5)
      {
        goto LABEL_13;
      }

      if (v9 == 5)
      {
        [(APUISuggestionsWidgetView *)self _layoutOne2x2];
      }
    }
  }

  else
  {
    [(APUISuggestionsWidgetView *)self _displayNoSuggestions];
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_layoutNotSupported:(int64_t)a3
{
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [APUISuggestionsWidgetView _layoutNotSupported:a3];
  }

  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(APUISuggestionsWidgetView *)a3 _layoutNotSupported:v6];
  }

  [(APUISuggestionsWidgetView *)self _displayNoSuggestions];
}

- (void)_clearStackView
{
  v3 = objc_opt_new();
  containerViews = self->_containerViews;
  self->_containerViews = v3;

  [(UIStackView *)self->_stackView removeFromSuperview];
  stackView = self->_stackView;
  self->_stackView = 0;

  [(APUISuggestionsWidgetView *)self _setupStackViewIfNecessary];
}

- (void)_displayNoSuggestions
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: no suggestions to display!", buf, 2u);
  }

  [(APUISuggestionsWidgetView *)self _clearStackView];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"No Suggestions Available" value:&stru_285201410 table:0];
  [v4 setText:v6];

  v7 = [MEMORY[0x277D75348] labelColor];
  [v4 setTextColor:v7];

  [v4 setNumberOfLines:0];
  [v4 setTextAlignment:1];
  v8 = [(APUISuggestionsWidgetView *)self stackView];
  [v8 addSubview:v4];

  v19 = MEMORY[0x277CCAAD0];
  v20 = [v4 leadingAnchor];
  v9 = [(UIStackView *)self->_stackView leadingAnchor];
  v10 = [v20 constraintEqualToSystemSpacingAfterAnchor:v9 multiplier:1.0];
  v22[0] = v10;
  v11 = [(UIStackView *)self->_stackView trailingAnchor];
  v12 = [v4 trailingAnchor];
  v13 = [v11 constraintEqualToSystemSpacingAfterAnchor:v12 multiplier:1.0];
  v22[1] = v13;
  v14 = [(UIStackView *)self->_stackView centerYAnchor];
  v15 = [v4 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v19 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_layout1x4WithRowCount:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[APUISuggestionsWidgetView _layout1x4WithRowCount:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%lu", buf, 0x16u);
  }

  self->_platterSize = 2;
  v6 = [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting];
  if (v6)
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[APUISuggestionsWidgetView _layout1x4WithRowCount:]";
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s: displayRecentDonations developer switch on. Getting recent donations asynchronously", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = [(ATXSuggestionLayout *)self->_suggestionLayout oneByFourSuggestions];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke;
  v10[3] = &unk_278C90DD8;
  v10[4] = self;
  v10[5] = a3;
  [(APUISuggestionsWidgetView *)self _checkOrLoadSuggestions:v8 inDeveloperMode:v6 rowCount:a3 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _clearStackView];
  v4 = [*(a1 + 32) stackView];
  [v4 setAxis:1];

  v5 = [*(a1 + 32) stackView];
  [v5 setAlignment:1];

  if ([v3 count] == *(a1 + 40))
  {
    [*(a1 + 32) logLayoutSuggestions:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) _addFullWidthWidgetContainerViewWithSuggestion:*(*(&v14 + 1) + 8 * v11++) withTopSeparator:{v9 & 1, v14}];
          v9 = 1;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke_cold_1((a1 + 40), v3);
    }

    [*(a1 + 32) _displayNoSuggestions];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addSeparatorViewToView:(id)a3
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D75348] quaternaryLabelColor];
  [v5 setBackgroundColor:v6];

  [v5 setOverrideUserInterfaceStyle:2];
  [v4 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = 1.0 / v8;

  v20 = MEMORY[0x277CCAAD0];
  v23 = [v5 heightAnchor];
  v22 = [v23 constraintEqualToConstant:v9];
  v24[0] = v22;
  v21 = [v5 leadingAnchor];
  v10 = [(APUISuggestionsWidgetView *)self leadingAnchor];
  v11 = [v21 constraintEqualToAnchor:v10 constant:16.0];
  v24[1] = v11;
  v12 = [v5 trailingAnchor];
  v13 = [(APUISuggestionsWidgetView *)self trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v24[2] = v14;
  v15 = [v5 topAnchor];
  v16 = [v4 topAnchor];

  v17 = [v15 constraintEqualToAnchor:v16];
  v24[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v20 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_layoutOne2x2
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_ui();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[APUISuggestionsWidgetView _layoutOne2x2]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  self->_platterSize = 1;
  v4 = [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting];
  if (v4)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[APUISuggestionsWidgetView _layoutOne2x2]";
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s: displayRecentDonations developer switch on. Getting recent donations asynchronously", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(ATXSuggestionLayout *)self->_suggestionLayout twoByTwoSuggestions];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke;
  v8[3] = &unk_278C90E00;
  v8[4] = self;
  [(APUISuggestionsWidgetView *)self _checkOrLoadSuggestions:v6 inDeveloperMode:v4 rowCount:1 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _clearStackView];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 32);
      v13[0] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v6 logLayoutSuggestions:v7];

      v8 = *(a1 + 32);
      v9 = [v8 stackView];
      v10 = [v8 _addWidgetContainerViewWithSuggestion:v5 toVerticalStackView:v9];
    }
  }

  else
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke_cold_1(v3);
    }

    [*(a1 + 32) _displayNoSuggestions];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_checkOrLoadSuggestions:(id)a3 inDeveloperMode:(BOOL)a4 rowCount:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke;
  block[3] = &unk_278C90E50;
  v20 = a4;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 40);
    v4 = [objc_opt_class() _developerModeSuggestions:*(a1 + 56)];

    v2 = v4;
  }

  v5 = [*(a1 + 40) _validSuggestionsWithSuggestions:v2];
  [*(a1 + 40) _precomputeActionTitlesForSuggestions:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke_2;
  v8[3] = &unk_278C90E28;
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)_precomputeActionTitlesForSuggestions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) executableSpecification];
        v9 = [v8 executableObject];
        v10 = NSClassFromString(&cfstr_Atxaction.isa);
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          v14 = [v13 actionTitle];
          objc_setAssociatedObject(v13, sel_title, v14, 0x303);

          v15 = [v13 subtitleForSuggestionsWidget];
          objc_setAssociatedObject(v13, sel_subtitle, v15, 0x303);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_validSuggestionsWithSuggestions:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
    v27 = 2048;
    v28 = [v4 count];
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  validating %lu  suggestions", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 136315394;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 isValidForSuggestionsWidget] && -[APUISuggestionsWidgetView _hasBundleInstalledAndNotRestrictedForSuggestion:](self, "_hasBundleInstalledAndNotRestrictedForSuggestion:", v13))
        {
          [v5 addObject:v13];
        }

        else
        {
          v14 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
            v27 = 2112;
            v28 = v13;
            _os_log_error_impl(&dword_240036000, v14, OS_LOG_TYPE_ERROR, "%s:  invalid suggestion: %@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 count];
    *buf = 136315394;
    v26 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
    v27 = 2048;
    v28 = v16;
    _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  %lu valid suggestions", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_hasBundleInstalledAndNotRestrictedForSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  v6 = [v3 executableSpecification];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v6 executableClassString];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [v3 executableSpecification];
      v14 = [v13 executable];
      v15 = [v12 initWithData:v14 encoding:4];

      if (([MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v15] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      v20 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v16 = [v6 executableType];

    if (v16 != 2)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v17 = [v3 executableSpecification];
    v18 = [v17 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 bundleId];
      v15 = ATXBundleIdReplacementForBundleId();

      if (v15)
      {
        if ([MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v15])
        {
        }

        else
        {
          v23 = [MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:v15];

          if ((v23 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_11;
      }
    }
  }

  v15 = 0;
LABEL_14:
  v21 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(APUISuggestionsWidgetView *)v15 _hasBundleInstalledAndNotRestrictedForSuggestion:v21];
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (void)logLayoutSuggestions:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(APUISuggestionsWidgetView *)v3 logLayoutSuggestions:v4];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(APUISuggestionsWidgetView *)v18 logLayoutSuggestions:v10, &v19, v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [APUISuggestionsWidgetView logLayoutSuggestions:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addFullWidthWidgetContainerViewWithSuggestion:(id)a3 withTopSeparator:(BOOL)a4
{
  v4 = a4;
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(APUISuggestionsWidgetView *)self stackView];
  v8 = [(APUISuggestionsWidgetView *)self _addWidgetContainerViewWithSuggestion:v6 toVerticalStackView:v7];

  if (v4)
  {
    [(APUISuggestionsWidgetView *)self addSeparatorViewToView:v8];
  }

  v9 = [v8 leadingAnchor];
  v10 = [(APUISuggestionsWidgetView *)self stackView];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v20[0] = v12;
  v13 = [(APUISuggestionsWidgetView *)self stackView];
  v14 = [v13 trailingAnchor];
  v15 = [v8 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v19 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_addWidgetContainerViewWithSuggestion:(id)a3 toVerticalStackView:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_ui();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[APUISuggestionsWidgetView _addWidgetContainerViewWithSuggestion:toVerticalStackView:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v12, 0x16u);
  }

  v9 = [(APUISuggestionsWidgetView *)self _createWidgetContainerViewWithSuggestion:v6];
  [v7 addArrangedSubview:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_createWidgetContainerViewWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(APUIWidgetContainerView);
  v6 = [(APUISuggestionsWidgetView *)self delegate];
  [(APUIWidgetContainerView *)v5 setDelegate:v6];

  [(APUIWidgetContainerView *)v5 setPlatterSize:self->_platterSize];
  [(APUIWidgetContainerView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(APUIWidgetContainerView *)v5 displaySuggestion:v4];

  [(NSMutableArray *)self->_containerViews addObject:v5];

  return v5;
}

- (void)highlightSuggestion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v31 = "[APUISuggestionsWidgetView highlightSuggestion:]";
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  if (v4)
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v6 = self->_containerViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 suggestion];
          v13 = [v4 isEqual:v12];

          if (v13)
          {
            v14 = 1.0;
          }

          else
          {
            v14 = 0.3;
          }

          [v11 setAlpha:v14];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v6 = self->_containerViews;
    v15 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * j) setAlpha:{1.0, v20}];
        }

        v16 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)suggestionAtLocation:(CGPoint)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(APUISuggestionsWidgetView *)self hitTest:0 withEvent:a3.x, a3.y];
  v4 = [v3 apuiFindInnermostSuperviewOfClass:objc_opt_class()];
  v5 = [v4 suggestion];
  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 uiSpecification];
    v8 = [v7 title];
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "suggestionAtLocation %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_developerModeSuggestions:(unint64_t)a3
{
  v4 = [MEMORY[0x277CEB2F8] actionResponseForDeveloperMode];
  v5 = [v4 proactiveSuggestions];
  v6 = [v5 mutableCopy];

  if ([v6 count] >= a3)
  {
    v10 = [v6 subarrayWithRange:{0, a3}];
  }

  else
  {
    if ([v6 count])
    {
      v7 = [v6 count];
      v8 = a3 - v7;
      if (a3 > v7)
      {
        do
        {
          v9 = [v6 lastObject];
          [v6 addObject:v9];

          --v8;
        }

        while (v8);
      }
    }

    v10 = v6;
  }

  v11 = v10;

  return v11;
}

- (APUISuggestionsWidgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutNotSupported:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D420E8] stringFromUILayoutType:a1];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_layoutNotSupported:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D420E8] stringFromUILayoutType:a1];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: layout %@ not supported", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  [a2 count];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_hasBundleInstalledAndNotRestrictedForSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[APUISuggestionsWidgetView _hasBundleInstalledAndNotRestrictedForSuggestion:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "%s:  bundle id %@ is not installed or is restricted", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logLayoutSuggestions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_240036000, a2, OS_LOG_TYPE_DEBUG, "SuggestionsWidget:  %lu suggestions[", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)logLayoutSuggestions:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 executableSpecification];
  v8 = [v7 executableDescription];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_240036000, a4, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: suggestion executable:%@", a1, 0xCu);
}

@end