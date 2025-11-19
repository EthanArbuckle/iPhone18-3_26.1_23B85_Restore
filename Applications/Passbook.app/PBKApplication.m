@interface PBKApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (void)_presentEditPassesWithCompletion:(id)a3;
- (void)deleteInEditPassesList:(id)a3 testOptions:(id)a4;
- (void)deletePassFromLibrary:(id)a3 testOptions:(id)a4;
- (void)getPassesFromLibrary:(id)a3 testOptions:(id)a4;
- (void)gotoBaseTestState;
- (void)loadGroupsSynchronously:(id)a3 testOptions:(id)a4;
- (void)presentEditPassesList:(id)a3;
- (void)scrollCardList:(id)a3 testOptions:(id)a4;
- (void)scrollEditPassesList:(id)a3 testOptions:(id)a4;
- (void)selectCard:(id)a3 testOptions:(id)a4;
- (void)selectInEditPassesList:(id)a3 testOptions:(id)a4;
@end

@implementation PBKApplication

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[PBKApplication(PBKApplicationPPTTesting) runTest:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [v6 substringToIndex:1];
  v10 = [v9 lowercaseString];
  v11 = [v6 substringFromIndex:1];
  v12 = [NSString stringWithFormat:@"%@%@:testOptions:", v10, v11];

  v13 = NSSelectorFromString(v12);
  if (objc_opt_respondsToSelector())
  {
    [(PBKApplication *)self performSelector:v13 withObject:v6 withObject:v7];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PBKApplication;
    [(PBKApplication *)&v15 runTest:v6 options:v7];
  }

  return 1;
}

- (void)gotoBaseTestState
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PBKApplication(PBKApplicationPPTTesting) gotoBaseTestState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(PBKApplication *)self delegate];
  v5 = [v4 cardsViewController];

  v6 = [v5 groupStackView];
  [v6 gotoBaseTestState];
}

- (void)scrollCardList:(id)a3 testOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[PBKApplication(PBKApplicationPPTTesting) scrollCardList:testOptions:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBKApplication *)self gotoBaseTestState];
  [(PBKApplication *)self startedTest:v6];
  v9 = [(PBKApplication *)self delegate];
  v10 = [v9 cardsViewController];

  v11 = [v10 view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
  }

  v20 = [RPTScrollViewTestParameters alloc];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10000E544;
  v26 = &unk_10001CE18;
  v27 = v6;
  v28 = self;
  v21 = v6;
  v22 = [v20 initWithTestName:v21 scrollBounds:0 amplitude:&v23 direction:v13 + 100.0 completionHandler:{v15 + 100.0, v17 + -200.0, v19 + -200.0, 200.0}];
  [v22 setPreventSheetDismissal:{1, v23, v24, v25, v26}];
  [v22 setShouldFlick:1];
  [v22 setIterationDurationFactor:1.25];
  [RPTTestRunner runTestWithParameters:v22];
}

- (void)selectCard:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  [(PBKApplication *)self gotoBaseTestState];
  [(PBKApplication *)self startedTest:v5];

  v6 = [(PBKApplication *)self delegate];
  v8 = [v6 cardsViewController];

  v7 = [v8 groupStackView];
  [v7 beginSelectCardTest];
}

- (void)getPassesFromLibrary:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  v7 = +[PKPassLibrary sharedInstance];
  [(PBKApplication *)self startedTest:v5];
  v6 = [v7 passes];
  [(PBKApplication *)self finishedTest:v5];
}

- (void)loadGroupsSynchronously:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  [(PBKApplication *)self startedTest:v5];
  v6 = objc_alloc_init(PKGroupsController);
  [v6 loadGroupsSynchronously];
  [(PBKApplication *)self finishedTest:v5];
}

- (void)deletePassFromLibrary:(id)a3 testOptions:(id)a4
{
  v8 = a3;
  v5 = +[PKPassLibrary sharedInstance];
  v6 = [v5 passesOfType:0];
  [(PBKApplication *)self startedTest:v8];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    [v5 removePass:v7];
  }

  [(PBKApplication *)self finishedTest:v8];
}

- (void)_presentEditPassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PBKApplication(PBKApplicationPPTTesting) _presentEditPassesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(PBKApplication *)self delegate];
  v7 = [v6 cardsViewController];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E9C0;
  v10[3] = &unk_10001D3B8;
  v11 = objc_alloc_init(PKEditPassesNavigationController);
  v12 = v4;
  v8 = v11;
  v9 = v4;
  [v7 presentViewController:v8 animated:1 completion:v10];
}

- (void)presentEditPassesList:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PBKApplication(PBKApplicationPPTTesting) presentEditPassesList:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBKApplication *)self startedTest:v4];
  v6 = dispatch_get_global_queue(-32768, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EB20;
  v8[3] = &unk_10001CE18;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)scrollEditPassesList:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[PBKApplication(PBKApplicationPPTTesting) scrollEditPassesList:testOptions:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EF74;
  v8[3] = &unk_10001D408;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

- (void)selectInEditPassesList:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PBKApplication(PBKApplicationPPTTesting) selectInEditPassesList:testOptions:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F330;
  v8[3] = &unk_10001D3E0;
  v9 = v5;
  v7 = v5;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

- (void)deleteInEditPassesList:(id)a3 testOptions:(id)a4
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PBKApplication(PBKApplicationPPTTesting) deleteInEditPassesList:testOptions:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F4AC;
  v8[3] = &unk_10001D3E0;
  v9 = v5;
  v7 = v5;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

@end