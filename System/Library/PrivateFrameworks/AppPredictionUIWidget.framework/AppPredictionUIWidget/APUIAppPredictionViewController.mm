@interface APUIAppPredictionViewController
+ (id)_bundleIdentifierSetFromApplicationProxies:(id)proxies;
+ (id)_bundleIdentifierSetFromApplicationRecords:(id)records;
- (APUIAppPredictionViewController)initWithIdentifier:(id)identifier layoutSize:(unint64_t)size mode:(unint64_t)mode;
- (APUIAppPredictionViewControllerDelegate)delegate;
- (BOOL)_canDismissSelectedSuggestion;
- (BOOL)appIconGridView:(id)view launchAppFromIcon:(id)icon;
- (BOOL)appIconGridView:(id)view shouldDisplayBadgeWithBundleIdentifier:(id)identifier;
- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD;
- (NSArray)applicationShortcutItems;
- (UIEdgeInsets)parentLayoutInsets;
- (id)_fallbackBundleIds;
- (id)additionalIconListLayoutObserversForAppIconGridView:(id)view;
- (id)appIconGridView:(id)view iconForApplicationWithBundleIdentifier:(id)identifier;
- (unint64_t)layoutSize;
- (void)_loadAppsInGridView:(id)view;
- (void)_updateGridViewForBundleIds:(id)ids;
- (void)_updateLayoutInGridView:(id)view;
- (void)_updateUserInteractingState;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)didSelectApplicationShortcutItem:(id)item;
- (void)setLayoutSize:(unint64_t)size;
- (void)setLegibilitySettings:(id)settings;
- (void)setMode:(unint64_t)mode;
- (void)setOccluded:(BOOL)occluded;
- (void)setParentLayoutInsets:(UIEdgeInsets)insets;
- (void)setShowingAlert:(BOOL)alert;
- (void)setShowingContextMenu:(BOOL)menu;
- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willShowContextMenuAtLocation:(CGPoint)location;
@end

@implementation APUIAppPredictionViewController

- (APUIAppPredictionViewController)initWithIdentifier:(id)identifier layoutSize:(unint64_t)size mode:(unint64_t)mode
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = APUIAppPredictionViewController;
  v9 = [(APUIWidgetViewController *)&v27 initWithIdentifier:identifierCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    [(APUIWidgetViewController *)v9 setWidgetIdentifiable:v10];

    widgetIdentifiable = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable setWidgetUniqueId:identifierCopy];

    widgetIdentifiable2 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable2 setSize:size];

    v13 = *MEMORY[0x277CEB1C0];
    widgetIdentifiable3 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable3 setExtensionBundleId:v13];

    v15 = ATXSpecialWidgetKindAppPredictions();
    widgetIdentifiable4 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable4 setWidgetKind:v15];

    v9->_mode = mode;
    v17 = objc_opt_new();
    usedFallbacks = v9->_usedFallbacks;
    v9->_usedFallbacks = v17;

    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    [(APUIWidgetViewController *)v9 setSuggestionClient:mEMORY[0x277CEB5A0]];

    suggestionClient = [(APUIWidgetViewController *)v9 suggestionClient];
    [suggestionClient registerObserver:v9];

    v21 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke;
    block[3] = &unk_278C90A18;
    v26 = v9;
    dispatch_async(v21, block);

    v22 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = identifierCopy;
      v30 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_240036000, v22, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppPredictionViewController initWithIdentifier %@; mode=%ld", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

void __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:64];
  v3 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationRecords:v2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke_2;
  v5[3] = &unk_278C909F0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1056);
  *(v3 + 1056) = v2;

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v5 addObserver:*(a1 + 32)];
}

- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD
{
  iDCopy = iD;
  identifier = [(APUIWidgetViewController *)self identifier];
  v7 = [identifier isEqualToString:iDCopy];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v5.receiver = self;
  v5.super_class = APUIAppPredictionViewController;
  [(APUIWidgetViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = APUIAppPredictionViewController;
  [(APUIAppPredictionViewController *)&v8 viewDidLoad];
  v3 = __atxlog_handle_ui();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[APUIAppPredictionViewController viewDidLoad]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  v4 = [[APUIAppIconGridView alloc] initWithDelegate:self];
  gridView = self->_gridView;
  self->_gridView = v4;

  [(APUIAppIconGridView *)self->_gridView setMode:self->_mode];
  [(APUIAppIconGridView *)self->_gridView setLegibilitySettings:self->_legibilitySettings];
  [(APUIAppIconGridView *)self->_gridView setOccluded:[(APUIAppPredictionViewController *)self isOccluded]];
  [(APUIAppPredictionViewController *)self _updateEffectiveLargeIconLayoutAnimated:0];
  [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
  view = [(APUIAppPredictionViewController *)self view];
  [view addSubview:self->_gridView];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = APUIAppPredictionViewController;
  [(APUIAppPredictionViewController *)&v19 viewDidLayoutSubviews];
  view = [(APUIAppPredictionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !self->_mode)
  {
    left = self->_parentLayoutInsets.left;
    v5 = v5 - left;
    v9 = v9 + left + self->_parentLayoutInsets.right;
  }

  [(APUIAppIconGridView *)self->_gridView setFrame:v5, v7, v9, v11];
  v15 = __atxlog_handle_ui();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [(APUIAppIconGridView *)self->_gridView frame];
    v16 = NSStringFromCGRect(v27);
    v17 = NSStringFromUIEdgeInsets(self->_parentLayoutInsets);
    *buf = 136446722;
    v21 = "[APUIAppPredictionViewController viewDidLayoutSubviews]";
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _gridView.frame=%{public}@, parentLayoutInsets=%{public}@", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setOccluded:(BOOL)occluded
{
  if (self->_occluded != occluded)
  {
    self->_occluded = occluded;
    [(APUIAppIconGridView *)self->_gridView setOccluded:?];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v6 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(APUIAppIconGridView *)self->_gridView setLegibilitySettings:self->_legibilitySettings];
    settingsCopy = v6;
  }
}

- (void)setParentLayoutInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_parentLayoutInsets.top), vceqq_f64(v4, *&self->_parentLayoutInsets.bottom)))) & 1) == 0)
  {
    self->_parentLayoutInsets = insets;
    viewIfLoaded = [(APUIAppPredictionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (unint64_t)layoutSize
{
  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v3 = [widgetIdentifiable size];

  return v3;
}

- (void)setLayoutSize:(unint64_t)size
{
  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v6 = [widgetIdentifiable size];

  if (v6 != size)
  {
    widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
    [widgetIdentifiable2 setSize:size];

    gridView = self->_gridView;

    [(APUIAppPredictionViewController *)self _loadAppsInGridView:gridView];
  }
}

- (void)setMode:(unint64_t)mode
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_mode != mode)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(APUIWidgetViewController *)self identifier];
      v9 = 134218242;
      modeCopy = mode;
      v11 = 2112;
      v12 = identifier;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController setting mode: %ld for widget with identifier: %@", &v9, 0x16u);
    }

    self->_mode = mode;
    [(APUIAppPredictionViewController *)self _updateEffectiveLargeIconLayoutAnimated:0];
    [(APUIAppIconGridView *)self->_gridView setMode:self->_mode];
    viewIfLoaded = [(APUIAppPredictionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__APUIAppPredictionViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke;
  block[3] = &unk_278C90A18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__APUIAppPredictionViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = v3[130];

    return [v3 _loadAppsInGridView:v4];
  }

  return result;
}

- (id)_fallbackBundleIds
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"com.apple.mobilephone", @"com.apple.Preferences", @"com.apple.mobiletimer", @"com.apple.camera", @"com.apple.MobileSMS", @"com.apple.AppStore", @"com.apple.mobileslideshow", @"com.apple.mobilesafari", 0}];

  return v2;
}

