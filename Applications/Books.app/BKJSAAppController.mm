@interface BKJSAAppController
- (BKJSAAppController)initWithSceneManager:(id)manager jetActionHandler:(id)handler;
- (BKRootBarCoordinating)rootBarCoordinator;
- (id)_sceneControllerForTransaction:(id)transaction;
- (unint64_t)signpostBeginWithMetadata:(id)metadata;
- (void)appendFeedsInCards:(id)cards options:(id)options;
- (void)appendFeedsInCards:(id)cards optionsValue:(id)value;
- (void)dismissCardsForSelectedTab:(BOOL)tab completion:(id)completion;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)performRawActionModelOnRootBarCurrentViewController:(id)controller withParentTracker:(id)tracker shouldReportFigaro:(BOOL)figaro;
- (void)presentFeedsInCards:(id)cards focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options;
- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value animatedValue:(id)animatedValue optionsValue:(id)optionsValue;
- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value titleValue:(id)titleValue animatedValue:(id)animatedValue optionsValue:(id)optionsValue;
- (void)pushViewControllerOnSelectedNavigationController:(id)controller animated:(BOOL)animated;
- (void)reloadStandardItemsWithAnimated:(BOOL)animated completion:(id)completion;
- (void)requestPrimaryAnalyticsControllerWithCompletionValue:(id)value;
- (void)requestPrimarySceneWithCompletionValue:(id)value;
- (void)requestRootBarAnalyticsTrackerWithCompletionValue:(id)value;
- (void)requestRootBarControllerWithCompletionValue:(id)value;
- (void)selectTabWithIdentifier:(id)identifier isUserAction:(BOOL)action;
- (void)setScriptDataSource:(id)source completion:(id)completion;
- (void)signpostEndWithSignpostID:(unint64_t)d metadata:(id)metadata;
- (void)signpostEventWithMetadata:(id)metadata;
- (void)topViewControllerInSelectedTab:(id)tab;
@end

@implementation BKJSAAppController

- (BKJSAAppController)initWithSceneManager:(id)manager jetActionHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = BKJSAAppController;
  v9 = [(BKJSAAppController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneManager, manager);
    objc_storeStrong(&v10->_jetActionHandler, handler);
  }

  return v10;
}

- (id)_sceneControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  sceneManager = [(BKJSAAppController *)self sceneManager];
  v6 = [sceneManager defaultSceneControllerForTransaction:transactionCopy];

  return v6;
}

- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value titleValue:(id)titleValue animatedValue:(id)animatedValue optionsValue:(id)optionsValue
{
  cardsCopy = cards;
  valueCopy = value;
  animatedValueCopy = animatedValue;
  optionsValueCopy = optionsValue;
  v15 = JSALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446210;
    v22 = "[BKJSAAppController presentFeedsInCards:focusedIndexValue:titleValue:animatedValue:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", &v21, 0xCu);
  }

  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isNumber])
  {
    toNumber = [valueCopy toNumber];
    unsignedIntegerValue = [toNumber unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([animatedValueCopy isBoolean])
  {
    toBool = [animatedValueCopy toBool];
  }

  else
  {
    toBool = 1;
  }

  if ([optionsValueCopy isObject])
  {
    toDictionary = [optionsValueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count] > unsignedIntegerValue)
  {
    [(BKJSAAppController *)self presentFeedsInCards:toArray focusedIndex:unsignedIntegerValue animated:toBool options:toDictionary];
  }
}

- (void)presentFeedsInCards:(id)cards focusedIndexValue:(id)value animatedValue:(id)animatedValue optionsValue:(id)optionsValue
{
  cardsCopy = cards;
  valueCopy = value;
  animatedValueCopy = animatedValue;
  optionsValueCopy = optionsValue;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446210;
    v21 = "[BKJSAAppController presentFeedsInCards:focusedIndexValue:animatedValue:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", &v20, 0xCu);
  }

  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isNumber])
  {
    toNumber = [valueCopy toNumber];
    unsignedIntegerValue = [toNumber unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([animatedValueCopy isBoolean])
  {
    toBool = [animatedValueCopy toBool];
  }

  else
  {
    toBool = 1;
  }

  if ([optionsValueCopy isObject])
  {
    toDictionary = [optionsValueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count] > unsignedIntegerValue)
  {
    [(BKJSAAppController *)self presentFeedsInCards:toArray focusedIndex:unsignedIntegerValue animated:toBool options:toDictionary];
  }
}

- (void)presentFeedsInCards:(id)cards focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options
{
  animatedCopy = animated;
  optionsCopy = options;
  cardsCopy = cards;
  v12 = JSALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446210;
    v17 = "[BKJSAAppController presentFeedsInCards:focusedIndex:animated:options:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", &v16, 0xCu);
  }

  v13 = [optionsCopy objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v14 = [(BKJSAAppController *)self _sceneControllerForTransaction:v13];
  feedCardPresenting = [v14 feedCardPresenting];
  [feedCardPresenting presentFeedsInCards:cardsCopy focusedIndex:index animated:animatedCopy options:optionsCopy completion:0];
}

