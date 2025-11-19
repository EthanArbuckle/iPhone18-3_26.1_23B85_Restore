@interface BKEndOfBookCompactViewController
- (BKEndOfBookCompactViewController)initWithOptions:(id)a3;
- (BKEndOfBookCompactViewControllerDelegate)delegate;
- (BOOL)_shouldUseCoverAnimationWhenPresenting:(BOOL)a3;
- (BOOL)isPresentingCard;
- (BOOL)isToolbarVisible;
- (BSUIFeedViewController)feedViewController;
- (CGRect)preferredFrameInViewController:(id)a3 isPresented:(BOOL)a4;
- (CGRect)preferredFrameInViewController:(id)a3 newSize:(CGSize)a4 isPresented:(BOOL)a5;
- (UIView)contentView;
- (UIView)dropShadowView;
- (UIViewController)cardViewController;
- (id)_additionalInfoForClickEvent:(id)a3;
- (id)animationControllerForCompactViewController:(id)a3 cardViewController:(id)a4 isPresenting:(BOOL)a5;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)ba_analyticsTracker;
- (void)_anchorGripperView:(id)a3 toView:(id)a4;
- (void)_animateScaleForPressed:(BOOL)a3;
- (void)_closeAllCardsIncludingEOB:(id)a3 cardStackViewController:(id)a4 completion:(id)a5;
- (void)_contentTapCompleted;
- (void)_forceOrientationBackToPortraitOrientation:(id)a3;
- (void)_gripperTapped:(id)a3;
- (void)_presentCardWithReason:(id)a3 completion:(id)a4;
- (void)_reportFigaroCloseClickEventWithReason:(id)a3;
- (void)_reportFigaroOpenClickEventWithReason:(id)a3;
- (void)_trackInteractiveDismissal;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_willDismissCardWithReason:(int64_t)a3;
- (void)dismiss;
- (void)endOfBookCardViewControllerDidFinish:(id)a3;
- (void)endOfBookCardViewControllerWantsToCloseAsset:(id)a3 cardStackViewController:(id)a4 completion:(id)a5;
- (void)endOfBookCardViewControllerWantsToCloseToAsset:(id)a3 cardStackViewController:(id)a4 completion:(id)a5;
- (void)preloadContentWithViewController:(id)a3 completion:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setCardViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKEndOfBookCompactViewController

- (BKEndOfBookCompactViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKEndOfBookCompactViewController;
  v5 = [(BKEndOfBookCompactViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(BKEndOfBookCompactViewController *)v5 setOptions:v4];
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
  v3 = [(BKEndOfBookCompactViewController *)self view];
  [v3 setAutoresizingMask:0];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [v3 setFrame:{CGRectZero.origin.x, y, width, height}];
  [v3 setShouldGroupAccessibilityChildren:1];
  [v3 setAccessibilityContainerType:4];
  v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIView *)v7 setAutoresizingMask:34];
  v8 = [(UIView *)v7 layer];
  [v8 setCornerCurve:kCACornerCurveContinuous];
  [v8 setCornerRadius:22.0];
  [v8 setShadowOffset:{0.0, 8.0}];
  [v8 setShadowRadius:18.0];
  v9 = +[UIColor blackColor];
  [v8 setShadowColor:{objc_msgSend(v9, "CGColor")}];

  LODWORD(v10) = 1041865114;
  [v8 setShadowOpacity:v10];
  [v8 setShadowPathIsBounds:1];
  v31 = v3;
  [v3 bounds];
  [(UIView *)v7 setFrame:?];
  [v3 addSubview:v7];
  dropShadowView = self->_dropShadowView;
  self->_dropShadowView = v7;
  v12 = v7;

  v13 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIView *)v13 setAutoresizingMask:18];
  [(UIView *)v13 setClipsToBounds:1];
  v30 = [(UIView *)v13 layer];
  [v30 setCornerCurve:kCACornerCurveContinuous];
  [v30 setCornerRadius:22.0];
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
  v18 = [(BKEndOfBookCompactViewController *)self options];
  v19 = [v18 mutableCopy];

  [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:@"end-of-book-compact"];
  v20 = +[BKContextMenuProvider sharedProvider];
  [v19 setObject:v20 forKeyedSubscript:BSUIFeedOptionsKeyContextMenuProvider];

  v21 = [[BSUIFeedViewController alloc] initWithOptions:v19];
  v22 = [v21 view];
  [v22 setUserInteractionEnabled:0];

  [(BKEndOfBookCompactViewController *)self addChildViewController:v21];
  v23 = [v21 view];
  [v17 bounds];
  [v23 setFrame:?];
  [v23 setAutoresizingMask:18];
  [v17 addSubview:v23];
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