- (void)_loadAppsInGridView:(id)view
{
  v23 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (self->_userInteracting)
  {
    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      userInteracting = self->_userInteracting;
      *buf = 136446466;
      v20 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
      v21 = 1024;
      LODWORD(v22) = userInteracting;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s aborted: _userInteracting=%{BOOL}d", buf, 0x12u);
    }

LABEL_15:

    goto LABEL_16;
  }

  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v8 = [widgetIdentifiable size];

  if (v8 != 1)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(APUIAppPredictionViewController *)self _loadAppsInGridView:v5];
    }

    goto LABEL_15;
  }

  v9 = __atxlog_handle_ui();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136446466;
    v20 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _delegate=%@", buf, 0x16u);
  }

  v11 = __atxlog_handle_ui();
  v5 = v11;
  if (!viewCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [APUIAppPredictionViewController _loadAppsInGridView:v5];
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v20 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s starting asynchronous layout request", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
  widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke;
  v16[3] = &unk_278C90A68;
  v18 = Current;
  v16[4] = self;
  v17 = viewCopy;
  [suggestionClient layoutForAppPredictionPanel:widgetIdentifiable2 completionHandler:v16];

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
}

void __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke_2;
  v6[3] = &unk_278C90A40;
  v9 = a1[6];
  v4 = a1[5];
  v6[4] = a1[4];
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_ui();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v6 = 136446466;
    v7 = "[APUIAppPredictionViewController _loadAppsInGridView:]_block_invoke_2";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_240036000, v2, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s finished asynchronous layout request: %f seconds", &v6, 0x16u);
  }

  [*(a1 + 32) setLayout:*(a1 + 40)];
  result = [*(a1 + 32) _updateLayoutInGridView:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updateLayoutInGridView:(id)view
{
  v99 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v77 = objc_opt_new();
  v5 = objc_opt_new();
  bundleIdSuggestionMap = self->_bundleIdSuggestionMap;
  self->_bundleIdSuggestionMap = v5;

  layout = [(APUIWidgetViewController *)self layout];

  if (layout)
  {
    v75 = viewCopy;
    [viewCopy setShouldDisplayEmptyState:0];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    layout2 = [(APUIWidgetViewController *)self layout];
    oneByOneSuggestions = [layout2 oneByOneSuggestions];

    v10 = [oneByOneSuggestions countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    v12 = *v91;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v91 != v12)
        {
          objc_enumerationMutation(oneByOneSuggestions);
        }

        v14 = *(*(&v90 + 1) + 8 * i);
        executableSpecification = [v14 executableSpecification];
        executableObject = [executableSpecification executableObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = executableObject;
          if (![v17 length])
          {
            goto LABEL_21;
          }

          if (([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:v17] & 1) != 0 || objc_msgSend(MEMORY[0x277CEB3B8], "isInstalledAndNotRestrictedForBundle:", v17))
          {
            if (([(NSMutableSet *)self->_installingBundleIds containsObject:v17]& 1) == 0)
            {
              [v77 addObject:v17];
            }

            [(NSMutableDictionary *)self->_bundleIdSuggestionMap setObject:v14 forKeyedSubscript:v17];
            v18 = __atxlog_handle_ui();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v97 = v17;
              v19 = v18;
              v20 = "SuggestionsWidget: app suggestion for: %@";
              goto LABEL_19;
            }
          }

          else
          {
            v18 = __atxlog_handle_ui();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v97 = v17;
              v19 = v18;
              v20 = "SuggestionsWidget: %@ is restricted or not installed";
LABEL_19:
              _os_log_impl(&dword_240036000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
            }
          }

          goto LABEL_21;
        }

        v17 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [(APUIAppPredictionViewController *)&v88 _updateLayoutInGridView:v89, v17];
        }

LABEL_21:
      }

      v11 = [oneByOneSuggestions countByEnumeratingWithState:&v90 objects:v98 count:16];
      if (!v11)
      {
LABEL_23:

        suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
        identifier = [(APUIWidgetViewController *)self identifier];
        v23 = [suggestionClient pageIndexOfAppPredictionPanelWithIdentifier:identifier];

        if (v23 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = __atxlog_handle_ui();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(APUIAppPredictionViewController *)self _updateLayoutInGridView:v24];
          }

          p_usedFallbacks = &self->_usedFallbacks;
          [(NSMutableSet *)self->_usedFallbacks removeAllObjects];
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          p_usedFallbacks = &self->_usedFallbacks;
          v29 = self->_usedFallbacks;
          v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v84 objects:v95 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v85;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v85 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v84 + 1) + 8 * j);
                suggestion = [v34 suggestion];

                if (suggestion)
                {
                  suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
                  bundleId = [v34 bundleId];
                  [suggestionClient2 markFallbackAppSuggestion:bundleId asUnusedForPage:v23];
                }
              }

              v31 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v84 objects:v95 count:16];
            }

            while (v31);
          }

          [(NSMutableSet *)*p_usedFallbacks removeAllObjects];
          suggestionClient3 = [(APUIWidgetViewController *)self suggestionClient];
          v39 = [suggestionClient3 unusedFallbackAppSuggestionsForPage:v23];

          if ([v77 count] <= 7)
          {
            do
            {
              if (![v39 count])
              {
                break;
              }

              firstObject = [v39 firstObject];
              executableSpecification2 = [firstObject executableSpecification];
              executableObject2 = [executableSpecification2 executableObject];

              v43 = __atxlog_handle_ui();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v97 = executableObject2;
                _os_log_debug_impl(&dword_240036000, v43, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: using HSSC fallback: %@", buf, 0xCu);
              }

              [v77 addObject:executableObject2];
              [v39 removeObjectAtIndex:0];
              v44 = *p_usedFallbacks;
              v45 = [[APUIAppFallback alloc] initWithProactiveSuggestion:firstObject];
              [(NSMutableSet *)v44 addObject:v45];

              suggestionClient4 = [(APUIWidgetViewController *)self suggestionClient];
              [suggestionClient4 markFallbackAppSuggestion:executableObject2 asUsedForPage:v23];
            }

            while ([v77 count] < 8);
          }
        }

        _fallbackBundleIds = [(APUIAppPredictionViewController *)self _fallbackBundleIds];
        v76 = _fallbackBundleIds;
        if ([v77 count] <= 7)
        {
          *&v48 = 138412290;
          v74 = v48;
          do
          {
            if (![_fallbackBundleIds count])
            {
              break;
            }

            lastObject = [_fallbackBundleIds lastObject];
            v50 = __atxlog_handle_ui();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = v74;
              v97 = lastObject;
              _os_log_debug_impl(&dword_240036000, v50, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: using fallback: %@", buf, 0xCu);
            }

            [_fallbackBundleIds removeLastObject];
            [v77 addObject:lastObject];
            v51 = *p_usedFallbacks;
            v52 = [[APUIAppFallback alloc] initWithBundleId:lastObject];
            [(NSMutableSet *)v51 addObject:v52];

            _fallbackBundleIds = v76;
          }

          while ([v77 count] < 8);
        }

        array = [v77 array];
        v54 = [v77 count];
        if (v54 >= 8)
        {
          v55 = 8;
        }

        else
        {
          v55 = v54;
        }

        v56 = [array subarrayWithRange:{0, v55}];
        [v75 setBundleIds:v56];

        v57 = __atxlog_handle_ui();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          bundleIds = [v75 bundleIds];
          *buf = 138412290;
          v97 = bundleIds;
          _os_log_impl(&dword_240036000, v57, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: gridView.bundleIds=%@", buf, 0xCu);
        }

        suggestionIds = [(APUIWidgetViewController *)self suggestionIds];
        v79 = [suggestionIds mutableCopy];

        v60 = objc_opt_new();
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        bundleIds2 = [v75 bundleIds];
        v62 = [bundleIds2 countByEnumeratingWithState:&v80 objects:v94 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v81;
          do
          {
            for (k = 0; k != v63; ++k)
            {
              if (*v81 != v64)
              {
                objc_enumerationMutation(bundleIds2);
              }

              v66 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:*(*(&v80 + 1) + 8 * k)];
              v67 = v66;
              if (v66)
              {
                uuid = [v66 uuid];
                uUIDString = [uuid UUIDString];
                [v60 addObject:uUIDString];
              }
            }

            v63 = [bundleIds2 countByEnumeratingWithState:&v80 objects:v94 count:16];
          }

          while (v63);
        }

        v70 = [v60 copy];
        [(APUIWidgetViewController *)self setSuggestionIds:v70];

        suggestionClient6 = v79;
        if ([(APUIWidgetViewController *)self effectiveViewVisibility])
        {
          suggestionIds2 = [(APUIWidgetViewController *)self suggestionIds];
          suggestionClient5 = [(APUIWidgetViewController *)self suggestionClient];
          [(APUIWidgetViewController *)self logChangeWithNewSuggestionIds:suggestionIds2 previousSuggestionIds:v79 suggestionClient:suggestionClient5];
        }

        viewCopy = v75;
        v27 = v76;
        goto LABEL_68;
      }
    }
  }

  v25 = __atxlog_handle_ui();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [APUIAppPredictionViewController _updateLayoutInGridView:v25];
  }

  [viewCopy setShouldDisplayEmptyState:1];
  [viewCopy setBundleIds:0];
  suggestionIds3 = [(APUIWidgetViewController *)self suggestionIds];
  v27 = [suggestionIds3 copy];

  [(APUIWidgetViewController *)self setSuggestionIds:0];
  suggestionClient6 = [(APUIWidgetViewController *)self suggestionClient];
  [(APUIWidgetViewController *)self logChangeWithNewSuggestionIds:0 previousSuggestionIds:v27 suggestionClient:suggestionClient6];
