@interface FCCCModuleViewController
- (BOOL)_isRequestingInitialUseView;
- (FCCCModuleViewControllerDelegate)delegate;
- (NSArray)requiredVisualStyleCategories;
- (id)_effectiveTitle;
- (id)_imageForActivity:(id)a3;
- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)a3;
- (void)_configureInitialUseViewIfNecessary;
- (void)_configureRoundButtonIfNecessary;
- (void)_configureTemplateViewIfNecessary;
- (void)_invalidateInitialUseView;
- (void)_invalidateRoundButton;
- (void)_setRequestingInitialUseView:(BOOL)a3;
- (void)_updateTitle:(id)a3 on:(BOOL)a4 animated:(BOOL)a5;
- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)addButtonAction:(id)a3;
- (void)removeButtonAction:(id)a3;
- (void)setActiveActivity:(id)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContinuousCornerRadius:(double)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setExpanded:(BOOL)a3 withTransitionCoordinator:(id)a4;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setResizing:(BOOL)a3;
- (void)setSuggestedActivity:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation FCCCModuleViewController

- (void)setSuggestedActivity:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_suggestedActivity, a3);
    if (!self->_activeActivity)
    {
      [(FCCCModuleViewController *)self _invalidateRoundButton];
      v5 = [(FCCCModuleViewController *)self viewIfLoaded];
      [v5 setNeedsLayout];
    }
  }
}

- (void)setActiveActivity:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = self->_activeActivity;
    objc_storeStrong(&self->_activeActivity, a3);
    if ((v5 || (BSEqualObjects() & 1) == 0) && (self->_activeActivity || (BSEqualObjects() & 1) == 0))
    {
      [(FCCCModuleViewController *)self _invalidateRoundButton];
    }

    v6 = [(FCCCModuleViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

- (void)setContentMetrics:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentMetrics, a3);
    [(CCUIControlTemplateView *)self->_templateView setContentMetrics:v7];
    roundButton = self->_roundButton;
    if (v7)
    {
      [v7 symbolScaleFactor];
    }

    else
    {
      v6 = 1.0;
    }

    [(CCUIRoundButton *)roundButton setGlyphScale:v6];
  }
}

- (void)setResizing:(BOOL)a3
{
  if (self->_resizing != a3)
  {
    self->_resizing = a3;
    [(CCUIControlTemplateView *)self->_templateView setResizing:?];
  }
}

- (void)setGridSizeClass:(int64_t)a3
{
  if (self->_gridSizeClass != a3)
  {
    self->_gridSizeClass = a3;
    [(CCUIControlTemplateView *)self->_templateView setGridSizeClass:?];
  }
}

- (void)setContinuousCornerRadius:(double)a3
{
  if (self->_continuousCornerRadius != a3)
  {
    self->_continuousCornerRadius = a3;
    [(CCUIControlTemplateView *)self->_templateView setContinuousCornerRadius:?];
  }
}

- (void)addButtonAction:(id)a3
{
  v4 = a3;
  buttonActions = self->_buttonActions;
  v8 = v4;
  if (!buttonActions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_buttonActions;
    self->_buttonActions = v6;

    v4 = v8;
    buttonActions = self->_buttonActions;
  }

  [(NSMutableArray *)buttonActions addObject:v4];
  [(CCUIRoundButton *)self->_roundButton addAction:v8 forControlEvents:64];
}

