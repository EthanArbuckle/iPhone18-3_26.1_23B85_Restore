@interface ScrollContactTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)didShow:(id)a3;
- (void)prepareForNextTest;
- (void)resetDelegate;
- (void)scrollContactViewController:(id)a3;
@end

@implementation ScrollContactTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ScrollContactTest;
  v5 = [(ContactsTest *)&v32 prepareForTestWithOptions:v4];
  if (v5)
  {
    if (![(ContactsTest *)self isIPad])
    {
      v6 = [(ContactsTest *)self contactSplitViewController];
      v7 = [v6 navigationControllerForPPT];

      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        objc_initWeak(&location, self);
        v11 = [v10 delegate];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000585C;
        v29[3] = &unk_100020558;
        objc_copyWeak(&v30, &location);
        v12 = [CNTestNavigationControllerDelegate delegateWithDelegate:v11 willShowViewControllerHandler:0 didShowViewControllerHandler:v29];
        [(ScrollContactTest *)self setNavControllerDelegate:v12];

        v13 = [(ScrollContactTest *)self navControllerDelegate];
        [v10 setDelegate:v13];

        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
      }

      else
      {
        [v8 setDelegate:self];
      }
    }

    v14 = [v4 objectForKey:@"scrollMemberAtIndex"];
    v15 = [v14 intValue];

    v16 = [(ContactsTest *)self contactNavigationController];
    v17 = [v16 dataSource];
    v18 = [v17 contacts];
    v19 = [v18 objectAtIndexedSubscript:v15];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000058B8;
    v26 = &unk_100020580;
    v27 = self;
    v28 = v19;
    v20 = v19;
    v21 = objc_retainBlock(&v23);
    [(ContactsTest *)self showContactListWithCompletionBlock:v21, v23, v24, v25, v26, v27];
  }

  return v5;
}

- (void)prepareForNextTest
{
  [(ScrollContactTest *)self resetDelegate];
  v3.receiver = self;
  v3.super_class = ScrollContactTest;
  [(ContactsTest *)&v3 prepareForNextTest];
}

- (void)resetDelegate
{
  v3 = [(ContactsTest *)self contactSplitViewController];
  v9 = [v3 navigationControllerForPPT];

  v4 = [(ContactsTest *)self contactNavigationController];

  v5 = v9;
  if (v9 == v4)
  {
    v6 = [(ScrollContactTest *)self navControllerDelegate];
    v7 = [v6 delegate];
    v8 = [(ContactsTest *)self contactNavigationController];
    [v8 setDelegate:v7];

    v5 = v9;
  }
}

- (void)didShow:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v10 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v10;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ((objc_opt_class(), [v10 topViewController], v7 = objc_claimAutoreleasedReturnValue(), (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = 0) : (v8 = v7), v9 = v8, v7, v9))
  {
    [(ScrollContactTest *)self scrollContactViewController:v7];
  }
}

- (void)scrollContactViewController:(id)a3
{
  v4 = a3;
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  v15 = [v4 contentViewController];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v15 performSelector:"displayContactCardViewController"];
      if (objc_opt_respondsToSelector())
      {
        v9 = [(ContactsTest *)self testOptions];
        v10 = [v9 objectForKeyedSubscript:@"testName"];
        v11 = [(ContactsTest *)self testOptions];
        [v8 performSelector:"runPPTTestWithTestName:options:" withObject:v10 withObject:v11];
      }
    }
  }

  else
  {
    v12 = [v15 contactView];

    v13 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005D58;
    block[3] = &unk_100020580;
    block[4] = self;
    v17 = v12;
    v14 = v12;
    dispatch_after(v13, &_dispatch_main_q, block);
  }
}

@end