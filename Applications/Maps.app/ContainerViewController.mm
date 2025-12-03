@interface ContainerViewController
- (BOOL)_chromeEnabled;
- (BOOL)_isCurrentSheetDragging;
- (BOOL)_updateContaineeIfNeeded:(id)needed withLayout:(unint64_t)layout;
- (BOOL)cardDismissalHelperShouldObserveGestures:(id)gestures;
- (BOOL)controllerIsInStack:(id)stack;
- (BOOL)delaysFirstCardPresentation;
- (BOOL)hasMargin;
- (BOOL)hideContaineesOnViewDidDisappear;
- (BOOL)isVLFCrowdsourcingPermissionCardActive;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)presentationStackAppearsCorrectWithInternalStack:(id)stack uikitStack:(id)uikitStack;
- (BOOL)shouldHideCard;
- (BOOL)shouldPassPoint:(CGPoint)point withEvent:(id)event inView:(id)view;
- (BOOL)showVLFCrowdsourcingPermissionCardWithContaineeDelegate:(id)delegate delegate:(id)a4 completion:(id)completion;
- (CardAnimation)cardHeightAnimation;
- (ContaineeProtocol)currentOrPendingViewController;
- (ContaineeProtocol)currentViewController;
- (ContaineeProtocol)modalPresenter;
- (ContaineeProtocol)rootPresentingViewController;
- (ContainerDelegate)containerDelegate;
- (ContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (IOSBasedChromeContext)chromeContext;
- (IOSBasedChromeViewController)chromeViewController;
- (NSArray)visibleCardViews;
- (UIEdgeInsets)_calculateMapEdgeInsets;
- (UIEdgeInsets)mapAttributionInsets;
- (double)_cardHeightForComputingBottomMapEdgeInsets;
- (double)attributionVerticalPadding;
- (double)availableHeight;
- (double)availableHeightForViewController:(id)controller;
- (double)bottomEdgeInset;
- (double)bottomEdgePadding;
- (double)bottomLabelEdgeInsetWithMapEdgeInsets:(UIEdgeInsets)insets;
- (double)bottomSafeOffset;
- (double)dismissalRectTopEdgeForCardDismissalHelper:(id)helper coordinateSpace:(id)space;
- (double)edgePadding;
- (double)floatingContainerBottomVerticalPadding;
- (double)leadingEdgePadding;
- (double)leftSafeOffset;
- (double)mapPeek;
- (double)rightSafeOffset;
- (double)statusBarHeight;
- (double)topEdgePadding;
- (double)topLabelEdgeInset;
- (id)cardForViewController:(id)controller;
- (id)currentViewControllerWithPresentationStyle:(unint64_t)style;
- (id)internalStackLessWaitingForPresentation;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)uikitPresentationStack;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int64_t)VKApplicationUILayoutForStyle:(unint64_t)style;
- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)style;
- (unint64_t)layoutModalPresenter;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (unint64_t)overriddenLayoutForCurrentController:(unint64_t)controller;
- (unint64_t)transitionFrom:(id)from to:(id)to;
- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)insets;
- (void)_completeStateIfNeeded;
- (void)_dismissCurrentMenuViewControllerAnimated:(BOOL)animated;
- (void)_dismissMenuViewController:(id)controller animated:(BOOL)animated;
- (void)_dismissPresentedViewControllersIfNeededForViewController:(id)controller;
- (void)_installBottomPocketIfNeeded;
- (void)_internal_ensurePresentationsMatchContaineeStackAllowingFault:(BOOL)fault allowingAnimations:(BOOL)animations skipUnlock:(BOOL)unlock;
- (void)_notifyObserversWithContainerStyle:(unint64_t)style value:(double)value;
- (void)_notifyResizingObserversWithValue:(double)value onlyIfDragging:(BOOL)dragging;
- (void)_performDeferredMapEdgeInsetUpdate;
- (void)_popPalette:(BOOL)palette completion:(id)completion;
- (void)_presentCurrentMenuViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_presentMenuViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_pushPalette:(id)palette animated:(BOOL)animated completion:(id)completion;
- (void)_removeBottomPocketIfNeeded;
- (void)_sequentiallyPresentViewControllers:(id)controllers allowAnimations:(BOOL)animations;
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame;
- (void)_statusBarHeightChanged;
- (void)_unlockCardQueue;
- (void)_updateAttributionBadgeHiding;
- (void)_updateBackdropConstraints;
- (void)_updateBottomPocketForContaineeHeight:(double)height;
- (void)_updateContainerMargins;
- (void)_updateMapEdgeInsetsImmediately:(BOOL)immediately;
- (void)_updateOverrideTraitCollectionsForStyle:(unint64_t)style;
- (void)_updateVisibleContentForLayout:(unint64_t)layout;
- (void)addChildViewController:(id)controller;
- (void)animateAlongsideCardTransition;
- (void)assertPresentationStackAppearsCorrect;
- (void)containee:(id)containee didChangeLayout:(unint64_t)layout;
- (void)containee:(id)containee willChangeLayout:(unint64_t)layout source:(unint64_t)source;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)style;
- (void)containerStyleManagerWillChangeStyle:(unint64_t)style;
- (void)contentHeightUpdatedWithValue:(double)value;
- (void)controller:(id)controller wantsLayout:(unint64_t)layout;
- (void)customInit;
- (void)didChangeStyle:(unint64_t)style;
- (void)didPresentContainee:(id)containee finished:(BOOL)finished;
- (void)didResignContainee:(id)containee finished:(BOOL)finished;
- (void)expandContainee:(id)containee;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)macMenuPresentationControllerDidDismiss:(id)dismiss;
- (void)macMenuPresentationControllerWillDismiss:(id)dismiss;
- (void)minimizeContainee:(id)containee;
- (void)popLastViewControllerAnimated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout;
- (void)popLastViewControllerFromViewController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout;
- (void)popLastViewControllerWithInitialVelocity:(double)velocity;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)registerResizingObserver:(id)observer withBlock:(id)block;
- (void)removeCardforViewController:(id)controller;
- (void)removeChildViewController:(id)controller;
- (void)removeControllerFromStack:(id)stack;
- (void)replaceCurrentWithController:(id)controller moveToContaineeDefaultLayout:(BOOL)layout;
- (void)replaceCurrentWithController:(id)controller moveToContaineeLayout:(unint64_t)layout;
- (void)requestDismissalWithCardDismissalHelper:(id)helper;
- (void)reset;
- (void)resumePropagatingEdgeInsets;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setCaptureViewForCardView:(id)view;
- (void)setChromeHidden:(BOOL)hidden;
- (void)setContaineesHidden:(BOOL)hidden;
- (void)setControllerStack:(id)stack animated:(BOOL)animated completion:(id)completion;
- (void)setCurrentViewController:(id)controller;
- (void)setFullscreenMode:(BOOL)mode;
- (void)setLayoutIfSupported:(unint64_t)supported animated:(BOOL)animated source:(unint64_t)source;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setUseBackdropFullScreen:(BOOL)screen;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
- (void)sidebarVisibilityDidChange:(BOOL)change;
- (void)snapToLayout:(unint64_t)layout;
- (void)suspendPropagatingEdgeInsetsForReason:(id)reason;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionEnded;
- (void)updateContaineeStackState;
- (void)updateEdgeInsets:(UIEdgeInsets)insets immediately:(BOOL)immediately;
- (void)updateHeightConstraintWithValue:(double)value;
- (void)updateLayoutAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willChangeStyle:(unint64_t)style;
- (void)willPresentContainee:(id)containee animated:(BOOL)animated;
- (void)willResignContainee:(id)containee animated:(BOOL)animated;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation ContainerViewController

