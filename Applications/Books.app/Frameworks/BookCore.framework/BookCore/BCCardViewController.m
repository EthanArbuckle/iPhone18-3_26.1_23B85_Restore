@interface BCCardViewController
- (BCCardContent)bottomContentViewController;
- (BCCardContent)topContentViewController;
- (BCCardSetData)cardSetData;
- (BCCardSetNavigationSource)cardSetViewController;
- (BCCardStackConfiguration)configuration;
- (BCCardStackTransitioningCardContent)transitioningCardContent;
- (BCCardViewController)initWithNavigationControllerClass:(Class)a3 cardSetData:(id)a4 distanceToExpand:(double)a5 configuration:(id)a6 cardSetViewController:(id)a7 delegate:(id)a8;
- (BCCardViewControllerDelegate)delegate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)auxiliaryNavigationBarViewControllerCanCloseAsset;
- (BOOL)expanded;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCurrentCard;
- (BOOL)itemPushedOnCard;
- (BOOL)prefersStatusBarBackgroundHidden;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGPoint)oldContentOffset;
- (CGRect)cardStackTransitioningCardFinalFrame;
- (CGRect)viewFrameBeforeAnimation;
- (NSString)stringForReturnToRootBarItem;
- (UIEdgeInsets)_scrollIndicatorInsetsForContentInset:(UIEdgeInsets)a3 unalteredContentInset:(UIEdgeInsets)a4;
- (UIEdgeInsets)accessibilityVisibleContentInsetForCardViewControllerScrollView:(id)a3;
- (UIEdgeInsets)cardContentViewController:(id)a3 contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForContent;
- (UIScrollView)contentScrollView;
- (UIView)auxiliaryNavigationBarView;
- (UIView)auxiliaryNavigationBarViewForAnimation;
- (double)auxiliaryNavigationBarHeight;
- (double)cardStackTransitioningCardContentAlpha;
- (id)_preferredTargetState;
- (void)_adjustContentInsetForViewController:(id)a3;
- (void)_adjustContentMarginsForViewController:(id)a3 isExpanded:(BOOL)a4;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_applyContentInsetToContentViewController:(id)a3;
- (void)_configureAsExpanded;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_setAuxiliaryNavigationBarViewAlpha:(double)a3;
- (void)_setCurrentState:(id)a3 updateStatusBarIfNeeded:(BOOL)a4;
- (void)_setupGripperMenu;
- (void)_updateCardFrames;
- (void)_updateContentWithContentInset;
- (void)_updateScrollViewContentInset;
- (void)_updateViewController:(double)a3 scrollView:(double)a4 withContentInset:(double)a5 unalteredContentInset:(double)a6 contentInsetForScrollIndicatorInsets:(double)a7;
- (void)_updateViewController:(id)a3 withContentInset:(UIEdgeInsets)a4 unalteredContentInset:(UIEdgeInsets)a5;
- (void)accessibilityDidActivateGripperView:(id)a3;
- (void)anchorAuxiliaryNavigationBarView:(id)a3 toView:(id)a4;
- (void)anchorGripperView:(id)a3 toView:(id)a4;
- (void)animationCompletedAtPosition:(int64_t)a3;
- (void)attachAuxiliaryNavigationBarViewAnimated:(BOOL)a3;
- (void)auxiliaryNavigationBarViewControllerDidTapCloseAllCards;
- (void)auxiliaryNavigationBarViewControllerDidTapCloseAsset;
- (void)bcSafeAreaInsetsObservableViewController:(id)a3 safeAreaInsetsDidChange:(UIEdgeInsets)a4;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)cardContentViewController:(id)a3 initializeManagerWithScrollView:(id)a4;
- (void)cardSetPresentationTransitionDidComplete;
- (void)cardStackTransitioningCardFinalize:(BOOL)a3;
- (void)cardStackTransitioningCardPrepare:(BOOL)a3 extraXOffsetForAnimation:(double)a4;
- (void)cardTapped:(id)a3;
- (void)cardViewControllerScrollView:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4;
- (void)clearSavedContentOffsets;
- (void)configureCardTraitOverrides;
- (void)configureChromeForContracted;
- (void)configureChromeForExpanded;
- (void)configureFeedProxyScrollView:(id)a3;
- (void)dealloc;
- (void)dismissPan:(id)a3;
- (void)goContracted;
- (void)goExpanded;
- (void)gripperTapped:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForDismiss;
- (void)resumeAndRebuildForReason:(id)a3;
- (void)scrollToTop:(BOOL)a3;
- (void)scrollViewDidChange;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewTapped:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAnimator:(id)a3;
- (void)setCardStackTransitioningCardContentAlpha:(double)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentViewController:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setIsBubbleTipPresented:(BOOL)a3;
- (void)setIsCurrentCard:(BOOL)a3;
- (void)setScrimAlpha:(double)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setupRootContentScrollView:(id)a3;
- (void)suspendAndTeardownForReason:(id)a3;
- (void)updateContentSize:(CGSize)a3;
- (void)updateNavBarAlpha;
- (void)updateNavBarAlphaForTransition:(double)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BCCardViewController

- (BCCardViewController)initWithNavigationControllerClass:(Class)a3 cardSetData:(id)a4 distanceToExpand:(double)a5 configuration:(id)a6 cardSetViewController:(id)a7 delegate:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = BCCardViewController;
  v18 = [(BCCardViewController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationControllerClass, a3);
    objc_storeWeak(&v19->_cardSetData, v14);
    v19->_distanceToExpand = a5;
    objc_storeWeak(&v19->_configuration, v15);
    objc_storeWeak(&v19->_cardSetViewController, v16);
    objc_storeWeak(&v19->_delegate, v17);
    ++qword_3420E0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1E45E8();
    }

    v20 = [[UITapGestureRecognizer alloc] initWithTarget:v19 action:"cardTapped:"];
    cardTapGestureRecognizer = v19->_cardTapGestureRecognizer;
    v19->_cardTapGestureRecognizer = v20;

    v19->_uppEnabled = _os_feature_enabled_impl();
    v22 = +[UITraitCollection bc_allAPITraits];
    v23 = [(BCCardViewController *)v19 registerForTraitChanges:v22 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v19 selector:"_applicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v24 addObserver:v19 selector:"_applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [(BCCardViewController *)v19 loadViewIfNeeded];
  }

  return v19;
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  v4 = [(BCCardViewController *)self viewState];

  if (v4)
  {
    v5 = [(BCCardViewController *)self view];
    [v5 size];
    v7 = v6;
    v9 = v8;
    v10 = [(BCCardViewController *)self viewState];
    [v10 viewSize];
    v12 = v11;
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      v15 = [(BCCardViewController *)self viewState];
      [v15 cardScrollViewContentOffset];
      v17 = v16;
      v19 = v18;
      v20 = [(BCCardViewController *)self scrollView];
      [v20 setContentOffset:{v17, v19}];

      v21 = [(BCCardViewController *)self viewState];
      [v21 contentScrollViewContentOffset];
      v23 = v22;
      v25 = v24;
      v26 = [(BCCardViewController *)self contentScrollView];
      [v26 setContentOffset:{v23, v25}];
    }

    [(BCCardViewController *)self setViewState:0];
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v22 = [(BCCardViewController *)self scrollView];
  [v22 contentOffset];
  if (v5 != CGPointZero.x || v4 != CGPointZero.y)
  {
    v7 = [(BCCardViewController *)self viewState];

    if (v7)
    {
      return;
    }

    v8 = [BCCardViewControllerViewState alloc];
    v22 = [(BCCardViewController *)self scrollView];
    [v22 contentOffset];
    v10 = v9;
    v12 = v11;
    v13 = [(BCCardViewController *)self contentScrollView];
    [v13 contentOffset];
    v15 = v14;
    v17 = v16;
    v18 = [(BCCardViewController *)self view];
    [v18 size];
    v21 = [(BCCardViewControllerViewState *)v8 initWithContentOffset:v10 contentScrollViewContentOffset:v12 viewSize:v15, v17, v19, v20];
    [(BCCardViewController *)self setViewState:v21];
  }
}

- (BOOL)isCurrentCard
{
  v2 = [(BCCardViewController *)self glassView];
  v3 = v2 == 0;

  return v3;
}