LABEL_68:

  v73 = *MEMORY[0x277D85DE8];
}

- (BOOL)appIconGridView:(id)view launchAppFromIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    applicationBundleID = [iconCopy applicationBundleID];
    if (applicationBundleID)
    {
      v7 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:applicationBundleID];
      if (v7)
      {
        v8 = v7;
        suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
        widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
        layout = [(APUIWidgetViewController *)self layout];
        uuid = [layout uuid];
        uUIDString = [uuid UUIDString];
        [suggestionClient logDidTapSuggestion:v8 widget:widgetIdentifiable blendingCacheId:uUIDString];

        suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
        widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
        [suggestionClient2 didFinishExecutingTappedSuggestion:v8 fromWidget:widgetIdentifiable2];
      }
    }
  }

  else
  {
    applicationBundleID = 0;
  }

  return 0;
}

- (BOOL)appIconGridView:(id)view shouldDisplayBadgeWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 appPredictionViewController:self shouldDisplayBadgeWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)appIconGridView:(id)view iconForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 appPredictionViewController:self iconForApplicationWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)additionalIconListLayoutObserversForAppIconGridView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 additionalIconListLayoutObserversForAppPredictionViewController:self];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)setShowingContextMenu:(BOOL)menu
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_showingContextMenu != menu)
  {
    menuCopy = menu;
    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[APUIAppPredictionViewController setShowingContextMenu:]";
      v9 = 1024;
      v10 = menuCopy;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s showingContextMenu=%{BOOL}u", &v7, 0x12u);
    }

    self->_showingContextMenu = menuCopy;
    [(APUIAppPredictionViewController *)self _updateUserInteractingState];
    if (menuCopy)
    {
      if ([(APUIAppPredictionViewController *)self _canDismissSelectedSuggestion])
      {
        [(APUIAppIconGridView *)self->_gridView highlightIconForBundleId:self->_selectedBundleId];
      }
    }

    else
    {
      [(APUIAppIconGridView *)self->_gridView highlightIconForBundleId:0];
      [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setShowingAlert:(BOOL)alert
{
  alertCopy = alert;
  v11 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[APUIAppPredictionViewController setShowingAlert:]";
    v9 = 1024;
    v10 = alertCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s showingAlert=%{BOOL}u", &v7, 0x12u);
  }

  if (self->_showingAlert != alertCopy)
  {
    self->_showingAlert = alertCopy;
    [(APUIAppPredictionViewController *)self _updateUserInteractingState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateUserInteractingState
{
  v2 = self->_showingAlert || self->_showingContextMenu;
  if (self->_userInteracting != v2)
  {
    [(APUIAppPredictionViewController *)self setUserInteracting:?];
  }
}

- (void)willShowContextMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = *MEMORY[0x277D85DE8];
  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22.x = x;
    v22.y = y;
    v7 = NSStringFromCGPoint(v22);
    v17 = 136446466;
    v18 = "[APUIAppPredictionViewController willShowContextMenuAtLocation:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s location=%@", &v17, 0x16u);
  }

  gridView = self->_gridView;
  view = [(APUIAppPredictionViewController *)self view];
  [(APUIAppIconGridView *)gridView convertPoint:view fromView:x, y];
  v11 = v10;
  v13 = v12;

  v14 = [(APUIAppIconGridView *)self->_gridView bundleIdAtLocation:v11, v13];
  selectedBundleId = self->_selectedBundleId;
  self->_selectedBundleId = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (NSArray)applicationShortcutItems
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(APUIAppPredictionViewController *)self _canDismissSelectedSuggestion])
  {
    v3 = [MEMORY[0x277CEB3B8] localizedNameForBundle:self->_selectedBundleId];
    selectedAppLocalizedName = self->_selectedAppLocalizedName;
    self->_selectedAppLocalizedName = v3;

    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_selectedAppLocalizedName;
      *buf = 136446466;
      v13 = "[APUIAppPredictionViewController applicationShortcutItems]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _selectedAppLocalizedName=%@", buf, 0x16u);
    }

    v7 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion" localizedName:self->_selectedAppLocalizedName];
    v11 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  }

  else
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = "[APUIAppPredictionViewController applicationShortcutItems]";
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s No additional shortcut items", buf, 0xCu);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_canDismissSelectedSuggestion
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_selectedBundleId)
  {
    usedFallbacks = self->_usedFallbacks;
    v4 = [[APUIAppFallback alloc] initWithBundleId:self->_selectedBundleId];
    LODWORD(usedFallbacks) = [(NSMutableSet *)usedFallbacks containsObject:v4];

    if (usedFallbacks)
    {
      v5 = __atxlog_handle_ui();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446210;
        v17 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
        v6 = "SuggestionsWidget: %{public}s Cannot dismiss a fallback";
LABEL_7:
        _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, v6, &v16, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v5 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:self->_selectedBundleId];
    executableSpecification = [v5 executableSpecification];
    executableType = [executableSpecification executableType];

    if (executableType == 5)
    {
      v9 = __atxlog_handle_ui();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        goto LABEL_16;
      }

      selectedBundleId = self->_selectedBundleId;
      v16 = 136446466;
      v17 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
      v18 = 2112;
      v19 = selectedBundleId;
      v11 = "SuggestionsWidget: %{public}s _selectedBundleId %@ is app clip. Cannot dismiss suggestion";
    }

    else
    {
      if (![MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:self->_selectedBundleId])
      {
        v13 = 1;
        goto LABEL_17;
      }

      v9 = __atxlog_handle_ui();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v12 = self->_selectedBundleId;
      v16 = 136446466;
      v17 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
      v18 = 2112;
      v19 = v12;
      v11 = "SuggestionsWidget: %{public}s _selectedBundleId %@ is AppClip. Cannot dismiss suggestion";
    }

    _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x16u);
    goto LABEL_15;
  }

  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446210;
    v17 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
    v6 = "SuggestionsWidget: %{public}s _selectedBundleId is nil. Cannot dismiss suggestion";
    goto LABEL_7;
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)didSelectApplicationShortcutItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "[APUIAppPredictionViewController didSelectApplicationShortcutItem:]";
    v29 = 2112;
    v30 = itemCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s applicationShortcutItem=%@", buf, 0x16u);
  }

  v6 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:self->_selectedBundleId];
  if (v6)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v28 = "[APUIAppPredictionViewController didSelectApplicationShortcutItem:]";
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s suggestion=%@", buf, 0x16u);
    }

    type = [itemCopy type];
    if ([type isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion"])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"Don’t Suggest “%@”" value:&stru_285201410 table:0];
      v12 = [v9 localizedStringWithFormat:v11, self->_selectedAppLocalizedName];

      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"“%@” will not be suggested on Home Screen. You can change this later in Siri Settings." value:&stru_285201410 table:0];
      v16 = [v13 localizedStringWithFormat:v15, self->_selectedAppLocalizedName];

      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"Cancel" value:&stru_285201410 table:0];

      v19 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v16 preferredStyle:0];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke;
      v26[3] = &unk_278C90A90;
      v26[4] = self;
      v20 = [MEMORY[0x277D750F8] actionWithTitle:v18 style:1 handler:v26];
      [v19 addAction:v20];

      v21 = MEMORY[0x277D750F8];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke_2;
      v24[3] = &unk_278C90AB8;
      v24[4] = self;
      v25 = v6;
      v22 = [v21 actionWithTitle:v12 style:2 handler:v24];
      [v19 addAction:v22];

      [(APUIAppPredictionViewController *)self setShowingAlert:1];
      [(APUIAppPredictionViewController *)self presentViewController:v19 animated:1 completion:0];
    }

    else
    {
      v12 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(APUIAppPredictionViewController *)type didSelectApplicationShortcutItem:v12];
      }
    }
  }

  else
  {
    type = __atxlog_handle_home_screen();
    if (os_log_type_enabled(type, OS_LOG_TYPE_ERROR))
    {
      [APUIAppPredictionViewController didSelectApplicationShortcutItem:type];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShowingAlert:0];
  v7 = [*(a1 + 32) suggestionClient];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widgetIdentifiable];
  v4 = [*(a1 + 32) layout];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  [v7 logContextMenuNeverShowAgainForSuggestion:v2 widget:v3 blendingCacheId:v6];
}