- (void)customInit
{
  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  cards = self->_cards;
  self->_cards = v3;

  self->_containeeLayout = 0;
  v5 = objc_alloc_init(ContainerStack);
  containerStack = self->_containerStack;
  self->_containerStack = v5;

  v7 = [[ContainerStyleManager alloc] initWithContainer:self];
  containerStyleManager = self->_containerStyleManager;
  self->_containerStyleManager = v7;

  v9 = [[ContainerTransitionManager alloc] initWithContainer:self];
  transitionManager = self->_transitionManager;
  self->_transitionManager = v9;

  v11 = objc_alloc_init(CardAnimationManager);
  animationManager = self->_animationManager;
  self->_animationManager = v11;

  v13 = objc_alloc_init(CardProvider);
  cardProvider = self->_cardProvider;
  self->_cardProvider = v13;

  v15 = +[MapsRadarController sharedInstance];
  [v15 addAttachmentProvider:self];
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = ContainerViewController;
  [(ContainerViewController *)&v59 viewDidLoad];
  view = [(ContainerViewController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_statusBarHeightChanged" name:@"IOSBasedChromeStatusBarHeightDidUpdateNotification" object:0];

  v6 = [UIView alloc];
  view2 = [(ContainerViewController *)self view];
  [view2 bounds];
  v8 = [v6 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v8;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView setUserInteractionEnabled:0];
  v10 = +[UIColor clearColor];
  [(UIView *)self->_containerView setBackgroundColor:v10];

  LODWORD(v11) = 1148846080;
  [(UIView *)self->_containerView setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UIView *)self->_containerView setContentHuggingPriority:0 forAxis:v12];
  view3 = [(ContainerViewController *)self view];
  [view3 addSubview:self->_containerView];

  v14 = +[MKSystemController sharedInstance];
  LODWORD(view2) = [v14 isInternalInstall];

  if (view2)
  {
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 BOOLForKey:@"__internal__DisableChrome"];
    view4 = [(ContainerViewController *)self view];
    [view4 setHidden:v16];
  }

  if ([(ContainerViewController *)self useBackdrop])
  {
    v18 = [BackdropView alloc];
    view5 = [(ContainerViewController *)self view];
    [view5 bounds];
    v20 = [(BackdropView *)v18 initWithFrame:?];
    backdropView = self->_backdropView;
    self->_backdropView = v20;

    [(BackdropView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    blurGroupName = [(ContainerViewController *)self blurGroupName];
    captureGroup = [(BackdropView *)self->_backdropView captureGroup];
    [captureGroup setGroupName:blurGroupName];

    LODWORD(v24) = 1148846080;
    [(BackdropView *)self->_backdropView setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(BackdropView *)self->_backdropView setContentHuggingPriority:0 forAxis:v25];
    view6 = [(ContainerViewController *)self view];
    [view6 insertSubview:self->_backdropView atIndex:0];

    [(ContainerViewController *)self _updateBackdropConstraints];
  }

  if (self->_enableMacPresentationStyles)
  {
    v27 = [[SupplementalStackViewController alloc] initWithTopSafeAreaInsetConstraining:1];
    paletteViewController = self->_paletteViewController;
    self->_paletteViewController = v27;

    v29 = +[UIColor secondarySystemBackgroundColor];
    view7 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [view7 setBackgroundColor:v29];

    view8 = [(ContainerViewController *)self view];
    view9 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [view8 addSubview:view9];

    view10 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [view10 setTranslatesAutoresizingMaskIntoConstraints:0];

    view11 = [(SupplementalStackViewController *)self->_paletteViewController view];
    widthAnchor = [view11 widthAnchor];
    v36 = [widthAnchor constraintEqualToConstant:0.0];
    paletteWidthConstraint = self->_paletteWidthConstraint;
    self->_paletteWidthConstraint = v36;

    view12 = [(SupplementalStackViewController *)self->_paletteViewController view];
    topAnchor = [view12 topAnchor];
    view13 = [(ContainerViewController *)self view];
    topAnchor2 = [view13 topAnchor];
    v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v60[0] = v54;
    view14 = [(SupplementalStackViewController *)self->_paletteViewController view];
    leadingAnchor = [view14 leadingAnchor];
    view15 = [(ContainerViewController *)self view];
    leadingAnchor2 = [view15 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v60[1] = v39;
    view16 = [(SupplementalStackViewController *)self->_paletteViewController view];
    bottomAnchor = [view16 bottomAnchor];
    view17 = [(ContainerViewController *)self view];
    bottomAnchor2 = [view17 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45 = self->_paletteWidthConstraint;
    v60[2] = v44;
    v60[3] = v45;
    v46 = [NSArray arrayWithObjects:v60 count:4];
    [NSLayoutConstraint activateConstraints:v46];

    [(ContainerViewController *)self addChildViewController:self->_paletteViewController];
    [(SupplementalStackViewController *)self->_paletteViewController didMoveToParentViewController:self];
  }

  self->_hideAttributionBadgeWhileDragging = 1;
  self->_permitHidingAttributionBadgeWhileDragging = GEOConfigGetBOOL();
  v47 = UIEdgeInsetsNull[1];
  *&self->_deferredEdgeInsets.top = UIEdgeInsetsNull[0];
  *&self->_deferredEdgeInsets.bottom = v47;
  GEOConfigGetDouble();
  self->_edgeInsetUpdateDeferralInterval = v48;
  self->_usesFadingLabels = GEOConfigGetBOOL();
  self->_usesVariableBlur = GEOConfigGetBOOL();
  if (GEOConfigGetBOOL())
  {
    v49 = GEOConfigGetBOOL() ^ 1;
  }

  else
  {
    v49 = 0;
  }

  self->_permitsBottomPocket = v49;
  self->_shouldAdjustBottomPocketAlphaOnResize = GEOConfigGetBOOL();
  self->_hideBottomPocketForAllSidebarLayouts = GEOConfigGetBOOL();
  GEOConfigGetDouble();
  self->_bottomPocketHidingHeightThreshold = v50;
}

- (void)_updateBackdropConstraints
{
  if (self->_backdropConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (self->_useBackdropFullScreen)
  {
    view = [(ContainerViewController *)self view];
  }

  else
  {
    view = self->_containerView;
  }

  v4 = view;
  topAnchor = [(BackdropView *)self->_backdropView topAnchor];
  topAnchor2 = [(UIView *)v4 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v16;
  bottomAnchor = [(BackdropView *)self->_backdropView bottomAnchor];
  bottomAnchor2 = [(UIView *)v4 bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[1] = v5;
  leadingAnchor = [(BackdropView *)self->_backdropView leadingAnchor];
  leadingAnchor2 = [(UIView *)v4 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[2] = v8;
  trailingAnchor = [(BackdropView *)self->_backdropView trailingAnchor];
  trailingAnchor2 = [(UIView *)v4 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[3] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:4];
  backdropConstraints = self->_backdropConstraints;
  self->_backdropConstraints = v12;

  [NSLayoutConstraint activateConstraints:self->_backdropConstraints];
}

- (double)edgePadding
{
  if (sub_10000FA08(self) == 5 || ![(ContainerViewController *)self hasMargin])
  {

    return sub_100019A44();
  }

  else
  {
    view = [(ContainerViewController *)self view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
    [view safeAreaInsets];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7 + -21.0;

    return v8;
  }
}

- (double)bottomEdgePadding
{
  if (sub_10000FA08(self) == 5)
  {

    return sub_100019A44();
  }

  else
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    if ([cardPresentationController usingSheetPresentation])
    {
      currentViewController2 = [(ContainerViewController *)self currentViewController];
      cardPresentationController2 = [currentViewController2 cardPresentationController];
      takesAvailableWidth = [cardPresentationController2 takesAvailableWidth];
    }

    else
    {
      takesAvailableWidth = 0;
    }

    containerStyle = [(ContainerViewController *)self containerStyle];
    if (containerStyle <= 7 && ((1 << containerStyle) & 0xA3) != 0 || (sub_10000FA08(self) == 5) | takesAvailableWidth & 1)
    {
      if (sub_10000FA08(self) || (_UISolariumEnabled() & 1) == 0)
      {

        [(ContainerViewController *)self edgePadding];
      }

      else
      {
        return 10.0;
      }
    }

    else
    {

      [(ContainerViewController *)self floatingContainerBottomVerticalPadding];
    }
  }

  return result;
}

- (ContaineeProtocol)currentViewController
{
  if (self->_enableMacPresentationStyles)
  {
    presentedViewController = [(ContainerViewController *)self presentedViewController];
    if (presentedViewController)
    {
      v4 = presentedViewController;
      presentedViewController2 = [(ContainerViewController *)self presentedViewController];
      v6 = [presentedViewController2 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

      if (v6)
      {
        presentedViewController3 = [(ContainerViewController *)self presentedViewController];
        if ([(ContaineeProtocol *)presentedViewController3 preferredPresentationStyle]== 5)
        {
          goto LABEL_9;
        }
      }
    }
  }

  if (self->_willBeginDisplayingInLockScreen)
  {
    lastState = [(ContainerStack *)self->_containerStack lastState];
    presentedViewController3 = [lastState viewController];
  }

  else
  {
    presentedViewController3 = self->_currentViewController;
  }

LABEL_9:

  return presentedViewController3;
}

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (BOOL)hasMargin
{
  view = [(ContainerViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
  [view safeAreaInsets];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 > 0.0;

  return v7;
}

- (double)statusBarHeight
{
  iosBasedChromeViewController = [(ContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController statusBarHeight];
  v4 = v3;

  return v4;
}

- (double)bottomSafeOffset
{
  v3 = 0.0;
  if ([(ContainerViewController *)self containerStyle]!= 6)
  {
    view = [(ContainerViewController *)self view];
    window = [view window];

    if (window)
    {
      goto LABEL_3;
    }

    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {
      currentViewController = [(ContainerViewController *)self currentViewController];
      view2 = [currentViewController view];
      window = [view2 window];

      if (window)
      {
LABEL_3:
        [window safeAreaInsets];
        v3 = v6;
      }
    }
  }

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = ContainerViewController;
  [(ContainerViewController *)&v5 viewWillLayoutSubviews];
  view = [(ContainerViewController *)self view];
  superview = [view superview];

  if (superview)
  {
    [(ContainerStyleManager *)self->_containerStyleManager updateLayoutStyle];
  }
}

- (void)viewDidLayoutSubviews
{
  [(ContainerViewController *)self _updateContainerMargins];
  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 viewDidLayoutSubviews];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if ((byte_10195DF08 & 1) == 0 && ![(ContainerViewController *)self delaysFirstCardPresentation])
  {
    [(ContainerViewController *)self _unlockCardQueue];
  }

  superview = [(StatusBarBackgroundView *)self->_bottomPocketView superview];

  if (superview)
  {
    if (self->_bottomPocketHidingHeightThreshold <= 0.0)
    {
      v4 = 0;
    }

    else
    {
      [(StatusBarBackgroundView *)self->_bottomPocketView bounds];
      v4 = CGRectGetHeight(v17) < self->_bottomPocketHidingHeightThreshold;
    }

    if (self->_bottomPocketIsTooSmall != v4)
    {
      self->_bottomPocketIsTooSmall = v4;
      v5 = sub_10002A8B8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = @"NO";
        if (v4)
        {
          v6 = @"YES";
        }

        v7 = v6;
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Pocket height did cross threshold: too small? %{public}@", buf, 0xCu);
      }
    }
  }

  view = [(ContainerViewController *)self view];
  superview2 = [view superview];
  if (superview2)
  {
    v10 = superview2;
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    usingSheetPresentation = [cardPresentationController usingSheetPresentation];

    if (usingSheetPresentation)
    {
      [(ContainerViewController *)self _cardHeightForComputingBottomMapEdgeInsets];
      [(ContainerViewController *)self contentHeightUpdatedWithValue:?];
    }
  }

  else
  {
  }
}

- (void)_updateContainerMargins
{
  view = [(ContainerViewController *)self view];
  superview = [view superview];

  if (superview)
  {
    [(ContainerStyleManager *)self->_containerStyleManager updateLayoutStyle];
  }

  [(ContainerViewController *)self _updateMapEdgeInsetsImmediately:0];

  [(ContainerViewController *)self _updateAttributionBadgeHiding];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ContainerViewController;
  [(ContainerViewController *)&v3 viewLayoutMarginsDidChange];
  [(ContainerViewController *)self _updateContainerMargins];
}

- (NSArray)visibleCardViews
{
  visibleViewControllers = [(ContainerViewController *)self visibleViewControllers];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [visibleViewControllers count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  visibleViewControllers2 = [(ContainerViewController *)self visibleViewControllers];
  v6 = [visibleViewControllers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(visibleViewControllers2);
        }

        v10 = [(NSMapTable *)self->_cards objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [visibleViewControllers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (UIEdgeInsets)_calculateMapEdgeInsets
{
  viewIfLoaded = [(ContainerViewController *)self viewIfLoaded];
  if (!viewIfLoaded)
  {
    goto LABEL_8;
  }

  v4 = viewIfLoaded;
  view = [(ContainerViewController *)self view];
  superview = [view superview];

  if (!superview)
  {
    goto LABEL_8;
  }

  view2 = [(ContainerViewController *)self view];
  [view2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(ContainerViewController *)self topEdgeInset];
  top = v16;
  [(ContainerViewController *)self bottomEdgeInset];
  bottom = v18;
  [(ContainerViewController *)self leftSafeOffset];
  left = v20;
  if (sub_10000FA08(self) == 5)
  {
    view3 = [(ContainerViewController *)self view];
    [view3 safeAreaInsets];
    left = v23 + left;
  }

  [(ContainerViewController *)self rightSafeOffset];
  right = v24;
  if (sub_10000FA08(self) == 5)
  {
    view4 = [(ContainerViewController *)self view];
    [view4 safeAreaInsets];
    right = v27 + right;
  }

  if (!self->_chromeHidden)
  {
    view5 = [(ContainerViewController *)self view];
    v33 = [view5 effectiveUserInterfaceLayoutDirection] == 1;

    stackOnOppositeSide = [(ContainerViewController *)self stackOnOppositeSide];
    v35 = sub_10000FA08(self);
    isContaineeStackEmpty = [(ContainerViewController *)self isContaineeStackEmpty];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      isContaineeStackEmpty = [(ContainerViewController *)self isContaineeStackEmpty];
      if (!isContaineeStackEmpty && v35 == 5)
      {
        currentViewController = [(ContainerViewController *)self currentViewController];
        if (currentViewController)
        {
          currentViewController2 = [(ContainerViewController *)self currentViewController];
          isContaineeStackEmpty = [currentViewController2 preferredPresentationStyle] > 1;
        }

        else
        {
          isContaineeStackEmpty = 1;
        }
      }
    }

    currentViewController3 = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController3 cardPresentationController];
    if ([cardPresentationController usingSheetPresentation])
    {
      currentViewController4 = [(ContainerViewController *)self currentViewController];
      cardPresentationController2 = [currentViewController4 cardPresentationController];
      takesAvailableWidth = [cardPresentationController2 takesAvailableWidth];
    }

    else
    {
      takesAvailableWidth = 0;
    }

    if (!self->_chromeHidden)
    {
      containerStyle = [(ContainerViewController *)self containerStyle];
      if ((containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0) && ((isContaineeStackEmpty | takesAvailableWidth) & 1) == 0)
      {
        if (v33 != stackOnOppositeSide)
        {
          v49.origin.x = v9;
          v49.origin.y = v11;
          v49.size.width = v13;
          v49.size.height = v15;
          MaxX = CGRectGetMaxX(v49);
          [(UIView *)self->_containerView frame];
          v46 = MaxX - CGRectGetMinX(v50);
          v47 = left;
          v48 = v46;
        }

        else
        {
          [(UIView *)self->_containerView frame];
          v47 = CGRectGetMaxX(v51);
          v46 = right;
          v48 = v47;
        }

        if (fabs(v48) > 2.22044605e-16)
        {
          right = v46;
          left = v47;
        }
      }
    }
  }

  else
  {
LABEL_8:
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v28 = top;
  v29 = left;
  v30 = bottom;
  v31 = right;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (double)bottomEdgeInset
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004CF68;
  v13[3] = &unk_101623350;
  v13[4] = self;
  v14 = usingSheetPresentation;
  v6 = objc_retainBlock(v13);
  containerStyle = [(ContainerViewController *)self containerStyle];
  v8 = 0.0;
  if (containerStyle - 2 < 3)
  {
    if (!usingSheetPresentation)
    {
      goto LABEL_8;
    }

    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController2 cardPresentationController];
    takesAvailableWidth = [cardPresentationController2 takesAvailableWidth];

    if (!takesAvailableWidth)
    {
      goto LABEL_8;
    }

LABEL_7:
    v8 = (v6[2])(v6);
    goto LABEL_8;
  }

  if (containerStyle == 1 || containerStyle == 5)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (double)leftSafeOffset
{
  if (self->_enableMacPresentationStyles)
  {
    view = [(ContainerViewController *)self view];
    if ([view effectiveUserInterfaceLayoutDirection] == 1)
    {
    }

    else
    {
      isEmpty = [(SupplementalStackViewController *)self->_paletteViewController isEmpty];

      if ((isEmpty & 1) == 0)
      {
        view2 = [(SupplementalStackViewController *)self->_paletteViewController view];
        [view2 frame];
        Width = CGRectGetWidth(v10);

        return Width;
      }
    }
  }

  hasMargin = [(ContainerViewController *)self hasMargin];
  result = 0.0;
  if (hasMargin)
  {
    interfaceOrientation = [(ContainerViewController *)self interfaceOrientation];
    result = 0.0;
    if (interfaceOrientation == 3)
    {
      return 21.0;
    }
  }

  return result;
}

- (double)rightSafeOffset
{
  if (self->_enableMacPresentationStyles)
  {
    view = [(ContainerViewController *)self view];
    if ([view effectiveUserInterfaceLayoutDirection] == 1)
    {
      isEmpty = [(SupplementalStackViewController *)self->_paletteViewController isEmpty];

      if ((isEmpty & 1) == 0)
      {
        view2 = [(SupplementalStackViewController *)self->_paletteViewController view];
        [view2 frame];
        Width = CGRectGetWidth(v10);

        return Width;
      }
    }

    else
    {
    }
  }

  hasMargin = [(ContainerViewController *)self hasMargin];
  result = 0.0;
  if (hasMargin)
  {
    interfaceOrientation = [(ContainerViewController *)self interfaceOrientation];
    result = 0.0;
    if (interfaceOrientation == 4)
    {
      return 21.0;
    }
  }

  return result;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = ContainerViewController;
  [(ContainerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(ContainerViewController *)self snapToLayout:[(ContainerViewController *)self containeeLayout]];
}

- (IOSBasedChromeContext)chromeContext
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeContext);

  return WeakRetained;
}

- (BOOL)hideContaineesOnViewDidDisappear
{
  if ([(ContainerViewController *)self shouldHideCard]|| ([(ContainerViewController *)self chromeContext], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    contexts = [chromeViewController contexts];
    chromeContext = [(ContainerViewController *)self chromeContext];
    v7 = [contexts containsObject:chromeContext] ^ 1;
  }

  return v7;
}

- (BOOL)shouldHideCard
{
  if (![(ContainerViewController *)self _chromeEnabled])
  {
    return 1;
  }

  chromeViewController = [(ContainerViewController *)self chromeViewController];

  if (!chromeViewController)
  {
    return 0;
  }

  chromeContext = [(ContainerViewController *)self chromeContext];
  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  v6 = chromeViewController2;
  if (chromeContext)
  {
    isHidingCards = [chromeViewController2 isHidingCardsForContext:chromeContext];
  }

  else
  {
    isHidingCards = [chromeViewController2 isHidingCards];
  }

  v8 = isHidingCards;

  return v8;
}

- (BOOL)_chromeEnabled
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  _internal_isChromeDisabled = [chromeViewController _internal_isChromeDisabled];

  return _internal_isChromeDisabled ^ 1;
}

- (double)topEdgePadding
{
  v3 = sub_10000FA08(self);
  v4 = sub_100019A44();
  if (v3 != 5)
  {
    [(ContainerViewController *)self statusBarHeight];
    return v5 + v4;
  }

  return v4;
}

- (id)internalStackLessWaitingForPresentation
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        presentingViewController = [v9 presentingViewController];
        if (presentingViewController && ![v9 isBeingDismissed])
        {

LABEL_11:
          [v3 addObject:v9];
          continue;
        }

        v11 = [(ContainerTransitionManager *)self->_transitionManager hasWaitingTransitionForViewController:v9];

        if ((v11 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = sub_10002A8B8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ containerStackLessControllersWaitingForPresentation %@", buf, 0x16u);
  }

  return v3;
}

- (id)uikitPresentationStack
{
  v3 = +[NSMutableArray array];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  presentedViewController = [chromeViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      [v3 addObject:presentedViewController];
      v5PresentedViewController = [presentedViewController presentedViewController];

      presentedViewController = v5PresentedViewController;
    }

    while (v5PresentedViewController);
  }

  v7 = sub_10002A8B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ UIKitPresentationStack %@", &v9, 0x16u);
  }

  return v3;
}

- (void)_unlockCardQueue
{
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004FD58;
  v28[3] = &unk_101661B18;
  v28[4] = self;
  v3 = objc_retainBlock(v28);
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    presentedViewController = [currentViewController presentedViewController];

    currentViewController2 = [(ContainerViewController *)self currentViewController];
    presentedViewController2 = [currentViewController2 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    currentViewController3 = [(ContainerViewController *)self currentViewController];
    presentedViewController3 = [currentViewController3 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 1;
    }

    else
    {
      currentViewController4 = [(ContainerViewController *)self currentViewController];
      presentedViewController4 = [currentViewController4 presentedViewController];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();
    }

    if ([(ContainerViewController *)self isRootContainer])
    {
      chromeViewController = [(ContainerViewController *)self chromeViewController];
      presentedViewController5 = [chromeViewController presentedViewController];
      if (presentedViewController5)
      {
        v16 = presentedViewController5;
        chromeViewController2 = [(ContainerViewController *)self chromeViewController];
        presentedViewController6 = [chromeViewController2 presentedViewController];
        v19 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:0];
        [v19 viewController];
        v20 = v27 = isKindOfClass;

        v21 = presentedViewController6 == v20;
        isKindOfClass = v27;
        if (!v21)
        {
          chromeViewController3 = [(ContainerViewController *)self chromeViewController];
LABEL_17:
          v26 = chromeViewController3;
          [chromeViewController3 dismissViewControllerAnimated:1 completion:v3];

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    if (!((presentedViewController == 0 || (isKindOfClass & 1) == 0) | v11 & 1))
    {
      currentViewController5 = [(ContainerViewController *)self currentViewController];
      presentedViewController7 = [currentViewController5 presentedViewController];
      isBeingDismissed = [presentedViewController7 isBeingDismissed];

      if ((isBeingDismissed & 1) == 0)
      {
        chromeViewController3 = [(ContainerViewController *)self currentViewController];
        goto LABEL_17;
      }
    }
  }

  (v3[2])(v3);
LABEL_15:
}

- (double)_cardHeightForComputingBottomMapEdgeInsets
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  isBeingDismissed = [currentViewController isBeingDismissed];
  if ((isBeingDismissed & 1) == 0)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    v6 = 0.0;
    if (![currentViewController2 isBeingPresented])
    {
      goto LABEL_8;
    }
  }

  currentViewController3 = [(ContainerViewController *)self currentViewController];
  presentingViewController = [currentViewController3 presentingViewController];
  v9 = sub_100010C34(presentingViewController, &OBJC_PROTOCOL___ContaineeProtocol);

  if (isBeingDismissed)
  {

    v6 = 0.0;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = 0.0;
  if (v9)
  {
LABEL_7:
    currentViewController4 = [(ContainerViewController *)self currentViewController];
    presentingViewController2 = [currentViewController4 presentingViewController];
    currentViewController = [presentingViewController2 sheetPresentationController];

    currentViewController2 = [currentViewController containerView];
    [currentViewController2 bounds];
    Height = CGRectGetHeight(v19);
    [currentViewController _currentPresentedViewFrame];
    v6 = Height - CGRectGetMinY(v20);
LABEL_8:
  }

LABEL_9:
  currentViewController5 = [(ContainerViewController *)self currentViewController];
  sheetPresentationController = [currentViewController5 sheetPresentationController];

  containerView = [sheetPresentationController containerView];
  [containerView bounds];
  v16 = CGRectGetHeight(v21);
  [sheetPresentationController _currentPresentedViewFrame];
  v17 = v16 - CGRectGetMinY(v22);

  return fmax(v6, v17);
}

- (ContainerDelegate)containerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005DB8C8;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)macMenuPresentationControllerDidDismiss:(id)dismiss
{
  [dismiss removeObserver:self];

  [(ContainerViewController *)self _presentCurrentMenuViewControllerAnimated:1 completion:0];
}

- (void)macMenuPresentationControllerWillDismiss:(id)dismiss
{
  currentMenuViewController = self->_currentMenuViewController;
  dismissCopy = dismiss;
  macMenuPresentationController = [(ContaineeProtocol *)currentMenuViewController macMenuPresentationController];

  if (macMenuPresentationController == dismissCopy)
  {
    v7 = self->_currentMenuViewController;
    self->_currentMenuViewController = 0;
  }
}

- (void)_dismissCurrentMenuViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentMenuViewController = self->_currentMenuViewController;
  if (currentMenuViewController)
  {
    [(ContainerViewController *)self _dismissMenuViewController:currentMenuViewController animated:animatedCopy];
  }
}

- (void)_dismissMenuViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    currentMenuViewController = self->_currentMenuViewController;
    if (currentMenuViewController == controllerCopy)
    {
      self->_currentMenuViewController = 0;
      v11 = controllerCopy;

      macMenuPresentationController = [(ContaineeProtocol *)v11 macMenuPresentationController];
      isPresented = [macMenuPresentationController isPresented];

      controllerCopy = v11;
      if (isPresented)
      {
        macMenuPresentationController2 = [(ContaineeProtocol *)v11 macMenuPresentationController];
        [macMenuPresentationController2 dismissAnimated:animatedCopy completion:&stru_101623430];

        controllerCopy = v11;
      }
    }
  }
}

- (void)_presentCurrentMenuViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentMenuViewController = self->_currentMenuViewController;
  if (!currentMenuViewController)
  {
    goto LABEL_5;
  }

  macMenuPresentationController = [(ContaineeProtocol *)currentMenuViewController macMenuPresentationController];
  if ([macMenuPresentationController isPresented])
  {

    goto LABEL_5;
  }

  macMenuPresentationController2 = [(ContaineeProtocol *)self->_currentMenuViewController macMenuPresentationController];
  isDismissing = [macMenuPresentationController2 isDismissing];

  if (isDismissing)
  {
LABEL_5:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_14;
  }

  macMenuPresentationController3 = [(ContaineeProtocol *)self->_currentMenuViewController macMenuPresentationController];
  containerViewController = [macMenuPresentationController3 containerViewController];

  if (!containerViewController)
  {
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {
      [macMenuPresentationController3 setContainerViewController:self];
    }

    else
    {
      chromeViewController = [(ContainerViewController *)self chromeViewController];
      [macMenuPresentationController3 setContainerViewController:chromeViewController];
    }
  }

  [macMenuPresentationController3 addObserver:self];
  containerViewController2 = [macMenuPresentationController3 containerViewController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005DBD64;
  v15[3] = &unk_101661760;
  v16 = completionCopy;
  [macMenuPresentationController3 presentFromViewController:containerViewController2 animated:animatedCopy completion:v15];

LABEL_14:
}

- (void)_presentMenuViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  currentMenuViewController = self->_currentMenuViewController;
  if (currentMenuViewController)
  {
    [(ContainerViewController *)self _dismissCurrentMenuViewControllerAnimated:animatedCopy];
    currentMenuViewController = self->_currentMenuViewController;
  }

  self->_currentMenuViewController = controllerCopy;

  [(ContainerViewController *)self _presentCurrentMenuViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)_popPalette:(BOOL)palette completion:(id)completion
{
  [(SupplementalStackViewController *)self->_paletteViewController popContainee:palette completion:completion];
  if ([(SupplementalStackViewController *)self->_paletteViewController isEmpty])
  {
    paletteWidthConstraint = self->_paletteWidthConstraint;

    [(NSLayoutConstraint *)paletteWidthConstraint setConstant:0.0];
  }
}

- (void)_pushPalette:(id)palette animated:(BOOL)animated completion:(id)completion
{
  [(SupplementalStackViewController *)self->_paletteViewController pushContainee:palette animated:animated completion:completion];
  paletteWidthConstraint = self->_paletteWidthConstraint;

  [(NSLayoutConstraint *)paletteWidthConstraint setConstant:282.0];
}

- (void)_dismissPresentedViewControllersIfNeededForViewController:(id)controller
{
  controllerCopy = controller;
  topMostPresentedViewController = [(ContainerViewController *)self topMostPresentedViewController];
  topMostPresentedViewController2 = topMostPresentedViewController;
  if (topMostPresentedViewController && topMostPresentedViewController != self)
  {
    while (1)
    {
      if ([(ContainerStack *)self->_containerStack indexOfContainee:topMostPresentedViewController2]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }

      v6 = sub_10002A8B8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        break;
      }

LABEL_24:

      BOOL = GEOConfigGetBOOL();
      v28 = sub_10002A8B8();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
      if (!BOOL)
      {
        if (v29)
        {
          selfCopy = self;
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

          v40 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
          v41 = v40;
          if (v40 && ![v40 isEqualToString:v39])
          {
            selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v39, selfCopy, v41];
          }

          else
          {

LABEL_44:
            selfCopy = [NSString stringWithFormat:@"%@<%p>", v39, selfCopy];
          }

          *buf = 138543362;
          v47 = selfCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}@] Allowing presentation on top of non-containee VC (opted out via config)", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v29)
      {
        selfCopy2 = self;
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_30;
        }

        v33 = [(ContainerViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v32, selfCopy2, v34];
        }

        else
        {

LABEL_30:
          selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v32, selfCopy2];
        }

        *buf = 138543362;
        v47 = selfCopy2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}@] Dismissing non-containee VC before presenting new VC", buf, 0xCu);
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1005DC4F8;
      v44[3] = &unk_101661B18;
      v45 = topMostPresentedViewController2;
      v36 = topMostPresentedViewController2;
      [UIViewController _performWithoutDeferringTransitions:v44];

      topMostPresentedViewController2 = [(ContainerViewController *)self topMostPresentedViewController];

      if (!topMostPresentedViewController2 || topMostPresentedViewController2 == self)
      {
        goto LABEL_47;
      }
    }

    selfCopy3 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ContainerViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy3, v11];

LABEL_10:
        v13 = selfCopy3;
        v14 = controllerCopy;
        if (!controllerCopy)
        {
          v19 = @"<nil>";
LABEL_18:

          v20 = v19;
          v21 = topMostPresentedViewController2;
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          if (objc_opt_respondsToSelector())
          {
            v24 = [(ContainerViewController *)v21 performSelector:"accessibilityIdentifier"];
            v25 = v24;
            if (v24 && ![v24 isEqualToString:v23])
            {
              v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

              goto LABEL_23;
            }
          }

          v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_23:

          *buf = 138543874;
          v47 = v13;
          v48 = 2114;
          v49 = v20;
          v50 = 2114;
          v51 = v26;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Attempting to present VC (%{public}@) on top of a non-containee VC (%{public}@)", buf, 0x20u);

          goto LABEL_24;
        }

        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v14 performSelector:"accessibilityIdentifier"];
          v18 = v17;
          if (v17 && ![v17 isEqualToString:v16])
          {
            v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

            goto LABEL_16;
          }
        }

        v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_16:

        goto LABEL_18;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy3];
    goto LABEL_10;
  }

