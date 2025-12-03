@interface BKEndOfBookCompactViewController
- (BKEndOfBookCompactViewController)initWithOptions:(id)options;
- (BKEndOfBookCompactViewControllerDelegate)delegate;
- (BOOL)_shouldUseCoverAnimationWhenPresenting:(BOOL)presenting;
- (BOOL)isPresentingCard;
- (BOOL)isToolbarVisible;
- (BSUIFeedViewController)feedViewController;
- (CGRect)preferredFrameInViewController:(id)controller isPresented:(BOOL)presented;
- (CGRect)preferredFrameInViewController:(id)controller newSize:(CGSize)size isPresented:(BOOL)presented;
- (UIView)contentView;
- (UIView)dropShadowView;
- (UIViewController)cardViewController;
- (id)_additionalInfoForClickEvent:(id)event;
- (id)animationControllerForCompactViewController:(id)controller cardViewController:(id)viewController isPresenting:(BOOL)presenting;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)ba_analyticsTracker;
- (void)_anchorGripperView:(id)view toView:(id)toView;
- (void)_animateScaleForPressed:(BOOL)pressed;
- (void)_closeAllCardsIncludingEOB:(id)b cardStackViewController:(id)controller completion:(id)completion;
- (void)_contentTapCompleted;
- (void)_forceOrientationBackToPortraitOrientation:(id)orientation;
- (void)_gripperTapped:(id)tapped;
- (void)_presentCardWithReason:(id)reason completion:(id)completion;
- (void)_reportFigaroCloseClickEventWithReason:(id)reason;
- (void)_reportFigaroOpenClickEventWithReason:(id)reason;
- (void)_trackInteractiveDismissal;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_willDismissCardWithReason:(int64_t)reason;
- (void)dismiss;
- (void)endOfBookCardViewControllerDidFinish:(id)finish;
- (void)endOfBookCardViewControllerWantsToCloseAsset:(id)asset cardStackViewController:(id)controller completion:(id)completion;
- (void)endOfBookCardViewControllerWantsToCloseToAsset:(id)asset cardStackViewController:(id)controller completion:(id)completion;
- (void)preloadContentWithViewController:(id)controller completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setCardViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKEndOfBookCompactViewController

- (BKEndOfBookCompactViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = BKEndOfBookCompactViewController;
  v5 = [(BKEndOfBookCompactViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(BKEndOfBookCompactViewController *)v5 setOptions:optionsCopy];
    v7 = +[NSMutableArray array];
    presentationCompletionBlocks = v6->_presentationCompletionBlocks;
    v6->_presentationCompletionBlocks = v7;

    v9 = +[UITraitCollection bc_allAPITraits];
    v10 = [(BKEndOfBookCompactViewController *)v6 registerForTraitChanges:v9 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v6;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = BKEndOfBookCompactViewController;
  [(BKEndOfBookCompactViewController *)&v32 viewDidLoad];
  view = [(BKEndOfBookCompactViewController *)self view];
  [view setAutoresizingMask:0];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [view setFrame:{CGRectZero.origin.x, y, width, height}];
  [view setShouldGroupAccessibilityChildren:1];
  [view setAccessibilityContainerType:4];
  v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIView *)v7 setAutoresizingMask:34];
  layer = [(UIView *)v7 layer];
  [layer setCornerCurve:kCACornerCurveContinuous];
  [layer setCornerRadius:22.0];
  [layer setShadowOffset:{0.0, 8.0}];
  [layer setShadowRadius:18.0];
  v9 = +[UIColor blackColor];
  [layer setShadowColor:{objc_msgSend(v9, "CGColor")}];

  LODWORD(v10) = 1041865114;
  [layer setShadowOpacity:v10];
  [layer setShadowPathIsBounds:1];
  v31 = view;
  [view bounds];
  [(UIView *)v7 setFrame:?];
  [view addSubview:v7];
  dropShadowView = self->_dropShadowView;
  self->_dropShadowView = v7;
  v12 = v7;

  v13 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIView *)v13 setAutoresizingMask:18];
  [(UIView *)v13 setClipsToBounds:1];
  layer2 = [(UIView *)v13 layer];
  [layer2 setCornerCurve:kCACornerCurveContinuous];
  [layer2 setCornerRadius:22.0];
  v29 = v12;
  [(UIView *)v12 bounds];
  [(UIView *)v13 setFrame:?];
  [(UIView *)v12 addSubview:v13];
  contentView = self->_contentView;
  self->_contentView = v13;
  v15 = v13;

  v16 = objc_alloc_init(_BKEndOfBookToastBlurEffectView);
  [(UIView *)v15 bounds];
  [(_BKEndOfBookToastBlurEffectView *)v16 setFrame:?];
  [(UIView *)v15 addSubview:v16];
  v17 = [[UIControl alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v17 setAutoresizingMask:18];
  [(_BKEndOfBookToastBlurEffectView *)v16 bounds];
  [v17 setFrame:?];
  [(_BKEndOfBookToastBlurEffectView *)v16 addSubview:v17];
  [v17 addTarget:self action:"_contentTapBegan" forControlEvents:17];
  [v17 addTarget:self action:"_contentTapCancelled" forControlEvents:288];
  [v17 addTarget:self action:"_contentTapCompleted" forControlEvents:64];
  options = [(BKEndOfBookCompactViewController *)self options];
  v19 = [options mutableCopy];

  [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:@"end-of-book-compact"];
  v20 = +[BKContextMenuProvider sharedProvider];
  [v19 setObject:v20 forKeyedSubscript:BSUIFeedOptionsKeyContextMenuProvider];

  v21 = [[BSUIFeedViewController alloc] initWithOptions:v19];
  view2 = [v21 view];
  [view2 setUserInteractionEnabled:0];

  [(BKEndOfBookCompactViewController *)self addChildViewController:v21];
  view3 = [v21 view];
  [v17 bounds];
  [view3 setFrame:?];
  [view3 setAutoresizingMask:18];
  [v17 addSubview:view3];
  [v21 didMoveToParentViewController:self];
  feedViewController = self->_feedViewController;
  self->_feedViewController = v21;
  v25 = v21;

  v26 = [BCCardGripperView cardGripperViewWithStyle:1];
  [(UIView *)v26 setAccessibilityDelegate:self];
  [(UIView *)v15 addSubview:v26];
  [(BKEndOfBookCompactViewController *)self _anchorGripperView:v26 toView:v15];
  v27 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_gripperTapped:"];
  [(UIView *)v26 addGestureRecognizer:v27];
  closeButton = self->_closeButton;
  self->_closeButton = v26;
}