- (void)applicationInstallsDidStart:(id)start
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:start];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[APUIAppPredictionViewController applicationInstallsDidStart:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__APUIAppPredictionViewController_applicationInstallsDidStart___block_invoke;
  v8[3] = &unk_278C909F0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __63__APUIAppPredictionViewController_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) unionSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)applicationsDidInstall:(id)install
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:install];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[APUIAppPredictionViewController applicationsDidInstall:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__APUIAppPredictionViewController_applicationsDidInstall___block_invoke;
  v8[3] = &unk_278C909F0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __58__APUIAppPredictionViewController_applicationsDidInstall___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:icon];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[APUIAppPredictionViewController applicationInstallsDidUpdateIcon:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__APUIAppPredictionViewController_applicationInstallsDidUpdateIcon___block_invoke;
  v8[3] = &unk_278C909F0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:uninstall];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[APUIAppPredictionViewController applicationsDidUninstall:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__APUIAppPredictionViewController_applicationsDidUninstall___block_invoke;
  v8[3] = &unk_278C909F0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __60__APUIAppPredictionViewController_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)_updateGridViewForBundleIds:(id)ids
{
  v21 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [idsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(idsCopy);
      }

      v10 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];

      v7 |= v10 != 0;
    }

    v6 = [idsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  }

  while (v6);
  if (v7)
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = idsCopy;
      _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController _updateInstallingBundleIdsWithApplicationProxies: %@ ; reloading apps", buf, 0xCu);
    }

    [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
  }

  else
  {
LABEL_12:
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = idsCopy;
      _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController _updateInstallingBundleIdsWithApplicationProxies: %@ ; not reloading apps", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)_bundleIdentifierSetFromApplicationRecords:(id)records
{
  v19 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        [v4 addObject:bundleIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_bundleIdentifierSetFromApplicationProxies:(id)proxies
{
  v3 = MEMORY[0x277CBEB98];
  proxiesCopy = proxies;
  v5 = [v3 alloc];
  v6 = [proxiesCopy _pas_mappedArrayWithTransform:&__block_literal_global];

  v7 = [v5 initWithArray:v6];

  return v7;
}

- (UIEdgeInsets)parentLayoutInsets
{
  top = self->_parentLayoutInsets.top;
  left = self->_parentLayoutInsets.left;
  bottom = self->_parentLayoutInsets.bottom;
  right = self->_parentLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (APUIAppPredictionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadAppsInGridView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 widgetIdentifiable];
  v5 = 134217984;
  v6 = [v3 size];
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "Trying to load apps for unsupported app panel size: %ld", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadAppsInGridView:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "SuggestionsWidget: %{public}s gridView=nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_updateLayoutInGridView:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "App suggestion executable is not a string as expected", buf, 2u);
}

- (void)_updateLayoutInGridView:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "SuggestionsWidget: could not find page index for app prediction widget with identifier: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didSelectApplicationShortcutItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "didSelectApplicationShortcutItem: %@ is not valid for App Prediction Panel", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end