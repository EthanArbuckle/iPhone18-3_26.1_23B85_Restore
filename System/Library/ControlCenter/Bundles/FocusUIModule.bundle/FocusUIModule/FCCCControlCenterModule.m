@interface FCCCControlCenterModule
- (CGRect)_activityPickerExpandedFrameForBounds:(CGRect)a3;
- (CGSize)_preferredExpandedContentSize;
- (FCCCControlCenterModule)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)containerViewsForPlatterTreatment;
- (id)_activityManagerQueue;
- (void)_invalidateAndAnimateViewLayoutIfAppropriate;
- (void)_updateActiveActivity:(id)a3;
- (void)_updateBackgroundContinuousCornerRadius;
- (void)_updatePreviouslyActiveActivity:(id)a3;
- (void)_updateSuggestedActivity:(id)a3;
- (void)activeActivityDidChangeForManager:(id)a3;
- (void)activityManager:(id)a3 suggestedActivityDidChangeForLocation:(int64_t)a4;
- (void)availableActivitiesDidChangeForManager:(id)a3;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)handleTap:(id)a3;
- (void)moduleViewController:(id)a3 initialUseView:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)suggestedActivityDidChangeForManager:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation FCCCControlCenterModule

- (FCCCControlCenterModule)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = FCCCControlCenterModule;
  v4 = [(FCCCControlCenterModule *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[FCActivityManager sharedActivityManager];
    activityManager = v4->_activityManager;
    v4->_activityManager = v5;

    [(FCActivityManager *)v4->_activityManager addObserver:v4];
    [(FCCCControlCenterModule *)v4 activeActivityDidChangeForManager:v4->_activityManager];
    [(FCCCControlCenterModule *)v4 activityManager:v4->_activityManager suggestedActivityDidChangeForLocation:0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v30 viewDidLoad];
  v3 = [(FCCCControlCenterModule *)self view];
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v4;

  [v3 addGestureRecognizer:self->_tapGesture];
  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:self->_expanded];
  v6 = [UIView alloc];
  [v3 bounds];
  v7 = [v6 initWithFrame:?];
  moduleContainerView = self->_moduleContainerView;
  self->_moduleContainerView = v7;

  [(UIView *)self->_moduleContainerView setAutoresizingMask:18];
  [v3 addSubview:self->_moduleContainerView];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = +[CCUIControlCenterMaterialView controlCenterModuleBackgroundMaterial];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v9;

    v11 = self->_backgroundView;
    [(UIView *)self->_moduleContainerView bounds];
    [(UIView *)v11 setFrame:?];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_compactContinuousCornerRadius];
    [(UIView *)self->_moduleContainerView insertSubview:self->_backgroundView atIndex:0];
  }

  v12 = objc_alloc_init(FCCCModuleViewController);
  moduleViewController = self->_moduleViewController;
  self->_moduleViewController = v12;

  [(FCCCModuleViewController *)self->_moduleViewController setDelegate:self];
  [(FCCCControlCenterModule *)self addChildViewController:self->_moduleViewController];
  [(FCCCModuleViewController *)self->_moduleViewController didMoveToParentViewController:self];
  [(FCCCModuleViewController *)self->_moduleViewController setContentMetrics:self->_contentMetrics];
  [(FCCCModuleViewController *)self->_moduleViewController setGridSizeClass:self->_gridSizeClass];
  [(FCCCModuleViewController *)self->_moduleViewController setResizing:self->_resizing];
  [(FCCCControlCenterModule *)self _updateBackgroundContinuousCornerRadius];
  objc_initWeak(&location, self);
  v14 = self->_moduleViewController;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_13A8;
  v27 = &unk_C2F8;
  objc_copyWeak(&v28, &location);
  v15 = [UIAction actionWithHandler:&v24];
  [(FCCCModuleViewController *)v14 addButtonAction:v15, v24, v25, v26, v27];

  v16 = [(FCCCModuleViewController *)self->_moduleViewController view];
  [v16 setAccessibilityIdentifier:@"focus-module"];
  [v3 bounds];
  [v16 setFrame:?];
  [v16 setAutoresizingMask:18];
  v17 = _os_feature_enabled_impl();
  v18 = self->_moduleContainerView;
  if (v17)
  {
    [(UIView *)v18 addSubview:v16];
  }

  else
  {
    [(UIView *)v18 insertSubview:v16 aboveSubview:self->_backgroundView];
  }

  v19 = objc_alloc_init(FCUIActivityPickerViewController);
  activityPickerViewController = self->_activityPickerViewController;
  self->_activityPickerViewController = v19;

  v21 = self->_activityPickerViewController;
  v22 = +[UIDevice currentDevice];
  -[FCUIActivityPickerViewController setFooterPinnedToBottom:](v21, "setFooterPinnedToBottom:", [v22 userInterfaceIdiom] == 0);

  [(FCCCControlCenterModule *)self addChildViewController:self->_activityPickerViewController];
  [(FCUIActivityPickerViewController *)self->_activityPickerViewController didMoveToParentViewController:self];
  v23 = [(FCUIActivityPickerViewController *)self->_activityPickerViewController view];
  [v3 bounds];
  [v23 setFrame:?];
  [v3 addSubview:v23];
  [v23 setHidden:1];
  [v23 setAlpha:0.0];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v23 viewWillLayoutSubviews];
  if (self->_expanded)
  {
    v3 = [(FCCCControlCenterModule *)self view];
    [v3 bounds];
    [(FCCCControlCenterModule *)self _activityPickerExpandedFrameForBounds:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(FCUIActivityPickerViewController *)self->_activityPickerViewController view];
    [(FCActivityDescribing *)v12 setFrame:v5, v7, v9, v11];
  }

  else
  {
    v13 = FCUILogModule;
    if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      activeActivity = self->_activeActivity;
      *buf = 138543362;
      v25 = activeActivity;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Updating module VC with active activity: %{public}@", buf, 0xCu);
    }

    contentRenderingMode = self->_contentRenderingMode;
    if (contentRenderingMode == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = self->_activeActivity;
    }

    v12 = v16;
    [(FCCCModuleViewController *)self->_moduleViewController setActiveActivity:v12];
    if (contentRenderingMode == 1 || (suggestedActivity = self->_previouslyActiveActivity) == 0)
    {
      suggestedActivity = self->_suggestedActivity;
    }

    v18 = suggestedActivity;
    v19 = [(FCCCModuleViewController *)self->_moduleViewController suggestedActivity];
    v20 = BSEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = FCUILogModule;
      if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
      {
        if (v18 == self->_previouslyActiveActivity)
        {
          v22 = @"previously active";
        }

        else
        {
          v22 = @"suggested";
        }

        *buf = 138543618;
        v25 = v22;
        v26 = 2114;
        v27 = v18;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Updating module VC with %{public}@ activity: %{public}@", buf, 0x16u);
      }

      [(FCCCModuleViewController *)self->_moduleViewController setSuggestedActivity:v18];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v11 viewDidLayoutSubviews];
  [(UIView *)self->_moduleContainerView frame];
  if (!self->_expanded)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if (!CGRectIsEmpty(*&v3))
    {
      self->_initialSourceViewFrame.origin.x = v7;
      self->_initialSourceViewFrame.origin.y = v8;
      self->_initialSourceViewFrame.size.width = v9;
      self->_initialSourceViewFrame.size.height = v10;
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v5 viewWillAppear:a3];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1978;
  v4[3] = &unk_C320;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v5 viewDidAppear:a3];
  if (self->_hasActiveSuggestion && !self->_previouslyActiveActivity)
  {
    v4 = [(FCActivityManager *)self->_activityManager suggestedActivityFeedbackReceiver];
    [v4 userDidSeeSuggestedActivity:self->_suggestedActivity location:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v5 viewDidDisappear:a3];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1AC0;
  v4[3] = &unk_C320;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FCCCControlCenterModule;
  [(FCCCControlCenterModule *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  ++self->_expansionAnimationCount;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1C70;
  v11[3] = &unk_C398;
  objc_copyWeak(v13, &location);
  v11[4] = self;
  v13[1] = *&width;
  v13[2] = *&height;
  v8 = v7;
  v12 = v8;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2154;
  v9[3] = &unk_C3C0;
  objc_copyWeak(&v10, &location);
  [v8 animateAlongsideTransition:v11 completion:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  if (self->_expanded && self->_activityPickerViewController == v4)
  {
    v7 = v4;
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v4 = v7;
    if (v6)
    {
      [(FCCCControlCenterModule *)self _invalidatePreferredExpandedContentSize];
      [(FCCCControlCenterModule *)self _preferredExpandedContentSize];
      [(FCCCControlCenterModule *)self setPreferredContentSize:?];
      v4 = v7;
    }
  }
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  if (self->_compactContinuousCornerRadius != a3)
  {
    self->_compactContinuousCornerRadius = a3;
    [(FCCCControlCenterModule *)self _updateBackgroundContinuousCornerRadius];
  }
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  if (self->_contentRenderingMode != a3)
  {
    self->_contentRenderingMode = a3;
    v4 = [(FCCCControlCenterModule *)self viewIfLoaded];
    [v4 setNeedsLayout];
  }
}

- (void)setContentMetrics:(id)a3
{
  objc_storeStrong(&self->_contentMetrics, a3);
  v5 = a3;
  [(FCCCModuleViewController *)self->_moduleViewController setContentMetrics:v5];
}

- (NSArray)containerViewsForPlatterTreatment
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(FCCCModuleViewController *)self->_moduleViewController view];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  self->_expanded = a3;
  [(FCCCModuleViewController *)self->_moduleViewController beginAppearanceTransition:a3 animated:+[UIView _isInAnimationBlockWithAnimationsEnabled]];
  if (objc_opt_respondsToSelector())
  {
    moduleViewController = self->_moduleViewController;
    expanded = self->_expanded;
    v7 = [(FCCCControlCenterModule *)self transitionCoordinator];
    [(FCCCModuleViewController *)moduleViewController setExpanded:expanded withTransitionCoordinator:v7];
  }

  activityPickerViewController = self->_activityPickerViewController;
  v9 = +[UIView _isInAnimationBlockWithAnimationsEnabled];

  [(FCUIActivityPickerViewController *)activityPickerViewController beginAppearanceTransition:v3 animated:v9];
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  [(FCCCModuleViewController *)self->_moduleViewController endAppearanceTransition];
  [(FCUIActivityPickerViewController *)self->_activityPickerViewController endAppearanceTransition];
  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:v3];
  if (!v3)
  {

    [(FCCCControlCenterModule *)self _invalidatePreferredExpandedContentSize];
  }
}

