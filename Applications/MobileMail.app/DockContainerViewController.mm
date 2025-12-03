@interface DockContainerViewController
+ (NSArray)menuCommands;
+ (id)log;
- (BOOL)_isDockVisible;
- (BOOL)_isDockableViewControllerPresented;
- (BOOL)_isDockedViewFullWidth;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isExposeModeActivated;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldAutorotate;
- (CGRect)tiltedTabViewController:(id)controller dockedFrameForViewRepresentingState:(id)state;
- (DockContainerViewController)initWithPersistence:(id)persistence scene:(id)scene rootViewController:(id)controller;
- (DockContainerViewControllerDelegate)delegate;
- (MailScene)scene;
- (UIViewController)activeViewController;
- (double)_dockHeight;
- (double)_yPositionForDockedViewAtDepth:(int64_t)depth totalDockedCount:(int64_t)count;
- (id)_newDockingAnimatorForDismissedController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)childViewControllerForScreenEdgesDeferringSystemGestures;
- (id)preferredFocusEnvironments;
- (void)_cleanupOffscreenDockedViews;
- (void)_commandMPressed:(id)pressed;
- (void)_configureNewDockedView:(id)view;
- (void)_deactivateExposeModeWithSelection:(id)selection fromSnapshotView:(id)view animated:(BOOL)animated;
- (void)_dockViewTapped;
- (void)_handlePersistenceChangeFromAnotherObserver;
- (void)_handlePersistenceChangeFromSelf;
- (void)_layoutDockedViews;
- (void)_layoutExistingDockedViewsWithIndexOffset:(int64_t)offset;
- (void)_popFirstDockedViewAnimated:(BOOL)animated;
- (void)_prepareViewControllerForDockingIfPossible:(id)possible;
- (void)_setDockVisible:(BOOL)visible;
- (void)_sheetPresentationControllerDidTearOff:(id)off;
- (void)_tiltedTabViewWillBePresented:(id)presented;
- (void)_updateDockBackground;
- (void)_updateRootViewControllerCornerRadii;
- (void)_updateRootViewControllerTraits;
- (void)activateExposeModeAnimated:(BOOL)animated;
- (void)addPresentationControllerDelegateObserver:(id)observer;
- (void)dockContainerPersistence:(id)persistence observer:(id)observer updatedDockedStates:(id)states;
- (void)dockPresentedViewControllerWithCompletion:(id)completion;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)removePresentationControllerDelegateObserver:(id)observer;
- (void)setDockingTransitionState:(int64_t)state;
- (void)validateCommand:(id)command;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DockContainerViewController

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = DockContainerViewController;
  [(DockContainerViewController *)&v38 viewDidLoad];
  view = [(DockContainerViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];

  [view setOpaque:0];
  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [view addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v5 heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:0.0];
  [(DockContainerViewController *)self setDockHeightConstraint:v7];

  dockHeightConstraint = [(DockContainerViewController *)self dockHeightConstraint];
  [dockHeightConstraint setActive:1];

  widthAnchor = [v5 widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v11 setActive:1];

  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v14 setActive:1];

  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];

  [(DockContainerViewController *)self setDockView:v5];
  rootViewController = [(DockContainerViewController *)self rootViewController];
  view2 = [rootViewController view];

  rootViewController2 = [(DockContainerViewController *)self rootViewController];
  [(DockContainerViewController *)self addChildViewController:rootViewController2];

  rootViewController3 = [(DockContainerViewController *)self rootViewController];
  [rootViewController3 didMoveToParentViewController:self];

  [view addSubview:view2];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor3 = [view2 leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v24 setActive:1];

  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 setActive:1];

  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v30 setActive:1];

  bottomAnchor3 = [view2 bottomAnchor];
  topAnchor3 = [v5 topAnchor];
  v33 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3];
  [v33 setActive:1];

  layer = [view2 layer];
  [layer setMasksToBounds:1];

  layer2 = [view2 layer];
  [layer2 setMaskedCorners:12];

  [(DockContainerViewController *)self setView:view];
  persistence = [(DockContainerViewController *)self persistence];
  [persistence registerObserver:self];

  v37 = +[NSNotificationCenter defaultCenter];
  [v37 addObserver:self selector:"_tiltedTabViewWillBePresented:" name:@"kWillShowTiltedTabViewNotification" object:0];
}

- (id)childViewControllerForScreenEdgesDeferringSystemGestures
{
  rootViewController = [(DockContainerViewController *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childViewControllerForScreenEdgesDeferringSystemGestures = rootViewController;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DockContainerViewController;
    childViewControllerForScreenEdgesDeferringSystemGestures = [(DockContainerViewController *)&v7 childViewControllerForScreenEdgesDeferringSystemGestures];
  }

  v5 = childViewControllerForScreenEdgesDeferringSystemGestures;

  return v5;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = DockContainerViewController;
  [(DockContainerViewController *)&v3 viewDidLayoutSubviews];
  [(DockContainerViewController *)self _layoutDockedViews];
  [(DockContainerViewController *)self _updateRootViewControllerTraits];
  [(DockContainerViewController *)self _updateDockBackground];
  [(DockContainerViewController *)self _updateRootViewControllerCornerRadii];
}

- (void)_layoutDockedViews
{
  if ([UIApp isRunningTest:@"launch"])
  {
    v4 = +[DockContainerViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skip %{public}@ in a test environment", &v12, 0xCu);
    }
  }

  else
  {
    dockingTransitionState = [(DockContainerViewController *)self dockingTransitionState];
    [(DockContainerViewController *)self _layoutExistingDockedViewsWithIndexOffset:dockingTransitionState != 0];
    dockedViews = [(DockContainerViewController *)self dockedViews];
    v8 = [dockedViews count];
    v9 = v8;
    if (dockingTransitionState)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8 != v10;

    if (v11 != [(DockContainerViewController *)self _isDockVisible])
    {

      [(DockContainerViewController *)self _setDockVisible:v9 != v10];
    }
  }
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A75C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCE80 != -1)
  {
    dispatch_once(&qword_1006DCE80, block);
  }

  v2 = qword_1006DCE78;

  return v2;
}

