@interface FKARootViewController
- (FKARootViewController)initWithDelegate:(id)a3 displayUUID:(id)a4;
- (FKARootViewControllerDelegate)delegate;
- (void)_startOverridingNativeFocus;
- (void)_stopOverridingNativeFocus;
- (void)dismissChildViewController:(id)a3 animated:(BOOL)a4;
- (void)presentViewController:(id)a3 inPopoverFromRect:(CGRect)a4;
- (void)setIsOverridingNativeFocus:(BOOL)a3;
- (void)showChildViewController:(id)a3 animated:(BOOL)a4;
- (void)updateRequiresNativeFocus;
- (void)viewDidLoad;
@end

@implementation FKARootViewController

- (FKARootViewController)initWithDelegate:(id)a3 displayUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FKARootViewController;
  v8 = [(FKARootViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [[FKAGestureViewController alloc] initWithDisplayUUID:v7];
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

- (void)showChildViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(FKARootViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  [v7 setAutoresizingMask:18];

  v8 = [(FKARootViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(FKARootViewController *)self view];
  v19 = [v6 view];
  [v18 addSubview:v19];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100009F30;
  v28[3] = &unk_100028790;
  v20 = v6;
  v29 = v20;
  v30 = self;
  v21 = objc_retainBlock(v28);
  v22 = v21;
  if (v4)
  {
    v23 = [v20 view];
    [v23 setAlpha:0.0];

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

- (void)dismissChildViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A144;
  v13[3] = &unk_100028790;
  v6 = a3;
  v14 = v6;
  v15 = self;
  v7 = objc_retainBlock(v13);
  v8 = v7;
  if (v4)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000A1A4;
    v11[3] = &unk_100028890;
    v12 = v6;
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

- (void)presentViewController:(id)a3 inPopoverFromRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 setModalPresentationStyle:7];
  v16 = [v9 popoverPresentationController];
  [v16 setDelegate:self];
  v10 = [(FKARootViewController *)self view];
  [v16 setSourceView:v10];

  v11 = [(FKARootViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 screen];
  v14 = [v13 fixedCoordinateSpace];
  v15 = [(FKARootViewController *)self view];
  [v14 convertRect:v15 toCoordinateSpace:{x, y, width, height}];
  [v16 setSourceRect:?];

  [(FKARootViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)updateRequiresNativeFocus
{
  v3 = [(FKARootViewController *)self childViewControllers];
  if ([v3 indexOfObjectPassingTest:&stru_100028920] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(FKARootViewController *)self presentedViewController];
    v5 = [v4 requiresNativeFocus];
  }

  else
  {
    v5 = 1;
  }

  v6 = FKALogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(FKARootViewController *)self presentedViewController];
    v8 = [(FKARootViewController *)self childViewControllers];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Update requires native focus: %i. Presented: %@. Child: %@", v9, 0x1Cu);
  }

  [(FKARootViewController *)self setIsOverridingNativeFocus:v5];
}

- (void)_startOverridingNativeFocus
{
  v3 = [(FKARootViewController *)self delegate];
  [v3 willAquireNativeFocus];

  [(FKARootViewController *)self _setFocusEnabledInScene:1];
  v4 = [(FKARootViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 _FBSScene];
  v8 = [v7 identifier];

  if (!v8)
  {
    v9 = FKALogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(FKARootViewController *)self view];
      v11 = [v10 window];
      v12 = [v11 windowScene];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No identifier for window scene: %@", buf, 0xCu);
    }

    v8 = &stru_100028C78;
  }

  v13 = +[AXElement systemWideElement];
  v14 = [v13 systemApplication];
  v15 = [NSNumber numberWithInt:getpid()];
  v17[0] = v15;
  v17[1] = v8;
  v16 = [NSArray arrayWithObjects:v17 count:2];
  [v14 performAction:5301 withValue:v16];

  [(FKARootViewController *)self _notifySceneDidBecomeFocused];
}

- (void)_stopOverridingNativeFocus
{
  v3 = +[AXElement systemWideElement];
  v4 = [v3 systemApplication];
  [v4 performAction:5301 withValue:0];

  [(FKARootViewController *)self _setFocusEnabledInScene:0];
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)setIsOverridingNativeFocus:(BOOL)a3
{
  if (self->_isOverridingNativeFocus != a3)
  {
    self->_isOverridingNativeFocus = a3;
    if (a3)
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