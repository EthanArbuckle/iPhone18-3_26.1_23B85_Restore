@interface APUISuggestionsWidgetViewController
+ (BOOL)_isSuggestionShortcut:(id)a3;
+ (id)_actionWithSuggestion:(id)a3;
+ (id)_shortcutWithSuggestion:(id)a3;
- (APUISuggestionsWidgetViewController)initWithIdentifier:(id)a3 suggestionsClient:(id)a4 layoutSize:(unint64_t)a5;
- (APUISuggestionsWidgetViewControllerDelegate)delegate;
- (BOOL)_canDismissSelectedSuggestion;
- (BOOL)_canSaveSelectedSuggestion;
- (NSArray)applicationShortcutItems;
- (id)_suggestionIdsInLayout:(id)a3;
- (id)view:(id)a3 iconForBundleIdentifier:(id)a4;
- (void)_preferredContentSizeDidChange;
- (void)_updateLayoutAsynchronouslyWithSuggestionClient:(id)a3;
- (void)_updateWidgetViewIfPossible;
- (void)addVoiceShortcutViewController:(id)a3 didFinishWithVoiceShortcut:(id)a4 error:(id)a5;
- (void)addVoiceShortcutViewControllerDidCancel:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSelectApplicationShortcutItem:(id)a3;
- (void)setShowingContextMenu:(BOOL)a3;
- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)a3;
- (void)verifyLayoutSizeCompatibility;
- (void)view:(id)a3 didFailExecutingSuggestion:(id)a4;
- (void)view:(id)a3 didFinishExecutingSuggestion:(id)a4;
- (void)view:(id)a3 didTapSuggestion:(id)a4;
- (void)viewDidLoad;
- (void)willShowContextMenuAtLocation:(CGPoint)a3;
@end

@implementation APUISuggestionsWidgetViewController

- (APUISuggestionsWidgetViewController)initWithIdentifier:(id)a3 suggestionsClient:(id)a4 layoutSize:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = APUISuggestionsWidgetViewController;
  v10 = [(APUIWidgetViewController *)&v25 initWithIdentifier:v8];
  v11 = v10;
  if (v10)
  {
    [(APUIWidgetViewController *)v10 setSuggestionClient:v9];
    v12 = objc_opt_new();
    [(APUIWidgetViewController *)v11 setWidgetIdentifiable:v12];

    v13 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [v13 setWidgetUniqueId:v8];

    v14 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [v14 setSize:a5];

    v15 = *MEMORY[0x277CEBBA0];
    v16 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [v16 setExtensionBundleId:v15];

    v17 = ATXSpecialWidgetKindSiriSuggestions();
    v18 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [v18 setWidgetKind:v17];

    [v9 registerObserver:v11];
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_240036000, v19, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUISuggestionsWidgetViewController initWithIdentifier %@", buf, 0xCu);
    }

    v20 = objc_opt_self();
    v26 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v22 = [(APUISuggestionsWidgetViewController *)v11 registerForTraitChanges:v21 withAction:sel__preferredContentSizeDidChange];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = APUISuggestionsWidgetViewController;
  [(APUISuggestionsWidgetViewController *)&v7 didMoveToParentViewController:?];
  if (!a3)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUISuggestionsWidgetViewController didMoveToParentViewController = nil", v6, 2u);
    }

    [(APUISuggestionsWidgetViewController *)self setShowingContextMenu:0];
  }
}

