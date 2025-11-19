@interface ContainerViewController
- (BOOL)_chromeEnabled;
- (BOOL)_isCurrentSheetDragging;
- (BOOL)_updateContaineeIfNeeded:(id)a3 withLayout:(unint64_t)a4;
- (BOOL)cardDismissalHelperShouldObserveGestures:(id)a3;
- (BOOL)controllerIsInStack:(id)a3;
- (BOOL)delaysFirstCardPresentation;
- (BOOL)hasMargin;
- (BOOL)hideContaineesOnViewDidDisappear;
- (BOOL)isVLFCrowdsourcingPermissionCardActive;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)presentationStackAppearsCorrectWithInternalStack:(id)a3 uikitStack:(id)a4;
- (BOOL)shouldHideCard;
- (BOOL)shouldPassPoint:(CGPoint)a3 withEvent:(id)a4 inView:(id)a5;
- (BOOL)showVLFCrowdsourcingPermissionCardWithContaineeDelegate:(id)a3 delegate:(id)a4 completion:(id)a5;
- (CardAnimation)cardHeightAnimation;
- (ContaineeProtocol)currentOrPendingViewController;
- (ContaineeProtocol)currentViewController;
- (ContaineeProtocol)modalPresenter;
- (ContaineeProtocol)rootPresentingViewController;
- (ContainerDelegate)containerDelegate;
- (ContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (IOSBasedChromeContext)chromeContext;
- (IOSBasedChromeViewController)chromeViewController;
- (NSArray)visibleCardViews;
- (UIEdgeInsets)_calculateMapEdgeInsets;
- (UIEdgeInsets)mapAttributionInsets;
- (double)_cardHeightForComputingBottomMapEdgeInsets;
- (double)attributionVerticalPadding;
- (double)availableHeight;
- (double)availableHeightForViewController:(id)a3;
- (double)bottomEdgeInset;
- (double)bottomEdgePadding;
- (double)bottomLabelEdgeInsetWithMapEdgeInsets:(UIEdgeInsets)a3;
- (double)bottomSafeOffset;
- (double)dismissalRectTopEdgeForCardDismissalHelper:(id)a3 coordinateSpace:(id)a4;
- (double)edgePadding;
- (double)floatingContainerBottomVerticalPadding;
- (double)leadingEdgePadding;
- (double)leftSafeOffset;
- (double)mapPeek;
- (double)rightSafeOffset;
- (double)statusBarHeight;
- (double)topEdgePadding;
- (double)topLabelEdgeInset;
- (id)cardForViewController:(id)a3;
- (id)currentViewControllerWithPresentationStyle:(unint64_t)a3;
- (id)internalStackLessWaitingForPresentation;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)uikitPresentationStack;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int64_t)VKApplicationUILayoutForStyle:(unint64_t)a3;
- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)a3;
- (unint64_t)layoutModalPresenter;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (unint64_t)overriddenLayoutForCurrentController:(unint64_t)a3;
- (unint64_t)transitionFrom:(id)a3 to:(id)a4;
- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)a3;
- (void)_completeStateIfNeeded;
- (void)_dismissCurrentMenuViewControllerAnimated:(BOOL)a3;
- (void)_dismissMenuViewController:(id)a3 animated:(BOOL)a4;
- (void)_dismissPresentedViewControllersIfNeededForViewController:(id)a3;
- (void)_installBottomPocketIfNeeded;
- (void)_internal_ensurePresentationsMatchContaineeStackAllowingFault:(BOOL)a3 allowingAnimations:(BOOL)a4 skipUnlock:(BOOL)a5;
- (void)_notifyObserversWithContainerStyle:(unint64_t)a3 value:(double)a4;
- (void)_notifyResizingObserversWithValue:(double)a3 onlyIfDragging:(BOOL)a4;
- (void)_performDeferredMapEdgeInsetUpdate;
- (void)_popPalette:(BOOL)a3 completion:(id)a4;
- (void)_presentCurrentMenuViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_presentMenuViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_pushPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_removeBottomPocketIfNeeded;
- (void)_sequentiallyPresentViewControllers:(id)a3 allowAnimations:(BOOL)a4;
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3;
- (void)_statusBarHeightChanged;
- (void)_unlockCardQueue;
- (void)_updateAttributionBadgeHiding;
- (void)_updateBackdropConstraints;
- (void)_updateBottomPocketForContaineeHeight:(double)a3;
- (void)_updateContainerMargins;
- (void)_updateMapEdgeInsetsImmediately:(BOOL)a3;
- (void)_updateOverrideTraitCollectionsForStyle:(unint64_t)a3;
- (void)_updateVisibleContentForLayout:(unint64_t)a3;
- (void)addChildViewController:(id)a3;
- (void)animateAlongsideCardTransition;
- (void)assertPresentationStackAppearsCorrect;
- (void)containee:(id)a3 didChangeLayout:(unint64_t)a4;
- (void)containee:(id)a3 willChangeLayout:(unint64_t)a4 source:(unint64_t)a5;
- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3;
- (void)containerStyleManagerWillChangeStyle:(unint64_t)a3;
- (void)contentHeightUpdatedWithValue:(double)a3;
- (void)controller:(id)a3 wantsLayout:(unint64_t)a4;
- (void)customInit;
- (void)didChangeStyle:(unint64_t)a3;
- (void)didPresentContainee:(id)a3 finished:(BOOL)a4;
- (void)didResignContainee:(id)a3 finished:(BOOL)a4;
- (void)expandContainee:(id)a3;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)macMenuPresentationControllerDidDismiss:(id)a3;
- (void)macMenuPresentationControllerWillDismiss:(id)a3;
- (void)minimizeContainee:(id)a3;
- (void)popLastViewControllerAnimated:(BOOL)a3 useDefaultContaineeLayout:(BOOL)a4;
- (void)popLastViewControllerFromViewController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5;
- (void)popLastViewControllerWithInitialVelocity:(double)a3;
- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)registerResizingObserver:(id)a3 withBlock:(id)a4;
- (void)removeCardforViewController:(id)a3;
- (void)removeChildViewController:(id)a3;
- (void)removeControllerFromStack:(id)a3;
- (void)replaceCurrentWithController:(id)a3 moveToContaineeDefaultLayout:(BOOL)a4;
- (void)replaceCurrentWithController:(id)a3 moveToContaineeLayout:(unint64_t)a4;
- (void)requestDismissalWithCardDismissalHelper:(id)a3;
- (void)reset;
- (void)resumePropagatingEdgeInsets;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setCaptureViewForCardView:(id)a3;
- (void)setChromeHidden:(BOOL)a3;
- (void)setContaineesHidden:(BOOL)a3;
- (void)setControllerStack:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCurrentViewController:(id)a3;
- (void)setFullscreenMode:(BOOL)a3;
- (void)setLayoutIfSupported:(unint64_t)a3 animated:(BOOL)a4 source:(unint64_t)a5;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)setUseBackdropFullScreen:(BOOL)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
- (void)sidebarVisibilityDidChange:(BOOL)a3;
- (void)snapToLayout:(unint64_t)a3;
- (void)suspendPropagatingEdgeInsetsForReason:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionEnded;
- (void)updateContaineeStackState;
- (void)updateEdgeInsets:(UIEdgeInsets)a3 immediately:(BOOL)a4;
- (void)updateHeightConstraintWithValue:(double)a3;
- (void)updateLayoutAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willChangeStyle:(unint64_t)a3;
- (void)willPresentContainee:(id)a3 animated:(BOOL)a4;
- (void)willResignContainee:(id)a3 animated:(BOOL)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(ContainerViewController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_statusBarHeightChanged" name:@"IOSBasedChromeStatusBarHeightDidUpdateNotification" object:0];

  v6 = [UIView alloc];
  v7 = [(ContainerViewController *)self view];
  [v7 bounds];
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
  v13 = [(ContainerViewController *)self view];
  [v13 addSubview:self->_containerView];

  v14 = +[MKSystemController sharedInstance];
  LODWORD(v7) = [v14 isInternalInstall];

  if (v7)
  {
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 BOOLForKey:@"__internal__DisableChrome"];
    v17 = [(ContainerViewController *)self view];
    [v17 setHidden:v16];
  }

  if ([(ContainerViewController *)self useBackdrop])
  {
    v18 = [BackdropView alloc];
    v19 = [(ContainerViewController *)self view];
    [v19 bounds];
    v20 = [(BackdropView *)v18 initWithFrame:?];
    backdropView = self->_backdropView;
    self->_backdropView = v20;

    [(BackdropView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(ContainerViewController *)self blurGroupName];
    v23 = [(BackdropView *)self->_backdropView captureGroup];
    [v23 setGroupName:v22];

    LODWORD(v24) = 1148846080;
    [(BackdropView *)self->_backdropView setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(BackdropView *)self->_backdropView setContentHuggingPriority:0 forAxis:v25];
    v26 = [(ContainerViewController *)self view];
    [v26 insertSubview:self->_backdropView atIndex:0];

    [(ContainerViewController *)self _updateBackdropConstraints];
  }

  if (self->_enableMacPresentationStyles)
  {
    v27 = [[SupplementalStackViewController alloc] initWithTopSafeAreaInsetConstraining:1];
    paletteViewController = self->_paletteViewController;
    self->_paletteViewController = v27;

    v29 = +[UIColor secondarySystemBackgroundColor];
    v30 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [v30 setBackgroundColor:v29];

    v31 = [(ContainerViewController *)self view];
    v32 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [v31 addSubview:v32];

    v33 = [(SupplementalStackViewController *)self->_paletteViewController view];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

    v34 = [(SupplementalStackViewController *)self->_paletteViewController view];
    v35 = [v34 widthAnchor];
    v36 = [v35 constraintEqualToConstant:0.0];
    paletteWidthConstraint = self->_paletteWidthConstraint;
    self->_paletteWidthConstraint = v36;

    v58 = [(SupplementalStackViewController *)self->_paletteViewController view];
    v56 = [v58 topAnchor];
    v57 = [(ContainerViewController *)self view];
    v55 = [v57 topAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v60[0] = v54;
    v53 = [(SupplementalStackViewController *)self->_paletteViewController view];
    v51 = [v53 leadingAnchor];
    v52 = [(ContainerViewController *)self view];
    v38 = [v52 leadingAnchor];
    v39 = [v51 constraintEqualToAnchor:v38];
    v60[1] = v39;
    v40 = [(SupplementalStackViewController *)self->_paletteViewController view];
    v41 = [v40 bottomAnchor];
    v42 = [(ContainerViewController *)self view];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
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
    v3 = [(ContainerViewController *)self view];
  }

  else
  {
    v3 = self->_containerView;
  }

  v4 = v3;
  v18 = [(BackdropView *)self->_backdropView topAnchor];
  v17 = [(UIView *)v4 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v15 = [(BackdropView *)self->_backdropView bottomAnchor];
  v14 = [(UIView *)v4 bottomAnchor];
  v5 = [v15 constraintEqualToAnchor:v14];
  v19[1] = v5;
  v6 = [(BackdropView *)self->_backdropView leadingAnchor];
  v7 = [(UIView *)v4 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v19[2] = v8;
  v9 = [(BackdropView *)self->_backdropView trailingAnchor];
  v10 = [(UIView *)v4 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
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
    v3 = [(ContainerViewController *)self view];
    v4 = [v3 effectiveUserInterfaceLayoutDirection];
    [v3 safeAreaInsets];
    if (v4 == 1)
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
    v4 = [(ContainerViewController *)self currentViewController];
    v5 = [v4 cardPresentationController];
    if ([v5 usingSheetPresentation])
    {
      v6 = [(ContainerViewController *)self currentViewController];
      v7 = [v6 cardPresentationController];
      v8 = [v7 takesAvailableWidth];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(ContainerViewController *)self containerStyle];
    if (v9 <= 7 && ((1 << v9) & 0xA3) != 0 || (sub_10000FA08(self) == 5) | v8 & 1)
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
    v3 = [(ContainerViewController *)self presentedViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [(ContainerViewController *)self presentedViewController];
      v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

      if (v6)
      {
        v7 = [(ContainerViewController *)self presentedViewController];
        if ([(ContaineeProtocol *)v7 preferredPresentationStyle]== 5)
        {
          goto LABEL_9;
        }
      }
    }
  }

  if (self->_willBeginDisplayingInLockScreen)
  {
    v8 = [(ContainerStack *)self->_containerStack lastState];
    v7 = [v8 viewController];
  }

  else
  {
    v7 = self->_currentViewController;
  }

LABEL_9:

  return v7;
}

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (BOOL)hasMargin
{
  v2 = [(ContainerViewController *)self view];
  v3 = [v2 effectiveUserInterfaceLayoutDirection];
  [v2 safeAreaInsets];
  if (v3 == 1)
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
  v2 = [(ContainerViewController *)self iosBasedChromeViewController];
  [v2 statusBarHeight];
  v4 = v3;

  return v4;
}

- (double)bottomSafeOffset
{
  v3 = 0.0;
  if ([(ContainerViewController *)self containerStyle]!= 6)
  {
    v4 = [(ContainerViewController *)self view];
    v5 = [v4 window];

    if (v5)
    {
      goto LABEL_3;
    }

    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {
      v7 = [(ContainerViewController *)self currentViewController];
      v8 = [v7 view];
      v5 = [v8 window];

      if (v5)
      {
LABEL_3:
        [v5 safeAreaInsets];
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
  v3 = [(ContainerViewController *)self view];
  v4 = [v3 superview];

  if (v4)
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

  v3 = [(StatusBarBackgroundView *)self->_bottomPocketView superview];

  if (v3)
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

  v8 = [(ContainerViewController *)self view];
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    v11 = [(ContainerViewController *)self currentViewController];
    v12 = [v11 cardPresentationController];
    v13 = [v12 usingSheetPresentation];

    if (v13)
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
  v3 = [(ContainerViewController *)self view];
  v4 = [v3 superview];

  if (v4)
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
  v3 = [(ContainerViewController *)self visibleViewControllers];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(ContainerViewController *)self visibleViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_cards objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (UIEdgeInsets)_calculateMapEdgeInsets
{
  v3 = [(ContainerViewController *)self viewIfLoaded];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [(ContainerViewController *)self view];
  v6 = [v5 superview];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [(ContainerViewController *)self view];
  [v7 bounds];
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
    v22 = [(ContainerViewController *)self view];
    [v22 safeAreaInsets];
    left = v23 + left;
  }

  [(ContainerViewController *)self rightSafeOffset];
  right = v24;
  if (sub_10000FA08(self) == 5)
  {
    v26 = [(ContainerViewController *)self view];
    [v26 safeAreaInsets];
    right = v27 + right;
  }

  if (!self->_chromeHidden)
  {
    v32 = [(ContainerViewController *)self view];
    v33 = [v32 effectiveUserInterfaceLayoutDirection] == 1;

    v34 = [(ContainerViewController *)self stackOnOppositeSide];
    v35 = sub_10000FA08(self);
    v36 = [(ContainerViewController *)self isContaineeStackEmpty];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v36 = [(ContainerViewController *)self isContaineeStackEmpty];
      if (!v36 && v35 == 5)
      {
        v37 = [(ContainerViewController *)self currentViewController];
        if (v37)
        {
          v38 = [(ContainerViewController *)self currentViewController];
          v36 = [v38 preferredPresentationStyle] > 1;
        }

        else
        {
          v36 = 1;
        }
      }
    }

    v39 = [(ContainerViewController *)self currentViewController];
    v40 = [v39 cardPresentationController];
    if ([v40 usingSheetPresentation])
    {
      v41 = [(ContainerViewController *)self currentViewController];
      v42 = [v41 cardPresentationController];
      v43 = [v42 takesAvailableWidth];
    }

    else
    {
      v43 = 0;
    }

    if (!self->_chromeHidden)
    {
      v44 = [(ContainerViewController *)self containerStyle];
      if ((v44 > 7 || ((1 << v44) & 0xA3) == 0) && ((v36 | v43) & 1) == 0)
      {
        if (v33 != v34)
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
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [v3 cardPresentationController];
  v5 = [v4 usingSheetPresentation];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004CF68;
  v13[3] = &unk_101623350;
  v13[4] = self;
  v14 = v5;
  v6 = objc_retainBlock(v13);
  v7 = [(ContainerViewController *)self containerStyle];
  v8 = 0.0;
  if (v7 - 2 < 3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v9 = [(ContainerViewController *)self currentViewController];
    v10 = [v9 cardPresentationController];
    v11 = [v10 takesAvailableWidth];

    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    v8 = (v6[2])(v6);
    goto LABEL_8;
  }

  if (v7 == 1 || v7 == 5)
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
    v3 = [(ContainerViewController *)self view];
    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
    }

    else
    {
      v4 = [(SupplementalStackViewController *)self->_paletteViewController isEmpty];

      if ((v4 & 1) == 0)
      {
        v8 = [(SupplementalStackViewController *)self->_paletteViewController view];
        [v8 frame];
        Width = CGRectGetWidth(v10);

        return Width;
      }
    }
  }

  v5 = [(ContainerViewController *)self hasMargin];
  result = 0.0;
  if (v5)
  {
    v7 = [(ContainerViewController *)self interfaceOrientation];
    result = 0.0;
    if (v7 == 3)
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
    v3 = [(ContainerViewController *)self view];
    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v4 = [(SupplementalStackViewController *)self->_paletteViewController isEmpty];

      if ((v4 & 1) == 0)
      {
        v5 = [(SupplementalStackViewController *)self->_paletteViewController view];
        [v5 frame];
        Width = CGRectGetWidth(v10);

        return Width;
      }
    }

    else
    {
    }
  }

  v8 = [(ContainerViewController *)self hasMargin];
  result = 0.0;
  if (v8)
  {
    v9 = [(ContainerViewController *)self interfaceOrientation];
    result = 0.0;
    if (v9 == 4)
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
    v4 = [(ContainerViewController *)self chromeViewController];
    v5 = [v4 contexts];
    v6 = [(ContainerViewController *)self chromeContext];
    v7 = [v5 containsObject:v6] ^ 1;
  }

  return v7;
}

- (BOOL)shouldHideCard
{
  if (![(ContainerViewController *)self _chromeEnabled])
  {
    return 1;
  }

  v3 = [(ContainerViewController *)self chromeViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ContainerViewController *)self chromeContext];
  v5 = [(ContainerViewController *)self chromeViewController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 isHidingCardsForContext:v4];
  }

  else
  {
    v7 = [v5 isHidingCards];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_chromeEnabled
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 _internal_isChromeDisabled];

  return v3 ^ 1;
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
  v4 = [(ContainerStack *)self->_containerStack allObjects];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 presentingViewController];
        if (v10 && ![v9 isBeingDismissed])
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = sub_10002A8B8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@ containerStackLessControllersWaitingForPresentation %@", buf, 0x16u);
  }

  return v3;
}

- (id)uikitPresentationStack
{
  v3 = +[NSMutableArray array];
  v4 = [(ContainerViewController *)self chromeViewController];
  v5 = [v4 presentedViewController];

  if (v5)
  {
    do
    {
      [v3 addObject:v5];
      v6 = [v5 presentedViewController];

      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_10002A8B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = self;
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
    v4 = [(ContainerViewController *)self currentViewController];
    v5 = [v4 presentedViewController];

    v6 = [(ContainerViewController *)self currentViewController];
    v7 = [v6 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [(ContainerViewController *)self currentViewController];
    v10 = [v9 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 1;
    }

    else
    {
      v12 = [(ContainerViewController *)self currentViewController];
      v13 = [v12 presentedViewController];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();
    }

    if ([(ContainerViewController *)self isRootContainer])
    {
      v14 = [(ContainerViewController *)self chromeViewController];
      v15 = [v14 presentedViewController];
      if (v15)
      {
        v16 = v15;
        v17 = [(ContainerViewController *)self chromeViewController];
        v18 = [v17 presentedViewController];
        v19 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:0];
        [v19 viewController];
        v20 = v27 = isKindOfClass;

        v21 = v18 == v20;
        isKindOfClass = v27;
        if (!v21)
        {
          v22 = [(ContainerViewController *)self chromeViewController];
LABEL_17:
          v26 = v22;
          [v22 dismissViewControllerAnimated:1 completion:v3];

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    if (!((v5 == 0 || (isKindOfClass & 1) == 0) | v11 & 1))
    {
      v23 = [(ContainerViewController *)self currentViewController];
      v24 = [v23 presentedViewController];
      v25 = [v24 isBeingDismissed];

      if ((v25 & 1) == 0)
      {
        v22 = [(ContainerViewController *)self currentViewController];
        goto LABEL_17;
      }
    }
  }

  (v3[2])(v3);
LABEL_15:
}

- (double)_cardHeightForComputingBottomMapEdgeInsets
{
  v4 = [(ContainerViewController *)self currentViewController];
  v5 = [v4 isBeingDismissed];
  if ((v5 & 1) == 0)
  {
    v2 = [(ContainerViewController *)self currentViewController];
    v6 = 0.0;
    if (![v2 isBeingPresented])
    {
      goto LABEL_8;
    }
  }

  v7 = [(ContainerViewController *)self currentViewController];
  v8 = [v7 presentingViewController];
  v9 = sub_100010C34(v8, &OBJC_PROTOCOL___ContaineeProtocol);

  if (v5)
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
    v10 = [(ContainerViewController *)self currentViewController];
    v11 = [v10 presentingViewController];
    v4 = [v11 sheetPresentationController];

    v2 = [v4 containerView];
    [v2 bounds];
    Height = CGRectGetHeight(v19);
    [v4 _currentPresentedViewFrame];
    v6 = Height - CGRectGetMinY(v20);
LABEL_8:
  }

LABEL_9:
  v13 = [(ContainerViewController *)self currentViewController];
  v14 = [v13 sheetPresentationController];

  v15 = [v14 containerView];
  [v15 bounds];
  v16 = CGRectGetHeight(v21);
  [v14 _currentPresentedViewFrame];
  v17 = v16 - CGRectGetMinY(v22);

  return fmax(v6, v17);
}

- (ContainerDelegate)containerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005DB8C8;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)macMenuPresentationControllerDidDismiss:(id)a3
{
  [a3 removeObserver:self];

  [(ContainerViewController *)self _presentCurrentMenuViewControllerAnimated:1 completion:0];
}

- (void)macMenuPresentationControllerWillDismiss:(id)a3
{
  currentMenuViewController = self->_currentMenuViewController;
  v5 = a3;
  v6 = [(ContaineeProtocol *)currentMenuViewController macMenuPresentationController];

  if (v6 == v5)
  {
    v7 = self->_currentMenuViewController;
    self->_currentMenuViewController = 0;
  }
}

- (void)_dismissCurrentMenuViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  currentMenuViewController = self->_currentMenuViewController;
  if (currentMenuViewController)
  {
    [(ContainerViewController *)self _dismissMenuViewController:currentMenuViewController animated:v3];
  }
}

- (void)_dismissMenuViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    currentMenuViewController = self->_currentMenuViewController;
    if (currentMenuViewController == v6)
    {
      self->_currentMenuViewController = 0;
      v11 = v6;

      v8 = [(ContaineeProtocol *)v11 macMenuPresentationController];
      v9 = [v8 isPresented];

      v6 = v11;
      if (v9)
      {
        v10 = [(ContaineeProtocol *)v11 macMenuPresentationController];
        [v10 dismissAnimated:v4 completion:&stru_101623430];

        v6 = v11;
      }
    }
  }
}