- (void)availableActivitiesDidChangeForManager:(id)a3
{
  v4 = a3;
  [(FCCCControlCenterModule *)self activeActivityDidChangeForManager:v4];
  [(FCCCControlCenterModule *)self suggestedActivityDidChangeForManager:v4];
}

- (void)activeActivityDidChangeForManager:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FCCCControlCenterModule *)self _activityManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2788;
  block[3] = &unk_C410;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)suggestedActivityDidChangeForManager:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(FCActivityDescribing *)v5->_suggestedActivity activityUniqueIdentifier];
  objc_sync_exit(v5);

  v7 = [(FCCCControlCenterModule *)v5 _activityManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2958;
  block[3] = &unk_C438;
  v11 = v4;
  v12 = v6;
  v13 = v5;
  v8 = v6;
  v9 = v4;
  dispatch_async(v7, block);
}

- (void)activityManager:(id)a3 suggestedActivityDidChangeForLocation:(int64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    objc_initWeak(&location, self);
    v7 = self->_previouslyActiveActivity;
    v8 = [(FCCCControlCenterModule *)self _activityManagerQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2C04;
    v10[3] = &unk_C488;
    objc_copyWeak(&v13, &location);
    v11 = v6;
    v12 = v7;
    v9 = v7;
    dispatch_async(v8, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)moduleViewController:(id)a3 initialUseView:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [FCUIActivityBaubleDescription alloc];
    v8 = +[UIColor systemIndigoColor];
    v9 = [v7 initWithSystemImageName:@"moon.fill" tintColor:v8];
    v29[0] = v9;
    v10 = [FCUIActivityBaubleDescription alloc];
    v11 = +[UIColor systemMintColor];
    v12 = [v10 initWithSystemImageName:@"bed.double.fill" tintColor:v11];
    v29[1] = v12;
    v13 = [FCUIActivityBaubleDescription alloc];
    v14 = +[UIColor systemTealColor];
    v15 = [v13 initWithSystemImageName:@"person.lanyardcard.fill" tintColor:v14];
    v29[2] = v15;
    v16 = [NSArray arrayWithObjects:v29 count:3];

    v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(&off_C868, "count")}];
    objc_initWeak(&location, self);
    v18 = [(FCCCControlCenterModule *)self _activityManagerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2FD4;
    block[3] = &unk_C4D8;
    objc_copyWeak(&v27, &location);
    v23 = &off_C868;
    v24 = v16;
    v25 = v17;
    v26 = v6;
    v19 = v17;
    v20 = v16;
    dispatch_async(v18, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (id)_activityManagerQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_activityManagerQueue)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 bundleIdentifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringByAppendingFormat:@"%@.activityManager", v6];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    activityManagerQueue = v2->_activityManagerQueue;
    v2->_activityManagerQueue = SerialWithQoS;
  }

  objc_sync_exit(v2);

  v10 = v2->_activityManagerQueue;

  return v10;
}