- (void)viewDidLoad
{
  v39 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = APUISuggestionsWidgetViewController;
  [(APUISuggestionsWidgetViewController *)&v35 viewDidLoad];
  v3 = __atxlog_handle_ui();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v38 = "[APUISuggestionsWidgetViewController viewDidLoad]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  v4 = objc_alloc_init(APUISuggestionsWidgetView);
  [(APUISuggestionsWidgetViewController *)self setWidgetView:v4];

  v5 = [(APUISuggestionsWidgetViewController *)self widgetView];
  v6 = objc_alloc_init(MEMORY[0x277D763B8]);
  [v5 _setBackground:v6];

  v7 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [v7 setDelegate:self];

  v8 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(APUISuggestionsWidgetViewController *)self view];
  v10 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [v9 addSubview:v10];

  v25 = MEMORY[0x277CCAAD0];
  v34 = [(APUISuggestionsWidgetViewController *)self widgetView];
  v32 = [v34 topAnchor];
  v33 = [(APUISuggestionsWidgetViewController *)self view];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v36[0] = v30;
  v29 = [(APUISuggestionsWidgetViewController *)self widgetView];
  v27 = [v29 bottomAnchor];
  v28 = [(APUISuggestionsWidgetViewController *)self view];
  v26 = [v28 bottomAnchor];
  v24 = [v27 constraintEqualToAnchor:v26];
  v36[1] = v24;
  v23 = [(APUISuggestionsWidgetViewController *)self widgetView];
  v22 = [v23 leadingAnchor];
  v11 = [(APUISuggestionsWidgetViewController *)self view];
  v12 = [v11 leadingAnchor];
  v13 = [v22 constraintEqualToAnchor:v12];
  v36[2] = v13;
  v14 = [(APUISuggestionsWidgetViewController *)self widgetView];
  v15 = [v14 trailingAnchor];
  v16 = [(APUISuggestionsWidgetViewController *)self view];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v36[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v25 activateConstraints:v19];

  v20 = [(APUIWidgetViewController *)self suggestionClient];
  [(APUISuggestionsWidgetViewController *)self _updateLayoutAsynchronouslyWithSuggestionClient:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateWidgetViewIfPossible
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_showingContextMenu)
  {
    v3 = __atxlog_handle_ui();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      showingContextMenu = self->_showingContextMenu;
      *buf = 136446466;
      v10 = "[APUISuggestionsWidgetViewController _updateWidgetViewIfPossible]";
      v11 = 1024;
      v12 = showingContextMenu;
      _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s aborted: _showingContextMenu=%{BOOL}d", buf, 0x12u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [(APUISuggestionsWidgetViewController *)self widgetView];
    v6 = [(APUIWidgetViewController *)self layout];
    [v8 updateWithSuggestionLayout:v6];

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_preferredContentSizeDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__APUISuggestionsWidgetViewController__preferredContentSizeDidChange__block_invoke;
  block[3] = &unk_278C90A18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__APUISuggestionsWidgetViewController__preferredContentSizeDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 suggestionClient];
  [v1 _updateLayoutAsynchronouslyWithSuggestionClient:v2];
}

- (id)_suggestionIdsInLayout:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(APUIWidgetViewController *)self layout];
  v6 = [v5 minSuggestionListInLayout];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) uuid];
        v12 = [v11 UUIDString];
        [v4 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__APUISuggestionsWidgetViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke;
  v6[3] = &unk_278C909F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_updateLayoutAsynchronouslyWithSuggestionClient:(id)a3
{
  v4 = a3;
  v5 = [(APUIWidgetViewController *)self suggestionIds];
  v6 = [v5 copy];

  v7 = [(APUIWidgetViewController *)self widgetIdentifiable];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke;
  v10[3] = &unk_278C90C48;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [v8 layoutForSuggestionsWidget:v7 completionHandler:v10];
}

void __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke_2;
  v6[3] = &unk_278C90C20;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLayout:*(a1 + 40)];
  v2 = [*(a1 + 32) layout];

  if (v2)
  {
    [*(a1 + 32) verifyLayoutSizeCompatibility];
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) layout];
      v5 = [v4 uuid];
      v6 = MEMORY[0x277D420E8];
      v7 = [*(a1 + 32) layout];
      v8 = [v6 stringFromUILayoutType:{objc_msgSend(v7, "layoutType")}];
      v9 = [*(a1 + 32) layout];
      [v9 layoutScore];
      v20 = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: _updateLayoutWithSuggestionClient layout: %@ type %@ score %f", &v20, 0x20u);
    }
  }

  else
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: _updateLayoutWithSuggestionClient layout: nil", &v20, 2u);
    }
  }

  v11 = *(a1 + 32);
  v12 = [v11 layout];
  v13 = [v11 _suggestionIdsInLayout:v12];
  [*(a1 + 32) setSuggestionIds:v13];

  v14 = __atxlog_handle_ui();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) suggestionIds];
    v20 = 136446466;
    v21 = "[APUISuggestionsWidgetViewController _updateLayoutAsynchronouslyWithSuggestionClient:]_block_invoke";
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_240036000, v14, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s self.suggestionIds=%@", &v20, 0x16u);
  }

  if ([*(a1 + 32) effectiveViewVisibility])
  {
    v16 = *(a1 + 32);
    v17 = [v16 suggestionIds];
    [v16 logChangeWithNewSuggestionIds:v17 previousSuggestionIds:*(a1 + 48) suggestionClient:*(a1 + 56)];
  }

  result = [*(a1 + 32) _updateWidgetViewIfPossible];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)verifyLayoutSizeCompatibility
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 layout];
  v5 = [v4 layoutType];
  v6 = [a1 widgetIdentifiable];
  v8 = 134218240;
  v9 = v5;
  v10 = 2048;
  v11 = [v6 size];
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "SuggestionsWidget: Layout type %lu is not compatible with stack layout size %lu", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)view:(id)a3 iconForBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(APUISuggestionsWidgetViewController *)self delegate];
  v7 = [v6 suggestionsWidgetViewController:self iconForApplicationWithBundleIdentifier:v5];

  return v7;
}