- (void)_presentCurrentMenuViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  currentMenuViewController = self->_currentMenuViewController;
  if (!currentMenuViewController)
  {
    goto LABEL_5;
  }

  v8 = [(ContaineeProtocol *)currentMenuViewController macMenuPresentationController];
  if ([v8 isPresented])
  {

    goto LABEL_5;
  }

  v9 = [(ContaineeProtocol *)self->_currentMenuViewController macMenuPresentationController];
  v10 = [v9 isDismissing];

  if (v10)
  {
LABEL_5:
    if (v6)
    {
      v6[2](v6, 0);
    }

    goto LABEL_14;
  }

  v11 = [(ContaineeProtocol *)self->_currentMenuViewController macMenuPresentationController];
  v12 = [v11 containerViewController];

  if (!v12)
  {
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {
      [v11 setContainerViewController:self];
    }

    else
    {
      v13 = [(ContainerViewController *)self chromeViewController];
      [v11 setContainerViewController:v13];
    }
  }

  [v11 addObserver:self];
  v14 = [v11 containerViewController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005DBD64;
  v15[3] = &unk_101661760;
  v16 = v6;
  [v11 presentFromViewController:v14 animated:v4 completion:v15];

LABEL_14:
}

- (void)_presentMenuViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v10 = a5;
  currentMenuViewController = self->_currentMenuViewController;
  if (currentMenuViewController)
  {
    [(ContainerViewController *)self _dismissCurrentMenuViewControllerAnimated:v6];
    currentMenuViewController = self->_currentMenuViewController;
  }

  self->_currentMenuViewController = v8;

  [(ContainerViewController *)self _presentCurrentMenuViewControllerAnimated:v6 completion:v10];
}

