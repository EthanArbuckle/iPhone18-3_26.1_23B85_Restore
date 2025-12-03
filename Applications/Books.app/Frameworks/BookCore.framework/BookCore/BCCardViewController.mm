@interface BCCardViewController
- (BCCardContent)bottomContentViewController;
- (BCCardContent)topContentViewController;
- (BCCardSetData)cardSetData;
- (BCCardSetNavigationSource)cardSetViewController;
- (BCCardStackConfiguration)configuration;
- (BCCardStackTransitioningCardContent)transitioningCardContent;
- (BCCardViewController)initWithNavigationControllerClass:(Class)class cardSetData:(id)data distanceToExpand:(double)expand configuration:(id)configuration cardSetViewController:(id)controller delegate:(id)delegate;
- (BCCardViewControllerDelegate)delegate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)auxiliaryNavigationBarViewControllerCanCloseAsset;
- (BOOL)expanded;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isCurrentCard;
- (BOOL)itemPushedOnCard;
- (BOOL)prefersStatusBarBackgroundHidden;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGPoint)oldContentOffset;
- (CGRect)cardStackTransitioningCardFinalFrame;
- (CGRect)viewFrameBeforeAnimation;
- (NSString)stringForReturnToRootBarItem;
- (UIEdgeInsets)_scrollIndicatorInsetsForContentInset:(UIEdgeInsets)inset unalteredContentInset:(UIEdgeInsets)contentInset;
- (UIEdgeInsets)accessibilityVisibleContentInsetForCardViewControllerScrollView:(id)view;
- (UIEdgeInsets)cardContentViewController:(id)controller contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)contentInsetForContent;
- (UIScrollView)contentScrollView;
- (UIView)auxiliaryNavigationBarView;
- (UIView)auxiliaryNavigationBarViewForAnimation;
- (double)auxiliaryNavigationBarHeight;
- (double)cardStackTransitioningCardContentAlpha;
- (id)_preferredTargetState;
- (void)_adjustContentInsetForViewController:(id)controller;
- (void)_adjustContentMarginsForViewController:(id)controller isExpanded:(BOOL)expanded;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_applyContentInsetToContentViewController:(id)controller;
- (void)_configureAsExpanded;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_setAuxiliaryNavigationBarViewAlpha:(double)alpha;
- (void)_setCurrentState:(id)state updateStatusBarIfNeeded:(BOOL)needed;
- (void)_setupGripperMenu;
- (void)_updateCardFrames;
- (void)_updateContentWithContentInset;
- (void)_updateScrollViewContentInset;
- (void)_updateViewController:(double)controller scrollView:(double)view withContentInset:(double)inset unalteredContentInset:(double)contentInset contentInsetForScrollIndicatorInsets:(double)insets;
- (void)_updateViewController:(id)controller withContentInset:(UIEdgeInsets)inset unalteredContentInset:(UIEdgeInsets)contentInset;
- (void)accessibilityDidActivateGripperView:(id)view;
- (void)anchorAuxiliaryNavigationBarView:(id)view toView:(id)toView;
- (void)anchorGripperView:(id)view toView:(id)toView;
- (void)animationCompletedAtPosition:(int64_t)position;
- (void)attachAuxiliaryNavigationBarViewAnimated:(BOOL)animated;
- (void)auxiliaryNavigationBarViewControllerDidTapCloseAllCards;
- (void)auxiliaryNavigationBarViewControllerDidTapCloseAsset;
- (void)bcSafeAreaInsetsObservableViewController:(id)controller safeAreaInsetsDidChange:(UIEdgeInsets)change;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)cardContentViewController:(id)controller initializeManagerWithScrollView:(id)view;
- (void)cardSetPresentationTransitionDidComplete;
- (void)cardStackTransitioningCardFinalize:(BOOL)finalize;
- (void)cardStackTransitioningCardPrepare:(BOOL)prepare extraXOffsetForAnimation:(double)animation;
- (void)cardTapped:(id)tapped;
- (void)cardViewControllerScrollView:(id)view accessibilityWantsToScrollToOffset:(CGPoint)offset;
- (void)clearSavedContentOffsets;
- (void)configureCardTraitOverrides;
- (void)configureChromeForContracted;
- (void)configureChromeForExpanded;
- (void)configureFeedProxyScrollView:(id)view;
- (void)dealloc;
- (void)dismissPan:(id)pan;
- (void)goContracted;
- (void)goExpanded;
- (void)gripperTapped:(id)tapped;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForDismiss;
- (void)resumeAndRebuildForReason:(id)reason;
- (void)scrollToTop:(BOOL)top;
- (void)scrollViewDidChange;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewTapped:(id)tapped;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAnimator:(id)animator;
- (void)setCardStackTransitioningCardContentAlpha:(double)alpha;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentViewController:(id)controller;
- (void)setCornerRadius:(double)radius;
- (void)setIsBubbleTipPresented:(BOOL)presented;
- (void)setIsCurrentCard:(BOOL)card;
- (void)setScrimAlpha:(double)alpha animated:(BOOL)animated duration:(double)duration;
- (void)setupRootContentScrollView:(id)view;
- (void)suspendAndTeardownForReason:(id)reason;
- (void)updateContentSize:(CGSize)size;
- (void)updateNavBarAlpha;
- (void)updateNavBarAlphaForTransition:(double)transition;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BCCardViewController

- (BCCardViewController)initWithNavigationControllerClass:(Class)class cardSetData:(id)data distanceToExpand:(double)expand configuration:(id)configuration cardSetViewController:(id)controller delegate:(id)delegate
{
  dataCopy = data;
  configurationCopy = configuration;
  controllerCopy = controller;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = BCCardViewController;
  v18 = [(BCCardViewController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_navigationControllerClass, class);
    objc_storeWeak(&v19->_cardSetData, dataCopy);
    v19->_distanceToExpand = expand;
    objc_storeWeak(&v19->_configuration, configurationCopy);
    objc_storeWeak(&v19->_cardSetViewController, controllerCopy);
    objc_storeWeak(&v19->_delegate, delegateCopy);
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

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  viewState = [(BCCardViewController *)self viewState];

  if (viewState)
  {
    view = [(BCCardViewController *)self view];
    [view size];
    v7 = v6;
    v9 = v8;
    viewState2 = [(BCCardViewController *)self viewState];
    [viewState2 viewSize];
    v12 = v11;
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      viewState3 = [(BCCardViewController *)self viewState];
      [viewState3 cardScrollViewContentOffset];
      v17 = v16;
      v19 = v18;
      scrollView = [(BCCardViewController *)self scrollView];
      [scrollView setContentOffset:{v17, v19}];

      viewState4 = [(BCCardViewController *)self viewState];
      [viewState4 contentScrollViewContentOffset];
      v23 = v22;
      v25 = v24;
      contentScrollView = [(BCCardViewController *)self contentScrollView];
      [contentScrollView setContentOffset:{v23, v25}];
    }

    [(BCCardViewController *)self setViewState:0];
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView contentOffset];
  if (v5 != CGPointZero.x || v4 != CGPointZero.y)
  {
    viewState = [(BCCardViewController *)self viewState];

    if (viewState)
    {
      return;
    }

    v8 = [BCCardViewControllerViewState alloc];
    scrollView = [(BCCardViewController *)self scrollView];
    [scrollView contentOffset];
    v10 = v9;
    v12 = v11;
    contentScrollView = [(BCCardViewController *)self contentScrollView];
    [contentScrollView contentOffset];
    v15 = v14;
    v17 = v16;
    view = [(BCCardViewController *)self view];
    [view size];
    v21 = [(BCCardViewControllerViewState *)v8 initWithContentOffset:v10 contentScrollViewContentOffset:v12 viewSize:v15, v17, v19, v20];
    [(BCCardViewController *)self setViewState:v21];
  }
}