LABEL_47:
}

- (void)_sequentiallyPresentViewControllers:(id)controllers allowAnimations:(BOOL)animations
{
  animationsCopy = animations;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1005DC5F8;
  v12 = &unk_101661A90;
  controllersCopy = controllers;
  v13 = controllersCopy;
  selfCopy = self;
  v7 = objc_retainBlock(&v9);
  v8 = v7;
  if (animationsCopy)
  {
    (v7[2])(v7);
  }

  else
  {
    [UIView performWithoutAnimation:v7, v9, v10, v11, v12];
  }
}

- (void)_internal_ensurePresentationsMatchContaineeStackAllowingFault:(BOOL)fault allowingAnimations:(BOOL)animations skipUnlock:(BOOL)unlock
{
  animationsCopy = animations;
  faultCopy = fault;
  v9 = sub_10002A8B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy6 = self;
    v36 = 2080;
    v37 = "[ContainerViewController _internal_ensurePresentationsMatchContaineeStackAllowingFault:allowingAnimations:skipUnlock:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ %s", buf, 0x16u);
  }

  if (-[ContainerViewController allowsDisplayOnLockScreen](self, "allowsDisplayOnLockScreen") || (-[ContainerViewController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    internalStackLessWaitingForPresentation = [(ContainerViewController *)self internalStackLessWaitingForPresentation];
    uikitPresentationStack = [(ContainerViewController *)self uikitPresentationStack];
    if ([(ContainerViewController *)self presentationStackAppearsCorrectWithInternalStack:internalStackLessWaitingForPresentation uikitStack:uikitPresentationStack])
    {
      if (!unlock)
      {
        v15 = sub_10002A8B8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ unlocking card queue because presentationStackAppearsCorrect YES", buf, 0xCu);
        }

        if (animationsCopy)
        {
          [(ContainerViewController *)self _unlockCardQueue];
        }

        else
        {
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1005DCF70;
          v26[3] = &unk_101661B18;
          v26[4] = self;
          [UIView performWithoutAnimation:v26];
        }
      }

      goto LABEL_30;
    }

    chromeViewController = [(ContainerViewController *)self chromeViewController];
    presentedViewController = [chromeViewController presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [chromeViewController presentedViewController];

        v18PresentedViewController = [presentedViewController2 presentedViewController];

        chromeViewController = presentedViewController2;
      }

      while (v18PresentedViewController);
    }

    else
    {
      presentedViewController2 = chromeViewController;
    }

    transitionCoordinator = [presentedViewController2 transitionCoordinator];

    v21 = sub_10002A8B8();
    v22 = v21;
    if (transitionCoordinator)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ presentation stack is incorrect but a presentation is occuring. adding completion to try again.", buf, 0xCu);
      }

      transitionCoordinator2 = [presentedViewController2 transitionCoordinator];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1005DCE78;
      v30[3] = &unk_101623410;
      v30[4] = self;
      v31 = faultCopy;
      v32 = animationsCopy;
      unlockCopy = unlock;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v30];
      goto LABEL_29;
    }

    if (faultCopy)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy6 = self;
        v24 = v22;
        v25 = OS_LOG_TYPE_FAULT;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ Rebuilding because presentationStackAppearsCorrect is incorrect. Starting with dismiss of everything", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy6 = self;
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_27;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1005DCE90;
    v27[3] = &unk_101660CE8;
    v27[4] = self;
    v28 = internalStackLessWaitingForPresentation;
    v29 = animationsCopy;
    [UIViewController _performWithoutDeferringTransitions:v27];
    transitionCoordinator2 = v28;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  internalStackLessWaitingForPresentation = sub_10002A8B8();
  if (os_log_type_enabled(internalStackLessWaitingForPresentation, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, internalStackLessWaitingForPresentation, OS_LOG_TYPE_DEBUG, "%@ bailing on ensure check because we're on the lock screen, and this container cannot present on lock screen", buf, 0xCu);
  }

LABEL_31:
}

- (void)assertPresentationStackAppearsCorrect
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    internalStackLessWaitingForPresentation = [(ContainerViewController *)self internalStackLessWaitingForPresentation];
    uikitPresentationStack = [(ContainerViewController *)self uikitPresentationStack];
    if ([(ContainerViewController *)self presentationStackAppearsCorrectWithInternalStack:internalStackLessWaitingForPresentation uikitStack:uikitPresentationStack])
    {
LABEL_16:

      return;
    }

    v5 = sub_10002A8B8();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
LABEL_15:

      goto LABEL_16;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_14;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_12;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_12:

LABEL_14:
    *buf = 138543874;
    v13 = selfCopy;
    v14 = 2112;
    v15 = internalStackLessWaitingForPresentation;
    v16 = 2112;
    v17 = uikitPresentationStack;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "[%{public}@] presentation stack appears incorrect. internalStack: %@ uikitStack: %@", buf, 0x20u);

    goto LABEL_15;
  }
}

- (BOOL)presentationStackAppearsCorrectWithInternalStack:(id)stack uikitStack:(id)uikitStack
{
  stackCopy = stack;
  uikitStackCopy = uikitStack;
  v8 = sub_10002A8B8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy3 = self;
    v25 = 2080;
    v26 = "[ContainerViewController presentationStackAppearsCorrectWithInternalStack:uikitStack:]";
    v27 = 2112;
    v28 = stackCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ %s %@", buf, 0x20u);
  }

  v9 = [stackCopy count];
  if (v9 <= [uikitStackCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = stackCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (([uikitStackCopy containsObject:{*(*(&v18 + 1) + 8 * i), v18}] & 1) == 0)
          {
            v16 = sub_10002A8B8();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy3 = self;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ presentationStackAppearsCorrect NO containees not in UIKit presentation", buf, 0xCu);
            }

            goto LABEL_18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v15 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v10 = sub_10002A8B8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ presentationStackAppearsCorrect NO because more containees in stack than UIKit", buf, 0xCu);
    }

LABEL_18:
    v15 = 0;
  }

  return v15;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  v5 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  v6 = dismissCopy;
  if (v5)
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    v8 = [(ContainerStack *)self->_containerStack indexOfContainee:presentedViewController2];
    v9 = v8;
    if (v8)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_7:

        v6 = dismissCopy;
        goto LABEL_8;
      }

      v10 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v8 - 1];
      viewController = [v10 viewController];
    }

    else
    {
      viewController = 0;
    }

    [presentedViewController2 didDismissByGesture];
    [(ContainerTransitionManager *)self->_transitionManager didPerformUnmanagedDismissOfViewController:presentedViewController2 revealingViewController:viewController];
    containerStack = self->_containerStack;
    v13 = [(ContainerStack *)containerStack containeeStateAtIndex:v9];
    [(ContainerStack *)containerStack removeContaineeState:v13];

    cardPresentationController = [viewController cardPresentationController];
    [cardPresentationController cardHeight];
    [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:?];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  v6 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  if (v6)
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    v8 = [(ContainerStack *)self->_containerStack indexOfContainee:presentedViewController2];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [presentedViewController2 willDismissByGesture];
      if (v9)
      {
        v10 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v9 - 1];
        viewController = [v10 viewController];
      }

      else
      {
        viewController = 0;
      }

      [viewController willBecomeCurrentByGesture];
      presentedViewController3 = [viewController presentedViewController];
      if (presentedViewController3)
      {
        v13 = presentedViewController3;
        presentedViewController4 = [viewController presentedViewController];
        v15 = presentedViewController4;
        if (presentedViewController4 == presentedViewController2)
        {
        }

        else
        {
          presentedViewController5 = [viewController presentedViewController];
          v17 = [presentedViewController5 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

          if (v17)
          {
            presentedViewController6 = [viewController presentedViewController];
            cardPresentationController = [presentedViewController6 cardPresentationController];
            hidden = [cardPresentationController hidden];

            transitionCoordinator = [presentedViewController2 transitionCoordinator];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_1005DD78C;
            v26[3] = &unk_101661710;
            v27 = presentedViewController6;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_1005DD7D4;
            v23[3] = &unk_101623308;
            v24 = v27;
            v25 = hidden;
            v22 = v27;
            [transitionCoordinator animateAlongsideTransition:v26 completion:v23];
          }
        }
      }
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  if ([cardPresentationController usingSheetPresentation])
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController2 cardPresentationController];
    allowsSwipeToDismiss = [cardPresentationController2 allowsSwipeToDismiss];
  }

  else
  {
    allowsSwipeToDismiss = 1;
  }

  return allowsSwipeToDismiss;
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame
{
  frameCopy = frame;
  view = [(ContainerViewController *)self view];
  [view setNeedsLayout];

  LODWORD(view) = [frameCopy _isDragging];
  if (view)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    [currentViewController didInvalidateVisibleFrameByGesture];
  }
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  view = [(ContainerViewController *)self view];
  [view setNeedsLayout];

  presentedViewController = [identifierCopy presentedViewController];
  v7 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  if (v7)
  {
    view2 = [(ContainerViewController *)self view];
    window = [view2 window];
    [window endEditing:1];

    presentedViewController2 = [identifierCopy presentedViewController];
    cardPresentationController = [presentedViewController2 cardPresentationController];
    -[ContainerViewController containee:willChangeLayout:source:](self, "containee:willChangeLayout:source:", presentedViewController2, [cardPresentationController containeeLayout], 0);

    selectedDetentIdentifier = [identifierCopy selectedDetentIdentifier];
    detents = [identifierCopy detents];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005DDC54;
    v25[3] = &unk_1016233E8;
    v26 = selectedDetentIdentifier;
    v14 = selectedDetentIdentifier;
    v15 = [detents indexOfObjectPassingTest:v25];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL || ([identifierCopy _detentValues], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15 >= v17) || (objc_msgSend(identifierCopy, "_detentValues"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectAtIndexedSubscript:", v15), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "cgFloatValue"), v21 = v20, v19, v18, v21 == UISheetPresentationControllerDetentInactive) || v21 < 0.0)
    {
      cardPresentationController2 = [presentedViewController2 cardPresentationController];
      [cardPresentationController2 cardHeight];
      v21 = v23;
    }

    [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:v21];
    cardPresentationController3 = [presentedViewController2 cardPresentationController];
    -[ContainerViewController containee:didChangeLayout:](self, "containee:didChangeLayout:", presentedViewController2, [cardPresentationController3 containeeLayout]);
  }
}

- (void)requestDismissalWithCardDismissalHelper:(id)helper
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  [cardPresentationController wantsLayout:1];
}