- (void)_updateRootViewControllerTraits
{
  if ([(DockContainerViewController *)self _isDockVisible]|| [(DockContainerViewController *)self dockingTransitionState])
  {
    v4 = [UITraitCollection traitCollectionWithUserInterfaceLevel:1];
  }

  else
  {
    v4 = 0;
  }

  rootViewController = [(DockContainerViewController *)self rootViewController];
  [(DockContainerViewController *)self setOverrideTraitCollection:v4 forChildViewController:rootViewController];
}

- (BOOL)_isDockVisible
{
  dockHeightConstraint = [(DockContainerViewController *)self dockHeightConstraint];
  [dockHeightConstraint constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_updateDockBackground
{
  if (![(DockContainerViewController *)self _isDockedViewFullWidth])
  {
    traitCollection = [(DockContainerViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle != 2)
    {
      v25 = +[UIColor mailDockViewLightBackgroundColor];
      dockView = [(DockContainerViewController *)self dockView];
      [dockView setBackgroundColor:v25];

      dockShadowView = [(DockContainerViewController *)self dockShadowView];

      if (dockShadowView)
      {
        return;
      }

      v24 = [[MUIGradientView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v8 = +[UIColor mailDockViewShadowGradientColors];
      [v24 setGradientColors:v8];

      v9 = +[UIColor mailDockViewShadowGradientColorLocations];
      [v24 setLocations:v9];

      [v24 setAlpha:0.2];
      dockView2 = [(DockContainerViewController *)self dockView];
      [dockView2 addSubview:v24];
      [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor = [v24 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:3.0];
      [v12 setActive:1];

      widthAnchor = [v24 widthAnchor];
      widthAnchor2 = [dockView2 widthAnchor];
      v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v15 setActive:1];

      leadingAnchor = [v24 leadingAnchor];
      leadingAnchor2 = [dockView2 leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v18 setActive:1];

      topAnchor = [v24 topAnchor];
      topAnchor2 = [dockView2 topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v21 setActive:1];

      [(DockContainerViewController *)self setDockShadowView:v24];
      goto LABEL_5;
    }
  }

  v23 = +[UIColor mailDockViewDarkBackgroundColor];
  dockView3 = [(DockContainerViewController *)self dockView];
  [dockView3 setBackgroundColor:v23];

  dockShadowView2 = [(DockContainerViewController *)self dockShadowView];
  if (dockShadowView2)
  {
    v24 = dockShadowView2;
    [dockShadowView2 removeFromSuperview];
    [(DockContainerViewController *)self setDockShadowView:0];
LABEL_5:
    dockShadowView2 = v24;
  }
}

- (BOOL)_isDockedViewFullWidth
{
  selfCopy = self;
  view = [(DockContainerViewController *)self view];
  [SheetMetrics frameForPresentedSheetIn:view];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  Width = CGRectGetWidth(v15);
  view2 = [(DockContainerViewController *)selfCopy view];
  [view2 bounds];
  LOBYTE(selfCopy) = Width >= CGRectGetWidth(v16);

  return selfCopy;
}

- (void)_updateRootViewControllerCornerRadii
{
  v3 = 0.0;
  if ([(DockContainerViewController *)self _isDockVisible]&& [(DockContainerViewController *)self _isDockedViewFullWidth])
  {
    +[SheetMetrics cornerRadius];
    v3 = v4;
  }

  rootViewController = [(DockContainerViewController *)self rootViewController];
  view = [rootViewController view];
  layer = [view layer];

  [layer cornerRadius];
  if (v7 != v3)
  {
    [layer setCornerRadius:v3];
  }
}

+ (NSArray)menuCommands
{
  v2 = qword_1006DCE88;
  if (!qword_1006DCE88)
  {
    v3 = [UIKeyCommand keyCommandWithInput:@"m" modifierFlags:0x100000 action:"_commandMPressed:"];
    [v3 setRepeatBehavior:2];
    v4 = [MFMailMenuCommand shortcutWithCommand:v3 menu:32];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = qword_1006DCE88;
    qword_1006DCE88 = v5;

    v2 = qword_1006DCE88;
  }

  return v2;
}

- (UIViewController)activeViewController
{
  presentedViewController = [(DockContainerViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(DockContainerViewController *)self presentedViewController];
  }

  else
  {
    activeTiltedTabViewController = [(DockContainerViewController *)self activeTiltedTabViewController];

    if (activeTiltedTabViewController)
    {
      [(DockContainerViewController *)self activeTiltedTabViewController];
    }

    else
    {
      [(DockContainerViewController *)self rootViewController];
    }
    presentedViewController2 = ;
  }

  return presentedViewController2;
}

- (DockContainerViewController)initWithPersistence:(id)persistence scene:(id)scene rootViewController:(id)controller
{
  persistenceCopy = persistence;
  sceneCopy = scene;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = DockContainerViewController;
  v12 = [(DockContainerViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistence, persistence);
    objc_storeWeak(&v13->_scene, sceneCopy);
    v14 = objc_alloc_init(NSArray);
    dockedStates = v13->_dockedStates;
    v13->_dockedStates = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    dockedViews = v13->_dockedViews;
    v13->_dockedViews = v16;

    v18 = objc_alloc_init(NSMutableArray);
    offscreenDockedViews = v13->_offscreenDockedViews;
    v13->_offscreenDockedViews = v18;

    objc_storeStrong(&v13->_rootViewController, controller);
    v20 = +[NSHashTable weakObjectsHashTable];
    presentationControllerDelegateObservers = v13->_presentationControllerDelegateObservers;
    v13->_presentationControllerDelegateObservers = v20;
  }

  return v13;
}

- (void)addPresentationControllerDelegateObserver:(id)observer
{
  observerCopy = observer;
  presentationControllerDelegateObservers = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  [presentationControllerDelegateObservers addObject:observerCopy];
}

- (void)removePresentationControllerDelegateObserver:(id)observer
{
  observerCopy = observer;
  presentationControllerDelegateObservers = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  [presentationControllerDelegateObservers removeObject:observerCopy];
}

- (BOOL)isExposeModeActivated
{
  activeTiltedTabViewController = [(DockContainerViewController *)self activeTiltedTabViewController];
  v3 = activeTiltedTabViewController != 0;

  return v3;
}

- (id)preferredFocusEnvironments
{
  activeViewController = [(DockContainerViewController *)self activeViewController];
  if (sub_10009B1B4(self, activeViewController))
  {
    v12 = activeViewController;
    v4 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = activeViewController;
      mailboxPickerNavController = [v5 mailboxPickerNavController];
      topViewController = [mailboxPickerNavController topViewController];
      messageListNavController = [v5 messageListNavController];
      topViewController2 = [messageListNavController topViewController];
      v11[1] = topViewController2;
      v4 = [NSArray arrayWithObjects:v11 count:2];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)activateExposeModeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(DockContainerViewController *)self isExposeModeActivated])
  {
    dockedStates = [(DockContainerViewController *)self dockedStates];
    v5 = [dockedStates count];

    if (v5)
    {
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 postNotificationName:@"kWillShowTiltedTabViewNotification" object:self];

      v6 = [TiltedTabViewController alloc];
      dockedStates2 = [(DockContainerViewController *)self dockedStates];
      persistence = [(DockContainerViewController *)self persistence];
      rootViewController = [(DockContainerViewController *)self rootViewController];
      scene = [(DockContainerViewController *)self scene];
      daemonInterface = [scene daemonInterface];
      v16 = [(TiltedTabViewController *)v6 initWithInitialDockedStates:dockedStates2 persistence:persistence primaryViewController:rootViewController daemonInterface:daemonInterface];

      [(TiltedTabViewController *)v16 setDelegate:self];
      [(DockContainerViewController *)self setActiveTiltedTabViewController:v16];
      [(DockContainerViewController *)self addChildViewController:v16];
      view = [(DockContainerViewController *)self view];
      view2 = [(TiltedTabViewController *)v16 view];
      [view addSubview:view2];

      [(TiltedTabViewController *)v16 didMoveToParentViewController:self];
      [(TiltedTabViewController *)v16 presentAnimated:animatedCopy];
      [(DockContainerViewController *)self setNeedsFocusUpdate];
    }
  }
}

- (void)_deactivateExposeModeWithSelection:(id)selection fromSnapshotView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  selectionCopy = selection;
  viewCopy = view;
  if ([(DockContainerViewController *)self isExposeModeActivated])
  {
    [(DockContainerViewController *)self activeTiltedTabViewController];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10009BB78;
    v10 = v36[3] = &unk_10064C660;
    v37 = v10;
    selfCopy = self;
    v11 = objc_retainBlock(v36);
    if (selectionCopy)
    {
      persistence = [(DockContainerViewController *)self persistence];
      dockIdentifier = [selectionCopy dockIdentifier];
      [persistence removeDockedStateWithIdentifier:dockIdentifier sender:self];

      dockedViews = [(DockContainerViewController *)self dockedViews];
      dockIdentifier2 = [selectionCopy dockIdentifier];
      v16 = [dockedViews objectForKey:dockIdentifier2];

      if (v16)
      {
        dockedViews2 = [(DockContainerViewController *)self dockedViews];
        dockIdentifier3 = [selectionCopy dockIdentifier];
        [dockedViews2 removeObjectForKey:dockIdentifier3];

        [v16 removeFromSuperview];
      }

      scene = [(DockContainerViewController *)self scene];
      v20 = [selectionCopy restoreViewControllerWithScene:scene];

      delegate = [(DockContainerViewController *)self delegate];
      [delegate dockContainer:self didRestoreViewController:v20];

      if (animatedCopy)
      {
        [v20 setTransitioningDelegate:self];
        v22 = [[TabSelectionPresentationAnimationController alloc] initWithSourceView:viewCopy];
        [(DockContainerViewController *)self setNextPresentationAnimation:v22];

        [(DockContainerViewController *)self presentViewController:v20 animated:1 completion:0];
        transitionCoordinator = [(DockContainerViewController *)self transitionCoordinator];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10009BBFC;
        v34[3] = &unk_10064E7A8;
        v35[0] = v10;
        v35[1] = self;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10009BC68;
        v32[3] = &unk_10064E7D0;
        v32[4] = self;
        v33 = v11;
        [transitionCoordinator animateAlongsideTransition:v34 completion:v32];
        v24 = v35;
      }

      else
      {
        [v10 dismiss];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10009BCB0;
        v30[3] = &unk_10064D270;
        v30[4] = self;
        v31 = v11;
        [(DockContainerViewController *)self presentViewController:v20 animated:0 completion:v30];
        v24 = &v31;
      }
    }

    else
    {
      if (!animatedCopy)
      {
        [v10 dismiss];
        (v11[2])(v11);
        goto LABEL_12;
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10009BD24;
      v27[3] = &unk_10064C660;
      v28 = v10;
      selfCopy2 = self;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10009BDC8;
      v25[3] = &unk_10064E7F8;
      v26 = v11;
      [UIView animateWithDuration:0 delay:v27 options:v25 animations:0.22 completion:0.0];

      v16 = v28;
    }

LABEL_12:
  }
}

- (void)setDockingTransitionState:(int64_t)state
{
  if (self->_dockingTransitionState != state)
  {
    v5 = +[DockContainerViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1004858D0(&self->_dockingTransitionState, state, v5);
    }
  }

  self->_dockingTransitionState = state;
}

- (void)_setDockVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5 = 0.0;
  if (visible)
  {
    [(DockContainerViewController *)self _dockHeight];
    v5 = v6;
  }

  dockHeightConstraint = [(DockContainerViewController *)self dockHeightConstraint];
  [dockHeightConstraint constant];
  v9 = v8;

  if (v9 != v5)
  {
    v10 = +[DockContainerViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004859D0(visibleCopy, v10, v11, v12, v13, v14, v15, v16);
    }

    dockHeightConstraint2 = [(DockContainerViewController *)self dockHeightConstraint];
    [dockHeightConstraint2 setConstant:v5];

    delegate = [(DockContainerViewController *)self delegate];
    [delegate dockContainer:self isVisible:visibleCopy];
  }
}

- (double)_dockHeight
{
  view = [(DockContainerViewController *)self view];
  [view safeAreaInsets];
  v4 = v3 + 50.0;

  return v4;
}

- (void)_dockViewTapped
{
  dockedStates = [(DockContainerViewController *)self dockedStates];
  v4 = [dockedStates count];

  if (v4 == 1)
  {

    [(DockContainerViewController *)self _popFirstDockedViewAnimated:1];
  }

  else
  {
    dockedStates2 = [(DockContainerViewController *)self dockedStates];
    v6 = [dockedStates2 count];

    if (v6 >= 2)
    {

      [(DockContainerViewController *)self activateExposeModeAnimated:1];
    }
  }
}

- (void)_popFirstDockedViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dockedStates = [(DockContainerViewController *)self dockedStates];
  firstObject = [dockedStates firstObject];

  persistence = [(DockContainerViewController *)self persistence];
  dockIdentifier = [firstObject dockIdentifier];
  [persistence removeDockedStateWithIdentifier:dockIdentifier sender:self];

  scene = [(DockContainerViewController *)self scene];
  v10 = [firstObject restoreViewControllerWithScene:scene];

  if (v10)
  {
    [(DockContainerViewController *)self presentViewController:v10 animated:animatedCopy completion:0];
    if (animatedCopy)
    {
      dockedStates2 = [(DockContainerViewController *)self dockedStates];
      v12 = [dockedStates2 mutableCopy];

      [v12 removeObject:firstObject];
      v13 = [v12 copy];
      [(DockContainerViewController *)self setDockedStates:v13];

      transitionCoordinator = [(DockContainerViewController *)self transitionCoordinator];
      v16[4] = self;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10009C2C0;
      v17[3] = &unk_10064CC00;
      v17[4] = self;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009C344;
      v16[3] = &unk_10064CC00;
      [transitionCoordinator animateAlongsideTransition:v17 completion:v16];
    }

    delegate = [(DockContainerViewController *)self delegate];
    [delegate dockContainer:self didRestoreViewController:v10];
  }
}