- (void)_popPalette:(BOOL)a3 completion:(id)a4
{
  [(SupplementalStackViewController *)self->_paletteViewController popContainee:a3 completion:a4];
  if ([(SupplementalStackViewController *)self->_paletteViewController isEmpty])
  {
    paletteWidthConstraint = self->_paletteWidthConstraint;

    [(NSLayoutConstraint *)paletteWidthConstraint setConstant:0.0];
  }
}

- (void)_pushPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  [(SupplementalStackViewController *)self->_paletteViewController pushContainee:a3 animated:a4 completion:a5];
  paletteWidthConstraint = self->_paletteWidthConstraint;

  [(NSLayoutConstraint *)paletteWidthConstraint setConstant:282.0];
}

- (void)_dismissPresentedViewControllersIfNeededForViewController:(id)a3
{
  v43 = a3;
  v4 = [(ContainerViewController *)self topMostPresentedViewController];
  v5 = v4;
  if (v4 && v4 != self)
  {
    while (1)
    {
      if ([(ContainerStack *)self->_containerStack indexOfContainee:v5]!= 0x7FFFFFFFFFFFFFFFLL)
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
          v37 = self;
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

          v40 = [(ContainerViewController *)v37 performSelector:"accessibilityIdentifier"];
          v41 = v40;
          if (v40 && ![v40 isEqualToString:v39])
          {
            v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];
          }

          else
          {

LABEL_44:
            v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
          }

          *buf = 138543362;
          v47 = v42;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}@] Allowing presentation on top of non-containee VC (opted out via config)", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v29)
      {
        v30 = self;
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_30;
        }

        v33 = [(ContainerViewController *)v30 performSelector:"accessibilityIdentifier"];
        v34 = v33;
        if (v33 && ![v33 isEqualToString:v32])
        {
          v35 = [NSString stringWithFormat:@"%@<%p, %@>", v32, v30, v34];
        }

        else
        {

LABEL_30:
          v35 = [NSString stringWithFormat:@"%@<%p>", v32, v30];
        }

        *buf = 138543362;
        v47 = v35;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}@] Dismissing non-containee VC before presenting new VC", buf, 0xCu);
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1005DC4F8;
      v44[3] = &unk_101661B18;
      v45 = v5;
      v36 = v5;
      [UIViewController _performWithoutDeferringTransitions:v44];

      v5 = [(ContainerViewController *)self topMostPresentedViewController];

      if (!v5 || v5 == self)
      {
        goto LABEL_47;
      }
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ContainerViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

LABEL_10:
        v13 = v12;
        v14 = v43;
        if (!v43)
        {
          v19 = @"<nil>";
LABEL_18:

          v20 = v19;
          v21 = v5;
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

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
    goto LABEL_10;
  }

LABEL_47:
}

- (void)_sequentiallyPresentViewControllers:(id)a3 allowAnimations:(BOOL)a4
{
  v4 = a4;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1005DC5F8;
  v12 = &unk_101661A90;
  v6 = a3;
  v13 = v6;
  v14 = self;
  v7 = objc_retainBlock(&v9);
  v8 = v7;
  if (v4)
  {
    (v7[2])(v7);
  }

  else
  {
    [UIView performWithoutAnimation:v7, v9, v10, v11, v12];
  }
}

- (void)_internal_ensurePresentationsMatchContaineeStackAllowingFault:(BOOL)a3 allowingAnimations:(BOOL)a4 skipUnlock:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v9 = sub_10002A8B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v35 = self;
    v36 = 2080;
    v37 = "[ContainerViewController _internal_ensurePresentationsMatchContaineeStackAllowingFault:allowingAnimations:skipUnlock:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ %s", buf, 0x16u);
  }

  if (-[ContainerViewController allowsDisplayOnLockScreen](self, "allowsDisplayOnLockScreen") || (-[ContainerViewController view](self, "view"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) == 0))
  {
    v13 = [(ContainerViewController *)self internalStackLessWaitingForPresentation];
    v14 = [(ContainerViewController *)self uikitPresentationStack];
    if ([(ContainerViewController *)self presentationStackAppearsCorrectWithInternalStack:v13 uikitStack:v14])
    {
      if (!a5)
      {
        v15 = sub_10002A8B8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ unlocking card queue because presentationStackAppearsCorrect YES", buf, 0xCu);
        }

        if (v6)
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

    v16 = [(ContainerViewController *)self chromeViewController];
    v17 = [v16 presentedViewController];

    if (v17)
    {
      do
      {
        v18 = [v16 presentedViewController];

        v19 = [v18 presentedViewController];

        v16 = v18;
      }

      while (v19);
    }

    else
    {
      v18 = v16;
    }

    v20 = [v18 transitionCoordinator];

    v21 = sub_10002A8B8();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%@ presentation stack is incorrect but a presentation is occuring. adding completion to try again.", buf, 0xCu);
      }

      v23 = [v18 transitionCoordinator];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1005DCE78;
      v30[3] = &unk_101623410;
      v30[4] = self;
      v31 = v7;
      v32 = v6;
      v33 = a5;
      [v23 animateAlongsideTransition:0 completion:v30];
      goto LABEL_29;
    }

    if (v7)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v35 = self;
        v24 = v22;
        v25 = OS_LOG_TYPE_FAULT;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ Rebuilding because presentationStackAppearsCorrect is incorrect. Starting with dismiss of everything", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = self;
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_27;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1005DCE90;
    v27[3] = &unk_101660CE8;
    v27[4] = self;
    v28 = v13;
    v29 = v6;
    [UIViewController _performWithoutDeferringTransitions:v27];
    v23 = v28;
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v13 = sub_10002A8B8();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ bailing on ensure check because we're on the lock screen, and this container cannot present on lock screen", buf, 0xCu);
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
    v3 = [(ContainerViewController *)self internalStackLessWaitingForPresentation];
    v4 = [(ContainerViewController *)self uikitPresentationStack];
    if ([(ContainerViewController *)self presentationStackAppearsCorrectWithInternalStack:v3 uikitStack:v4])
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

    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_14;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_12;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_12:

LABEL_14:
    *buf = 138543874;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "[%{public}@] presentation stack appears incorrect. internalStack: %@ uikitStack: %@", buf, 0x20u);

    goto LABEL_15;
  }
}

- (BOOL)presentationStackAppearsCorrectWithInternalStack:(id)a3 uikitStack:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10002A8B8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = self;
    v25 = 2080;
    v26 = "[ContainerViewController presentationStackAppearsCorrectWithInternalStack:uikitStack:]";
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ %s %@", buf, 0x20u);
  }

  v9 = [v6 count];
  if (v9 <= [v7 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v6;
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

          if (([v7 containsObject:{*(*(&v18 + 1) + 8 * i), v18}] & 1) == 0)
          {
            v16 = sub_10002A8B8();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = self;
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
      v24 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ presentationStackAppearsCorrect NO because more containees in stack than UIKit", buf, 0xCu);
    }

LABEL_18:
    v15 = 0;
  }

  return v15;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v15 = a3;
  v4 = [v15 presentedViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  v6 = v15;
  if (v5)
  {
    v7 = [v15 presentedViewController];
    v8 = [(ContainerStack *)self->_containerStack indexOfContainee:v7];
    v9 = v8;
    if (v8)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_7:

        v6 = v15;
        goto LABEL_8;
      }

      v10 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v8 - 1];
      v11 = [v10 viewController];
    }

    else
    {
      v11 = 0;
    }

    [v7 didDismissByGesture];
    [(ContainerTransitionManager *)self->_transitionManager didPerformUnmanagedDismissOfViewController:v7 revealingViewController:v11];
    containerStack = self->_containerStack;
    v13 = [(ContainerStack *)containerStack containeeStateAtIndex:v9];
    [(ContainerStack *)containerStack removeContaineeState:v13];

    v14 = [v11 cardPresentationController];
    [v14 cardHeight];
    [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:?];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = [v4 presentedViewController];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  if (v6)
  {
    v7 = [v4 presentedViewController];
    v8 = [(ContainerStack *)self->_containerStack indexOfContainee:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      [v7 willDismissByGesture];
      if (v9)
      {
        v10 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v9 - 1];
        v11 = [v10 viewController];
      }

      else
      {
        v11 = 0;
      }

      [v11 willBecomeCurrentByGesture];
      v12 = [v11 presentedViewController];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 presentedViewController];
        v15 = v14;
        if (v14 == v7)
        {
        }

        else
        {
          v16 = [v11 presentedViewController];
          v17 = [v16 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

          if (v17)
          {
            v18 = [v11 presentedViewController];
            v19 = [v18 cardPresentationController];
            v20 = [v19 hidden];

            v21 = [v7 transitionCoordinator];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_1005DD78C;
            v26[3] = &unk_101661710;
            v27 = v18;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_1005DD7D4;
            v23[3] = &unk_101623308;
            v24 = v27;
            v25 = v20;
            v22 = v27;
            [v21 animateAlongsideTransition:v26 completion:v23];
          }
        }
      }
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = [(ContainerViewController *)self currentViewController];
  v5 = [v4 cardPresentationController];
  if ([v5 usingSheetPresentation])
  {
    v6 = [(ContainerViewController *)self currentViewController];
    v7 = [v6 cardPresentationController];
    v8 = [v7 allowsSwipeToDismiss];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3
{
  v4 = a3;
  v5 = [(ContainerViewController *)self view];
  [v5 setNeedsLayout];

  LODWORD(v5) = [v4 _isDragging];
  if (v5)
  {
    v6 = [(ContainerViewController *)self currentViewController];
    [v6 didInvalidateVisibleFrameByGesture];
  }
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ContainerViewController *)self view];
  [v5 setNeedsLayout];

  v6 = [v4 presentedViewController];
  v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];

  if (v7)
  {
    v8 = [(ContainerViewController *)self view];
    v9 = [v8 window];
    [v9 endEditing:1];

    v10 = [v4 presentedViewController];
    v11 = [v10 cardPresentationController];
    -[ContainerViewController containee:willChangeLayout:source:](self, "containee:willChangeLayout:source:", v10, [v11 containeeLayout], 0);

    v12 = [v4 selectedDetentIdentifier];
    v13 = [v4 detents];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005DDC54;
    v25[3] = &unk_1016233E8;
    v26 = v12;
    v14 = v12;
    v15 = [v13 indexOfObjectPassingTest:v25];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL || ([v4 _detentValues], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15 >= v17) || (objc_msgSend(v4, "_detentValues"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectAtIndexedSubscript:", v15), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "cgFloatValue"), v21 = v20, v19, v18, v21 == UISheetPresentationControllerDetentInactive) || v21 < 0.0)
    {
      v22 = [v10 cardPresentationController];
      [v22 cardHeight];
      v21 = v23;
    }

    [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:v21];
    v24 = [v10 cardPresentationController];
    -[ContainerViewController containee:didChangeLayout:](self, "containee:didChangeLayout:", v10, [v24 containeeLayout]);
  }
}

- (void)requestDismissalWithCardDismissalHelper:(id)a3
{
  v4 = [(ContainerViewController *)self currentViewController];
  v3 = [v4 cardPresentationController];
  [v3 wantsLayout:1];
}

- (double)dismissalRectTopEdgeForCardDismissalHelper:(id)a3 coordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(ContainerViewController *)self currentViewController];
  v7 = [v6 view];

  [v7 bounds];
  [v7 convertRect:v5 toCoordinateSpace:?];
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