- (BOOL)isCurrentCard
{
  glassView = [(BCCardViewController *)self glassView];
  v3 = glassView == 0;

  return v3;
}

- (void)setIsCurrentCard:(BOOL)card
{
  cardCopy = card;
  glassView = [(BCCardViewController *)self glassView];

  if (cardCopy)
  {
    if (glassView)
    {
      glassView2 = [(BCCardViewController *)self glassView];
      [glassView2 removeFromSuperview];

      [(BCCardViewController *)self setGlassView:0];
    }
  }

  else if (!glassView)
  {
    v7 = [UIView alloc];
    cardView = [(BCCardViewController *)self cardView];
    [cardView bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setAutoresizingMask:18];
    cardView2 = [(BCCardViewController *)self cardView];
    [cardView2 addSubview:v9];

    cardView3 = [(BCCardViewController *)self cardView];
    [cardView3 bringSubviewToFront:v9];

    cardTapGestureRecognizer = [(BCCardViewController *)self cardTapGestureRecognizer];
    [v9 addGestureRecognizer:cardTapGestureRecognizer];

    [(BCCardViewController *)self setGlassView:v9];
  }

  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  [cardNavigationController setIsCurrentCard:cardCopy];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);
  [WeakRetained removeObserver:self forKeyPath:@"contentSize" context:off_33B7D0];

  v4 = objc_loadWeakRetained(&self->_contentScrollView);
  [v4 _removeScrollViewScrollObserver:self];

  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView _removeScrollViewScrollObserver:self];

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

- (void)setCornerRadius:(double)radius
{
  self->_cornerRadius = radius;
  configuration = [(BCCardViewController *)self configuration];
  [configuration cardContractedScale];
  v7 = radius / v6;

  blackScrimView = [(BCCardViewController *)self blackScrimView];
  [blackScrimView bc_applyCornerRadius:v7];

  whiteScrimView = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView bc_applyCornerRadius:v7];

  cardView = [(BCCardViewController *)self cardView];
  [cardView bc_applyCornerRadius:v7];

  contentContainerView = [(BCCardViewController *)self contentContainerView];
  [contentContainerView bc_applyCornerRadius:v7];

  [(BCCardViewController *)self _updateShadowPath];
}

- (void)setAnimator:(id)animator
{
  animatorCopy = animator;
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
  self->_animator = animatorCopy;
}

- (BOOL)itemPushedOnCard
{
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  childViewControllers = [cardNavigationController childViewControllers];
  v4 = [childViewControllers count] > 1;

  return v4;
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = BCCardViewController;
  [(BCCardViewController *)&v58 viewDidLoad];
  [(BCCardViewController *)self configureCardTraitOverrides];
  v3 = [BCCardViewControllerScrollView alloc];
  view = [(BCCardViewController *)self view];
  [view bounds];
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
  view2 = [(BCCardViewController *)self view];
  [view2 addSubview:v5];

  [(BCCardViewController *)self configureFeedProxyScrollView:v5];
  v7 = objc_alloc_init(UIView);
  [(BCCardViewController *)self setCardView:v7];

  cardView = [(BCCardViewController *)self cardView];
  [cardView setAutoresizingMask:18];

  v9 = +[UIColor clearColor];
  cardView2 = [(BCCardViewController *)self cardView];
  [cardView2 setBackgroundColor:v9];

  v11 = [UIColor colorWithWhite:1.0 alpha:0.1];
  cGColor = [v11 CGColor];
  cardView3 = [(BCCardViewController *)self cardView];
  layer = [cardView3 layer];
  [layer setBorderColor:cGColor];

  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;
  cardView4 = [(BCCardViewController *)self cardView];
  layer2 = [cardView4 layer];
  [layer2 setBorderWidth:v17];

  view3 = [(BCCardViewController *)self view];
  cardView5 = [(BCCardViewController *)self cardView];
  [view3 addSubview:cardView5];

  v22 = objc_alloc_init(UIView);
  [(BCCardViewController *)self setContentContainerView:v22];

  contentContainerView = [(BCCardViewController *)self contentContainerView];
  [contentContainerView setAutoresizingMask:18];

  cardView6 = [(BCCardViewController *)self cardView];
  contentContainerView2 = [(BCCardViewController *)self contentContainerView];
  [cardView6 addSubview:contentContainerView2];

  navigationControllerClass = self->_navigationControllerClass;
  if (!navigationControllerClass)
  {
    navigationControllerClass = UINavigationController;
  }

  v27 = objc_alloc_init(navigationControllerClass);
  [(BCCardViewController *)self setCardNavigationController:v27];

  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  [cardNavigationController setDelegate:self];

  cardNavigationController2 = [(BCCardViewController *)self cardNavigationController];
  [(BCCardViewController *)self addChildViewController:cardNavigationController2];

  cardNavigationController3 = [(BCCardViewController *)self cardNavigationController];
  view4 = [cardNavigationController3 view];
  [view4 setAutoresizingMask:2];

  contentContainerView3 = [(BCCardViewController *)self contentContainerView];
  cardNavigationController4 = [(BCCardViewController *)self cardNavigationController];
  view5 = [cardNavigationController4 view];
  [contentContainerView3 addSubview:view5];

  cardNavigationController5 = [(BCCardViewController *)self cardNavigationController];
  [cardNavigationController5 didMoveToParentViewController:self];

  [(BCCardViewController *)self _updateCardFrames];
  view6 = [(BCCardViewController *)self view];
  [view6 bounds];
  [(BCCardViewController *)self updateContentSize:v37, v38];

  contentContainerView4 = [(BCCardViewController *)self contentContainerView];
  [contentContainerView4 setClipsToBounds:1];

  [(BCCardViewController *)self setRoundedCorners:1];
  v40 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"dismissPan:"];
  [v40 setDelegate:self];
  [(BCCardViewController *)self setDismissPanGestureRecognizer:v40];
  cardNavigationController6 = [(BCCardViewController *)self cardNavigationController];
  navigationBar = [cardNavigationController6 navigationBar];
  [navigationBar addGestureRecognizer:v40];

  if (!self->_uppEnabled)
  {
    v43 = [BCCardGripperView cardGripperViewWithStyle:0];
    gripperView = self->_gripperView;
    self->_gripperView = v43;

    [(BCCardGripperView *)self->_gripperView setAlpha:0.0];
    layer3 = [(BCCardGripperView *)self->_gripperView layer];
    [layer3 setZPosition:1000.0];

    [(BCCardGripperView *)self->_gripperView _accessibilitySetSortPriority:999];
    gripperView = [(BCCardViewController *)self gripperView];
    [gripperView setAccessibilityDelegate:self];

    cardView7 = [(BCCardViewController *)self cardView];
    gripperView2 = [(BCCardViewController *)self gripperView];
    [cardView7 addSubview:gripperView2];

    gripperView3 = [(BCCardViewController *)self gripperView];
    cardNavigationController7 = [(BCCardViewController *)self cardNavigationController];
    view7 = [cardNavigationController7 view];
    [(BCCardViewController *)self anchorGripperView:gripperView3 toView:view7];

    v52 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"gripperTapped:"];
    gripperView4 = [(BCCardViewController *)self gripperView];
    [gripperView4 addGestureRecognizer:v52];

    [(BCCardViewController *)self _setupGripperMenu];
  }

  v54 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"scrollViewTapped:"];
  [v54 setDelegate:self];
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView addGestureRecognizer:v54];

  v56 = +[BCCardSetState contractedState];
  [(BCCardViewController *)self _setCurrentState:v56 updateStatusBarIfNeeded:0];

  scrollView2 = [(BCCardViewController *)self scrollView];
  [scrollView2 _addScrollViewScrollObserver:self];

  [(BCCardViewController *)self _updateFromMetrics];
}

