@interface ICOverlayWindowPresenter
- (ICOverlayWindowPresenter)initWithRootViewController:(id)a3 presentingWindow:(id)a4;
- (void)animateWindowFrameReverse:(BOOL)a3 duration:(double)a4 completionBlock:(id)a5;
- (void)dismissWithCompletionBlock:(id)a3;
- (void)presentWithCompletionBlock:(id)a3;
@end

@implementation ICOverlayWindowPresenter

- (ICOverlayWindowPresenter)initWithRootViewController:(id)a3 presentingWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ICOverlayWindowPresenter;
  v8 = [(ICOverlayWindowPresenter *)&v17 init];
  if (v8)
  {
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = [ICWindow alloc];
    v11 = [v7 windowScene];
    v12 = [v10 initWithWindowScene:v11 behavior:{objc_msgSend(v7, "ic_behavior")}];

    v13 = [v9 viewControllerManager];
    [v12 setViewControllerManager:v13];

    [v12 setRootViewController:v6];
    [v12 setWindowLevel:UIWindowLevelStatusBar + -1.0];
    window = v8->_window;
    v8->_window = v12;
    v15 = v12;

    objc_storeStrong(&v8->_presentingWindow, a4);
  }

  return v8;
}

- (void)animateWindowFrameReverse:(BOOL)a3 duration:(double)a4 completionBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = [(ICOverlayWindowPresenter *)self window];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = 0x20000;
  }

  else
  {
    v9 = [(ICOverlayWindowPresenter *)self presentingWindow];
    [v9 frame];
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
  if (v6)
  {
    v24 = v13;
  }

  else
  {
    v24 = MaxY;
  }

  if (v6)
  {
    v13 = MaxY;
  }

  v25 = [(ICOverlayWindowPresenter *)self window];
  [v25 setFrame:{v11, v24, v15, v17}];

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
  v28 = v8;
  v26 = v8;
  [UIView animateWithDuration:v18 delay:v29 options:v27 animations:a4 completion:0.0];
}

- (void)presentWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICOverlayWindowPresenter *)self window];
  [v5 makeKeyAndVisible];

  v6 = [(ICOverlayWindowPresenter *)self presentAnimationType];
  if (v6)
  {
    if (v6 == 2)
    {
      v7 = [(ICOverlayWindowPresenter *)self windowBackgroundColor];
      v8 = v7;
      if (!v7)
      {
        v8 = +[UIColor ic_dynamicWhiteBlackColor];
      }

      v9 = [(ICOverlayWindowPresenter *)self window];
      [v9 setBackgroundColor:v8];

      if (!v7)
      {
      }

      v10 = [(ICOverlayWindowPresenter *)self window];
      v11 = [v10 rootViewController];
      v12 = [v11 view];
      [v12 setAlpha:0.0];

      v13 = [(ICOverlayWindowPresenter *)self window];
      [v13 makeKeyAndVisible];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000DBD18;
      v16[3] = &unk_100645E30;
      v16[4] = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000DBD88;
      v14[3] = &unk_1006465D0;
      v15 = v4;
      [UIView animateWithDuration:v16 animations:v14 completion:0.25];
    }

    else if (v6 == 1)
    {
      [(ICOverlayWindowPresenter *)self animateWindowFrameReverse:0 duration:v4 completionBlock:0.3];
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICOverlayWindowPresenter presentWithCompletionBlock:]" simulateCrash:1 showAlert:0 format:@"Undefined presentation type for present overlay window"];
  }
}

- (void)dismissWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICOverlayWindowPresenter *)self presentAnimationType];
  v6 = 0.3;
  if (v5)
  {
    if (v5 == 2)
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
  v9 = v4;
  v7 = v4;
  [(ICOverlayWindowPresenter *)self animateWindowFrameReverse:1 duration:v8 completionBlock:v6];
}

@end