@interface AMSUIInlineDialogViewController
- (AMSUIAppearance)preferredAppearance;
- (AMSUIInlineDialogViewController)init;
- (AMSUIInlineDialogViewController)initWithRequest:(id)request;
- (AMSUIInlineDialogViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag account:(id)account context:(id)context;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement context:(id)context;
- (AMSUIMessageViewControllerDelegate)delegate;
- (BOOL)messageViewController:(id)controller shouldEnqueueMetricsForDialogResult:(id)result;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGPoint)anchorPoint;
- (id)_findDialogRequestInResponse:(id)response;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_didFailToFetchWithError:(id)error;
- (void)_didFetchResponse:(id)response;
- (void)_setContentController:(id)controller;
- (void)_setDialogRequest:(id)request;
- (void)_setDialogRequestBanner:(id)banner;
- (void)_setDialogRequestBubbleTip:(id)tip;
- (void)_setDialogRequestDashboardMessage:(id)message;
- (void)_setupEngagement;
- (void)_tearDownContentView;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)enqueueImpressionMetrics;
- (void)loadView;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)setImpressionsReportingFrequency:(unint64_t)frequency;
- (void)setPreferredAppearance:(id)appearance;
@end

@implementation AMSUIInlineDialogViewController

- (AMSUIInlineDialogViewController)init
{
  v7.receiver = self;
  v7.super_class = AMSUIInlineDialogViewController;
  v2 = [(AMSUIInlineDialogViewController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_impressionsReportingFrequency = 1;
    v4 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    loadPromise = v3->_loadPromise;
    v3->_loadPromise = v4;

    [(AMSBinaryPromise *)v3->_loadPromise finishWithSuccess];
    v3->_shouldAutomaticallyReportMetrics = 1;
  }

  return v3;
}

- (AMSUIInlineDialogViewController)initWithRequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = AMSUIInlineDialogViewController;
  v6 = [(AMSUIInlineDialogViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogRequest, request);
    v7->_impressionsReportingFrequency = 1;
    v7->_shouldAutomaticallyReportMetrics = 1;
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized with a dialog request, will not listen for engagement pushes.", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (AMSUIInlineDialogViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  bagCopy = bag;
  accountCopy = account;
  v11 = [(AMSUIInlineDialogViewController *)self initWithRequest:request];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_bag, bag);
  }

  return v12;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  placementCopy = placement;
  v18.receiver = self;
  v18.super_class = AMSUIInlineDialogViewController;
  v9 = [(AMSUIInlineDialogViewController *)&v18 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C8D8]);
    engagement = v9->_engagement;
    v9->_engagement = v10;

    v9->_impressionsReportingFrequency = 1;
    objc_storeStrong(&v9->_placement, placement);
    objc_storeStrong(&v9->_serviceType, type);
    v9->_shouldAutomaticallyReportMetrics = 1;
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138544130;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = placementCopy;
      v25 = 2114;
      v26 = typeCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized (placement: %{public}@, serviceType: %{public}@)", buf, 0x2Au);
    }

    [(AMSUIInlineDialogViewController *)v9 _setupEngagement];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement context:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  placementCopy = placement;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = AMSUIInlineDialogViewController;
  v12 = [(AMSUIInlineDialogViewController *)&v21 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E698C8D8]);
    engagement = v12->_engagement;
    v12->_engagement = v13;

    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v12->_placement, placement);
    objc_storeStrong(&v12->_serviceType, type);
    v12->_shouldAutomaticallyReportMetrics = 1;
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138544130;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = placementCopy;
      v28 = 2114;
      v29 = typeCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized (placement: %{public}@, serviceType: %{public}@)", buf, 0x2Au);
    }

    [(AMSUIInlineDialogViewController *)v12 _setupEngagement];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag account:(id)account context:(id)context
{
  bagCopy = bag;
  accountCopy = account;
  v15 = [(AMSUIInlineDialogViewController *)self initWithServiceType:type placement:placement context:context];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_bag, bag);
  }

  return v16;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_messageViewController_enqueueEventWithFields_inTopic_ == selector)
  {
    delegate = [(AMSUIInlineDialogViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      return 1;
    }
  }

  if (sel_messageViewController_enqueueActionEventWithFields_inTopic_ == selector)
  {
    delegate2 = [(AMSUIInlineDialogViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      return 1;
    }
  }

  v10.receiver = self;
  v10.super_class = AMSUIInlineDialogViewController;
  return [(AMSUIInlineDialogViewController *)&v10 respondsToSelector:selector];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (sel_messageViewController_enqueueActionEventWithFields_inTopic_ == selector || sel_messageViewController_enqueueEventWithFields_inTopic_ == selector)
  {
    delegate = [(AMSUIInlineDialogViewController *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (void)loadView
{
  v3 = [AMSUIInlineDialogView alloc];
  v4 = [(AMSUICommonView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUIInlineDialogViewController *)self setView:v4];

  dialogRequest = [(AMSUIInlineDialogViewController *)self dialogRequest];

  if (dialogRequest)
  {
    dialogRequest2 = [(AMSUIInlineDialogViewController *)self dialogRequest];
    [(AMSUIInlineDialogViewController *)self _setDialogRequest:dialogRequest2];
  }
}

- (void)_setDialogRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([requestCopy style] == 3)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Banner", &v19, 0x16u);
    }

    [(AMSUIInlineDialogViewController *)self _setDialogRequestBanner:requestCopy];
  }

  else
  {
    style = [requestCopy style];
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    mEMORY[0x1E698C968]3 = mEMORY[0x1E698C968]2;
    if (style == 6)
    {
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v19 = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Dashboard Message", &v19, 0x16u);
      }

      [(AMSUIInlineDialogViewController *)self _setDialogRequestDashboardMessage:requestCopy];
    }

    else
    {
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Bubble Tip", &v19, 0x16u);
      }

      [(AMSUIInlineDialogViewController *)self _setDialogRequestBubbleTip:requestCopy];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setDialogRequestBanner:(id)banner
{
  bannerCopy = banner;
  v5 = [AMSUIBannerMessageViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  account = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIBannerMessageViewController *)v5 initWithRequest:bannerCopy bag:v6 account:account];

  preferredAppearance = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = preferredAppearance;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIBannerMessageViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setDialogRequestBubbleTip:(id)tip
{
  tipCopy = tip;
  v5 = [AMSUIBubbleTipViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  account = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIBubbleTipViewController *)v5 initWithRequest:tipCopy bag:v6 account:account];

  preferredAppearance = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = preferredAppearance;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIBubbleTipViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setDialogRequestDashboardMessage:(id)message
{
  messageCopy = message;
  v5 = [AMSUIDashboardMessageViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  account = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIDashboardMessageViewController *)v5 initWithRequest:messageCopy bag:v6 account:account];

  preferredAppearance = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = preferredAppearance;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIDashboardMessageViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setContentController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];

  if (childContentController)
  {
    childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
    viewIfLoaded = [childContentController2 viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    childContentController3 = [(AMSUIInlineDialogViewController *)self childContentController];
    [childContentController3 removeFromParentViewController];

    [(AMSUIInlineDialogViewController *)self setChildContentController:0];
  }

  if (controllerCopy)
  {
    [controllerCopy setShouldAutomaticallyReportMetrics:{-[AMSUIInlineDialogViewController shouldAutomaticallyReportMetrics](self, "shouldAutomaticallyReportMetrics")}];
    [controllerCopy setImpressionsReportingFrequency:{-[AMSUIInlineDialogViewController impressionsReportingFrequency](self, "impressionsReportingFrequency")}];
    [(AMSUIInlineDialogViewController *)self setChildContentController:controllerCopy];
    objc_initWeak(&location, controllerCopy);
    loadPromise = [controllerCopy loadPromise];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AMSUIInlineDialogViewController__setContentController___block_invoke;
    v10[3] = &unk_1E7F24EF0;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    [loadPromise addFinishBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __57__AMSUIInlineDialogViewController__setContentController___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__AMSUIInlineDialogViewController__setContentController___block_invoke_2;
  v2[3] = &unk_1E7F24730;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __57__AMSUIInlineDialogViewController__setContentController___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) childContentController];

    v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    v5 = v4;
    if (v3 == WeakRetained)
    {
      if (!v4)
      {
        v5 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v13 = [v5 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        *buf = 138543618;
        v35 = v15;
        v36 = 2114;
        v37 = v16;
        _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Child controller loaded, adding to view heiarchy", buf, 0x16u);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = [*(a1 + 32) view];
      v18 = [v17 subviews];

      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      [*(a1 + 32) addChildViewController:WeakRetained];
      v23 = [*(a1 + 32) view];
      v24 = [WeakRetained view];
      [v23 addSubview:v24];

      v5 = [*(a1 + 32) delegate];
      v25 = *(a1 + 32);
      v6 = [v25 view];
      [v6 bounds];
      [v5 messageViewController:v25 didUpdateSize:{v26, v27}];
    }

    else
    {
      if (!v4)
      {
        v5 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        *buf = 138543618;
        v35 = v8;
        v36 = 2114;
        v37 = v9;
        v10 = "%{public}@: [%{public}@] Child controller loaded but a different child is being presented";
LABEL_11:
        _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      v35 = v12;
      v36 = 2114;
      v37 = v9;
      v10 = "%{public}@: [%{public}@] Child controller loaded but disappeared";
      goto LABEL_11;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownContentView
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];

  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (childContentController)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v18 = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Tearing down content", &v18, 0x16u);
    }

    childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
    viewIfLoaded = [childContentController2 viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    childContentController3 = [(AMSUIInlineDialogViewController *)self childContentController];
    [childContentController3 removeFromParentViewController];

    [(AMSUIInlineDialogViewController *)self setChildContentController:0];
    view = [(AMSUIInlineDialogViewController *)self view];
    [view setNeedsLayout];

    mEMORY[0x1E698C968]2 = [(AMSUIInlineDialogViewController *)self delegate];
    view2 = [(AMSUIInlineDialogViewController *)self view];
    [view2 frame];
    [mEMORY[0x1E698C968]2 messageViewController:self didUpdateSize:{v14, 0.0}];
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    view2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(view2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_1BB036000, view2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No content to teardown.", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)enqueueImpressionMetrics
{
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];
  [childContentController enqueueImpressionMetrics];
}

- (void)setPreferredAppearance:(id)appearance
{
  appearanceCopy = appearance;
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_7:
      childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
      [childContentController2 setPreferredAppearance:appearanceCopy];
      goto LABEL_8;
    }
  }

  else
  {
  }

  childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (AMSUIAppearance)preferredAppearance
{
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
LABEL_4:
    preferredAppearance = [childContentController2 preferredAppearance];

    goto LABEL_6;
  }

  preferredAppearance = 0;
LABEL_6:

  return preferredAppearance;
}

- (void)setImpressionsReportingFrequency:(unint64_t)frequency
{
  childContentController = [(AMSUIInlineDialogViewController *)self childContentController];

  if (childContentController)
  {
    childContentController2 = [(AMSUIInlineDialogViewController *)self childContentController];
    [childContentController2 setImpressionsReportingFrequency:frequency];
  }

  self->_impressionsReportingFrequency = frequency;
}

- (void)_setupEngagement
{
  v38 = *MEMORY[0x1E69E9840];
  engagement = [(AMSUIInlineDialogViewController *)self engagement];
  if (!engagement)
  {
LABEL_13:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  v30 = engagement;
  serviceType = [(AMSUIInlineDialogViewController *)self serviceType];
  if (serviceType)
  {
    v5 = serviceType;
    placement = [(AMSUIInlineDialogViewController *)self placement];

    if (placement)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        *buf = 138543618;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing initial message event request", buf, 0x16u);
      }

      v11 = objc_alloc(MEMORY[0x1E698C8E0]);
      serviceType2 = [(AMSUIInlineDialogViewController *)self serviceType];
      v13 = objc_alloc(MEMORY[0x1E698C900]);
      placement2 = [(AMSUIInlineDialogViewController *)self placement];
      context = [(AMSUIInlineDialogViewController *)self context];
      v16 = [v13 initWithPlacement:placement2 context:context];
      v33 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v18 = [v11 initWithServiceType:serviceType2 placementInfo:v17];

      engagement2 = [(AMSUIInlineDialogViewController *)self engagement];
      v20 = [engagement2 enqueueMessageEvent:v18];

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke;
      v32[3] = &unk_1E7F24F18;
      v32[4] = self;
      [v20 addSuccessBlock:v32];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke_2;
      v31[3] = &unk_1E7F24410;
      v31[4] = self;
      [v20 addErrorBlock:v31];
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        *buf = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning to observe for updates", buf, 0x16u);
      }

      engagement3 = [(AMSUIInlineDialogViewController *)self engagement];
      placement3 = [(AMSUIInlineDialogViewController *)self placement];
      serviceType3 = [(AMSUIInlineDialogViewController *)self serviceType];
      [engagement3 addObserver:self placement:placement3 serviceType:serviceType3];
    }

    goto LABEL_13;
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully obtained response", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke_22;
  v11[3] = &unk_1E7F243C0;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Successfully obtained response", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__AMSUIInlineDialogViewController__setupEngagement__block_invoke_24;
  v11[3] = &unk_1E7F243C0;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_findDialogRequestInResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  placement = [(AMSUIInlineDialogViewController *)self placement];
  placement2 = [(AMSUIInlineDialogViewController *)self placement];

  if (placement2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    messageActions = [responseCopy messageActions];
    v8 = [messageActions countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(messageActions);
        }

        placementsMap = [*(*(&v18 + 1) + 8 * v11) placementsMap];
        v13 = [placementsMap objectForKeyedSubscript:placement];
        firstObject = [v13 firstObject];
        makeDialogRequest = [firstObject makeDialogRequest];

        if (makeDialogRequest)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [messageActions countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      makeDialogRequest = 0;
    }
  }

  else
  {
    makeDialogRequest = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return makeDialogRequest;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698C968];
  resultCopy = result;
  sharedMessagingUIConfig = [v5 sharedMessagingUIConfig];
  if (!sharedMessagingUIConfig)
  {
    sharedMessagingUIConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedMessagingUIConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    placement = [(AMSUIInlineDialogViewController *)self placement];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2112;
    v19 = placement;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] action for %@ was pushed", &v14, 0x20u);
  }

  delegate = [(AMSUIInlineDialogViewController *)self delegate];
  [delegate messageViewController:self didSelectActionWithDialogResult:resultCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  delegate = [(AMSUIInlineDialogViewController *)self delegate];
  [delegate messageViewController:self didUpdateSize:{width, height}];
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(AMSUIInlineDialogViewController *)self delegate];
  [delegate messageViewController:self didFailWithError:errorCopy];
}

- (BOOL)messageViewController:(id)controller shouldEnqueueMetricsForDialogResult:(id)result
{
  resultCopy = result;
  delegate = [(AMSUIInlineDialogViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AMSUIInlineDialogViewController *)self delegate];
    shouldAutomaticallyReportMetrics = [delegate2 messageViewController:self shouldEnqueueMetricsForDialogResult:resultCopy];
  }

  else
  {
    shouldAutomaticallyReportMetrics = [(AMSUIInlineDialogViewController *)self shouldAutomaticallyReportMetrics];
  }

  return shouldAutomaticallyReportMetrics;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  placementCopy = placement;
  typeCopy = type;
  serviceType = [(AMSUIInlineDialogViewController *)self serviceType];
  v13 = [serviceType isEqualToString:typeCopy];

  if (v13)
  {
    placement = [(AMSUIInlineDialogViewController *)self placement];
    v15 = [placement isEqualToString:placementCopy];

    if (v15)
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
      if (requestCopy)
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          placement2 = [(AMSUIInlineDialogViewController *)self placement];
          *buf = 138543874;
          v39 = v19;
          v40 = 2114;
          v41 = v20;
          v42 = 2112;
          v43 = placement2;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Message for %@ was pushed to", buf, 0x20u);
        }

        delegate = [(AMSUIInlineDialogViewController *)self delegate];
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_30;
          block[3] = &unk_1E7F243C0;
          block[4] = self;
          v36 = requestCopy;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_2;
        v33[3] = &unk_1E7F243C0;
        v33[4] = self;
        v34 = requestCopy;
        dispatch_async(MEMORY[0x1E69E96A0], v33);
      }

      else
      {
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = AMSLogKey();
          placement3 = [(AMSUIInlineDialogViewController *)self placement];
          *buf = 138543874;
          v39 = v30;
          v40 = 2114;
          v41 = v31;
          v42 = 2112;
          v43 = placement3;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Nil message for %@ was pushed", buf, 0x20u);
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke;
        v37[3] = &unk_1E7F242D0;
        v37[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v37);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968]3)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    v26 = objc_opt_class();
    v27 = AMSLogKey();
    *buf = 138543618;
    v39 = v26;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Ignoring dialog pushed due to wrong placement and service type", buf, 0x16u);
  }