- (void)anchorGripperView:(id)view toView:(id)toView
{
  toViewCopy = toView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  configuration = [(BCCardViewController *)self configuration];
  [configuration auxiliaryNavigationBarHorizontalInset];
  v10 = v9;

  configuration2 = [(BCCardViewController *)self configuration];
  [configuration2 auxiliaryNavigationBarVerticalInset];
  v13 = v12;

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [toViewCopy topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [toViewCopy trailingAnchor];

  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];

  gripperView = [(BCCardViewController *)self gripperView];

  if (gripperView == viewCopy)
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
    auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
    view = [auxiliaryNavigationBarViewController view];
  }

  else
  {
    view = [(BCCardViewController *)self gripperView];
  }

  return view;
}

- (UIView)auxiliaryNavigationBarViewForAnimation
{
  auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  animatableCopyView = [auxiliaryNavigationBarViewController animatableCopyView];

  return animatableCopyView;
}

- (void)attachAuxiliaryNavigationBarViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  v6 = auxiliaryNavigationBarViewController;
  if (auxiliaryNavigationBarViewController)
  {
    parentViewController = [auxiliaryNavigationBarViewController parentViewController];

    if (!parentViewController)
    {
      [(BCCardViewController *)self addChildViewController:v6];
      contentContainerView = [(BCCardViewController *)self contentContainerView];
      view = [v6 view];
      [contentContainerView addSubview:view];

      [v6 didMoveToParentViewController:self];
      view2 = [v6 view];
      cardNavigationController = [(BCCardViewController *)self cardNavigationController];
      view3 = [cardNavigationController view];
      [(BCCardViewController *)self anchorAuxiliaryNavigationBarView:view2 toView:view3];

      if (animatedCopy)
      {
        view4 = [v6 view];
        [view4 alpha];
        v15 = v14;

        if (v15 != 0.0)
        {
          view5 = [v6 view];
          [view5 alpha];
          v18 = v17;

          v19 = +[UIViewPropertyAnimator bc_swiftUIDefault];
          view6 = [v6 view];
          [view6 setAlpha:0.0];

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

  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  navigationBar = [cardNavigationController navigationBar];
  [navigationBar defaultHeightForMetrics:0];
  v7 = v6;

  return v7;
}

- (void)anchorAuxiliaryNavigationBarView:(id)view toView:(id)toView
{
  toViewCopy = toView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [toViewCopy topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];

  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [toViewCopy leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [toViewCopy trailingAnchor];

  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  auxiliaryNavigationBarView = [(BCCardViewController *)self auxiliaryNavigationBarView];

  if (auxiliaryNavigationBarView == viewCopy)
  {
    [(BCCardViewController *)self setAuxiliaryNavigationBarTopConstraint:v10];
  }

  v19[0] = v10;
  v19[1] = v13;
  v19[2] = v16;
  v18 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_setAuxiliaryNavigationBarViewAlpha:(double)alpha
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
  [v4 setAlpha:alpha];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = BCCardViewController;
  [(BCCardViewController *)&v8 viewWillAppear:appear];
  cardSetData = [(BCCardViewController *)self cardSetData];
  if ([cardSetData covered])
  {

LABEL_5:
    auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
    [auxiliaryNavigationBarViewController setIsParentCardOccluded:1];
    goto LABEL_6;
  }

  isCurrentCard = [(BCCardViewController *)self isCurrentCard];

  if (!isCurrentCard)
  {
    goto LABEL_5;
  }

  auxiliaryNavigationBarViewController2 = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [auxiliaryNavigationBarViewController2 setIsParentCardOccluded:0];

  auxiliaryNavigationBarViewController = [(BCCardViewController *)self topContentViewController];
  [auxiliaryNavigationBarViewController didBecomeVisibleContentScrollView];
LABEL_6:
}

- (void)bc_analyticsVisibilityDidAppear
{
  v7.receiver = self;
  v7.super_class = BCCardViewController;
  [(BCCardViewController *)&v7 bc_analyticsVisibilityDidAppear];
  cardSetData = [(BCCardViewController *)self cardSetData];
  if ([cardSetData covered])
  {
  }

  else
  {
    isCurrentCard = [(BCCardViewController *)self isCurrentCard];

    if (isCurrentCard)
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

  auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [auxiliaryNavigationBarViewController setIsParentCardOccluded:1];
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v4.receiver = self;
  v4.super_class = BCCardViewController;
  [(BCCardViewController *)&v4 bc_analyticsVisibilityDidDisappear];
  auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [auxiliaryNavigationBarViewController setIsParentCardOccluded:1];
}

- (void)scrollViewTapped:(id)tapped
{
  if ([tapped state] == &dword_0 + 3)
  {
    delegate = [(BCCardViewController *)self delegate];
    [delegate cardViewControllerDidTapScrollView:self];
  }
}

- (void)cardTapped:(id)tapped
{
  if ([tapped state] == &dword_0 + 3)
  {
    delegate = [(BCCardViewController *)self delegate];
    [delegate cardViewControllerDidTapCard:self];
  }
}

- (void)dismissPan:(id)pan
{
  panCopy = pan;
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self dismissPan:panCopy cardData:self];
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

- (void)gripperTapped:(id)tapped
{
  if ([tapped state] == &dword_0 + 3)
  {
    cardStackViewController = [(BCCardViewController *)self cardStackViewController];
    [cardStackViewController popCardsAnimated:1 reason:1];
  }
}

- (BOOL)accessibilityPerformEscape
{
  cardStackViewController = [(BCCardViewController *)self cardStackViewController];
  [cardStackViewController popCardsAnimated:1 reason:0];

  return 1;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCCardViewController;
  [(BCCardViewController *)&v3 viewWillLayoutSubviews];
  [(BCCardViewController *)self _updateCardFrames];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = BCCardViewController;
  coordinatorCopy = coordinator;
  [(BCCardViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)_updateCardFrames
{
  currentState = [(BCCardViewController *)self currentState];

  if (currentState)
  {
    if ([(BCCardViewController *)self dismissing])
    {
      goto LABEL_6;
    }

    currentState2 = [(BCCardViewController *)self currentState];
  }

  else
  {
    currentState2 = +[BCCardSetState contractedState];
  }

  v5 = currentState2;
  [currentState2 cardViewControllerUpdateCardSize:self];

LABEL_6:
  cardView = [(BCCardViewController *)self cardView];
  [cardView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  contentContainerView = [(BCCardViewController *)self contentContainerView];
  [contentContainerView setFrame:{v8, v10, v12, v14}];

  [(BCCardViewController *)self _updateShadowPath];
}

- (void)updateContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self updateContentSize:{width, height}];
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollView = [(BCCardViewController *)self scrollView];
  if (scrollView == scrollCopy)
  {
  }

  else
  {
    contentScrollView = [(BCCardViewController *)self contentScrollView];

    if (contentScrollView != scrollCopy)
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
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self positionAuxiliaryNavigationBarView:v6 cardDate:self];

  if (self->_uppEnabled)
  {
    auxiliaryNavigationBarView = [(BCCardViewController *)self auxiliaryNavigationBarView];
    [auxiliaryNavigationBarView alpha];
    if (v9 != 1.0)
    {
LABEL_12:

      goto LABEL_13;
    }

    cardNavigationController = [(BCCardViewController *)self cardNavigationController];
    viewControllers = [cardNavigationController viewControllers];
    v12 = [viewControllers count];

    if (v12 == &dword_0 + 1)
    {
      auxiliaryNavigationBarView = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
      [auxiliaryNavigationBarView cardViewController:self positionAuxiliaryNavigationBarBackgroundWithData:self];
      goto LABEL_12;
    }
  }

LABEL_13:

LABEL_14:
  currentState2 = [(BCCardViewController *)self currentState];
  v14 = [currentState2 ignoreContentOffsetForCardViewController:self];

  if (v14)
  {
    goto LABEL_25;
  }

  contentScrollView2 = [(BCCardViewController *)self contentScrollView];

  if (contentScrollView2 == scrollCopy)
  {
    currentState3 = [(BCCardViewController *)self currentState];
    contentScrollView3 = [(BCCardViewController *)self contentScrollView];
    [currentState3 cardViewController:self cardScrollViewOffsetForContentScrollView:contentScrollView3 cardData:self];
    v22 = v21;

    scrollView2 = [(BCCardViewController *)self scrollView];
    [scrollView2 contentOffset];
    v25 = v24;
    v27 = v26;

    v28 = +[UIScreen mainScreen];
    [v28 scale];
    v30 = 1.0 / v29;

    if (vabdd_f64(v22, v27) < v30)
    {
      goto LABEL_25;
    }

    scrollView3 = [(BCCardViewController *)self scrollView];
    [scrollView3 setContentOffset:{v25, v22}];

    goto LABEL_22;
  }

  scrollView4 = [(BCCardViewController *)self scrollView];
  if (scrollView4 != scrollCopy)
  {
LABEL_24:

    goto LABEL_25;
  }

  scrollView5 = [(BCCardViewController *)self scrollView];
  if ([scrollView5 isDecelerating])
  {
LABEL_23:

    goto LABEL_24;
  }

  scrollView6 = [(BCCardViewController *)self scrollView];
  if ([scrollView6 isDragging])
  {

    goto LABEL_23;
  }

  cardSetData = [(BCCardViewController *)self cardSetData];
  isInTransitionUpdateMode = [cardSetData isInTransitionUpdateMode];

  if ((isInTransitionUpdateMode & 1) == 0)
  {
LABEL_22:
    scrollView4 = [(BCCardViewController *)self currentState];
    scrollView5 = [(BCCardViewController *)self contentScrollView];
    [scrollView4 cardViewController:self repositionOffsetsWithContentScrollView:scrollView5 cardData:self];
    goto LABEL_23;
  }

LABEL_25:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  if (off_33B7D0 == context)
  {
    if ([path isEqualToString:@"contentSize"])
    {
      contentScrollView = [(BCCardViewController *)self contentScrollView];

      if (contentScrollView == objectCopy)
      {
        objc_opt_class();
        v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
        v14 = BUDynamicCast();

        [v14 CGSizeValue];
        v16 = v15;
        v18 = v17;
        objc_opt_class();
        v19 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
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
    [(BCCardViewController *)&v25 observeValueForKeyPath:path ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BCCardContent)topContentViewController
{
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();

  return v4;
}

- (BCCardContent)bottomContentViewController
{
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  firstObject = [viewControllers firstObject];
  objc_opt_class();
  v5 = BUClassAndProtocolCast();

  return v5;
}

- (void)_applyContentInsetToContentViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    cardNavigationController = [(BCCardViewController *)self cardNavigationController];
    viewControllers = [cardNavigationController viewControllers];
    firstObject = [viewControllers firstObject];
    if (firstObject == controllerCopy)
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

    [(BCCardViewController *)self _updateViewController:controllerCopy withContentInset:v11 unalteredContentInset:v12, v13, v14, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
  }
}

- (void)_updateContentWithContentInset
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];

  v5 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        objc_opt_class();
        v9 = BUClassAndProtocolCast();
        [(BCCardViewController *)self _applyContentInsetToContentViewController:v9, &OBJC_PROTOCOL___BCCardContent];

        ++v8;
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  left = inset.left;
  self->_unalteredContentInset = inset;
  right = inset.right;
  bottom = inset.bottom;
  configuration = [(BCCardViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if ((cardsCanExpand & 1) == 0)
  {
    cardSetViewController = [(BCCardViewController *)self cardSetViewController];
    view = [cardSetViewController view];
    cardSetViewController2 = [(BCCardViewController *)self cardSetViewController];
    view2 = [cardSetViewController2 view];
    [view2 bounds];
    [view convertRect:0 toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v29.origin.x = v11;
    v29.origin.y = v13;
    v29.size.width = v15;
    v29.size.height = v17;
    MaxY = CGRectGetMaxY(v29);
    cardView = [(BCCardViewController *)self cardView];
    [cardView frame];
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

- (UIEdgeInsets)_scrollIndicatorInsetsForContentInset:(UIEdgeInsets)inset unalteredContentInset:(UIEdgeInsets)contentInset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  configuration = [(BCCardViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if ((cardsCanExpand & 1) == 0)
  {
    cardSetViewController = [(BCCardViewController *)self cardSetViewController];
    [cardSetViewController scaledContractedOffset];

    if (top == 0.0)
    {
      configuration2 = [(BCCardViewController *)self configuration];
      [configuration2 cardCornerRadius];
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

- (void)_updateViewController:(id)controller withContentInset:(UIEdgeInsets)inset unalteredContentInset:(UIEdgeInsets)contentInset
{
  right = contentInset.right;
  bottom = contentInset.bottom;
  left = contentInset.left;
  top = contentInset.top;
  v9 = inset.right;
  v10 = inset.bottom;
  v11 = inset.left;
  v12 = inset.top;
  controllerCopy = controller;
  scrollView = [controllerCopy scrollView];
  [(BCCardViewController *)self _updateViewController:controllerCopy scrollView:scrollView withContentInset:v12 unalteredContentInset:v11 contentInsetForScrollIndicatorInsets:v10, v9, top, left, bottom, right, *&v12, *&v11, *&v10, *&v9];
}

- (void)_updateViewController:(double)controller scrollView:(double)view withContentInset:(double)inset unalteredContentInset:(double)contentInset contentInsetForScrollIndicatorInsets:(double)insets
{
  v46 = a11;
  v26 = a12;
  if ([v46 prefersAdditionalSafeAreaInsetsForInsetting])
  {
    v27 = view - BCCardAdditionalBottomInset();
    [v46 additionalSafeAreaInsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    viewIfLoaded = [v46 viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
    v38 = v37 - v33;

    [v46 setAdditionalSafeAreaInsets:{v29, v31, v27 - v38, v35}];
  }

  else
  {
    scrollView = [self scrollView];
    v40 = scrollView;
    if (scrollView == v26)
    {
    }

    else
    {
      contentInsetAdjustmentBehavior = [v26 contentInsetAdjustmentBehavior];

      if (contentInsetAdjustmentBehavior != &dword_0 + 2)
      {
        [v26 setContentInsetAdjustmentBehavior:2];
      }
    }

    [v26 setContentInset:{a2, controller, view, inset}];
    [self _scrollIndicatorInsetsForContentInset:a13 unalteredContentInset:{a14, a15, a16, contentInset, insets, a8, a9}];
    [v26 setScrollIndicatorInsets:?];
  }
}

- (void)_updateScrollViewContentInset
{
  currentState = [(BCCardViewController *)self currentState];
  if ([currentState useContentInsetForContentForScrollIndicatorInsets])
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

  scrollView = [(BCCardViewController *)self scrollView];
  [(BCCardViewController *)self contentInset];
  [(BCCardViewController *)self _updateViewController:0 scrollView:scrollView withContentInset:v8 unalteredContentInset:v9 contentInsetForScrollIndicatorInsets:v10, v11];
}

- (void)setupRootContentScrollView:(id)view
{
  viewCopy = view;
  [viewCopy setAlwaysBounceVertical:1];
  [(BCCardViewController *)self setContentScrollView:viewCopy];
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v14 = controllerCopy;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  [cardNavigationController setViewControllers:v6];

  if (v5)
  {
  }

  [(BCCardViewController *)self _applyContentInsetToContentViewController:v5];
  scrollView = [v5 scrollView];
  [(BCCardViewController *)self setupRootContentScrollView:scrollView];
  cardNavigationController2 = [(BCCardViewController *)self cardNavigationController];
  [cardNavigationController2 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];

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
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  v3 = [cardNavigationController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCardContent];

  return v3;
}

- (void)setScrimAlpha:(double)alpha animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  blackScrimView = [(BCCardViewController *)self blackScrimView];

  if (blackScrimView)
  {
    if (animatedCopy)
    {
LABEL_3:
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_A0C0;
      v24[3] = &unk_2C7D18;
      v24[4] = self;
      *&v24[5] = alpha;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_A114;
      v23[3] = &unk_2C7E08;
      *&v23[5] = alpha;
      v23[4] = self;
      [UIView animateWithDuration:v24 animations:v23 completion:duration];
      return;
    }
  }

  else
  {
    if (alpha == 0.0)
    {
      return;
    }

    v10 = [UIView alloc];
    cardView = [(BCCardViewController *)self cardView];
    [cardView bounds];
    v12 = [v10 initWithFrame:?];
    [(BCCardViewController *)self setBlackScrimView:v12];

    blackScrimView2 = [(BCCardViewController *)self blackScrimView];
    [blackScrimView2 setAutoresizingMask:18];

    cardView2 = [(BCCardViewController *)self cardView];
    blackScrimView3 = [(BCCardViewController *)self blackScrimView];
    [cardView2 addSubview:blackScrimView3];

    v16 = +[UIColor blackColor];
    blackScrimView4 = [(BCCardViewController *)self blackScrimView];
    [blackScrimView4 setBackgroundColor:v16];

    blackScrimView5 = [(BCCardViewController *)self blackScrimView];
    [blackScrimView5 setAlpha:0.0];

    blackScrimView6 = [(BCCardViewController *)self blackScrimView];
    contentContainerView = [(BCCardViewController *)self contentContainerView];
    [blackScrimView6 bc_applyCornerRadiusFromView:contentContainerView];

    if (animatedCopy)
    {
      goto LABEL_3;
    }
  }

  blackScrimView7 = [(BCCardViewController *)self blackScrimView];
  [blackScrimView7 setAlpha:alpha];

  if (alpha == 0.0)
  {
    blackScrimView8 = [(BCCardViewController *)self blackScrimView];
    [blackScrimView8 removeFromSuperview];

    [(BCCardViewController *)self setBlackScrimView:0];
  }
}

- (void)_configureAsExpanded
{
  [(BCCardViewController *)self setRoundedCorners:0];
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  [(BCCardViewController *)self distanceToExpand];
  v7 = v6;
  scrollView2 = [(BCCardViewController *)self scrollView];
  [scrollView2 adjustedContentInset];
  v10 = v7 - v9;
  scrollView3 = [(BCCardViewController *)self scrollView];
  [scrollView3 setContentOffset:{v5, v10}];

  v12 = +[BCCardSetState expandedState];
  [(BCCardViewController *)self setCurrentState:v12];

  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
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
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  [(BCCardViewController *)self _adjustContentMarginsForViewController:topViewController isExpanded:1];
}

- (void)configureChromeForContracted
{
  [(BCCardViewController *)self setRoundedCorners:1];
  v3 = [BCCardSetState cardViewControllerExpandedState:self];
  [v3 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v5 = v4;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v5];
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  [(BCCardViewController *)self _adjustContentMarginsForViewController:topViewController isExpanded:0];
}

- (void)_adjustContentMarginsForViewController:(id)controller isExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  controllerCopy = controller;
  if (isPad())
  {
    navigationItem = [controllerCopy navigationItem];
    [navigationItem _minimumContentMargins];
    v8 = v7;
    v10 = v9;

    v11 = 0.0;
    v12 = 0.0;
    if (expandedCopy)
    {
      cardStackViewController = [(BCCardViewController *)self cardStackViewController];
      [cardStackViewController safeAreaInsetsFromWindowCorners];
      v15 = v14;
      v17 = v16;

      view = [(BCCardViewController *)self view];
      effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

      if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
      {
        v20 = v17;
      }

      else
      {
        v20 = v15;
      }

      if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
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

    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 _setMinimumContentMargins:{v8, v12, v10, v11}];
  }
}

- (void)goExpanded
{
  currentState = [(BCCardViewController *)self currentState];
  contentScrollView = +[BCCardSetState expandedState];
  if (currentState != contentScrollView)
  {
    currentState2 = [(BCCardViewController *)self currentState];
    v5 = +[BCCardSetState pushedState];

    if (currentState2 == v5)
    {
      return;
    }

    cardSetViewController = [(BCCardViewController *)self cardSetViewController];
    currentCardViewController = [cardSetViewController currentCardViewController];

    if (currentCardViewController != self)
    {

      [(BCCardViewController *)self _configureAsExpanded];
      return;
    }

    v8 = +[BCCardSetState expandingState];
    [(BCCardViewController *)self setCurrentState:v8];

    animator = [(BCCardViewController *)self animator];
    [animator setFractionComplete:1.0];

    cardNavigationController = [(BCCardViewController *)self cardNavigationController];
    viewControllers = [cardNavigationController viewControllers];
    v12 = [viewControllers count];

    if (v12 == &dword_0 + 1)
    {
      scrollView = [(BCCardViewController *)self scrollView];
      [scrollView contentOffset];
      v15 = v14;
      cardSetViewController2 = [(BCCardViewController *)self cardSetViewController];
      [cardSetViewController2 scaledContractedOffset];
      v18 = v17;
      configuration = [(BCCardViewController *)self configuration];
      [configuration cardExpandedTopOffset];
      v21 = v18 - v20;
      scrollView2 = [(BCCardViewController *)self scrollView];
      [scrollView2 adjustedContentInset];
      v24 = v21 - v23;
      scrollView3 = [(BCCardViewController *)self scrollView];
      [scrollView3 setContentOffset:{v15, v24}];
    }

    animator2 = [(BCCardViewController *)self animator];
    [animator2 stopAnimation:0];

    animator3 = [(BCCardViewController *)self animator];
    [animator3 finishAnimationAtPosition:0];

    currentState = [(BCCardViewController *)self currentState];
    contentScrollView = [(BCCardViewController *)self contentScrollView];
    [currentState cardViewController:self repositionOffsetsWithContentScrollView:contentScrollView cardData:self];
  }
}

- (void)goContracted
{
  currentState = [(BCCardViewController *)self currentState];
  v4 = +[BCCardSetState contractedState];
  v5 = v4;
  if (currentState == v4)
  {

LABEL_6:
    configuration = [(BCCardViewController *)self configuration];
    cardsCanExpand = [configuration cardsCanExpand];

    if (!cardsCanExpand)
    {
      return;
    }

    goto LABEL_7;
  }

  currentState2 = [(BCCardViewController *)self currentState];
  v7 = +[BCCardSetState pushedContractedState];

  if (currentState2 == v7)
  {
    goto LABEL_6;
  }

  y = CGPointZero.y;
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView setContentOffset:{CGPointZero.x, y}];

  v10 = +[BCCardSetState contractingState];
  [(BCCardViewController *)self setCurrentState:v10];

  animator = [(BCCardViewController *)self animator];
  [animator setFractionComplete:1.0];

  animator2 = [(BCCardViewController *)self animator];
  [animator2 stopAnimation:0];

  animator3 = [(BCCardViewController *)self animator];
  [animator3 finishAnimationAtPosition:0];

  configuration2 = [(BCCardViewController *)self configuration];
  cardsCanExpand2 = [configuration2 cardsCanExpand];

  if ((cardsCanExpand2 & 1) == 0)
  {
    return;
  }

LABEL_7:
  [(BCCardViewController *)self clearSavedContentOffsets];
  scrollView2 = [(BCCardViewController *)self scrollView];
  [scrollView2 contentOffset];
  v19 = v18;
  scrollView3 = [(BCCardViewController *)self scrollView];
  [scrollView3 adjustedContentInset];
  v22 = -v21;
  scrollView4 = [(BCCardViewController *)self scrollView];
  [scrollView4 setContentOffset:{v19, v22}];
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
    bottomContentViewController = [(BCCardViewController *)self bottomContentViewController];
    [bottomContentViewController cardPresentationTransitionDidComplete:{-[BCCardViewController isCurrentCard](self, "isCurrentCard")}];
  }
}

- (void)suspendAndTeardownForReason:(id)reason
{
  reasonCopy = reason;
  [(BCCardViewController *)self setContentScrollView:0];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v5 = [(BCCardViewController *)self cardNavigationController:0];
  viewControllers = [v5 viewControllers];

  v7 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v11 = BUProtocolCast();
        v12 = v11;
        if (v11)
        {
          [v11 suspendAndTeardownForReason:reasonCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)clearSavedContentOffsets
{
  y = CGPointZero.y;
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView setContentOffset:{CGPointZero.x, y}];

  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v5 = [(BCCardViewController *)self cardNavigationController:0];
  viewControllers = [v5 viewControllers];

  v7 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v11 = BUProtocolCast();
        [v11 clearSuspendedViewState];

        ++v10;
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)resumeAndRebuildForReason:(id)reason
{
  reasonCopy = reason;
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;
  scrollView2 = [(BCCardViewController *)self scrollView];
  [scrollView2 adjustedContentInset];
  v10 = v7 + v9;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];

  v13 = [viewControllers countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v17 = BUProtocolCast();
        v18 = [v17 resumeAndRebuildForReason:reasonCopy];
      }

      v14 = [viewControllers countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  scrollView3 = [(BCCardViewController *)self scrollView];
  [scrollView3 contentOffset];
  v21 = v20;

  scrollView4 = [(BCCardViewController *)self scrollView];
  [scrollView4 adjustedContentInset];
  v24 = v10 - v23;

  scrollView5 = [(BCCardViewController *)self scrollView];
  [scrollView5 setContentOffset:{v21, v24}];

  cardNavigationController2 = [(BCCardViewController *)self cardNavigationController];
  viewControllers2 = [cardNavigationController2 viewControllers];
  firstObject = [viewControllers2 firstObject];
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

  cardNavigationController3 = [(BCCardViewController *)self cardNavigationController];
  viewControllers3 = [cardNavigationController3 viewControllers];
  v32 = [viewControllers3 count];

  if (v32 >= 2)
  {
    cardNavigationController4 = [(BCCardViewController *)self cardNavigationController];
    viewControllers4 = [cardNavigationController4 viewControllers];
    lastObject = [viewControllers4 lastObject];
    objc_opt_class();
    v36 = BUClassAndProtocolCast();

    if (v36)
    {
      scrollView6 = [v36 scrollView];
      [(BCCardViewController *)self setContentScrollView:scrollView6];

      [(BCCardViewController *)self _adjustContentInsetForViewController:v36];
      v29 = v36;
    }

    else
    {
      v29 = 0;
    }
  }
}

- (void)scrollToTop:(BOOL)top
{
  topCopy = top;
  topContentViewController = [(BCCardViewController *)self topContentViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    topContentViewController2 = [(BCCardViewController *)self topContentViewController];
    [topContentViewController2 scrollToTopAnimated:topCopy];
  }

  else
  {
    topContentViewController2 = [(BCCardViewController *)self currentState];
    [topContentViewController2 cardViewController:self scrollToTopAnimated:topCopy cardData:self];
  }
}

- (void)prepareForDismiss
{
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self willDismissWithCardData:self];
}

- (void)cardViewControllerScrollView:(id)view accessibilityWantsToScrollToOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self accessibilityWantsToScrollToOffset:self cardData:{x, y}];
}

- (UIEdgeInsets)accessibilityVisibleContentInsetForCardViewControllerScrollView:(id)view
{
  [(BCCardViewController *)self contentInsetForContent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  configuration = [(BCCardViewController *)self configuration];
  cardsCanExpand = [configuration cardsCanExpand];

  if ((cardsCanExpand & 1) == 0)
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
    scrollView = [(BCCardViewController *)self scrollView];
    superview = [scrollView superview];
    [v14 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    superview2 = [v14 superview];
    [superview convertRect:superview2 fromView:{v18, v20, v22, v24}];
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

- (void)accessibilityDidActivateGripperView:(id)view
{
  delegate = [(BCCardViewController *)self delegate];
  [delegate cardViewControllerDidTapScrollView:self];
}

- (void)cardContentViewController:(id)controller initializeManagerWithScrollView:(id)view
{
  viewCopy = view;
  [(BCCardViewController *)self contentInset];
  [viewCopy safeAreaInsets];
  UIEdgeInsetsReplace();
  [(BCCardViewController *)self setContentInsetForContent:?];
  [(BCCardViewController *)self setupRootContentScrollView:viewCopy];
}

- (UIEdgeInsets)cardContentViewController:(id)controller contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets
{
  [(BCCardViewController *)self contentInsetForContent:controller];
  auxiliaryNavigationBarViewController = [(BCCardViewController *)self auxiliaryNavigationBarViewController];
  [auxiliaryNavigationBarViewController backgroundSafeAreaInsets];
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

- (void)bcSafeAreaInsetsObservableViewController:(id)controller safeAreaInsetsDidChange:(UIEdgeInsets)change
{
  [(BCCardViewController *)self contentInset];
  UIEdgeInsetsReplace();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(BCCardViewController *)self setContentInsetForContent:?];
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v15 = [viewControllers count];

  if (v15 >= 2)
  {
    topContentViewController = [(BCCardViewController *)self topContentViewController];
    [(BCCardViewController *)self _updateViewController:topContentViewController withContentInset:v6 unalteredContentInset:v8, v10, v12, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
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
  whiteScrimView = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView alpha];
  v4 = v3;

  return v4;
}

- (void)setCardStackTransitioningCardContentAlpha:(double)alpha
{
  whiteScrimView = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView setAlpha:alpha];
}

- (void)cardStackTransitioningCardPrepare:(BOOL)prepare extraXOffsetForAnimation:(double)animation
{
  cardView = [(BCCardViewController *)self cardView];
  [cardView frame];
  [(BCCardViewController *)self setViewFrameBeforeAnimation:?];

  [(BCCardViewController *)self setExtraXOffsetForAnimation:animation];
  v7 = [UIView alloc];
  cardView2 = [(BCCardViewController *)self cardView];
  [cardView2 bounds];
  v9 = [v7 initWithFrame:?];
  [(BCCardViewController *)self setWhiteScrimView:v9];

  cardView3 = [(BCCardViewController *)self cardView];
  whiteScrimView = [(BCCardViewController *)self whiteScrimView];
  [cardView3 addSubview:whiteScrimView];

  whiteScrimView2 = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView2 setAlpha:0.0];

  v13 = +[UIColor bc_booksBackground];
  whiteScrimView3 = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView3 setBackgroundColor:v13];

  whiteScrimView4 = [(BCCardViewController *)self whiteScrimView];
  contentContainerView = [(BCCardViewController *)self contentContainerView];
  [whiteScrimView4 bc_applyCornerRadiusFromView:contentContainerView];
}

- (void)cardStackTransitioningCardFinalize:(BOOL)finalize
{
  [(BCCardViewController *)self setViewFrameBeforeAnimation:finalize, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  whiteScrimView = [(BCCardViewController *)self whiteScrimView];
  [whiteScrimView removeFromSuperview];

  [(BCCardViewController *)self setWhiteScrimView:0];
}

- (BOOL)expanded
{
  currentState = [(BCCardViewController *)self currentState];
  v4 = +[BCCardSetState expandedState];
  if (currentState == v4)
  {
    v8 = 1;
  }

  else
  {
    configuration = [(BCCardViewController *)self configuration];
    if ([configuration cardsCanExpand])
    {
      currentState2 = [(BCCardViewController *)self currentState];
      v7 = +[BCCardSetState pushedState];
      v8 = currentState2 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setCurrentState:(id)state updateStatusBarIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  stateCopy = state;
  currentState = self->_currentState;
  if (currentState != stateCopy)
  {
    v14 = stateCopy;
    [(BCCardSetState *)currentState willStopBeingCurrentStateCardViewController:self newState:stateCopy cardDate:self];
    v9 = self->_currentState;
    objc_storeStrong(&self->_currentState, state);
    [(BCCardSetState *)self->_currentState didBecomeCurrentStateCardViewController:self previousState:v9 cardData:self];
    if (neededCopy && ![(BCCardSetState *)self->_currentState transitioning])
    {
      [(BCCardViewController *)self setNeedsStatusBarAppearanceUpdate];
      [(BCCardSetState *)self->_currentState cardViewControllerStatusBarBackgroundOpacity:self];
      v11 = v10;
      v12 = [BCStatusBarBackgroundController backgroundControllerForViewController:self];
      [v12 setOpacity:v11];
    }

    topContentViewController = [(BCCardViewController *)self topContentViewController];
    [topContentViewController didSetCurrentCardState:v14];
  }

  _objc_release_x1();
}

- (void)animationCompletedAtPosition:(int64_t)position
{
  [(BCCardViewController *)self setAnimator:0];
  currentState = [(BCCardViewController *)self currentState];
  [currentState cardViewController:self animationCompletedAtPosition:position cardData:self];
}

- (void)_adjustContentInsetForViewController:(id)controller
{
  controllerCopy = controller;
  [(BCCardViewController *)self contentInsetForContent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  view = [(BCCardViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarHeight];
  v15 = v14;
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  navigationBar = [cardNavigationController navigationBar];
  [navigationBar frame];
  v19 = v15 + v18;

  [(BCCardViewController *)self setContentInsetForContent:v19, v5, v7, v9];
  [(BCCardViewController *)self _updateViewController:controllerCopy withContentInset:v19 unalteredContentInset:v5, v7, v9, self->_unalteredContentInset.top, self->_unalteredContentInset.left, self->_unalteredContentInset.bottom, self->_unalteredContentInset.right];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  dismissPanGestureRecognizer = [(BCCardViewController *)self dismissPanGestureRecognizer];
  v6 = dismissPanGestureRecognizer;
  if (dismissPanGestureRecognizer == beginCopy)
  {

    goto LABEL_5;
  }

  auxiliaryNavigationBarDismissPanGestureRecognizer = [(BCCardViewController *)self auxiliaryNavigationBarDismissPanGestureRecognizer];

  if (auxiliaryNavigationBarDismissPanGestureRecognizer == beginCopy)
  {
LABEL_5:
    currentState = [(BCCardViewController *)self currentState];
    v8 = [currentState cardViewController:self dismissPanShouldBegin:beginCopy cardData:self];

    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  dismissPanGestureRecognizer = [(BCCardViewController *)self dismissPanGestureRecognizer];
  if (dismissPanGestureRecognizer == recognizerCopy)
  {
    v11 = 1;
  }

  else
  {
    auxiliaryNavigationBarDismissPanGestureRecognizer = [(BCCardViewController *)self auxiliaryNavigationBarDismissPanGestureRecognizer];

    if (auxiliaryNavigationBarDismissPanGestureRecognizer == recognizerCopy)
    {
      v11 = 1;
      goto LABEL_7;
    }

    dismissPanGestureRecognizer = [touchCopy view];
    scrollView = [(BCCardViewController *)self scrollView];
    v11 = dismissPanGestureRecognizer == scrollView;
  }

LABEL_7:
  return v11;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  currentState = [(BCCardViewController *)self currentState];
  contentScrollView = [(BCCardViewController *)self contentScrollView];
  [currentState cardViewController:self cardData:self scrollViewWillBeginDragging:draggingCopy contentScrollView:contentScrollView];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(BCCardViewController *)self settingContentOffset])
  {
    covered = 1;
  }

  else
  {
    cardSetData = [(BCCardViewController *)self cardSetData];
    if ([cardSetData isInTransitionUpdateMode])
    {
      covered = 1;
    }

    else
    {
      cardSetData2 = [(BCCardViewController *)self cardSetData];
      covered = [cardSetData2 covered];
    }
  }

  if ([scrollCopy isDragging] & 1) != 0 || (objc_msgSend(scrollCopy, "isDecelerating"))
  {
    v7 = 0;
  }

  else
  {
    v7 = ![(BCCardViewController *)self scrollingToTop];
  }

  if (((covered | v7) & 1) == 0)
  {
    currentState = [(BCCardViewController *)self currentState];
    contentScrollView = [(BCCardViewController *)self contentScrollView];
    [currentState cardViewController:self cardData:self scrollViewDidScroll:scrollCopy contentScrollView:contentScrollView];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  currentState = [(BCCardViewController *)self currentState];
  contentScrollView = [(BCCardViewController *)self contentScrollView];
  [currentState cardViewController:self cardData:self scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy contentScrollView:contentScrollView];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  currentState = [(BCCardViewController *)self currentState];
  contentScrollView = [(BCCardViewController *)self contentScrollView];
  [currentState cardViewController:self cardData:self scrollViewDidEndDecelerating:deceleratingCopy contentScrollView:contentScrollView];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  currentState = [(BCCardViewController *)self currentState];
  contentScrollView = [(BCCardViewController *)self contentScrollView];
  [currentState cardViewController:self cardData:self scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:contentScrollView contentScrollView:{x, y}];
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  cardStackViewController = [(BCCardViewController *)self cardStackViewController];
  topCardSetViewController = [cardStackViewController topCardSetViewController];
  cardSetViewController = [(BCCardViewController *)self cardSetViewController];

  if (topCardSetViewController == cardSetViewController)
  {
    [(BCCardViewController *)self setScrollingToTop:1];
  }

  return topCardSetViewController == cardSetViewController;
}

- (BOOL)prefersStatusBarBackgroundHidden
{
  _preferredTargetState = [(BCCardViewController *)self _preferredTargetState];
  v3 = _preferredTargetState;
  if (_preferredTargetState)
  {
    prefersStatusBarBackgroundHidden = [_preferredTargetState prefersStatusBarBackgroundHidden];
  }

  else
  {
    prefersStatusBarBackgroundHidden = 1;
  }

  return prefersStatusBarBackgroundHidden;
}

- (id)_preferredTargetState
{
  cardNavigationController = [(BCCardViewController *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  v5 = [viewControllers count];

  cardNavigationController2 = [(BCCardViewController *)self cardNavigationController];
  transitionCoordinator = [cardNavigationController2 transitionCoordinator];
  v8 = [transitionCoordinator viewControllerForKey:UITransitionContextFromViewControllerKey];

  cardNavigationController3 = [(BCCardViewController *)self cardNavigationController];
  viewControllers2 = [cardNavigationController3 viewControllers];
  v11 = [viewControllers2 containsObject:v8];

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
    configuration = [(BCCardViewController *)self configuration];
    if ([configuration cardsCanExpand])
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

  configuration2 = [(BCCardViewController *)self configuration];
  cardsCanExpand = [configuration2 cardsCanExpand];

  if (cardsCanExpand)
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

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCoordinator = [controllerCopy transitionCoordinator];
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView _stopScrollingAndZoomingAnimations];

  contentScrollView = [(BCCardViewController *)self contentScrollView];
  [contentScrollView _stopScrollingAndZoomingAnimations];

  if (transitionCoordinator)
  {
    viewControllers = [controllerCopy viewControllers];
    v31 = [viewControllers count];

    v13 = [transitionCoordinator viewControllerForKey:UITransitionContextFromViewControllerKey];
    v14 = [transitionCoordinator viewControllerForKey:UITransitionContextToViewControllerKey];
    viewControllers2 = [controllerCopy viewControllers];
    v16 = [viewControllers2 containsObject:v13];

    viewControllers3 = [controllerCopy viewControllers];
    firstObject = [viewControllers3 firstObject];

    v30 = v16;
    if (v16)
    {
      v29 = v13 == firstObject;
      objc_opt_class();
      v19 = BUClassAndProtocolCast();
      [(BCCardViewController *)self _adjustContentInsetForViewController:v19, &OBJC_PROTOCOL___BCCardContent];

      v20 = 0;
    }

    else
    {
      v29 = 0;
      v20 = v14 == firstObject;
    }

    isCancelled = [transitionCoordinator isCancelled];
    _preferredTargetState = [(BCCardViewController *)self _preferredTargetState];
    [_preferredTargetState cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
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
    v40 = controllerCopy;
    v47 = v20;
    v25 = v13;
    v41 = v25;
    v26 = v14;
    v42 = v26;
    v44 = v49;
    v27 = viewControllerCopy;
    v43 = v27;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_CFB0;
    v32[3] = &unk_2C7E80;
    v35 = v49;
    v37 = isCancelled;
    objc_copyWeak(v36, &location);
    v38 = v30;
    v32[4] = self;
    v33 = v27;
    v28 = _preferredTargetState;
    v34 = v28;
    v36[1] = v31;
    [transitionCoordinator animateAlongsideTransition:v39 completion:v32];

    objc_destroyWeak(v36);
    objc_destroyWeak(&location);
    _Block_object_dispose(v49, 8);
  }

  else
  {
    sub_1E4734(self, viewControllerCopy);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  transitionCoordinator = [controllerCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    goto LABEL_10;
  }

  configuration = [(BCCardViewController *)self configuration];
  if (![configuration cardsCanExpand])
  {

    goto LABEL_6;
  }

  expanded = [(BCCardViewController *)self expanded];

  if (!expanded)
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
    currentState = [(BCCardViewController *)self currentState];
    WeakRetained = objc_loadWeakRetained(&self->_contentScrollView);
    [currentState cardViewController:self contentScrollViewDidChange:WeakRetained cardData:self];
  }

  currentState2 = [(BCCardViewController *)self currentState];
  [currentState2 cardViewControllerAuxiliaryNavigationBarAlpha:self cardData:self];
  v15 = v14;

  [(BCCardViewController *)self _setAuxiliaryNavigationBarViewAlpha:v15];
LABEL_10:
  cardSetViewController = [(BCCardViewController *)self cardSetViewController];
  edgePanGestureRecognizer = [cardSetViewController edgePanGestureRecognizer];
  if (edgePanGestureRecognizer)
  {
    viewControllers = [controllerCopy viewControllers];
    v19 = [viewControllers count] < 3;
  }

  else
  {
    v19 = 0;
  }

  cardSetViewController2 = [(BCCardViewController *)self cardSetViewController];
  edgePanGestureRecognizer2 = [cardSetViewController2 edgePanGestureRecognizer];
  [edgePanGestureRecognizer2 setEnabled:v19];

  interactivePopGestureRecognizer = [controllerCopy interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:v19 ^ 1];
}

- (void)scrollViewDidChange
{
  topContentViewController = [(BCCardViewController *)self topContentViewController];
  scrollView = [topContentViewController scrollView];
  [(BCCardViewController *)self setContentScrollView:scrollView];

  [(BCCardViewController *)self _updateCardFrames];
}

- (NSString)stringForReturnToRootBarItem
{
  presentingViewController = [(BCCardViewController *)self presentingViewController];
  v3 = [presentingViewController im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BCRootBarStringForReturnToRootBarItemProviding];

  bc_stringForReturnToRootBarItem = [v3 bc_stringForReturnToRootBarItem];

  return bc_stringForReturnToRootBarItem;
}

- (BOOL)auxiliaryNavigationBarViewControllerCanCloseAsset
{
  selfCopy = self;
  delegate = [(BCCardViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate cardViewControllerCanCloseAsset:selfCopy];

  return selfCopy;
}

- (void)auxiliaryNavigationBarViewControllerDidTapCloseAllCards
{
  delegate = [(BCCardViewController *)self delegate];
  [delegate cardViewControllerDidTapCloseAllCards:self];
}

- (void)auxiliaryNavigationBarViewControllerDidTapCloseAsset
{
  delegate = [(BCCardViewController *)self delegate];
  [delegate cardViewControllerDidTapCloseAsset:self];
}

- (void)setIsBubbleTipPresented:(BOOL)presented
{
  presentedCopy = presented;
  scrollView = [(BCCardViewController *)self scrollView];
  [scrollView setScrollEnabled:!presentedCopy];
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

- (void)configureFeedProxyScrollView:(id)view
{
  v5 = sub_1EEBD4();
  __chkstk_darwin(v5);
  viewCopy = view;
  selfCopy = self;
  sub_1EF0C4();
  v8 = viewCopy;
  sub_1EEB74();
  sub_1EF0D4();
}

- (void)configureCardTraitOverrides
{
  v3 = sub_1EEBD4();
  __chkstk_darwin(v3);
  selfCopy = self;
  sub_1EF0C4();
  sub_1EEB94();
  sub_1EF0D4();
  sub_1EF0C4();
  sub_1EEBC4();
  sub_1EF0D4();
}

- (void)updateNavBarAlphaForTransition:(double)transition
{
  v5 = sub_1EEBD4();
  __chkstk_darwin(v5);
  selfCopy = self;
  cardNavigationController = [(BCCardViewController *)selfCopy cardNavigationController];
  navigationBar = [(UINavigationController *)cardNavigationController navigationBar];

  [(UINavigationBar *)navigationBar setAlpha:transition];
  sub_1EF0C4();
  sub_1EEB84();
  sub_1EF0D4();
}

- (void)updateNavBarAlpha
{
  selfCopy = self;
  BCCardViewController.updateNavBarAlpha()();
}

@end