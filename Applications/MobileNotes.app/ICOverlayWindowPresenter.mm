@interface ICOverlayWindowPresenter
- (ICOverlayWindowPresenter)initWithRootViewController:(id)controller presentingWindow:(id)window;
- (void)animateWindowFrameReverse:(BOOL)reverse duration:(double)duration completionBlock:(id)block;
- (void)dismissWithCompletionBlock:(id)block;
- (void)presentWithCompletionBlock:(id)block;
@end

@implementation ICOverlayWindowPresenter

- (ICOverlayWindowPresenter)initWithRootViewController:(id)controller presentingWindow:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  v17.receiver = self;
  v17.super_class = ICOverlayWindowPresenter;
  v8 = [(ICOverlayWindowPresenter *)&v17 init];
  if (v8)
  {
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = [ICWindow alloc];
    windowScene = [windowCopy windowScene];
    v12 = [v10 initWithWindowScene:windowScene behavior:{objc_msgSend(windowCopy, "ic_behavior")}];

    viewControllerManager = [v9 viewControllerManager];
    [v12 setViewControllerManager:viewControllerManager];

    [v12 setRootViewController:controllerCopy];
    [v12 setWindowLevel:UIWindowLevelStatusBar + -1.0];
    window = v8->_window;
    v8->_window = v12;
    v15 = v12;

    objc_storeStrong(&v8->_presentingWindow, window);
  }

  return v8;
}

- (void)animateWindowFrameReverse:(BOOL)reverse duration:(double)duration completionBlock:(id)block
{
  reverseCopy = reverse;
  blockCopy = block;
  if (reverseCopy)
  {
    window = [(ICOverlayWindowPresenter *)self window];
    [window bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = 0x20000;
  }

  else
  {
    window = [(ICOverlayWindowPresenter *)self presentingWindow];
    [window frame];
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v18 = 0x10000;
  }

  v30.origin.x = v11;
  v30.origin.y = v13;
  v30.size.width = v15;
  v30.size.height = v17;
  MaxY = CGRectGetMaxY(v30);
  if (reverseCopy)
  {
    v24 = v13;
  }

  else
  {
    v24 = MaxY;
  }

  if (reverseCopy)
  {
    v13 = MaxY;
  }

  window2 = [(ICOverlayWindowPresenter *)self window];
  [window2 setFrame:{v11, v24, v15, v17}];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000DBA78;
  v29[3] = &unk_1006493E8;
  v29[4] = self;
  *&v29[5] = v11;
  *&v29[6] = v13;
  *&v29[7] = v15;
  *&v29[8] = v17;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000DBAE4;
  v27[3] = &unk_1006465D0;
  v28 = blockCopy;
  v26 = blockCopy;
  [UIView animateWithDuration:v18 delay:v29 options:v27 animations:duration completion:0.0];
}

- (void)presentWithCompletionBlock:(id)block
{
  blockCopy = block;
  window = [(ICOverlayWindowPresenter *)self window];
  [window makeKeyAndVisible];

  presentAnimationType = [(ICOverlayWindowPresenter *)self presentAnimationType];
  if (presentAnimationType)
  {
    if (presentAnimationType == 2)
    {
      windowBackgroundColor = [(ICOverlayWindowPresenter *)self windowBackgroundColor];
      v8 = windowBackgroundColor;
      if (!windowBackgroundColor)
      {
        v8 = +[UIColor ic_dynamicWhiteBlackColor];
      }

      window2 = [(ICOverlayWindowPresenter *)self window];
      [window2 setBackgroundColor:v8];

      if (!windowBackgroundColor)
      {
      }

      window3 = [(ICOverlayWindowPresenter *)self window];
      rootViewController = [window3 rootViewController];
      view = [rootViewController view];
      [view setAlpha:0.0];

      window4 = [(ICOverlayWindowPresenter *)self window];
      [window4 makeKeyAndVisible];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000DBD18;
      v16[3] = &unk_100645E30;
      v16[4] = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000DBD88;
      v14[3] = &unk_1006465D0;
      v15 = blockCopy;
      [UIView animateWithDuration:v16 animations:v14 completion:0.25];
    }

    else if (presentAnimationType == 1)
    {
      [(ICOverlayWindowPresenter *)self animateWindowFrameReverse:0 duration:blockCopy completionBlock:0.3];
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICOverlayWindowPresenter presentWithCompletionBlock:]" simulateCrash:1 showAlert:0 format:@"Undefined presentation type for present overlay window"];
  }
}

- (void)dismissWithCompletionBlock:(id)block
{
  blockCopy = block;
  presentAnimationType = [(ICOverlayWindowPresenter *)self presentAnimationType];
  v6 = 0.3;
  if (presentAnimationType)
  {
    if (presentAnimationType == 2)
    {
      v6 = 0.0;
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICOverlayWindowPresenter dismissWithCompletionBlock:]" simulateCrash:1 showAlert:0 format:@"Undefined presentation type for dismiss overlay window"];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DBE98;
  v8[3] = &unk_100645E80;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(ICOverlayWindowPresenter *)self animateWindowFrameReverse:1 duration:v8 completionBlock:v6];
}

@end