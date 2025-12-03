@interface JSAFeedController
- (BOOL)executeBehaviorNamed:(id)named forEntry:(id)entry withArguments:(id)arguments;
- (BOOL)hasPresentingFeed;
- (BSUIDynamicValue)currentStackName;
- (JSAFeedController)initWithOptions:(id)options completion:(id)completion;
- (JSAFeedControllerDataSource)dataSource;
- (JSAFeedControllerDelegate)delegate;
- (NSDictionary)metrics;
- (UIViewController)viewController;
- (id)analyticsTracker;
- (void)_convertOrCreateViewController:(id)controller completion:(id)completion;
- (void)addAlphaOverrideToItem:(id)item :(double)a4 :(BOOL)a5 :(double)a6;
- (void)addWeakTriggerObserver:(id)observer :(id)a4;
- (void)appendToPresentedCards:(id)cards :(id)a4;
- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion;
- (void)collectStatsWithCompletion:(id)completion;
- (void)collectVisibleImpressionsWithCompletion:(id)completion;
- (void)dealloc;
- (void)didLoadCardResource:(id)resource;
- (void)dismissKeyboard;
- (void)dismissViewController:(BOOL)controller :(id)a4;
- (void)hideLoadingView;
- (void)hotReloadControllerWillReloadScript:(id)script completion:(id)completion;
- (void)notifyAnalyticsVisibilityDidAppear;
- (void)notifyAnalyticsVisibilityWillDisappear;
- (void)notifyDidAppear;
- (void)notifyInitialContentReady;
- (void)notifyOnAppear;
- (void)notifyOnDisappear;
- (void)notifyOnMessageActionTriggered:(id)triggered;
- (void)notifyParentCardWillDismissWithReason:(id)reason targetFeed:(id)feed;
- (void)notifyScrollViewReachedTheBottom;
- (void)openAccountSummaryWindow;
- (void)performRawActionModel:(id)model shouldReportFigaro:(BOOL)figaro;
- (void)popToRootViewController:(BOOL)controller :(id)a4;
- (void)popViewController:(BOOL)controller :(id)a4;
- (void)presentCards:(id)cards :(unint64_t)a4 :(BOOL)a5 :(id)a6 :(id)a7;
- (void)presentCardsWithOptions:(id)options :(unint64_t)a4 :(id)a5 :(BOOL)a6 :(id)a7 :(id)a8;
- (void)presentFeedViewControllerInPopover:(id)popover :(id)a4;
- (void)presentScreenshotViewController:(id)controller;
- (void)presentViewController:(id)controller :(BOOL)a4 :(id)a5;
- (void)pushViewController:(id)controller :(BOOL)a4;
- (void)removeAlphaOverrideFromItem:(id)item :(BOOL)a4 :(double)a5;
- (void)renderSharableImage:(id)image :(id)a4;
- (void)replaceCurrentFeedViewController:(id)controller :(BOOL)a4;
- (void)requestCompleteDataForEntry:(id)entry completion:(id)completion;
- (void)requestEntriesWithCompletion:(id)completion;
- (void)requestToSetNavigationBarHidden:(BOOL)hidden :(BOOL)a4;
- (void)resetImpressions;
- (void)scrollToItem:(id)item :(BOOL)a4 :(BOOL)a5;
- (void)setFeedBridged:(BOOL)bridged;
- (void)setFeedDataRequestPriority:(float)priority;
- (void)showLoadingView;
- (void)slideInFeedViewController:(id)controller;
- (void)tearDownWithCompletion:(id)completion;
- (void)updateContentWithData:(id)data;
- (void)viewStateDidUpdate:(id)update;
@end

@implementation JSAFeedController

