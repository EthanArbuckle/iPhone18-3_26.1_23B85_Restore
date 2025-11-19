@interface BKJSAAppController
- (BKJSAAppController)initWithSceneManager:(id)a3 jetActionHandler:(id)a4;
- (BKRootBarCoordinating)rootBarCoordinator;
- (id)_sceneControllerForTransaction:(id)a3;
- (unint64_t)signpostBeginWithMetadata:(id)a3;
- (void)appendFeedsInCards:(id)a3 options:(id)a4;
- (void)appendFeedsInCards:(id)a3 optionsValue:(id)a4;
- (void)dismissCardsForSelectedTab:(BOOL)a3 completion:(id)a4;
- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)performRawActionModelOnRootBarCurrentViewController:(id)a3 withParentTracker:(id)a4 shouldReportFigaro:(BOOL)a5;
- (void)presentFeedsInCards:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 options:(id)a6;
- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 animatedValue:(id)a5 optionsValue:(id)a6;
- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 titleValue:(id)a5 animatedValue:(id)a6 optionsValue:(id)a7;
- (void)pushViewControllerOnSelectedNavigationController:(id)a3 animated:(BOOL)a4;
- (void)reloadStandardItemsWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)requestPrimaryAnalyticsControllerWithCompletionValue:(id)a3;
- (void)requestPrimarySceneWithCompletionValue:(id)a3;
- (void)requestRootBarAnalyticsTrackerWithCompletionValue:(id)a3;
- (void)requestRootBarControllerWithCompletionValue:(id)a3;
- (void)selectTabWithIdentifier:(id)a3 isUserAction:(BOOL)a4;
- (void)setScriptDataSource:(id)a3 completion:(id)a4;
- (void)signpostEndWithSignpostID:(unint64_t)a3 metadata:(id)a4;
- (void)signpostEventWithMetadata:(id)a3;
- (void)topViewControllerInSelectedTab:(id)a3;
@end

@implementation BKJSAAppController

- (BKJSAAppController)initWithSceneManager:(id)a3 jetActionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BKJSAAppController;
  v9 = [(BKJSAAppController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneManager, a3);
    objc_storeStrong(&v10->_jetActionHandler, a4);
  }

  return v10;
}

- (id)_sceneControllerForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKJSAAppController *)self sceneManager];
  v6 = [v5 defaultSceneControllerForTransaction:v4];

  return v6;
}

- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 titleValue:(id)a5 animatedValue:(id)a6 optionsValue:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = JSALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446210;
    v22 = "[BKJSAAppController presentFeedsInCards:focusedIndexValue:titleValue:animatedValue:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", &v21, 0xCu);
  }

  if ([v11 isArray])
  {
    v16 = [v11 toArray];
  }

  else
  {
    v16 = 0;
  }

  if ([v12 isNumber])
  {
    v17 = [v12 toNumber];
    v18 = [v17 unsignedIntegerValue];
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v13 isBoolean])
  {
    v19 = [v13 toBool];
  }

  else
  {
    v19 = 1;
  }

  if ([v14 isObject])
  {
    v20 = [v14 toDictionary];
  }

  else
  {
    v20 = 0;
  }

  if ([v16 count] > v18)
  {
    [(BKJSAAppController *)self presentFeedsInCards:v16 focusedIndex:v18 animated:v19 options:v20];
  }
}

- (void)presentFeedsInCards:(id)a3 focusedIndexValue:(id)a4 animatedValue:(id)a5 optionsValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446210;
    v21 = "[BKJSAAppController presentFeedsInCards:focusedIndexValue:animatedValue:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", &v20, 0xCu);
  }

  if ([v10 isArray])
  {
    v15 = [v10 toArray];
  }

  else
  {
    v15 = 0;
  }

  if ([v11 isNumber])
  {
    v16 = [v11 toNumber];
    v17 = [v16 unsignedIntegerValue];
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v12 isBoolean])
  {
    v18 = [v12 toBool];
  }

  else
  {
    v18 = 1;
  }

  if ([v13 isObject])
  {
    v19 = [v13 toDictionary];
  }

  else
  {
    v19 = 0;
  }

  if ([v15 count] > v17)
  {
    [(BKJSAAppController *)self presentFeedsInCards:v15 focusedIndex:v17 animated:v18 options:v19];
  }
}

