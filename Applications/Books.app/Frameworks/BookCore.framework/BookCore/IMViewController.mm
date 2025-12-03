@interface IMViewController
- (BOOL)shouldAutorotate;
- (IMViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_transitionFromViewController:(id)controller toViewController:(id)viewController transition:(id)transition reverse:(BOOL)reverse;
- (int64_t)overrideUserInterfaceStyle;
- (void)addTransition:(id)transition;
- (void)childTransitionDidComplete:(id)complete finished:(BOOL)finished;
- (void)dealloc;
- (void)fireTransition:(id)transition;
- (void)processPendingTransitions;
- (void)setTheme:(id)theme;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation IMViewController

- (IMViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = IMViewController;
  v4 = [(IMViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(IMViewController *)v4 initCommon];
  }

  return v5;
}

- (void)dealloc
{
  [(IMViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = IMViewController;
  [(IMViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = IMViewController;
  [(IMViewController *)&v4 viewWillAppear:appear];
  [(IMViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(IMViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = IMViewController;
  [(IMViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidUnload
{
  [(IMViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = IMViewController;
  [(IMViewController *)&v3 viewDidUnload];
}

- (BOOL)shouldAutorotate
{
  currentTransition = [(IMViewController *)self currentTransition];

  if (!currentTransition)
  {
    return 1;
  }

  currentTransition2 = [(IMViewController *)self currentTransition];
  shouldAllowInterfaceRotation = [currentTransition2 shouldAllowInterfaceRotation];

  return shouldAllowInterfaceRotation;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = IMViewController;
  [(IMViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v11);
  if (!IsIdentity)
  {
    self->_rotating = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2BDCC;
  v9[3] = &unk_2C8CB8;
  v10 = !IsIdentity;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_2C8C90 completion:v9];
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (![(IMTheme *)self->_theme isEqual:?])
  {
    objc_storeStrong(&self->_theme, theme);
    objc_opt_class();
    v5 = BUDynamicCast();
    [(IMViewController *)self setThemePage:v5];

    [(IMViewController *)self setNeedsUserInterfaceAppearanceUpdate];
    [(IMViewController *)self im_notifyThemeDidChange];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  v4.receiver = self;
  v4.super_class = IMViewController;
  result = [(IMViewController *)&v4 overrideUserInterfaceStyle];
  if (!result)
  {
    return [(IMThemePage *)self->_themePage userInterfaceStyle];
  }

  return result;
}

- (void)childTransitionDidComplete:(id)complete finished:(BOOL)finished
{
  completeCopy = complete;
  [completeCopy setParentViewController:0];
  toViewController = [completeCopy toViewController];
  [toViewController didMoveToParentViewController:self];

  [(IMViewController *)self setCurrentTransition:0];
  pendingTransitions = [(IMViewController *)self pendingTransitions];
  [pendingTransitions removeObject:completeCopy];

  [(IMViewController *)self processPendingTransitions];
}

- (id)_transitionFromViewController:(id)controller toViewController:(id)viewController transition:(id)transition reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCopy = transition;
  v13 = transitionCopy;
  if (transitionCopy)
  {
    v14 = [transitionCopy copy];
  }

  else
  {
    v14 = +[(IMTransition *)IMViewControllerTransition];
    [v14 setAnimated:0];
  }

  if (controllerCopy != viewControllerCopy)
  {
    [v14 setFromViewController:controllerCopy];
    [v14 setToViewController:viewControllerCopy];
    [v14 setParentViewController:self];
    [v14 setReverse:reverseCopy];
    [(IMViewController *)self addTransition:v14];
  }

  return v14;
}

- (void)addTransition:(id)transition
{
  transitionCopy = transition;
  pendingTransitions = [(IMViewController *)self pendingTransitions];

  if (!pendingTransitions)
  {
    v6 = +[NSMutableArray array];
    [(IMViewController *)self setPendingTransitions:v6];
  }

  pendingTransitions2 = [(IMViewController *)self pendingTransitions];
  [pendingTransitions2 addObject:transitionCopy];

  [(IMViewController *)self processPendingTransitions];
}

- (void)fireTransition:(id)transition
{
  transitionCopy = transition;
  if ([(IMViewController *)self isViewLoaded])
  {
    view = [(IMViewController *)self view];
    [view setUserInteractionEnabled:0];

    fromViewController = [transitionCopy fromViewController];
    parentViewController = [fromViewController parentViewController];
  }

  toViewController = [transitionCopy toViewController];
  [(IMViewController *)self addChildViewController:toViewController];

  [transitionCopy beginTransition];
}

- (void)processPendingTransitions
{
  currentTransition = [(IMViewController *)self currentTransition];

  if (!currentTransition)
  {
    pendingTransitions = [(IMViewController *)self pendingTransitions];
    v5 = [pendingTransitions count];

    if (v5)
    {
      pendingTransitions2 = [(IMViewController *)self pendingTransitions];
      v9 = [pendingTransitions2 objectAtIndex:0];

      [(IMViewController *)self setCurrentTransition:v9];
      [(IMViewController *)self fireTransition:v9];
    }

    else if ([(IMViewController *)self isViewLoaded])
    {
      view = [(IMViewController *)self view];
      [view setUserInteractionEnabled:1];

      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v8 = objc_opt_class();

        [v8 attemptRotationToDeviceOrientation];
      }
    }
  }
}

@end