- (double)dismissalRectTopEdgeForCardDismissalHelper:(id)helper coordinateSpace:(id)space
{
  spaceCopy = space;
  currentViewController = [(ContainerViewController *)self currentViewController];
  view = [currentViewController view];

  [view bounds];
  [view convertRect:spaceCopy toCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  MinY = CGRectGetMinY(v18);

  return MinY;
}

- (BOOL)cardDismissalHelperShouldObserveGestures:(id)gestures
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  result = (!currentViewController || (v5 = currentViewController, -[ContainerViewController currentViewController](self, "currentViewController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 shouldCollapseOnMapGesture], v6, v5, v7)) && -[ContainerViewController containeeLayout](self, "containeeLayout") != 1 && -[ContainerViewController containerStyle](self, "containerStyle") == 1;
  return result;
}

- (int)currentMapViewTargetForAnalytics
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  v4 = [currentViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [currentViewController2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  v4 = [currentViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [currentViewController2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (unint64_t)overriddenLayoutForCurrentController:(unint64_t)controller
{
  if ([(ContainerViewController *)self containerStyle]== 3)
  {
    return 4;
  }

  if (-[ContainerViewController containerStyle](self, "containerStyle") != 6 || (-[ContainerViewController currentViewController](self, "currentViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 cardPresentationController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "allowResizeInFloatingStyle"), v6, v5, (v7 & 1) == 0))
  {
    if ([(ContainerViewController *)self containerStyle]!= 6)
    {
      currentViewController = [(ContainerViewController *)self currentViewController];
      cardPresentationController = [currentViewController cardPresentationController];
      presentedModally = [cardPresentationController presentedModally];

      if (presentedModally)
      {
        return 5;
      }
    }

    if (![(ContainerViewController *)self allowOnlyStandardStyle]&& controller != 5)
    {
      containerStyle = [(ContainerViewController *)self containerStyle];
      if (containerStyle <= 7)
      {
        if (((1 << containerStyle) & 0xC8) != 0)
        {
          return 4;
        }

        if (((1 << containerStyle) & 6) != 0)
        {
          if (controller == 4)
          {
            return 3;
          }
        }

        else
        {
          v12 = 4;
          if (controller - 1 < 2)
          {
            v12 = 1;
          }

          if (((1 << containerStyle) & 0x30) != 0)
          {
            return v12;
          }
        }
      }
    }
  }

  return controller;
}

- (void)updateHeightConstraintWithValue:(double)value
{
  cardPresentationController = [(ContaineeProtocol *)self->_currentViewController cardPresentationController];
  v6 = [cardPresentationController updateHeightConstraintWithValue:value];

  if (v6)
  {
    self->_shouldEndTransitionWhenAnimationCompletes = 0;

    [(ContainerViewController *)self contentHeightUpdatedWithValue:value];
  }
}

- (void)_notifyObserversWithContainerStyle:(unint64_t)style value:(double)value
{
  v6 = 0.0;
  if ((style | 4) == 5)
  {
    v7 = style == 5 ? 1 : 2;
    currentViewController = [(ContainerViewController *)self currentViewController];
    [currentViewController heightForLayout:v7];
    v10 = v9;

    if (v10 < value)
    {
      v6 = fmin(fmax((value - v10) / (v10 * 0.100000024), 0.0), 1.0);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMapTable *)self->_resizingBlocksByObserver objectEnumerator];
  v12 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        (*(*(*(&v16 + 1) + 8 * i) + 16))(value, v6);
      }

      v13 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (BOOL)_isCurrentSheetDragging
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  sheetPresentationController = [currentViewController sheetPresentationController];
  if ([sheetPresentationController _isDragging])
  {
    _isGeneratingAnimations = 1;
  }

  else
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    sheetPresentationController2 = [currentViewController2 sheetPresentationController];
    _isGeneratingAnimations = [sheetPresentationController2 _isGeneratingAnimations];
  }

  return _isGeneratingAnimations;
}

- (void)_notifyResizingObserversWithValue:(double)value onlyIfDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  if (![(NSMapTable *)self->_resizingBlocksByObserver count])
  {
    return;
  }

  containerStyle = [(ContainerViewController *)self containerStyle];
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (!usingSheetPresentation)
  {
    goto LABEL_7;
  }

  if (!draggingCopy || self->_transitioning || [(ContainerViewController *)self _isCurrentSheetDragging])
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController2 cardPresentationController];
    containerStyle = [cardPresentationController2 containerStyle];

LABEL_7:

    [(ContainerViewController *)self _notifyObserversWithContainerStyle:containerStyle value:value];
    return;
  }

  if (qword_10195DF10 != -1)
  {
    dispatch_once(&qword_10195DF10, &stru_101630410);
  }

  if (byte_10195DF18)
  {
    goto LABEL_7;
  }
}

- (void)contentHeightUpdatedWithValue:(double)value
{
  if (self->_transitioning)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    [cardPresentationController cardHeight];
    value = v7;
  }

  [(ContainerViewController *)self _updateBottomPocketForContaineeHeight:value];

  [(ContainerViewController *)self _notifyResizingObserversWithValue:1 onlyIfDragging:value];
}

- (void)registerResizingObserver:(id)observer withBlock:(id)block
{
  observerCopy = observer;
  blockCopy = block;
  if (observerCopy)
  {
    resizingBlocksByObserver = self->_resizingBlocksByObserver;
    if (resizingBlocksByObserver)
    {
      if (blockCopy)
      {
LABEL_4:
        v8 = [blockCopy copy];
        [(NSMapTable *)resizingBlocksByObserver setObject:v8 forKey:observerCopy];

        goto LABEL_7;
      }
    }

    else
    {
      v9 = +[NSMapTable weakToStrongObjectsMapTable];
      v10 = self->_resizingBlocksByObserver;
      self->_resizingBlocksByObserver = v9;

      resizingBlocksByObserver = self->_resizingBlocksByObserver;
      if (blockCopy)
      {
        goto LABEL_4;
      }
    }

    [(NSMapTable *)resizingBlocksByObserver removeObjectForKey:observerCopy];
  }

LABEL_7:
}

- (void)snapToLayout:(unint64_t)layout
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if ((byte_10195DF08 & 1) == 0)
  {
    self->_shouldEndTransitionWhenAnimationCompletes = 1;
    currentViewController = [(ContainerViewController *)self currentViewController];
    [currentViewController heightForLayout:layout];
    v7 = v6;

    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController2 cardPresentationController];
    v10 = [cardPresentationController updateHeightConstraintWithValue:v7];

    if (v10)
    {
      if ([(ContainerViewController *)self layoutModalPresenter]== 3)
      {
        currentViewController3 = [(ContainerViewController *)self currentViewController];
        cardPresentationController2 = [currentViewController3 cardPresentationController];
        presentedModally = [cardPresentationController2 presentedModally];

        if (presentedModally)
        {
          modalPresenter = [(ContainerViewController *)self modalPresenter];
          cardPresentationController3 = [modalPresenter cardPresentationController];
          [cardPresentationController3 updateHeightConstraintWithValue:v7];
        }
      }

      view = [(ContainerViewController *)self view];
      [view updateConstraintsIfNeeded];

      animationManager = [(ContainerViewController *)self animationManager];
      cardHeightAnimation = [animationManager cardHeightAnimation];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1005DE880;
      v22[3] = &unk_1016575B0;
      v22[4] = self;
      *&v22[5] = v7;
      v22[6] = layout;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1005DE8DC;
      v21[3] = &unk_101661738;
      v21[4] = self;
      [cardHeightAnimation applyWithAnimations:v22 completion:v21];
    }

    else
    {
      currentViewController4 = [(ContainerViewController *)self currentViewController];
      cardPresentationController4 = [currentViewController4 cardPresentationController];
      [cardPresentationController4 cardHeight];

      [(ContainerViewController *)self _completeStateIfNeeded];
    }
  }
}

- (void)transitionEnded
{
  self->_transitioning = 0;
  _maps_mapsSceneDelegate = [(ContainerViewController *)self _maps_mapsSceneDelegate];
  [_maps_mapsSceneDelegate setNeedsUserActivityUpdate];
}

- (void)sidebarVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  containerStyleManager = [(ContainerViewController *)self containerStyleManager];
  [containerStyleManager sidebarVisibilityDidChange:changeCopy];
}

- (void)animateAlongsideCardTransition
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  [cardPresentationController cardHeight];
  [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:?];
}

- (void)_completeStateIfNeeded
{
  if (self->_incompleteCompletion)
  {
    self->_incompleteCompletion = 0;
    [(ContainerViewController *)self containee:self->_currentViewController didChangeLayout:self->_containeeLayout];
    currentViewController = [(ContainerViewController *)self currentViewController];
    [currentViewController didChangeLayout:self->_containeeLayout];

    [(ContainerViewController *)self transitionEnded];
  }
}

- (void)setLayoutIfSupported:(unint64_t)supported animated:(BOOL)animated source:(unint64_t)source
{
  animatedCopy = animated;
  currentViewController = [(ContainerViewController *)self currentViewController];

  if (!currentViewController)
  {
    return;
  }

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController2 cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    currentViewController3 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController3 cardPresentationController];
    containeeLayout = [cardPresentationController2 containeeLayout];

    if (containeeLayout == supported)
    {
      self->_incompleteCompletion = 1;
LABEL_17:

      [(ContainerViewController *)self _completeStateIfNeeded];
      return;
    }

    currentViewController4 = [(ContainerViewController *)self currentViewController];
    cardPresentationController3 = [currentViewController4 cardPresentationController];
    [cardPresentationController3 wantsLayout:supported];
  }

  else
  {
    v16 = [(ContainerViewController *)self overriddenLayoutForCurrentController:supported];
    if ([(ContainerViewController *)self containeeLayout]== v16)
    {

      [(ContainerViewController *)self snapToLayout:v16];
    }

    else
    {
      if (![(ContainerViewController *)self _canUpdateContainee:self->_currentViewController withLayout:v16])
      {
        goto LABEL_17;
      }

      [(ContainerViewController *)self containee:self->_currentViewController willChangeLayout:v16 source:source];
      currentViewController5 = [(ContainerViewController *)self currentViewController];
      [currentViewController5 willChangeLayout:v16];

      self->_containeeLayout = v16;
      [(ContainerViewController *)self _updateContaineeIfNeeded:self->_currentViewController withLayout:v16];

      [(ContainerViewController *)self updateLayoutAnimated:animatedCopy];
    }
  }
}

- (void)updateLayoutAnimated:(BOOL)animated
{
  if (self->_currentViewController)
  {
    animatedCopy = animated;
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if ((byte_10195DF08 & 1) == 0)
    {
      if (animatedCopy)
      {
        self->_shouldEndTransitionWhenAnimationCompletes = 1;
        view = [(ContainerViewController *)self view];
        [view updateConstraintsIfNeeded];

        animationManager = [(ContainerViewController *)self animationManager];
        cardHeightAnimation = [animationManager cardHeightAnimation];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1005DEFA0;
        v13[3] = &unk_101661B18;
        v13[4] = self;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1005DF038;
        v12[3] = &unk_101661738;
        v12[4] = self;
        [cardHeightAnimation applyWithAnimations:v13 completion:v12];
      }

      else
      {
        [(ContainerViewController *)self _updateVisibleContentForLayout:self->_containeeLayout];
        if (self->_transitioning)
        {
          view2 = [(ContainerViewController *)self view];
          [view2 layoutIfNeeded];
        }

        [(ContainerViewController *)self containee:self->_currentViewController didChangeLayout:self->_containeeLayout];
        currentViewController = [(ContainerViewController *)self currentViewController];
        [currentViewController didChangeLayout:self->_containeeLayout];

        currentViewController2 = [(ContainerViewController *)self currentViewController];
        [currentViewController2 heightForLayout:self->_containeeLayout];
        [(ContainerViewController *)self contentHeightUpdatedWithValue:?];

        [(ContainerViewController *)self updateContaineeStackState];
      }

      iosBasedChromeViewController = [(ContainerViewController *)self iosBasedChromeViewController];
      [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:animatedCopy];
    }
  }
}

- (BOOL)_updateContaineeIfNeeded:(id)needed withLayout:(unint64_t)layout
{
  neededCopy = needed;
  [neededCopy heightForLayout:layout];
  v7 = v6;
  if (v6 != -1.0)
  {
    cardPresentationController = [neededCopy cardPresentationController];
    [cardPresentationController updateHeightConstraintWithValue:v7];
  }

  return v7 != -1.0;
}

- (double)mapPeek
{
  if ([(ContainerViewController *)self containerStyle]== 5)
  {
    return 32.0;
  }

  if ([(ContainerViewController *)self containerStyle]== 3 || [(ContainerViewController *)self containerStyle]== 4)
  {

    [(ContainerViewController *)self bottomEdgePadding];
  }

  else
  {
    view = [(ContainerViewController *)self view];
    [view safeAreaInsets];
    v6 = v5;

    result = 24.0;
    if (v6 != 0.0)
    {
      return 12.0;
    }
  }

  return result;
}

- (void)setChromeHidden:(BOOL)hidden
{
  if (self->_chromeHidden != hidden)
  {
    self->_chromeHidden = hidden;
  }
}

- (void)_updateVisibleContentForLayout:(unint64_t)layout
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  v6 = currentViewController;
  v5 = 1.0;
  if (layout == 1)
  {
    v5 = 0.0;
  }

  [currentViewController applyAlphaToContent:v5];
}