- (void)removeButtonAction:(id)a3
{
  v5 = a3;
  [(NSMutableArray *)self->_buttonActions removeObject:?];
  if (![(NSMutableArray *)self->_buttonActions count])
  {
    buttonActions = self->_buttonActions;
    self->_buttonActions = 0;
  }

  [(CCUIRoundButton *)self->_roundButton removeAction:v5 forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = FCCCModuleViewController;
  [(FCCCModuleViewController *)&v29 viewWillLayoutSubviews];
  [(FCCCModuleViewController *)self _configureTemplateViewIfNecessary];
  if (![(FCCCModuleViewController *)self isExpanded])
  {
    v3 = [(FCCCModuleViewController *)self view];
    [v3 bounds];
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
  v18 = [(FCCCModuleViewController *)self _effectiveTitle];
  [(FCCCModuleViewController *)self _updateTitle:v18 on:self->_activeActivity != 0 animated:v17];
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = [NSMutableSet setWithObject:&off_C880];
  v4 = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
  [v3 addObjectsFromArray:v4];

  v5 = [(CCUIControlTemplateView *)self->_templateView requiredVisualStyleCategories];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 allObjects];

  return v6;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v16 = a3;
  v6 = [(FCCCModuleViewController *)self requiredVisualStyleCategories];
  v7 = [NSNumber numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [NSNumber numberWithInteger:a4];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    v12 = self->_categoriesToVisualStylingProviders;
    if (!v12)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = v13;

      v12 = self->_categoriesToVisualStylingProviders;
    }

    v15 = [NSNumber numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setObject:v16 forKey:v15];

    [(FCCCModuleViewController *)self _visualStylingProvider:v16 didChangeForCategory:a4 outgoingProvider:v11];
  }
}

- (void)setExpanded:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_expansionState = v3;
}

- (void)setExpanded:(BOOL)a3 withTransitionCoordinator:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = 3;
  if (v4)
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
  v10 = v4;
  [v6 animateAlongsideTransition:0 completion:v8];
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

    v4 = [(FCCCModuleViewController *)self viewIfLoaded];
    [v4 setNeedsLayout];
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
      v8 = self;
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
    v23 = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          v29 = self->_roundButton;
          v30 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProviders objectForKey:v28];
          -[CCUIRoundButton setVisualStylingProvider:forCategory:](v29, "setVisualStylingProvider:forCategory:", v30, [v28 integerValue]);
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v25);
    }

    [(CCUIControlTemplateView *)self->_templateView setCustomGlyphView:self->_roundButton];
  }
}

- (BOOL)_isRequestingInitialUseView
{
  v2 = self;
  objc_sync_enter(v2);
  isRequestingInitialUseView = v2->_isRequestingInitialUseView;
  objc_sync_exit(v2);

  return isRequestingInitialUseView;
}

- (void)_setRequestingInitialUseView:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRequestingInitialUseView = a3;
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

- (void)_updateTitle:(id)a3 on:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if ([(FCCCModuleViewController *)self isViewLoaded])
  {
    if (v5)
    {
      v5 = self->_expansionState == 0;
    }

    templateView = self->_templateView;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5690;
    v9[3] = &unk_C5C8;
    v10 = v7;
    [(CCUIControlTemplateView *)templateView updateProperties:v9 animated:v5];
  }
}

- (id)_effectiveTitle
{
  if (self->_activeActivity)
  {
    v2 = [(FCActivityDescribing *)self->_activeActivity activityDisplayName];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v3 localizedStringForKey:@"MODULE_DEFAULT_TITLE" value:&stru_C7C8 table:0];
  }

  return v2;
}

- (id)_imageForActivity:(id)a3
{
  v3 = [a3 activitySymbolImageName];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:20.0];
  v5 = [UIImage _systemImageNamed:v3 withConfiguration:v4];

  return v5;
}

- (void)_visualStylingProvider:(id)a3 didChangeForCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v13 = a3;
  v7 = [(CCUIRoundButton *)self->_roundButton requiredVisualStyleCategories];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [(CCUIRoundButton *)self->_roundButton setVisualStylingProvider:v13 forCategory:a4];
  }

  v10 = [(CCUIControlTemplateView *)self->_templateView requiredVisualStyleCategories];
  v11 = [NSNumber numberWithInteger:a4];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
    [(CCUIControlTemplateView *)self->_templateView setVisualStylingProvider:v13 forCategory:a4];
  }
}

- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)a3
{
  if (a3)
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