- (void)_layoutExistingDockedViewsWithIndexOffset:(int64_t)offset
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485A54(offset, v3, v4, v5, v6, v7, v8, v9);
  }

  dockedStates = [(DockContainerViewController *)self dockedStates];
  v11 = [dockedStates ef_mapSelector:"dockIdentifier"];

  dockedViews = [(DockContainerViewController *)self dockedViews];
  allKeys = [dockedViews allKeys];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_10009CE1C;
  v101[3] = &unk_10064E820;
  v80 = v11;
  v102 = v80;
  v78 = [allKeys ef_filter:v101];

  selfCopy2 = self;
  if ([(DockContainerViewController *)self dockingTransitionState]!= 2)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v15 = v78;
    v16 = [v15 countByEnumeratingWithState:&v97 objects:v105 count:16];
    if (v16)
    {
      v17 = *v98;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v98 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v97 + 1) + 8 * i);
          dockedViews2 = [(DockContainerViewController *)self dockedViews];
          v21 = [dockedViews2 objectForKeyedSubscript:v19];

          dockedViews3 = [(DockContainerViewController *)self dockedViews];
          [dockedViews3 removeObjectForKey:v19];

          [v21 frame];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          if (MUISolariumFeatureEnabled())
          {
            v31 = 8.0;
          }

          else
          {
            v31 = 2.5;
          }

          view = [(DockContainerViewController *)self view];
          [view frame];
          MaxY = CGRectGetMaxY(v106);

          v107.origin.x = v24;
          v107.origin.y = v26;
          v107.size.width = v28;
          v107.size.height = v30;
          MinX = CGRectGetMinX(v107);
          v108.origin.x = v24;
          v108.origin.y = v26;
          v108.size.width = v28;
          v108.size.height = v30;
          Width = CGRectGetWidth(v108);
          v109.origin.x = v24;
          v109.origin.y = v26;
          v109.size.width = v28;
          v109.size.height = v30;
          [v21 setFrame:{MinX, v31 + MaxY, Width, CGRectGetHeight(v109)}];
          v36 = +[DockContainerViewController log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.a) = 138543362;
            *(&buf.a + 4) = v19;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "View for ID %{public}@ has moved offscreen. Will remove view on cleanup.", &buf, 0xCu);
          }

          offscreenDockedViews = [(DockContainerViewController *)self offscreenDockedViews];
          [offscreenDockedViews addObject:v21];
        }

        v16 = [v15 countByEnumeratingWithState:&v97 objects:v105 count:16];
      }

      while (v16);
    }

    selfCopy2 = self;
  }

  view2 = [(DockContainerViewController *)selfCopy2 view];
  [SheetMetrics frameForPresentedSheetIn:view2];
  v86 = v40;
  v87 = v39;
  v84 = v42;
  v85 = v41;

  activeTiltedTabViewController = [(DockContainerViewController *)self activeTiltedTabViewController];
  view3 = [activeTiltedTabViewController view];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v80;
  v44 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
  selfCopy4 = self;
  if (v44)
  {
    v81 = *v94;
    offsetCopy = offset;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v94 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v93 + 1) + 8 * j);
        if (offsetCopy >= 2)
        {
          v49 = 2;
        }

        else
        {
          v49 = offsetCopy;
        }

        v110.origin.y = v86;
        v110.origin.x = v87;
        v110.size.height = v84;
        v110.size.width = v85;
        v50 = CGRectGetWidth(v110);
        view4 = [(DockContainerViewController *)selfCopy4 view];
        [view4 bounds];
        v52 = CGRectGetWidth(v111);

        if (v50 >= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = v50;
        }

        v112.origin.y = v86;
        v112.origin.x = v87;
        v112.size.height = v84;
        v112.size.width = v85;
        Height = CGRectGetHeight(v112);
        view5 = [(DockContainerViewController *)self view];
        [view5 bounds];
        v56 = CGRectGetWidth(v113);

        -[DockContainerViewController _yPositionForDockedViewAtDepth:totalDockedCount:](self, "_yPositionForDockedViewAtDepth:totalDockedCount:", v49, [obj count] + offset);
        v58 = v57;
        dockedViews4 = [(DockContainerViewController *)self dockedViews];
        v60 = [dockedViews4 objectForKeyedSubscript:v48];

        v61 = (v56 - v53) * 0.5;
        if (!v60)
        {
          dockedStates2 = [(DockContainerViewController *)self dockedStates];
          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_10009CE40;
          v92[3] = &unk_10064E678;
          v92[4] = v48;
          v63 = [dockedStates2 ef_firstObjectPassingTest:v92];

          v114.origin.x = (v56 - v53) * 0.5;
          v114.origin.y = v58;
          v114.size.width = v53;
          v114.size.height = Height;
          v64 = CGRectGetMinX(v114);
          view6 = [(DockContainerViewController *)self view];
          [view6 bounds];
          v66 = CGRectGetMaxY(v115);
          v116.origin.x = v61;
          v116.origin.y = v58;
          v116.size.width = v53;
          v116.size.height = Height;
          v67 = CGRectGetWidth(v116);
          v117.origin.x = v61;
          v117.origin.y = v58;
          v117.size.width = v53;
          v117.size.height = Height;
          v68 = CGRectGetHeight(v117);

          v60 = [v63 createDockedViewWithFrame:{v64, v66, v67, v68}];
          if (!v60)
          {

            goto LABEL_40;
          }

          v69 = +[DockContainerViewController log];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.a) = 138412290;
            *(&buf.a + 4) = v48;
            _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Created new docked view for ID %@", &buf, 0xCu);
          }

          dockedViews5 = [(DockContainerViewController *)self dockedViews];
          [dockedViews5 setObject:v60 forKey:v48];

          [v60 setAlpha:0.0];
          view7 = [(DockContainerViewController *)self view];
          if (view3)
          {
            [view7 insertSubview:v60 below:view3];
          }

          else
          {
            [view7 addSubview:v60];
          }

          [(DockContainerViewController *)self _configureNewDockedView:v60];
        }

        v72 = *&CGAffineTransformIdentity.c;
        *&buf.a = *&CGAffineTransformIdentity.a;
        *&buf.c = v72;
        *&buf.tx = *&CGAffineTransformIdentity.tx;
        [v60 setTransform:&buf];
        [v60 setFrame:{v61, v58, v53, Height}];
        [v60 bounds];
        v73 = CGRectGetHeight(v118);
        *&v74 = -1;
        *(&v74 + 1) = -1;
        *&buf.c = v74;
        *&buf.tx = v74;
        *&buf.a = v74;
        [v60 transform];
        v75 = v49 * -0.05 + 1.0;
        v90 = buf;
        CGAffineTransformTranslate(&v91, &v90, 0.0, (v73 - v73 * v75) * -0.5);
        buf = v91;
        v90 = v91;
        CGAffineTransformScale(&v91, &v90, v75, v75);
        buf = v91;
        [v60 setTransform:&v91];
        [v60 setShadowVisible:1];
        [v60 setDimmingAmount:v49 * 0.1];
        v76 = 0.0;
        if (offsetCopy < 3)
        {
          v76 = 1.0;
        }

        [v60 setAlpha:v76];
        v77 = v60;

        ++offsetCopy;
        view3 = v77;
