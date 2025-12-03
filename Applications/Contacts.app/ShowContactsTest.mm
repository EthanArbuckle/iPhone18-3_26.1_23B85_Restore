@interface ShowContactsTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)didShow:(id)show;
- (void)iterateContact;
- (void)prepareForNextTest;
- (void)resetDelegate;
- (void)showContactsListForIPhone;
- (void)showNextContact;
@end

@implementation ShowContactsTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = ShowContactsTest;
  v5 = [(ContactsTest *)&v22 prepareForTestWithOptions:optionsCopy];
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
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100009FD0;
      v19 = &unk_100020558;
      objc_copyWeak(&v20, &location);
      v12 = [CNTestNavigationControllerDelegate delegateWithDelegate:delegate willShowViewControllerHandler:0 didShowViewControllerHandler:&v16];
      [(ShowContactsTest *)self setNavControllerDelegate:v12, v16, v17, v18, v19];

      navControllerDelegate = [(ShowContactsTest *)self navControllerDelegate];
      [v10 setDelegate:navControllerDelegate];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      [v8 setDelegate:self];
    }

    [(ShowContactsTest *)self setNextContactIndex:0];
    v14 = [optionsCopy objectForKey:@"iterations"];
    -[ShowContactsTest setMaxContactIndex:](self, "setMaxContactIndex:", [v14 intValue]);

    [(ContactsTest *)self willStartTest];
    [(ShowContactsTest *)self showNextContact];
  }

  return v5;
}

- (void)prepareForNextTest
{
  [(ShowContactsTest *)self resetDelegate];
  v3.receiver = self;
  v3.super_class = ShowContactsTest;
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
    navControllerDelegate = [(ShowContactsTest *)self navControllerDelegate];
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
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(ShowContactsTest *)self performSelector:"iterateContact"];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000A220;
    v6[3] = &unk_1000204D0;
    v6[4] = self;
    [UIApp installCACommitCompletionBlock:v6];
  }
}

- (void)iterateContact
{
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  dataSource = [contactNavigationController dataSource];

  v5 = UIApp;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A394;
  v7[3] = &unk_100020580;
  v7[4] = self;
  v8 = dataSource;
  v6 = dataSource;
  [v5 installCACommitCompletionBlock:v7];
}

- (void)showNextContact
{
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  dataSource = [contactNavigationController dataSource];

  contacts = [dataSource contacts];
  v6 = [contacts objectAtIndexedSubscript:{-[ShowContactsTest nextContactIndex](self, "nextContactIndex")}];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000A620;
  v12 = &unk_100020580;
  selfCopy = self;
  v14 = v6;
  v7 = v6;
  v8 = objc_retainBlock(&v9);
  if ([(ContactsTest *)self isIPad:v9])
  {
    [(ContactsTest *)self showContactListWithCompletionBlock:v8];
  }

  else
  {
    (v8[2])(v8);
  }
}

- (void)showContactsListForIPhone
{
  v3 = UIApp;
  testOptions = [(ContactsTest *)self testOptions];
  v5 = [testOptions objectForKeyedSubscript:@"testName"];
  v6 = [NSArray arrayWithObject:@"time"];
  [v3 startedSubTest:@"Close Contact" forTest:v5 withMetrics:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A8C0;
  v8[3] = &unk_1000204D0;
  v8[4] = self;
  [UIApp installCACommitCompletionBlock:v8];
  contactSplitViewController = [(ContactsTest *)self contactSplitViewController];
  [contactSplitViewController showContactList];
}

@end