- (BOOL)cardDismissalHelperShouldObserveGestures:(id)a3
{
  v4 = [(ContainerViewController *)self currentViewController];
  result = (!v4 || (v5 = v4, -[ContainerViewController currentViewController](self, "currentViewController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 shouldCollapseOnMapGesture], v6, v5, v7)) && -[ContainerViewController containeeLayout](self, "containeeLayout") != 1 && -[ContainerViewController containerStyle](self, "containerStyle") == 1;
  return result;
}

- (int)currentMapViewTargetForAnalytics
{
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)overriddenLayoutForCurrentController:(unint64_t)a3
{
  if ([(ContainerViewController *)self containerStyle]== 3)
  {
    return 4;
  }

  if (-[ContainerViewController containerStyle](self, "containerStyle") != 6 || (-[ContainerViewController currentViewController](self, "currentViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 cardPresentationController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "allowResizeInFloatingStyle"), v6, v5, (v7 & 1) == 0))
  {
    if ([(ContainerViewController *)self containerStyle]!= 6)
    {
      v8 = [(ContainerViewController *)self currentViewController];
      v9 = [v8 cardPresentationController];
      v10 = [v9 presentedModally];

      if (v10)
      {
        return 5;
      }
    }

    if (![(ContainerViewController *)self allowOnlyStandardStyle]&& a3 != 5)
    {
      v11 = [(ContainerViewController *)self containerStyle];
      if (v11 <= 7)
      {
        if (((1 << v11) & 0xC8) != 0)
        {
          return 4;
        }

        if (((1 << v11) & 6) != 0)
        {
          if (a3 == 4)
          {
            return 3;
          }
        }

        else
        {
          v12 = 4;
          if (a3 - 1 < 2)
          {
            v12 = 1;
          }

          if (((1 << v11) & 0x30) != 0)
          {
            return v12;
          }
        }
      }
    }
  }

  return a3;
}

- (void)updateHeightConstraintWithValue:(double)a3
{
  v5 = [(ContaineeProtocol *)self->_currentViewController cardPresentationController];
  v6 = [v5 updateHeightConstraintWithValue:a3];

  if (v6)
  {
    self->_shouldEndTransitionWhenAnimationCompletes = 0;

    [(ContainerViewController *)self contentHeightUpdatedWithValue:a3];
  }
}

- (void)_notifyObserversWithContainerStyle:(unint64_t)a3 value:(double)a4
{
  v6 = 0.0;
  if ((a3 | 4) == 5)
  {
    v7 = a3 == 5 ? 1 : 2;
    v8 = [(ContainerViewController *)self currentViewController];
    [v8 heightForLayout:v7];
    v10 = v9;

    if (v10 < a4)
    {
      v6 = fmin(fmax((a4 - v10) / (v10 * 0.100000024), 0.0), 1.0);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(NSMapTable *)self->_resizingBlocksByObserver objectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * i) + 16))(a4, v6);
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (BOOL)_isCurrentSheetDragging
{
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [v3 sheetPresentationController];
  if ([v4 _isDragging])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ContainerViewController *)self currentViewController];
    v7 = [v6 sheetPresentationController];
    v5 = [v7 _isGeneratingAnimations];
  }

  return v5;
}

- (void)_notifyResizingObserversWithValue:(double)a3 onlyIfDragging:(BOOL)a4
{
  v4 = a4;
  if (![(NSMapTable *)self->_resizingBlocksByObserver count])
  {
    return;
  }

  v7 = [(ContainerViewController *)self containerStyle];
  v8 = [(ContainerViewController *)self currentViewController];
  v9 = [v8 cardPresentationController];
  v10 = [v9 usingSheetPresentation];

  if (!v10)
  {
    goto LABEL_7;
  }

  if (!v4 || self->_transitioning || [(ContainerViewController *)self _isCurrentSheetDragging])
  {
    v11 = [(ContainerViewController *)self currentViewController];
    v12 = [v11 cardPresentationController];
    v7 = [v12 containerStyle];

LABEL_7:

    [(ContainerViewController *)self _notifyObserversWithContainerStyle:v7 value:a3];
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

- (void)contentHeightUpdatedWithValue:(double)a3
{
  if (self->_transitioning)
  {
    v5 = [(ContainerViewController *)self currentViewController];
    v6 = [v5 cardPresentationController];
    [v6 cardHeight];
    a3 = v7;
  }

  [(ContainerViewController *)self _updateBottomPocketForContaineeHeight:a3];

  [(ContainerViewController *)self _notifyResizingObserversWithValue:1 onlyIfDragging:a3];
}

- (void)registerResizingObserver:(id)a3 withBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    resizingBlocksByObserver = self->_resizingBlocksByObserver;
    if (resizingBlocksByObserver)
    {
      if (v6)
      {
LABEL_4:
        v8 = [v6 copy];
        [(NSMapTable *)resizingBlocksByObserver setObject:v8 forKey:v11];

        goto LABEL_7;
      }
    }

    else
    {
      v9 = +[NSMapTable weakToStrongObjectsMapTable];
      v10 = self->_resizingBlocksByObserver;
      self->_resizingBlocksByObserver = v9;

      resizingBlocksByObserver = self->_resizingBlocksByObserver;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    [(NSMapTable *)resizingBlocksByObserver removeObjectForKey:v11];
  }

LABEL_7:
}

- (void)snapToLayout:(unint64_t)a3
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if ((byte_10195DF08 & 1) == 0)
  {
    self->_shouldEndTransitionWhenAnimationCompletes = 1;
    v5 = [(ContainerViewController *)self currentViewController];
    [v5 heightForLayout:a3];
    v7 = v6;

    v8 = [(ContainerViewController *)self currentViewController];
    v9 = [v8 cardPresentationController];
    v10 = [v9 updateHeightConstraintWithValue:v7];

    if (v10)
    {
      if ([(ContainerViewController *)self layoutModalPresenter]== 3)
      {
        v11 = [(ContainerViewController *)self currentViewController];
        v12 = [v11 cardPresentationController];
        v13 = [v12 presentedModally];

        if (v13)
        {
          v14 = [(ContainerViewController *)self modalPresenter];
          v15 = [v14 cardPresentationController];
          [v15 updateHeightConstraintWithValue:v7];
        }
      }

      v16 = [(ContainerViewController *)self view];
      [v16 updateConstraintsIfNeeded];

      v17 = [(ContainerViewController *)self animationManager];
      v18 = [v17 cardHeightAnimation];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1005DE880;
      v22[3] = &unk_1016575B0;
      v22[4] = self;
      *&v22[5] = v7;
      v22[6] = a3;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1005DE8DC;
      v21[3] = &unk_101661738;
      v21[4] = self;
      [v18 applyWithAnimations:v22 completion:v21];
    }

    else
    {
      v19 = [(ContainerViewController *)self currentViewController];
      v20 = [v19 cardPresentationController];
      [v20 cardHeight];

      [(ContainerViewController *)self _completeStateIfNeeded];
    }
  }
}

- (void)transitionEnded
{
  self->_transitioning = 0;
  v2 = [(ContainerViewController *)self _maps_mapsSceneDelegate];
  [v2 setNeedsUserActivityUpdate];
}

- (void)sidebarVisibilityDidChange:(BOOL)a3
{
  v3 = a3;
  v4 = [(ContainerViewController *)self containerStyleManager];
  [v4 sidebarVisibilityDidChange:v3];
}

- (void)animateAlongsideCardTransition
{
  v4 = [(ContainerViewController *)self currentViewController];
  v3 = [v4 cardPresentationController];
  [v3 cardHeight];
  [(ContainerViewController *)self _notifyResizingObserversWithValue:0 onlyIfDragging:?];
}

- (void)_completeStateIfNeeded
{
  if (self->_incompleteCompletion)
  {
    self->_incompleteCompletion = 0;
    [(ContainerViewController *)self containee:self->_currentViewController didChangeLayout:self->_containeeLayout];
    v4 = [(ContainerViewController *)self currentViewController];
    [v4 didChangeLayout:self->_containeeLayout];

    [(ContainerViewController *)self transitionEnded];
  }
}

- (void)setLayoutIfSupported:(unint64_t)a3 animated:(BOOL)a4 source:(unint64_t)a5
{
  v6 = a4;
  v9 = [(ContainerViewController *)self currentViewController];

  if (!v9)
  {
    return;
  }

  v10 = [(ContainerViewController *)self currentViewController];
  v11 = [v10 cardPresentationController];
  v12 = [v11 usingSheetPresentation];

  if (v12)
  {
    v13 = [(ContainerViewController *)self currentViewController];
    v14 = [v13 cardPresentationController];
    v15 = [v14 containeeLayout];

    if (v15 == a3)
    {
      self->_incompleteCompletion = 1;
LABEL_17:

      [(ContainerViewController *)self _completeStateIfNeeded];
      return;
    }

    v19 = [(ContainerViewController *)self currentViewController];
    v17 = [v19 cardPresentationController];
    [v17 wantsLayout:a3];
  }

  else
  {
    v16 = [(ContainerViewController *)self overriddenLayoutForCurrentController:a3];
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

      [(ContainerViewController *)self containee:self->_currentViewController willChangeLayout:v16 source:a5];
      v18 = [(ContainerViewController *)self currentViewController];
      [v18 willChangeLayout:v16];

      self->_containeeLayout = v16;
      [(ContainerViewController *)self _updateContaineeIfNeeded:self->_currentViewController withLayout:v16];

      [(ContainerViewController *)self updateLayoutAnimated:v6];
    }
  }
}

- (void)updateLayoutAnimated:(BOOL)a3
{
  if (self->_currentViewController)
  {
    v3 = a3;
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if ((byte_10195DF08 & 1) == 0)
    {
      if (v3)
      {
        self->_shouldEndTransitionWhenAnimationCompletes = 1;
        v5 = [(ContainerViewController *)self view];
        [v5 updateConstraintsIfNeeded];

        v6 = [(ContainerViewController *)self animationManager];
        v7 = [v6 cardHeightAnimation];
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
        [v7 applyWithAnimations:v13 completion:v12];
      }

      else
      {
        [(ContainerViewController *)self _updateVisibleContentForLayout:self->_containeeLayout];
        if (self->_transitioning)
        {
          v8 = [(ContainerViewController *)self view];
          [v8 layoutIfNeeded];
        }

        [(ContainerViewController *)self containee:self->_currentViewController didChangeLayout:self->_containeeLayout];
        v9 = [(ContainerViewController *)self currentViewController];
        [v9 didChangeLayout:self->_containeeLayout];

        v10 = [(ContainerViewController *)self currentViewController];
        [v10 heightForLayout:self->_containeeLayout];
        [(ContainerViewController *)self contentHeightUpdatedWithValue:?];

        [(ContainerViewController *)self updateContaineeStackState];
      }

      v11 = [(ContainerViewController *)self iosBasedChromeViewController];
      [v11 setNeedsUpdateComponent:@"statusBarStyle" animated:v3];
    }
  }
}

- (BOOL)_updateContaineeIfNeeded:(id)a3 withLayout:(unint64_t)a4
{
  v5 = a3;
  [v5 heightForLayout:a4];
  v7 = v6;
  if (v6 != -1.0)
  {
    v8 = [v5 cardPresentationController];
    [v8 updateHeightConstraintWithValue:v7];
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
    v4 = [(ContainerViewController *)self view];
    [v4 safeAreaInsets];
    v6 = v5;

    result = 24.0;
    if (v6 != 0.0)
    {
      return 12.0;
    }
  }

  return result;
}

- (void)setChromeHidden:(BOOL)a3
{
  if (self->_chromeHidden != a3)
  {
    self->_chromeHidden = a3;
  }
}

- (void)_updateVisibleContentForLayout:(unint64_t)a3
{
  v4 = [(ContainerViewController *)self currentViewController];
  v6 = v4;
  v5 = 1.0;
  if (a3 == 1)
  {
    v5 = 0.0;
  }

  [v4 applyAlphaToContent:v5];
}

- (BOOL)shouldPassPoint:(CGPoint)a3 withEvent:(id)a4 inView:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = [(ContainerViewController *)self currentViewController];
  v10 = [v9 view];

  [v10 alpha];
  if (v11 == 0.0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v13 = [(ContainerViewController *)self view];
    [v13 convertPoint:v8 fromView:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(ContainerViewController *)self containerView];
    [v18 frame];
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
  v2 = [(ContainerViewController *)self animationManager];
  v3 = [v2 cardHeightAnimation];

  return v3;
}

- (void)removeControllerFromStack:(id)a3
{
  v4 = a3;
  v5 = sub_10002A8B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    containerStack = v6->_containerStack;
    *buf = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = containerStack;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] removeControllerFromStack: %@, containerStack: %@", buf, 0x20u);
  }

  v13 = [(ContainerStack *)self->_containerStack indexOfContainee:v4];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:v13];
    if (v14)
    {
      [(ContainerStack *)self->_containerStack removeContaineeState:v14];
    }
  }
}

- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = sub_10002A8B8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v46 = v11;
    v13 = v8;
    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_10;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(ContainerViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_8;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_8:

LABEL_10:
    v20 = v19;
    v21 = [(ContaineeProtocol *)v10 preferredPresentationStyle];
    containerStack = v14->_containerStack;

    *buf = 138544642;
    v59 = v19;
    v60 = 2112;
    v61 = v10;
    v62 = 1024;
    v8 = v13;
    v63 = v13;
    v64 = 1024;
    v65 = v7;
    v66 = 2048;
    v67 = v21;
    v68 = 2112;
    v69 = containerStack;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] presentController: %@, animated: %d, useDefaultContaineeLayout: %d, preferredStyle: %lu, containerStack: %@", buf, 0x36u);

    v11 = v46;
  }

  if (self->_enableMacPresentationStyles)
  {
    v23 = [(ContaineeProtocol *)v10 preferredPresentationStyle];
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          [(ContainerViewController *)self _pushPalette:v10 animated:v8 completion:v11];
          goto LABEL_40;
        case 4:
          [(ContainerViewController *)self _presentMenuViewController:v10 animated:v8 completion:v11];
          goto LABEL_40;
        case 5:
          [(ContaineeProtocol *)v10 setModalPresentationStyle:2];
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_1005DFC68;
          v55[3] = &unk_1016605F8;
          v55[4] = self;
          v56 = v10;
          v57 = v11;
          [(ContainerViewController *)self presentViewController:v56 animated:1 completion:v55];

          goto LABEL_40;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          goto LABEL_16;
        case 1:
          v42 = [(ContainerViewController *)self chromeViewController];
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            v44 = [(ContainerViewController *)self chromeViewController];
            [v44 pushSidebarViewController:v10];
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

  if (self->_currentViewController != v10)
  {
    if (qword_10195CBD0 != -1)
    {
      dispatch_once(&qword_10195CBD0, &stru_1016233C0);
    }

    if (byte_101928890 == 1)
    {
      v25 = [(ContaineeProtocol *)v10 cardPresentationController];
      v26 = [v25 alwaysUseDefaultContaineeLayout];

      v7 |= v26;
    }

    self->_containeeLayout = 0;
    v45 = v8;
    if (v10)
    {
      v27 = [(ContainerStack *)self->_containerStack indexOfContainee:v10];
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [[ContaineeState alloc] initWithContainee:v10];
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
    v31 = [(ContainerViewController *)self currentViewController];
    v32 = [v31 cardPresentationController];
    v33 = [v32 presentedModally] ^ 1;

    if ((v7 & v33 & 1) != 0 || !v30)
    {
      v34 = [(ContainerViewController *)self originalLayoutForViewController:v10];
      v35 = [(ContaineeProtocol *)v10 cardPresentationController];
      v36 = [v35 presentedModally];

      if (v36)
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
    v37 = v10;
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
    v49 = self;
    v41 = objc_retainBlock(v47);
    [(ContainerTransitionManager *)self->_transitionManager presentViewController:v40 isAlreadyInStack:v29 layout:v30 animated:v45 preprocess:v39 postprocess:v41 completion:v11];

    goto LABEL_40;
  }

  if (v11)
  {
    (*(v11 + 2))(v11, 1);
  }

  [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
LABEL_40:
}

- (void)setControllerStack:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_10;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(ContainerViewController *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_8;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v80 = v16;
    v81 = 2112;
    v82 = v8;
    v83 = 1024;
    v84 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] setControllerStack: %@, animated: %d", buf, 0x1Cu);
  }

  v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
  if (self->_enableMacPresentationStyles && self->_currentMenuViewController && ([v8 containsObject:?] & 1) == 0)
  {
    [(ContainerViewController *)self _dismissCurrentMenuViewControllerAnimated:v6];
  }

  v18 = [(ContainerStack *)self->_containerStack allObjects];
  if (![v18 isEqualToArray:v8])
  {
    v19 = objc_alloc_init(ContainerStack);
    if ([v8 count])
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1005E06D0;
      v73[3] = &unk_101623378;
      v73[4] = self;
      v8 = v8;
      v74 = v8;
      v75 = v19;
      [v8 enumerateObjectsUsingBlock:v73];

      goto LABEL_30;
    }

    v20 = [(ContainerStack *)self->_containerStack lastState];
    if (![(ContainerViewController *)self supportsEmptyStack])
    {
      if ([(ContainerStack *)self->_containerStack count]>= 2 && ([(ContainerStack *)self->_containerStack containeeStateAtIndex:0], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = v21;
        [(ContainerStack *)v19 pushContaineeState:v21];
        [v18 firstObject];
        v56 = v19;
        v23 = v9;
        v25 = v24 = v6;
        v78 = v25;
        v26 = [NSArray arrayWithObjects:&v78 count:1];

        v8 = v25;
        v6 = v24;
        v9 = v23;
        v19 = v56;
      }

      else
      {
        if (!v20)
        {
LABEL_29:

LABEL_30:
          v27 = [(ContainerStack *)self->_containerStack lastState];
          v28 = [(ContainerStack *)v19 lastState];
          if (v27 == v28)
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
              if (*(&self->super.super.super.super.super.isa + v29) && ([v8 containsObject:?] & 1) == 0)
              {
                [(ContainerViewController *)self _dismissMenuViewController:*(&self->super.super.super.super.super.isa + v29) animated:1];
              }

              v30 = [(ContainerViewController *)self presentedViewController];
              if (v30)
              {
                v31 = v30;
                v32 = [(ContainerViewController *)self presentedViewController];
                v33 = sub_100010C34(v32, &OBJC_PROTOCOL___ContaineeProtocol);

                if (v33)
                {
                  v34 = [(ContainerViewController *)self presentedViewController];
                  if ([v34 preferredPresentationStyle] == 5)
                  {
                    [v8 lastObject];
                    v57 = v19;
                    v36 = v35 = v6;
                    v37 = [v36 preferredPresentationStyle];
                    v59[0] = _NSConcreteStackBlock;
                    v59[1] = 3221225472;
                    v59[2] = sub_1005E08A0;
                    v59[3] = &unk_1016233A0;
                    v59[4] = self;
                    v38 = v34;
                    v63 = v37 == 5;
                    v60 = v38;
                    v61 = v36;
                    v64 = v35;
                    v62 = v9;
                    v39 = v36;
                    [(ContainerViewController *)self dismissViewControllerAnimated:v35 completion:v59];

                    v6 = v35;
                    v19 = v57;
                    if (v37 == 5)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }

              v38 = [v8 lastObject];
              [(ContainerViewController *)self presentController:v38 animated:v6 useDefaultContaineeLayout:1 completion:v9];
LABEL_41:

              goto LABEL_42;
            }

            v27 = [(ContainerStack *)self->_containerStack allObjects];
            v28 = [(ContainerStack *)v19 allObjects];
            if (([v27 isEqualToArray:v28] & 1) == 0)
            {
              v55 = v6;
              v43 = [v27 firstObject];
              v44 = [v43 presentingViewController];
              v45 = v44;
              v58 = v19;
              if (v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = [(ContainerViewController *)self chromeViewController];
              }

              v54 = v46;

              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v47 = v28;
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
              v67 = self;
              v28 = v47;
              v68 = v28;
              v53 = v54;
              [UIViewController _performWithoutDeferringTransitions:v65];

              v6 = v55;
              v19 = v58;
              v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
            }
          }

          goto LABEL_32;
        }

        v22 = [v18 lastObject];
        v77 = v22;
        v26 = [NSArray arrayWithObjects:&v77 count:1];
      }

      v8 = v26;
      v17 = &OBJC_IVAR___VenueDropDownOutlineCellModel__venueIdentifier;
    }

    if (v20)
    {
      [(ContainerStack *)v19 pushContaineeState:v20];
    }

    goto LABEL_29;
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }

LABEL_42:
}

- (BOOL)controllerIsInStack:(id)a3
{
  v4 = a3;
  v5 = [(ContainerTransitionManager *)self->_transitionManager hasWaitingTransitionForViewController:v4]|| [(ContainerStack *)self->_containerStack indexOfContainee:v4]!= 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (void)replaceCurrentWithController:(id)a3 moveToContaineeLayout:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_10002A8B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(ContainerViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    containerStack = v8->_containerStack;
    *buf = 138544130;
    v23 = v13;
    v24 = 2112;
    v25 = v6;
    v26 = 2048;
    v27 = a4;
    v28 = 2112;
    v29 = containerStack;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] replaceCurrentWithController: %@, newContaineeLayout: %lu, containerStack: %@", buf, 0x2Au);
  }

  if (!self->_enableMacPresentationStyles || [(ContainerViewController *)self containeeLayout]| a4 && ([(ContaineeProtocol *)v6 preferredPresentationStyle]== 2 || ![(ContaineeProtocol *)v6 preferredPresentationStyle]))
  {
    if (self->_currentViewController == v6)
    {
      [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
    }

    else
    {
      v15 = [(ContainerStack *)self->_containerStack lastState];
      self->_containeeLayout = 0;
      if ([(ContainerStack *)self->_containerStack indexOfContainee:v6]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1005E0CE8;
        v20[3] = &unk_101661A90;
        v20[4] = self;
        v16 = v6;
        v21 = v16;
        v17 = objc_retainBlock(v20);
        if (v15)
        {
          v18 = [v15 layoutForStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
        }

        else
        {
          v18 = 0;
        }

        if (a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v18;
        }

        [(ContainerTransitionManager *)self->_transitionManager replaceCurrentWithViewController:v16 isAlreadyInStack:0 layout:v19 animated:1 postprocess:v17];
      }

      else
      {
        [(ContainerViewController *)self presentController:v6];
      }
    }
  }

  else
  {
    [(ContainerViewController *)self presentController:v6 animated:1 useDefaultContaineeLayout:1 completion:0];
  }
}

- (void)replaceCurrentWithController:(id)a3 moveToContaineeDefaultLayout:(BOOL)a4
{
  v5 = a3;
  [(ContainerViewController *)self replaceCurrentWithController:v5 moveToContaineeLayout:[(ContainerViewController *)self originalLayoutForViewController:v5]];
}

- (void)popLastViewControllerFromViewController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = sub_10002A8B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self;
    if (!v10)
    {
      v15 = @"<nil>";
      goto LABEL_10;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(ContainerViewController *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_8;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_8:

LABEL_10:
    v16 = v15;
    v17 = [v8 preferredPresentationStyle];
    containerStack = v10->_containerStack;

    *buf = 138544642;
    v32 = v15;
    v33 = 2112;
    v34 = v8;
    v35 = 1024;
    v36 = v6;
    v37 = 1024;
    v38 = v5;
    v39 = 2048;
    v40 = v17;
    v41 = 2112;
    v42 = containerStack;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] popLastViewControllerFromViewController: %@, animated: %d, useDefaultContaineeLayout: %d, preferredStyle: %lu, containerStack: %@", buf, 0x36u);
  }

  if (!self->_enableMacPresentationStyles)
  {
    goto LABEL_17;
  }

  v19 = [v8 preferredPresentationStyle];
  if (v19 > 2)
  {
    switch(v19)
    {
      case 3:
        [(ContainerViewController *)self _popPalette:v6 completion:0];
        goto LABEL_35;
      case 4:
        [(ContainerViewController *)self _dismissMenuViewController:v8 animated:v6];
        goto LABEL_35;
      case 5:
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1005E11E4;
        v29[3] = &unk_101661A90;
        v29[4] = self;
        v30 = v8;
        [(ContainerViewController *)self dismissViewControllerAnimated:1 completion:v29];

        goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_16:
    v20 = +[UIMenuSystem mainSystem];
    [v20 setNeedsRebuild];

LABEL_17:
    v21 = [(ContainerStack *)self->_containerStack indexOfContainee:v8];
    if (v21)
    {
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = self->_containerStack;
        if (self->_willBeginDisplayingInLockScreen)
        {
          v23 = [(ContainerStack *)v22 containeeStateAtIndex:v21];
          [(ContainerStack *)v22 removeContaineeState:v23];
LABEL_32:

          goto LABEL_35;
        }

        v25 = [(ContainerStack *)v22 containeeStateAtIndex:v21 - 1];
        v26 = [v25 viewController];
        [(ContainerViewController *)self presentController:v26 animated:v6 useDefaultContaineeLayout:v5];
      }
    }

    else if ([(ContainerViewController *)self supportsEmptyStack])
    {
      if (self->_willBeginDisplayingInLockScreen)
      {
        v24 = [(ContainerStack *)self->_containerStack popAll];
      }

      else
      {
        [(ContainerViewController *)self presentController:0 animated:v6 useDefaultContaineeLayout:v5];
      }
    }

    goto LABEL_35;
  }

  if (v19 != 1)
  {
    if (v19 != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v27 = [(ContainerViewController *)self chromeViewController];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v23 = [(ContainerViewController *)self chromeViewController];
    [v23 popSidebarViewController];
    goto LABEL_32;
  }

LABEL_35:
}

- (void)popLastViewControllerAnimated:(BOOL)a3 useDefaultContaineeLayout:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(ContainerViewController *)self currentViewController];
  [(ContainerViewController *)self popLastViewControllerFromViewController:v7 animated:v5 useDefaultContaineeLayout:v4];
}

