@interface PBKApplication
- (BOOL)runTest:(id)test options:(id)options;
- (void)_presentEditPassesWithCompletion:(id)completion;
- (void)deleteInEditPassesList:(id)list testOptions:(id)options;
- (void)deletePassFromLibrary:(id)library testOptions:(id)options;
- (void)getPassesFromLibrary:(id)library testOptions:(id)options;
- (void)gotoBaseTestState;
- (void)loadGroupsSynchronously:(id)synchronously testOptions:(id)options;
- (void)presentEditPassesList:(id)list;
- (void)scrollCardList:(id)list testOptions:(id)options;
- (void)scrollEditPassesList:(id)list testOptions:(id)options;
- (void)selectCard:(id)card testOptions:(id)options;
- (void)selectInEditPassesList:(id)list testOptions:(id)options;
@end

@implementation PBKApplication

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[PBKApplication(PBKApplicationPPTTesting) runTest:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = [testCopy substringToIndex:1];
  lowercaseString = [v9 lowercaseString];
  v11 = [testCopy substringFromIndex:1];
  v12 = [NSString stringWithFormat:@"%@%@:testOptions:", lowercaseString, v11];

  v13 = NSSelectorFromString(v12);
  if (objc_opt_respondsToSelector())
  {
    [(PBKApplication *)self performSelector:v13 withObject:testCopy withObject:optionsCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PBKApplication;
    [(PBKApplication *)&v15 runTest:testCopy options:optionsCopy];
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

  delegate = [(PBKApplication *)self delegate];
  cardsViewController = [delegate cardsViewController];

  groupStackView = [cardsViewController groupStackView];
  [groupStackView gotoBaseTestState];
}

- (void)scrollCardList:(id)list testOptions:(id)options
{
  listCopy = list;
  optionsCopy = options;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[PBKApplication(PBKApplicationPPTTesting) scrollCardList:testOptions:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBKApplication *)self gotoBaseTestState];
  [(PBKApplication *)self startedTest:listCopy];
  delegate = [(PBKApplication *)self delegate];
  cardsViewController = [delegate cardsViewController];

  view = [cardsViewController view];
  [view bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = listCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
  }

  v20 = [RPTScrollViewTestParameters alloc];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10000E544;
  v26 = &unk_10001CE18;
  v27 = listCopy;
  selfCopy = self;
  v21 = listCopy;
  v22 = [v20 initWithTestName:v21 scrollBounds:0 amplitude:&v23 direction:v13 + 100.0 completionHandler:{v15 + 100.0, v17 + -200.0, v19 + -200.0, 200.0}];
  [v22 setPreventSheetDismissal:{1, v23, v24, v25, v26}];
  [v22 setShouldFlick:1];
  [v22 setIterationDurationFactor:1.25];
  [RPTTestRunner runTestWithParameters:v22];
}

- (void)selectCard:(id)card testOptions:(id)options
{
  cardCopy = card;
  [(PBKApplication *)self gotoBaseTestState];
  [(PBKApplication *)self startedTest:cardCopy];

  delegate = [(PBKApplication *)self delegate];
  cardsViewController = [delegate cardsViewController];

  groupStackView = [cardsViewController groupStackView];
  [groupStackView beginSelectCardTest];
}

- (void)getPassesFromLibrary:(id)library testOptions:(id)options
{
  libraryCopy = library;
  v7 = +[PKPassLibrary sharedInstance];
  [(PBKApplication *)self startedTest:libraryCopy];
  passes = [v7 passes];
  [(PBKApplication *)self finishedTest:libraryCopy];
}

- (void)loadGroupsSynchronously:(id)synchronously testOptions:(id)options
{
  synchronouslyCopy = synchronously;
  [(PBKApplication *)self startedTest:synchronouslyCopy];
  v6 = objc_alloc_init(PKGroupsController);
  [v6 loadGroupsSynchronously];
  [(PBKApplication *)self finishedTest:synchronouslyCopy];
}

- (void)deletePassFromLibrary:(id)library testOptions:(id)options
{
  libraryCopy = library;
  v5 = +[PKPassLibrary sharedInstance];
  v6 = [v5 passesOfType:0];
  [(PBKApplication *)self startedTest:libraryCopy];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    [v5 removePass:firstObject];
  }

  [(PBKApplication *)self finishedTest:libraryCopy];
}

- (void)_presentEditPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PBKApplication(PBKApplicationPPTTesting) _presentEditPassesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  delegate = [(PBKApplication *)self delegate];
  cardsViewController = [delegate cardsViewController];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E9C0;
  v10[3] = &unk_10001D3B8;
  v11 = objc_alloc_init(PKEditPassesNavigationController);
  v12 = completionCopy;
  v8 = v11;
  v9 = completionCopy;
  [cardsViewController presentViewController:v8 animated:1 completion:v10];
}

- (void)presentEditPassesList:(id)list
{
  listCopy = list;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[PBKApplication(PBKApplicationPPTTesting) presentEditPassesList:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PBKApplication *)self startedTest:listCopy];
  v6 = dispatch_get_global_queue(-32768, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EB20;
  v8[3] = &unk_10001CE18;
  v8[4] = self;
  v9 = listCopy;
  v7 = listCopy;
  dispatch_async(v6, v8);
}

- (void)scrollEditPassesList:(id)list testOptions:(id)options
{
  listCopy = list;
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
  v9 = listCopy;
  selfCopy = self;
  v7 = listCopy;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

- (void)selectInEditPassesList:(id)list testOptions:(id)options
{
  listCopy = list;
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
  v9 = listCopy;
  v7 = listCopy;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

- (void)deleteInEditPassesList:(id)list testOptions:(id)options
{
  listCopy = list;
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
  v9 = listCopy;
  v7 = listCopy;
  [(PBKApplication *)self _presentEditPassesWithCompletion:v8];
}

@end