- (void)setCardViewController:(id)a3
{
  obj = a3;
  v4 = [(BKEndOfBookCompactViewController *)self traitCollection];
  [obj setOverrideUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];

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
  v3 = [(BKEndOfBookCompactViewController *)self presentedViewController];
  v4 = BUDynamicCast();
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isToolbarVisible
{
  v2 = [(BKEndOfBookCompactViewController *)self parentViewController];
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [v3 isToolbarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v7 = [(BKEndOfBookCompactViewController *)self traitCollection:a3];
  v5 = [v7 userInterfaceStyle];
  v6 = [(BKEndOfBookCompactViewController *)self cardViewController];
  [v6 setOverrideUserInterfaceStyle:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = BKEndOfBookCompactViewController;
  v7 = a4;
  [(BKEndOfBookCompactViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100169808;
  v8[3] = &unk_100A03BD8;
  v8[4] = self;
  *&v8[5] = width;
  *&v8[6] = height;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v17.receiver = self;
  v17.super_class = BKEndOfBookCompactViewController;
  [(BKEndOfBookCompactViewController *)&v17 viewSafeAreaInsetsDidChange];
  v3 = [(BKEndOfBookCompactViewController *)self isToolbarVisible];
  if (v3 != [(BKEndOfBookCompactViewController *)self wasToolbarVisible])
  {
    [(BKEndOfBookCompactViewController *)self setWasToolbarVisible:v3];
    if ([(BKEndOfBookCompactViewController *)self isPresented])
    {
      v4 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:200.0 damping:20.0 initialVelocity:{0.0, 0.0}];
      v5 = [UIViewPropertyAnimator alloc];
      [v4 settlingDuration];
      v6 = [v5 initWithDuration:v4 timingParameters:?];
      v7 = [(BKEndOfBookCompactViewController *)self parentViewController];
      [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:v7 isPresented:[(BKEndOfBookCompactViewController *)self isPresented]];
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

- (void)preloadContentWithViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: preloadContentWithViewController %@", &v19, 0x16u);
  }

  [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:v6 isPresented:0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKEndOfBookCompactViewController *)self view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(BKEndOfBookCompactViewController *)self feedViewController];
  [v18 preloadAugmentedExperienceContentWithViewController:v6 numEntries:1 completion:v7];
}

- (void)_forceOrientationBackToPortraitOrientation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKEndOfBookCompactViewController *)self bc_windowForViewController];
  v6 = [v5 windowScene];
  v7 = BUDynamicCast();

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100169D10;
    v8[3] = &unk_100A04978;
    v8[4] = self;
    v9 = v4;
    [v7 attemptRotateToPortraitWithCompletion:v8];
  }

  else
  {
    v4[2](v4);
  }
}

