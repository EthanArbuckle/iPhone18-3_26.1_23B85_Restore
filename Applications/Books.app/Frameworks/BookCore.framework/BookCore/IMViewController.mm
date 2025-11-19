@interface IMViewController
- (BOOL)shouldAutorotate;
- (IMViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_transitionFromViewController:(id)a3 toViewController:(id)a4 transition:(id)a5 reverse:(BOOL)a6;
- (int64_t)overrideUserInterfaceStyle;
- (void)addTransition:(id)a3;
- (void)childTransitionDidComplete:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)fireTransition:(id)a3;
- (void)processPendingTransitions;
- (void)setTheme:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation IMViewController

- (IMViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = IMViewController;
  v4 = [(IMViewController *)&v7 initWithNibName:a3 bundle:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = IMViewController;
  [(IMViewController *)&v4 viewWillAppear:a3];
  [(IMViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(IMViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = IMViewController;
  [(IMViewController *)&v5 viewDidDisappear:v3];
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
  v3 = [(IMViewController *)self currentTransition];

  if (!v3)
  {
    return 1;
  }

  v4 = [(IMViewController *)self currentTransition];
  v5 = [v4 shouldAllowInterfaceRotation];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IMViewController;
  [(IMViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
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
  [v7 animateAlongsideTransition:&stru_2C8C90 completion:v9];
}

- (void)setTheme:(id)a3
{
  v6 = a3;
  if (![(IMTheme *)self->_theme isEqual:?])
  {
    objc_storeStrong(&self->_theme, a3);
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

- (void)childTransitionDidComplete:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  [v5 setParentViewController:0];
  v6 = [v5 toViewController];
  [v6 didMoveToParentViewController:self];

  [(IMViewController *)self setCurrentTransition:0];
  v7 = [(IMViewController *)self pendingTransitions];
  [v7 removeObject:v5];

  [(IMViewController *)self processPendingTransitions];
}

- (id)_transitionFromViewController:(id)a3 toViewController:(id)a4 transition:(id)a5 reverse:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 copy];
  }

  else
  {
    v14 = +[(IMTransition *)IMViewControllerTransition];
    [v14 setAnimated:0];
  }

  if (v10 != v11)
  {
    [v14 setFromViewController:v10];
    [v14 setToViewController:v11];
    [v14 setParentViewController:self];
    [v14 setReverse:v6];
    [(IMViewController *)self addTransition:v14];
  }

  return v14;
}

- (void)addTransition:(id)a3
{
  v4 = a3;
  v5 = [(IMViewController *)self pendingTransitions];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    [(IMViewController *)self setPendingTransitions:v6];
  }

  v7 = [(IMViewController *)self pendingTransitions];
  [v7 addObject:v4];

  [(IMViewController *)self processPendingTransitions];
}

- (void)fireTransition:(id)a3
{
  v8 = a3;
  if ([(IMViewController *)self isViewLoaded])
  {
    v4 = [(IMViewController *)self view];
    [v4 setUserInteractionEnabled:0];

    v5 = [v8 fromViewController];
    v6 = [v5 parentViewController];
  }

  v7 = [v8 toViewController];
  [(IMViewController *)self addChildViewController:v7];

  [v8 beginTransition];
}

- (void)processPendingTransitions
{
  v3 = [(IMViewController *)self currentTransition];

  if (!v3)
  {
    v4 = [(IMViewController *)self pendingTransitions];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(IMViewController *)self pendingTransitions];
      v9 = [v6 objectAtIndex:0];

      [(IMViewController *)self setCurrentTransition:v9];
      [(IMViewController *)self fireTransition:v9];
    }

    else if ([(IMViewController *)self isViewLoaded])
    {
      v7 = [(IMViewController *)self view];
      [v7 setUserInteractionEnabled:1];

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