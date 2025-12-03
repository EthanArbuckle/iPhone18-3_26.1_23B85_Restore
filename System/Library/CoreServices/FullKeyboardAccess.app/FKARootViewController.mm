@interface FKARootViewController
- (FKARootViewController)initWithDelegate:(id)delegate displayUUID:(id)d;
- (FKARootViewControllerDelegate)delegate;
- (void)_startOverridingNativeFocus;
- (void)_stopOverridingNativeFocus;
- (void)dismissChildViewController:(id)controller animated:(BOOL)animated;
- (void)presentViewController:(id)controller inPopoverFromRect:(CGRect)rect;
- (void)setIsOverridingNativeFocus:(BOOL)focus;
- (void)showChildViewController:(id)controller animated:(BOOL)animated;
- (void)updateRequiresNativeFocus;
- (void)viewDidLoad;
@end

@implementation FKARootViewController

- (FKARootViewController)initWithDelegate:(id)delegate displayUUID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = FKARootViewController;
  v8 = [(FKARootViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [[FKAGestureViewController alloc] initWithDisplayUUID:dCopy];
    gestureViewController = v9->_gestureViewController;
    v9->_gestureViewController = v10;

    [(FKARootViewController *)v9 showChildViewController:v9->_gestureViewController animated:0];
  }

  return v9;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = FKARootViewController;
  [(FKARootViewController *)&v2 viewDidLoad];
  [UIPopoverPresentationController _setAlwaysAllowPopoverPresentations:1];
}

- (void)showChildViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(FKARootViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  [view setAutoresizingMask:18];

  view2 = [(FKARootViewController *)self view];
  [view2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view3 = [controllerCopy view];
  [view3 setFrame:{v10, v12, v14, v16}];

  view4 = [(FKARootViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100009F30;
  v28[3] = &unk_100028790;
  v20 = controllerCopy;
  v29 = v20;
  selfCopy = self;
  v21 = objc_retainBlock(v28);
  v22 = v21;
  if (animatedCopy)
  {
    view6 = [v20 view];
    [view6 setAlpha:0.0];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009F70;
    v26[3] = &unk_100028890;
    v27 = v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100009FB8;
    v24[3] = &unk_1000288B8;
    v25 = v22;
    [UIView animateWithDuration:v26 animations:v24 completion:0.3];
  }

  else
  {
    (v21[2])(v21);
  }
}

- (void)dismissChildViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A144;
  v13[3] = &unk_100028790;
  controllerCopy = controller;
  v14 = controllerCopy;
  selfCopy = self;
  v7 = objc_retainBlock(v13);
  v8 = v7;
  if (animatedCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000A1A4;
    v11[3] = &unk_100028890;
    v12 = controllerCopy;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000A1EC;
    v9[3] = &unk_1000288B8;
    v10 = v8;
    [UIView animateWithDuration:v11 animations:v9 completion:0.3];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)presentViewController:(id)controller inPopoverFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:7];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  view = [(FKARootViewController *)self view];
  [popoverPresentationController setSourceView:view];

  view2 = [(FKARootViewController *)self view];
  window = [view2 window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  view3 = [(FKARootViewController *)self view];
  [fixedCoordinateSpace convertRect:view3 toCoordinateSpace:{x, y, width, height}];
  [popoverPresentationController setSourceRect:?];

  [(FKARootViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)updateRequiresNativeFocus
{
  childViewControllers = [(FKARootViewController *)self childViewControllers];
  if ([childViewControllers indexOfObjectPassingTest:&stru_100028920] == 0x7FFFFFFFFFFFFFFFLL)
  {
    presentedViewController = [(FKARootViewController *)self presentedViewController];
    requiresNativeFocus = [presentedViewController requiresNativeFocus];
  }

  else
  {
    requiresNativeFocus = 1;
  }

  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    presentedViewController2 = [(FKARootViewController *)self presentedViewController];
    childViewControllers2 = [(FKARootViewController *)self childViewControllers];
    v9[0] = 67109634;
    v9[1] = requiresNativeFocus;
    v10 = 2112;
    v11 = presentedViewController2;
    v12 = 2112;
    v13 = childViewControllers2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Update requires native focus: %i. Presented: %@. Child: %@", v9, 0x1Cu);
  }

  [(FKARootViewController *)self setIsOverridingNativeFocus:requiresNativeFocus];
}

- (void)_startOverridingNativeFocus
{
  delegate = [(FKARootViewController *)self delegate];
  [delegate willAquireNativeFocus];

  [(FKARootViewController *)self _setFocusEnabledInScene:1];
  view = [(FKARootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  identifier = [_FBSScene identifier];

  if (!identifier)
  {
    v9 = FKALogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      view2 = [(FKARootViewController *)self view];
      window2 = [view2 window];
      windowScene2 = [window2 windowScene];
      *buf = 138412290;
      v19 = windowScene2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No identifier for window scene: %@", buf, 0xCu);
    }

    identifier = &stru_100028C78;
  }

  v13 = +[AXElement systemWideElement];
  systemApplication = [v13 systemApplication];
  v15 = [NSNumber numberWithInt:getpid()];
  v17[0] = v15;
  v17[1] = identifier;
  v16 = [NSArray arrayWithObjects:v17 count:2];
  [systemApplication performAction:5301 withValue:v16];

  [(FKARootViewController *)self _notifySceneDidBecomeFocused];
}

- (void)_stopOverridingNativeFocus
{
  v3 = +[AXElement systemWideElement];
  systemApplication = [v3 systemApplication];
  [systemApplication performAction:5301 withValue:0];

  [(FKARootViewController *)self _setFocusEnabledInScene:0];
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)setIsOverridingNativeFocus:(BOOL)focus
{
  if (self->_isOverridingNativeFocus != focus)
  {
    self->_isOverridingNativeFocus = focus;
    if (focus)
    {
      [(FKARootViewController *)self _startOverridingNativeFocus];
    }

    else
    {
      [(FKARootViewController *)self _stopOverridingNativeFocus];
    }
  }
}

- (FKARootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end