- (BOOL)shouldPassPoint:(CGPoint)point withEvent:(id)event inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  view = [currentViewController view];

  [view alpha];
  if (v11 == 0.0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    view2 = [(ContainerViewController *)self view];
    [view2 convertPoint:viewCopy fromView:{x, y}];
    v15 = v14;
    v17 = v16;

    containerView = [(ContainerViewController *)self containerView];
    [containerView frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v27.origin.y = v22 + -20.0;
    v27.size.height = 20.0;
    v27.origin.x = v20;
    v27.size.width = v24;
    v26.x = v15;
    v26.y = v17;
    v12 = !CGRectContainsPoint(v27, v26);
  }

  return v12;
}

- (CardAnimation)cardHeightAnimation
{
  animationManager = [(ContainerViewController *)self animationManager];
  cardHeightAnimation = [animationManager cardHeightAnimation];

  return cardHeightAnimation;
}

- (void)removeControllerFromStack:(id)stack
{
  stackCopy = stack;
  v5 = sub_10002A8B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    containerStack = selfCopy->_containerStack;
    *buf = 138543874;
    v16 = selfCopy;
    v17 = 2112;
    v18 = stackCopy;
    v19 = 2112;
    v20 = containerStack;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] removeControllerFromStack: %@, containerStack: %@", buf, 0x20u);
  }

  v13 = [(ContainerStack *)self->_containerStack indexOfContainee:stackCopy];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v13];
    if (v14)
    {
      [(ContainerStack *)self->_containerStack removeContaineeState:v14];
    }
  }
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v12 = sub_10002A8B8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v46 = completionCopy;
    v13 = animatedCopy;
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_8:

LABEL_10:
    v20 = selfCopy;
    preferredPresentationStyle = [(ContaineeProtocol *)controllerCopy preferredPresentationStyle];
    containerStack = selfCopy->_containerStack;

    *buf = 138544642;
    v59 = selfCopy;
    v60 = 2112;
    v61 = controllerCopy;
    v62 = 1024;
    animatedCopy = v13;
    v63 = v13;
    v64 = 1024;
    v65 = layoutCopy;
    v66 = 2048;
    v67 = preferredPresentationStyle;
    v68 = 2112;
    v69 = containerStack;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] presentController: %@, animated: %d, useDefaultContaineeLayout: %d, preferredStyle: %lu, containerStack: %@", buf, 0x36u);

    completionCopy = v46;
  }

  if (self->_enableMacPresentationStyles)
  {
    preferredPresentationStyle2 = [(ContaineeProtocol *)controllerCopy preferredPresentationStyle];
    if (preferredPresentationStyle2 > 2)
    {
      switch(preferredPresentationStyle2)
      {
        case 3:
          [(ContainerViewController *)self _pushPalette:controllerCopy animated:animatedCopy completion:completionCopy];
          goto LABEL_40;
        case 4:
          [(ContainerViewController *)self _presentMenuViewController:controllerCopy animated:animatedCopy completion:completionCopy];
          goto LABEL_40;
        case 5:
          [(ContaineeProtocol *)controllerCopy setModalPresentationStyle:2];
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_1005DFC68;
          v55[3] = &unk_1016605F8;
          v55[4] = self;
          v56 = controllerCopy;
          v57 = completionCopy;
          [(ContainerViewController *)self presentViewController:v56 animated:1 completion:v55];

          goto LABEL_40;
      }
    }

    else
    {
      switch(preferredPresentationStyle2)
      {
        case 0:
          goto LABEL_16;
        case 1:
          chromeViewController = [(ContainerViewController *)self chromeViewController];
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            chromeViewController2 = [(ContainerViewController *)self chromeViewController];
            [chromeViewController2 pushSidebarViewController:controllerCopy];
          }

          goto LABEL_40;
        case 2:
LABEL_16:
          v24 = +[UIMenuSystem mainSystem];
          [v24 setNeedsRebuild];

          break;
      }
    }
  }

  if (self->_currentViewController != controllerCopy)
  {
    if (qword_10195CBD0 != -1)
    {
      dispatch_once(&qword_10195CBD0, &stru_1016233C0);
    }

    if (byte_101928890 == 1)
    {
      cardPresentationController = [(ContaineeProtocol *)controllerCopy cardPresentationController];
      alwaysUseDefaultContaineeLayout = [cardPresentationController alwaysUseDefaultContaineeLayout];

      layoutCopy |= alwaysUseDefaultContaineeLayout;
    }

    self->_containeeLayout = 0;
    v45 = animatedCopy;
    if (controllerCopy)
    {
      v27 = [(ContainerStack *)self->_containerStack indexOfContainee:controllerCopy];
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [[ContaineeState alloc] initWithContainee:controllerCopy];
        v29 = 0;
        v30 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v27];
    v30 = [(ContaineeState *)v28 layoutForStyle:[(ContainerViewController *)self containerStyle]];
    v29 = 1;
LABEL_34:
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController cardPresentationController];
    v33 = [cardPresentationController2 presentedModally] ^ 1;

    if ((layoutCopy & v33 & 1) != 0 || !v30)
    {
      v34 = [(ContainerViewController *)self originalLayoutForViewController:controllerCopy];
      cardPresentationController3 = [(ContaineeProtocol *)controllerCopy cardPresentationController];
      presentedModally = [cardPresentationController3 presentedModally];

      if (presentedModally)
      {
        v30 = 5;
      }

      else
      {
        v30 = v34;
      }
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1005DFCD0;
    v51[3] = &unk_101651258;
    v51[4] = self;
    v37 = controllerCopy;
    v54 = v29;
    v52 = v37;
    v53 = v28;
    v38 = v28;
    v39 = objc_retainBlock(v51);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1005DFDC8;
    v47[3] = &unk_101660CE8;
    v50 = v29;
    v40 = v37;
    v48 = v40;
    selfCopy2 = self;
    v41 = objc_retainBlock(v47);
    [(ContainerTransitionManager *)self->_transitionManager presentViewController:v40 isAlreadyInStack:v29 layout:v30 animated:v45 preprocess:v39 postprocess:v41 completion:completionCopy];

    goto LABEL_40;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

  [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
LABEL_40:
}

- (void)setControllerStack:(id)stack animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  stackCopy = stack;
  completionCopy = completion;
  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v80 = selfCopy;
    v81 = 2112;
    v82 = stackCopy;
    v83 = 1024;
    v84 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] setControllerStack: %@, animated: %d", buf, 0x1Cu);
  }

  v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
  if (self->_enableMacPresentationStyles && self->_currentMenuViewController && ([stackCopy containsObject:?] & 1) == 0)
  {
    [(ContainerViewController *)self _dismissCurrentMenuViewControllerAnimated:animatedCopy];
  }

  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  if (![allObjects isEqualToArray:stackCopy])
  {
    v19 = objc_alloc_init(ContainerStack);
    if ([stackCopy count])
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1005E06D0;
      v73[3] = &unk_101623378;
      v73[4] = self;
      stackCopy = stackCopy;
      v74 = stackCopy;
      v75 = v19;
      [stackCopy enumerateObjectsUsingBlock:v73];

      goto LABEL_30;
    }

    lastState = [(ContainerStack *)self->_containerStack lastState];
    if (![(ContainerViewController *)self supportsEmptyStack])
    {
      if ([(ContainerStack *)self->_containerStack count]>= 2 && ([(ContainerStack *)self->_containerStack containeeStateAtIndex:0], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        lastObject2 = v21;
        [(ContainerStack *)v19 pushContaineeState:v21];
        [allObjects firstObject];
        v56 = v19;
        v23 = completionCopy;
        v25 = v24 = animatedCopy;
        v78 = v25;
        v26 = [NSArray arrayWithObjects:&v78 count:1];

        stackCopy = v25;
        animatedCopy = v24;
        completionCopy = v23;
        v19 = v56;
      }

      else
      {
        if (!lastState)
        {
LABEL_29:

LABEL_30:
          lastState2 = [(ContainerStack *)self->_containerStack lastState];
          lastState3 = [(ContainerStack *)v19 lastState];
          if (lastState2 == lastState3)
          {
            v40 = v19;
            if (qword_10195DF00 != -1)
            {
              dispatch_once(&qword_10195DF00, &stru_1016303F0);
            }

            v41 = byte_10195DF08;

            v42 = v41 == 1;
            v19 = v40;
            v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
            if (!v42)
            {
LABEL_32:
              objc_storeStrong(&self->_containerStack, v19);
              v29 = v17[536];
              if (*(&self->super.super.super.super.super.isa + v29) && ([stackCopy containsObject:?] & 1) == 0)
              {
                [(ContainerViewController *)self _dismissMenuViewController:*(&self->super.super.super.super.super.isa + v29) animated:1];
              }

              presentedViewController = [(ContainerViewController *)self presentedViewController];
              if (presentedViewController)
              {
                v31 = presentedViewController;
                presentedViewController2 = [(ContainerViewController *)self presentedViewController];
                v33 = sub_100010C34(presentedViewController2, &OBJC_PROTOCOL___ContaineeProtocol);

                if (v33)
                {
                  presentedViewController3 = [(ContainerViewController *)self presentedViewController];
                  if ([presentedViewController3 preferredPresentationStyle] == 5)
                  {
                    [stackCopy lastObject];
                    v57 = v19;
                    v36 = v35 = animatedCopy;
                    preferredPresentationStyle = [v36 preferredPresentationStyle];
                    v59[0] = _NSConcreteStackBlock;
                    v59[1] = 3221225472;
                    v59[2] = sub_1005E08A0;
                    v59[3] = &unk_1016233A0;
                    v59[4] = self;
                    lastObject = presentedViewController3;
                    v63 = preferredPresentationStyle == 5;
                    v60 = lastObject;
                    v61 = v36;
                    v64 = v35;
                    v62 = completionCopy;
                    v39 = v36;
                    [(ContainerViewController *)self dismissViewControllerAnimated:v35 completion:v59];

                    animatedCopy = v35;
                    v19 = v57;
                    if (preferredPresentationStyle == 5)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }

              lastObject = [stackCopy lastObject];
              [(ContainerViewController *)self presentController:lastObject animated:animatedCopy useDefaultContaineeLayout:1 completion:completionCopy];
LABEL_41:

              goto LABEL_42;
            }

            lastState2 = [(ContainerStack *)self->_containerStack allObjects];
            lastState3 = [(ContainerStack *)v19 allObjects];
            if (([lastState2 isEqualToArray:lastState3] & 1) == 0)
            {
              v55 = animatedCopy;
              firstObject = [lastState2 firstObject];
              presentingViewController = [firstObject presentingViewController];
              v45 = presentingViewController;
              v58 = v19;
              if (presentingViewController)
              {
                chromeViewController = presentingViewController;
              }

              else
              {
                chromeViewController = [(ContainerViewController *)self chromeViewController];
              }

              v54 = chromeViewController;

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v47 = lastState3;
              v48 = [v47 countByEnumeratingWithState:&v69 objects:v76 count:16];
              if (v48)
              {
                v49 = v48;
                v50 = *v70;
                do
                {
                  for (i = 0; i != v49; i = i + 1)
                  {
                    if (*v70 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = [(ContainerViewController *)self cardForViewController:*(*(&v69 + 1) + 8 * i)];
                  }

                  v49 = [v47 countByEnumeratingWithState:&v69 objects:v76 count:16];
                }

                while (v49);
              }

              v65[0] = _NSConcreteStackBlock;
              v65[1] = 3221225472;
              v65[2] = sub_1005E07D0;
              v65[3] = &unk_101661A40;
              v66 = v54;
              selfCopy2 = self;
              lastState3 = v47;
              v68 = lastState3;
              v53 = v54;
              [UIViewController _performWithoutDeferringTransitions:v65];

              animatedCopy = v55;
              v19 = v58;
              v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
            }
          }

          goto LABEL_32;
        }

        lastObject2 = [allObjects lastObject];
        v77 = lastObject2;
        v26 = [NSArray arrayWithObjects:&v77 count:1];
      }

      stackCopy = v26;
      v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
    }

    if (lastState)
    {
      [(ContainerStack *)v19 pushContaineeState:lastState];
    }

    goto LABEL_29;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_42:
}

- (BOOL)controllerIsInStack:(id)stack
{
  stackCopy = stack;
  v5 = [(ContainerTransitionManager *)self->_transitionManager hasWaitingTransitionForViewController:stackCopy]|| [(ContainerStack *)self->_containerStack indexOfContainee:stackCopy]!= 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (void)replaceCurrentWithController:(id)controller moveToContaineeLayout:(unint64_t)layout
{
  controllerCopy = controller;
  v7 = sub_10002A8B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    containerStack = selfCopy->_containerStack;
    *buf = 138544130;
    v23 = selfCopy;
    v24 = 2112;
    v25 = controllerCopy;
    v26 = 2048;
    layoutCopy = layout;
    v28 = 2112;
    v29 = containerStack;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] replaceCurrentWithController: %@, newContaineeLayout: %lu, containerStack: %@", buf, 0x2Au);
  }

  if (!self->_enableMacPresentationStyles || [(ContainerViewController *)self containeeLayout]| layout && ([(ContaineeProtocol *)controllerCopy preferredPresentationStyle]== 2 || ![(ContaineeProtocol *)controllerCopy preferredPresentationStyle]))
  {
    if (self->_currentViewController == controllerCopy)
    {
      [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
    }

    else
    {
      lastState = [(ContainerStack *)self->_containerStack lastState];
      self->_containeeLayout = 0;
      if ([(ContainerStack *)self->_containerStack indexOfContainee:controllerCopy]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1005E0CE8;
        v20[3] = &unk_101661A90;
        v20[4] = self;
        v16 = controllerCopy;
        v21 = v16;
        v17 = objc_retainBlock(v20);
        if (lastState)
        {
          v18 = [lastState layoutForStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
        }

        else
        {
          v18 = 0;
        }

        if (layout)
        {
          layoutCopy2 = layout;
        }

        else
        {
          layoutCopy2 = v18;
        }

        [(ContainerTransitionManager *)self->_transitionManager replaceCurrentWithViewController:v16 isAlreadyInStack:0 layout:layoutCopy2 animated:1 postprocess:v17];
      }

      else
      {
        [(ContainerViewController *)self presentController:controllerCopy];
      }
    }
  }

  else
  {
    [(ContainerViewController *)self presentController:controllerCopy animated:1 useDefaultContaineeLayout:1 completion:0];
  }
}

- (void)replaceCurrentWithController:(id)controller moveToContaineeDefaultLayout:(BOOL)layout
{
  controllerCopy = controller;
  [(ContainerViewController *)self replaceCurrentWithController:controllerCopy moveToContaineeLayout:[(ContainerViewController *)self originalLayoutForViewController:controllerCopy]];
}

- (void)popLastViewControllerFromViewController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  v9 = sub_10002A8B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy, v14];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy];
LABEL_8:

LABEL_10:
    v16 = selfCopy;
    preferredPresentationStyle = [controllerCopy preferredPresentationStyle];
    containerStack = selfCopy->_containerStack;

    *buf = 138544642;
    v32 = selfCopy;
    v33 = 2112;
    v34 = controllerCopy;
    v35 = 1024;
    v36 = animatedCopy;
    v37 = 1024;
    v38 = layoutCopy;
    v39 = 2048;
    v40 = preferredPresentationStyle;
    v41 = 2112;
    v42 = containerStack;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] popLastViewControllerFromViewController: %@, animated: %d, useDefaultContaineeLayout: %d, preferredStyle: %lu, containerStack: %@", buf, 0x36u);
  }

  if (!self->_enableMacPresentationStyles)
  {
    goto LABEL_17;
  }

  preferredPresentationStyle2 = [controllerCopy preferredPresentationStyle];
  if (preferredPresentationStyle2 > 2)
  {
    switch(preferredPresentationStyle2)
    {
      case 3:
        [(ContainerViewController *)self _popPalette:animatedCopy completion:0];
        goto LABEL_35;
      case 4:
        [(ContainerViewController *)self _dismissMenuViewController:controllerCopy animated:animatedCopy];
        goto LABEL_35;
      case 5:
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1005E11E4;
        v29[3] = &unk_101661A90;
        v29[4] = self;
        v30 = controllerCopy;
        [(ContainerViewController *)self dismissViewControllerAnimated:1 completion:v29];

        goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (!preferredPresentationStyle2)
  {
LABEL_16:
    v20 = +[UIMenuSystem mainSystem];
    [v20 setNeedsRebuild];

LABEL_17:
    v21 = [(ContainerStack *)self->_containerStack indexOfContainee:controllerCopy];
    if (v21)
    {
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = self->_containerStack;
        if (self->_willBeginDisplayingInLockScreen)
        {
          chromeViewController2 = [(ContainerStack *)v22 containeeStateAtIndex:v21];
          [(ContainerStack *)v22 removeContaineeState:chromeViewController2];
LABEL_32:

          goto LABEL_35;
        }

        v25 = [(ContainerStack *)v22 containeeStateAtIndex:v21 - 1];
        viewController = [v25 viewController];
        [(ContainerViewController *)self presentController:viewController animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
      }
    }

    else if ([(ContainerViewController *)self supportsEmptyStack])
    {
      if (self->_willBeginDisplayingInLockScreen)
      {
        popAll = [(ContainerStack *)self->_containerStack popAll];
      }

      else
      {
        [(ContainerViewController *)self presentController:0 animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
      }
    }

    goto LABEL_35;
  }

  if (preferredPresentationStyle2 != 1)
  {
    if (preferredPresentationStyle2 != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    [chromeViewController2 popSidebarViewController];
    goto LABEL_32;
  }

LABEL_35:
}

- (void)popLastViewControllerAnimated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  currentViewController = [(ContainerViewController *)self currentViewController];
  [(ContainerViewController *)self popLastViewControllerFromViewController:currentViewController animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
}

- (void)popLastViewControllerWithInitialVelocity:(double)velocity
{
  [(ContainerTransitionManager *)self->_transitionManager setInitialVelocity:velocity];

  [(ContainerViewController *)self popLastViewControllerAnimated:1 useDefaultContaineeLayout:0];
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_enableMacPresentationStyles)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    if (currentViewController)
    {
      currentViewController2 = [(ContainerViewController *)self currentViewController];
      cardPresentationController = [currentViewController2 cardPresentationController];
      defaultContaineeLayout = [cardPresentationController defaultContaineeLayout];
    }

    else
    {
      currentViewController2 = [v5 cardPresentationController];
      defaultContaineeLayout = [currentViewController2 defaultContaineeLayout];
    }
  }

  else
  {
    currentViewController = [controllerCopy cardPresentationController];
    defaultContaineeLayout = [currentViewController defaultContaineeLayout];
  }

  if (!defaultContaineeLayout)
  {
    if (self->_enableMacPresentationStyles && ([(ContainerViewController *)self containerStyle]== 5 || [(ContainerViewController *)self containerStyle]== 4))
    {
      defaultContaineeLayout = 3;
    }

    else
    {
      defaultContaineeLayout = 2;
    }
  }

  return defaultContaineeLayout;
}

- (void)controller:(id)controller wantsLayout:(unint64_t)layout
{
  if (self->_currentViewController == controller)
  {
    v7 = +[UIView areAnimationsEnabled];

    [(ContainerViewController *)self setLayoutIfSupported:layout animated:v7];
  }
}

- (double)availableHeightForViewController:(id)controller
{
  view = [(ContainerViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v13);

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && [(ContainerViewController *)self containerStyle]== 1)
  {
    view2 = [(ContainerViewController *)self view];
    _UISheetMinimumTopInset();
    Height = Height - v7;

    return Height;
  }

  if (self->_nextHeight != 0.0)
  {
    Height = self->_nextHeight;
  }

  if ([(ContainerViewController *)self containerStyle]!= 7)
  {
    [(ContainerViewController *)self statusBarHeight];
    Height = Height - v8;
  }

  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle - 2 < 4)
  {
    [(ContainerViewController *)self mapPeek];
    return Height - v10;
  }

  if (containerStyle == 6)
  {
    [(ContainerViewController *)self bottomEdgePadding];
    Height = Height - v12;
    if (sub_10000FA08(self) != 5)
    {
      [(ContainerViewController *)self floatingContainerBottomVerticalPadding];
      return Height - v10;
    }
  }

  return Height;
}