- (void)presentFeedsInCards:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 options:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = JSALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446210;
    v17 = "[BKJSAAppController presentFeedsInCards:focusedIndex:animated:options:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", &v16, 0xCu);
  }

  v13 = [v10 objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v14 = [(BKJSAAppController *)self _sceneControllerForTransaction:v13];
  v15 = [v14 feedCardPresenting];
  [v15 presentFeedsInCards:v11 focusedIndex:a4 animated:v6 options:v10 completion:0];
}

- (void)appendFeedsInCards:(id)a3 optionsValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[BKJSAAppController appendFeedsInCards:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v11, 0xCu);
  }

  if ([v6 isArray])
  {
    v9 = [v6 toArray];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 isObject])
  {
    v10 = [v7 toDictionary];
  }

  else
  {
    v10 = 0;
  }

  if ([v9 count])
  {
    [(BKJSAAppController *)self appendFeedsInCards:v9 options:v10];
  }
}

- (void)appendFeedsInCards:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[BKJSAAppController appendFeedsInCards:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v12, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v10 = [(BKJSAAppController *)self _sceneControllerForTransaction:v9];
  v11 = [v10 feedCardPresenting];
  [v11 appendFeedsInCards:v7 options:v6];
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  v2 = [(BKJSAAppController *)self sceneManager];
  v3 = [v2 primarySceneController];
  v4 = [v3 rootBarCoordinator];

  return v4;
}

