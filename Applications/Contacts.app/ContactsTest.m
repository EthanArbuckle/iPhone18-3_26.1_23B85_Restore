@interface ContactsTest
+ (id)testWithSplitViewController:(id)a3;
- (BOOL)isRecap;
- (void)performScrollTestWithScrollView:(id)a3 completionBlock:(id)a4;
- (void)showContactListWithCompletionBlock:(id)a3;
- (void)willStartTest;
@end

@implementation ContactsTest

- (BOOL)isRecap
{
  v2 = [(ContactsTest *)self testOptions];
  v3 = [v2 objectForKeyedSubscript:@"testType"];
  v4 = [v3 isEqual:@"recap"];

  return v4;
}

+ (id)testWithSplitViewController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setContactSplitViewController:v4];
  v6 = [v4 contactNavigationController];

  [v5 setContactNavigationController:v6];
  v7 = +[UIDevice currentDevice];
  [v5 setIsIPad:{objc_msgSend(v7, "userInterfaceIdiom") == 1}];

  return v5;
}

- (void)willStartTest
{
  v2 = UIApp;
  v4 = [(ContactsTest *)self testOptions];
  v3 = [v4 objectForKeyedSubscript:@"testName"];
  [v2 startedTest:v3];
}

- (void)showContactListWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(ContactsTest *)self isIPad])
  {
    v5 = [(ContactsTest *)self contactSplitViewController];
    [v5 showColumn:1];

    v6 = [(ContactsTest *)self contactSplitViewController];
    v7 = [v6 transitionCoordinator];

    if (v7)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009194;
      v15[3] = &unk_1000206F0;
      v16 = v4;
      [v7 animateAlongsideTransition:0 completion:v15];
    }

    else if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v8 = UIApp;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000091AC;
    v13 = &unk_100020608;
    v14 = v4;
    [v8 installCACommitCompletionBlock:&v10];
    v9 = [(ContactsTest *)self contactSplitViewController:v10];
    [v9 showContactList];

    v7 = v14;
  }
}

- (void)performScrollTestWithScrollView:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ContactsTest *)self isRecap])
  {
    if (+[RPTTestRunner isRecapAvailable])
    {
      v8 = [RPTScrollViewTestParameters alloc];
      v9 = [(ContactsTest *)self testOptions];
      v10 = [v9 objectForKeyedSubscript:@"testName"];
      v11 = [v8 initWithTestName:v10 scrollView:v6 completionHandler:v7];

      [RPTTestRunner runTestWithParameters:v11];
LABEL_19:

      goto LABEL_20;
    }

    v16 = CNUILogTesting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000F424(v16);
    }
  }

  else
  {
    v12 = [(ContactsTest *)self testOptions];
    v13 = [v12 objectForKeyedSubscript:@"delta"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 intValue];
    }

    else
    {
      v17 = [(ContactsTest *)self testOptions];
      v18 = [v17 objectForKeyedSubscript:@"offset"];
      v15 = [v18 intValue];
    }

    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = 20;
    }

    v11 = [(ContactsTest *)self testOptions];
    v20 = [v11 objectForKeyedSubscript:@"testName"];
    v21 = [(ContactsTest *)self testOptions];
    v22 = [v21 objectForKeyedSubscript:@"iterations"];
    v23 = [v22 intValue];

    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    [v6 contentSize];
    v26 = v25;
    if (!v7)
    {
      [v6 _performScrollTest:v20 iterations:v24 delta:v19 length:v25];

      goto LABEL_19;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100009460;
    v27[3] = &unk_100020718;
    v28 = v7;
    [v6 _performScrollTest:v20 iterations:v24 delta:v19 length:v26 scrollAxis:2 extraResultsBlock:0 completionBlock:v27];
  }

LABEL_20:
}

@end