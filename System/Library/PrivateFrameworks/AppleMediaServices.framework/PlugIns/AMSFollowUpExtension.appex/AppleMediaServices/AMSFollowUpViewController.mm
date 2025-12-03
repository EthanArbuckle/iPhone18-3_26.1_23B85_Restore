@interface AMSFollowUpViewController
- (void)_dismiss;
- (void)_enqueueClearFollowUp;
- (void)_enqueueFollowUpAction;
- (void)_enqueueMetricsForAction;
- (void)_enqueuePromise:(id)promise;
- (void)_presentAccountViewController;
- (void)_presentEngagementAccountViewControllerWithBag:(id)bag;
- (void)_presentLegacyAccountViewController;
- (void)_waitForPromises;
- (void)accountPageViewControllerDidFinish:(id)finish;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSFollowUpViewController

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = AMSFollowUpViewController;
  [(AMSFollowUpViewController *)&v6 viewWillLayoutSubviews];
  view = [(AMSFollowUpViewController *)self view];
  [view setOpaque:0];

  v4 = +[UIColor clearColor];
  view2 = [(AMSFollowUpViewController *)self view];
  [view2 setBackgroundColor:v4];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  itemCopy = item;
  v11 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpVC", 0);
  [(AMSFollowUpViewController *)self setInternalQueue:v11];

  v12 = objc_alloc_init(NSMutableArray);
  [(AMSFollowUpViewController *)self setActivePromises:v12];

  v13 = objc_alloc_init(AMSFollowUp);
  [(AMSFollowUpViewController *)self setFollowUp:v13];

  v14 = [[AMSFollowUpItem alloc] initWithFollowUpItem:itemCopy];
  [(AMSFollowUpViewController *)self setItem:v14];

  v15 = [[AMSFollowUpAction alloc] initWithItem:itemCopy action:actionCopy];
  [(AMSFollowUpViewController *)self setAction:v15];

  v16 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    item = [(AMSFollowUpViewController *)self item];
    logKey = [item logKey];
    *buf = 138543618;
    v40 = v18;
    v41 = 2114;
    v42 = logKey;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing follow up", buf, 0x16u);
  }

  [(AMSFollowUpViewController *)self _enqueueFollowUpAction];
  [(AMSFollowUpViewController *)self _enqueueMetricsForAction];
  action = [(AMSFollowUpViewController *)self action];
  requiresFollowUpUI = [action requiresFollowUpUI];

  v24 = +[AMSLogConfig sharedFollowUpConfig];
  v25 = v24;
  if (requiresFollowUpUI)
  {
    if (!v24)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = v27;
      item2 = [(AMSFollowUpViewController *)self item];
      logKey2 = [item2 logKey];
      *buf = 138543618;
      v40 = v27;
      v41 = 2114;
      v42 = logKey2;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting UI", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (!v24)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = v32;
      item3 = [(AMSFollowUpViewController *)self item];
      logKey3 = [item3 logKey];
      *buf = 138543618;
      v40 = v32;
      v41 = 2114;
      v42 = logKey3;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting headless execution", buf, 0x16u);
    }

    internalQueue = [(AMSFollowUpViewController *)self internalQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100001458;
    v37[3] = &unk_100008220;
    v37[4] = self;
    v38 = completionCopy;
    dispatch_async(internalQueue, v37);
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(AMSFollowUp);
  pendingFollowUps = [v4 pendingFollowUps];
  v6 = pendingFollowUps;
  if (pendingFollowUps)
  {
    v7 = [pendingFollowUps thenWithBlock:&stru_100008260];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001734;
    v8[3] = &unk_100008288;
    v9 = handlerCopy;
    [v7 addFinishBlock:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_enqueueClearFollowUp
{
  followUp = [(AMSFollowUpViewController *)self followUp];
  item = [(AMSFollowUpViewController *)self item];
  identifier = [item identifier];
  item2 = [(AMSFollowUpViewController *)self item];
  account = [item2 account];
  v8 = [followUp clearFollowUpWithIdentifier:identifier account:account];

  [(AMSFollowUpViewController *)self _enqueuePromise:v8];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001878;
  v9[3] = &unk_1000082B0;
  v9[4] = self;
  [v8 addFinishBlock:v9];
}

- (void)_enqueueFollowUpAction
{
  action = [(AMSFollowUpViewController *)self action];
  v4 = +[AMSFollowUpViewController _bag];
  item = [(AMSFollowUpViewController *)self item];
  account = [item account];
  v7 = [action performActionsWithBag:v4 account:account];

  [(AMSFollowUpViewController *)self _enqueuePromise:v7];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001B94;
  v8[3] = &unk_1000082B0;
  v8[4] = self;
  [v7 addFinishBlock:v8];
}

- (void)_enqueueMetricsForAction
{
  action = [(AMSFollowUpViewController *)self action];
  v4 = +[AMSFollowUpViewController _bag];
  v5 = [action postMetricsWithBag:v4];

  if (v5)
  {
    [(AMSFollowUpViewController *)self _enqueuePromise:v5];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001E84;
    v6[3] = &unk_1000082D8;
    v6[4] = self;
    [v5 addFinishBlock:v6];
  }
}

- (void)_enqueuePromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(AMSFollowUpViewController *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000021B8;
  v7[3] = &unk_100008300;
  v7[4] = self;
  v8 = promiseCopy;
  v6 = promiseCopy;
  dispatch_async(internalQueue, v7);
}

- (void)_presentAccountViewController
{
  v3 = +[AMSUIEngagementTask createBagForSubProfile];
  action = [(AMSFollowUpViewController *)self action];
  v5 = [action url];

  v6 = [[AMSURLParser alloc] initWithBag:v3];
  v7 = [v6 typeForURL:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002314;
  v9[3] = &unk_100008328;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 addFinishBlock:v9];
}

- (void)_presentEngagementAccountViewControllerWithBag:(id)bag
{
  bagCopy = bag;
  v5 = objc_alloc_init(AMSEngagementRequest);
  item = [(AMSFollowUpViewController *)self item];
  account = [item account];
  if (account)
  {
    [v5 setAccount:account];
  }

  else
  {
    v8 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v8 ams_activeiTunesAccount];
    [v5 setAccount:ams_activeiTunesAccount];
  }

  action = [(AMSFollowUpViewController *)self action];
  v11 = [action url];
  [v5 setURL:v11];

  [v5 setClientData:&off_100008578];
  [v5 setMetricsOverlay:&off_1000085A0];
  [v5 setFailOnDismiss:1];
  v12 = [[AMSUIEngagementTask alloc] initWithRequest:v5 bag:bagCopy presentingViewController:self];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100002794;
  v16[4] = sub_1000027A4;
  selfCopy = self;
  v17 = selfCopy;
  presentEngagement = [v12 presentEngagement];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000027AC;
  v15[3] = &unk_100008350;
  v15[4] = selfCopy;
  v15[5] = v16;
  [presentEngagement addFinishBlock:v15];

  _Block_object_dispose(v16, 8);
}

- (void)_dismiss
{
  internalQueue = [(AMSFollowUpViewController *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B40;
  block[3] = &unk_100008378;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_waitForPromises
{
  internalQueue = [(AMSFollowUpViewController *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  activePromises = [(AMSFollowUpViewController *)self activePromises];
  v5 = [activePromises countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activePromises);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 performSelector:"waitUntilFinished"];
        }
      }

      v6 = [activePromises countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc_init(NSMutableArray);
  [(AMSFollowUpViewController *)self setActivePromises:v10];
}

- (void)_presentLegacyAccountViewController
{
  action = [(AMSFollowUpViewController *)self action];
  v4 = [action url];

  v5 = [objc_alloc(off_10000C6E8()) initWithAccountURL:v4];
  [v5 setDelegate:self];
  [(AMSFollowUpViewController *)self setAccountViewController:v5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002DB0;
  block[3] = &unk_100008378;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003084;
  v5[3] = &unk_1000083A0;
  objc_copyWeak(&v6, &location);
  [finishCopy dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end