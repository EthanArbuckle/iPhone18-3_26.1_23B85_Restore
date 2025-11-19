@interface DockContainerViewController
+ (NSArray)menuCommands;
+ (id)log;
- (BOOL)_isDockVisible;
- (BOOL)_isDockableViewControllerPresented;
- (BOOL)_isDockedViewFullWidth;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isExposeModeActivated;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)shouldAutorotate;
- (CGRect)tiltedTabViewController:(id)a3 dockedFrameForViewRepresentingState:(id)a4;
- (DockContainerViewController)initWithPersistence:(id)a3 scene:(id)a4 rootViewController:(id)a5;
- (DockContainerViewControllerDelegate)delegate;
- (MailScene)scene;
- (UIViewController)activeViewController;
- (double)_dockHeight;
- (double)_yPositionForDockedViewAtDepth:(int64_t)a3 totalDockedCount:(int64_t)a4;
- (id)_newDockingAnimatorForDismissedController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)childViewControllerForScreenEdgesDeferringSystemGestures;
- (id)preferredFocusEnvironments;
- (void)_cleanupOffscreenDockedViews;
- (void)_commandMPressed:(id)a3;
- (void)_configureNewDockedView:(id)a3;
- (void)_deactivateExposeModeWithSelection:(id)a3 fromSnapshotView:(id)a4 animated:(BOOL)a5;
- (void)_dockViewTapped;
- (void)_handlePersistenceChangeFromAnotherObserver;
- (void)_handlePersistenceChangeFromSelf;
- (void)_layoutDockedViews;
- (void)_layoutExistingDockedViewsWithIndexOffset:(int64_t)a3;
- (void)_popFirstDockedViewAnimated:(BOOL)a3;
- (void)_prepareViewControllerForDockingIfPossible:(id)a3;
- (void)_setDockVisible:(BOOL)a3;
- (void)_sheetPresentationControllerDidTearOff:(id)a3;
- (void)_tiltedTabViewWillBePresented:(id)a3;
- (void)_updateDockBackground;
- (void)_updateRootViewControllerCornerRadii;
- (void)_updateRootViewControllerTraits;
- (void)activateExposeModeAnimated:(BOOL)a3;
- (void)addPresentationControllerDelegateObserver:(id)a3;
- (void)dockContainerPersistence:(id)a3 observer:(id)a4 updatedDockedStates:(id)a5;
- (void)dockPresentedViewControllerWithCompletion:(id)a3;
- (void)popToRootViewControllerAnimated:(BOOL)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)removePresentationControllerDelegateObserver:(id)a3;
- (void)setDockingTransitionState:(int64_t)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DockContainerViewController

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = DockContainerViewController;
  [(DockContainerViewController *)&v38 viewDidLoad];
  v3 = [(DockContainerViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setOpaque:0];
  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];
  [(DockContainerViewController *)self setDockHeightConstraint:v7];

  v8 = [(DockContainerViewController *)self dockHeightConstraint];
  [v8 setActive:1];

  v9 = [v5 widthAnchor];
  v10 = [v3 widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v5 leadingAnchor];
  v13 = [v3 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v5 bottomAnchor];
  v16 = [v3 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  [(DockContainerViewController *)self setDockView:v5];
  v18 = [(DockContainerViewController *)self rootViewController];
  v19 = [v18 view];

  v20 = [(DockContainerViewController *)self rootViewController];
  [(DockContainerViewController *)self addChildViewController:v20];

  v21 = [(DockContainerViewController *)self rootViewController];
  [v21 didMoveToParentViewController:self];

  [v3 addSubview:v19];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v19 leadingAnchor];
  v23 = [v3 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v19 topAnchor];
  v26 = [v3 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [v19 trailingAnchor];
  v29 = [v3 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [v19 bottomAnchor];
  v32 = [v5 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = [v19 layer];
  [v34 setMasksToBounds:1];

  v35 = [v19 layer];
  [v35 setMaskedCorners:12];

  [(DockContainerViewController *)self setView:v3];
  v36 = [(DockContainerViewController *)self persistence];
  [v36 registerObserver:self];

  v37 = +[NSNotificationCenter defaultCenter];
  [v37 addObserver:self selector:"_tiltedTabViewWillBePresented:" name:@"kWillShowTiltedTabViewNotification" object:0];
}

- (id)childViewControllerForScreenEdgesDeferringSystemGestures
{
  v3 = [(DockContainerViewController *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DockContainerViewController;
    v4 = [(DockContainerViewController *)&v7 childViewControllerForScreenEdgesDeferringSystemGestures];
  }

  v5 = v4;

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
    v6 = [(DockContainerViewController *)self dockingTransitionState];
    [(DockContainerViewController *)self _layoutExistingDockedViewsWithIndexOffset:v6 != 0];
    v7 = [(DockContainerViewController *)self dockedViews];
    v8 = [v7 count];
    v9 = v8;
    if (v6)
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
  block[4] = a1;
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

  v3 = [(DockContainerViewController *)self rootViewController];
  [(DockContainerViewController *)self setOverrideTraitCollection:v4 forChildViewController:v3];
}

- (BOOL)_isDockVisible
{
  v2 = [(DockContainerViewController *)self dockHeightConstraint];
  [v2 constant];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_updateDockBackground
{
  if (![(DockContainerViewController *)self _isDockedViewFullWidth])
  {
    v22 = [(DockContainerViewController *)self traitCollection];
    v3 = [v22 userInterfaceStyle];

    if (v3 != 2)
    {
      v25 = +[UIColor mailDockViewLightBackgroundColor];
      v6 = [(DockContainerViewController *)self dockView];
      [v6 setBackgroundColor:v25];

      v7 = [(DockContainerViewController *)self dockShadowView];

      if (v7)
      {
        return;
      }

      v24 = [[MUIGradientView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v8 = +[UIColor mailDockViewShadowGradientColors];
      [v24 setGradientColors:v8];

      v9 = +[UIColor mailDockViewShadowGradientColorLocations];
      [v24 setLocations:v9];

      [v24 setAlpha:0.2];
      v10 = [(DockContainerViewController *)self dockView];
      [v10 addSubview:v24];
      [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [v24 heightAnchor];
      v12 = [v11 constraintEqualToConstant:3.0];
      [v12 setActive:1];

      v13 = [v24 widthAnchor];
      v14 = [v10 widthAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];

      v16 = [v24 leadingAnchor];
      v17 = [v10 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [v24 topAnchor];
      v20 = [v10 topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v21 setActive:1];

      [(DockContainerViewController *)self setDockShadowView:v24];
      goto LABEL_5;
    }
  }

  v23 = +[UIColor mailDockViewDarkBackgroundColor];
  v4 = [(DockContainerViewController *)self dockView];
  [v4 setBackgroundColor:v23];

  v5 = [(DockContainerViewController *)self dockShadowView];
  if (v5)
  {
    v24 = v5;
    [v5 removeFromSuperview];
    [(DockContainerViewController *)self setDockShadowView:0];
LABEL_5:
    v5 = v24;
  }
}

- (BOOL)_isDockedViewFullWidth
{
  v2 = self;
  v3 = [(DockContainerViewController *)self view];
  [SheetMetrics frameForPresentedSheetIn:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  Width = CGRectGetWidth(v15);
  v13 = [(DockContainerViewController *)v2 view];
  [v13 bounds];
  LOBYTE(v2) = Width >= CGRectGetWidth(v16);

  return v2;
}

- (void)_updateRootViewControllerCornerRadii
{
  v3 = 0.0;
  if ([(DockContainerViewController *)self _isDockVisible]&& [(DockContainerViewController *)self _isDockedViewFullWidth])
  {
    +[SheetMetrics cornerRadius];
    v3 = v4;
  }

  v5 = [(DockContainerViewController *)self rootViewController];
  v6 = [v5 view];
  v8 = [v6 layer];

  [v8 cornerRadius];
  if (v7 != v3)
  {
    [v8 setCornerRadius:v3];
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
  v3 = [(DockContainerViewController *)self presentedViewController];

  if (v3)
  {
    v4 = [(DockContainerViewController *)self presentedViewController];
  }

  else
  {
    v5 = [(DockContainerViewController *)self activeTiltedTabViewController];

    if (v5)
    {
      [(DockContainerViewController *)self activeTiltedTabViewController];
    }

    else
    {
      [(DockContainerViewController *)self rootViewController];
    }
    v4 = ;
  }

  return v4;
}

- (DockContainerViewController)initWithPersistence:(id)a3 scene:(id)a4 rootViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = DockContainerViewController;
  v12 = [(DockContainerViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistence, a3);
    objc_storeWeak(&v13->_scene, v10);
    v14 = objc_alloc_init(NSArray);
    dockedStates = v13->_dockedStates;
    v13->_dockedStates = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    dockedViews = v13->_dockedViews;
    v13->_dockedViews = v16;

    v18 = objc_alloc_init(NSMutableArray);
    offscreenDockedViews = v13->_offscreenDockedViews;
    v13->_offscreenDockedViews = v18;

    objc_storeStrong(&v13->_rootViewController, a5);
    v20 = +[NSHashTable weakObjectsHashTable];
    presentationControllerDelegateObservers = v13->_presentationControllerDelegateObservers;
    v13->_presentationControllerDelegateObservers = v20;
  }

  return v13;
}

- (void)addPresentationControllerDelegateObserver:(id)a3
{
  v5 = a3;
  v4 = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  [v4 addObject:v5];
}

- (void)removePresentationControllerDelegateObserver:(id)a3
{
  v5 = a3;
  v4 = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  [v4 removeObject:v5];
}

- (BOOL)isExposeModeActivated
{
  v2 = [(DockContainerViewController *)self activeTiltedTabViewController];
  v3 = v2 != 0;

  return v3;
}

- (id)preferredFocusEnvironments
{
  v3 = [(DockContainerViewController *)self activeViewController];
  if (sub_10009B1B4(self, v3))
  {
    v12 = v3;
    v4 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [v5 mailboxPickerNavController];
      v7 = [v6 topViewController];
      v8 = [v5 messageListNavController];
      v9 = [v8 topViewController];
      v11[1] = v9;
      v4 = [NSArray arrayWithObjects:v11 count:2];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)activateExposeModeAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(DockContainerViewController *)self isExposeModeActivated])
  {
    v14 = [(DockContainerViewController *)self dockedStates];
    v5 = [v14 count];

    if (v5)
    {
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 postNotificationName:@"kWillShowTiltedTabViewNotification" object:self];

      v6 = [TiltedTabViewController alloc];
      v7 = [(DockContainerViewController *)self dockedStates];
      v8 = [(DockContainerViewController *)self persistence];
      v9 = [(DockContainerViewController *)self rootViewController];
      v10 = [(DockContainerViewController *)self scene];
      v11 = [v10 daemonInterface];
      v16 = [(TiltedTabViewController *)v6 initWithInitialDockedStates:v7 persistence:v8 primaryViewController:v9 daemonInterface:v11];

      [(TiltedTabViewController *)v16 setDelegate:self];
      [(DockContainerViewController *)self setActiveTiltedTabViewController:v16];
      [(DockContainerViewController *)self addChildViewController:v16];
      v12 = [(DockContainerViewController *)self view];
      v13 = [(TiltedTabViewController *)v16 view];
      [v12 addSubview:v13];

      [(TiltedTabViewController *)v16 didMoveToParentViewController:self];
      [(TiltedTabViewController *)v16 presentAnimated:v3];
      [(DockContainerViewController *)self setNeedsFocusUpdate];
    }
  }
}

- (void)_deactivateExposeModeWithSelection:(id)a3 fromSnapshotView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(DockContainerViewController *)self isExposeModeActivated])
  {
    [(DockContainerViewController *)self activeTiltedTabViewController];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10009BB78;
    v10 = v36[3] = &unk_10064C660;
    v37 = v10;
    v38 = self;
    v11 = objc_retainBlock(v36);
    if (v8)
    {
      v12 = [(DockContainerViewController *)self persistence];
      v13 = [v8 dockIdentifier];
      [v12 removeDockedStateWithIdentifier:v13 sender:self];

      v14 = [(DockContainerViewController *)self dockedViews];
      v15 = [v8 dockIdentifier];
      v16 = [v14 objectForKey:v15];

      if (v16)
      {
        v17 = [(DockContainerViewController *)self dockedViews];
        v18 = [v8 dockIdentifier];
        [v17 removeObjectForKey:v18];

        [v16 removeFromSuperview];
      }

      v19 = [(DockContainerViewController *)self scene];
      v20 = [v8 restoreViewControllerWithScene:v19];

      v21 = [(DockContainerViewController *)self delegate];
      [v21 dockContainer:self didRestoreViewController:v20];

      if (v5)
      {
        [v20 setTransitioningDelegate:self];
        v22 = [[TabSelectionPresentationAnimationController alloc] initWithSourceView:v9];
        [(DockContainerViewController *)self setNextPresentationAnimation:v22];

        [(DockContainerViewController *)self presentViewController:v20 animated:1 completion:0];
        v23 = [(DockContainerViewController *)self transitionCoordinator];
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
        [v23 animateAlongsideTransition:v34 completion:v32];
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
      if (!v5)
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
      v29 = self;
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

- (void)setDockingTransitionState:(int64_t)a3
{
  if (self->_dockingTransitionState != a3)
  {
    v5 = +[DockContainerViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1004858D0(&self->_dockingTransitionState, a3, v5);
    }
  }

  self->_dockingTransitionState = a3;
}

- (void)_setDockVisible:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (a3)
  {
    [(DockContainerViewController *)self _dockHeight];
    v5 = v6;
  }

  v7 = [(DockContainerViewController *)self dockHeightConstraint];
  [v7 constant];
  v9 = v8;

  if (v9 != v5)
  {
    v10 = +[DockContainerViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004859D0(v3, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = [(DockContainerViewController *)self dockHeightConstraint];
    [v17 setConstant:v5];

    v18 = [(DockContainerViewController *)self delegate];
    [v18 dockContainer:self isVisible:v3];
  }
}

- (double)_dockHeight
{
  v2 = [(DockContainerViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3 + 50.0;

  return v4;
}

- (void)_dockViewTapped
{
  v3 = [(DockContainerViewController *)self dockedStates];
  v4 = [v3 count];

  if (v4 == 1)
  {

    [(DockContainerViewController *)self _popFirstDockedViewAnimated:1];
  }

  else
  {
    v5 = [(DockContainerViewController *)self dockedStates];
    v6 = [v5 count];

    if (v6 >= 2)
    {

      [(DockContainerViewController *)self activateExposeModeAnimated:1];
    }
  }
}

- (void)_popFirstDockedViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(DockContainerViewController *)self dockedStates];
  v6 = [v5 firstObject];

  v7 = [(DockContainerViewController *)self persistence];
  v8 = [v6 dockIdentifier];
  [v7 removeDockedStateWithIdentifier:v8 sender:self];

  v9 = [(DockContainerViewController *)self scene];
  v10 = [v6 restoreViewControllerWithScene:v9];

  if (v10)
  {
    [(DockContainerViewController *)self presentViewController:v10 animated:v3 completion:0];
    if (v3)
    {
      v11 = [(DockContainerViewController *)self dockedStates];
      v12 = [v11 mutableCopy];

      [v12 removeObject:v6];
      v13 = [v12 copy];
      [(DockContainerViewController *)self setDockedStates:v13];

      v14 = [(DockContainerViewController *)self transitionCoordinator];
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
      [v14 animateAlongsideTransition:v17 completion:v16];
    }

    v15 = [(DockContainerViewController *)self delegate];
    [v15 dockContainer:self didRestoreViewController:v10];
  }
}

- (void)_layoutExistingDockedViewsWithIndexOffset:(int64_t)a3
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485A54(a3, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [(DockContainerViewController *)self dockedStates];
  v11 = [v10 ef_mapSelector:"dockIdentifier"];

  v12 = [(DockContainerViewController *)self dockedViews];
  v13 = [v12 allKeys];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_10009CE1C;
  v101[3] = &unk_10064E820;
  v80 = v11;
  v102 = v80;
  v78 = [v13 ef_filter:v101];

  v14 = self;
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
          v20 = [(DockContainerViewController *)self dockedViews];
          v21 = [v20 objectForKeyedSubscript:v19];

          v22 = [(DockContainerViewController *)self dockedViews];
          [v22 removeObjectForKey:v19];

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

          v32 = [(DockContainerViewController *)self view];
          [v32 frame];
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

          v37 = [(DockContainerViewController *)self offscreenDockedViews];
          [v37 addObject:v21];
        }

        v16 = [v15 countByEnumeratingWithState:&v97 objects:v105 count:16];
      }

      while (v16);
    }

    v14 = self;
  }

  v38 = [(DockContainerViewController *)v14 view];
  [SheetMetrics frameForPresentedSheetIn:v38];
  v86 = v40;
  v87 = v39;
  v84 = v42;
  v85 = v41;

  v43 = [(DockContainerViewController *)self activeTiltedTabViewController];
  v88 = [v43 view];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v80;
  v44 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
  v45 = self;
  if (v44)
  {
    v81 = *v94;
    v46 = a3;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v94 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v93 + 1) + 8 * j);
        if (v46 >= 2)
        {
          v49 = 2;
        }

        else
        {
          v49 = v46;
        }

        v110.origin.y = v86;
        v110.origin.x = v87;
        v110.size.height = v84;
        v110.size.width = v85;
        v50 = CGRectGetWidth(v110);
        v51 = [(DockContainerViewController *)v45 view];
        [v51 bounds];
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
        v55 = [(DockContainerViewController *)self view];
        [v55 bounds];
        v56 = CGRectGetWidth(v113);

        -[DockContainerViewController _yPositionForDockedViewAtDepth:totalDockedCount:](self, "_yPositionForDockedViewAtDepth:totalDockedCount:", v49, [obj count] + a3);
        v58 = v57;
        v59 = [(DockContainerViewController *)self dockedViews];
        v60 = [v59 objectForKeyedSubscript:v48];

        v61 = (v56 - v53) * 0.5;
        if (!v60)
        {
          v62 = [(DockContainerViewController *)self dockedStates];
          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_10009CE40;
          v92[3] = &unk_10064E678;
          v92[4] = v48;
          v63 = [v62 ef_firstObjectPassingTest:v92];

          v114.origin.x = (v56 - v53) * 0.5;
          v114.origin.y = v58;
          v114.size.width = v53;
          v114.size.height = Height;
          v64 = CGRectGetMinX(v114);
          v65 = [(DockContainerViewController *)self view];
          [v65 bounds];
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

          v70 = [(DockContainerViewController *)self dockedViews];
          [v70 setObject:v60 forKey:v48];

          [v60 setAlpha:0.0];
          v71 = [(DockContainerViewController *)self view];
          if (v88)
          {
            [v71 insertSubview:v60 below:v88];
          }

          else
          {
            [v71 addSubview:v60];
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
        if (v46 < 3)
        {
          v76 = 1.0;
        }

        [v60 setAlpha:v76];
        v77 = v60;

        ++v46;
        v88 = v77;
LABEL_40:
        v45 = self;
      }

      v44 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v44);
  }
}

- (double)_yPositionForDockedViewAtDepth:(int64_t)a3 totalDockedCount:(int64_t)a4
{
  v7 = [(DockContainerViewController *)self view];
  [v7 bounds];
  MaxY = CGRectGetMaxY(v16);
  [(DockContainerViewController *)self _dockHeight];
  v10 = 3;
  if (a4 < 3)
  {
    v10 = a4;
  }

  v11 = ((v10 & ~(v10 >> 63)) + ~a3) * 4.0;
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
  v4 = [(DockContainerViewController *)self offscreenDockedViews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(DockContainerViewController *)self offscreenDockedViews];
  [v8 removeAllObjects];
}

- (void)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
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
  v16 = v3;
  v6 = objc_retainBlock(v15);
  v7 = [(DockContainerViewController *)self presentedViewController];
  if (v7)
  {
    if (sub_10009B1B4(self, v7))
    {
      v8 = +[DockContainerViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dockable view controller is currently presented. Will dock on dismissal.", buf, 2u);
      }

      if (v3)
      {
        [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:v7];
      }

      else
      {
        v9 = [[DockedViewControllerState alloc] initWithDockableViewController:v7];
        v10 = [(DockContainerViewController *)self persistence];
        [v10 pushNewDockedState:v9 sender:0];

        v11 = [(DockContainerViewController *)self delegate];
        v12 = [(DockedViewControllerState *)v9 dockIdentifier];
        [v11 dockContainer:self dockedViewControllerWithIdentifier:v12];
      }
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009D3A8;
    v13[3] = &unk_10064C598;
    v14 = v6;
    [(DockContainerViewController *)self dismissViewControllerAnimated:v3 completion:v13];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (BOOL)shouldAutorotate
{
  v2 = [(DockContainerViewController *)self rootViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(DockContainerViewController *)self dockingTransitionState]== 1)
  {
    v8 = [(DockContainerViewController *)self presentedViewController];
    v9 = [v8 transitionCoordinator];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009D52C;
    v11[3] = &unk_10064CC00;
    v11[4] = self;
    [v9 animateAlongsideTransition:0 completion:v11];
  }

  v10.receiver = self;
  v10.super_class = DockContainerViewController;
  [(DockContainerViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (CGRect)tiltedTabViewController:(id)a3 dockedFrameForViewRepresentingState:(id)a4
{
  v5 = [a4 dockIdentifier];
  v6 = [(DockContainerViewController *)self dockedViews];
  v7 = [v6 objectForKey:v5];

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

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(DockContainerViewController *)self presentedViewController];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(DockContainerViewController *)self activeViewController];
      [v11 presentViewController:v8 animated:v6 completion:v9];
    }

    else
    {
      if ((sub_10009B1B4(self, v10) & 1) != 0 || [v10 conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
      {
        [v10 setTransitioningDelegate:self];
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10009D93C;
      v25[3] = &unk_10064E848;
      v25[4] = self;
      v26 = v8;
      v28 = v6;
      v27 = v9;
      [(DockContainerViewController *)self dismissViewControllerAnimated:v6 completion:v25];
    }
  }

  else
  {
    if ((sub_10009B1B4(self, v8) & 1) != 0 || [v8 conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
    {
      v12 = +[DockContainerViewController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100485AF4(v8, v12, v13, v14, v15, v16, v17, v18);
      }

      v19 = [v8 presentationController];
      [v19 setDelegate:self];
    }

    if ([v8 conformsToProtocol:&OBJC_PROTOCOL___TearableViewController])
    {
      v20 = [v8 presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = +[DockContainerViewController log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100485B60();
        }

        v23 = [v8 presentationController];
        [v23 _setAllowsTearOff:1];
        [v23 setPrefersGrabberVisible:1];
      }
    }

    v24.receiver = self;
    v24.super_class = DockContainerViewController;
    [(DockContainerViewController *)&v24 presentViewController:v8 animated:v6 completion:v9];
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = +[DockContainerViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100485B94();
  }

  v6 = [v4 presentedViewController];
  [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:v6];

  return 1;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DockContainerViewController *)self presentationControllerDelegateObservers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v8) presentationControllerWillDismiss:v4];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [v4 presentedViewController];
  if (sub_10009B1B4(self, v9))
  {
    [(DockContainerViewController *)self setDockingTransitionState:1];
    v10 = [v9 transitionCoordinator];
    if (([v10 isInterruptible] & 1) != 0 || objc_msgSend(v10, "isInteractive"))
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10009DC1C;
      v11[3] = &unk_10064E7A8;
      v11[4] = self;
      v12 = v9;
      [v10 notifyWhenInteractionChangesUsingBlock:v11];
    }
  }
}

- (void)_sheetPresentationControllerDidTearOff:(id)a3
{
  v4 = a3;
  [(DockContainerViewController *)self setDraftWasTornOff:1];
  v5 = [v4 presentedViewController];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___DockableViewController] && objc_msgSend(v5, "conformsToProtocol:", &OBJC_PROTOCOL___TearableViewController))
  {
    v6 = [v5 dockIdentifier];
    v7 = +[DockContainerViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dockable view controller with identifier %{public}@ was torn off.", buf, 0xCu);
    }

    v8 = [(DockContainerViewController *)self delegate];
    [v8 dockContainer:self dockedViewWasTornOffWithIdentifier:v6];
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  if (sub_10009B1B4(self, a3))
  {
    v6 = [(DockContainerViewController *)self nextPresentationAnimation];
    [(DockContainerViewController *)self setNextPresentationAnimation:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  if (sub_10009B1B4(self, v4))
  {
    [(DockContainerViewController *)self setDraftWasTornOff:0];
    v5 = [(DockContainerViewController *)self _newDockingAnimatorForDismissedController:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newDockingAnimatorForDismissedController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_UISheetAnimationController);
  [v5 setIsReversed:1];
  v6 = [(DockContainerViewController *)self dockedStates];
  v7 = [v6 count];

  [(DockContainerViewController *)self _yPositionForDockedViewAtDepth:0 totalDockedCount:v7 + 1];
  v9 = v8;
  v10 = [(DockContainerViewController *)self view];
  v11 = [v10 window];
  v12 = [v4 view];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v4 view];
  [v11 convertRect:v21 fromView:{v14, v16, v18, v20}];
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
  v33 = [v4 presentationController];
  v34 = [v33 presentedView];

  v35 = [v4 view];
  [v35 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v4 view];
  [v34 convertRect:v44 fromView:{v37, v39, v41, v43}];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = [v4 dockedViewWithFrame:{v46, v48, v50, v52}];
  [v53 setAlpha:0.0];
  v54 = [v4 dockedViewWithFrame:{MinX, v9, Width, Height}];
  v55 = [[DockedViewControllerState alloc] initWithDockableViewController:v4];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10009E558;
  v69[3] = &unk_10064C6B0;
  v56 = v34;
  v70 = v56;
  v57 = v53;
  v71 = v57;
  v72 = self;
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
  v62 = v4;
  v68 = v62;
  [v58 setNoninteractiveCompletion:v64];

  return v58;
}

- (void)_configureNewDockedView:(id)a3
{
  v4 = a3;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dockViewTapped"];
  [v5 setDelegate:self];
  [v4 addGestureRecognizer:v5];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 preferredSpringLoadingEffect];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  v7 = [UISpringLoadedInteraction alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10009E8F8;
  v12 = &unk_10064E898;
  objc_copyWeak(&v13, &location);
  v8 = [v7 initWithInteractionBehavior:0 interactionEffect:v6 activationHandler:&v9];
  [v4 addInteraction:{v8, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)_isDockableViewControllerPresented
{
  v2 = self;
  v3 = [(DockContainerViewController *)self activeViewController];
  LOBYTE(v2) = sub_10009B1B4(v2, v3);

  return v2;
}

- (void)_prepareViewControllerForDockingIfPossible:(id)a3
{
  v4 = a3;
  if (sub_10009B1B4(self, v4))
  {
    v5 = v4;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(DockContainerViewController *)self view];
  [v4 locationOfTouch:0 inView:v5];
  v7 = v6;

  v8 = [(DockContainerViewController *)self view];
  [v8 bounds];
  MaxY = CGRectGetMaxY(v14);
  v10 = [(DockContainerViewController *)self view];
  [v10 safeAreaInsets];
  v12 = v7 < MaxY - v11;

  return v12;
}

- (void)_tiltedTabViewWillBePresented:(id)a3
{
  v5 = a3;
  if ([(DockContainerViewController *)self isExposeModeActivated])
  {
    v4 = [v5 object];

    if (v4 != self)
    {
      [(DockContainerViewController *)self deactivateExposeModeAnimated:1];
    }
  }
}

- (void)dockContainerPersistence:(id)a3 observer:(id)a4 updatedDockedStates:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DockContainerViewController *)self dockedStates];
  v11 = [v10 isEqualToArray:v9];

  if ((v11 & 1) == 0)
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      [v12 migrateDockContainerDraftsToWindowsIfNeeded:v9];
      [v12 removeObserver:self];
    }

    else
    {
      [(DockContainerViewController *)self setDockedStates:v9];
      if (v8 == self)
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

  v4 = [(DockContainerViewController *)self transitionCoordinator];
  v5 = [v4 isAnimated];

  v6 = +[DockContainerViewController log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_100485C98();
    }

    v8 = [(DockContainerViewController *)self transitionCoordinator];
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
    [v8 animateAlongsideTransition:v10 completion:v9];
  }

  else
  {
    if (v7)
    {
      sub_100485C64();
    }

    v8 = [(DockContainerViewController *)self view];
    [v8 setNeedsLayout];
  }
}

- (void)_handlePersistenceChangeFromAnotherObserver
{
  v3 = +[DockContainerViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100485CCC();
  }

  v4 = [(DockContainerViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(DockContainerViewController *)self scene];
  v6 = [v5 activationState];

  if (v6 == 2)
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_commandMPressed:" == a3)
  {
    if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(DockContainerViewController *)self dockedStates];
      if ([v8 count])
      {
        v9 = [(DockContainerViewController *)self activeViewController];
        v10 = [(DockContainerViewController *)self rootViewController];
        v7 = v9 == v10;
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
    v7 = [(DockContainerViewController *)&v12 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)validateCommand:(id)a3
{
  v9 = a3;
  if ([v9 action] == "_commandMPressed:")
  {
    if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"MINIMIZE_WINDOW" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v4 = [(DockContainerViewController *)self dockedStates];
      if (![v4 count])
      {
        v6 = 0;
        goto LABEL_9;
      }

      v7 = [(DockContainerViewController *)self activeViewController];
      v8 = [(DockContainerViewController *)self rootViewController];

      if (v7 != v8)
      {
        v6 = 0;
LABEL_10:
        [v9 setTitle:v6];

        goto LABEL_11;
      }

      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"CONTINUE_WINDOW" value:&stru_100662A88 table:@"Main"];
    }

    v6 = v5;
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_commandMPressed:(id)a3
{
  v4 = a3;
  if ([(DockContainerViewController *)self _isDockableViewControllerPresented])
  {
    [(DockContainerViewController *)self _minimizeKeyCommandPressed:v4];
  }

  else
  {
    [(DockContainerViewController *)self _continueKeyCommandPressed:v4];
  }
}

- (void)dockPresentedViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  if ([(DockContainerViewController *)self _isDockableViewControllerPresented]&& ![(DockContainerViewController *)self dockingTransitionState])
  {
    v5 = [(DockContainerViewController *)self presentedViewController];
    [(DockContainerViewController *)self _prepareViewControllerForDockingIfPossible:v5];

    [(DockContainerViewController *)self dismissViewControllerAnimated:1 completion:0];
    v6 = [(DockContainerViewController *)self transitionCoordinator];
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
    v7 = v4;
    v9 = v7;
    [v6 animateAlongsideTransition:v10 completion:v8];

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