- (void)popLastViewControllerWithInitialVelocity:(double)a3
{
  [(ContainerTransitionManager *)self->_transitionManager setInitialVelocity:a3];

  [(ContainerViewController *)self popLastViewControllerAnimated:1 useDefaultContaineeLayout:0];
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_enableMacPresentationStyles)
  {
    v6 = [(ContainerViewController *)self currentViewController];
    if (v6)
    {
      v7 = [(ContainerViewController *)self currentViewController];
      v8 = [v7 cardPresentationController];
      v9 = [v8 defaultContaineeLayout];
    }

    else
    {
      v7 = [v5 cardPresentationController];
      v9 = [v7 defaultContaineeLayout];
    }
  }

  else
  {
    v6 = [v4 cardPresentationController];
    v9 = [v6 defaultContaineeLayout];
  }

  if (!v9)
  {
    if (self->_enableMacPresentationStyles && ([(ContainerViewController *)self containerStyle]== 5 || [(ContainerViewController *)self containerStyle]== 4))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  return v9;
}

- (void)controller:(id)a3 wantsLayout:(unint64_t)a4
{
  if (self->_currentViewController == a3)
  {
    v7 = +[UIView areAnimationsEnabled];

    [(ContainerViewController *)self setLayoutIfSupported:a4 animated:v7];
  }
}

- (double)availableHeightForViewController:(id)a3
{
  v4 = [(ContainerViewController *)self view];
  [v4 frame];
  Height = CGRectGetHeight(v13);

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1 && [(ContainerViewController *)self containerStyle]== 1)
  {
    v6 = [(ContainerViewController *)self view];
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

  v9 = [(ContainerViewController *)self containerStyle];
  if (v9 - 2 < 4)
  {
    [(ContainerViewController *)self mapPeek];
    return Height - v10;
  }

  if (v9 == 6)
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
  v3 = [(ContainerViewController *)self currentViewController];
  [(ContainerViewController *)self availableHeightForViewController:v3];
  v5 = v4;

  return v5;
}

- (void)setFullscreenMode:(BOOL)a3
{
  if (self->_fullscreenMode != a3)
  {
    self->_fullscreenMode = a3;
    if ([(ContainerTransitionManager *)self->_transitionManager containerReadyToInsert])
    {
      containerStyleManager = self->_containerStyleManager;

      [(ContainerStyleManager *)containerStyleManager updateLayoutStyle];
    }
  }
}

- (void)minimizeContainee:(id)a3
{
  v7 = a3;
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

    v5 = v7;
  }

  else
  {
    v6 = [(ContainerViewController *)self containeeLayout];
    v5 = v7;
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v4 = 1;
  }

  [(ContainerViewController *)self controller:v5 wantsLayout:v4];
  v5 = v7;
LABEL_9:
}

- (void)expandContainee:(id)a3
{
  v7 = a3;
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

    v5 = v7;
  }

  else
  {
    v6 = [(ContainerViewController *)self containeeLayout];
    v5 = v7;
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v4 = 3;
  }

  [(ContainerViewController *)self controller:v5 wantsLayout:v4];
  v5 = v7;
LABEL_9:
}

- (unint64_t)transitionFrom:(id)a3 to:(id)a4
{
  v6 = [(ContainerStack *)self->_containerStack indexOfContainee:a4];
  if (a4)
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

    v9 = [(ContainerStack *)self->_containerStack allObjects];
    v10 = [v9 count] - 1;

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

- (void)suspendPropagatingEdgeInsetsForReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained acquireMapInsetPropagationSuspensionTokenForReason:v4];

  mapInsetPropagationSuspensionToken = self->_mapInsetPropagationSuspensionToken;
  self->_mapInsetPropagationSuspensionToken = v6;
}

- (void)_statusBarHeightChanged
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(ContainerStack *)self->_containerStack allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) cardPresentationController];
        [v8 updateAdditionalTopMargin];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

    v6 = [(ContainerViewController *)self iosChromeViewController];
    v3 = [v6 acquireMapAttributionSuppressonTokenForReason:@"interactinve sheet resizing"];
    attributionBadgeSuppressionToken = self->_attributionBadgeSuppressionToken;
    self->_attributionBadgeSuppressionToken = v3;

    v5 = v6;
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
  v3 = [(ContainerViewController *)self view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained mapView];
  [v6 _attributionInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_chromeViewController);
  v14 = [v13 mapView];
  [v14 _edgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ([(ContainerViewController *)self containerStyle]== 6)
  {
    if (v4 == 1)
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

  else if (v4 == 1)
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
    v23 = objc_loadWeakRetained(&self->_chromeViewController);
    v24 = [v23 mapView];
    [v24 attributionBadgeBounds];
    v25 = -(_MKAttributionBadgePaddingVertical + (CGRectGetHeight(v35) - v22) * 0.5);

LABEL_12:
    goto LABEL_13;
  }

  v26 = [(ContainerViewController *)self view];
  [v26 safeAreaInsets];
  v28 = v27;

  v25 = 0.0;
  if (v28 > v18)
  {
    v23 = [(ContainerViewController *)self view];
    [v23 safeAreaInsets];
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
  v3 = [WeakRetained mapView];
  v4 = [v3 _isShowingAttributionBadge];

  result = 0.0;
  if (v4)
  {
    return 10.0;
  }

  return result;
}

- (double)floatingContainerBottomVerticalPadding
{
  v3 = [(ContainerViewController *)self containerStyle];
  if (v3 > 7 || ((1 << v3) & 0xA3) == 0)
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

- (void)_actuallyUpdateMapEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(ContainerViewController *)self topLabelEdgeInset];
  v9 = v8;
  [(ContainerViewController *)self bottomLabelEdgeInsetWithMapEdgeInsets:top, left, bottom, right];
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained setLabelEdgeInsets:{v9, 0.0, v11, 0.0}];

  v13 = [(ContainerViewController *)self chromeContext];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [(ContainerViewController *)self currentViewController];
  if (!v15 || [(ContainerViewController *)self containeeLayout])
  {

LABEL_5:
    v18 = objc_loadWeakRetained(&self->_chromeViewController);
    v16 = [(ContainerViewController *)self chromeContext];
    [v18 setMapEdgeInsets:0 animated:v16 forContext:{top, left, bottom, right}];

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

  v4 = [(ContainerViewController *)self viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    v6 = [(ContainerViewController *)self view];
    v7 = [v6 superview];

    if (v7)
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

- (void)updateEdgeInsets:(UIEdgeInsets)a3 immediately:(BOOL)a4
{
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_deferredEdgeInsets.top), vceqq_f64(v5, *&self->_deferredEdgeInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_deferredEdgeInsets = a3;
    deferredEdgeInsetUpdateBlock = self->_deferredEdgeInsetUpdateBlock;
    if (deferredEdgeInsetUpdateBlock)
    {
      dispatch_block_cancel(deferredEdgeInsetUpdateBlock);
    }

    if (a4 || self->_edgeInsetUpdateDeferralInterval <= 0.0)
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

- (void)_updateMapEdgeInsetsImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContainerViewController *)self viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    v7 = [(ContainerViewController *)self view];
    v8 = [v7 superview];

    if (v8)
    {
      [(ContainerViewController *)self _calculateMapEdgeInsets];

      [(ContainerViewController *)self updateEdgeInsets:v3 immediately:?];
    }
  }
}