- (JSAFeedController)initWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = JSAFeedController;
  v9 = [(JSAFeedController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, options);
    v10->_didNotifyInitialContentReady = 0;
    v10->_didNotifyInitialContentReadyLock._os_unfair_lock_opaque = 0;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INTERACTIVE, 0);
    v14 = dispatch_queue_attr_make_initially_inactive(v13);
    v15 = dispatch_queue_create("JSAFeedViewController.access", v14);
    access = v10->_access;
    v10->_access = v15;

    objc_storeStrong(&v10->_bridgeCompletion, completion);
    objc_opt_class();
    v17 = [optionsCopy objectForKeyedSubscript:@"isRootFeed"];
    v18 = BUDynamicCast();
    v10->_isRootFeed = [v18 BOOLValue];

    v19 = [optionsCopy objectForKeyedSubscript:@"metadata"];
    sub_81718(v10, v19);

    sub_81784(v10, 0);
    if (+[JSADevice isInternalBuild])
    {
      v20 = +[JSAHotReloadController sharedController];
      [v20 subscribe:v10];
    }
  }

  return v10;
}

- (void)dealloc
{
  if (+[JSADevice isInternalBuild])
  {
    v3 = +[JSAHotReloadController sharedController];
    [v3 unsubscribe:self];
  }

  dispatch_activate(self->_access);
  v4.receiver = self;
  v4.super_class = JSAFeedController;
  [(JSAFeedController *)&v4 dealloc];
}

- (void)requestEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = "[JSAFeedController requestEntriesWithCompletion:]";
    v31 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: start", buf, 0x16u);
  }

  v6 = JSASignpostFeedController();
  v7 = os_signpost_id_generate(v6);

  v8 = JSASignpostFeedController();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Request Entries", "", buf, 2u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_15574;
  v26[3] = &unk_B2D08;
  v28 = v7;
  v10 = completionCopy;
  v27 = v10;
  v11 = objc_retainBlock(v26);
  objc_initWeak(buf, self);
  v12 = self->_access;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_15638;
  v22[3] = &unk_B2D58;
  v22[4] = self;
  objc_copyWeak(&v25, buf);
  v13 = v12;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v15 = objc_retainBlock(v22);
  v16 = +[JSABridge sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1592C;
  v19[3] = &unk_B2D80;
  v19[4] = self;
  v17 = v15;
  v20 = v17;
  v18 = v14;
  v21 = v18;
  [v16 enqueueBlock:v19 file:@"JSAFeedController.m" line:166];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)requestCompleteDataForEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  v8 = +[JSABridge sharedInstance];
  feed = [(JSAFeedController *)self feed];
  v12[0] = entryCopy;
  v10 = objc_retainBlock(completionCopy);

  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];

  [v8 enqueueValueInvocation:feed method:@"requestEntryCompleteData" arguments:v11 file:@"JSAFeedController.m" line:171];
}

- (BOOL)executeBehaviorNamed:(id)named forEntry:(id)entry withArguments:(id)arguments
{
  namedCopy = named;
  entryCopy = entry;
  argumentsCopy = arguments;
  objc_initWeak(&location, self);
  if ([namedCopy isEqualToString:@"MORE"])
  {
    v11 = objc_loadWeakRetained(&location);
    feed = [v11 feed];
    sub_15DEC(feed, namedCopy, entryCopy, argumentsCopy);
  }

  else
  {
    v13 = +[JSABridge sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_15F44;
    v15[3] = &unk_B2DA8;
    objc_copyWeak(&v19, &location);
    v16 = namedCopy;
    v17 = entryCopy;
    v18 = argumentsCopy;
    [v13 enqueueBlock:v15 file:@"JSAFeedController.m" line:200];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);

  return 1;
}

- (void)updateContentWithData:(id)data
{
  dataCopy = data;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[JSAFeedController updateContentWithData:]";
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p:", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16930;
  v7[3] = &unk_B2CB8;
  objc_copyWeak(&v9, buf);
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)viewStateDidUpdate:(id)update
{
  updateCopy = update;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[JSAFeedController viewStateDidUpdate:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = updateCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: to %@", buf, 0x20u);
  }

  viewState = self->_viewState;
  self->_viewState = sub_81C5C(self, updateCopy);
  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_16B00;
  v7[3] = &unk_B2E48;
  objc_copyWeak(v8, buf);
  v8[1] = viewState;
  dispatch_async(&_dispatch_main_q, v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
}

- (void)setFeedDataRequestPriority:(float)priority
{
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "[JSAFeedController setFeedDataRequestPriority:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2048;
    priorityCopy = priority;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: => %0.1f", buf, 0x20u);
  }

  v6 = +[JSABridge sharedInstance];
  feed = [(JSAFeedController *)self feed];
  *&v8 = priority;
  v9 = [NSNumber numberWithFloat:v8];
  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 enqueueValueInvocation:feed method:@"setRequestsPriority" arguments:v10 file:@"JSAFeedController.m" line:292];
}