- (void)setCardViewController:(id)controller
{
  obj = controller;
  traitCollection = [(BKEndOfBookCompactViewController *)self traitCollection];
  [obj setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  objc_storeWeak(&self->_cardViewController, obj);
}

- (UIView)dropShadowView
{
  [(BKEndOfBookCompactViewController *)self loadViewIfNeeded];
  dropShadowView = self->_dropShadowView;

  return dropShadowView;
}

- (UIView)contentView
{
  [(BKEndOfBookCompactViewController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (BSUIFeedViewController)feedViewController
{
  [(BKEndOfBookCompactViewController *)self loadViewIfNeeded];
  feedViewController = self->_feedViewController;

  return feedViewController;
}

- (BOOL)isPresentingCard
{
  objc_opt_class();
  presentedViewController = [(BKEndOfBookCompactViewController *)self presentedViewController];
  v4 = BUDynamicCast();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isToolbarVisible
{
  parentViewController = [(BKEndOfBookCompactViewController *)self parentViewController];
  navigationController = [parentViewController navigationController];

  if (navigationController)
  {
    v4 = [navigationController isToolbarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v7 = [(BKEndOfBookCompactViewController *)self traitCollection:change];
  userInterfaceStyle = [v7 userInterfaceStyle];
  cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];
  [cardViewController setOverrideUserInterfaceStyle:userInterfaceStyle];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKEndOfBookCompactViewController;
  coordinatorCopy = coordinator;
  [(BKEndOfBookCompactViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100169808;
  v8[3] = &unk_100A03BD8;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v17.receiver = self;
  v17.super_class = BKEndOfBookCompactViewController;
  [(BKEndOfBookCompactViewController *)&v17 viewSafeAreaInsetsDidChange];
  isToolbarVisible = [(BKEndOfBookCompactViewController *)self isToolbarVisible];
  if (isToolbarVisible != [(BKEndOfBookCompactViewController *)self wasToolbarVisible])
  {
    [(BKEndOfBookCompactViewController *)self setWasToolbarVisible:isToolbarVisible];
    if ([(BKEndOfBookCompactViewController *)self isPresented])
    {
      v4 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:200.0 damping:20.0 initialVelocity:{0.0, 0.0}];
      v5 = [UIViewPropertyAnimator alloc];
      [v4 settlingDuration];
      v6 = [v5 initWithDuration:v4 timingParameters:?];
      parentViewController = [(BKEndOfBookCompactViewController *)self parentViewController];
      [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:parentViewController isPresented:[(BKEndOfBookCompactViewController *)self isPresented]];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100169A48;
      v16[3] = &unk_100A043C0;
      v16[4] = self;
      v16[5] = v9;
      v16[6] = v11;
      v16[7] = v13;
      v16[8] = v15;
      [v6 addAnimations:v16];
      [v6 startAnimation];
    }
  }
}

- (void)preloadContentWithViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: preloadContentWithViewController %@", &v19, 0x16u);
  }

  [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:controllerCopy isPresented:0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view = [(BKEndOfBookCompactViewController *)self view];
  [view setFrame:{v10, v12, v14, v16}];

  feedViewController = [(BKEndOfBookCompactViewController *)self feedViewController];
  [feedViewController preloadAugmentedExperienceContentWithViewController:controllerCopy numEntries:1 completion:completionCopy];
}

- (void)_forceOrientationBackToPortraitOrientation:(id)orientation
{
  orientationCopy = orientation;
  objc_opt_class();
  bc_windowForViewController = [(BKEndOfBookCompactViewController *)self bc_windowForViewController];
  windowScene = [bc_windowForViewController windowScene];
  v7 = BUDynamicCast();

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100169D10;
    v8[3] = &unk_100A04978;
    v8[4] = self;
    v9 = orientationCopy;
    [v7 attemptRotateToPortraitWithCompletion:v8];
  }

  else
  {
    orientationCopy[2](orientationCopy);
  }
}

- (CGRect)preferredFrameInViewController:(id)controller isPresented:(BOOL)presented
{
  presentedCopy = presented;
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  v8 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded bounds];
    [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:controllerCopy newSize:presentedCopy isPresented:v9, v10];
    x = v11;
    y = v13;
    width = v15;
    height = v17;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)preferredFrameInViewController:(id)controller newSize:(CGSize)size isPresented:(BOOL)presented
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    traitCollection = [controllerCopy traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    v12 = 8.0;
    v13 = 8.0;
    if (horizontalSizeClass == 1 || (v13 = 16.0, isPhone()))
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v12 = 16.0;
    }

    navigationController = [controllerCopy navigationController];
    if (navigationController && (v20 = navigationController, [controllerCopy navigationController], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isToolbarHidden"), v21, v20, (v22 & 1) == 0) || (objc_msgSend(viewIfLoaded, "safeAreaInsets"), v23 > v12))
    {
      [viewIfLoaded safeAreaInsets];
    }

    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    v36.size.width = width;
    v36.size.height = height;
    if (CGRectGetWidth(v36) + v13 * -2.0 < 404.0)
    {
      v37.origin.x = 0.0;
      v37.origin.y = 0.0;
      v37.size.width = width;
      v37.size.height = height;
      CGRectGetWidth(v37);
    }

    v24 = 0;
    v25 = 0;
    v26 = width;
    v27 = height;
    if (v14)
    {
      CGRectGetWidth(*&v24);
    }

    else
    {
      CGRectGetMaxX(*&v24);
    }

    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = width;
    v38.size.height = height;
    CGRectGetMaxY(v38);
    [(BKEndOfBookCompactViewController *)self pageProgressionIsRTL];
    IMRectFlippedForRTL();
    x = v28;
    y = v29;
    v17 = v30;
    v18 = v31;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v17 = CGRectZero.size.width;
    v18 = CGRectZero.size.height;
  }

  v32 = x;
  v33 = y;
  v34 = v17;
  v35 = v18;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)_gripperTapped:(id)tapped
{
  if ([tapped state] == 3)
  {
    [(BKEndOfBookCompactViewController *)self _reportFigaroCloseClickEventWithReason:@"buttonTap"];

    [(BKEndOfBookCompactViewController *)self dismiss];
  }
}

- (void)_animateScaleForPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  dropShadowView = [(BKEndOfBookCompactViewController *)self dropShadowView];
  memset(&v16, 0, sizeof(v16));
  if (pressedCopy)
  {
    CGAffineTransformMakeScale(&v16, 0.96, 0.96);
  }

  else
  {
    v8 = *&CGAffineTransformIdentity.c;
    *&v16.a = *&CGAffineTransformIdentity.a;
    *&v16.c = v8;
    v7 = *&CGAffineTransformIdentity.tx;
    *&v16.tx = v7;
  }

  LODWORD(v7) = 1051260355;
  LODWORD(v5) = 1059816735;
  LODWORD(v6) = 1.0;
  v9 = [CAMediaTimingFunction functionWithControlPoints:*&v7];
  v10 = [[UICubicTimingParameters alloc] initWithCustomCurve:v9];
  v11 = [[UIViewPropertyAnimator alloc] initWithDuration:v10 timingParameters:0.18];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v15 = v16;
  v13[2] = sub_10016A240;
  v13[3] = &unk_100A091F8;
  v14 = dropShadowView;
  v12 = dropShadowView;
  [v11 addAnimations:v13];
  [v11 startAnimation];
}

- (void)_contentTapCompleted
{
  [(BKEndOfBookCompactViewController *)self _presentCardWithReason:@"buttonTap" completion:0];

  [(BKEndOfBookCompactViewController *)self _animateScaleForPressed:0];
}

- (void)_anchorGripperView:(id)view toView:(id)toView
{
  toViewCopy = toView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [toViewCopy topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v14[0] = v9;
  trailingAnchor = [viewCopy trailingAnchor];

  trailingAnchor2 = [toViewCopy trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-14.5];
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_willDismissCardWithReason:(int64_t)reason
{
  objc_opt_class();
  cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];
  v8 = BUDynamicCast();

  cardNavigationController = [v8 cardNavigationController];
  currentFeedViewController = [cardNavigationController currentFeedViewController];
  [currentFeedViewController cardStackViewController:0 parentCardWillDismissWithReason:reason targetViewController:self];
}

- (void)_presentCardWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];
  if (cardViewController && ![(BKEndOfBookCompactViewController *)self isPresentingCard])
  {
    presentedViewController = [(BKEndOfBookCompactViewController *)self presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(BKEndOfBookCompactViewController *)self presentedViewController];
      [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
    }

    [(BKEndOfBookCompactViewController *)self _reportFigaroOpenClickEventWithReason:reasonCopy];
    if (completionCopy)
    {
      presentationCompletionBlocks = [(BKEndOfBookCompactViewController *)self presentationCompletionBlocks];
      v14 = objc_retainBlock(completionCopy);
      [presentationCompletionBlocks addObject:v14];
    }

    transitionAnimationController = [(BKEndOfBookCompactViewController *)self transitionAnimationController];

    if (!transitionAnimationController)
    {
      [cardViewController setTransitioningDelegate:self];
      presentationController = [cardViewController presentationController];
      [presentationController setDelegate:self];

      objc_opt_class();
      v17 = BUDynamicCast();
      [v17 setDelegate:self];
      objc_initWeak(location, self);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10016A8D4;
      v32[3] = &unk_100A035D0;
      objc_copyWeak(&v33, location);
      v18 = objc_retainBlock(v32);
      objc_opt_class();
      presentationController2 = [cardViewController presentationController];
      v20 = BUDynamicCast();

      dropShadowView = [(BKEndOfBookCompactViewController *)self dropShadowView];
      layer = [dropShadowView layer];
      [layer cornerRadius];
      [v20 _setCornerRadiusForPresentationAndDismissal:?];

      [v20 _setShouldDismissWhenTappedOutside:1];
      v23 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v17];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v23];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10016AA14;
      v28[3] = &unk_100A074A8;
      objc_copyWeak(&v31, location);
      v29 = cardViewController;
      v24 = v18;
      v30 = v24;
      v25 = objc_retainBlock(v28);
      if (isPhone() && isLandscape())
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10016ABF8;
        v26[3] = &unk_100A03788;
        v26[4] = self;
        v27 = v25;
        dispatch_async(&_dispatch_main_q, v26);
      }

      else
      {
        (v25[2])(v25);
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

- (id)animationControllerForCompactViewController:(id)controller cardViewController:(id)viewController isPresenting:(BOOL)presenting
{
  presentingCopy = presenting;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  v10 = BUDynamicCast();
  v11 = objc_alloc_init(_UISheetAnimationController);
  [v11 setIsReversed:!presentingCopy];
  dropShadowView = [v10 dropShadowView];
  dropShadowView2 = [v10 dropShadowView];
  [dropShadowView2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  view = [v10 view];
  superview = [view superview];
  [dropShadowView convertRect:superview toView:{v15, v17, v19, v21}];
  [v11 setSourceFrame:?];

  objc_initWeak(&location, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10016AE54;
  v28[3] = &unk_100A03BB0;
  objc_copyWeak(&v29, &location);
  v30 = presentingCopy;
  [v11 addNoninteractiveAnimations:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016AEC8;
  v25[3] = &unk_100A063A0;
  objc_copyWeak(&v26, &location);
  v27 = presentingCopy;
  [v11 addNoninteractiveCompletion:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v11;
}

- (void)dismiss
{
  delegate = [(BKEndOfBookCompactViewController *)self delegate];
  [delegate endOfBookCompactViewControllerWantsToDismiss:self];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  sourceControllerCopy = sourceController;
  if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:1])
  {
    v9 = [(BKEndOfBookCompactViewController *)self animationControllerForCompactViewController:sourceControllerCopy cardViewController:controllerCopy isPresenting:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
  {
    v5 = [(BKEndOfBookCompactViewController *)self animationControllerForCompactViewController:self cardViewController:controllerCopy isPresenting:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldUseCoverAnimationWhenPresenting:(BOOL)presenting
{
  isPresented = [(BKEndOfBookCompactViewController *)self isPresented];
  v6 = presenting & isPresented;
  if (!presenting && (isPresented & 1) != 0)
  {
    v6 = !self->_closingBook;
  }

  return v6 & 1;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  transitionCoordinator = [(BKEndOfBookCompactViewController *)self transitionCoordinator];
  if (([transitionCoordinator isInteractive] & 1) == 0 && (objc_msgSend(transitionCoordinator, "isCancelled") & 1) == 0)
  {
    [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:2];
    if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
    {
      objc_opt_class();
      cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];
      v5 = BUDynamicCast();

      v6 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v5];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v6];

      transitionAnimationController = [(BKEndOfBookCompactViewController *)self transitionAnimationController];
      [transitionAnimationController prepareForDismissal];
    }
  }

  [(BKEndOfBookCompactViewController *)self _trackInteractiveDismissal];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (isPhone())
  {

    +[UIViewController attemptRotationToDeviceOrientation];
  }
}

- (void)_trackInteractiveDismissal
{
  v3 = [(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0];
  if ([(BKEndOfBookCompactViewController *)self isPresentingCard])
  {
    transitionCoordinator = [(BKEndOfBookCompactViewController *)self transitionCoordinator];
  }

  else
  {
    cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];
    transitionCoordinator = [cardViewController transitionCoordinator];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016B30C;
  v6[3] = &unk_100A06F50;
  v6[4] = self;
  v7 = v3;
  [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v6];
}

- (void)endOfBookCardViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  cardViewController = [(BKEndOfBookCompactViewController *)self cardViewController];

  if (cardViewController == finishCopy)
  {
    [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:1];
    if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
    {
      objc_opt_class();
      cardViewController2 = [(BKEndOfBookCompactViewController *)self cardViewController];
      v7 = BUDynamicCast();

      v8 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v7];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v8];

      transitionAnimationController = [(BKEndOfBookCompactViewController *)self transitionAnimationController];
      [transitionAnimationController prepareForDismissal];
    }

    cardViewController3 = [(BKEndOfBookCompactViewController *)self cardViewController];
    presentingViewController = [cardViewController3 presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    [(BKEndOfBookCompactViewController *)self _trackInteractiveDismissal];
  }
}

- (void)_closeAllCardsIncludingEOB:(id)b cardStackViewController:(id)controller completion:(id)completion
{
  bCopy = b;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing card stack and EndOfBook card simultaneously", buf, 2u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10016B734;
  v19[3] = &unk_100A03788;
  v12 = bCopy;
  v20 = v12;
  v21 = completionCopy;
  v13 = completionCopy;
  [controllerCopy popAllCardsAnimated:1 completion:v19];
  [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:1];
  transitionCoordinator = [controllerCopy transitionCoordinator];

  view = [v12 view];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016B744;
  v17[3] = &unk_100A04410;
  v18 = v12;
  v16 = v12;
  [transitionCoordinator animateAlongsideTransitionInView:view animation:v17 completion:0];
}

- (void)endOfBookCardViewControllerWantsToCloseToAsset:(id)asset cardStackViewController:(id)controller completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016B85C;
  v8[3] = &unk_100A03788;
  selfCopy = self;
  completionCopy = completion;
  v7 = completionCopy;
  [(BKEndOfBookCompactViewController *)selfCopy _closeAllCardsIncludingEOB:asset cardStackViewController:controller completion:v8];
}

- (void)endOfBookCardViewControllerWantsToCloseAsset:(id)asset cardStackViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  assetCopy = asset;
  v11 = [(BKEndOfBookCompactViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKPrimaryScenePresenting];
  v12 = +[BKRootBarItemsProvider HomeIdentifier];
  [v11 presenterSelectTabWithIdentifier:v12];

  self->_closingBook = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10016B9E0;
  v14[3] = &unk_100A03788;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(BKEndOfBookCompactViewController *)self _closeAllCardsIncludingEOB:assetCopy cardStackViewController:controllerCopy completion:v14];
}

- (id)ba_analyticsTracker
{
  v8.receiver = self;
  v8.super_class = BKEndOfBookCompactViewController;
  ba_analyticsTracker = [(BKEndOfBookCompactViewController *)&v8 ba_analyticsTracker];
  v4 = ba_analyticsTracker;
  if (ba_analyticsTracker)
  {
    ba_analyticsTracker2 = ba_analyticsTracker;
  }

  else
  {
    feedViewController = [(BKEndOfBookCompactViewController *)self feedViewController];
    ba_analyticsTracker2 = [feedViewController ba_analyticsTracker];
  }

  return ba_analyticsTracker2;
}

- (void)_reportFigaroOpenClickEventWithReason:(id)reason
{
  reasonCopy = reason;
  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v15 setObject:JSARecordActionTypeNavigate forKeyedSubscript:JSARecordKeyActionType];
  contentView = [(BKEndOfBookCompactViewController *)self contentView];
  superview = [contentView superview];
  contentView2 = [(BKEndOfBookCompactViewController *)self contentView];
  [contentView2 center];
  [superview convertPoint:0 toView:?];
  v9 = v8;
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v9];
  [v15 setObject:v12 forKeyedSubscript:JSARecordKeyPositionX];

  v13 = [NSNumber numberWithDouble:v11];
  [v15 setObject:v13 forKeyedSubscript:JSARecordKeyPositionY];

  v14 = [(BKEndOfBookCompactViewController *)self _additionalInfoForClickEvent:reasonCopy];

  [JSAApplication recordNativeEvent:v15 additionalInfo:v14];
}

- (void)_reportFigaroCloseClickEventWithReason:(id)reason
{
  reasonCopy = reason;
  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v15 setObject:JSARecordActionTypeDismiss forKeyedSubscript:JSARecordKeyActionType];
  closeButton = [(BKEndOfBookCompactViewController *)self closeButton];
  superview = [closeButton superview];
  closeButton2 = [(BKEndOfBookCompactViewController *)self closeButton];
  [closeButton2 center];
  [superview convertPoint:0 toView:?];
  v9 = v8;
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v9];
  [v15 setObject:v12 forKeyedSubscript:JSARecordKeyPositionX];

  v13 = [NSNumber numberWithDouble:v11];
  [v15 setObject:v13 forKeyedSubscript:JSARecordKeyPositionY];

  v14 = [(BKEndOfBookCompactViewController *)self _additionalInfoForClickEvent:reasonCopy];

  [JSAApplication recordNativeEvent:v15 additionalInfo:v14];
}

- (id)_additionalInfoForClickEvent:(id)event
{
  eventCopy = event;
  ba_effectiveAnalyticsTracker = [(BKEndOfBookCompactViewController *)self ba_effectiveAnalyticsTracker];
  v12[0] = @"tracker";
  v6 = ba_effectiveAnalyticsTracker;
  if (!ba_effectiveAnalyticsTracker)
  {
    v6 = +[NSNull null];
  }

  v13[0] = v6;
  v12[1] = @"feed";
  feedViewController = [(BKEndOfBookCompactViewController *)self feedViewController];
  feed = [feedViewController feed];
  v9 = feed;
  if (!feed)
  {
    v9 = +[NSNull null];
  }

  v12[2] = @"reason";
  v13[1] = v9;
  v13[2] = eventCopy;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!feed)
  {
  }

  if (!ba_effectiveAnalyticsTracker)
  {
  }

  return v10;
}

- (UIViewController)cardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewController);

  return WeakRetained;
}

- (BKEndOfBookCompactViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end