- (double)leadingEdgePadding
{
  if (sub_10000FA08(self) == 5)
  {
    [(ContainerViewController *)self edgePadding];
    v4 = v3;
    v5 = [(ContainerViewController *)self view];
    v6 = [v5 effectiveUserInterfaceLayoutDirection];
    [v5 safeAreaInsets];
    if (v6 == 1)
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

- (double)bottomLabelEdgeInsetWithMapEdgeInsets:(UIEdgeInsets)a3
{
  if (!self->_permitsBottomPocket)
  {
    return a3.bottom * 0.699999988;
  }

  result = 0.0;
  if (self->_usesFadingLabels)
  {
    return a3.bottom * 0.699999988;
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

- (int64_t)VKApplicationUILayoutForStyle:(unint64_t)a3
{
  if (a3 > 7)
  {
    return 1;
  }

  else
  {
    return qword_101212FC8[a3];
  }
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3
{
  [(ContainerTransitionManager *)self->_transitionManager styleDidChange];
  [(ContainerViewController *)self didChangeStyle:a3];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(ContainerStack *)self->_containerStack allObjects];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9) didChangeContainerStyle:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(ContainerViewController *)self visibleCardViews];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14) setLayoutStyle:a3];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained setVKApplicationUILayout:{-[ContainerViewController VKApplicationUILayoutForStyle:](self, "VKApplicationUILayoutForStyle:", a3)}];

  [(ContainerTransitionManager *)self->_transitionManager dequeueWaitingContainees];
}

- (void)containerStyleManagerConfigureLayoutForStyle:(unint64_t)a3
{
  v3 = [(ContainerViewController *)self iosBasedChromeViewController];
  [v3 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)containerStyleManagerWillChangeStyle:(unint64_t)a3
{
  [(ContainerViewController *)self willChangeStyle:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(ContainerStack *)self->_containerStack allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) willChangeContainerStyle:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:a3];
}

- (void)_updateOverrideTraitCollectionsForStyle:(unint64_t)a3
{
  v5 = [(ContainerViewController *)self currentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(ContainerViewController *)self currentViewController];
    v8 = [v7 parentViewController];

    if (v8 == self)
    {
      if (a3 < 8 && ((0xA3u >> a3) & 1) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
      }

      v9 = [(ContainerViewController *)self currentViewController];
      [(ContainerViewController *)self setOverrideTraitCollection:v10 forChildViewController:v9];
    }
  }
}

- (void)didResignContainee:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self didResignContainee:v6 finished:v4];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v17[0] = @"ContainerFinished";
    v11 = [NSNumber numberWithBool:v4];
    v17[1] = @"ContainerContainee";
    v18[0] = v11;
    v18[1] = v6;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 postNotificationName:@"ContainerDidResignContaineeNotification" object:self userInfo:v12];

    v15[0] = @"ContainerFinished";
    v13 = [NSNumber numberWithBool:v4];
    v15[1] = @"ContainerContainee";
    v16[0] = v13;
    v16[1] = v6;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayDidDismissNotification" object:self userInfo:v14];
  }
}

- (void)didPresentContainee:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self didPresentContainee:v6 finished:v4];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v17[0] = @"ContainerFinished";
    v11 = [NSNumber numberWithBool:v4];
    v17[1] = @"ContainerContainee";
    v18[0] = v11;
    v18[1] = v6;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 postNotificationName:@"ContainerDidPresentContaineeNotification" object:self userInfo:v12];

    v15[0] = @"ContainerFinished";
    v13 = [NSNumber numberWithBool:v4];
    v15[1] = @"ContainerContainee";
    v16[0] = v13;
    v16[1] = v6;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayDidPresentNotification" object:self userInfo:v14];
  }
}

- (void)willResignContainee:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self willResignContainee:v6 animated:v4];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v13[0] = @"ContainerAnimated";
    v11 = [NSNumber numberWithBool:v4];
    v13[1] = @"ContainerContainee";
    v14[0] = v11;
    v14[1] = v6;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v10 postNotificationName:@"ContainerWillResignContaineeNotification" object:self userInfo:v12];
  }
}

- (void)willPresentContainee:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_containerDelegate);
      [v9 container:self willPresentContainee:v6 animated:v4];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    v13[0] = @"ContainerAnimated";
    v11 = [NSNumber numberWithBool:v4];
    v13[1] = @"ContainerContainee";
    v14[0] = v11;
    v14[1] = v6;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v10 postNotificationName:@"ContainerWillPresentContaineeNotification" object:self userInfo:v12];
  }
}

- (void)containee:(id)a3 didChangeLayout:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    [(ContainerViewController *)self resumePropagatingEdgeInsets];
    v7 = [v6 viewIfLoaded];
    v8 = [v7 window];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerDelegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_containerDelegate);
        [v11 container:self containee:v6 didChangeLayout:a4];
      }

      v12 = [v6 cardPresentationController];
      v13 = [v12 usingSheetPresentation];

      if (v13)
      {
        v14 = [v6 cardPresentationController];
        [v6 didChangeLayout:{objc_msgSend(v14, "containeeLayout")}];

        v15 = [(ContainerStack *)self->_containerStack containeeStateForContainee:v6];
        v16 = [v15 viewController];
        v17 = [v16 cardPresentationController];
        [v15 setLayout:objc_msgSend(v17 forStyle:{"containeeLayout"), -[ContainerViewController containerStyle](self, "containerStyle")}];
      }

      v18 = [(ContainerViewController *)self chromeViewController];
      [v18 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

      v19 = +[NSNotificationCenter defaultCenter];
      v26[0] = @"ContainerLayout";
      v20 = [NSNumber numberWithUnsignedInteger:a4];
      v26[1] = @"ContainerContainee";
      v27[0] = v20;
      v27[1] = v6;
      v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      [v19 postNotificationName:@"ContainerDidChangeLayoutNotification" object:self userInfo:v21];

      v24[0] = @"ContainerLayout";
      v22 = [NSNumber numberWithUnsignedInteger:a4];
      v24[1] = @"ContainerContainee";
      v25[0] = v22;
      v25[1] = v6;
      v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v23];

      [MapsAnalyticStateProvider updateLayoutInformation:self];
    }
  }
}

- (void)containee:(id)a3 willChangeLayout:(unint64_t)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 cardPresentationController];
    v11 = [v10 usingSheetPresentation];

    if (v11)
    {
      [v9 willChangeLayout:a4];
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
      [v14 container:self containee:v9 willChangeLayout:a4];
    }

    v15 = +[NSNotificationCenter defaultCenter];
    v19[0] = @"ContainerLayout";
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    v20[0] = v16;
    v20[1] = v9;
    v19[1] = @"ContainerContainee";
    v19[2] = @"ContainerUpdateSource";
    v17 = [NSNumber numberWithUnsignedInteger:a5];
    v20[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v15 postNotificationName:@"ContainerWillChangeLayoutNotification" object:self userInfo:v18];
  }
}

- (void)didChangeStyle:(unint64_t)a3
{
  self->_hideAttributionBadgeWhileDragging = (a3 < 8) & (0xA3u >> a3);
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
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 postNotificationName:@"ContainerDidChangeStyleNotification" object:self userInfo:v10];

  [MapsAnalyticStateProvider updateLayoutInformation:self];
}

- (void)willChangeStyle:(unint64_t)a3
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
  v9 = [NSNumber numberWithUnsignedInteger:a3];
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
    v3 = [(ContainerViewController *)self view];
    [v3 removeLayoutGuide:self->_bottomPocketLayoutGuide];

    bottomPocketLayoutGuide = self->_bottomPocketLayoutGuide;
    self->_bottomPocketLayoutGuide = 0;
  }

  v5 = [(StatusBarBackgroundView *)self->_bottomPocketView superview];

  if (v5)
  {
    [(StatusBarBackgroundView *)self->_bottomPocketView removeFromSuperview];
    bottomPocketView = self->_bottomPocketView;
    self->_bottomPocketView = 0;
  }
}

- (void)_updateBottomPocketForContaineeHeight:(double)a3
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
      v8 = [(ContainerViewController *)self currentViewController];
      v9 = [v8 cardPresentationController];
      [v9 transitionProgressFromLayout:2 toLayout:3];
      v4 = v10;

      a3 = fabs(v4 + -1.0);
      v6 = a3 <= 2.22044605e-16;
    }

    else
    {
      v6 = 0;
    }

    [(StatusBarBackgroundView *)self->_bottomPocketView setHidden:v6, a3];
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
        v7 = [(ContainerViewController *)self view];
        [v7 addLayoutGuide:self->_bottomPocketLayoutGuide];

        v8 = [StatusBarBackgroundView alloc];
        v9 = [(ContainerViewController *)self chromeViewController];
        v10 = [v9 mapView];
        v11 = [v10 bottomAnchor];
        v12 = [(StatusBarBackgroundView *)v8 initWithSafeAreaTopLayoutAnchor:v11];
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
        v16 = [(ContainerViewController *)self view];
        [v16 addSubview:self->_bottomPocketView];

        v54 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide topAnchor];
        v56 = [(ContainerViewController *)self chromeViewController];
        v55 = [v56 mapView];
        v53 = [v55 _edgeInsetsLayoutGuide];
        v52 = [v53 bottomAnchor];
        v51 = [v54 constraintEqualToAnchor:v52];
        v59[0] = v51;
        v49 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide bottomAnchor];
        v50 = [(ContainerViewController *)self chromeViewController];
        v48 = [v50 mapView];
        v47 = [v48 bottomAnchor];
        v46 = [v49 constraintEqualToAnchor:v47];
        v59[1] = v46;
        v44 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide leadingAnchor];
        v45 = [(ContainerViewController *)self chromeViewController];
        v43 = [v45 mapView];
        v42 = [v43 leadingAnchor];
        v41 = [v44 constraintEqualToAnchor:v42];
        v59[2] = v41;
        v39 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide trailingAnchor];
        v40 = [(ContainerViewController *)self chromeViewController];
        v38 = [v40 mapView];
        v37 = [v38 trailingAnchor];
        v36 = [v39 constraintEqualToAnchor:v37];
        v59[3] = v36;
        v35 = [(StatusBarBackgroundView *)self->_bottomPocketView heightAnchor];
        v34 = [(UILayoutGuide *)self->_bottomPocketLayoutGuide heightAnchor];
        v33 = [v35 constraintEqualToAnchor:v34 multiplier:0.699999988];
        v59[4] = v33;
        v31 = [(StatusBarBackgroundView *)self->_bottomPocketView bottomAnchor];
        v32 = [(ContainerViewController *)self chromeViewController];
        v30 = [v32 mapView];
        v29 = [v30 bottomAnchor];
        v28 = [v31 constraintEqualToAnchor:v29];
        v59[5] = v28;
        v27 = [(StatusBarBackgroundView *)self->_bottomPocketView leadingAnchor];
        v17 = [(ContainerViewController *)self chromeViewController];
        v18 = [v17 mapView];
        v19 = [v18 leadingAnchor];
        v20 = [v27 constraintEqualToAnchor:v19];
        v59[6] = v20;
        v21 = [(StatusBarBackgroundView *)self->_bottomPocketView trailingAnchor];
        v22 = [(ContainerViewController *)self chromeViewController];
        v23 = [v22 mapView];
        v24 = [v23 trailingAnchor];
        v25 = [v21 constraintEqualToAnchor:v24];
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
  v3 = [(ContainerViewController *)self preferredUserInterfaceStyle];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ContainerStack *)self->_containerStack allObjects];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        v9 = [*(*(&v10 + 1) + 8 * v8) cardPresentationController];
        [v9 setPreferredUserInterfaceStyle:v3];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)currentViewControllerWithPresentationStyle:(unint64_t)a3
{
  if (!self->_enableMacPresentationStyles)
  {
    goto LABEL_13;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v7 = 168;
      goto LABEL_14;
    }

    if (a3 == 5)
    {
      goto LABEL_4;
    }

LABEL_13:
    v7 = 288;
LABEL_14:
    v6 = *(&self->super.super.super.super.super.isa + v7);
    goto LABEL_15;
  }

  if (a3 - 1 >= 3)
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

- (void)setCurrentViewController:(id)a3
{
  v5 = a3;
  if (self->_currentViewController == v5)
  {
    goto LABEL_11;
  }

  v6 = sub_10002A8B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(ContainerViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    *buf = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] currentViewController is now: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_currentViewController, a3);
  v13 = [(ContaineeProtocol *)v5 parentViewController];

  if (v13 == self)
  {
    [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  }

LABEL_11:
}