- (double)availableHeight
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  [(ContainerViewController *)self availableHeightForViewController:currentViewController];
  v5 = v4;

  return v5;
}

- (void)setFullscreenMode:(BOOL)mode
{
  if (self->_fullscreenMode != mode)
  {
    self->_fullscreenMode = mode;
    if ([(ContainerTransitionManager *)self->_transitionManager containerReadyToInsert])
    {
      containerStyleManager = self->_containerStyleManager;

      [(ContainerStyleManager *)containerStyleManager updateLayoutStyle];
    }
  }
}

- (void)minimizeContainee:(id)containee
{
  containeeCopy = containee;
  if ([(ContainerViewController *)self containeeLayout]== 3)
  {
    if ([(ContainerViewController *)self containerStyle]== 5)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = containeeCopy;
  }

  else
  {
    containeeLayout = [(ContainerViewController *)self containeeLayout];
    v5 = containeeCopy;
    if (containeeLayout != 2)
    {
      goto LABEL_9;
    }

    v4 = 1;
  }

  [(ContainerViewController *)self controller:v5 wantsLayout:v4];
  v5 = containeeCopy;
LABEL_9:
}

- (void)expandContainee:(id)containee
{
  containeeCopy = containee;
  if ([(ContainerViewController *)self containeeLayout]== 1)
  {
    if ([(ContainerViewController *)self containerStyle]== 5)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v5 = containeeCopy;
  }

  else
  {
    containeeLayout = [(ContainerViewController *)self containeeLayout];
    v5 = containeeCopy;
    if (containeeLayout != 2)
    {
      goto LABEL_9;
    }

    v4 = 3;
  }

  [(ContainerViewController *)self controller:v5 wantsLayout:v4];
  v5 = containeeCopy;
LABEL_9:
}

- (unint64_t)transitionFrom:(id)from to:(id)to
{
  v6 = [(ContainerStack *)self->_containerStack indexOfContainee:to];
  if (to)
  {
    v7 = v6;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(ContainerViewController *)self containerStyle]== 6;
LABEL_6:
      v11 = 0;
      v12 = 2;
      goto LABEL_8;
    }

    allObjects = [(ContainerStack *)self->_containerStack allObjects];
    v10 = [allObjects count] - 1;

    v8 = [(ContainerViewController *)self containerStyle]== 6;
    if (v7 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [(ContainerViewController *)self containerStyle]== 6;
  }

  v12 = 3;
  v11 = 1;
LABEL_8:
  if (v8)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

- (void)resumePropagatingEdgeInsets
{
  mapInsetPropagationSuspensionToken = self->_mapInsetPropagationSuspensionToken;
  self->_mapInsetPropagationSuspensionToken = 0;
}

- (void)suspendPropagatingEdgeInsetsForReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained acquireMapInsetPropagationSuspensionTokenForReason:reasonCopy];

  mapInsetPropagationSuspensionToken = self->_mapInsetPropagationSuspensionToken;
  self->_mapInsetPropagationSuspensionToken = v6;
}

- (void)_statusBarHeightChanged
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        cardPresentationController = [*(*(&v9 + 1) + 8 * v7) cardPresentationController];
        [cardPresentationController updateAdditionalTopMargin];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(ContainerViewController *)self snapToLayout:[(ContainerViewController *)self containeeLayout]];
}

- (void)_updateAttributionBadgeHiding
{
  if (self->_permitHidingAttributionBadgeWhileDragging && self->_hideAttributionBadgeWhileDragging && !self->_transitioning && [(ContainerViewController *)self _isCurrentSheetDragging]&& self->_edgeInsetUpdateDeferralInterval > 0.0)
  {
    if (self->_attributionBadgeSuppressionToken)
    {
      return;
    }

    iosChromeViewController = [(ContainerViewController *)self iosChromeViewController];
    v3 = [iosChromeViewController acquireMapAttributionSuppressonTokenForReason:@"interactinve sheet resizing"];
    attributionBadgeSuppressionToken = self->_attributionBadgeSuppressionToken;
    self->_attributionBadgeSuppressionToken = v3;

    v5 = iosChromeViewController;
  }

  else
  {
    v5 = self->_attributionBadgeSuppressionToken;
    if (!v5)
    {
      return;
    }

    self->_attributionBadgeSuppressionToken = 0;
  }
}

- (UIEdgeInsets)mapAttributionInsets
{
  view = [(ContainerViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  mapView = [WeakRetained mapView];
  [mapView _attributionInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_chromeViewController);
  mapView2 = [v13 mapView];
  [mapView2 _edgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ([(ContainerViewController *)self containerStyle]== 6)
  {
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      if (v20 >= 0.0)
      {
        [(UIView *)self->_containerView frame];
        v12 = -CGRectGetWidth(v34);
      }
    }

    else if (v16 >= 0.0)
    {
      [(UIView *)self->_containerView frame];
      v10 = -CGRectGetWidth(v36);
    }
  }

  else if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v12 = 0.0;
  }

  else
  {
    v10 = 0.0;
  }

  if ([(ContainerViewController *)self containerStyle]== 6)
  {
    [(ContainerViewController *)self floatingContainerBottomVerticalPadding];
    v22 = v21;
    view3 = objc_loadWeakRetained(&self->_chromeViewController);
    mapView3 = [view3 mapView];
    [mapView3 attributionBadgeBounds];
    v25 = -(_MKAttributionBadgePaddingVertical + (CGRectGetHeight(v35) - v22) * 0.5);

LABEL_12:
    goto LABEL_13;
  }

  view2 = [(ContainerViewController *)self view];
  [view2 safeAreaInsets];
  v28 = v27;

  v25 = 0.0;
  if (v28 > v18)
  {
    view3 = [(ContainerViewController *)self view];
    [view3 safeAreaInsets];
    v25 = v29 - v18;
    goto LABEL_12;
  }

LABEL_13:
  v30 = v8;
  v31 = v10;
  v32 = v25;
  v33 = v12;
  result.right = v33;
  result.bottom = v32;
  result.left = v31;
  result.top = v30;
  return result;
}

- (double)attributionVerticalPadding
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  mapView = [WeakRetained mapView];
  _isShowingAttributionBadge = [mapView _isShowingAttributionBadge];

  result = 0.0;
  if (_isShowingAttributionBadge)
  {
    return 10.0;
  }

  return result;
}

- (double)floatingContainerBottomVerticalPadding
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0)
  {
    v10 = sub_100019A44();
  }

  else
  {
    [(ContainerViewController *)self edgePadding];
    v6 = v5;
    [(ContainerViewController *)self statusBarHeight];
    v8 = v7 + v6;
    [(ContainerViewController *)self bottomSafeOffset];
    if (v8 > v9)
    {
      goto LABEL_9;
    }

    [(ContainerViewController *)self bottomSafeOffset];
  }

  v8 = v10;
LABEL_9:
  [(ContainerViewController *)self attributionVerticalPadding];
  if (v11 > v8)
  {
    [(ContainerViewController *)self attributionVerticalPadding];
    return v12 + v8;
  }

  return v8;
}

- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(ContainerViewController *)self topLabelEdgeInset];
  v9 = v8;
  [(ContainerViewController *)self bottomLabelEdgeInsetWithMapEdgeInsets:top, left, bottom, right];
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained setLabelEdgeInsets:{v9, 0.0, v11, 0.0}];

  chromeContext = [(ContainerViewController *)self chromeContext];
  if (!chromeContext)
  {
    return;
  }

  v14 = chromeContext;
  currentViewController = [(ContainerViewController *)self currentViewController];
  if (!currentViewController || [(ContainerViewController *)self containeeLayout])
  {

LABEL_5:
    v18 = objc_loadWeakRetained(&self->_chromeViewController);
    chromeContext2 = [(ContainerViewController *)self chromeContext];
    [v18 setMapEdgeInsets:0 animated:chromeContext2 forContext:{top, left, bottom, right}];

    return;
  }

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v17 = byte_10195DF08;

  if (v17 == 1)
  {
    goto LABEL_5;
  }
}

- (void)_performDeferredMapEdgeInsetUpdate
{
  deferredEdgeInsets = self->_deferredEdgeInsets;
  v12 = UIEdgeInsetsNull[0];
  v13 = UIEdgeInsetsNull[1];
  *&self->_deferredEdgeInsets.top = UIEdgeInsetsNull[0];
  *&self->_deferredEdgeInsets.bottom = v13;
  deferredEdgeInsetUpdateBlock = self->_deferredEdgeInsetUpdateBlock;
  self->_deferredEdgeInsetUpdateBlock = 0;

  viewIfLoaded = [(ContainerViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v5 = viewIfLoaded;
    view = [(ContainerViewController *)self view];
    superview = [view superview];

    if (superview)
    {
      bottom = deferredEdgeInsets.bottom;
      top = deferredEdgeInsets.top;
      if (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&deferredEdgeInsets.top, v12), vceqq_f64(*&deferredEdgeInsets.bottom, v13))), 0xFuLL))))
      {
        [(ContainerViewController *)self _calculateMapEdgeInsets];
      }

      else
      {
        left = deferredEdgeInsets.left;
        right = deferredEdgeInsets.right;
      }

      [(ContainerViewController *)self _actuallyUpdateMapEdgeInsets:top, left, bottom, right];
    }
  }
}

- (void)updateEdgeInsets:(UIEdgeInsets)insets immediately:(BOOL)immediately
{
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_deferredEdgeInsets.top), vceqq_f64(v5, *&self->_deferredEdgeInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_deferredEdgeInsets = insets;
    deferredEdgeInsetUpdateBlock = self->_deferredEdgeInsetUpdateBlock;
    if (deferredEdgeInsetUpdateBlock)
    {
      dispatch_block_cancel(deferredEdgeInsetUpdateBlock);
    }

    if (immediately || self->_edgeInsetUpdateDeferralInterval <= 0.0)
    {

      [(ContainerViewController *)self _performDeferredMapEdgeInsetUpdate];
    }

    else
    {
      objc_initWeak(&location, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1005E2244;
      v12[3] = &unk_101661B98;
      objc_copyWeak(&v13, &location);
      v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v12);
      v10 = self->_deferredEdgeInsetUpdateBlock;
      self->_deferredEdgeInsetUpdateBlock = v9;

      v11 = dispatch_time(0, (self->_edgeInsetUpdateDeferralInterval * 1000000000.0));
      dispatch_after(v11, &_dispatch_main_q, self->_deferredEdgeInsetUpdateBlock);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_updateMapEdgeInsetsImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  viewIfLoaded = [(ContainerViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v6 = viewIfLoaded;
    view = [(ContainerViewController *)self view];
    superview = [view superview];

    if (superview)
    {
      [(ContainerViewController *)self _calculateMapEdgeInsets];

      [(ContainerViewController *)self updateEdgeInsets:immediatelyCopy immediately:?];
    }
  }
}

- (double)leadingEdgePadding
{
  if (sub_10000FA08(self) == 5)
  {
    [(ContainerViewController *)self edgePadding];
    v4 = v3;
    view = [(ContainerViewController *)self view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];
    [view safeAreaInsets];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9 + v4;

    return v10;
  }

  if (![(ContainerViewController *)self hasMargin])
  {
    v10 = 8.0;
    if ([(ContainerViewController *)self containerStyle]!= 6)
    {
      return v10;
    }
  }

  [(ContainerViewController *)self edgePadding];
  return result;
}

- (double)bottomLabelEdgeInsetWithMapEdgeInsets:(UIEdgeInsets)insets
{
  if (!self->_permitsBottomPocket)
  {
    return insets.bottom * 0.699999988;
  }

  result = 0.0;
  if (self->_usesFadingLabels)
  {
    return insets.bottom * 0.699999988;
  }

  return result;
}

- (double)topLabelEdgeInset
{
  if (self->_usesVariableBlur && !self->_usesFadingLabels)
  {
    return 0.0;
  }

  [(ContainerViewController *)self statusBarHeight];
  return result;
}

- (int64_t)VKApplicationUILayoutForStyle:(unint64_t)style
{
  if (style > 7)
  {
    return 1;
  }

  else
  {
    return qword_101212FC8[style];
  }
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)style
{
  [(ContainerTransitionManager *)self->_transitionManager styleDidChange];
  [(ContainerViewController *)self didChangeStyle:style];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v20 + 1) + 8 * v9) didChangeContainerStyle:style];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  visibleCardViews = [(ContainerViewController *)self visibleCardViews];
  v11 = [visibleCardViews countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(visibleCardViews);
        }

        [*(*(&v16 + 1) + 8 * v14) setLayoutStyle:style];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [visibleCardViews countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained setVKApplicationUILayout:{-[ContainerViewController VKApplicationUILayoutForStyle:](self, "VKApplicationUILayoutForStyle:", style)}];

  [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)style
{
  iosBasedChromeViewController = [(ContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)containerStyleManagerWillChangeStyle:(unint64_t)style
{
  [(ContainerViewController *)self willChangeStyle:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v9) willChangeContainerStyle:style];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:style];
}