- (void)appendFeedsInCards:(id)cards optionsValue:(id)value
{
  cardsCopy = cards;
  valueCopy = value;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[BKJSAAppController appendFeedsInCards:optionsValue:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v11, 0xCu);
  }

  if ([cardsCopy isArray])
  {
    toArray = [cardsCopy toArray];
  }

  else
  {
    toArray = 0;
  }

  if ([valueCopy isObject])
  {
    toDictionary = [valueCopy toDictionary];
  }

  else
  {
    toDictionary = 0;
  }

  if ([toArray count])
  {
    [(BKJSAAppController *)self appendFeedsInCards:toArray options:toDictionary];
  }
}

- (void)appendFeedsInCards:(id)cards options:(id)options
{
  optionsCopy = options;
  cardsCopy = cards;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[BKJSAAppController appendFeedsInCards:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", &v12, 0xCu);
  }

  v9 = [optionsCopy objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v10 = [(BKJSAAppController *)self _sceneControllerForTransaction:v9];
  feedCardPresenting = [v10 feedCardPresenting];
  [feedCardPresenting appendFeedsInCards:cardsCopy options:optionsCopy];
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  sceneManager = [(BKJSAAppController *)self sceneManager];
  primarySceneController = [sceneManager primarySceneController];
  rootBarCoordinator = [primarySceneController rootBarCoordinator];

  return rootBarCoordinator;
}

- (void)requestRootBarControllerWithCompletionValue:(id)value
{
  valueCopy = value;
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
  v6 = valueCopy;
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

- (void)requestPrimarySceneWithCompletionValue:(id)value
{
  valueCopy = value;
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
  v6 = valueCopy;
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

- (void)requestRootBarAnalyticsTrackerWithCompletionValue:(id)value
{
  valueCopy = value;
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
  v6 = valueCopy;
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

- (void)requestPrimaryAnalyticsControllerWithCompletionValue:(id)value
{
  valueCopy = value;
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
  v5 = valueCopy;
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

- (void)setScriptDataSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  sourceCopy = source;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[BKJSAAppController setScriptDataSource:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  sceneManager = [(BKJSAAppController *)self sceneManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F0320;
  v11[3] = &unk_100A033C8;
  v12 = completionCopy;
  v10 = completionCopy;
  [sceneManager setScriptDataSource:sourceCopy completion:v11];
}

- (void)reloadStandardItemsWithAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:animatedCopy];
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
  v15 = animatedCopy;
  v9 = completionCopy;
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

- (void)dismissCardsForSelectedTab:(BOOL)tab completion:(id)completion
{
  tabCopy = tab;
  completionCopy = completion;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:tabCopy];
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
  v16 = tabCopy;
  v9 = completionCopy;
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

- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F0F84;
  v11[3] = &unk_100A07068;
  objc_copyWeak(&v13, &location);
  animatedCopy = animated;
  v7 = completionCopy;
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

- (void)pushViewControllerOnSelectedNavigationController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
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
  v8 = controllerCopy;
  v13 = v8;
  objc_copyWeak(&v14, buf);
  animatedCopy = animated;
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

- (void)selectTabWithIdentifier:(id)identifier isUserAction:(BOOL)action
{
  identifierCopy = identifier;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSAAppController selectTabWithIdentifier:isUserAction:]";
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s identifier=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F1950;
  v12[3] = &unk_100A07068;
  objc_copyWeak(&v14, buf);
  v8 = identifierCopy;
  v13 = v8;
  actionCopy = action;
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

- (void)topViewControllerInSelectedTab:(id)tab
{
  tabCopy = tab;
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
  v6 = tabCopy;
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

- (unint64_t)signpostBeginWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = JSASignpostJS();
  v5 = os_signpost_id_generate(v4);

  v6 = +[JSAProcessEnvironment currentEnvironment];
  variant = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = v5 - 1;
  if (variant == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v13 = 138543362;
      v14 = metadataCopy;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "JS", v11, &v13, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v13 = 138412290;
    v14 = metadataCopy;
    v11 = "%@";
    goto LABEL_8;
  }

  return v5;
}

- (void)signpostEndWithSignpostID:(unint64_t)d metadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = +[JSAProcessEnvironment currentEnvironment];
  variant = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = d - 1;
  if (variant == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v12 = 138543362;
      v13 = metadataCopy;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, d, "JS", v11, &v12, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 138412290;
    v13 = metadataCopy;
    v11 = "%@";
    goto LABEL_8;
  }
}

- (void)signpostEventWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = JSASignpostJS();
  v5 = os_signpost_id_generate(v4);

  v6 = +[JSAProcessEnvironment currentEnvironment];
  variant = [v6 variant];

  v8 = JSASignpostJS();
  v9 = v8;
  v10 = v5 - 1;
  if (variant == 1)
  {
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v12 = 138543362;
      v13 = metadataCopy;
      v11 = "%{public}@";
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, v5, "JS", v11, &v12, 0xCu);
    }
  }

  else if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 138412290;
    v13 = metadataCopy;
    v11 = "%@";
    goto LABEL_8;
  }
}

- (void)performRawActionModelOnRootBarCurrentViewController:(id)controller withParentTracker:(id)tracker shouldReportFigaro:(BOOL)figaro
{
  controllerCopy = controller;
  trackerCopy = tracker;
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
  v11 = controllerCopy;
  v17 = v11;
  v12 = trackerCopy;
  v18 = v12;
  figaroCopy = figaro;
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