- (void)setIsCurrentCard:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardViewController *)self glassView];

  if (v3)
  {
    if (v5)
    {
      v6 = [(BCCardViewController *)self glassView];
      [v6 removeFromSuperview];

      [(BCCardViewController *)self setGlassView:0];
    }
  }

  else if (!v5)
  {
    v7 = [UIView alloc];
    v8 = [(BCCardViewController *)self cardView];
    [v8 bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setAutoresizingMask:18];
    v10 = [(BCCardViewController *)self cardView];
    [v10 addSubview:v9];

    v11 = [(BCCardViewController *)self cardView];
    [v11 bringSubviewToFront:v9];

    v12 = [(BCCardViewController *)self cardTapGestureRecognizer];
    [v9 addGestureRecognizer:v12];

    [(BCCardViewController *)self setGlassView:v9];
  }

  v13 = [(BCCardViewController *)self cardNavigationController];
  [v13 setIsCurrentCard:v3];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);
  [WeakRetained removeObserver:self forKeyPath:@"contentSize" context:off_33B7D0];

  v4 = objc_loadWeakRetained(&self->_contentScrollView);
  [v4 _removeScrollViewScrollObserver:self];

  v5 = [(BCCardViewController *)self scrollView];
  [v5 _removeScrollViewScrollObserver:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
  [v6 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  --qword_3420E0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1E466C();
  }

  v7.receiver = self;
  v7.super_class = BCCardViewController;
  [(BCCardViewController *)&v7 dealloc];
}

- (void)setCornerRadius:(double)a3
{
  self->_cornerRadius = a3;
  v5 = [(BCCardViewController *)self configuration];
  [v5 cardContractedScale];
  v7 = a3 / v6;

  v8 = [(BCCardViewController *)self blackScrimView];
  [v8 bc_applyCornerRadius:v7];

  v9 = [(BCCardViewController *)self whiteScrimView];
  [v9 bc_applyCornerRadius:v7];

  v10 = [(BCCardViewController *)self cardView];
  [v10 bc_applyCornerRadius:v7];

  v11 = [(BCCardViewController *)self contentContainerView];
  [v11 bc_applyCornerRadius:v7];

  [(BCCardViewController *)self _updateShadowPath];
}

- (void)setAnimator:(id)a3
{
  v4 = a3;
  animator = self->_animator;
  if (animator && [(UIViewPropertyAnimator *)animator state]== &dword_0 + 1)
  {
    v6 = BCCardModelLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E46F0(v6);
    }

    [(UIViewPropertyAnimator *)self->_animator stopAnimation:0];
    [(UIViewPropertyAnimator *)self->_animator finishAnimationAtPosition:2];
  }

  v7 = self->_animator;
  self->_animator = v4;
}

- (BOOL)itemPushedOnCard
{
  v2 = [(BCCardViewController *)self cardNavigationController];
  v3 = [v2 childViewControllers];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = BCCardViewController;
  [(BCCardViewController *)&v58 viewDidLoad];
  [(BCCardViewController *)self configureCardTraitOverrides];
  v3 = [BCCardViewControllerScrollView alloc];
  v4 = [(BCCardViewController *)self view];
  [v4 bounds];
  v5 = [(BCCardViewControllerScrollView *)v3 initWithFrame:?];

  [(BCCardViewControllerScrollView *)v5 setAutoresizingMask:18];
  [(BCCardViewControllerScrollView *)v5 setAccessibilityDelegate:self];
  [(BCCardViewControllerScrollView *)v5 setContentInsetAdjustmentBehavior:2];
  [(BCCardViewControllerScrollView *)v5 setClipsToBounds:0];
  [(BCCardViewControllerScrollView *)v5 setDelegate:self];
  [(BCCardViewControllerScrollView *)v5 setShowsVerticalScrollIndicator:1];
  [(BCCardViewControllerScrollView *)v5 setAlwaysBounceVertical:1];
  [(BCCardViewControllerScrollView *)v5 _setPocketsEnabled:0];
  objc_storeStrong(&self->_rootScrollView, v5);
  v6 = [(BCCardViewController *)self view];
  [v6 addSubview:v5];

  [(BCCardViewController *)self configureFeedProxyScrollView:v5];
  v7 = objc_alloc_init(UIView);
  [(BCCardViewController *)self setCardView:v7];

  v8 = [(BCCardViewController *)self cardView];
  [v8 setAutoresizingMask:18];

  v9 = +[UIColor clearColor];
  v10 = [(BCCardViewController *)self cardView];
  [v10 setBackgroundColor:v9];

  v11 = [UIColor colorWithWhite:1.0 alpha:0.1];
  v12 = [v11 CGColor];
  v13 = [(BCCardViewController *)self cardView];
  v14 = [v13 layer];
  [v14 setBorderColor:v12];

  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;
  v18 = [(BCCardViewController *)self cardView];
  v19 = [v18 layer];
  [v19 setBorderWidth:v17];

  v20 = [(BCCardViewController *)self view];
  v21 = [(BCCardViewController *)self cardView];
  [v20 addSubview:v21];

  v22 = objc_alloc_init(UIView);
  [(BCCardViewController *)self setContentContainerView:v22];

  v23 = [(BCCardViewController *)self contentContainerView];
  [v23 setAutoresizingMask:18];

  v24 = [(BCCardViewController *)self cardView];
  v25 = [(BCCardViewController *)self contentContainerView];
  [v24 addSubview:v25];

  navigationControllerClass = self->_navigationControllerClass;
  if (!navigationControllerClass)
  {
    navigationControllerClass = UINavigationController;
  }

  v27 = objc_alloc_init(navigationControllerClass);
  [(BCCardViewController *)self setCardNavigationController:v27];

  v28 = [(BCCardViewController *)self cardNavigationController];
  [v28 setDelegate:self];

  v29 = [(BCCardViewController *)self cardNavigationController];
  [(BCCardViewController *)self addChildViewController:v29];

  v30 = [(BCCardViewController *)self cardNavigationController];
  v31 = [v30 view];
  [v31 setAutoresizingMask:2];

  v32 = [(BCCardViewController *)self contentContainerView];
  v33 = [(BCCardViewController *)self cardNavigationController];
  v34 = [v33 view];
  [v32 addSubview:v34];

  v35 = [(BCCardViewController *)self cardNavigationController];
  [v35 didMoveToParentViewController:self];

  [(BCCardViewController *)self _updateCardFrames];
  v36 = [(BCCardViewController *)self view];
  [v36 bounds];
  [(BCCardViewController *)self updateContentSize:v37, v38];

  v39 = [(BCCardViewController *)self contentContainerView];
  [v39 setClipsToBounds:1];

  [(BCCardViewController *)self setRoundedCorners:1];
  v40 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"dismissPan:"];
  [v40 setDelegate:self];
  [(BCCardViewController *)self setDismissPanGestureRecognizer:v40];
  v41 = [(BCCardViewController *)self cardNavigationController];
  v42 = [v41 navigationBar];
  [v42 addGestureRecognizer:v40];

  if (!self->_uppEnabled)
  {
    v43 = [BCCardGripperView cardGripperViewWithStyle:0];
    gripperView = self->_gripperView;
    self->_gripperView = v43;

    [(BCCardGripperView *)self->_gripperView setAlpha:0.0];
    v45 = [(BCCardGripperView *)self->_gripperView layer];
    [v45 setZPosition:1000.0];

    [(BCCardGripperView *)self->_gripperView _accessibilitySetSortPriority:999];
    v46 = [(BCCardViewController *)self gripperView];
    [v46 setAccessibilityDelegate:self];

    v47 = [(BCCardViewController *)self cardView];
    v48 = [(BCCardViewController *)self gripperView];
    [v47 addSubview:v48];

    v49 = [(BCCardViewController *)self gripperView];
    v50 = [(BCCardViewController *)self cardNavigationController];
    v51 = [v50 view];
    [(BCCardViewController *)self anchorGripperView:v49 toView:v51];

    v52 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"gripperTapped:"];
    v53 = [(BCCardViewController *)self gripperView];
    [v53 addGestureRecognizer:v52];

    [(BCCardViewController *)self _setupGripperMenu];
  }

  v54 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"scrollViewTapped:"];
  [v54 setDelegate:self];
  v55 = [(BCCardViewController *)self scrollView];
  [v55 addGestureRecognizer:v54];

  v56 = +[BCCardSetState contractedState];
  [(BCCardViewController *)self _setCurrentState:v56 updateStatusBarIfNeeded:0];

  v57 = [(BCCardViewController *)self scrollView];
  [v57 _addScrollViewScrollObserver:self];

  [(BCCardViewController *)self _updateFromMetrics];
}