- (CGSize)_preferredExpandedContentSize
{
  p_preferredExpandedContentSize = &self->_preferredExpandedContentSize;
  if (self->_preferredExpandedContentSize.width == 0.0 && self->_preferredExpandedContentSize.height == 0.0)
  {
    [(FCCCControlCenterModule *)self loadViewIfNeeded];
    CCUIReferenceScreenBounds();
    p_preferredExpandedContentSize->width = v4;
    p_preferredExpandedContentSize->height = v5;
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == &dword_0 + 1)
    {
      CCUIDefaultExpandedContentModuleWidth();
      v9 = v8;
      v10 = [(FCUIActivityPickerViewController *)self->_activityPickerViewController view];
      v11 = [(FCCCControlCenterModule *)self parentViewController];
      v12 = [v11 view];
      [v12 bounds];
      [v10 sizeThatFits:{v9, CGRectGetHeight(v18)}];
      UISizeRoundToScale();
      p_preferredExpandedContentSize->width = v13;
      p_preferredExpandedContentSize->height = v14;
    }
  }

  width = p_preferredExpandedContentSize->width;
  height = p_preferredExpandedContentSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_activityPickerExpandedFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = +[UIDevice currentDevice];
  if (![v7 userInterfaceIdiom])
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v13 = CGRectInset(v12, 44.0, 0.0);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_invalidateAndAnimateViewLayoutIfAppropriate
{
  v3 = [(FCCCControlCenterModule *)self viewIfLoaded];
  [v3 setNeedsLayout];

  if ([(FCCCControlCenterModule *)self isViewLoaded]&& [(FCCCControlCenterModule *)self bs_isAppearingOrAppeared])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_3550;
    v5[3] = &unk_C320;
    v5[4] = self;
    v4 = objc_retainBlock(v5);
    if (self->_expanded)
    {
      [UIView performWithoutAnimation:v4];
    }

    else
    {
      [UIView fcui_animateWithSelectionParameters:v4 completion:0];
    }
  }
}

