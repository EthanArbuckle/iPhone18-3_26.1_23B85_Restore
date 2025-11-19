@interface ShowPseudoContactsTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)didShow:(id)a3;
- (void)iterateContact;
- (void)prepareForNextTest;
- (void)resetDelegate;
- (void)showNextContact;
- (void)showPseudoContactsListForIPhone;
- (void)startSearchQuery;
@end

@implementation ShowPseudoContactsTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ShowPseudoContactsTest;
  v5 = [(ContactsTest *)&v25 prepareForTestWithOptions:v4];
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
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000D12C;
      v22[3] = &unk_100020558;
      objc_copyWeak(&v23, &location);
      v12 = [CNTestNavigationControllerDelegate delegateWithDelegate:v11 willShowViewControllerHandler:0 didShowViewControllerHandler:v22];
      [(ShowPseudoContactsTest *)self setNavControllerDelegate:v12];

      v13 = [(ShowPseudoContactsTest *)self navControllerDelegate];
      [v10 setDelegate:v13];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      [v8 setDelegate:self];
    }

    v14 = +[NSMutableDictionary dictionary];
    [(ShowPseudoContactsTest *)self setExtraResults:v14];

    v15 = [v4 objectForKey:@"animate"];
    -[ShowPseudoContactsTest setAnimate:](self, "setAnimate:", [v15 BOOLValue]);

    v16 = [v4 objectForKey:@"searchQueries"];
    v17 = [v16 componentsSeparatedByString:@"%"];
    [(ShowPseudoContactsTest *)self setAllSearchQueries:v17];
    [(ShowPseudoContactsTest *)self setCurrentQueryIndex:0];
    [(ShowPseudoContactsTest *)self setNextContactIndex:0];
    v18 = [v4 objectForKey:@"iterations"];
    -[ShowPseudoContactsTest setMaxContactIndex:](self, "setMaxContactIndex:", [v18 intValue]);

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D188;
    v21[3] = &unk_1000204D0;
    v21[4] = self;
    v19 = objc_retainBlock(v21);
    [(ContactsTest *)self showContactListWithCompletionBlock:v19];
  }

  return v5;
}

- (void)prepareForNextTest
{
  [(ShowPseudoContactsTest *)self resetDelegate];
  v3.receiver = self;
  v3.super_class = ShowPseudoContactsTest;
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
    v6 = [(ShowPseudoContactsTest *)self navControllerDelegate];
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

    [(ShowPseudoContactsTest *)self performSelector:"iterateContact"];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000D3B8;
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
  v7[2] = sub_10000D510;
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
  v6 = [v5 objectAtIndexedSubscript:{-[ShowPseudoContactsTest nextContactIndex](self, "nextContactIndex")}];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10000D824;
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

- (void)showPseudoContactsListForIPhone
{
  v3 = UIApp;
  v4 = [(ContactsTest *)self testOptions];
  v5 = [v4 objectForKeyedSubscript:@"testName"];
  v6 = [NSArray arrayWithObject:@"time"];
  [v3 startedSubTest:@"Close Contact" forTest:v5 withMetrics:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DB5C;
  v8[3] = &unk_1000204D0;
  v8[4] = self;
  [UIApp installCACommitCompletionBlock:v8];
  v7 = [(ContactsTest *)self contactSplitViewController];
  [v7 showContactList];
}

- (void)startSearchQuery
{
  v3 = [(ShowPseudoContactsTest *)self allSearchQueries];
  v4 = [v3 objectAtIndex:{-[ShowPseudoContactsTest currentQueryIndex](self, "currentQueryIndex")}];

  v5 = [(ContactsTest *)self contactNavigationController];
  v6 = [v5 contactListViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DCC4;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [v6 searchForString:v4 animated:-[ShowPseudoContactsTest animate](self completionBlock:{"animate"), v7}];
}

@end