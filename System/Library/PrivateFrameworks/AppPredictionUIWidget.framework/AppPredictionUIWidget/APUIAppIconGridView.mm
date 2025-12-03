@interface APUIAppIconGridView
+ (id)createDismissSuggestionApplicationShortcutItemWithType:(id)type localizedName:(id)name;
- (APUIAppIconGridView)initWithDelegate:(id)delegate;
- (BOOL)appIconDataSource:(id)source launchAppFromIcon:(id)icon;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (double)_iconLabelAlphaForMode:(unint64_t)mode;
- (id)_emptyStateLabel;
- (id)bundleIdAtLocation:(CGPoint)location;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (void)_addGridView;
- (void)_configureAliasingForIconView:(id)view;
- (void)_significantTimeChange:(id)change;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)highlightIconForBundleId:(id)id;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setBundleIds:(id)ids;
- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setLegibilitySettings:(id)settings;
- (void)setMode:(unint64_t)mode;
- (void)setOccluded:(BOOL)occluded;
- (void)setShouldDisplayEmptyState:(BOOL)state;
@end

@implementation APUIAppIconGridView

- (APUIAppIconGridView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = APUIAppIconGridView;
  v5 = [(APUIAppIconGridView *)&v12 init];
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getSBIconListModelClass_softClass;
    v17 = getSBIconListModelClass_softClass;
    if (!getSBIconListModelClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getSBIconListModelClass_block_invoke;
      v13[3] = &unk_278C90BC0;
      v13[4] = &v14;
      __getSBIconListModelClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = [[v6 alloc] initWithFolder:0 maxIconCount:8];
    model = v5->_model;
    v5->_model = v8;

    objc_storeWeak(&v5->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
    [(APUIAppIconGridView *)v5 _addGridView];
  }

  return v5;
}

- (void)_significantTimeChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  [WeakRetained removeAllIconViews];

  v5 = objc_loadWeakRetained(&self->_gridView);
  [v5 layoutIconsNow];
}

- (id)_emptyStateLabel
{
  emptyStateLabel = self->_emptyStateLabel;
  if (!emptyStateLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_emptyStateLabel;
    self->_emptyStateLabel = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"No Suggestions Available" value:&stru_285201410 table:0];
    [(UILabel *)self->_emptyStateLabel setText:v7];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_emptyStateLabel setTextColor:labelColor];

    [(UILabel *)self->_emptyStateLabel setNumberOfLines:0];
    [(UILabel *)self->_emptyStateLabel setTextAlignment:1];
    emptyStateLabel = self->_emptyStateLabel;
  }

  v9 = emptyStateLabel;

  return v9;
}

- (void)setShouldDisplayEmptyState:(BOOL)state
{
  if (self->_shouldDisplayEmptyState != state)
  {
    self->_shouldDisplayEmptyState = state;
    if (state)
    {
      _emptyStateLabel = [(APUIAppIconGridView *)self _emptyStateLabel];
      [(APUIAppIconGridView *)self addSubview:_emptyStateLabel];
    }

    else
    {
      [(UILabel *)self->_emptyStateLabel removeFromSuperview];
    }

    [(APUIAppIconGridView *)self setNeedsLayout];
  }
}

- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_largeIconsEnabled != enabled)
  {
    animatedCopy = animated;
    self->_largeIconsEnabled = enabled;
    v6 = [[APUIAppIconGridLayoutProvider alloc] initWithLargeIconsEnabled:[(APUIAppIconGridView *)self isLargeIconsEnabled]];
    layoutProvider = self->_layoutProvider;
    self->_layoutProvider = v6;

    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:self->_mode];
    if (animatedCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_gridView);
      [WeakRetained setLayoutProvider:self->_layoutProvider animated:1];
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__APUIAppIconGridView_setLargeIconsEnabled_animated___block_invoke;
      v9[3] = &unk_278C90A18;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    }
  }
}

void __53__APUIAppIconGridView_setLargeIconsEnabled_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  [WeakRetained setLayoutProvider:*(*(a1 + 32) + 456) animated:0];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 416));
  [v3 layoutIconsNow];
}