- (CGRect)preferredFrameInViewController:(id)a3 isPresented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 viewIfLoaded];
  v8 = v7;
  if (v7)
  {
    [v7 bounds];
    [(BKEndOfBookCompactViewController *)self preferredFrameInViewController:v6 newSize:v4 isPresented:v9, v10];
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

- (CGRect)preferredFrameInViewController:(id)a3 newSize:(CGSize)a4 isPresented:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = [v8 viewIfLoaded];
  if (v9)
  {
    v10 = [v8 traitCollection];
    v11 = [v10 horizontalSizeClass];

    v12 = 8.0;
    v13 = 8.0;
    if (v11 == 1 || (v13 = 16.0, isPhone()))
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v12 = 16.0;
    }

    v19 = [v8 navigationController];
    if (v19 && (v20 = v19, [v8 navigationController], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isToolbarHidden"), v21, v20, (v22 & 1) == 0) || (objc_msgSend(v9, "safeAreaInsets"), v23 > v12))
    {
      [v9 safeAreaInsets];
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

- (void)_gripperTapped:(id)a3
{
  if ([a3 state] == 3)
  {
    [(BKEndOfBookCompactViewController *)self _reportFigaroCloseClickEventWithReason:@"buttonTap"];

    [(BKEndOfBookCompactViewController *)self dismiss];
  }
}

- (void)_animateScaleForPressed:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKEndOfBookCompactViewController *)self dropShadowView];
  memset(&v16, 0, sizeof(v16));
  if (v3)
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
  v14 = v4;
  v12 = v4;
  [v11 addAnimations:v13];
  [v11 startAnimation];
}

- (void)_contentTapCompleted
{
  [(BKEndOfBookCompactViewController *)self _presentCardWithReason:@"buttonTap" completion:0];

  [(BKEndOfBookCompactViewController *)self _animateScaleForPressed:0];
}

- (void)_anchorGripperView:(id)a3 toView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 topAnchor];
  v8 = [v5 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:15.0];
  v14[0] = v9;
  v10 = [v6 trailingAnchor];

  v11 = [v5 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11 constant:-14.5];
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_willDismissCardWithReason:(int64_t)a3
{
  objc_opt_class();
  v5 = [(BKEndOfBookCompactViewController *)self cardViewController];
  v8 = BUDynamicCast();

  v6 = [v8 cardNavigationController];
  v7 = [v6 currentFeedViewController];
  [v7 cardStackViewController:0 parentCardWillDismissWithReason:a3 targetViewController:self];
}