- (void)anchorGripperView:(id)a3 toView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(BCCardViewController *)self configuration];
  [v8 auxiliaryNavigationBarHorizontalInset];
  v10 = v9;

  v11 = [(BCCardViewController *)self configuration];
  [v11 auxiliaryNavigationBarVerticalInset];
  v13 = v12;

  v14 = [v7 topAnchor];
  v15 = [v6 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v13];

  v17 = [v7 trailingAnchor];
  v18 = [v6 trailingAnchor];

  v19 = [v17 constraintEqualToAnchor:v18 constant:-v10];

  v20 = [(BCCardViewController *)self gripperView];

  if (v20 == v7)
  {
    [(BCCardViewController *)self setAuxiliaryNavigationBarTopConstraint:v16];
  }

  v22[0] = v16;
  v22[1] = v19;
  v21 = [NSArray arrayWithObjects:v22 count:2];
  [NSLayoutConstraint activateConstraints:v21];
}

- (UIView)auxiliaryNavigationBarView
{
  if (self->_uppEnabled)
  {
    v2 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
    v3 = [v2 view];
  }

  else
  {
    v3 = [(BCCardViewController *)self gripperView];
  }

  return v3;
}

- (UIView)auxiliaryNavigationBarViewForAnimation
{
  v2 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  v3 = [v2 animatableCopyView];

  return v3;
}

- (void)attachAuxiliaryNavigationBarViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 parentViewController];

    if (!v7)
    {
      [(BCCardViewController *)self addChildViewController:v6];
      v8 = [(BCCardViewController *)self contentContainerView];
      v9 = [v6 view];
      [v8 addSubview:v9];

      [v6 didMoveToParentViewController:self];
      v10 = [v6 view];
      v11 = [(BCCardViewController *)self cardNavigationController];
      v12 = [v11 view];
      [(BCCardViewController *)self anchorAuxiliaryNavigationBarView:v10 toView:v12];

      if (v3)
      {
        v13 = [v6 view];
        [v13 alpha];
        v15 = v14;

        if (v15 != 0.0)
        {
          v16 = [v6 view];
          [v16 alpha];
          v18 = v17;

          v19 = +[UIViewPropertyAnimator bc_swiftUIDefault];
          v20 = [v6 view];
          [v20 setAlpha:0.0];

          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_7958;
          v24 = &unk_2C7D18;
          v25 = v6;
          v26 = v18;
          [v19 addAnimations:&v21];
          [v19 startAnimation];
        }
      }
    }
  }
}

- (double)auxiliaryNavigationBarHeight
{
  if (_UISolariumEnabled())
  {
    return 0.0;
  }

  v4 = [(BCCardViewController *)self cardNavigationController];
  v5 = [v4 navigationBar];
  [v5 defaultHeightForMetrics:0];
  v7 = v6;

  return v7;
}

- (void)anchorAuxiliaryNavigationBarView:(id)a3 toView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 topAnchor];
  v9 = [v6 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = [v7 leadingAnchor];
  v12 = [v6 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  v14 = [v7 trailingAnchor];
  v15 = [v6 trailingAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = [(BCCardViewController *)self auxiliaryNavigationBarView];

  if (v17 == v7)
  {
    [(BCCardViewController *)self setAuxiliaryNavigationBarTopConstraint:v10];
  }

  v19[0] = v10;
  v19[1] = v13;
  v19[2] = v16;
  v18 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_setAuxiliaryNavigationBarViewAlpha:(double)a3
{
  if (self->_uppEnabled)
  {
    [(BCCardViewController *)self auxiliaryNavigationBarView];
  }

  else
  {
    [(BCCardViewController *)self gripperView];
  }
  v4 = ;
  [v4 setAlpha:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = BCCardViewController;
  [(BCCardViewController *)&v8 viewWillAppear:a3];
  v4 = [(BCCardViewController *)self cardSetData];
  if ([v4 covered])
  {

LABEL_5:
    v7 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
    [v7 setIsParentCardOccluded:1];
    goto LABEL_6;
  }

  v5 = [(BCCardViewController *)self isCurrentCard];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [v6 setIsParentCardOccluded:0];

  v7 = [(BCCardViewController *)self topContentViewController];
  [v7 didBecomeVisibleContentScrollView];
LABEL_6:
}

- (void)bc_analyticsVisibilityDidAppear
{
  v7.receiver = self;
  v7.super_class = BCCardViewController;
  [(BCCardViewController *)&v7 bc_analyticsVisibilityDidAppear];
  v3 = [(BCCardViewController *)self cardSetData];
  if ([v3 covered])
  {
  }

  else
  {
    v4 = [(BCCardViewController *)self isCurrentCard];

    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_7E08;
      block[3] = &unk_2C7D40;
      block[4] = self;
      dispatch_after(0, &_dispatch_main_q, block);
      return;
    }
  }

  v5 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [v5 setIsParentCardOccluded:1];
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v4.receiver = self;
  v4.super_class = BCCardViewController;
  [(BCCardViewController *)&v4 bc_analyticsVisibilityDidDisappear];
  v3 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [v3 setIsParentCardOccluded:1];
}

- (void)scrollViewTapped:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v4 = [(BCCardViewController *)self delegate];
    [v4 cardViewControllerDidTapScrollView:self];
  }
}

- (void)cardTapped:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v4 = [(BCCardViewController *)self delegate];
    [v4 cardViewControllerDidTapCard:self];
  }
}

- (void)dismissPan:(id)a3
{
  v4 = a3;
  v5 = [(BCCardViewController *)self currentState];
  [v5 cardViewController:self dismissPan:v4 cardData:self];
}

- (void)_setupGripperMenu
{
  [(BCCardGripperView *)self->_gripperView setContextMenuInteractionEnabled:1];
  [(BCCardGripperView *)self->_gripperView setMenuViewController:self];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_810C;
  v3[3] = &unk_2C7D90;
  objc_copyWeak(&v4, &location);
  [(BCCardGripperView *)self->_gripperView setActionProvider:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)gripperTapped:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v4 = [(BCCardViewController *)self cardStackViewController];
    [v4 popCardsAnimated:1 reason:1];
  }
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(BCCardViewController *)self cardStackViewController];
  [v2 popCardsAnimated:1 reason:0];

  return 1;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCCardViewController;
  [(BCCardViewController *)&v3 viewWillLayoutSubviews];
  [(BCCardViewController *)self _updateCardFrames];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = BCCardViewController;
  v7 = a4;
  [(BCCardViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8700;
  v9[3] = &unk_2C7CD0;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_88E8;
  v8[3] = &unk_2C7CD0;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)_updateCardFrames
{
  v3 = [(BCCardViewController *)self currentState];

  if (v3)
  {
    if ([(BCCardViewController *)self dismissing])
    {
      goto LABEL_6;
    }

    v4 = [(BCCardViewController *)self currentState];
  }

  else
  {
    v4 = +[BCCardSetState contractedState];
  }

  v5 = v4;
  [v4 cardViewControllerUpdateCardSize:self];

LABEL_6:
  v6 = [(BCCardViewController *)self cardView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(BCCardViewController *)self contentContainerView];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(BCCardViewController *)self _updateShadowPath];
}

- (void)updateContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(BCCardViewController *)self currentState];
  [v6 cardViewController:self updateContentSize:{width, height}];
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v34 = a3;
  v4 = [(BCCardViewController *)self scrollView];
  if (v4 == v34)
  {
  }

  else
  {
    v5 = [(BCCardViewController *)self contentScrollView];

    if (v5 != v34)
    {
      goto LABEL_14;
    }
  }

  if (self->_uppEnabled)
  {
    [(BCCardViewController *)self auxiliaryNavigationBarView];
  }

  else
  {
    [(BCCardViewController *)self gripperView];
  }
  v6 = ;
  v7 = [(BCCardViewController *)self currentState];
  [v7 cardViewController:self positionAuxiliaryNavigationBarView:v6 cardDate:self];

  if (self->_uppEnabled)
  {
    v8 = [(BCCardViewController *)self auxiliaryNavigationBarView];
    [v8 alpha];
    if (v9 != 1.0)
    {
LABEL_12:

      goto LABEL_13;
    }

    v10 = [(BCCardViewController *)self cardNavigationController];
    v11 = [v10 viewControllers];
    v12 = [v11 count];

    if (v12 == &dword_0 + 1)
    {
      v8 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
      [v8 cardViewController:self positionAuxiliaryNavigationBarBackgroundWithData:self];
      goto LABEL_12;
    }
  }