LABEL_40:
        selfCopy4 = self;
      }

      v44 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v44);
  }
}

- (double)_yPositionForDockedViewAtDepth:(int64_t)depth totalDockedCount:(int64_t)count
{
  view = [(DockContainerViewController *)self view];
  [view bounds];
  MaxY = CGRectGetMaxY(v16);
  [(DockContainerViewController *)self _dockHeight];
  countCopy = 3;
  if (count < 3)
  {
    countCopy = count;
  }

  v11 = ((countCopy & ~(countCopy >> 63)) + ~depth) * 4.0;
  v12 = MaxY - v9;

  v13 = MUISolariumFeatureEnabled();
  v14 = 2.5;
  if (v13)
  {
    v14 = 8.0;
  }

  return v11 + v12 + v14;
}

- (void)_cleanupOffscreenDockedViews
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485AC0();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  offscreenDockedViews = [(DockContainerViewController *)self offscreenDockedViews];
  v5 = [offscreenDockedViews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(offscreenDockedViews);
        }

        [*(*(&v9 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [offscreenDockedViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  offscreenDockedViews2 = [(DockContainerViewController *)self offscreenDockedViews];
  [offscreenDockedViews2 removeAllObjects];
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[DockContainerViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Popping to root view controller.", buf, 2u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009D358;
  v15[3] = &unk_10064D9D8;
  v15[4] = self;
  v16 = animatedCopy;
  v6 = objc_retainBlock(v15);
  presentedViewController = [(DockContainerViewController *)self presentedViewController];
  if (presentedViewController)
  {
    if (sub_10009B1B4(self, presentedViewController))
    {
      v8 = +[DockContainerViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dockable view controller is currently presented. Will dock on dismissal.", buf, 2u);
      }

      if (animatedCopy)
      {
        [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:presentedViewController];
      }

      else
      {
        v9 = [[DockedViewControllerState alloc] initWithDockableViewController:presentedViewController];
        persistence = [(DockContainerViewController *)self persistence];
        [persistence pushNewDockedState:v9 sender:0];

        delegate = [(DockContainerViewController *)self delegate];
        dockIdentifier = [(DockedViewControllerState *)v9 dockIdentifier];
        [delegate dockContainer:self dockedViewControllerWithIdentifier:dockIdentifier];
      }
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009D3A8;
    v13[3] = &unk_10064C598;
    v14 = v6;
    [(DockContainerViewController *)self dismissViewControllerAnimated:animatedCopy completion:v13];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (BOOL)shouldAutorotate
{
  rootViewController = [(DockContainerViewController *)self rootViewController];
  shouldAutorotate = [rootViewController shouldAutorotate];

  return shouldAutorotate;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(DockContainerViewController *)self dockingTransitionState]== 1)
  {
    presentedViewController = [(DockContainerViewController *)self presentedViewController];
    transitionCoordinator = [presentedViewController transitionCoordinator];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009D52C;
    v11[3] = &unk_10064CC00;
    v11[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v11];
  }

  v10.receiver = self;
  v10.super_class = DockContainerViewController;
  [(DockContainerViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (CGRect)tiltedTabViewController:(id)controller dockedFrameForViewRepresentingState:(id)state
{
  dockIdentifier = [state dockIdentifier];
  dockedViews = [(DockContainerViewController *)self dockedViews];
  v7 = [dockedViews objectForKey:dockIdentifier];

  if (v7)
  {
    [v7 frame];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(DockContainerViewController *)self presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeViewController = [(DockContainerViewController *)self activeViewController];
      [activeViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
    }

    else
    {
      if ((sub_10009B1B4(self, presentedViewController) & 1) != 0 || [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
      {
        [presentedViewController setTransitioningDelegate:self];
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10009D93C;
      v25[3] = &unk_10064E848;
      v25[4] = self;
      v26 = controllerCopy;
      v28 = animatedCopy;
      v27 = completionCopy;
      [(DockContainerViewController *)self dismissViewControllerAnimated:animatedCopy completion:v25];
    }
  }

  else
  {
    if ((sub_10009B1B4(self, controllerCopy) & 1) != 0 || [controllerCopy conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
    {
      v12 = +[DockContainerViewController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100485AF4(controllerCopy, v12, v13, v14, v15, v16, v17, v18);
      }

      presentationController = [controllerCopy presentationController];
      [presentationController setDelegate:self];
    }

    if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
    {
      presentationController2 = [controllerCopy presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = +[DockContainerViewController log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100485B60();
        }

        presentationController3 = [controllerCopy presentationController];
        [presentationController3 _setAllowsTearOff:1];
        [presentationController3 setPrefersGrabberVisible:1];
      }
    }

    v24.receiver = self;
    v24.super_class = DockContainerViewController;
    [(DockContainerViewController *)&v24 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = +[DockContainerViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100485B94();
  }

  presentedViewController = [dismissCopy presentedViewController];
  [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:presentedViewController];

  return 1;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  presentationControllerDelegateObservers = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  v6 = [presentationControllerDelegateObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(presentationControllerDelegateObservers);
        }

        [*(*(&v13 + 1) + 8 * v8) presentationControllerWillDismiss:dismissCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [presentationControllerDelegateObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  presentedViewController = [dismissCopy presentedViewController];
  if (sub_10009B1B4(self, presentedViewController))
  {
    [(DockContainerViewController *)self setDockingTransitionState:1];
    transitionCoordinator = [presentedViewController transitionCoordinator];
    if (([transitionCoordinator isInterruptible] & 1) != 0 || objc_msgSend(transitionCoordinator, "isInteractive"))
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10009DC1C;
      v11[3] = &unk_10064E7A8;
      v11[4] = self;
      v12 = presentedViewController;
      [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v11];
    }
  }
}

- (void)_sheetPresentationControllerDidTearOff:(id)off
{
  offCopy = off;
  [(DockContainerViewController *)self setDraftWasTornOff:1];
  presentedViewController = [offCopy presentedViewController];
  if ([presentedViewController conformsToProtocol:&OBJC_PROTOCOL___DockableViewController] && objc_msgSend(presentedViewController, "conformsToProtocol:", &OBJC_PROTOCOL___TearableViewController))
  {
    dockIdentifier = [presentedViewController dockIdentifier];
    v7 = +[DockContainerViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = dockIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dockable view controller with identifier %{public}@ was torn off.", buf, 0xCu);
    }

    delegate = [(DockContainerViewController *)self delegate];
    [delegate dockContainer:self dockedViewWasTornOffWithIdentifier:dockIdentifier];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009DF2C;
  v10[3] = &unk_10064C7E8;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009DF9C;
  v9[3] = &unk_10064C570;
  v9[4] = self;
  [UIView animateWithDuration:4 delay:v10 options:v9 animations:0.2 completion:0.0];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if (sub_10009B1B4(self, controller))
  {
    nextPresentationAnimation = [(DockContainerViewController *)self nextPresentationAnimation];
    [(DockContainerViewController *)self setNextPresentationAnimation:0];
  }

  else
  {
    nextPresentationAnimation = 0;
  }

  return nextPresentationAnimation;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  if (sub_10009B1B4(self, controllerCopy))
  {
    [(DockContainerViewController *)self setDraftWasTornOff:0];
    v5 = [(DockContainerViewController *)self _newDockingAnimatorForDismissedController:controllerCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newDockingAnimatorForDismissedController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(_UISheetAnimationController);
  [v5 setIsReversed:1];
  dockedStates = [(DockContainerViewController *)self dockedStates];
  v7 = [dockedStates count];

  [(DockContainerViewController *)self _yPositionForDockedViewAtDepth:0 totalDockedCount:v7 + 1];
  v9 = v8;
  view = [(DockContainerViewController *)self view];
  window = [view window];
  view2 = [controllerCopy view];
  [view2 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view3 = [controllerCopy view];
  [window convertRect:view3 fromView:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v73.origin.x = v23;
  v73.origin.y = v25;
  v73.size.width = v27;
  v73.size.height = v29;
  MinX = CGRectGetMinX(v73);
  v74.origin.x = v23;
  v74.origin.y = v25;
  v74.size.width = v27;
  v74.size.height = v29;
  Width = CGRectGetWidth(v74);
  v75.origin.x = v23;
  v75.origin.y = v25;
  v75.size.width = v27;
  v75.size.height = v29;
  Height = CGRectGetHeight(v75);
  [v5 setSourceFrame:{MinX, v9, Width, Height}];
  presentationController = [controllerCopy presentationController];
  presentedView = [presentationController presentedView];

  view4 = [controllerCopy view];
  [view4 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  view5 = [controllerCopy view];
  [presentedView convertRect:view5 fromView:{v37, v39, v41, v43}];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = [controllerCopy dockedViewWithFrame:{v46, v48, v50, v52}];
  [v53 setAlpha:0.0];
  v54 = [controllerCopy dockedViewWithFrame:{MinX, v9, Width, Height}];
  v55 = [[DockedViewControllerState alloc] initWithDockableViewController:controllerCopy];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10009E558;
  v69[3] = &unk_10064C6B0;
  v56 = presentedView;
  v70 = v56;
  v57 = v53;
  v71 = v57;
  selfCopy = self;
  v58 = v5;
  [v5 setNoninteractiveAnimations:v69];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10009E5F4;
  v64[3] = &unk_10064E870;
  v64[4] = self;
  v59 = v55;
  v65 = v59;
  v60 = v54;
  v66 = v60;
  v61 = v57;
  v67 = v61;
  v62 = controllerCopy;
  v68 = v62;
  [v58 setNoninteractiveCompletion:v64];

  return v58;
}

- (void)_configureNewDockedView:(id)view
{
  viewCopy = view;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dockViewTapped"];
  [v5 setDelegate:self];
  [viewCopy addGestureRecognizer:v5];
  if (objc_opt_respondsToSelector())
  {
    preferredSpringLoadingEffect = [viewCopy preferredSpringLoadingEffect];
  }

  else
  {
    preferredSpringLoadingEffect = 0;
  }

  objc_initWeak(&location, self);
  v7 = [UISpringLoadedInteraction alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10009E8F8;
  v12 = &unk_10064E898;
  objc_copyWeak(&v13, &location);
  v8 = [v7 initWithInteractionBehavior:0 interactionEffect:preferredSpringLoadingEffect activationHandler:&v9];
  [viewCopy addInteraction:{v8, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)_isDockableViewControllerPresented
{
  selfCopy = self;
  activeViewController = [(DockContainerViewController *)self activeViewController];
  LOBYTE(selfCopy) = sub_10009B1B4(selfCopy, activeViewController);

  return selfCopy;
}

- (void)_prepareViewControllerForDockingIfPossible:(id)possible
{
  possibleCopy = possible;
  if (sub_10009B1B4(self, possibleCopy))
  {
    v5 = possibleCopy;
    [v5 setTransitioningDelegate:self];
    v6 = +[DockContainerViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100485BFC();
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 willBeginDocking];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [(DockContainerViewController *)self view];
  [beginCopy locationOfTouch:0 inView:view];
  v7 = v6;

  view2 = [(DockContainerViewController *)self view];
  [view2 bounds];
  MaxY = CGRectGetMaxY(v14);
  view3 = [(DockContainerViewController *)self view];
  [view3 safeAreaInsets];
  v12 = v7 < MaxY - v11;

  return v12;
}

- (void)_tiltedTabViewWillBePresented:(id)presented
{
  presentedCopy = presented;
  if ([(DockContainerViewController *)self isExposeModeActivated])
  {
    object = [presentedCopy object];

    if (object != self)
    {
      [(DockContainerViewController *)self deactivateExposeModeAnimated:1];
    }
  }
}

- (void)dockContainerPersistence:(id)persistence observer:(id)observer updatedDockedStates:(id)states
{
  persistenceCopy = persistence;
  observerCopy = observer;
  statesCopy = states;
  dockedStates = [(DockContainerViewController *)self dockedStates];
  v11 = [dockedStates isEqualToArray:statesCopy];

  if ((v11 & 1) == 0)
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      [persistenceCopy migrateDockContainerDraftsToWindowsIfNeeded:statesCopy];
      [persistenceCopy removeObserver:self];
    }

    else
    {
      [(DockContainerViewController *)self setDockedStates:statesCopy];
      if (observerCopy == self)
      {
        [(DockContainerViewController *)self _handlePersistenceChangeFromSelf];
      }

      else
      {
        [(DockContainerViewController *)self _handlePersistenceChangeFromAnotherObserver];
      }
    }
  }
}

- (void)_handlePersistenceChangeFromSelf
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485C30();
  }

  if ([(DockContainerViewController *)self dockingTransitionState]== 2)
  {
    [(DockContainerViewController *)self setDockingTransitionState:0];
  }

  transitionCoordinator = [(DockContainerViewController *)self transitionCoordinator];
  isAnimated = [transitionCoordinator isAnimated];

  v6 = +[DockContainerViewController log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (isAnimated)
  {
    if (v7)
    {
      sub_100485C98();
    }

    transitionCoordinator2 = [(DockContainerViewController *)self transitionCoordinator];
    v9[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009EE90;
    v10[3] = &unk_10064CC00;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009EF14;
    v9[3] = &unk_10064CC00;
    [transitionCoordinator2 animateAlongsideTransition:v10 completion:v9];
  }

  else
  {
    if (v7)
    {
      sub_100485C64();
    }

    transitionCoordinator2 = [(DockContainerViewController *)self view];
    [transitionCoordinator2 setNeedsLayout];
  }
}

- (void)_handlePersistenceChangeFromAnotherObserver
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485CCC();
  }

  view = [(DockContainerViewController *)self view];
  [view setNeedsLayout];

  scene = [(DockContainerViewController *)self scene];
  activationState = [scene activationState];

  if (activationState == 2)
  {
    v7 = +[DockContainerViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100485D00();
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009F0B0;
    v9[3] = &unk_10064C7E8;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009F110;
    v8[3] = &unk_10064C570;
    v8[4] = self;
    [UIView animateWithDuration:4 delay:v9 options:v8 animations:0.2 completion:0.0];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_commandMPressed:" == action)
  {
    if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
    {
      v7 = 1;
    }

    else
    {
      dockedStates = [(DockContainerViewController *)self dockedStates];
      if ([dockedStates count])
      {
        activeViewController = [(DockContainerViewController *)self activeViewController];
        rootViewController = [(DockContainerViewController *)self rootViewController];
        v7 = activeViewController == rootViewController;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DockContainerViewController;
    v7 = [(DockContainerViewController *)&v12 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "_commandMPressed:")
  {
    if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
    {
      dockedStates = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [dockedStates localizedStringForKey:@"MINIMIZE_WINDOW" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      dockedStates = [(DockContainerViewController *)self dockedStates];
      if (![dockedStates count])
      {
        v6 = 0;
        goto LABEL_9;
      }

      activeViewController = [(DockContainerViewController *)self activeViewController];
      rootViewController = [(DockContainerViewController *)self rootViewController];

      if (activeViewController != rootViewController)
      {
        v6 = 0;
LABEL_10:
        [commandCopy setTitle:v6];

        goto LABEL_11;
      }

      dockedStates = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [dockedStates localizedStringForKey:@"CONTINUE_WINDOW" value:&stru_100662A88 table:@"Main"];
    }

    v6 = v5;
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_commandMPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
  {
    [(DockContainerViewController *)self _minimizeKeyCommandPressed:pressedCopy];
  }

  else
  {
    [(DockContainerViewController *)self _continueKeyCommandPressed:pressedCopy];
  }
}

- (void)dockPresentedViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(DockContainerViewController *)self _isDockableViewControllerPresented]&& ![(DockContainerViewController *)self dockingTransitionState])
  {
    presentedViewController = [(DockContainerViewController *)self presentedViewController];
    [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:presentedViewController];

    [(DockContainerViewController *)self dismissViewControllerAnimated:1 completion:0];
    transitionCoordinator = [(DockContainerViewController *)self transitionCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009F614;
    v10[3] = &unk_10064CC00;
    v10[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009F6A4;
    v8[3] = &unk_10064E8C0;
    v8[4] = self;
    v7 = completionCopy;
    v9 = v7;
    [transitionCoordinator animateAlongsideTransition:v10 completion:v8];

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (DockContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end