- (void)view:(id)a3 didTapSuggestion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: didTapSuggestion invoked with suggestion: %@", &v13, 0xCu);
  }

  v7 = [(APUIWidgetViewController *)self suggestionClient];
  v8 = [(APUIWidgetViewController *)self widgetIdentifiable];
  v9 = [(APUIWidgetViewController *)self layout];
  v10 = [v9 uuid];
  v11 = [v10 UUIDString];
  [v7 logDidTapSuggestion:v5 widget:v8 blendingCacheId:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)view:(id)a3 didFinishExecutingSuggestion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 setCanEngageSuggestion:1];
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "didFinishExecutingSuggestion invoked with suggestion: %@", buf, 0xCu);
  }

  v8 = dispatch_time(0, 300000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__APUISuggestionsWidgetViewController_view_didFinishExecutingSuggestion___block_invoke;
  v11[3] = &unk_278C909F0;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __73__APUISuggestionsWidgetViewController_view_didFinishExecutingSuggestion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) suggestionClient];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widgetIdentifiable];
  [v4 didFinishExecutingTappedSuggestion:v2 fromWidget:v3];
}

- (void)view:(id)a3 didFailExecutingSuggestion:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [a3 setCanEngageSuggestion:1];
  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "didFailExecutingSuggestion invoked with suggestion: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setShowingContextMenu:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ATXProactiveSuggestion *)self->_selectedSuggestion uiSpecification];
    v7 = [v6 title];
    *buf = 67109378;
    v13 = v3;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: setShowingContextMenu %{BOOL}u _selectedSuggestion: %@", buf, 0x12u);
  }

  if (self->_showingContextMenu != v3)
  {
    self->_showingContextMenu = v3;
    v8 = [(APUIWidgetViewController *)self suggestionClient];
    [v8 setIsUserInteractingWithProactiveWidget:self->_showingContextMenu];

    if (v3)
    {
      if ([(APUISuggestionsWidgetViewController *)self _canDismissSelectedSuggestion])
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __61__APUISuggestionsWidgetViewController_setShowingContextMenu___block_invoke;
        v11[3] = &unk_278C90A18;
        v11[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:2 delay:v11 options:0 animations:0.0 completion:0.1];
      }
    }

    else
    {
      v9 = [(APUISuggestionsWidgetViewController *)self widgetView];
      [v9 highlightSuggestion:0];

      [(APUISuggestionsWidgetViewController *)self _updateWidgetViewIfPossible];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __61__APUISuggestionsWidgetViewController_setShowingContextMenu___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetView];
  [v2 highlightSuggestion:*(*(a1 + 32) + 1040)];
}

