@interface ShowContactsTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)didShow:(id)a3;
- (void)iterateContact;
- (void)prepareForNextTest;
- (void)resetDelegate;
- (void)showContactsListForIPhone;
- (void)showNextContact;
@end

@implementation ShowContactsTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ShowContactsTest;
  v5 = [(ContactsTest *)&v22 prepareForTestWithOptions:v4];
  if (v5)
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
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100009FD0;
      v19 = &unk_100020558;
      objc_copyWeak(&v20, &location);
      v12 = [CNTestNavigationControllerDelegate delegateWithDelegate:v11 willShowViewControllerHandler:0 didShowViewControllerHandler:&v16];
      [(ShowContactsTest *)self setNavControllerDelegate:v12, v16, v17, v18, v19];

      v13 = [(ShowContactsTest *)self navControllerDelegate];
      [v10 setDelegate:v13];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      [v8 setDelegate:self];
    }

    [(ShowContactsTest *)self setNextContactIndex:0];
    v14 = [v4 objectForKey:@"iterations"];
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
  v3 = [(ContactsTest *)self contactSplitViewController];
  v9 = [v3 navigationControllerForPPT];

  v4 = [(ContactsTest *)self contactNavigationController];

  v5 = v9;
  if (v9 == v4)
  {
    v6 = [(ShowContactsTest *)self navControllerDelegate];
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
  v3 = [(ContactsTest *)self contactNavigationController];
  v4 = [v3 dataSource];

  v5 = UIApp;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A394;
  v7[3] = &unk_100020580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 installCACommitCompletionBlock:v7];
}

- (void)showNextContact
{
  v3 = [(ContactsTest *)self contactNavigationController];
  v4 = [v3 dataSource];

  v5 = [v4 contacts];
  v6 = [v5 objectAtIndexedSubscript:{-[ShowContactsTest nextContactIndex](self, "nextContactIndex")}];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000A620;
  v12 = &unk_100020580;
  v13 = self;
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
  v4 = [(ContactsTest *)self testOptions];
  v5 = [v4 objectForKeyedSubscript:@"testName"];
  v6 = [NSArray arrayWithObject:@"time"];
  [v3 startedSubTest:@"Close Contact" forTest:v5 withMetrics:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A8C0;
  v8[3] = &unk_1000204D0;
  v8[4] = self;
  [UIApp installCACommitCompletionBlock:v8];
  v7 = [(ContactsTest *)self contactSplitViewController];
  [v7 showContactList];
}

@end