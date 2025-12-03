@interface FCCCModuleViewController
- (BOOL)_isRequestingInitialUseView;
- (FCCCModuleViewControllerDelegate)delegate;
- (NSArray)requiredVisualStyleCategories;
- (id)_effectiveTitle;
- (id)_imageForActivity:(id)activity;
- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)appearance;
- (void)_configureInitialUseViewIfNecessary;
- (void)_configureRoundButtonIfNecessary;
- (void)_configureTemplateViewIfNecessary;
- (void)_invalidateInitialUseView;
- (void)_invalidateRoundButton;
- (void)_setRequestingInitialUseView:(BOOL)view;
- (void)_updateTitle:(id)title on:(BOOL)on animated:(BOOL)animated;
- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider;
- (void)addButtonAction:(id)action;
- (void)removeButtonAction:(id)action;
- (void)setActiveActivity:(id)activity;
- (void)setContentMetrics:(id)metrics;
- (void)setContinuousCornerRadius:(double)radius;
- (void)setExpanded:(BOOL)expanded;
- (void)setExpanded:(BOOL)expanded withTransitionCoordinator:(id)coordinator;
- (void)setGridSizeClass:(int64_t)class;
- (void)setResizing:(BOOL)resizing;
- (void)setSuggestedActivity:(id)activity;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)viewWillLayoutSubviews;
@end

@implementation FCCCModuleViewController

- (void)setSuggestedActivity:(id)activity
{
  activityCopy = activity;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_suggestedActivity, activity);
    if (!self->_activeActivity)
    {
      [(FCCCModuleViewController *)self _invalidateRoundButton];
      viewIfLoaded = [(FCCCModuleViewController *)self viewIfLoaded];
      [viewIfLoaded setNeedsLayout];
    }
  }
}

- (void)setActiveActivity:(id)activity
{
  activityCopy = activity;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = self->_activeActivity;
    objc_storeStrong(&self->_activeActivity, activity);
    if ((v5 || (BSEqualObjects() & 1) == 0) && (self->_activeActivity || (BSEqualObjects() & 1) == 0))
    {
      [(FCCCModuleViewController *)self _invalidateRoundButton];
    }

    viewIfLoaded = [(FCCCModuleViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentMetrics, metrics);
    [(CCUIControlTemplateView *)self->_templateView setContentMetrics:metricsCopy];
    roundButton = self->_roundButton;
    if (metricsCopy)
    {
      [metricsCopy symbolScaleFactor];
    }

    else
    {
      v6 = 1.0;
    }

    [(CCUIRoundButton *)roundButton setGlyphScale:v6];
  }
}

- (void)setResizing:(BOOL)resizing
{
  if (self->_resizing != resizing)
  {
    self->_resizing = resizing;
    [(CCUIControlTemplateView *)self->_templateView setResizing:?];
  }
}

- (void)setGridSizeClass:(int64_t)class
{
  if (self->_gridSizeClass != class)
  {
    self->_gridSizeClass = class;
    [(CCUIControlTemplateView *)self->_templateView setGridSizeClass:?];
  }
}

- (void)setContinuousCornerRadius:(double)radius
{
  if (self->_continuousCornerRadius != radius)
  {
    self->_continuousCornerRadius = radius;
    [(CCUIControlTemplateView *)self->_templateView setContinuousCornerRadius:?];
  }
}

- (void)addButtonAction:(id)action
{
  actionCopy = action;
  buttonActions = self->_buttonActions;
  v8 = actionCopy;
  if (!buttonActions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_buttonActions;
    self->_buttonActions = v6;

    actionCopy = v8;
    buttonActions = self->_buttonActions;
  }

  [(NSMutableArray *)buttonActions addObject:actionCopy];
  [(CCUIRoundButton *)self->_roundButton addAction:v8 forControlEvents:64];
}

