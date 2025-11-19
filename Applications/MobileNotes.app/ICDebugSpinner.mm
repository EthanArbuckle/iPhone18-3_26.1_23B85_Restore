@interface ICDebugSpinner
- (void)hide;
- (void)show;
@end

@implementation ICDebugSpinner

- (void)show
{
  v3 = [(ICDebugSpinner *)self windows];

  v4 = os_log_create("com.apple.notes", "UI");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trying to show debug spinner, but it's already showing", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DC90C(v5);
    }

    v6 = objc_alloc_init(NSMutableArray);
    [(ICDebugSpinner *)self setWindows:v6];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = +[ICAppDelegate sharedInstance];
    v5 = [v7 viewControllerManagers];

    v8 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(*(&v21 + 1) + 8 * v11) window];
          v13 = [v12 windowScene];

          if (v13)
          {
            v14 = objc_alloc_init(UIWindow);
            v15 = [(ICDebugSpinner *)self windows];
            [v15 addObject:v14];

            [v14 setWindowScene:v13];
            v16 = [UIColor colorWithWhite:0.0 alpha:0.5];
            [v14 setBackgroundColor:v16];

            [v14 setWindowLevel:UIWindowLevelStatusBar];
            [v14 makeKeyAndVisible];
            [v14 setAlpha:0.0];
            v17 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
            [v14 bounds];
            TSDCenterOfRect();
            [v17 setCenter:?];
            [v17 startAnimating];
            [v17 setHidden:0];
            [v14 addSubview:v17];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1000A8604;
            v19[3] = &unk_100645E30;
            v20 = v14;
            v18 = v14;
            [UIView animateWithDuration:v19 animations:0.25];
          }

          else
          {
            [ICAssert handleFailedAssertWithCondition:"((scene) != nil)" functionName:"[ICDebugSpinner show]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "scene"];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }
  }
}

- (void)hide
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC950(v3);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = self;
  v4 = [(ICDebugSpinner *)self windows];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1000A8810;
        v13[3] = &unk_100645E30;
        v13[4] = v12;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000A881C;
        v11[3] = &unk_1006469F0;
        [UIView animateWithDuration:v13 animations:v11 completion:0.25];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(ICDebugSpinner *)v10 setWindows:0];
}

@end