- (void)_presentCardWithReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKEndOfBookCompactViewController *)self cardViewController];
  if (v8 && ![(BKEndOfBookCompactViewController *)self isPresentingCard])
  {
    v11 = [(BKEndOfBookCompactViewController *)self presentedViewController];

    if (v11)
    {
      v12 = [(BKEndOfBookCompactViewController *)self presentedViewController];
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    [(BKEndOfBookCompactViewController *)self _reportFigaroOpenClickEventWithReason:v6];
    if (v7)
    {
      v13 = [(BKEndOfBookCompactViewController *)self presentationCompletionBlocks];
      v14 = objc_retainBlock(v7);
      [v13 addObject:v14];
    }

    v15 = [(BKEndOfBookCompactViewController *)self transitionAnimationController];

    if (!v15)
    {
      [v8 setTransitioningDelegate:self];
      v16 = [v8 presentationController];
      [v16 setDelegate:self];

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
      v19 = [v8 presentationController];
      v20 = BUDynamicCast();

      v21 = [(BKEndOfBookCompactViewController *)self dropShadowView];
      v22 = [v21 layer];
      [v22 cornerRadius];
      [v20 _setCornerRadiusForPresentationAndDismissal:?];

      [v20 _setShouldDismissWhenTappedOutside:1];
      v23 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v17];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v23];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10016AA14;
      v28[3] = &unk_100A074A8;
      objc_copyWeak(&v31, location);
      v29 = v8;
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
    v9 = objc_retainBlock(v7);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

- (id)animationControllerForCompactViewController:(id)a3 cardViewController:(id)a4 isPresenting:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = BUDynamicCast();
  v11 = objc_alloc_init(_UISheetAnimationController);
  [v11 setIsReversed:!v5];
  v12 = [v10 dropShadowView];
  v13 = [v10 dropShadowView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v10 view];
  v23 = [v22 superview];
  [v12 convertRect:v23 toView:{v15, v17, v19, v21}];
  [v11 setSourceFrame:?];

  objc_initWeak(&location, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10016AE54;
  v28[3] = &unk_100A03BB0;
  objc_copyWeak(&v29, &location);
  v30 = v5;
  [v11 addNoninteractiveAnimations:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016AEC8;
  v25[3] = &unk_100A063A0;
  objc_copyWeak(&v26, &location);
  v27 = v5;
  [v11 addNoninteractiveCompletion:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v11;
}

- (void)dismiss
{
  v3 = [(BKEndOfBookCompactViewController *)self delegate];
  [v3 endOfBookCompactViewControllerWantsToDismiss:self];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:1])
  {
    v9 = [(BKEndOfBookCompactViewController *)self animationControllerForCompactViewController:v8 cardViewController:v7 isPresenting:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
  {
    v5 = [(BKEndOfBookCompactViewController *)self animationControllerForCompactViewController:self cardViewController:v4 isPresenting:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldUseCoverAnimationWhenPresenting:(BOOL)a3
{
  v5 = [(BKEndOfBookCompactViewController *)self isPresented];
  v6 = a3 & v5;
  if (!a3 && (v5 & 1) != 0)
  {
    v6 = !self->_closingBook;
  }

  return v6 & 1;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v8 = [(BKEndOfBookCompactViewController *)self transitionCoordinator];
  if (([v8 isInteractive] & 1) == 0 && (objc_msgSend(v8, "isCancelled") & 1) == 0)
  {
    [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:2];
    if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
    {
      objc_opt_class();
      v4 = [(BKEndOfBookCompactViewController *)self cardViewController];
      v5 = BUDynamicCast();

      v6 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v5];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v6];

      v7 = [(BKEndOfBookCompactViewController *)self transitionAnimationController];
      [v7 prepareForDismissal];
    }
  }

  [(BKEndOfBookCompactViewController *)self _trackInteractiveDismissal];
}

- (void)presentationControllerDidDismiss:(id)a3
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
    v4 = [(BKEndOfBookCompactViewController *)self transitionCoordinator];
  }

  else
  {
    v5 = [(BKEndOfBookCompactViewController *)self cardViewController];
    v4 = [v5 transitionCoordinator];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016B30C;
  v6[3] = &unk_100A06F50;
  v6[4] = self;
  v7 = v3;
  [v4 notifyWhenInteractionChangesUsingBlock:v6];
}

- (void)endOfBookCardViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(BKEndOfBookCompactViewController *)self cardViewController];

  if (v5 == v4)
  {
    [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:1];
    if ([(BKEndOfBookCompactViewController *)self _shouldUseCoverAnimationWhenPresenting:0])
    {
      objc_opt_class();
      v6 = [(BKEndOfBookCompactViewController *)self cardViewController];
      v7 = BUDynamicCast();

      v8 = [[BKEndOfBookCardTransitionAnimationController alloc] initWithCompactViewController:self cardViewController:v7];
      [(BKEndOfBookCompactViewController *)self setTransitionAnimationController:v8];

      v9 = [(BKEndOfBookCompactViewController *)self transitionAnimationController];
      [v9 prepareForDismissal];
    }

    v10 = [(BKEndOfBookCompactViewController *)self cardViewController];
    v11 = [v10 presentingViewController];
    [v11 dismissViewControllerAnimated:1 completion:0];

    [(BKEndOfBookCompactViewController *)self _trackInteractiveDismissal];
  }
}

- (void)_closeAllCardsIncludingEOB:(id)a3 cardStackViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
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
  v12 = v8;
  v20 = v12;
  v21 = v9;
  v13 = v9;
  [v10 popAllCardsAnimated:1 completion:v19];
  [(BKEndOfBookCompactViewController *)self _willDismissCardWithReason:1];
  v14 = [v10 transitionCoordinator];

  v15 = [v12 view];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016B744;
  v17[3] = &unk_100A04410;
  v18 = v12;
  v16 = v12;
  [v14 animateAlongsideTransitionInView:v15 animation:v17 completion:0];
}