- (void)removeButtonAction:(id)action
{
  actionCopy = action;
  [(NSMutableArray *)self->_buttonActions removeObject:?];
  if (![(NSMutableArray *)self->_buttonActions count])
  {
    buttonActions = self->_buttonActions;
    self->_buttonActions = 0;
  }

  [(CCUIRoundButton *)self->_roundButton removeAction:actionCopy forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = FCCCModuleViewController;
  [(FCCCModuleViewController *)&v29 viewWillLayoutSubviews];
  [(FCCCModuleViewController *)self _configureTemplateViewIfNecessary];
  if (![(FCCCModuleViewController *)self isExpanded])
  {
    view = [(FCCCModuleViewController *)self view];
    [view bounds];
    self->_compactBounds.origin.x = v4;
    self->_compactBounds.origin.y = v5;
    self->_compactBounds.size.width = v6;
    self->_compactBounds.size.height = v7;
  }

  v8 = self->_templateView;
  [(CCUIControlTemplateView *)v8 setFrame:self->_compactBounds.origin.x, self->_compactBounds.origin.y, self->_compactBounds.size.width, self->_compactBounds.size.height];
  if (self->_activeActivity || +[FCUIActivityPickerViewController isOnboardingEncountered]&& self->_suggestedActivity)
  {
    roundButton = self->_roundButton;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_464C;
    v28[3] = &unk_C320;
    v28[4] = self;
    [UIView performWithoutAnimation:v28];
    [(CCUIRoundButton *)self->_roundButton setUseAlternateBackground:self->_activeActivity != 0];
    [(CCUIRoundButton *)self->_roundButton setOverrideUserInterfaceStyle:[(FCCCModuleViewController *)self _userInterfaceStyleForSelectedAppearance:self->_activeActivity != 0]];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_4654;
    v27[3] = &unk_C528;
    v27[4] = self;
    v10 = objc_retainBlock(v27);
    v11 = v10;
    if (self->_expansionState)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_4684;
      v25[3] = &unk_C550;
      v25[4] = self;
      v26 = v10;
      [UIView performWithoutAnimation:v25];
    }

    else
    {
      (v10[2])(v10, self->_activeActivity != 0);
    }

    v12 = self->_roundButton;
  }

  else
  {
    roundButton = self->_initialUseView;
    [(FCCCModuleViewController *)self _configureInitialUseViewIfNecessary];
    v12 = self->_initialUseView;
  }

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_46AC;
  v22 = &unk_C3E8;
  v23 = v8;
  v24 = v12;
  v13 = v12;
  v14 = v8;
  v15 = objc_retainBlock(&v19);
  v16 = v15;
  if (roundButton)
  {
    (v15[2])(v15);
  }

  else
  {
    [UIView performWithoutAnimation:v15, v19, v20, v21, v22, v23, v24];
  }

  v17 = roundButton != 0;
  _effectiveTitle = [(FCCCModuleViewController *)self _effectiveTitle];
  [(FCCCModuleViewController *)self _updateTitle:_effectiveTitle on:self->_activeActivity != 0 animated:v17];
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = [NSMutableSet setWithObject:&off_C880];
  requiredVisualStyleCategories = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
  [v3 addObjectsFromArray:requiredVisualStyleCategories];

  requiredVisualStyleCategories2 = [(CCUIControlTemplateView *)self->_templateView requiredVisualStyleCategories];
  [v3 addObjectsFromArray:requiredVisualStyleCategories2];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(FCCCModuleViewController *)self requiredVisualStyleCategories];
  v7 = [NSNumber numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [NSNumber numberWithInteger:category];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    v12 = self->_categoriesToVisualStylingProviders;
    if (!v12)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v13;

      v12 = self->_categoriesToVisualStylingProviders;
    }

    v15 = [NSNumber numberWithInteger:category];
    [(NSMutableDictionary *)v12 setObject:providerCopy forKey:v15];

    [(FCCCModuleViewController *)self _visualStylingProvider:providerCopy didChangeForCategory:category outgoingProvider:v11];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  v3 = 2;
  if (!expanded)
  {
    v3 = 0;
  }

  self->_expansionState = v3;
}