- (void)_updateOverrideTraitCollectionsForStyle:(unint64_t)style
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  if (currentViewController)
  {
    v6 = currentViewController;
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    parentViewController = [currentViewController2 parentViewController];

    if (parentViewController == self)
    {
      if (style < 8 && ((0xA3u >> style) & 1) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
      }

      currentViewController3 = [(ContainerViewController *)self currentViewController];
      [(ContainerViewController *)self setOverrideTraitCollection:v10 forChildViewController:currentViewController3];
    }
  }
}

- (void)didResignContainee:(id)containee finished:(BOOL)finished
{
  finishedCopy = finished;
  containeeCopy = containee;
  if (containeeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self didResignContainee:containeeCopy finished:finishedCopy];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v17[0] = @"ContainerFinished";
    v11 = [NSNumber numberWithBool:finishedCopy];
    v17[1] = @"ContainerContainee";
    v18[0] = v11;
    v18[1] = containeeCopy;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 postNotificationName:@"ContainerDidResignContaineeNotification" object:self userInfo:v12];

    v15[0] = @"ContainerFinished";
    v13 = [NSNumber numberWithBool:finishedCopy];
    v15[1] = @"ContainerContainee";
    v16[0] = v13;
    v16[1] = containeeCopy;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayDidDismissNotification" object:self userInfo:v14];
  }
}

- (void)didPresentContainee:(id)containee finished:(BOOL)finished
{
  finishedCopy = finished;
  containeeCopy = containee;
  if (containeeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self didPresentContainee:containeeCopy finished:finishedCopy];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v17[0] = @"ContainerFinished";
    v11 = [NSNumber numberWithBool:finishedCopy];
    v17[1] = @"ContainerContainee";
    v18[0] = v11;
    v18[1] = containeeCopy;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 postNotificationName:@"ContainerDidPresentContaineeNotification" object:self userInfo:v12];

    v15[0] = @"ContainerFinished";
    v13 = [NSNumber numberWithBool:finishedCopy];
    v15[1] = @"ContainerContainee";
    v16[0] = v13;
    v16[1] = containeeCopy;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayDidPresentNotification" object:self userInfo:v14];
  }
}

- (void)willResignContainee:(id)containee animated:(BOOL)animated
{
  animatedCopy = animated;
  containeeCopy = containee;
  if (containeeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self willResignContainee:containeeCopy animated:animatedCopy];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v13[0] = @"ContainerAnimated";
    v11 = [NSNumber numberWithBool:animatedCopy];
    v13[1] = @"ContainerContainee";
    v14[0] = v11;
    v14[1] = containeeCopy;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v10 postNotificationName:@"ContainerWillResignContaineeNotification" object:self userInfo:v12];
  }
}

- (void)willPresentContainee:(id)containee animated:(BOOL)animated
{
  animatedCopy = animated;
  containeeCopy = containee;
  if (containeeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self willPresentContainee:containeeCopy animated:animatedCopy];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v13[0] = @"ContainerAnimated";
    v11 = [NSNumber numberWithBool:animatedCopy];
    v13[1] = @"ContainerContainee";
    v14[0] = v11;
    v14[1] = containeeCopy;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v10 postNotificationName:@"ContainerWillPresentContaineeNotification" object:self userInfo:v12];
  }
}

- (void)containee:(id)containee didChangeLayout:(unint64_t)layout
{
  containeeCopy = containee;
  if (containeeCopy)
  {
    [(ContainerViewController *)self resumePropagatingEdgeInsets];
    viewIfLoaded = [containeeCopy viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_containerDelegate);
        [v11 container:self containee:containeeCopy didChangeLayout:layout];
      }

      cardPresentationController = [containeeCopy cardPresentationController];
      usingSheetPresentation = [cardPresentationController usingSheetPresentation];

      if (usingSheetPresentation)
      {
        cardPresentationController2 = [containeeCopy cardPresentationController];
        [containeeCopy didChangeLayout:{objc_msgSend(cardPresentationController2, "containeeLayout")}];

        v15 = [(ContainerStack *)self->_containerStack containeeStateForContainee:containeeCopy];
        viewController = [v15 viewController];
        cardPresentationController3 = [viewController cardPresentationController];
        [v15 setLayout:objc_msgSend(cardPresentationController3 forStyle:{"containeeLayout"), -[ContainerViewController containerStyle](self, "containerStyle")}];
      }

      chromeViewController = [(ContainerViewController *)self chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

      v19 = +[NSNotificationCenter defaultCenter];
      v26[0] = @"ContainerLayout";
      v20 = [NSNumber numberWithUnsignedInteger:layout];
      v26[1] = @"ContainerContainee";
      v27[0] = v20;
      v27[1] = containeeCopy;
      v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      [v19 postNotificationName:@"ContainerDidChangeLayoutNotification" object:self userInfo:v21];

      v24[0] = @"ContainerLayout";
      v22 = [NSNumber numberWithUnsignedInteger:layout];
      v24[1] = @"ContainerContainee";
      v25[0] = v22;
      v25[1] = containeeCopy;
      v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v23];

      [MapsAnalyticStateProvider updateLayoutInformation:self];
    }
  }
}

- (void)containee:(id)containee willChangeLayout:(unint64_t)layout source:(unint64_t)source
{
  containeeCopy = containee;
  v9 = containeeCopy;
  if (containeeCopy)
  {
    cardPresentationController = [containeeCopy cardPresentationController];
    usingSheetPresentation = [cardPresentationController usingSheetPresentation];

    if (usingSheetPresentation)
    {
      [v9 willChangeLayout:layout];
    }

    if (GEOConfigGetBOOL())
    {
      [(ContainerViewController *)self suspendPropagatingEdgeInsetsForReason:@"container view will change layout"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_containerDelegate);
      [v14 container:self containee:v9 willChangeLayout:layout];
    }

    v15 = +[NSNotificationCenter defaultCenter];
    v19[0] = @"ContainerLayout";
    v16 = [NSNumber numberWithUnsignedInteger:layout];
    v20[0] = v16;
    v20[1] = v9;
    v19[1] = @"ContainerContainee";
    v19[2] = @"ContainerUpdateSource";
    v17 = [NSNumber numberWithUnsignedInteger:source];
    v20[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v15 postNotificationName:@"ContainerWillChangeLayoutNotification" object:self userInfo:v18];
  }
}

- (void)didChangeStyle:(unint64_t)style
{
  self->_hideAttributionBadgeWhileDragging = (style < 8) & (0xA3u >> style);
  [(ContainerViewController *)self _updateAttributionBadgeHiding];
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_containerDelegate);
    [v7 container:self didChangeContainerStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v11 = @"ContainerStyle";
  v9 = [NSNumber numberWithUnsignedInteger:style];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 postNotificationName:@"ContainerDidChangeStyleNotification" object:self userInfo:v10];

  [MapsAnalyticStateProvider updateLayoutInformation:self];
}

- (void)willChangeStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_containerDelegate);
    [v7 container:self willChangeStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v11 = @"ContainerStyle";
  v9 = [NSNumber numberWithUnsignedInteger:style];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 postNotificationName:@"ContainerWillChangeStyleNotification" object:self userInfo:v10];
}

- (void)reset
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    v3 = objc_alloc_init(ContainerStack);
    containerStack = self->_containerStack;
    self->_containerStack = v3;

    currentViewController = self->_currentViewController;
    self->_currentViewController = 0;
  }

  else
  {

    [(ContainerViewController *)self setControllerStack:&__NSArray0__struct];
  }
}

- (BOOL)delaysFirstCardPresentation
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  return byte_10195DF08;
}

- (void)_removeBottomPocketIfNeeded
{
  if (self->_bottomPocketLayoutGuide)
  {
    view = [(ContainerViewController *)self view];
    [view removeLayoutGuide:self->_bottomPocketLayoutGuide];

    bottomPocketLayoutGuide = self->_bottomPocketLayoutGuide;
    self->_bottomPocketLayoutGuide = 0;
  }

  superview = [(StatusBarBackgroundView *)self->_bottomPocketView superview];

  if (superview)
  {
    [(StatusBarBackgroundView *)self->_bottomPocketView removeFromSuperview];
    bottomPocketView = self->_bottomPocketView;
    self->_bottomPocketView = 0;
  }
}

- (void)_updateBottomPocketForContaineeHeight:(double)height
{
  if (self->_bottomPocketView)
  {
    v4 = 0.0;
    if (self->_bottomPocketIsTooSmall || (v5 = [(ContainerViewController *)self containerStyle], [(ContainerViewController *)self shouldHideBottomPocketForSidebarContainerStyle:(v5 > 7) | (0x5Cu >> v5) & 1]))
    {
      v6 = 1;
    }

    else if (self->_shouldAdjustBottomPocketAlphaOnResize)
    {
      currentViewController = [(ContainerViewController *)self currentViewController];
      cardPresentationController = [currentViewController cardPresentationController];
      [cardPresentationController transitionProgressFromLayout:2 toLayout:3];
      v4 = v10;

      height = fabs(v4 + -1.0);
      v6 = height <= 2.22044605e-16;
    }

    else
    {
      v6 = 0;
    }

    [(StatusBarBackgroundView *)self->_bottomPocketView setHidden:v6, height];
    if (!v6 && self->_shouldAdjustBottomPocketAlphaOnResize)
    {
      bottomPocketView = self->_bottomPocketView;

      [(StatusBarBackgroundView *)bottomPocketView setAlpha:1.0 - v4];
    }
  }
}

- (void)_installBottomPocketIfNeeded
{
  if (self->_permitsBottomPocket)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    if (WeakRetained)
    {
      bottomPocketView = self->_bottomPocketView;

      if (!bottomPocketView)
      {
        v5 = objc_alloc_init(UILayoutGuide);
        bottomPocketLayoutGuide = self->_bottomPocketLayoutGuide;
        self->_bottomPocketLayoutGuide = v5;

        [(UILayoutGuide *)self->_bottomPocketLayoutGuide setIdentifier:@"ContainerVC.BottomPocket"];
        view = [(ContainerViewController *)self view];
        [view addLayoutGuide:self->_bottomPocketLayoutGuide];

        v8 = [StatusBarBackgroundView alloc];
        chromeViewController = [(ContainerViewController *)self chromeViewController];
        mapView = [chromeViewController mapView];
        bottomAnchor = [mapView bottomAnchor];
        v12 = [(StatusBarBackgroundView *)v8 initWithSafeAreaTopLayoutAnchor:bottomAnchor];
        v13 = self->_bottomPocketView;
        self->_bottomPocketView = v12;

        [(StatusBarBackgroundView *)self->_bottomPocketView setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = [StatusBarBackgroundViewStyle defaultBlurredStyleWithDefaultColorProvider:&stru_1016309F0];
        [(StatusBarBackgroundView *)self->_bottomPocketView setStyle:v14];

        CGAffineTransformMakeScale(&v58, 1.0, -1.0);
        v15 = self->_bottomPocketView;
        v57 = v58;
        [(StatusBarBackgroundView *)v15 setTransform:&v57];
        [(StatusBarBackgroundView *)self->_bottomPocketView setUserInteractionEnabled:0];
        view2 = [(ContainerViewController *)self view];
        [view2 addSubview:self->_bottomPocketView];

        topAnchor = [(UILayoutGuide *)self->_bottomPocketLayoutGuide topAnchor];
        chromeViewController2 = [(ContainerViewController *)self chromeViewController];
        mapView2 = [chromeViewController2 mapView];
        _edgeInsetsLayoutGuide = [mapView2 _edgeInsetsLayoutGuide];
        bottomAnchor2 = [_edgeInsetsLayoutGuide bottomAnchor];
        v51 = [topAnchor constraintEqualToAnchor:bottomAnchor2];
        v59[0] = v51;
        bottomAnchor3 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide bottomAnchor];
        chromeViewController3 = [(ContainerViewController *)self chromeViewController];
        mapView3 = [chromeViewController3 mapView];
        bottomAnchor4 = [mapView3 bottomAnchor];
        v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v59[1] = v46;
        leadingAnchor = [(UILayoutGuide *)self->_bottomPocketLayoutGuide leadingAnchor];
        chromeViewController4 = [(ContainerViewController *)self chromeViewController];
        mapView4 = [chromeViewController4 mapView];
        leadingAnchor2 = [mapView4 leadingAnchor];
        v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v59[2] = v41;
        trailingAnchor = [(UILayoutGuide *)self->_bottomPocketLayoutGuide trailingAnchor];
        chromeViewController5 = [(ContainerViewController *)self chromeViewController];
        mapView5 = [chromeViewController5 mapView];
        trailingAnchor2 = [mapView5 trailingAnchor];
        v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v59[3] = v36;
        heightAnchor = [(StatusBarBackgroundView *)self->_bottomPocketView heightAnchor];
        heightAnchor2 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide heightAnchor];
        v33 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.699999988];
        v59[4] = v33;
        bottomAnchor5 = [(StatusBarBackgroundView *)self->_bottomPocketView bottomAnchor];
        chromeViewController6 = [(ContainerViewController *)self chromeViewController];
        mapView6 = [chromeViewController6 mapView];
        bottomAnchor6 = [mapView6 bottomAnchor];
        v28 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v59[5] = v28;
        leadingAnchor3 = [(StatusBarBackgroundView *)self->_bottomPocketView leadingAnchor];
        chromeViewController7 = [(ContainerViewController *)self chromeViewController];
        mapView7 = [chromeViewController7 mapView];
        leadingAnchor4 = [mapView7 leadingAnchor];
        v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v59[6] = v20;
        trailingAnchor3 = [(StatusBarBackgroundView *)self->_bottomPocketView trailingAnchor];
        chromeViewController8 = [(ContainerViewController *)self chromeViewController];
        mapView8 = [chromeViewController8 mapView];
        trailingAnchor4 = [mapView8 trailingAnchor];
        v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v59[7] = v25;
        v26 = [NSArray arrayWithObjects:v59 count:8];
        [NSLayoutConstraint activateConstraints:v26];
      }
    }
  }
}

