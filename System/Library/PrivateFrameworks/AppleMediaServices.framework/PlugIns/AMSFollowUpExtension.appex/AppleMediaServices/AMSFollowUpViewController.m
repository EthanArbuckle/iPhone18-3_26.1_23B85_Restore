@interface AMSFollowUpViewController
- (void)_dismiss;
- (void)_enqueueClearFollowUp;
- (void)_enqueueFollowUpAction;
- (void)_enqueueMetricsForAction;
- (void)_enqueuePromise:(id)a3;
- (void)_presentAccountViewController;
- (void)_presentEngagementAccountViewControllerWithBag:(id)a3;
- (void)_presentLegacyAccountViewController;
- (void)_waitForPromises;
- (void)accountPageViewControllerDidFinish:(id)a3;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSFollowUpViewController

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = AMSFollowUpViewController;
  [(AMSFollowUpViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(AMSFollowUpViewController *)self view];
  [v3 setOpaque:0];

  v4 = +[UIColor clearColor];
  v5 = [(AMSFollowUpViewController *)self view];
  [v5 setBackgroundColor:v4];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpVC", 0);
  [(AMSFollowUpViewController *)self setInternalQueue:v11];

  v12 = objc_alloc_init(NSMutableArray);
  [(AMSFollowUpViewController *)self setActivePromises:v12];

  v13 = objc_alloc_init(AMSFollowUp);
  [(AMSFollowUpViewController *)self setFollowUp:v13];

  v14 = [[AMSFollowUpItem alloc] initWithFollowUpItem:v10];
  [(AMSFollowUpViewController *)self setItem:v14];

  v15 = [[AMSFollowUpAction alloc] initWithItem:v10 action:v9];
  [(AMSFollowUpViewController *)self setAction:v15];

  v16 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [(AMSFollowUpViewController *)self item];
    v21 = [v20 logKey];
    *buf = 138543618;
    v40 = v18;
    v41 = 2114;
    v42 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing follow up", buf, 0x16u);
  }

  [(AMSFollowUpViewController *)self _enqueueFollowUpAction];
  [(AMSFollowUpViewController *)self _enqueueMetricsForAction];
  v22 = [(AMSFollowUpViewController *)self action];
  v23 = [v22 requiresFollowUpUI];

  v24 = +[AMSLogConfig sharedFollowUpConfig];
  v25 = v24;
  if (v23)
  {
    if (!v24)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [(AMSFollowUpViewController *)self item];
      v30 = [v29 logKey];
      *buf = 138543618;
      v40 = v27;
      v41 = 2114;
      v42 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting UI", buf, 0x16u);
    }

    v8[2](v8, 0);
  }

  else
  {
    if (!v24)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v31 = [v25 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = v32;
      v34 = [(AMSFollowUpViewController *)self item];
      v35 = [v34 logKey];
      *buf = 138543618;
      v40 = v32;
      v41 = 2114;
      v42 = v35;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requesting headless execution", buf, 0x16u);
    }

    v36 = [(AMSFollowUpViewController *)self internalQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100001458;
    v37[3] = &unk_100008220;
    v37[4] = self;
    v38 = v8;
    dispatch_async(v36, v37);
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSFollowUp);
  v5 = [v4 pendingFollowUps];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 thenWithBlock:&stru_100008260];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001734;
    v8[3] = &unk_100008288;
    v9 = v3;
    [v7 addFinishBlock:v8];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

- (void)_enqueueClearFollowUp
{
  v3 = [(AMSFollowUpViewController *)self followUp];
  v4 = [(AMSFollowUpViewController *)self item];
  v5 = [v4 identifier];
  v6 = [(AMSFollowUpViewController *)self item];
  v7 = [v6 account];
  v8 = [v3 clearFollowUpWithIdentifier:v5 account:v7];

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
  v3 = [(AMSFollowUpViewController *)self action];
  v4 = +[AMSFollowUpViewController _bag];
  v5 = [(AMSFollowUpViewController *)self item];
  v6 = [v5 account];
  v7 = [v3 performActionsWithBag:v4 account:v6];

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
  v3 = [(AMSFollowUpViewController *)self action];
  v4 = +[AMSFollowUpViewController _bag];
  v5 = [v3 postMetricsWithBag:v4];

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

- (void)_enqueuePromise:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpViewController *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000021B8;
  v7[3] = &unk_100008300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_presentAccountViewController
{
  v3 = +[AMSUIEngagementTask createBagForSubProfile];
  v4 = [(AMSFollowUpViewController *)self action];
  v5 = [v4 url];

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

- (void)_presentEngagementAccountViewControllerWithBag:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSEngagementRequest);
  v6 = [(AMSFollowUpViewController *)self item];
  v7 = [v6 account];
  if (v7)
  {
    [v5 setAccount:v7];
  }

  else
  {
    v8 = +[ACAccountStore ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];
    [v5 setAccount:v9];
  }

  v10 = [(AMSFollowUpViewController *)self action];
  v11 = [v10 url];
  [v5 setURL:v11];

  [v5 setClientData:&off_100008578];
  [v5 setMetricsOverlay:&off_1000085A0];
  [v5 setFailOnDismiss:1];
  v12 = [[AMSUIEngagementTask alloc] initWithRequest:v5 bag:v4 presentingViewController:self];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100002794;
  v16[4] = sub_1000027A4;
  v13 = self;
  v17 = v13;
  v14 = [v12 presentEngagement];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000027AC;
  v15[3] = &unk_100008350;
  v15[4] = v13;
  v15[5] = v16;
  [v14 addFinishBlock:v15];

  _Block_object_dispose(v16, 8);
}

- (void)_dismiss
{
  v3 = [(AMSFollowUpViewController *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B40;
  block[3] = &unk_100008378;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_waitForPromises
{
  v3 = [(AMSFollowUpViewController *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(AMSFollowUpViewController *)self activePromises];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 performSelector:"waitUntilFinished"];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc_init(NSMutableArray);
  [(AMSFollowUpViewController *)self setActivePromises:v10];
}

- (void)_presentLegacyAccountViewController
{
  v3 = [(AMSFollowUpViewController *)self action];
  v4 = [v3 url];

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

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003084;
  v5[3] = &unk_1000083A0;
  objc_copyWeak(&v6, &location);
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end