LABEL_13:

LABEL_14:
  v13 = [(BCCardViewController *)self currentState];
  v14 = [v13 ignoreContentOffsetForCardViewController:self];

  if (v14)
  {
    goto LABEL_25;
  }

  v15 = [(BCCardViewController *)self contentScrollView];

  if (v15 == v34)
  {
    v19 = [(BCCardViewController *)self currentState];
    v20 = [(BCCardViewController *)self contentScrollView];
    [v19 cardViewController:self cardScrollViewOffsetForContentScrollView:v20 cardData:self];
    v22 = v21;

    v23 = [(BCCardViewController *)self scrollView];
    [v23 contentOffset];
    v25 = v24;
    v27 = v26;

    v28 = +[UIScreen mainScreen];
    [v28 scale];
    v30 = 1.0 / v29;

    if (vabdd_f64(v22, v27) < v30)
    {
      goto LABEL_25;
    }

    v31 = [(BCCardViewController *)self scrollView];
    [v31 setContentOffset:{v25, v22}];

    goto LABEL_22;
  }

  v16 = [(BCCardViewController *)self scrollView];
  if (v16 != v34)
  {
LABEL_24:

    goto LABEL_25;
  }

  v17 = [(BCCardViewController *)self scrollView];
  if ([v17 isDecelerating])
  {
LABEL_23:

    goto LABEL_24;
  }

  v18 = [(BCCardViewController *)self scrollView];
  if ([v18 isDragging])
  {

    goto LABEL_23;
  }

  v32 = [(BCCardViewController *)self cardSetData];
  v33 = [v32 isInTransitionUpdateMode];

  if ((v33 & 1) == 0)
  {
LABEL_22:
    v16 = [(BCCardViewController *)self currentState];
    v17 = [(BCCardViewController *)self contentScrollView];
    [v16 cardViewController:self repositionOffsetsWithContentScrollView:v17 cardData:self];
    goto LABEL_23;
  }

LABEL_25:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a5;
  if (off_33B7D0 == a6)
  {
    if ([a3 isEqualToString:@"contentSize"])
    {
      v12 = [(BCCardViewController *)self contentScrollView];

      if (v12 == v10)
      {
        objc_opt_class();
        v13 = [v11 objectForKeyedSubscript:NSKeyValueChangeNewKey];
        v14 = BUDynamicCast();

        [v14 CGSizeValue];
        v16 = v15;
        v18 = v17;
        objc_opt_class();
        v19 = [v11 objectForKeyedSubscript:NSKeyValueChangeOldKey];
        v20 = BUDynamicCast();

        [v20 CGSizeValue];
        if (v22 != v16 || v21 != v18)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_8FFC;
          v24[3] = &unk_2C7DB8;
          v24[4] = self;
          *&v24[5] = v16;
          *&v24[6] = v18;
          [UIView performWithoutAnimation:v24];
        }
      }
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = BCCardViewController;
    [(BCCardViewController *)&v25 observeValueForKeyPath:a3 ofObject:v10 change:v11 context:a6];
  }
}

- (BCCardContent)topContentViewController
{
  v2 = [(BCCardViewController *)self cardNavigationController];
  v3 = [v2 topViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  return v4;
}

- (BCCardContent)bottomContentViewController
{
  v2 = [(BCCardViewController *)self cardNavigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 firstObject];
  objc_opt_class();
  v5 = BUClassAndProtocolCast();

  return v5;
}

- (void)_applyContentInsetToContentViewController:(id)a3
{
  v15 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(BCCardViewController *)self cardNavigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 firstObject];
    if (v6 == v15)
    {
      [(BCCardViewController *)self contentInset];
    }

    else
    {
      [(BCCardViewController *)self contentInsetForContent];
    }

    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;

    [(BCCardViewController *)self _updateViewController:v15 withContentInset:v11 unalteredContentInset:v12, v13, v14, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
  }
}

- (void)_updateContentWithContentInset
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(BCCardViewController *)self cardNavigationController];
  v4 = [v3 viewControllers];

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

        objc_opt_class();
        v9 = BUClassAndProtocolCast();
        [(BCCardViewController *)self _applyContentInsetToContentViewController:v9, &OBJC_PROTOCOL___BCCardContent];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  top = a3.top;
  left = a3.left;
  self->_unalteredContentInset = a3;
  right = a3.right;
  bottom = a3.bottom;
  v4 = [(BCCardViewController *)self configuration];
  v5 = [v4 cardsCanExpand];

  if ((v5 & 1) == 0)
  {
    v6 = [(BCCardViewController *)self cardSetViewController];
    v7 = [v6 view];
    v8 = [(BCCardViewController *)self cardSetViewController];
    v9 = [v8 view];
    [v9 bounds];
    [v7 convertRect:0 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v29.origin.x = v11;
    v29.origin.y = v13;
    v29.size.width = v15;
    v29.size.height = v17;
    MaxY = CGRectGetMaxY(v29);
    v19 = [(BCCardViewController *)self cardView];
    [v19 frame];
    v20 = CGRectGetMaxY(v30);

    v21 = bottom;
    if (v20 - MaxY > 0.0)
    {
      v21 = bottom + v20 - MaxY;
    }

    bottom = v21;
  }

  v22.f64[0] = top;
  v22.f64[1] = left;
  v23.f64[0] = bottom;
  v23.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v22), vceqq_f64(*&self->_contentInset.bottom, v23)))) & 1) == 0)
  {
    self->_contentInset.top = top;
    self->_contentInset.left = left;
    self->_contentInset.bottom = bottom;
    self->_contentInset.right = right;
    [(BCCardViewController *)self contentInsetForContent];
    UIEdgeInsetsReplace();
    [(BCCardViewController *)self setContentInsetForContent:?];
    [(BCCardViewController *)self _updateScrollViewContentInset];

    [(BCCardViewController *)self _updateContentWithContentInset];
  }
}

- (UIEdgeInsets)_scrollIndicatorInsetsForContentInset:(UIEdgeInsets)a3 unalteredContentInset:(UIEdgeInsets)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = [(BCCardViewController *)self configuration];
  v10 = [v9 cardsCanExpand];

  if ((v10 & 1) == 0)
  {
    v11 = [(BCCardViewController *)self cardSetViewController];
    [v11 scaledContractedOffset];

    if (top == 0.0)
    {
      v12 = [(BCCardViewController *)self configuration];
      [v12 cardCornerRadius];
    }

    UIEdgeInsetsReplace();
    top = v13;
    left = v14;
    bottom = v15;
    right = v16;
  }

  v17 = top;
  v18 = left;
  v19 = bottom;
  v20 = right;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)_updateViewController:(id)a3 withContentInset:(UIEdgeInsets)a4 unalteredContentInset:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v9 = a4.right;
  v10 = a4.bottom;
  v11 = a4.left;
  v12 = a4.top;
  v14 = a3;
  v15 = [v14 scrollView];
  [(BCCardViewController *)self _updateViewController:v14 scrollView:v15 withContentInset:v12 unalteredContentInset:v11 contentInsetForScrollIndicatorInsets:v10, v9, top, left, bottom, right, *&v12, *&v11, *&v10, *&v9];
}