LABEL_17:
  v28 = *MEMORY[0x1E69E9840];
}

void __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageViewController:*(a1 + 32) didLoadDialogRequest:*(a1 + 40)];
}

- (void)_didFetchResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIInlineDialogViewController *)self _findDialogRequestInResponse:responseCopy];

  [(AMSUIInlineDialogViewController *)self setDialogRequest:v5];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v5)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found message to display", &v19, 0x16u);
    }

    viewIfLoaded = [(AMSUIInlineDialogViewController *)self viewIfLoaded];

    if (viewIfLoaded)
    {
      [(AMSUIInlineDialogViewController *)self _setDialogRequest:v5];
    }

    delegate = [(AMSUIInlineDialogViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(AMSUIInlineDialogViewController *)self delegate];
      [delegate2 messageViewController:self didLoadDialogRequest:v5];
    }
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No message found to display", &v19, 0x16u);
    }

    [(AMSUIInlineDialogViewController *)self _tearDownContentView];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_didFailToFetchWithError:(id)error
{
  errorCopy = error;
  delegate = [(AMSUIInlineDialogViewController *)self delegate];
  [delegate messageViewController:self didFailWithError:errorCopy];
}

- (CGPoint)anchorPoint
{
  objc_copyStruct(v4, &self->_anchorPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (AMSUIMessageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end