- (void)requestRootBarControllerWithCompletionValue:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController requestRootBarControllerWithCompletionValue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EF4C0;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = objc_retainBlock(v11);
  v8 = objc_retainBlock(v7);
  if (v8)
  {
    if (+[NSThread isMainThread])
    {
      v8[2](v8);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EF6D0;
      block[3] = &unk_100A03920;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)requestPrimarySceneWithCompletionValue:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController requestPrimarySceneWithCompletionValue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EF8A4;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = objc_retainBlock(v11);
  v8 = objc_retainBlock(v7);
  if (v8)
  {
    if (+[NSThread isMainThread])
    {
      v8[2](v8);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EFAA4;
      block[3] = &unk_100A03920;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)requestRootBarAnalyticsTrackerWithCompletionValue:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController requestRootBarAnalyticsTrackerWithCompletionValue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EFC78;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = objc_retainBlock(v11);
  v8 = objc_retainBlock(v7);
  if (v8)
  {
    if (+[NSThread isMainThread])
    {
      v8[2](v8);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EFEA4;
      block[3] = &unk_100A03920;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)requestPrimaryAnalyticsControllerWithCompletionValue:(id)a3
{
  v3 = a3;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[BKJSAAppController requestPrimaryAnalyticsControllerWithCompletionValue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F005C;
  v9[3] = &unk_100A033C8;
  v5 = v3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (v6)
  {
    if (+[NSThread isMainThread])
    {
      (v6[2])(v6);
    }

    else
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000F01C4;
      v7[3] = &unk_100A03920;
      v8 = v6;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

- (void)setScriptDataSource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController setScriptDataSource:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v9 = [(BKJSAAppController *)self sceneManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F0320;
  v11[3] = &unk_100A033C8;
  v12 = v6;
  v10 = v6;
  [v9 setScriptDataSource:v7 completion:v11];
}

- (void)reloadStandardItemsWithAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:v4];
    *buf = 136446466;
    v17 = "[BKJSAAppController reloadStandardItemsWithAnimated:completion:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s animated=%@", buf, 0x16u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F05EC;
  v13[3] = &unk_100A03E80;
  v13[4] = self;
  v15 = v4;
  v9 = v6;
  v14 = v9;
  v10 = objc_retainBlock(v13);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      (v10[2])(v10);
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000F07A4;
      v11[3] = &unk_100A03920;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, v11);
    }
  }
}

- (void)dismissCardsForSelectedTab:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:v4];
    *buf = 136446466;
    v18 = "[BKJSAAppController dismissCardsForSelectedTab:completion:]";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s animated=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F09EC;
  v13[3] = &unk_100A07068;
  objc_copyWeak(&v15, buf);
  v16 = v4;
  v9 = v6;
  v14 = v9;
  v10 = objc_retainBlock(v13);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      (v10[2])(v10);
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000F0DF8;
      v11[3] = &unk_100A03920;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, v11);
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F0F84;
  v11[3] = &unk_100A07068;
  objc_copyWeak(&v13, &location);
  v14 = a3;
  v7 = v6;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  if (v8)
  {
    if (+[NSThread isMainThread])
    {
      (v8[2])(v8);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F1488;
      block[3] = &unk_100A03920;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)pushViewControllerOnSelectedNavigationController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[BKJSAAppController pushViewControllerOnSelectedNavigationController:animated:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F16A0;
  v12[3] = &unk_100A07090;
  v8 = v6;
  v13 = v8;
  objc_copyWeak(&v14, buf);
  v15 = a4;
  v9 = objc_retainBlock(v12);
  if (v9)
  {
    if (+[NSThread isMainThread])
    {
      (v9[2])(v9);
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F172C;
      v10[3] = &unk_100A03920;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)selectTabWithIdentifier:(id)a3 isUserAction:(BOOL)a4
{
  v6 = a3;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSAAppController selectTabWithIdentifier:isUserAction:]";
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s identifier=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F1950;
  v12[3] = &unk_100A07068;
  objc_copyWeak(&v14, buf);
  v8 = v6;
  v13 = v8;
  v15 = a4;
  v9 = objc_retainBlock(v12);
  if (v9)
  {
    if (+[NSThread isMainThread])
    {
      (v9[2])(v9);
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F19B4;
      v10[3] = &unk_100A03920;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)topViewControllerInSelectedTab:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController topViewControllerInSelectedTab:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F1BC4;
  v10[3] = &unk_100A070B8;
  objc_copyWeak(&v12, buf);
  v6 = v4;
  v11 = v6;
  v7 = objc_retainBlock(v10);
  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      (v7[2])(v7);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F1D34;
      block[3] = &unk_100A03920;
      v9 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (unint64_t)signpostBeginWithMetadata:(id)a3
{
  v3 = a3;
  v4 = JSASignpostJS();
  v5 = os_signpost_id_generate(v4);

  v6 = +[JSAProcessEnvironment currentEnvironment];
  v7 = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = v5 - 1;
  if (v7 == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v13 = 138543362;
      v14 = v3;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "JS", v11, &v13, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = 138412290;
    v14 = v3;
    v11 = "%@";
    goto LABEL_8;
  }

  return v5;
}

- (void)signpostEndWithSignpostID:(unint64_t)a3 metadata:(id)a4
{
  v5 = a4;
  v6 = +[JSAProcessEnvironment currentEnvironment];
  v7 = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = a3 - 1;
  if (v7 == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v12 = 138543362;
      v13 = v5;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, a3, "JS", v11, &v12, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 138412290;
    v13 = v5;
    v11 = "%@";
    goto LABEL_8;
  }
}

- (void)signpostEventWithMetadata:(id)a3
{
  v3 = a3;
  v4 = JSASignpostJS();
  v5 = os_signpost_id_generate(v4);

  v6 = +[JSAProcessEnvironment currentEnvironment];
  v7 = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = v5 - 1;
  if (v7 == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v12 = 138543362;
      v13 = v3;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v5, "JS", v11, &v12, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 138412290;
    v13 = v3;
    v11 = "%@";
    goto LABEL_8;
  }
}

- (void)performRawActionModelOnRootBarCurrentViewController:(id)a3 withParentTracker:(id)a4 shouldReportFigaro:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[BKJSAAppController performRawActionModelOnRootBarCurrentViewController:withParentTracker:shouldReportFigaro:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F2350;
  v16[3] = &unk_100A07100;
  objc_copyWeak(&v19, buf);
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v20 = a5;
  v13 = objc_retainBlock(v16);
  if (v13)
  {
    if (+[NSThread isMainThread])
    {
      (v13[2])(v13);
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000F2434;
      v14[3] = &unk_100A03920;
      v15 = v13;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

@end