- (void)_updateViewController:(double)a3 scrollView:(double)a4 withContentInset:(double)a5 unalteredContentInset:(double)a6 contentInsetForScrollIndicatorInsets:(double)a7
{
  v46 = a11;
  v26 = a12;
  if ([v46 prefersAdditionalSafeAreaInsetsForInsetting])
  {
    v27 = a4 - BCCardAdditionalBottomInset();
    [v46 additionalSafeAreaInsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [v46 viewIfLoaded];
    [v36 safeAreaInsets];
    v38 = v37 - v33;

    [v46 setAdditionalSafeAreaInsets:{v29, v31, v27 - v38, v35}];
  }

  else
  {
    v39 = [a1 scrollView];
    v40 = v39;
    if (v39 == v26)
    {
    }

    else
    {
      v41 = [v26 contentInsetAdjustmentBehavior];

      if (v41 != &dword_0 + 2)
      {
        [v26 setContentInsetAdjustmentBehavior:2];
      }
    }

    [v26 setContentInset:{a2, a3, a4, a5}];
    [a1 _scrollIndicatorInsetsForContentInset:a13 unalteredContentInset:{a14, a15, a16, a6, a7, a8, a9}];
    [v26 setScrollIndicatorInsets:?];
  }
}

- (void)_updateScrollViewContentInset
{
  v3 = [(BCCardViewController *)self currentState];
  if ([v3 useContentInsetForContentForScrollIndicatorInsets])
  {
    [(BCCardViewController *)self contentInsetForContent];
  }

  else
  {
    [(BCCardViewController *)self contentInset];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  v12 = [(BCCardViewController *)self scrollView];
  [(BCCardViewController *)self contentInset];
  [(BCCardViewController *)self _updateViewController:0 scrollView:v12 withContentInset:v8 unalteredContentInset:v9 contentInsetForScrollIndicatorInsets:v10, v11];
}

- (void)setupRootContentScrollView:(id)a3
{
  v4 = a3;
  [v4 setAlwaysBounceVertical:1];
  [(BCCardViewController *)self setContentScrollView:v4];
}

- (void)setContentViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14 = v4;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [(BCCardViewController *)self cardNavigationController];
  [v7 setViewControllers:v6];

  if (v5)
  {
  }

  [(BCCardViewController *)self _applyContentInsetToContentViewController:v5];
  v8 = [v5 scrollView];
  [(BCCardViewController *)self setupRootContentScrollView:v8];
  v9 = [(BCCardViewController *)self cardNavigationController];
  [v9 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];

  v10 = BUProtocolCast();
  [v10 setBcSafeAreaInsetsObserver:self];
  if (self->_uppEnabled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_9C08;
    v11[3] = &unk_2C7DE0;
    objc_copyWeak(&v12, &location);
    [v5 auxiliaryNavigationBarViewControllerWithCompletionHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (BCCardStackTransitioningCardContent)transitioningCardContent
{
  v2 = [(BCCardViewController *)self cardNavigationController];
  v3 = [v2 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCardContent];

  return v3;
}

- (void)setScrimAlpha:(double)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v9 = [(BCCardViewController *)self blackScrimView];

  if (v9)
  {
    if (v6)
    {
LABEL_3:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_A0C0;
      v24[3] = &unk_2C7D18;
      v24[4] = self;
      *&v24[5] = a3;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_A114;
      v23[3] = &unk_2C7E08;
      *&v23[5] = a3;
      v23[4] = self;
      [UIView animateWithDuration:v24 animations:v23 completion:a5];
      return;
    }
  }

  else
  {
    if (a3 == 0.0)
    {
      return;
    }

    v10 = [UIView alloc];
    v11 = [(BCCardViewController *)self cardView];
    [v11 bounds];
    v12 = [v10 initWithFrame:?];
    [(BCCardViewController *)self setBlackScrimView:v12];

    v13 = [(BCCardViewController *)self blackScrimView];
    [v13 setAutoresizingMask:18];

    v14 = [(BCCardViewController *)self cardView];
    v15 = [(BCCardViewController *)self blackScrimView];
    [v14 addSubview:v15];

    v16 = +[UIColor blackColor];
    v17 = [(BCCardViewController *)self blackScrimView];
    [v17 setBackgroundColor:v16];

    v18 = [(BCCardViewController *)self blackScrimView];
    [v18 setAlpha:0.0];

    v19 = [(BCCardViewController *)self blackScrimView];
    v20 = [(BCCardViewController *)self contentContainerView];
    [v19 bc_applyCornerRadiusFromView:v20];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v21 = [(BCCardViewController *)self blackScrimView];
  [v21 setAlpha:a3];

  if (a3 == 0.0)
  {
    v22 = [(BCCardViewController *)self blackScrimView];
    [v22 removeFromSuperview];

    [(BCCardViewController *)self setBlackScrimView:0];
  }
}

- (void)_configureAsExpanded
{
  [(BCCardViewController *)self setRoundedCorners:0];
  v3 = [(BCCardViewController *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  [(BCCardViewController *)self distanceToExpand];
  v7 = v6;
  v8 = [(BCCardViewController *)self scrollView];
  [v8 adjustedContentInset];
  v10 = v7 - v9;
  v11 = [(BCCardViewController *)self scrollView];
  [v11 setContentOffset:{v5, v10}];

  v12 = +[BCCardSetState expandedState];
  [(BCCardViewController *)self setCurrentState:v12];

  v13 = [(BCCardViewController *)self currentState];
  [v13 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v15 = v14;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v15];
}

- (void)configureChromeForExpanded
{
  [(BCCardViewController *)self setRoundedCorners:0];
  v3 = [BCCardSetState cardViewControllerExpandedState:self];
  [v3 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v5 = v4;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v5];
  v7 = [(BCCardViewController *)self cardNavigationController];
  v6 = [v7 topViewController];
  [(BCCardViewController *)self _adjustContentMarginsForViewController:v6 isExpanded:1];
}

- (void)configureChromeForContracted
{
  [(BCCardViewController *)self setRoundedCorners:1];
  v3 = [BCCardSetState cardViewControllerExpandedState:self];
  [v3 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v5 = v4;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v5];
  v7 = [(BCCardViewController *)self cardNavigationController];
  v6 = [v7 topViewController];
  [(BCCardViewController *)self _adjustContentMarginsForViewController:v6 isExpanded:0];
}

- (void)_adjustContentMarginsForViewController:(id)a3 isExpanded:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  if (isPad())
  {
    v6 = [v23 navigationItem];
    [v6 _minimumContentMargins];
    v8 = v7;
    v10 = v9;

    v11 = 0.0;
    v12 = 0.0;
    if (v4)
    {
      v13 = [(BCCardViewController *)self cardStackViewController];
      [v13 safeAreaInsetsFromWindowCorners];
      v15 = v14;
      v17 = v16;

      v18 = [(BCCardViewController *)self view];
      v19 = [v18 effectiveUserInterfaceLayoutDirection];

      if (v19 == &dword_0 + 1)
      {
        v20 = v17;
      }

      else
      {
        v20 = v15;
      }

      if (v19 == &dword_0 + 1)
      {
        v21 = v15;
      }

      else
      {
        v21 = v17;
      }

      if (v20 <= 0.0)
      {
        v12 = v20;
      }

      else
      {
        v12 = v20 + 12.0;
      }

      if (v21 <= 0.0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21 + 12.0;
      }
    }

    v22 = [v23 navigationItem];
    [v22 _setMinimumContentMargins:{v8, v12, v10, v11}];
  }
}

- (void)goExpanded
{
  v28 = [(BCCardViewController *)self currentState];
  v3 = +[BCCardSetState expandedState];
  if (v28 != v3)
  {
    v4 = [(BCCardViewController *)self currentState];
    v5 = +[BCCardSetState pushedState];

    if (v4 == v5)
    {
      return;
    }

    v6 = [(BCCardViewController *)self cardSetViewController];
    v7 = [v6 currentCardViewController];

    if (v7 != self)
    {

      [(BCCardViewController *)self _configureAsExpanded];
      return;
    }

    v8 = +[BCCardSetState expandingState];
    [(BCCardViewController *)self setCurrentState:v8];

    v9 = [(BCCardViewController *)self animator];
    [v9 setFractionComplete:1.0];

    v10 = [(BCCardViewController *)self cardNavigationController];
    v11 = [v10 viewControllers];
    v12 = [v11 count];

    if (v12 == &dword_0 + 1)
    {
      v13 = [(BCCardViewController *)self scrollView];
      [v13 contentOffset];
      v15 = v14;
      v16 = [(BCCardViewController *)self cardSetViewController];
      [v16 scaledContractedOffset];
      v18 = v17;
      v19 = [(BCCardViewController *)self configuration];
      [v19 cardExpandedTopOffset];
      v21 = v18 - v20;
      v22 = [(BCCardViewController *)self scrollView];
      [v22 adjustedContentInset];
      v24 = v21 - v23;
      v25 = [(BCCardViewController *)self scrollView];
      [v25 setContentOffset:{v15, v24}];
    }

    v26 = [(BCCardViewController *)self animator];
    [v26 stopAnimation:0];

    v27 = [(BCCardViewController *)self animator];
    [v27 finishAnimationAtPosition:0];

    v28 = [(BCCardViewController *)self currentState];
    v3 = [(BCCardViewController *)self contentScrollView];
    [v28 cardViewController:self repositionOffsetsWithContentScrollView:v3 cardData:self];
  }
}

- (void)goContracted
{
  v3 = [(BCCardViewController *)self currentState];
  v4 = +[BCCardSetState contractedState];
  v5 = v4;
  if (v3 == v4)
  {

LABEL_6:
    v16 = [(BCCardViewController *)self configuration];
    v17 = [v16 cardsCanExpand];

    if (!v17)
    {
      return;
    }

    goto LABEL_7;
  }

  v6 = [(BCCardViewController *)self currentState];
  v7 = +[BCCardSetState pushedContractedState];

  if (v6 == v7)
  {
    goto LABEL_6;
  }

  y = CGPointZero.y;
  v9 = [(BCCardViewController *)self scrollView];
  [v9 setContentOffset:{CGPointZero.x, y}];

  v10 = +[BCCardSetState contractingState];
  [(BCCardViewController *)self setCurrentState:v10];

  v11 = [(BCCardViewController *)self animator];
  [v11 setFractionComplete:1.0];

  v12 = [(BCCardViewController *)self animator];
  [v12 stopAnimation:0];

  v13 = [(BCCardViewController *)self animator];
  [v13 finishAnimationAtPosition:0];

  v14 = [(BCCardViewController *)self configuration];
  v15 = [v14 cardsCanExpand];

  if ((v15 & 1) == 0)
  {
    return;
  }

LABEL_7:
  [(BCCardViewController *)self clearSavedContentOffsets];
  v24 = [(BCCardViewController *)self scrollView];
  [v24 contentOffset];
  v19 = v18;
  v20 = [(BCCardViewController *)self scrollView];
  [v20 adjustedContentInset];
  v22 = -v21;
  v23 = [(BCCardViewController *)self scrollView];
  [v23 setContentOffset:{v19, v22}];
}

- (void)cardSetPresentationTransitionDidComplete
{
  if (self->_uppEnabled)
  {
    [(BCCardViewController *)self attachAuxiliaryNavigationBarViewAnimated:[(BCCardViewController *)self isCurrentCard]];
  }

  if (_UISolariumEnabled())
  {
    [(BCCardViewController *)self updateNavBarAlpha];
    v3 = [(BCCardViewController *)self bottomContentViewController];
    [v3 cardPresentationTransitionDidComplete:{-[BCCardViewController isCurrentCard](self, "isCurrentCard")}];
  }
}

- (void)suspendAndTeardownForReason:(id)a3
{
  v4 = a3;
  [(BCCardViewController *)self setContentScrollView:0];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v5 = [(BCCardViewController *)self cardNavigationController:0];
  v6 = [v5 viewControllers];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = BUProtocolCast();
        v12 = v11;
        if (v11)
        {
          [v11 suspendAndTeardownForReason:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)clearSavedContentOffsets
{
  y = CGPointZero.y;
  v4 = [(BCCardViewController *)self scrollView];
  [v4 setContentOffset:{CGPointZero.x, y}];

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v5 = [(BCCardViewController *)self cardNavigationController:0];
  v6 = [v5 viewControllers];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = BUProtocolCast();
        [v11 clearSuspendedViewState];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)resumeAndRebuildForReason:(id)a3
{
  v4 = a3;
  v5 = [(BCCardViewController *)self scrollView];
  [v5 contentOffset];
  v7 = v6;
  v8 = [(BCCardViewController *)self scrollView];
  [v8 adjustedContentInset];
  v10 = v7 + v9;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [(BCCardViewController *)self cardNavigationController];
  v12 = [v11 viewControllers];

  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = BUProtocolCast();
        v18 = [v17 resumeAndRebuildForReason:v4];
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v19 = [(BCCardViewController *)self scrollView];
  [v19 contentOffset];
  v21 = v20;

  v22 = [(BCCardViewController *)self scrollView];
  [v22 adjustedContentInset];
  v24 = v10 - v23;

  v25 = [(BCCardViewController *)self scrollView];
  [v25 setContentOffset:{v21, v24}];

  v26 = [(BCCardViewController *)self cardNavigationController];
  v27 = [v26 viewControllers];
  v28 = [v27 firstObject];
  objc_opt_class();
  v38 = &OBJC_PROTOCOL___BCCardContent;
  v29 = BUClassAndProtocolCast();

  if (v29)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_B090;
    v39[3] = &unk_2C7BE8;
    v39[4] = self;
    v40 = v29;
    [UIView performWithoutAnimation:v39, &OBJC_PROTOCOL___BCCardContent];
  }

  v30 = [(BCCardViewController *)self cardNavigationController];
  v31 = [v30 viewControllers];
  v32 = [v31 count];

  if (v32 >= 2)
  {
    v33 = [(BCCardViewController *)self cardNavigationController];
    v34 = [v33 viewControllers];
    v35 = [v34 lastObject];
    objc_opt_class();
    v36 = BUClassAndProtocolCast();

    if (v36)
    {
      v37 = [v36 scrollView];
      [(BCCardViewController *)self setContentScrollView:v37];

      [(BCCardViewController *)self _adjustContentInsetForViewController:v36];
      v29 = v36;
    }

    else
    {
      v29 = 0;
    }
  }
}

- (void)scrollToTop:(BOOL)a3
{
  v3 = a3;
  v5 = [(BCCardViewController *)self topContentViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BCCardViewController *)self topContentViewController];
    [v7 scrollToTopAnimated:v3];
  }

  else
  {
    v7 = [(BCCardViewController *)self currentState];
    [v7 cardViewController:self scrollToTopAnimated:v3 cardData:self];
  }
}

- (void)prepareForDismiss
{
  v3 = [(BCCardViewController *)self currentState];
  [v3 cardViewController:self willDismissWithCardData:self];
}

- (void)cardViewControllerScrollView:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(BCCardViewController *)self currentState];
  [v7 cardViewController:self accessibilityWantsToScrollToOffset:self cardData:{x, y}];
}

- (UIEdgeInsets)accessibilityVisibleContentInsetForCardViewControllerScrollView:(id)a3
{
  [(BCCardViewController *)self contentInsetForContent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BCCardViewController *)self configuration];
  v13 = [v12 cardsCanExpand];

  if ((v13 & 1) == 0)
  {
    if (self->_uppEnabled)
    {
      [(BCCardViewController *)self auxiliaryNavigationBarView];
    }

    else
    {
      [(BCCardViewController *)self gripperView];
    }
    v14 = ;
    v15 = [(BCCardViewController *)self scrollView];
    v16 = [v15 superview];
    [v14 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v14 superview];
    [v16 convertRect:v25 fromView:{v18, v20, v22, v24}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v38.origin.x = v27;
    v38.origin.y = v29;
    v38.size.width = v31;
    v38.size.height = v33;
    v5 = v5 + CGRectGetMaxY(v38) + 4.0;
  }

  v34 = v5;
  v35 = v7;
  v36 = v9;
  v37 = v11;
  result.right = v37;
  result.bottom = v36;
  result.left = v35;
  result.top = v34;
  return result;
}

- (void)accessibilityDidActivateGripperView:(id)a3
{
  v4 = [(BCCardViewController *)self delegate];
  [v4 cardViewControllerDidTapScrollView:self];
}

- (void)cardContentViewController:(id)a3 initializeManagerWithScrollView:(id)a4
{
  v5 = a4;
  [(BCCardViewController *)self contentInset];
  [v5 safeAreaInsets];
  UIEdgeInsetsReplace();
  [(BCCardViewController *)self setContentInsetForContent:?];
  [(BCCardViewController *)self setupRootContentScrollView:v5];
}

- (UIEdgeInsets)cardContentViewController:(id)a3 contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a4
{
  [(BCCardViewController *)self contentInsetForContent:a3];
  v5 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [v5 backgroundSafeAreaInsets];
  UIEdgeInsetsReplace();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)bcSafeAreaInsetsObservableViewController:(id)a3 safeAreaInsetsDidChange:(UIEdgeInsets)a4
{
  [(BCCardViewController *)self contentInset];
  UIEdgeInsetsReplace();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(BCCardViewController *)self setContentInsetForContent:?];
  v13 = [(BCCardViewController *)self cardNavigationController];
  v14 = [v13 viewControllers];
  v15 = [v14 count];

  if (v15 >= 2)
  {
    v16 = [(BCCardViewController *)self topContentViewController];
    [(BCCardViewController *)self _updateViewController:v16 withContentInset:v6 unalteredContentInset:v8, v10, v12, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
  }
}

- (CGRect)cardStackTransitioningCardFinalFrame
{
  [(BCCardViewController *)self viewFrameBeforeAnimation];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)cardStackTransitioningCardContentAlpha
{
  v2 = [(BCCardViewController *)self whiteScrimView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setCardStackTransitioningCardContentAlpha:(double)a3
{
  v4 = [(BCCardViewController *)self whiteScrimView];
  [v4 setAlpha:a3];
}

- (void)cardStackTransitioningCardPrepare:(BOOL)a3 extraXOffsetForAnimation:(double)a4
{
  v6 = [(BCCardViewController *)self cardView];
  [v6 frame];
  [(BCCardViewController *)self setViewFrameBeforeAnimation:?];

  [(BCCardViewController *)self setExtraXOffsetForAnimation:a4];
  v7 = [UIView alloc];
  v8 = [(BCCardViewController *)self cardView];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];
  [(BCCardViewController *)self setWhiteScrimView:v9];

  v10 = [(BCCardViewController *)self cardView];
  v11 = [(BCCardViewController *)self whiteScrimView];
  [v10 addSubview:v11];

  v12 = [(BCCardViewController *)self whiteScrimView];
  [v12 setAlpha:0.0];

  v13 = +[UIColor bc_booksBackground];
  v14 = [(BCCardViewController *)self whiteScrimView];
  [v14 setBackgroundColor:v13];

  v16 = [(BCCardViewController *)self whiteScrimView];
  v15 = [(BCCardViewController *)self contentContainerView];
  [v16 bc_applyCornerRadiusFromView:v15];
}

- (void)cardStackTransitioningCardFinalize:(BOOL)a3
{
  [(BCCardViewController *)self setViewFrameBeforeAnimation:a3, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = [(BCCardViewController *)self whiteScrimView];
  [v4 removeFromSuperview];

  [(BCCardViewController *)self setWhiteScrimView:0];
}

- (BOOL)expanded
{
  v3 = [(BCCardViewController *)self currentState];
  v4 = +[BCCardSetState expandedState];
  if (v3 == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(BCCardViewController *)self configuration];
    if ([v5 cardsCanExpand])
    {
      v6 = [(BCCardViewController *)self currentState];
      v7 = +[BCCardSetState pushedState];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setCurrentState:(id)a3 updateStatusBarIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  currentState = self->_currentState;
  if (currentState != v7)
  {
    v14 = v7;
    [(BCCardSetState *)currentState willStopBeingCurrentStateCardViewController:self newState:v7 cardDate:self];
    v9 = self->_currentState;
    objc_storeStrong(&self->_currentState, a3);
    [(BCCardSetState *)self->_currentState didBecomeCurrentStateCardViewController:self previousState:v9 cardData:self];
    if (v4 && ![(BCCardSetState *)self->_currentState transitioning])
    {
      [(BCCardViewController *)self setNeedsStatusBarAppearanceUpdate];
      [(BCCardSetState *)self->_currentState cardViewControllerStatusBarBackgroundOpacity:self];
      v11 = v10;
      v12 = [BCStatusBarBackgroundController backgroundControllerForViewController:self];
      [v12 setOpacity:v11];
    }

    v13 = [(BCCardViewController *)self topContentViewController];
    [v13 didSetCurrentCardState:v14];
  }

  _objc_release_x1();
}

- (void)animationCompletedAtPosition:(int64_t)a3
{
  [(BCCardViewController *)self setAnimator:0];
  v5 = [(BCCardViewController *)self currentState];
  [v5 cardViewController:self animationCompletedAtPosition:a3 cardData:self];
}

- (void)_adjustContentInsetForViewController:(id)a3
{
  v20 = a3;
  [(BCCardViewController *)self contentInsetForContent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(BCCardViewController *)self view];
  v11 = [v10 window];
  v12 = [v11 windowScene];
  v13 = [v12 statusBarManager];
  [v13 statusBarHeight];
  v15 = v14;
  v16 = [(BCCardViewController *)self cardNavigationController];
  v17 = [v16 navigationBar];
  [v17 frame];
  v19 = v15 + v18;

  [(BCCardViewController *)self setContentInsetForContent:v19, v5, v7, v9];
  [(BCCardViewController *)self _updateViewController:v20 withContentInset:v19 unalteredContentInset:v5, v7, v9, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(BCCardViewController *)self dismissPanGestureRecognizer];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_5;
  }

  v7 = [(BCCardViewController *)self auxiliaryNavigationBarDismissPanGestureRecognizer];

  if (v7 == v4)
  {
LABEL_5:
    v9 = [(BCCardViewController *)self currentState];
    v8 = [v9 cardViewController:self dismissPanShouldBegin:v4 cardData:self];

    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCardViewController *)self dismissPanGestureRecognizer];
  if (v8 == v6)
  {
    v11 = 1;
  }

  else
  {
    v9 = [(BCCardViewController *)self auxiliaryNavigationBarDismissPanGestureRecognizer];

    if (v9 == v6)
    {
      v11 = 1;
      goto LABEL_7;
    }

    v8 = [v7 view];
    v10 = [(BCCardViewController *)self scrollView];
    v11 = v8 == v10;
  }

LABEL_7:
  return v11;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v6 = [(BCCardViewController *)self currentState];
  v5 = [(BCCardViewController *)self contentScrollView];
  [v6 cardViewController:self cardData:self scrollViewWillBeginDragging:v4 contentScrollView:v5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v10 = a3;
  if ([(BCCardViewController *)self settingContentOffset])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BCCardViewController *)self cardSetData];
    if ([v5 isInTransitionUpdateMode])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BCCardViewController *)self cardSetData];
      v4 = [v6 covered];
    }
  }

  if ([v10 isDragging] & 1) != 0 || (objc_msgSend(v10, "isDecelerating"))
  {
    v7 = 0;
  }

  else
  {
    v7 = ![(BCCardViewController *)self scrollingToTop];
  }

  if (((v4 | v7) & 1) == 0)
  {
    v8 = [(BCCardViewController *)self currentState];
    v9 = [(BCCardViewController *)self contentScrollView];
    [v8 cardViewController:self cardData:self scrollViewDidScroll:v10 contentScrollView:v9];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(BCCardViewController *)self currentState];
  v7 = [(BCCardViewController *)self contentScrollView];
  [v8 cardViewController:self cardData:self scrollViewDidEndDragging:v6 willDecelerate:v4 contentScrollView:v7];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v6 = [(BCCardViewController *)self currentState];
  v5 = [(BCCardViewController *)self contentScrollView];
  [v6 cardViewController:self cardData:self scrollViewDidEndDecelerating:v4 contentScrollView:v5];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v11 = [(BCCardViewController *)self currentState];
  v10 = [(BCCardViewController *)self contentScrollView];
  [v11 cardViewController:self cardData:self scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:v10 contentScrollView:{x, y}];
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = [(BCCardViewController *)self cardStackViewController];
  v5 = [v4 topCardSetViewController];
  v6 = [(BCCardViewController *)self cardSetViewController];

  if (v5 == v6)
  {
    [(BCCardViewController *)self setScrollingToTop:1];
  }

  return v5 == v6;
}

