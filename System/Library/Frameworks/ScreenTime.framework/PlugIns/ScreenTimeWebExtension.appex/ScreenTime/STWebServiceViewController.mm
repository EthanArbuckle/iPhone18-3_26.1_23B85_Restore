@interface STWebServiceViewController
+ (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)sharedLimiter;
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (BOOL)URLIsBlocked;
- (STWebServiceViewController)initWithCoder:(id)a3;
- (STWebServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_incrementPolicyRequestCountAndReportURLIsBlocked:(BOOL)a3;
- (void)_reportURLIsBlocked:(BOOL)a3 withDelay:(double)a4;
- (void)_requestPolicyForCurrentURLWithReplyHandler:(id)a3;
- (void)_requestPolicyForURL:(id)a3 replyHandler:(id)a4;
- (void)_stWebServiceViewControllerCommonInit;
- (void)_startRecordingUsageForURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 usageState:(int64_t)a6 replyHandler:(id)a7;
- (void)_stopRecordingUsage;
- (void)changeUsageState:(int64_t)a3 replyHandler:(id)a4;
- (void)setURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 usageState:(int64_t)a6 replyHandler:(id)a7;
- (void)viewDidLayoutSubviews;
@end

@implementation STWebServiceViewController

- (STWebServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = STWebServiceViewController;
  v4 = [(STWebServiceViewController *)&v6 initWithNibName:a3 bundle:a4];
  [(STWebServiceViewController *)v4 _stWebServiceViewControllerCommonInit];
  return v4;
}

- (STWebServiceViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWebServiceViewController;
  v3 = [(STWebServiceViewController *)&v5 initWithCoder:a3];
  [(STWebServiceViewController *)v3 _stWebServiceViewControllerCommonInit];
  return v3;
}

- (void)_stWebServiceViewControllerCommonInit
{
  clientBundleIdentifier = self->_clientBundleIdentifier;
  self->_clientBundleIdentifier = @"com.apple.ScreenTime.ScreenTimeWebExtension";

  objc_initWeak(&location, self);
  v4 = [DMFWebsitePolicyMonitor alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100001ED8;
  v12 = &unk_10000C428;
  objc_copyWeak(&v13, &location);
  v5 = [v4 initWithPolicyChangeHandler:&v9];
  websitePolicyMonitor = self->_websitePolicyMonitor;
  self->_websitePolicyMonitor = v5;

  v7 = [STBlockingViewController newTranslucentBlockingViewController:v9];
  blockingViewController = self->_blockingViewController;
  self->_blockingViewController = v7;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (id)_remoteViewControllerInterface
{
  v2 = +[STWebService newDelegateInterface];

  return v2;
}

+ (id)_exportedInterface
{
  v2 = +[STWebService newServiceInterface];

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = STWebServiceViewController;
  [(STWebServiceViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(STWebServiceViewController *)self view];
  [v3 bounds];
  v4 = CGRectGetHeight(v7) / 6.0;

  v5 = [(STWebServiceViewController *)self blockingViewController];
  [v5 setAdditionalSafeAreaInsets:{0.0, 0.0, v4, 0.0}];
}

- (void)_stopRecordingUsage
{
  v2 = [(STWebServiceViewController *)self webpageUsage];
  [v2 changeState:0 completionHandler:&stru_10000C468];
}

- (void)setURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 usageState:(int64_t)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  [(STWebServiceViewController *)self setClientBundleIdentifier:v13];
  v16 = [(STWebServiceViewController *)self webpageUsage];
  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000022BC;
    v17[3] = &unk_10000C490;
    v17[4] = self;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v22 = a6;
    v21 = v15;
    [v16 changeState:0 completionHandler:v17];
  }

  else
  {
    [(STWebServiceViewController *)self _startRecordingUsageForURL:v12 bundleIdentifier:v13 profileIdentifier:v14 usageState:a6 replyHandler:v15];
  }
}

- (void)changeUsageState:(int64_t)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = [(STWebServiceViewController *)self webpageUsage];
  [v7 changeState:a3 completionHandler:v6];
}

- (void)_startRecordingUsageForURL:(id)a3 bundleIdentifier:(id)a4 profileIdentifier:(id)a5 usageState:(int64_t)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  [(STWebServiceViewController *)self setClientBundleIdentifier:v13];
  if (v12)
  {
    v16 = [USWebpageUsage alloc];
    [(STWebServiceViewController *)self _hostAuditToken];
    v17 = [v16 initWithURL:v12 bundleIdentifier:v13 profileIdentifier:v14 auditToken:v24];
    [(STWebServiceViewController *)self setWebpageUsage:v17];
    if ((a6 - 1) >= 2)
    {
      if (!a6)
      {
        [(STWebServiceViewController *)self _requestPolicyForURL:v12 replyHandler:v15];
      }
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100002554;
      v21[3] = &unk_10000C4B8;
      v21[4] = self;
      v22 = v12;
      v23 = v15;
      [v17 changeState:a6 completionHandler:v21];
    }
  }

  else
  {
    [(STWebServiceViewController *)self setWebpageUsage:0];
    v18 = +[NSOperationQueue mainQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002578;
    v19[3] = &unk_10000C4E0;
    v19[4] = self;
    v20 = v15;
    [v18 addOperationWithBlock:v19];
  }
}

- (void)_requestPolicyForURL:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STWebServiceViewController *)self websitePolicyMonitor];
  v16 = v6;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026BC;
  v12[3] = &unk_10000C530;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v8 requestPoliciesForWebsites:v9 completionHandler:v12];
}

- (void)_incrementPolicyRequestCountAndReportURLIsBlocked:(BOOL)a3
{
  v5 = [objc_opt_class() sharedLimiter];
  v6 = [(STWebServiceViewController *)self clientBundleIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002994;
  v7[3] = &unk_10000C580;
  v7[4] = self;
  v8 = a3;
  [v5 incrementRequestCountForBundleIdentifier:v6 completionHandler:v7];
}

- (void)_reportURLIsBlocked:(BOOL)a3 withDelay:(double)a4
{
  if (!+[NSThread isMainThread])
  {
    sub_1000060AC(a2, self);
  }

  v8 = [(STWebServiceViewController *)self reportURLIsBlockedTimer];
  [v8 invalidate];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002BF8;
  v10[3] = &unk_10000C5A8;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:a4];
  [(STWebServiceViewController *)self setReportURLIsBlockedTimer:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)sharedLimiter
{
  if (qword_100010DD8[0] != -1)
  {
    sub_1000061A0();
  }

  v3 = qword_100010DD0;

  return v3;
}

- (BOOL)URLIsBlocked
{
  v3 = [(STWebServiceViewController *)self childViewControllers];
  v4 = [(STWebServiceViewController *)self blockingViewController];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (void)_requestPolicyForCurrentURLWithReplyHandler:(id)a3
{
  v6 = a3;
  v4 = [(STWebServiceViewController *)self webpageUsage];
  v5 = [v4 URL];

  if (v5)
  {
    [(STWebServiceViewController *)self _requestPolicyForURL:v5 replyHandler:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

@end