- (void)setExpanded:(BOOL)expanded withTransitionCoordinator:(id)coordinator
{
  expandedCopy = expanded;
  coordinatorCopy = coordinator;
  v7 = 3;
  if (expandedCopy)
  {
    v7 = 1;
  }

  self->_expansionState = v7;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4A10;
  v8[3] = &unk_C578;
  objc_copyWeak(&v9, &location);
  v10 = expandedCopy;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_invalidateRoundButton
{
  if (self->_roundButton)
  {
    [(CCUIControlTemplateView *)self->_templateView setCustomGlyphView:0];
    roundButton = self->_roundButton;
    self->_roundButton = 0;

    viewIfLoaded = [(FCCCModuleViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)_configureTemplateViewIfNecessary
{
  if (!self->_templateView)
  {
    v9 = v2;
    v10 = v3;
    if ([(FCCCModuleViewController *)self isViewLoaded])
    {
      [(FCCCModuleViewController *)self view];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_4BD0;
      v7 = v6[3] = &unk_C3E8;
      selfCopy = self;
      v5 = v7;
      [UIView performWithoutAnimation:v6];
    }
  }
}

- (void)_configureRoundButtonIfNecessary
{
  if (!self->_roundButton && [(FCCCModuleViewController *)self isViewLoaded])
  {
    [(FCCCModuleViewController *)self _invalidateInitialUseView];
    activeActivity = self->_activeActivity;
    if (!activeActivity)
    {
      activeActivity = self->_suggestedActivity;
    }

    v4 = activeActivity;
    v5 = FCUILogModule;
    if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 == self->_activeActivity)
      {
        v6 = @"active";
      }

      else
      {
        v6 = @"suggested (or previously active)";
      }

      *buf = 138543618;
      v45 = v6;
      v46 = 2114;
      v47 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Configuring round button with %{public}@ activity: %{public}@", buf, 0x16u);
    }

    v7 = [CCUICAPackageDescription packageDescriptionForActivity:v4];
    v8 = [CCUIRoundButton alloc];
    if (v7)
    {
      v9 = +[UIColor clearColor];
      v10 = [v8 initWithGlyphPackageDescription:v7 highlightColor:v9 useLightStyle:1];
      roundButton = self->_roundButton;
      self->_roundButton = v10;
    }

    else
    {
      v9 = [(FCCCModuleViewController *)self _imageForActivity:v4];
      roundButton = +[UIColor clearColor];
      v12 = [UIColor fcui_colorForActivity:v4];
      v13 = [v8 initWithGlyphImage:v9 highlightColor:roundButton highlightTintColor:v12 useLightStyle:1];
      v14 = self->_roundButton;
      self->_roundButton = v13;
    }

    [(CCUIRoundButton *)self->_roundButton setDynamicLayoutEnabled:1];
    v15 = self->_roundButton;
    contentMetrics = self->_contentMetrics;
    v31 = v7;
    if (contentMetrics)
    {
      [(CCUIModuleContentMetrics *)contentMetrics symbolScaleFactor];
    }

    else
    {
      v17 = 1.0;
    }

    [(CCUIRoundButton *)v15 setGlyphScale:v17, v31];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = self->_buttonActions;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(CCUIRoundButton *)self->_roundButton addAction:*(*(&v38 + 1) + 8 * i) forControlEvents:64];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v20);
    }

    v33 = v4;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    requiredVisualStyleCategories = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
    v24 = [requiredVisualStyleCategories countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          v29 = self->_roundButton;
          v30 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:v28];
          -[CCUIRoundButton setVisualStylingProvider:forCategory:](v29, "setVisualStylingProvider:forCategory:", v30, [v28 integerValue]);
        }

        v25 = [requiredVisualStyleCategories countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    [(CCUIControlTemplateView *)self->_templateView setCustomGlyphView:self->_roundButton];
  }
}

- (BOOL)_isRequestingInitialUseView
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isRequestingInitialUseView = selfCopy->_isRequestingInitialUseView;
  objc_sync_exit(selfCopy);

  return isRequestingInitialUseView;
}

- (void)_setRequestingInitialUseView:(BOOL)view
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRequestingInitialUseView = view;
  objc_sync_exit(obj);
}

- (void)_invalidateInitialUseView
{
  [(CCUIControlTemplateView *)self->_templateView setCustomGlyphView:0];
  initialUseView = self->_initialUseView;
  self->_initialUseView = 0;
}

- (void)_configureInitialUseViewIfNecessary
{
  if (!self->_initialUseView && [(FCCCModuleViewController *)self isViewLoaded])
  {
    [(FCCCModuleViewController *)self _invalidateRoundButton];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (![(FCCCModuleViewController *)self _isRequestingInitialUseView]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(FCCCModuleViewController *)self _setRequestingInitialUseView:1];
      objc_initWeak(&location, self);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_53BC;
      v4[3] = &unk_C5A0;
      objc_copyWeak(&v5, &location);
      [WeakRetained moduleViewController:self initialUseView:v4];
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_updateTitle:(id)title on:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  if ([(FCCCModuleViewController *)self isViewLoaded])
  {
    if (animatedCopy)
    {
      animatedCopy = self->_expansionState == 0;
    }

    templateView = self->_templateView;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5690;
    v9[3] = &unk_C5C8;
    v10 = titleCopy;
    [(CCUIControlTemplateView *)templateView updateProperties:v9 animated:animatedCopy];
  }
}

- (id)_effectiveTitle
{
  if (self->_activeActivity)
  {
    activityDisplayName = [(FCActivityDescribing *)self->_activeActivity activityDisplayName];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    activityDisplayName = [v3 localizedStringForKey:@"MODULE_DEFAULT_TITLE" value:&stru_C7C8 table:0];
  }

  return activityDisplayName;
}

- (id)_imageForActivity:(id)activity
{
  activitySymbolImageName = [activity activitySymbolImageName];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
  v5 = [UIImage _systemImageNamed:activitySymbolImageName withConfiguration:v4];

  return v5;
}

- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingProvider:(id)outgoingProvider
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
  v8 = [NSNumber numberWithInteger:category];
  v9 = [requiredVisualStyleCategories containsObject:v8];

  if (v9)
  {
    [(CCUIRoundButton *)self->_roundButton setVisualStylingProvider:providerCopy forCategory:category];
  }

  requiredVisualStyleCategories2 = [(CCUIControlTemplateView *)self->_templateView requiredVisualStyleCategories];
  v11 = [NSNumber numberWithInteger:category];
  v12 = [requiredVisualStyleCategories2 containsObject:v11];

  if (v12)
  {
    [(CCUIControlTemplateView *)self->_templateView setVisualStylingProvider:providerCopy forCategory:category];
  }
}

- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)appearance
{
  if (appearance)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (FCCCModuleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end