- (BOOL)prefersStatusBarBackgroundHidden
{
  v2 = [(BCCardViewController *)self _preferredTargetState];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 prefersStatusBarBackgroundHidden];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_preferredTargetState
{
  v3 = [(BCCardViewController *)self cardNavigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  v6 = [(BCCardViewController *)self cardNavigationController];
  v7 = [v6 transitionCoordinator];
  v8 = [v7 viewControllerForKey:UITransitionContextFromViewControllerKey];

  v9 = [(BCCardViewController *)self cardNavigationController];
  v10 = [v9 viewControllers];
  v11 = [v10 containsObject:v8];

  if (v11)
  {
    v12 = v5 == &dword_0 + 2;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v15 = [(BCCardViewController *)self configuration];
    if ([v15 cardsCanExpand])
    {
      +[BCCardSetState pushedState];
    }

    else
    {
      +[BCCardSetState pushedContractedState];
    }
    v14 = ;

    goto LABEL_19;
  }

  if (v5 == &dword_0 + 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_9;
  }

  v16 = [(BCCardViewController *)self configuration];
  v17 = [v16 cardsCanExpand];

  if (v17)
  {
    if (![(BCCardViewController *)self bottomCardWasExpanded])
    {
LABEL_9:
      v14 = 0;
      goto LABEL_19;
    }

    v18 = +[BCCardSetState expandedState];
  }

  else
  {
    v18 = +[BCCardSetState contractedState];
  }

  v14 = v18;
LABEL_19:

  return v14;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 transitionCoordinator];
  v10 = [(BCCardViewController *)self scrollView];
  [v10 _stopScrollingAndZoomingAnimations];

  v11 = [(BCCardViewController *)self contentScrollView];
  [v11 _stopScrollingAndZoomingAnimations];

  if (v9)
  {
    v12 = [v7 viewControllers];
    v31 = [v12 count];

    v13 = [v9 viewControllerForKey:UITransitionContextFromViewControllerKey];
    v14 = [v9 viewControllerForKey:UITransitionContextToViewControllerKey];
    v15 = [v7 viewControllers];
    v16 = [v15 containsObject:v13];

    v17 = [v7 viewControllers];
    v18 = [v17 firstObject];

    v30 = v16;
    if (v16)
    {
      v29 = v13 == v18;
      objc_opt_class();
      v19 = BUClassAndProtocolCast();
      [(BCCardViewController *)self _adjustContentInsetForViewController:v19, &OBJC_PROTOCOL___BCCardContent];

      v20 = 0;
    }

    else
    {
      v29 = 0;
      v20 = v14 == v18;
    }

    v21 = [v9 isCancelled];
    v22 = [(BCCardViewController *)self _preferredTargetState];
    [v22 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
    v24 = v23;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = sub_C7A0;
    v49[4] = sub_C7B0;
    v50 = 0;
    objc_initWeak(&location, self);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_C7B8;
    v39[3] = &unk_2C7E58;
    v39[4] = self;
    v45 = v24;
    v46 = v29;
    v40 = v7;
    v47 = v20;
    v25 = v13;
    v41 = v25;
    v26 = v14;
    v42 = v26;
    v44 = v49;
    v27 = v8;
    v43 = v27;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_CFB0;
    v32[3] = &unk_2C7E80;
    v35 = v49;
    v37 = v21;
    objc_copyWeak(v36, &location);
    v38 = v30;
    v32[4] = self;
    v33 = v27;
    v28 = v22;
    v34 = v28;
    v36[1] = v31;
    [v9 animateAlongsideTransition:v39 completion:v32];

    objc_destroyWeak(v36);
    objc_destroyWeak(&location);
    _Block_object_dispose(v49, 8);
  }

  else
  {
    sub_1E4734(self, v8);
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v23 = a3;
  v6 = [v23 transitionCoordinator];
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = [(BCCardViewController *)self configuration];
  if (![v7 cardsCanExpand])
  {

    goto LABEL_6;
  }

  v8 = [(BCCardViewController *)self expanded];

  if (!v8)
  {
LABEL_6:
    v9 = [BCCardSetState cardViewControllerContractedState:self];
    goto LABEL_7;
  }

  v9 = [BCCardSetState cardViewControllerExpandedState:self];
LABEL_7:
  v10 = v9;
  [(BCCardViewController *)self setCurrentState:v9];

  if (!self->_hasNotifiedScrollViewChangeForCurrentContentSV)
  {
    v11 = [(BCCardViewController *)self currentState];
    WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);
    [v11 cardViewController:self contentScrollViewDidChange:WeakRetained cardData:self];
  }

  v13 = [(BCCardViewController *)self currentState];
  [v13 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v15 = v14;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v15];
LABEL_10:
  v16 = [(BCCardViewController *)self cardSetViewController];
  v17 = [v16 edgePanGestureRecognizer];
  if (v17)
  {
    v18 = [v23 viewControllers];
    v19 = [v18 count] < 3;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(BCCardViewController *)self cardSetViewController];
  v21 = [v20 edgePanGestureRecognizer];
  [v21 setEnabled:v19];

  v22 = [v23 interactivePopGestureRecognizer];
  [v22 setEnabled:v19 ^ 1];
}

- (void)scrollViewDidChange
{
  v3 = [(BCCardViewController *)self topContentViewController];
  v4 = [v3 scrollView];
  [(BCCardViewController *)self setContentScrollView:v4];

  [(BCCardViewController *)self _updateCardFrames];
}

- (NSString)stringForReturnToRootBarItem
{
  v2 = [(BCCardViewController *)self presentingViewController];
  v3 = [v2 im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BCRootBarStringForReturnToRootBarItemProviding];

  v4 = [v3 bc_stringForReturnToRootBarItem];

  return v4;
}

- (BOOL)auxiliaryNavigationBarViewControllerCanCloseAsset
{
  v2 = self;
  v3 = [(BCCardViewController *)self delegate];
  LOBYTE(v2) = [v3 cardViewControllerCanCloseAsset:v2];

  return v2;
}

- (void)auxiliaryNavigationBarViewControllerDidTapCloseAllCards
{
  v3 = [(BCCardViewController *)self delegate];
  [v3 cardViewControllerDidTapCloseAllCards:self];
}

- (void)auxiliaryNavigationBarViewControllerDidTapCloseAsset
{
  v3 = [(BCCardViewController *)self delegate];
  [v3 cardViewControllerDidTapCloseAsset:self];
}

- (void)setIsBubbleTipPresented:(BOOL)a3
{
  v3 = a3;
  v4 = [(BCCardViewController *)self scrollView];
  [v4 setScrollEnabled:!v3];
}

- (CGPoint)oldContentOffset
{
  x = self->_oldContentOffset.x;
  y = self->_oldContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BCCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BCCardStackConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentInsetForContent
{
  top = self->_contentInsetForContent.top;
  left = self->_contentInsetForContent.left;
  bottom = self->_contentInsetForContent.bottom;
  right = self->_contentInsetForContent.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BCCardSetData)cardSetData
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSetData);

  return WeakRetained;
}

