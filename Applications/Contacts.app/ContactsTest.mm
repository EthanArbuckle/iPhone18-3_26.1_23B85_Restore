@interface ContactsTest
+ (id)testWithSplitViewController:(id)controller;
- (BOOL)isRecap;
- (void)performScrollTestWithScrollView:(id)view completionBlock:(id)block;
- (void)showContactListWithCompletionBlock:(id)block;
- (void)willStartTest;
@end

@implementation ContactsTest

- (BOOL)isRecap
{
  testOptions = [(ContactsTest *)self testOptions];
  v3 = [testOptions objectForKeyedSubscript:@"testType"];
  v4 = [v3 isEqual:@"recap"];

  return v4;
}

+ (id)testWithSplitViewController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(self);
  [v5 setContactSplitViewController:controllerCopy];
  contactNavigationController = [controllerCopy contactNavigationController];

  [v5 setContactNavigationController:contactNavigationController];
  v7 = +[UIDevice currentDevice];
  [v5 setIsIPad:{objc_msgSend(v7, "userInterfaceIdiom") == 1}];

  return v5;
}

- (void)willStartTest
{
  v2 = UIApp;
  testOptions = [(ContactsTest *)self testOptions];
  v3 = [testOptions objectForKeyedSubscript:@"testName"];
  [v2 startedTest:v3];
}

- (void)showContactListWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(ContactsTest *)self isIPad])
  {
    contactSplitViewController = [(ContactsTest *)self contactSplitViewController];
    [contactSplitViewController showColumn:1];

    contactSplitViewController2 = [(ContactsTest *)self contactSplitViewController];
    transitionCoordinator = [contactSplitViewController2 transitionCoordinator];

    if (transitionCoordinator)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009194;
      v15[3] = &unk_1000206F0;
      v16 = blockCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v15];
    }

    else if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v8 = UIApp;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000091AC;
    v13 = &unk_100020608;
    v14 = blockCopy;
    [v8 installCACommitCompletionBlock:&v10];
    v9 = [(ContactsTest *)self contactSplitViewController:v10];
    [v9 showContactList];

    transitionCoordinator = v14;
  }
}

- (void)performScrollTestWithScrollView:(id)view completionBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if ([(ContactsTest *)self isRecap])
  {
    if (+[RPTTestRunner isRecapAvailable])
    {
      v8 = [RPTScrollViewTestParameters alloc];
      testOptions = [(ContactsTest *)self testOptions];
      v10 = [testOptions objectForKeyedSubscript:@"testName"];
      testOptions4 = [v8 initWithTestName:v10 scrollView:viewCopy completionHandler:blockCopy];

      [RPTTestRunner runTestWithParameters:testOptions4];
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
    testOptions2 = [(ContactsTest *)self testOptions];
    v13 = [testOptions2 objectForKeyedSubscript:@"delta"];
    v14 = v13;
    if (v13)
    {
      intValue = [v13 intValue];
    }

    else
    {
      testOptions3 = [(ContactsTest *)self testOptions];
      v18 = [testOptions3 objectForKeyedSubscript:@"offset"];
      intValue = [v18 intValue];
    }

    if (intValue)
    {
      v19 = intValue;
    }

    else
    {
      v19 = 20;
    }

    testOptions4 = [(ContactsTest *)self testOptions];
    v20 = [testOptions4 objectForKeyedSubscript:@"testName"];
    testOptions5 = [(ContactsTest *)self testOptions];
    v22 = [testOptions5 objectForKeyedSubscript:@"iterations"];
    intValue2 = [v22 intValue];

    if (intValue2 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = intValue2;
    }

    [viewCopy contentSize];
    v26 = v25;
    if (!blockCopy)
    {
      [viewCopy _performScrollTest:v20 iterations:v24 delta:v19 length:v25];

      goto LABEL_19;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100009460;
    v27[3] = &unk_100020718;
    v28 = blockCopy;
    [viewCopy _performScrollTest:v20 iterations:v24 delta:v19 length:v26 scrollAxis:2 extraResultsBlock:0 completionBlock:v27];
  }

LABEL_20:
}

@end