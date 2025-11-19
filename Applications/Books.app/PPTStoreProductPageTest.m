@interface PPTStoreProductPageTest
- (PPTStoreProductPageTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
- (void)_handleTestEnd:(id)a3;
- (void)_startTestWithRootBarCoordinating:(id)a3;
- (void)startBooksUITestWithRootBarCoordinator:(id)a3;
- (void)startTest;
@end

@implementation PPTStoreProductPageTest

- (PPTStoreProductPageTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = PPTStoreProductPageTest;
  return [(PPTStoreDependentTest *)&v7 initWithName:a3 options:a4 testDefinition:a5 isMainTest:a6];
}

- (void)_handleTestEnd:(id)a3
{
  if ([(PPTStoreProductPageTest *)self startPPTTestCalled])
  {
    [(PPTStoreProductPageTest *)self setStartPPTTestCalled:0];

    [(PPTBasicTest *)self finishPPTTestWithResult:0];
  }
}

- (void)startTest
{
  [(PPTBasicTest *)self setTestTimeout:60];
  [(PPTBasicTest *)self setRunning:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleTestEnd:" name:BCCardStackTransitionTestAnimationWillBeginNotification object:0];

  v4 = +[BSUITemplate factory];
  v5 = sub_1001E65B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(PPTBasicTest *)self name];
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting test named: %{public}@ and waiting for tab bar", buf, 0xCu);
  }

  v7 = +[BKAppDelegate sceneManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001704DC;
  v8[3] = &unk_100A03698;
  v8[4] = self;
  [v7 requestTabBarSceneController:v8];
}

- (void)_startTestWithRootBarCoordinating:(id)a3
{
  v4 = a3;
  v5 = sub_1001E65B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(PPTBasicTest *)self name];
    *buf = 138543362;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "With tab bar controller, starting test named: %{public}@", buf, 0xCu);
  }

  v7 = +[BKRootBarItemsProvider BooksIdentifier];
  [v4 selectWithIdentifier:v7 isUserAction:0];

  objc_opt_class();
  v8 = [v4 selectedNavigationController];
  v9 = [v8 topViewController];
  v10 = BUDynamicCast();

  v11 = [v10 content];
  v12 = [v11 entries];

  if (!v12)
  {
    if (!v10)
    {
      [(PPTStoreProductPageTest *)self startBooksUITestWithRootBarCoordinator:v4];
      goto LABEL_25;
    }

    v14 = sub_1001E65B0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100791DF4(v14);
    }

    goto LABEL_10;
  }

  v13 = [v12 indexOfObjectPassingTest:&stru_100A092F8];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sub_1001E65B0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "feedViewController: could not find swoosh-root.xml", buf, 2u);
    }

LABEL_10:

    goto LABEL_25;
  }

  v15 = [v12 objectAtIndexedSubscript:v13];
  v16 = [v15 data];
  v17 = [v16 dictionary];

  v36 = [v17 valueForKey:@"swooshConfig"];
  v35 = [v36 valueForKey:@"swooshBodyConfig"];
  v18 = [v35 valueForKey:@"items"];
  v19 = [v18 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = [v18 objectAtIndexedSubscript:0];
    v22 = [v21 count];

    if (v22 == 1)
    {
      v23 = [v18 objectAtIndexedSubscript:1];
      v24 = v23;
      v25 = 0;
    }

    else
    {
      v23 = [v18 objectAtIndexedSubscript:0];
      v24 = v23;
      v25 = 1;
    }

    v26 = [v23 objectAtIndexedSubscript:v25];
  }

  else
  {
    v26 = [v18 objectAtIndexedSubscript:1];
  }

  v27 = [v26 valueForKey:@"url"];
  v28 = v27;
  if (v27)
  {
    v34 = v17;
    v42[0] = @"swooshIndex";
    v42[1] = @"url";
    v43[0] = &off_100A436B0;
    v43[1] = v27;
    v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    v30 = [v15 delegate];
    [v30 feedEntry:v15 handleBehavior:0 name:@"GOTO_BOOK" arguments:v29];

    v31 = sub_1001E65B0();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "waiting 10s for card stack to close", buf, 2u);
    }

    v32 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100170ABC;
    block[3] = &unk_100A03C78;
    v38 = v4;
    v39 = self;
    v40 = v15;
    v41 = v29;
    v33 = v29;
    dispatch_after(v32, &_dispatch_main_q, block);

    v17 = v34;
  }

  else
  {
    v33 = sub_1001E65B0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "feedViewController: could not find swoosh-root.xml", buf, 2u);
    }
  }

LABEL_25:
}

- (void)startBooksUITestWithRootBarCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  PPTStoreProductPageTest.startBooksUITest(rootBarCoordinator:)(a3);
  swift_unknownObjectRelease();
}

@end