- (void)endOfBookCardViewControllerWantsToCloseToAsset:(id)a3 cardStackViewController:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016B85C;
  v8[3] = &unk_100A03788;
  v9 = self;
  v10 = a5;
  v7 = v10;
  [(BKEndOfBookCompactViewController *)v9 _closeAllCardsIncludingEOB:a3 cardStackViewController:a4 completion:v8];
}

- (void)endOfBookCardViewControllerWantsToCloseAsset:(id)a3 cardStackViewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKEndOfBookCompactViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKPrimaryScenePresenting];
  v12 = +[BKRootBarItemsProvider HomeIdentifier];
  [v11 presenterSelectTabWithIdentifier:v12];

  self->_closingBook = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10016B9E0;
  v14[3] = &unk_100A03788;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(BKEndOfBookCompactViewController *)self _closeAllCardsIncludingEOB:v10 cardStackViewController:v9 completion:v14];
}

- (id)ba_analyticsTracker
{
  v8.receiver = self;
  v8.super_class = BKEndOfBookCompactViewController;
  v3 = [(BKEndOfBookCompactViewController *)&v8 ba_analyticsTracker];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(BKEndOfBookCompactViewController *)self feedViewController];
    v5 = [v6 ba_analyticsTracker];
  }

  return v5;
}

- (void)_reportFigaroOpenClickEventWithReason:(id)a3
{
  v4 = a3;
  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v15 setObject:JSARecordActionTypeNavigate forKeyedSubscript:JSARecordKeyActionType];
  v5 = [(BKEndOfBookCompactViewController *)self contentView];
  v6 = [v5 superview];
  v7 = [(BKEndOfBookCompactViewController *)self contentView];
  [v7 center];
  [v6 convertPoint:0 toView:?];
  v9 = v8;
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v9];
  [v15 setObject:v12 forKeyedSubscript:JSARecordKeyPositionX];

  v13 = [NSNumber numberWithDouble:v11];
  [v15 setObject:v13 forKeyedSubscript:JSARecordKeyPositionY];

  v14 = [(BKEndOfBookCompactViewController *)self _additionalInfoForClickEvent:v4];

  [JSAApplication recordNativeEvent:v15 additionalInfo:v14];
}

- (void)_reportFigaroCloseClickEventWithReason:(id)a3
{
  v4 = a3;
  v15 = objc_alloc_init(NSMutableDictionary);
  [v15 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v15 setObject:JSARecordActionTypeDismiss forKeyedSubscript:JSARecordKeyActionType];
  v5 = [(BKEndOfBookCompactViewController *)self closeButton];
  v6 = [v5 superview];
  v7 = [(BKEndOfBookCompactViewController *)self closeButton];
  [v7 center];
  [v6 convertPoint:0 toView:?];
  v9 = v8;
  v11 = v10;

  v12 = [NSNumber numberWithDouble:v9];
  [v15 setObject:v12 forKeyedSubscript:JSARecordKeyPositionX];

  v13 = [NSNumber numberWithDouble:v11];
  [v15 setObject:v13 forKeyedSubscript:JSARecordKeyPositionY];

  v14 = [(BKEndOfBookCompactViewController *)self _additionalInfoForClickEvent:v4];

  [JSAApplication recordNativeEvent:v15 additionalInfo:v14];
}

- (id)_additionalInfoForClickEvent:(id)a3
{
  v4 = a3;
  v5 = [(BKEndOfBookCompactViewController *)self ba_effectiveAnalyticsTracker];
  v12[0] = @"tracker";
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v13[0] = v6;
  v12[1] = @"feed";
  v7 = [(BKEndOfBookCompactViewController *)self feedViewController];
  v8 = [v7 feed];
  v9 = v8;
  if (!v8)
  {
    v9 = +[NSNull null];
  }

  v12[2] = @"reason";
  v13[1] = v9;
  v13[2] = v4;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v8)
  {
  }

  if (!v5)
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