- (void)_updateActiveActivity:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activeActivity, a3);
    v6 = FCUILogModule;
    if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      activeActivity = self->_activeActivity;
      v9 = 138543362;
      v10 = activeActivity;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updated active activity: %{public}@", &v9, 0xCu);
    }

    if (self->_activeActivity)
    {
      [(FCCCControlCenterModule *)self _updatePreviouslyActiveActivity:?];
    }

    if (self->_hasActiveSuggestion && self->_activeActivity && (BSEqualObjects() & 1) == 0)
    {
      v8 = [(FCActivityManager *)self->_activityManager suggestedActivityFeedbackReceiver];
      [v8 userDidRejectSuggestedActivity:self->_suggestedActivity location:0];
    }

    [(FCCCControlCenterModule *)self _invalidateAndAnimateViewLayoutIfAppropriate];
  }
}

- (void)_updatePreviouslyActiveActivity:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_previouslyActiveActivity, a3);
    v6 = FCUILogModule;
    if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
    {
      previouslyActiveActivity = self->_previouslyActiveActivity;
      v8 = 138543362;
      v9 = previouslyActiveActivity;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updated previously active activity: %{public}@", &v8, 0xCu);
    }

    if (!self->_activeActivity)
    {
      [(FCCCControlCenterModule *)self _invalidateAndAnimateViewLayoutIfAppropriate];
    }
  }
}

- (void)_updateSuggestedActivity:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_suggestedActivity, a3);
  v7 = FCUILogModule;
  if (os_log_type_enabled(FCUILogModule, OS_LOG_TYPE_DEFAULT))
  {
    suggestedActivity = v6->_suggestedActivity;
    v10 = 138543362;
    v11 = suggestedActivity;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updated suggested activity: %{public}@", &v10, 0xCu);
  }

  if (v6->_activeActivity)
  {
    objc_sync_exit(v6);
  }

  else
  {
    previouslyActiveActivity = v6->_previouslyActiveActivity;
    objc_sync_exit(v6);

    if (!previouslyActiveActivity)
    {
      [(FCCCControlCenterModule *)v6 _invalidateAndAnimateViewLayoutIfAppropriate];
    }
  }
}

- (void)_updateBackgroundContinuousCornerRadius
{
  if (self->_expanded)
  {
    CCUIExpandedModuleContinuousCornerRadius();
    compactContinuousCornerRadius = v3;
  }

  else
  {
    compactContinuousCornerRadius = self->_compactContinuousCornerRadius;
  }

  if (_os_feature_enabled_impl())
  {
    [(FCCCModuleViewController *)self->_moduleViewController setContinuousCornerRadius:compactContinuousCornerRadius];
    v6 = [(FCCCModuleViewController *)self->_moduleViewController view];
    [v6 _setContinuousCornerRadius:compactContinuousCornerRadius];
  }

  else
  {
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:compactContinuousCornerRadius];
    moduleViewController = self->_moduleViewController;

    [(FCCCModuleViewController *)moduleViewController setContinuousCornerRadius:compactContinuousCornerRadius];
  }
}

- (void)handleTap:(id)a3
{
  if (self->_tapGesture == a3)
  {
    [(CCUIContentModuleContext *)self->_contentModuleContext dismissModule];
  }
}

@end