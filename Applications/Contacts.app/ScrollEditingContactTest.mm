@interface ScrollEditingContactTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)didShow:(id)show;
- (void)editAndScrollContactViewController:(id)controller;
- (void)prepareForNextTest;
- (void)resetDelegate;
@end

@implementation ScrollEditingContactTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = ScrollEditingContactTest;
  v5 = [(ContactsTest *)&v32 prepareForTestWithOptions:optionsCopy];
  if (v5)
  {
    contactSplitViewController = [(ContactsTest *)self contactSplitViewController];
    navigationControllerForPPT = [contactSplitViewController navigationControllerForPPT];

    objc_opt_class();
    v8 = navigationControllerForPPT;
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
      delegate = [v10 delegate];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100005074;
      v29[3] = &unk_100020558;
      objc_copyWeak(&v30, &location);
      v12 = [CNTestNavigationControllerDelegate delegateWithDelegate:delegate willShowViewControllerHandler:0 didShowViewControllerHandler:v29];
      [(ScrollEditingContactTest *)self setNavControllerDelegate:v12];

      navControllerDelegate = [(ScrollEditingContactTest *)self navControllerDelegate];
      [v10 setDelegate:navControllerDelegate];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      [v8 setDelegate:self];
    }

    v14 = [optionsCopy objectForKey:@"scrollMemberAtIndex"];
    intValue = [v14 intValue];

    contactNavigationController = [(ContactsTest *)self contactNavigationController];
    dataSource = [contactNavigationController dataSource];
    contacts = [dataSource contacts];
    v19 = [contacts objectAtIndexedSubscript:intValue];

    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000050D0;
    v26 = &unk_100020580;
    selfCopy = self;
    v28 = v19;
    v20 = v19;
    v21 = objc_retainBlock(&v23);
    [(ContactsTest *)self showContactListWithCompletionBlock:v21, v23, v24, v25, v26, selfCopy];
  }

  return v5;
}

- (void)prepareForNextTest
{
  [(ScrollEditingContactTest *)self resetDelegate];
  v3.receiver = self;
  v3.super_class = ScrollEditingContactTest;
  [(ContactsTest *)&v3 prepareForNextTest];
}

- (void)resetDelegate
{
  contactSplitViewController = [(ContactsTest *)self contactSplitViewController];
  navigationControllerForPPT = [contactSplitViewController navigationControllerForPPT];

  contactNavigationController = [(ContactsTest *)self contactNavigationController];

  v5 = navigationControllerForPPT;
  if (navigationControllerForPPT == contactNavigationController)
  {
    navControllerDelegate = [(ScrollEditingContactTest *)self navControllerDelegate];
    delegate = [navControllerDelegate delegate];
    contactNavigationController2 = [(ContactsTest *)self contactNavigationController];
    [contactNavigationController2 setDelegate:delegate];

    v5 = navigationControllerForPPT;
  }
}

- (void)didShow:(id)show
{
  showCopy = show;
  objc_opt_class();
  v10 = showCopy;
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
    [(ScrollEditingContactTest *)self editAndScrollContactViewController:v7];
  }
}

- (void)editAndScrollContactViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = [controllerCopy contentViewController];
  [contentViewController toggleEditing:0];

  v6 = dispatch_time(0, 1000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005454;
  v8[3] = &unk_100020580;
  v9 = controllerCopy;
  selfCopy = self;
  v7 = controllerCopy;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

@end