- (void)_addGridView
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);

  if (!WeakRetained)
  {
    v4 = [[APUIAppIconGridLayoutProvider alloc] initWithLargeIconsEnabled:[(APUIAppIconGridView *)self isLargeIconsEnabled]];
    layoutProvider = self->_layoutProvider;
    self->_layoutProvider = v4;

    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:self->_mode];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = getSBIconListViewClass_softClass;
    v21 = getSBIconListViewClass_softClass;
    if (!getSBIconListViewClass_softClass)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getSBIconListViewClass_block_invoke;
      v17[3] = &unk_278C90BC0;
      v17[4] = &v18;
      __getSBIconListViewClass_block_invoke(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [[v6 alloc] initWithModel:self->_model layoutProvider:self->_layoutProvider iconLocation:@"SBIconLocationAppPredictions" orientation:1 iconViewProvider:self];
    [v8 setIconViewConfigurationOptions:16];
    [v8 setContentVisibility:self->_occluded];
    [v8 setLegibilitySettings:self->_legibilitySettings];
    [(APUIAppIconGridView *)self _iconLabelAlphaForMode:self->_mode];
    [v8 setIconsLabelAlpha:?];
    [v8 setUsesGlassGroup:0];
    [v8 addLayoutObserver:self];
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 additionalIconListLayoutObserversForAppIconGridView:self];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __35__APUIAppIconGridView__addGridView__block_invoke;
    v15 = &unk_278C90B28;
    v16 = v8;
    v11 = v8;
    [v10 enumerateObjectsUsingBlock:&v12];
    [(APUIAppIconGridView *)self addSubview:v11, v12, v13, v14, v15];
    objc_storeWeak(&self->_gridView, v11);
  }
}

- (id)bundleIdAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(APUIAppIconGridView *)self hitTest:0 withEvent:?];
  v6 = [v5 apuiFindInnermostSuperviewOfClass:getSBIconViewClass()];
  icon = [v6 icon];
  applicationBundleID = 0;
  if (objc_opt_respondsToSelector())
  {
    applicationBundleID = [icon applicationBundleID];
  }

  v9 = __atxlog_handle_ui();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21.x = x;
    v21.y = y;
    v10 = NSStringFromCGPoint(v21);
    v13 = 136446722;
    v14 = "[APUIAppIconGridView bundleIdAtLocation:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = applicationBundleID;
    _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@ bundleID=%@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return applicationBundleID;
}