- (void)willShowContextMenuAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(APUISuggestionsWidgetView *)self->_widgetView suggestionAtLocation:?];
  selectedSuggestion = self->_selectedSuggestion;
  self->_selectedSuggestion = v6;

  v8 = __atxlog_handle_ui();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19.x = x;
    v19.y = y;
    v9 = NSStringFromCGPoint(v19);
    v10 = self->_selectedSuggestion;
    v12 = 136446722;
    v13 = "[APUISuggestionsWidgetViewController willShowContextMenuAtLocation:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s location=%@ _selectedSuggestion=%@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)applicationShortcutItems
{
  if ([(APUISuggestionsWidgetViewController *)self _canDismissSelectedSuggestion])
  {
    v3 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion" localizedName:&stru_285201410];
    v4 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v3];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([(APUISuggestionsWidgetViewController *)self _canSaveSelectedSuggestion])
  {
    v5 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion" localizedName:&stru_285201410];
    v6 = [v4 arrayByAddingObject:v5];

    v4 = v6;
  }

  return v4;
}

- (BOOL)_canDismissSelectedSuggestion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(APUIWidgetViewController *)self suggestionClient];
  selectedSuggestion = self->_selectedSuggestion;
  v5 = [(APUIWidgetViewController *)self layout];
  LOBYTE(selectedSuggestion) = [v3 isSuggestionReplacementAvailableForSuggestion:selectedSuggestion inLayout:v5];

  if (selectedSuggestion)
  {
    v6 = [(ATXProactiveSuggestion *)self->_selectedSuggestion executableSpecification];
    v7 = [v6 executableType];

    if (v7 != 5)
    {
      result = 1;
      goto LABEL_10;
    }

    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "[APUISuggestionsWidgetViewController _canDismissSelectedSuggestion]";
      v9 = "SuggestionsWidget: %{public}s _selectedSuggestion is App Clip";
LABEL_7:
      _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  else
  {
    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = "[APUISuggestionsWidgetViewController _canDismissSelectedSuggestion]";
      v9 = "SuggestionsWidget: %{public}s No replacement available for _selectedSuggestion";
      goto LABEL_7;
    }
  }

  result = 0;
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_canSaveSelectedSuggestion
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_selectedSuggestion)
  {
    if (![objc_opt_class() _isSuggestionShortcut:self->_selectedSuggestion])
    {
      result = 1;
      goto LABEL_10;
    }

    v2 = __atxlog_handle_ui();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[APUISuggestionsWidgetViewController _canSaveSelectedSuggestion]";
      v3 = "SuggestionsWidget: %{public}s NO: _selectedSuggestion is already shortcut";
LABEL_7:
      _os_log_impl(&dword_240036000, v2, OS_LOG_TYPE_DEFAULT, v3, &v6, 0xCu);
    }
  }

  else
  {
    v2 = __atxlog_handle_ui();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[APUISuggestionsWidgetViewController _canSaveSelectedSuggestion]";
      v3 = "SuggestionsWidget: %{public}s NO: _selectedSuggestion is null";
      goto LABEL_7;
    }
  }

  result = 0;
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didSelectApplicationShortcutItem:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_selectedSuggestion)
  {
    goto LABEL_5;
  }

  v5 = [(APUIWidgetViewController *)self layout];
  v6 = [v5 minSuggestionListInLayout];

  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
    selectedSuggestion = self->_selectedSuggestion;
    self->_selectedSuggestion = v7;
  }

  if (self->_selectedSuggestion)
  {
LABEL_5:
    v9 = __atxlog_handle_ui();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_selectedSuggestion;
      v23 = 136446466;
      v24 = "[APUISuggestionsWidgetViewController didSelectApplicationShortcutItem:]";
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _selectedSuggestion=%@", &v23, 0x16u);
    }

    v11 = [v4 type];
    if ([v11 isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion"])
    {
      v12 = [(APUIWidgetViewController *)self suggestionClient];
      v13 = self->_selectedSuggestion;
      v14 = [(APUIWidgetViewController *)self widgetIdentifiable];
      v15 = [(APUIWidgetViewController *)self layout];
      v16 = [v15 uuid];
      v17 = [v16 UUIDString];
      [v12 logContextMenuDismissOnceForSuggestion:v13 widget:v14 blendingCacheId:v17];

LABEL_14:
      goto LABEL_20;
    }

    if ([v11 isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion"])
    {
      v18 = __atxlog_handle_ui();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136446210;
        v24 = "[APUISuggestionsWidgetViewController didSelectApplicationShortcutItem:]";
        _os_log_impl(&dword_240036000, v18, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s saving it", &v23, 0xCu);
      }

      v19 = [objc_opt_class() _shortcutWithSuggestion:self->_selectedSuggestion];
      if (v19)
      {
        v12 = v19;
        v20 = [objc_alloc(MEMORY[0x277CD45D8]) initWithShortcut:v19];
        [v20 setDelegate:self];
        [v20 setModalPresentationStyle:-2];
        [(APUISuggestionsWidgetViewController *)self presentViewController:v20 animated:1 completion:0];

        goto LABEL_14;
      }
    }

    v21 = __atxlog_handle_ui();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [(APUISuggestionsWidgetViewController *)v11 didSelectApplicationShortcutItem:v21];
    }
  }

  else
  {
    v11 = __atxlog_handle_ui();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(APUISuggestionsWidgetViewController *)self didSelectApplicationShortcutItem:v11];
    }
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)_shortcutWithSuggestion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a1 _actionWithSuggestion:a3];
  v4 = __atxlog_handle_ui();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s atxAction=%@", &v15, 0x16u);
  }

  if (![v3 actionType] || objc_msgSend(v3, "actionType") == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CD4158]);
    v6 = [v3 intent];
    v7 = [v5 initWithIntent:v6];

    v8 = __atxlog_handle_ui();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 136446466;
    v16 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
    v17 = 2112;
    v18 = v7;
    v9 = "SuggestionsWidget: %{public}s ATXActionTypeIntent or ATXActionTypeOFA shortcut=%@";
    goto LABEL_7;
  }

  if ([v3 actionType] == 1)
  {
    v10 = objc_alloc(MEMORY[0x277CD4158]);
    v11 = [v3 userActivity];
    v12 = [v3 bundleId];
    v7 = [v10 initWithUserActivity:v11 bundleIdentifier:v12];

    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
      v17 = 2112;
      v18 = v7;
      v9 = "SuggestionsWidget: %{public}s ATXActionTypeNSUserActivity shortcut=%@";
LABEL_7:
      _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, 0x16u);
    }
  }

  else
  {
    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446466;
      v16 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s action type not handled shortcut=%@", &v15, 0x16u);
    }

    v7 = 0;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)_isSuggestionShortcut:(id)a3
{
  v3 = [a1 _actionWithSuggestion:a3];
  v4 = [v3 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)_actionWithSuggestion:(id)a3
{
  v3 = [a3 executableSpecification];
  v4 = [v3 executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addVoiceShortcutViewController:(id)a3 didFinishWithVoiceShortcut:(id)a4 error:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 dismissViewControllerAnimated:1 completion:0];
  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[APUISuggestionsWidgetViewController addVoiceShortcutViewController:didFinishWithVoiceShortcut:error:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s didFinishWithVoiceShortcut=%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addVoiceShortcutViewControllerDidCancel:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  [a3 dismissViewControllerAnimated:1 completion:0];
  v3 = __atxlog_handle_ui();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[APUISuggestionsWidgetViewController addVoiceShortcutViewControllerDidCancel:]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s addVoiceShortcutViewControllerDidCancel", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (APUISuggestionsWidgetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSelectApplicationShortcutItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: didSelectApplicationShortcutItem: %@ is not valid for Suggestions Widget", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didSelectApplicationShortcutItem:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 layout];
  v5 = 134218242;
  v6 = 5517;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: No selected suggestion found in layout %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end