- (BCCardSetNavigationSource)cardSetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSetViewController);

  return WeakRetained;
}

- (UIScrollView)contentScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);

  return WeakRetained;
}

- (CGRect)viewFrameBeforeAnimation
{
  x = self->_viewFrameBeforeAnimation.origin.x;
  y = self->_viewFrameBeforeAnimation.origin.y;
  width = self->_viewFrameBeforeAnimation.size.width;
  height = self->_viewFrameBeforeAnimation.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)configureFeedProxyScrollView:(id)a3
{
  v5 = sub_1EEBD4();
  __chkstk_darwin(v5);
  v6 = a3;
  v7 = self;
  sub_1EF0C4();
  v8 = v6;
  sub_1EEB74();
  sub_1EF0D4();
}

- (void)configureCardTraitOverrides
{
  v3 = sub_1EEBD4();
  __chkstk_darwin(v3);
  v4 = self;
  sub_1EF0C4();
  sub_1EEB94();
  sub_1EF0D4();
  sub_1EF0C4();
  sub_1EEBC4();
  sub_1EF0D4();
}

- (void)updateNavBarAlphaForTransition:(double)a3
{
  v5 = sub_1EEBD4();
  __chkstk_darwin(v5);
  v6 = self;
  v7 = [(BCCardViewController *)v6 cardNavigationController];
  v8 = [(UINavigationController *)v7 navigationBar];

  [(UINavigationBar *)v8 setAlpha:a3];
  sub_1EF0C4();
  sub_1EEB84();
  sub_1EF0D4();
}

- (void)updateNavBarAlpha
{
  v2 = self;
  BCCardViewController.updateNavBarAlpha()();
}

@end