- (void)pushViewController:(id)controller :(BOOL)a4
{
  controllerCopy = controller;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "[JSAFeedController pushViewController::]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = controllerCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_16E74;
  v9[3] = &unk_B2E70;
  objc_copyWeak(&v11, buf);
  v9[4] = self;
  v8 = controllerCopy;
  v10 = v8;
  v12 = a4;
  [(JSAFeedController *)self _convertOrCreateViewController:v8 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)replaceCurrentFeedViewController:(id)controller :(BOOL)a4
{
  controllerCopy = controller;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[JSAFeedController replaceCurrentFeedViewController::]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = controllerCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1726C;
  v8[3] = &unk_B2E98;
  objc_copyWeak(&v9, buf);
  v10 = a4;
  [(JSAFeedController *)self _convertOrCreateViewController:controllerCopy completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)presentViewController:(id)controller :(BOOL)a4 :(id)a5
{
  controllerCopy = controller;
  v9 = a5;
  v10 = JSALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[JSAFeedController presentViewController:::]";
    v18 = 2048;
    selfCopy = self;
    v20 = 2112;
    v21 = controllerCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_174B4;
  v12[3] = &unk_B2EC0;
  objc_copyWeak(&v14, buf);
  v15 = a4;
  v11 = v9;
  v13 = v11;
  [(JSAFeedController *)self _convertOrCreateViewController:controllerCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)presentScreenshotViewController:(id)controller
{
  controllerCopy = controller;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[JSAFeedController presentScreenshotViewController:]";
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_176B0;
  v7[3] = &unk_B2CB8;
  objc_copyWeak(&v9, buf);
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)slideInFeedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [controllerCopy description];
    *buf = 136446722;
    v10 = "[JSAFeedController slideInFeedViewController:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17898;
  v7[3] = &unk_B2EE8;
  objc_copyWeak(&v8, buf);
  [(JSAFeedController *)self _convertOrCreateViewController:controllerCopy completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)presentFeedViewControllerInPopover:(id)popover :(id)a4
{
  popoverCopy = popover;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [popoverCopy description];
    *buf = 136446722;
    v15 = "[JSAFeedController presentFeedViewControllerInPopover::]";
    v16 = 2048;
    selfCopy = self;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_17AE0;
  v11[3] = &unk_B2F10;
  objc_copyWeak(&v13, buf);
  v10 = v7;
  v12 = v10;
  [(JSAFeedController *)self _convertOrCreateViewController:popoverCopy completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)popViewController:(BOOL)controller :(id)a4
{
  controllerCopy = controller;
  v6 = a4;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[JSAFeedController popViewController::]";
    v18 = 2048;
    selfCopy = self;
    v20 = 1024;
    v21 = controllerCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: animated=%{BOOL}d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_17D9C;
  v12[3] = &unk_B2F38;
  objc_copyWeak(&v14, buf);
  v15 = controllerCopy;
  v8 = v6;
  v13 = v8;
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
      v10[2] = sub_17E58;
      v10[3] = &unk_B2100;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)popToRootViewController:(BOOL)controller :(id)a4
{
  controllerCopy = controller;
  v6 = a4;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[JSAFeedController popToRootViewController::]";
    v18 = 2048;
    selfCopy = self;
    v20 = 1024;
    v21 = controllerCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: animated=%{BOOL}d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_18088;
  v12[3] = &unk_B2F38;
  objc_copyWeak(&v14, buf);
  v15 = controllerCopy;
  v8 = v6;
  v13 = v8;
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
      v10[2] = sub_18144;
      v10[3] = &unk_B2100;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)dismissViewController:(BOOL)controller :(id)a4
{
  controllerCopy = controller;
  v6 = a4;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[JSAFeedController dismissViewController::]";
    v18 = 2048;
    selfCopy = self;
    v20 = 1024;
    v21 = controllerCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: animated=%{BOOL}d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_18374;
  v12[3] = &unk_B2F38;
  objc_copyWeak(&v14, buf);
  v15 = controllerCopy;
  v8 = v6;
  v13 = v8;
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
      v10[2] = sub_18410;
      v10[3] = &unk_B2100;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)presentCardsWithOptions:(id)options :(unint64_t)a4 :(id)a5 :(BOOL)a6 :(id)a7 :(id)a8
{
  optionsCopy = options;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = JSALog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [NSNumber numberWithUnsignedInteger:a4];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionsCopy count]);
    *buf = 136446978;
    v34 = "[JSAFeedController presentCardsWithOptions::::::]";
    v35 = 2048;
    selfCopy = self;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@ of %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_18704;
  v27[3] = &unk_B2F60;
  objc_copyWeak(v31, buf);
  v21 = v17;
  v28 = v21;
  v22 = optionsCopy;
  v29 = v22;
  v31[1] = a4;
  v32 = a6;
  v23 = v16;
  v30 = v23;
  v24 = objc_retainBlock(v27);
  if (v24)
  {
    if (+[NSThread isMainThread])
    {
      (v24[2])(v24);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1885C;
      block[3] = &unk_B2100;
      v26 = v24;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(buf);
}

- (void)presentCards:(id)cards :(unint64_t)a4 :(BOOL)a5 :(id)a6 :(id)a7
{
  cardsCopy = cards;
  v13 = a6;
  v14 = a7;
  v15 = JSALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [NSNumber numberWithUnsignedInteger:a4];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [cardsCopy count]);
    *buf = 136446978;
    v31 = "[JSAFeedController presentCards:::::]";
    v32 = 2048;
    selfCopy = self;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@ of %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_18B40;
  v24[3] = &unk_B2F60;
  objc_copyWeak(v28, buf);
  v18 = v14;
  v25 = v18;
  v19 = cardsCopy;
  v26 = v19;
  v28[1] = a4;
  v29 = a5;
  v20 = v13;
  v27 = v20;
  v21 = objc_retainBlock(v24);
  if (v21)
  {
    if (+[NSThread isMainThread])
    {
      (v21[2])(v21);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_18C98;
      block[3] = &unk_B2100;
      v23 = v21;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
}

- (void)appendToPresentedCards:(id)cards :(id)a4
{
  cardsCopy = cards;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [cardsCopy count]);
    *buf = 136446722;
    v20 = "[JSAFeedController appendToPresentedCards::]";
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %p: adding %@ cards", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_18F14;
  v15[3] = &unk_B2208;
  objc_copyWeak(&v18, buf);
  v10 = cardsCopy;
  v16 = v10;
  v11 = v7;
  v17 = v11;
  v12 = objc_retainBlock(v15);
  if (v12)
  {
    if (+[NSThread isMainThread])
    {
      (v12[2])(v12);
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_18F8C;
      v13[3] = &unk_B2100;
      v14 = v12;
      dispatch_async(&_dispatch_main_q, v13);
    }
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)openAccountSummaryWindow
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[JSAFeedController openAccountSummaryWindow]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p: openAccountSummaryWindow", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_19180;
  v7[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_191F0;
      v5[3] = &unk_B2100;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)didLoadCardResource:(id)resource
{
  resourceCopy = resource;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "[JSAFeedController didLoadCardResource:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = resourceCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p: has loaded card resource: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_19418;
  v10[3] = &unk_B2CB8;
  objc_copyWeak(&v12, buf);
  v6 = resourceCopy;
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
      block[2] = sub_19490;
      block[3] = &unk_B2100;
      v9 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)performRawActionModel:(id)model shouldReportFigaro:(BOOL)figaro
{
  modelCopy = model;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v17 = "[JSAFeedController performRawActionModel:shouldReportFigaro:]";
    v18 = 2048;
    selfCopy = self;
    v20 = 2112;
    v21 = modelCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: performing FlowAction: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_196C0;
  v12[3] = &unk_B2F38;
  objc_copyWeak(&v14, buf);
  v8 = modelCopy;
  v13 = v8;
  figaroCopy = figaro;
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
      v10[2] = sub_1973C;
      v10[3] = &unk_B2100;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[JSAFeedController collectAndFlush:accumulatedImpressionsWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  delegate = [(JSAFeedController *)self delegate];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = sub_199C0;
  v22 = sub_199D0;
  dataSource = [(JSAFeedController *)self dataSource];
  v23 = [dataSource newAnalyticsSessionExtendingAssertionForFeedController:self];

  if (!*(*&buf[8] + 40))
  {
    v10 = JSALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_82194();
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_199D8;
  v13[3] = &unk_B2FD8;
  objc_copyWeak(&v17, &location);
  flushCopy = flush;
  v14 = delegate;
  v15 = completionCopy;
  v16 = buf;
  v11 = completionCopy;
  v12 = delegate;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v17);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)collectVisibleImpressionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[JSAFeedController collectVisibleImpressionsWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_199C0;
  v16 = sub_199D0;
  dataSource = [(JSAFeedController *)self dataSource];
  v17 = [dataSource newAnalyticsSessionExtendingAssertionForFeedController:self];

  if (!*(*&buf[8] + 40))
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_82208();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19EC8;
  block[3] = &unk_B3000;
  objc_copyWeak(&v12, &location);
  block[4] = self;
  v10 = completionCopy;
  v11 = buf;
  v8 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)resetImpressions
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[JSAFeedController resetImpressions]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A364;
  v7[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1A3D4;
      v5[3] = &unk_B2100;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)collectStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[JSAFeedController collectStatsWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_199C0;
  v16 = sub_199D0;
  dataSource = [(JSAFeedController *)self dataSource];
  v17 = [dataSource newAnalyticsSessionExtendingAssertionForFeedController:self];

  if (!*(*&buf[8] + 40))
  {
    v7 = JSALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8227C();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A61C;
  block[3] = &unk_B3000;
  objc_copyWeak(&v12, &location);
  block[4] = self;
  v10 = completionCopy;
  v11 = buf;
  v8 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)dismissKeyboard
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[JSAFeedController dismissKeyboard]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1AAB8;
  v7[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1AB2C;
      v5[3] = &unk_B2100;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)scrollToItem:(id)item :(BOOL)a4 :(BOOL)a5
{
  itemCopy = item;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[JSAFeedController scrollToItem:::]";
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    v24 = itemCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1AD6C;
  v14[3] = &unk_B3050;
  objc_copyWeak(&v16, buf);
  v10 = itemCopy;
  v15 = v10;
  v17 = a4;
  v18 = a5;
  v11 = objc_retainBlock(v14);
  if (v11)
  {
    if (+[NSThread isMainThread])
    {
      (v11[2])(v11);
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1ADF0;
      v12[3] = &unk_B2100;
      v13 = v11;
      dispatch_async(&_dispatch_main_q, v12);
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)requestToSetNavigationBarHidden:(BOOL)hidden :(BOOL)a4
{
  hiddenCopy = hidden;
  v7 = JSALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[JSAFeedController requestToSetNavigationBarHidden::]";
    v17 = 2048;
    selfCopy = self;
    v19 = 1024;
    v20 = hiddenCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %p: hidden=%{BOOL}d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1B008;
  v11[3] = &unk_B3078;
  objc_copyWeak(&v12, buf);
  v13 = hiddenCopy;
  v14 = a4;
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
      block[2] = sub_1B084;
      block[3] = &unk_B2100;
      v10 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)renderSharableImage:(id)image :(id)a4
{
  imageCopy = image;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[JSAFeedController renderSharableImage::]";
    v20 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1B2C4;
  v14[3] = &unk_B2208;
  objc_copyWeak(&v17, buf);
  v9 = imageCopy;
  v15 = v9;
  v10 = v7;
  v16 = v10;
  v11 = objc_retainBlock(v14);
  if (v11)
  {
    if (+[NSThread isMainThread])
    {
      (v11[2])(v11);
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1B33C;
      v12[3] = &unk_B2100;
      v13 = v11;
      dispatch_async(&_dispatch_main_q, v12);
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)addAlphaOverrideToItem:(id)item :(double)a4 :(BOOL)a5 :(double)a6
{
  itemCopy = item;
  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v21 = "[JSAFeedController addAlphaOverrideToItem::::]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = itemCopy;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@ alpha=%0.1g", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1B590;
  v16[3] = &unk_B30A0;
  objc_copyWeak(v18, buf);
  v12 = itemCopy;
  v17 = v12;
  v19 = a5;
  v18[1] = *&a4;
  v18[2] = *&a6;
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
      v14[2] = sub_1B614;
      v14[3] = &unk_B2100;
      v15 = v13;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
}

- (void)removeAlphaOverrideFromItem:(id)item :(BOOL)a4 :(double)a5
{
  itemCopy = item;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[JSAFeedController removeAlphaOverrideFromItem:::]";
    v20 = 2048;
    selfCopy = self;
    v22 = 2112;
    v23 = itemCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1B84C;
  v14[3] = &unk_B30C8;
  objc_copyWeak(v16, buf);
  v10 = itemCopy;
  v15 = v10;
  v17 = a4;
  v16[1] = *&a5;
  v11 = objc_retainBlock(v14);
  if (v11)
  {
    if (+[NSThread isMainThread])
    {
      (v11[2])(v11);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1B8D0;
      block[3] = &unk_B2100;
      v13 = v11;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

- (void)showLoadingView
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[JSAFeedController showLoadingView]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1BAC4;
  v7[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1BB34;
      v5[3] = &unk_B2100;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)hideLoadingView
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[JSAFeedController hideLoadingView]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1BD28;
  v7[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1BD98;
      v5[3] = &unk_B2100;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)addWeakTriggerObserver:(id)observer :(id)a4
{
  observerCopy = observer;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[JSAFeedController addWeakTriggerObserver::]";
    v20 = 2048;
    selfCopy = self;
    v22 = 2112;
    v23 = observerCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %p: %@", buf, 0x20u);
  }

  v9 = [JSManagedValue managedValueWithValue:v7];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1BFB8;
  v15[3] = &unk_B2638;
  v15[4] = self;
  v10 = observerCopy;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v12 = objc_retainBlock(v15);
  if (v12)
  {
    if (+[NSThread isMainThread])
    {
      (v12[2])(v12);
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1C464;
      v13[3] = &unk_B2100;
      v14 = v12;
      dispatch_async(&_dispatch_main_q, v13);
    }
  }
}

- (void)notifyScrollViewReachedTheBottom
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1C530;
  v3[3] = &unk_B23B0;
  objc_copyWeak(&v4, &location);
  sub_81CF0(&self->super, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)notifyOnAppear
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_81E30;
  v3[3] = &unk_B23B0;
  objc_copyWeak(&v4, &location);
  sub_81CF0(&self->super, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)notifyDidAppear
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_81E70;
  v3[3] = &unk_B23B0;
  objc_copyWeak(&v4, &location);
  sub_81CF0(&self->super, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)notifyOnDisappear
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_81EB0;
  v3[3] = &unk_B23B0;
  objc_copyWeak(&v4, &location);
  sub_81CF0(&self->super, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)notifyInitialContentReady
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v8 = sub_1C978;
  v9 = &unk_B2508;
  selfCopy = self;
  v11 = &v12;
  v3 = v7;
  os_unfair_lock_lock_with_options();
  v8(v3);
  os_unfair_lock_unlock(&self->_didNotifyInitialContentReadyLock);

  if (*(v13 + 24) == 1)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1C99C;
    v4[3] = &unk_B23B0;
    objc_copyWeak(&v5, &location);
    sub_81CF0(&self->super, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)notifyParentCardWillDismissWithReason:(id)reason targetFeed:(id)feed
{
  reasonCopy = reason;
  feedCopy = feed;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1CB44;
  v10[3] = &unk_B2208;
  objc_copyWeak(&v13, &location);
  v8 = reasonCopy;
  v11 = v8;
  v9 = feedCopy;
  v12 = v9;
  sub_81CF0(&self->super, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)notifyAnalyticsVisibilityDidAppear
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_81EF0;
  v3[3] = &unk_B23B0;
  objc_copyWeak(&v4, &location);
  sub_81CF0(&self->super, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)notifyAnalyticsVisibilityWillDisappear
{
  dataSource = [(JSAFeedController *)self dataSource];
  v4 = [dataSource newAnalyticsSessionAssertionForFeedController:self];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1CE40;
  v6[3] = &unk_B2CB8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  sub_81CF0(&self->super, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)notifyOnMessageActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v5 = +[JSABridge sharedInstance];
  feed = [(JSAFeedController *)self feed];
  v8 = triggeredCopy;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  [v5 enqueueValueInvocation:feed method:@"onMessageActionTriggered" arguments:v7 file:@"JSAFeedController.m" line:915];
}

- (UIViewController)viewController
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[JSAFeedController viewController]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  dataSource = [(JSAFeedController *)self dataSource];
  v5 = [dataSource hostViewControllerForFeedController:self];

  return v5;
}

- (NSDictionary)metrics
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[JSAFeedController metrics]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  dataSource = [(JSAFeedController *)self dataSource];
  v5 = [dataSource metricsForFeedController:self];

  return v5;
}

- (BSUIDynamicValue)currentStackName
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[JSAFeedController currentStackName]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  dataSource = [(JSAFeedController *)self dataSource];
  v5 = [dataSource currentStackNameForFeedController:self];

  return v5;
}

- (BOOL)hasPresentingFeed
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[JSAFeedController hasPresentingFeed]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", &v7, 0x16u);
  }

  dataSource = [(JSAFeedController *)self dataSource];
  v5 = [dataSource isPresentedForFeedController:self];

  return v5;
}

- (id)analyticsTracker
{
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[JSAFeedController analyticsTracker]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %p", &v7, 0x16u);
  }

  dataSource = [(JSAFeedController *)self dataSource];
  v5 = [dataSource analyticsTrackerForFeedController:self];

  return v5;
}

- (void)setFeedBridged:(BOOL)bridged
{
  bridgedCopy = bridged;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[JSAFeedController setFeedBridged:]";
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  if (self->_feedBridged != bridgedCopy)
  {
    self->_feedBridged = bridgedCopy;
    if (bridgedCopy)
    {
      dispatch_activate(self->_access);
      v6 = +[JSABridge sharedInstance];
      bridgeCompletion = [(JSAFeedController *)self bridgeCompletion];
      feedBridged = [(JSAFeedController *)self feedBridged];
      if (feedBridged)
      {
        self = [(JSAFeedController *)self feed];
        isObject = [(JSAFeedController *)self isObject];
      }

      else
      {
        isObject = 0;
      }

      v10 = [NSNumber numberWithInt:isObject];
      v12 = v10;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v6 enqueueValueCall:bridgeCompletion arguments:v11 file:@"JSAFeedController.m" line:965];

      if (feedBridged)
      {
      }
    }
  }
}

- (void)hotReloadControllerWillReloadScript:(id)script completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D768;
  v5[3] = &unk_B2728;
  v5[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)tearDownWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[JSAFeedController tearDownWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %p", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = sub_199C0;
  v18 = sub_199D0;
  v19 = self->_feed;
  bridgeCompletion = self->_bridgeCompletion;
  self->_bridgeCompletion = 0;

  feed = self->_feed;
  self->_feed = 0;

  if (*(*&buf[8] + 40))
  {
    objc_initWeak(&location, self);
    v8 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1E29C;
    v11[3] = &unk_B3250;
    v13 = buf;
    objc_copyWeak(&v14, &location);
    v12 = completionCopy;
    dispatch_async(v8, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)_convertOrCreateViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = v8;
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1E7BC;
    block[3] = &unk_B2A60;
    v23 = completionCopy;
    v22 = v8;
    v10 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    objc_opt_class();
    v11 = BUDynamicCast();
    if (!v11)
    {
      v12 = JSALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_823F8(controllerCopy, v12);
      }
    }

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1E818;
    v15[3] = &unk_B32C8;
    objc_copyWeak(&v19, &location);
    v15[4] = self;
    v16 = v11;
    v17 = controllerCopy;
    v18 = completionCopy;
    v13 = completionCopy;
    v14 = v11;
    dispatch_async(&_dispatch_main_q, v15);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (JSAFeedControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (JSAFeedControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end