- (void)removeChildViewController:(id)a3
{
  v4 = a3;
  [(ContainerViewController *)self setOverrideTraitCollection:0 forChildViewController:v4];
  v5.receiver = self;
  v5.super_class = ContainerViewController;
  [(ContainerViewController *)&v5 removeChildViewController:v4];
}

- (void)addChildViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = ContainerViewController;
  v4 = a3;
  [(ContainerViewController *)&v6 addChildViewController:v4];
  v5 = [(ContainerViewController *)self currentViewController:v6.receiver];

  if (v5 == v4)
  {
    [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = ContainerViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:a3];
  [(ContainerViewController *)self _updateOverrideTraitCollectionsForStyle:[(ContainerViewController *)self containerStyle]];
  [(ContainerViewController *)self setNeedsUserInterfaceAppearanceUpdate];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Container willTransitionToTraitCollection %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  v9 = [(ContainerViewController *)self traitCollection];
  v10 = [v9 verticalSizeClass];
  v11 = [v7 verticalSizeClass];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005E46E4;
  v12[3] = &unk_101623308;
  v12[4] = self;
  v13 = v10 != v11;
  [v6 animateAlongsideTransition:v12 completion:&stru_101623328];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Container viewWillTransitionToSize %@", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = ContainerViewController;
  [(ContainerViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_nextHeight = height;
  self->_needToUpdateHeight = !self->_viewHasAppeared;
  v9 = [(ContainerViewController *)self view];
  [v9 bounds];
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
  [v7 animateAlongsideTransition:v17 completion:v14];
}

- (void)viewDidAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = ContainerViewController;
  [(ContainerViewController *)&v19 viewDidAppear:a3];
  v4 = sub_10002A8B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self;
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(ContainerViewController *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v21 = v10;
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
    v11 = [(ContainerViewController *)self view];
    v12 = [v11 window];
    v13 = [v12 _rootSheetPresentationController];
    [v13 _setShouldScaleDownBehindDescendantSheets:0];

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
  v15 = [(ContainerViewController *)self chromeViewController];
  v16 = [v15 mapView];
  v17 = [(MapGestureCardDismissalHelper *)v14 initWithMapView:v16];
  cardDismissalHelper = self->_cardDismissalHelper;
  self->_cardDismissalHelper = v17;

  [(MapGestureCardDismissalHelper *)self->_cardDismissalHelper setDelegate:self];
  [(ContainerViewController *)self _installBottomPocketIfNeeded];
}

- (void)setContaineesHidden:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10002A8B8();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_13;
  }

  v6 = self;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(ContainerViewController *)v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  v12 = @"NO";
  if (v3)
  {
    v12 = @"YES";
  }

  *buf = 138543874;
  v25 = v11;
  v26 = 2080;
  v27 = "[ContainerViewController setContaineesHidden:]";
  v28 = 2112;
  v29 = v12;
  v13 = v12;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s: %@", buf, 0x20u);

LABEL_13:
  if (self->_containeesHidden != v3)
  {
    self->_containeesHidden = v3;
  }

  v14 = [(ContainerStack *)self->_containerStack allObjects];
  v15 = [v14 firstObject];

  v16 = [(ContainerViewController *)self currentViewController];
  v17 = v16;
  if (v15 == v16)
  {
    v18 = [v15 presentingViewController];

    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if (!v15)
  {
    return;
  }

  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = v15;
    v20 = [v19 cardPresentationController];
    v21 = [v20 usingSheetPresentation];

    if (v21)
    {
      v22 = [v19 cardPresentationController];
      [v22 setHidden:v3];
    }

    v23 = [(ContainerViewController *)self currentViewController];

    if (v19 == v23)
    {

      goto LABEL_27;
    }

    v15 = [v19 presentedViewController];

    if (!v15)
    {
      v19 = 0;
      goto LABEL_27;
    }
  }

LABEL_25:
  v19 = v15;
LABEL_27:
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  v5 = [(ContainerViewController *)self chromeViewController];
  v6 = [v5 _maps_uiScene];

  if (v4 == v6)
  {
    v7 = sub_10002A8B8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = self;
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
      v8 = [(ContainerViewController *)self view];
      v9 = [v8 window];
      v10 = v9;
      if (v9 && self->_viewHasAppeared)
      {
        v11 = [(ContainerViewController *)self isRootContainer];

        if (v11)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = ContainerViewController;
  [(ContainerViewController *)&v7 viewWillAppear:?];
  v5 = [(ContainerViewController *)self currentViewController];
  [v5 willBecomeCurrent:v3];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = ContainerViewController;
  [(ContainerViewController *)&v14 viewWillDisappear:?];
  v5 = sub_10002A8B8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ContainerViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v16 = v11;
    v17 = 2080;
    v18 = "[ContainerViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] %s", buf, 0x16u);
  }

  [(ContainerTransitionManager *)self->_transitionManager setContainerReadyToInsert:0];
  v12 = [(ContainerViewController *)self currentViewController];
  [v12 willResignCurrent:v3];

  [(ContainerViewController *)self setContaineesHidden:[(ContainerViewController *)self hideContaineesOnViewDidDisappear]];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ContainerViewController;
  [(ContainerViewController *)&v6 viewDidDisappear:a3];
  [(ContainerViewController *)self _removeBottomPocketIfNeeded];
  v4 = [(ContainerViewController *)self currentViewController];
  [v4 didResignCurrent];

  self->_viewHasAppeared = 0;
  [(MapGestureCardDismissalHelper *)self->_cardDismissalHelper setDelegate:0];
  cardDismissalHelper = self->_cardDismissalHelper;
  self->_cardDismissalHelper = 0;
}

- (ContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ContainerViewController;
  v4 = [(ContainerViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [(ContainerViewController *)self visibleViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(ContainerViewController *)self currentViewController];

        if (v8 != v9)
        {
          v10 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(ContainerViewController *)self modalPresenter];
  if (v3)
  {
    v4 = [(ContainerStack *)self->_containerStack containeeStateForContainee:v3];
    v5 = [v4 layoutForStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)a3
{
  v4 = [(ContainerViewController *)self currentContaineeState];
  v5 = [v4 layoutForStyle:a3];

  return v5;
}

- (void)updateContaineeStackState
{
  v5 = [(ContainerViewController *)self currentContaineeState];
  v3 = [v5 viewController];
  v4 = [v3 cardPresentationController];
  [v5 setLayout:objc_msgSend(v4 forStyle:{"containeeLayout"), -[ContainerViewController containerStyle](self, "containerStyle")}];
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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a3;
  v7 = [[CustomContaineePresentationController alloc] initWithPresentedViewController:v6 presentingViewController:self];

  return v7;
}

- (ContaineeProtocol)rootPresentingViewController
{
  v2 = [(ContainerStack *)self->_containerStack containeeStateAtIndex:0];
  v3 = [v2 viewController];
  v4 = [v3 presentingViewController];

  return v4;
}

- (void)removeCardforViewController:(id)a3
{
  if (a3)
  {
    cards = self->_cards;
    v5 = a3;
    v7 = [(NSMapTable *)cards objectForKey:v5];
    [(NSMapTable *)self->_cards removeObjectForKey:v5];
    v6 = [v5 cardPresentationController];

    [v6 setCardView:0 fromContainer:0];
    [(CardProvider *)self->_cardProvider recycleCard:v7];
  }
}

- (id)cardForViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_cards objectForKey:v4];
    if (!v5)
    {
      v6 = [v4 cardPresentationController];
      v5 = -[ContainerViewController cardWithBlur:](self, "cardWithBlur:", [v6 blurInCardView]);

      [v5 setLayoutStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];
      [(ContainerViewController *)self setCaptureViewForCardView:v5];
      [(NSMapTable *)self->_cards setObject:v5 forKey:v4];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 setAccessibilityIdentifier:v8];

    v9 = [v4 cardPresentationController];
    [v9 setCardView:v5 fromContainer:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCaptureViewForCardView:(id)a3
{
  v5 = a3;
  v4 = [(ContainerViewController *)self blurGroupName];
  [v5 setBlurGroupName:v4];

  if ([(ContainerViewController *)self useBackdrop])
  {
    [v5 setCaptureView:self->_backdropView];
  }
}

- (void)setUseBackdropFullScreen:(BOOL)a3
{
  if (self->_useBackdropFullScreen != a3)
  {
    self->_useBackdropFullScreen = a3;
    [(ContainerViewController *)self _updateBackdropConstraints];
  }
}

- (BOOL)showVLFCrowdsourcingPermissionCardWithContaineeDelegate:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(ContainerViewController *)self isVLFCrowdsourcingPermissionCardActive])
  {
    v18 = [(ContainerViewController *)self containerStyle];
    if (+[VLFCrowdsourcingPermissionContaineeViewController shouldShowPermissionViewController])
    {
      v19 = v18 & 0xFFFFFFFFFFFFFFFDLL;
      v20 = sub_100C6497C();
      v21 = os_log_type_enabled(&v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO);
      if (v19 == 4)
      {
        if (v21)
        {
          v22 = self;
          if (!v22)
          {
            v27 = @"<nil>";
            goto LABEL_48;
          }

          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          if (objc_opt_respondsToSelector())
          {
            v25 = [(ContainerViewController *)v22 performSelector:"accessibilityIdentifier"];
            v26 = v25;
            if (v25 && ![v25 isEqualToString:v24])
            {
              v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

              goto LABEL_19;
            }
          }

          v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_19:

LABEL_48:
          *buf = 138543362;
          v45 = v27;
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

        v20 = [[VLFCrowdsourcingPermissionContaineeViewController alloc] initWithCompletion:v10];
        [(ContaineeViewController *)v20 setContaineeDelegate:v8];
        [(ControlContaineeViewController *)v20 setDelegate:v9];
        v41 = 1;
        [(ContainerViewController *)self presentController:v20 animated:1];
        goto LABEL_51;
      }

      v33 = self;
      if (!v33)
      {
        v38 = @"<nil>";
        goto LABEL_54;
      }

      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      if (objc_opt_respondsToSelector())
      {
        v36 = [(ContainerViewController *)v33 performSelector:"accessibilityIdentifier"];
        v37 = v36;
        if (v36 && ![v36 isEqualToString:v35])
        {
          v38 = [NSString stringWithFormat:@"%@<%p, %@>", v35, v33, v37];

          goto LABEL_35;
        }
      }

      v38 = [NSString stringWithFormat:@"%@<%p>", v35, v33];
LABEL_35:

LABEL_54:
      *buf = 138543362;
      v45 = v38;
      _os_log_impl(&_mh_execute_header, &v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO, "[%{public}@] Showing VLF crowdsourcing permission card", buf, 0xCu);

      goto LABEL_55;
    }

    v20 = sub_100C6497C();
    if (!os_log_type_enabled(&v20->super.super.super.super.super.super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_50;
    }

    v28 = self;
    if (!v28)
    {
      v27 = @"<nil>";
      goto LABEL_45;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    if (objc_opt_respondsToSelector())
    {
      v31 = [(ContainerViewController *)v28 performSelector:"accessibilityIdentifier"];
      v32 = v31;
      if (v31 && ![v31 isEqualToString:v30])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v30, v28, v32];

        goto LABEL_27;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v30, v28];
LABEL_27:

LABEL_45:
    *buf = 138543362;
    v45 = v27;
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

  v12 = self;
  if (!v12)
  {
    v17 = @"<nil>";
    goto LABEL_37;
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  if (objc_opt_respondsToSelector())
  {
    v15 = [(ContainerViewController *)v12 performSelector:"accessibilityIdentifier"];
    v16 = v15;
    if (v15 && ![v15 isEqualToString:v14])
    {
      v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

      goto LABEL_9;
    }
  }

  v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_9:

LABEL_37:
  *buf = 138543362;
  v45 = v17;
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
  v2 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end