- (void)iconTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "AppIconGridView: iconTapped", buf, 2u);
  }

  icon = [tappedCopy icon];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained appIconGridView:self launchAppFromIcon:icon];

  if (v8)
  {
    applicationBundleID = __atxlog_handle_ui();
    if (os_log_type_enabled(applicationBundleID, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_240036000, applicationBundleID, OS_LOG_TYPE_DEFAULT, "AppIconGridView: iconTapped but delegate handled launch", v10, 2u);
    }

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    applicationBundleID = [icon applicationBundleID];
    [APUIAppIconDataSource openApplication:applicationBundleID completion:0];
LABEL_8:
  }
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  reusableIconViewMap = self->_reusableIconViewMap;
  if (!reusableIconViewMap)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v5 = getSBHReusableViewMapClass_softClass;
    v14 = getSBHReusableViewMapClass_softClass;
    if (!getSBHReusableViewMapClass_softClass)
    {
      SpringBoardHomeLibraryCore();
      v12[3] = objc_getClass("SBHReusableViewMap");
      getSBHReusableViewMapClass_softClass = v12[3];
      v5 = v12[3];
    }

    v6 = v5;
    _Block_object_dispose(&v11, 8);
    v7 = objc_alloc_init(v5);
    v8 = self->_reusableIconViewMap;
    self->_reusableIconViewMap = v7;

    reusableIconViewMap = self->_reusableIconViewMap;
  }

  v9 = [(SBHReusableViewMap *)reusableIconViewMap dequeueReusableViewOfClass:getSBIconViewClass()];

  return v9;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  v14 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  viewCopy = view;
  v8 = __atxlog_handle_ui();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[APUIAppIconGridView configureIconView:forIcon:]";
    v12 = 2112;
    v13 = iconCopy;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s icon=%@", &v10, 0x16u);
  }

  [viewCopy setDelegate:self];
  [viewCopy setIcon:iconCopy];
  [viewCopy setLabelAccessoryHidden:self->_mode == 1];
  [(APUIAppIconGridView *)self _configureAliasingForIconView:viewCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureAliasingForIconView:(id)view
{
  viewCopy = view;
  mode = self->_mode;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v8 = viewCopy;
  layer = [viewCopy layer];
  [layer setAllowsEdgeAntialiasing:v6];

  viewCopy = v8;
LABEL_6:
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  icon = [accessories icon];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([icon applicationBundleID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained appIconGridView:self shouldDisplayBadgeWithBundleIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setOccluded:(BOOL)occluded
{
  if (self->_occluded != occluded)
  {
    self->_occluded = occluded;
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [WeakRetained setContentVisibility:self->_occluded];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v8 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    legibilitySettings = self->_legibilitySettings;
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [WeakRetained setLegibilitySettings:legibilitySettings];

    settingsCopy = v8;
  }
}

- (BOOL)appIconDataSource:(id)source launchAppFromIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained appIconGridView:self launchAppFromIcon:iconCopy];

  return self;
}

- (void)setBundleIds:(id)ids
{
  v43 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  bundleIds = self->_bundleIds;
  if (bundleIds != idsCopy && ![(NSArray *)bundleIds isEqualToArray:idsCopy])
  {
    if (!self->_dataSource)
    {
      v6 = objc_alloc_init(APUIAppIconDataSource);
      dataSource = self->_dataSource;
      self->_dataSource = v6;

      [(APUIAppIconDataSource *)self->_dataSource setDelegate:self];
    }

    v30 = idsCopy;
    v8 = [(NSArray *)idsCopy copy];
    v9 = self->_bundleIds;
    self->_bundleIds = v8;

    [(SBIconListModel *)self->_model removeAllIcons];
    v10 = __atxlog_handle_ui();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      *buf = 136446466;
      *&buf[4] = "[APUIAppIconGridView setBundleIds:]";
      *&buf[12] = 2112;
      *&buf[14] = WeakRetained;
      _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _delegate=%@", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v30;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          v17 = objc_loadWeakRetained(&self->_delegate);
          v18 = [v17 appIconGridView:self iconForApplicationWithBundleIdentifier:v16];

          if (v18)
          {
            v19 = __atxlog_handle_ui();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v16;
              *&buf[12] = 2112;
              *&buf[14] = v18;
              _os_log_impl(&dword_240036000, v19, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: iconForApplicationWithBundleIdentifier:%@ = %@", buf, 0x16u);
            }

            v20 = [(SBIconListModel *)self->_model addIcon:v18];
          }

          else
          {
            if ([v16 isEqualToString:@"com.apple.mobiletimer"])
            {
              v35 = 0;
              v36 = &v35;
              v37 = 0x2050000000;
              v21 = getSBHClockApplicationIconClass_softClass;
              v38 = getSBHClockApplicationIconClass_softClass;
              if (!getSBHClockApplicationIconClass_softClass)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __getSBHClockApplicationIconClass_block_invoke;
                v41 = &unk_278C90BC0;
                v42 = &v35;
                __getSBHClockApplicationIconClass_block_invoke(buf);
                v21 = v36[3];
              }

              v22 = v21;
              _Block_object_dispose(&v35, 8);
              v23 = [[v21 alloc] initWithLeafIdentifier:@"com.apple.mobiletimer" applicationBundleID:@"com.apple.mobiletimer"];
              if (v23)
              {
                goto LABEL_23;
              }
            }

            v35 = 0;
            v36 = &v35;
            v37 = 0x2050000000;
            v24 = getSBLeafIconClass_softClass;
            v38 = getSBLeafIconClass_softClass;
            if (!getSBLeafIconClass_softClass)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __getSBLeafIconClass_block_invoke;
              v41 = &unk_278C90BC0;
              v42 = &v35;
              __getSBLeafIconClass_block_invoke(buf);
              v24 = v36[3];
            }

            v25 = v24;
            _Block_object_dispose(&v35, 8);
            v23 = [[v24 alloc] initWithLeafIdentifier:v16 applicationBundleID:v16];
            if (v23)
            {
LABEL_23:
              [v23 addIconDataSource:self->_dataSource];
              v26 = __atxlog_handle_ui();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v16;
                *&buf[12] = 2112;
                *&buf[14] = v23;
                _os_log_impl(&dword_240036000, v26, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: leafIcon initWithLeafIdentifier:%@ = %@", buf, 0x16u);
              }

              v27 = [(SBIconListModel *)self->_model addIcon:v23];
            }

            else
            {
              v23 = __atxlog_handle_ui();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v16;
                _os_log_fault_impl(&dword_240036000, v23, OS_LOG_TYPE_FAULT, "Could not create leaf icon for: %@", buf, 0xCu);
              }
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v13);
    }

    v28 = objc_loadWeakRetained(&self->_gridView);
    [v28 setIconsNeedLayout];

    idsCopy = v30;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setMode:(unint64_t)mode
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[APUIAppIconGridView setMode:]";
    v14 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s %lu", buf, 0x16u);
  }

  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:mode];
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [(APUIAppIconGridView *)self _iconLabelAlphaForMode:mode];
    [WeakRetained setIconsLabelAlpha:?];

    v7 = objc_loadWeakRetained(&self->_gridView);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__APUIAppIconGridView_setMode___block_invoke;
    v11[3] = &unk_278C90B50;
    v11[4] = self;
    [v7 enumerateIconViewsUsingBlock:v11];

    v8 = objc_loadWeakRetained(&self->_gridView);
    [v8 setIconsNeedLayout];

    v9 = objc_loadWeakRetained(&self->_gridView);
    [v9 layoutIconsIfNeeded];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)_iconLabelAlphaForMode:(unint64_t)mode
{
  result = 0.0;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v27 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = APUIAppIconGridView;
  [(APUIAppIconGridView *)&v22 layoutSubviews];
  [(APUIAppIconGridView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  [WeakRetained setFrame:{v4, v6, v8, v10}];

  [(UILabel *)self->_emptyStateLabel sizeToFit];
  [(APUIAppIconGridView *)self bounds];
  v13 = v12;
  [(UILabel *)self->_emptyStateLabel bounds];
  v15 = floor((v13 - v14) * 0.5);
  [(APUIAppIconGridView *)self bounds];
  v17 = v16;
  [(UILabel *)self->_emptyStateLabel bounds];
  [(UILabel *)self->_emptyStateLabel setFrame:0.0, v15, v17];
  v18 = __atxlog_handle_ui();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_loadWeakRetained(&self->_gridView);
    [v19 frame];
    v20 = NSStringFromCGRect(v28);
    *buf = 136446466;
    v24 = "[APUIAppIconGridView layoutSubviews]";
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_240036000, v18, OS_LOG_TYPE_INFO, "SuggestionsWidget: %{public}s _gridView.frame=%@", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)createDismissSuggestionApplicationShortcutItemWithType:(id)type localizedName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  v7 = objc_opt_new();
  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion"])
  {
    v8 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"hand.raised"];
    [v7 setIcon:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Don’t Suggest “%@”" value:&stru_285201410 table:0];
    nameCopy = [v9 localizedStringWithFormat:v11, nameCopy];

LABEL_8:
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion"])
  {
    v13 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"hand.thumbsdown"];
    [v7 setIcon:v13];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v14;
    v15 = @"Suggest Shortcut Less";
LABEL_7:
    nameCopy = [v14 localizedStringForKey:v15 value:&stru_285201410 table:0];
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion"])
  {
    v16 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"plus.circle"];
    [v7 setIcon:v16];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v14;
    v15 = @"Add Shortcut to Siri";
    goto LABEL_7;
  }

  nameCopy = &stru_285201410;
LABEL_9:
  [v7 setLocalizedTitle:nameCopy];
  [v7 setType:typeCopy];
  v17 = __atxlog_handle_ui();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v21 = "+[APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:localizedName:]";
    v22 = 2112;
    v23 = nameCopy;
    v24 = 2112;
    v25 = typeCopy;
    _os_log_impl(&dword_240036000, v17, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s localizedItemTitle=%@ itemType=%@", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)highlightIconForBundleId:(id)id
{
  v15 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[APUIAppIconGridView highlightIconForBundleId:]";
    v13 = 2112;
    v14 = idCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleId=%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v7 = WeakRetained;
  if (idCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__APUIAppIconGridView_highlightIconForBundleId___block_invoke;
    v9[3] = &unk_278C90B50;
    v10 = idCopy;
    [v7 enumerateIconViewsUsingBlock:v9];

    v7 = v10;
  }

  else
  {
    [WeakRetained enumerateIconViewsUsingBlock:&__block_literal_global_0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48__APUIAppIconGridView_highlightIconForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 icon];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 applicationBundleID];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 isEqualToString:*(a1 + 32)];
  v6 = 0.5;
  if (v5)
  {
    v6 = 1.0;
  }

  [v7 setAlpha:v6];
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  mode = self->_mode;
  iconViewCopy = iconView;
  [(APUIAppIconGridView *)self _iconLabelAlphaForMode:mode];
  [iconViewCopy setIconLabelAlpha:?];
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained iconViewForIcon:iconCopy];

  return v6;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained iconViewForIcon:iconCopy];

  if (v6)
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIconView:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained isDisplayingIconView:viewCopy];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(APUIAppIconGridView *)self firstIconViewForIcon:icon];
  if (v6)
  {
    blockCopy[2](blockCopy, v6);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__APUIAppIconGridView_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_278C90B98;
  v8 = blockCopy;
  v6 = blockCopy;
  [WeakRetained enumerateIconViewsUsingBlock:v7];
}

@end