- (void)setNeedsUserInterfaceAppearanceUpdate
{
  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 setNeedsUserInterfaceAppearanceUpdate];
  preferredUserInterfaceStyle = [(ContainerViewController *)self preferredUserInterfaceStyle];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        cardPresentationController = [*(*(&v10 + 1) + 8 * v8) cardPresentationController];
        [cardPresentationController setPreferredUserInterfaceStyle:preferredUserInterfaceStyle];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)currentViewControllerWithPresentationStyle:(unint64_t)style
{
  if (!self->_enableMacPresentationStyles)
  {
    goto LABEL_13;
  }

  if (style > 3)
  {
    if (style == 4)
    {
      v7 = 168;
      goto LABEL_14;
    }

    if (style == 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v7 = 288;
LABEL_14:
    v6 = *(&self->super.super.super.super.super.isa + v7);
    goto LABEL_15;
  }

  if (style - 1 >= 3)
  {
    goto LABEL_13;
  }

LABEL_4:
  v3 = sub_10006D178();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[ContainerViewController currentViewControllerWithPresentationStyle:]";
    v11 = 2080;
    v12 = "ContainerViewController.m";
    v13 = 1024;
    v14 = 1005;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = +[NSThread callStackSymbols];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (void)setCurrentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_currentViewController == controllerCopy)
  {
    goto LABEL_11;
  }

  v6 = sub_10002A8B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2114;
    v17 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] currentViewController is now: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_currentViewController, controller);
  parentViewController = [(ContaineeProtocol *)controllerCopy parentViewController];

  if (parentViewController == self)
  {
    [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  }

LABEL_11:
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  [(ContainerViewController *)self setOverrideTraitCollection:0 forChildViewController:controllerCopy];
  v5.receiver = self;
  v5.super_class = ContainerViewController;
  [(ContainerViewController *)&v5 removeChildViewController:controllerCopy];
}

- (void)addChildViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = ContainerViewController;
  controllerCopy = controller;
  [(ContainerViewController *)&v6 addChildViewController:controllerCopy];
  v5 = [(ContainerViewController *)self currentViewController:v6.receiver];

  if (v5 == controllerCopy)
  {
    [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = ContainerViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:change];
  [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  [(ContainerViewController *)self setNeedsUserInterfaceAppearanceUpdate];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = coordinatorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Container willTransitionToTraitCollection %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  traitCollection = [(ContainerViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  verticalSizeClass2 = [collectionCopy verticalSizeClass];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005E46E4;
  v12[3] = &unk_101623308;
  v12[4] = self;
  v13 = verticalSizeClass != verticalSizeClass2;
  [coordinatorCopy animateAlongsideTransition:v12 completion:&stru_101623328];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = coordinatorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize %@", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = ContainerViewController;
  [(ContainerViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_nextHeight = height;
  self->_needToUpdateHeight = !self->_viewHasAppeared;
  view = [(ContainerViewController *)self view];
  [view bounds];
  v12 = v10 == width && v11 == height;

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005E4A90;
  v20[3] = &unk_101651FD0;
  v20[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1005E4CAC;
  v17[3] = &unk_1016232E0;
  v17[4] = self;
  v18 = objc_retainBlock(v20);
  v19 = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1005E4DB0;
  v14[3] = &unk_1016232E0;
  v14[4] = self;
  v15 = v18;
  v16 = v12;
  v13 = v18;
  [coordinatorCopy animateAlongsideTransition:v17 completion:v14];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = ContainerViewController;
  [(ContainerViewController *)&v19 viewDidAppear:appear];
  v4 = sub_10002A8B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v7, selfCopy, v9];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v7, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v21 = selfCopy;
    v22 = 2080;
    v23 = "[ContainerViewController viewDidAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  self->_viewHasAppeared = 1;
  if (self->_needToUpdateHeight)
  {
    [(ContainerViewController *)self snapToLayout:[(ContainerViewController *)self containeeLayout]];
  }

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    view = [(ContainerViewController *)self view];
    window = [view window];
    _rootSheetPresentationController = [window _rootSheetPresentationController];
    [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }
  }

  if (byte_10195DF08 == 1)
  {
    [(ContainerViewController *)self _internal_ensurePresentationsMatchContaineeStackAllowingFault:0 allowingAnimations:1 skipUnlock:0];
  }

  else if ([(ContainerViewController *)self delaysFirstCardPresentation])
  {
    [(ContainerViewController *)self _unlockCardQueue];
  }

  v14 = [MapGestureCardDismissalHelper alloc];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  v17 = [(MapGestureCardDismissalHelper *)v14 initWithMapView:mapView];
  cardDismissalHelper = self->_cardDismissalHelper;
  self->_cardDismissalHelper = v17;

  [(MapGestureCardDismissalHelper *)self->_cardDismissalHelper setDelegate:self];
  [(ContainerViewController *)self _installBottomPocketIfNeeded];
}

- (void)setContaineesHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = sub_10002A8B8();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
  v12 = @"NO";
  if (hiddenCopy)
  {
    v12 = @"YES";
  }

  *buf = 138543874;
  v25 = selfCopy;
  v26 = 2080;
  v27 = "[ContainerViewController setContaineesHidden:]";
  v28 = 2112;
  v29 = v12;
  v13 = v12;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s: %@", buf, 0x20u);

LABEL_13:
  if (self->_containeesHidden != hiddenCopy)
  {
    self->_containeesHidden = hiddenCopy;
  }

  allObjects = [(ContainerStack *)self->_containerStack allObjects];
  firstObject = [allObjects firstObject];

  currentViewController = [(ContainerViewController *)self currentViewController];
  v17 = currentViewController;
  if (firstObject == currentViewController)
  {
    presentingViewController = [firstObject presentingViewController];

    if (!presentingViewController)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if (!firstObject)
  {
    return;
  }

  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = firstObject;
    cardPresentationController = [v19 cardPresentationController];
    usingSheetPresentation = [cardPresentationController usingSheetPresentation];

    if (usingSheetPresentation)
    {
      cardPresentationController2 = [v19 cardPresentationController];
      [cardPresentationController2 setHidden:hiddenCopy];
    }

    currentViewController2 = [(ContainerViewController *)self currentViewController];

    if (v19 == currentViewController2)
    {

      goto LABEL_27;
    }

    firstObject = [v19 presentedViewController];

    if (!firstObject)
    {
      v19 = 0;
      goto LABEL_27;
    }
  }

LABEL_25:
  v19 = firstObject;
LABEL_27:
}

- (void)sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  _maps_uiScene = [chromeViewController _maps_uiScene];

  if (object == _maps_uiScene)
  {
    v7 = sub_10002A8B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 2080;
      v15 = "[ContainerViewController sceneWillEnterForeground:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ %s", &v12, 0x16u);
    }

    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {
      view = [(ContainerViewController *)self view];
      window = [view window];
      v10 = window;
      if (window && self->_viewHasAppeared)
      {
        isRootContainer = [(ContainerViewController *)self isRootContainer];

        if (isRootContainer)
        {
          [(ContainerTransitionManager *)self->_transitionManager setContainerReadyToInsert:0];
          [(ContainerViewController *)self _internal_ensurePresentationsMatchContaineeStackAllowingFault:1 allowingAnimations:0 skipUnlock:0];
        }
      }

      else
      {
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = ContainerViewController;
  [(ContainerViewController *)&v7 viewWillAppear:?];
  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController willBecomeCurrent:appearCopy];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 viewWillDisappear:?];
  v5 = sub_10002A8B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v16 = selfCopy;
    v17 = 2080;
    v18 = "[ContainerViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  [(ContainerTransitionManager *)self->_transitionManager setContainerReadyToInsert:0];
  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController willResignCurrent:disappearCopy];

  [(ContainerViewController *)self setContaineesHidden:[(ContainerViewController *)self hideContaineesOnViewDidDisappear]];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ContainerViewController;
  [(ContainerViewController *)&v6 viewDidDisappear:disappear];
  [(ContainerViewController *)self _removeBottomPocketIfNeeded];
  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController didResignCurrent];

  self->_viewHasAppeared = 0;
  [(MapGestureCardDismissalHelper *)self->_cardDismissalHelper setDelegate:0];
  cardDismissalHelper = self->_cardDismissalHelper;
  self->_cardDismissalHelper = 0;
}

- (ContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = ContainerViewController;
  v4 = [(ContainerViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(ContainerViewController *)v4 customInit];
  }

  return v5;
}

- (ContaineeProtocol)modalPresenter
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleViewControllers = [(ContainerViewController *)self visibleViewControllers];
  v4 = [visibleViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(visibleViewControllers);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        currentViewController = [(ContainerViewController *)self currentViewController];

        if (v8 != currentViewController)
        {
          v10 = v8;
          goto LABEL_11;
        }
      }

      v5 = [visibleViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (unint64_t)layoutModalPresenter
{
  modalPresenter = [(ContainerViewController *)self modalPresenter];
  if (modalPresenter)
  {
    v4 = [(ContainerStack *)self->_containerStack containeeStateForContainee:modalPresenter];
    v5 = [v4 layoutForStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)style
{
  currentContaineeState = [(ContainerViewController *)self currentContaineeState];
  v5 = [currentContaineeState layoutForStyle:style];

  return v5;
}

- (void)updateContaineeStackState
{
  currentContaineeState = [(ContainerViewController *)self currentContaineeState];
  viewController = [currentContaineeState viewController];
  cardPresentationController = [viewController cardPresentationController];
  [currentContaineeState setLayout:objc_msgSend(cardPresentationController forStyle:{"containeeLayout"), -[ContainerViewController containerStyle](self, "containerStyle")}];
}

- (ContaineeProtocol)currentOrPendingViewController
{
  if (self->_willBeginDisplayingInLockScreen)
  {
    [(ContainerViewController *)self currentViewController];
  }

  else
  {
    [(ContainerTransitionManager *)self->_transitionManager currentOrPendingViewController];
  }
  v2 = ;

  return v2;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  v7 = [[CustomContaineePresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:self];

  return v7;
}

- (ContaineeProtocol)rootPresentingViewController
{
  v2 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:0];
  viewController = [v2 viewController];
  presentingViewController = [viewController presentingViewController];

  return presentingViewController;
}

- (void)removeCardforViewController:(id)controller
{
  if (controller)
  {
    cards = self->_cards;
    controllerCopy = controller;
    v7 = [(NSMapTable *)cards objectForKey:controllerCopy];
    [(NSMapTable *)self->_cards removeObjectForKey:controllerCopy];
    cardPresentationController = [controllerCopy cardPresentationController];

    [cardPresentationController setCardView:0 fromContainer:0];
    [(CardProvider *)self->_cardProvider recycleCard:v7];
  }
}

- (id)cardForViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = [(NSMapTable *)self->_cards objectForKey:controllerCopy];
    if (!v5)
    {
      cardPresentationController = [controllerCopy cardPresentationController];
      v5 = -[ContainerViewController cardWithBlur:](self, "cardWithBlur:", [cardPresentationController blurInCardView]);

      [v5 setLayoutStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
      [(ContainerViewController *)self setCaptureViewForCardView:v5];
      [(NSMapTable *)self->_cards setObject:v5 forKey:controllerCopy];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 setAccessibilityIdentifier:v8];

    cardPresentationController2 = [controllerCopy cardPresentationController];
    [cardPresentationController2 setCardView:v5 fromContainer:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCaptureViewForCardView:(id)view
{
  viewCopy = view;
  blurGroupName = [(ContainerViewController *)self blurGroupName];
  [viewCopy setBlurGroupName:blurGroupName];

  if ([(ContainerViewController *)self useBackdrop])
  {
    [viewCopy setCaptureView:self->_backdropView];
  }
}

- (void)setUseBackdropFullScreen:(BOOL)screen
{
  if (self->_useBackdropFullScreen != screen)
  {
    self->_useBackdropFullScreen = screen;
    [(ContainerViewController *)self _updateBackdropConstraints];
  }
}

- (BOOL)showVLFCrowdsourcingPermissionCardWithContaineeDelegate:(id)delegate delegate:(id)a4 completion:(id)completion
{
  delegateCopy = delegate;
  v9 = a4;
  completionCopy = completion;
  if (![(ContainerViewController *)self isVLFCrowdsourcingPermissionCardActive])
  {
    containerStyle = [(ContainerViewController *)self containerStyle];
    if (+[VLFCrowdsourcingPermissionContaineeViewController shouldShowPermissionViewController])
    {
      v19 = containerStyle & 0xFFFFFFFFFFFFFFFDLL;
      v20 = sub_100C6497C();
      v21 = os_log_type_enabled(&v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO);
      if (v19 == 4)
      {
        if (v21)
        {
          selfCopy = self;
          if (!selfCopy)
          {
            selfCopy = @"<nil>";
            goto LABEL_48;
          }

          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          if (objc_opt_respondsToSelector())
          {
            v25 = [(ContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
            v26 = v25;
            if (v25 && ![v25 isEqualToString:v24])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v24, selfCopy, v26];

              goto LABEL_19;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v24, selfCopy];
LABEL_19:

LABEL_48:
          *buf = 138543362;
          v45 = selfCopy;
          v42 = "[%{public}@] Not showing VLF crowdsourcing permission card because the phone is in landscape";
          goto LABEL_49;
        }

LABEL_50:
        v41 = 0;
LABEL_51:

        goto LABEL_52;
      }

      if (!v21)
      {
LABEL_55:

        v20 = [[VLFCrowdsourcingPermissionContaineeViewController alloc] initWithCompletion:completionCopy];
        [(ContaineeViewController *)v20 setContaineeDelegate:delegateCopy];
        [(ControlContaineeViewController *)v20 setDelegate:v9];
        v41 = 1;
        [(ContainerViewController *)self presentController:v20 animated:1];
        goto LABEL_51;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
        goto LABEL_54;
      }

      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (objc_opt_respondsToSelector())
      {
        v36 = [(ContainerViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v35])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v35, selfCopy2, v37];

          goto LABEL_35;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v35, selfCopy2];
LABEL_35:

LABEL_54:
      *buf = 138543362;
      v45 = selfCopy2;
      _os_log_impl(&_mh_execute_header, &v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO, "[%{public}@] Showing VLF crowdsourcing permission card", buf, 0xCu);

      goto LABEL_55;
    }

    v20 = sub_100C6497C();
    if (!os_log_type_enabled(&v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_50;
    }

    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy = @"<nil>";
      goto LABEL_45;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [(ContainerViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v30, selfCopy3, v32];

        goto LABEL_27;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v30, selfCopy3];
LABEL_27:

LABEL_45:
    *buf = 138543362;
    v45 = selfCopy;
    v42 = "[%{public}@] The VLF crowdsourcing permission card is not eligible to be shown";
LABEL_49:
    _os_log_impl(&_mh_execute_header, &v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO, v42, buf, 0xCu);

    goto LABEL_50;
  }

  v11 = sub_100C6497C();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_38;
  }

  selfCopy4 = self;
  if (!selfCopy4)
  {
    selfCopy4 = @"<nil>";
    goto LABEL_37;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (objc_opt_respondsToSelector())
  {
    v15 = [(ContainerViewController *)selfCopy4 performSelector:"accessibilityIdentifier"];
    v16 = v15;
    if (v15 && ![v15 isEqualToString:v14])
    {
      selfCopy4 = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy4, v16];

      goto LABEL_9;
    }
  }

  selfCopy4 = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy4];
LABEL_9:

LABEL_37:
  *buf = 138543362;
  v45 = selfCopy4;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] The VLF crowdsourcing card is already visible; can't show twice", buf, 0xCu);

LABEL_38:
  v39 = sub_10006D178();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v45 = "[ContainerViewController(VLFCrowdsourcing) showVLFCrowdsourcingPermissionCardWithContaineeDelegate:delegate:completion:]";
    v46 = 2080;
    v47 = "ContainerViewController+VLFCrowdsourcing.m";
    v48 = 1024;
    v49 = 29;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(&v20->super.super.super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      v40 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, &v20->super.super.super.super.super.super, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_50;
  }

  v41 = 0;
LABEL_52:

  return v41;
}

- (BOOL)isVLFCrowdsourcingPermissionCardActive
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end