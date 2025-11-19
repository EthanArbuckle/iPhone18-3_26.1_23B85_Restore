@interface AMSUIInlineDialogViewController
- (AMSUIAppearance)preferredAppearance;
- (AMSUIInlineDialogViewController)init;
- (AMSUIInlineDialogViewController)initWithRequest:(id)a3;
- (AMSUIInlineDialogViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5 account:(id)a6 context:(id)a7;
- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4 context:(id)a5;
- (AMSUIMessageViewControllerDelegate)delegate;
- (BOOL)messageViewController:(id)a3 shouldEnqueueMetricsForDialogResult:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGPoint)anchorPoint;
- (id)_findDialogRequestInResponse:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_didFailToFetchWithError:(id)a3;
- (void)_didFetchResponse:(id)a3;
- (void)_setContentController:(id)a3;
- (void)_setDialogRequest:(id)a3;
- (void)_setDialogRequestBanner:(id)a3;
- (void)_setDialogRequestBubbleTip:(id)a3;
- (void)_setDialogRequestDashboardMessage:(id)a3;
- (void)_setupEngagement;
- (void)_tearDownContentView;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)enqueueImpressionMetrics;
- (void)loadView;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)setImpressionsReportingFrequency:(unint64_t)a3;
- (void)setPreferredAppearance:(id)a3;
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

- (AMSUIInlineDialogViewController)initWithRequest:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AMSUIInlineDialogViewController;
  v6 = [(AMSUIInlineDialogViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogRequest, a3);
    v7->_impressionsReportingFrequency = 1;
    v7->_shouldAutomaticallyReportMetrics = 1;
    v8 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized with a dialog request, will not listen for engagement pushes.", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (AMSUIInlineDialogViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(AMSUIInlineDialogViewController *)self initWithRequest:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a5);
    objc_storeStrong(&v12->_bag, a4);
  }

  return v12;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = AMSUIInlineDialogViewController;
  v9 = [(AMSUIInlineDialogViewController *)&v18 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C8D8]);
    engagement = v9->_engagement;
    v9->_engagement = v10;

    v9->_impressionsReportingFrequency = 1;
    objc_storeStrong(&v9->_placement, a4);
    objc_storeStrong(&v9->_serviceType, a3);
    v9->_shouldAutomaticallyReportMetrics = 1;
    v12 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138544130;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized (placement: %{public}@, serviceType: %{public}@)", buf, 0x2Au);
    }

    [(AMSUIInlineDialogViewController *)v9 _setupEngagement];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4 context:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AMSUIInlineDialogViewController;
  v12 = [(AMSUIInlineDialogViewController *)&v21 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E698C8D8]);
    engagement = v12->_engagement;
    v12->_engagement = v13;

    objc_storeStrong(&v12->_context, a5);
    objc_storeStrong(&v12->_placement, a4);
    objc_storeStrong(&v12->_serviceType, a3);
    v12->_shouldAutomaticallyReportMetrics = 1;
    v15 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v15)
    {
      v15 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138544130;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_1BB036000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initialized (placement: %{public}@, serviceType: %{public}@)", buf, 0x2Au);
    }

    [(AMSUIInlineDialogViewController *)v12 _setupEngagement];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (AMSUIInlineDialogViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5 account:(id)a6 context:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = [(AMSUIInlineDialogViewController *)self initWithServiceType:a3 placement:a4 context:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a6);
    objc_storeStrong(&v16->_bag, a5);
  }

  return v16;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_messageViewController_enqueueEventWithFields_inTopic_ == a3)
  {
    v5 = [(AMSUIInlineDialogViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      return 1;
    }
  }

  if (sel_messageViewController_enqueueActionEventWithFields_inTopic_ == a3)
  {
    v7 = [(AMSUIInlineDialogViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      return 1;
    }
  }

  v10.receiver = self;
  v10.super_class = AMSUIInlineDialogViewController;
  return [(AMSUIInlineDialogViewController *)&v10 respondsToSelector:a3];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (sel_messageViewController_enqueueActionEventWithFields_inTopic_ == a3 || sel_messageViewController_enqueueEventWithFields_inTopic_ == a3)
  {
    v6 = [(AMSUIInlineDialogViewController *)self delegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadView
{
  v3 = [AMSUIInlineDialogView alloc];
  v4 = [(AMSUICommonView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUIInlineDialogViewController *)self setView:v4];

  v5 = [(AMSUIInlineDialogViewController *)self dialogRequest];

  if (v5)
  {
    v6 = [(AMSUIInlineDialogViewController *)self dialogRequest];
    [(AMSUIInlineDialogViewController *)self _setDialogRequest:v6];
  }
}

- (void)_setDialogRequest:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 style] == 3)
  {
    v5 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Banner", &v19, 0x16u);
    }

    [(AMSUIInlineDialogViewController *)self _setDialogRequestBanner:v4];
  }

  else
  {
    v9 = [v4 style];
    v10 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    v11 = v10;
    if (v9 == 6)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v19 = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v14;
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Dashboard Message", &v19, 0x16u);
      }

      [(AMSUIInlineDialogViewController *)self _setDialogRequestDashboardMessage:v4];
    }

    else
    {
      if (!v10)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v11 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Rendering message as Bubble Tip", &v19, 0x16u);
      }

      [(AMSUIInlineDialogViewController *)self _setDialogRequestBubbleTip:v4];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setDialogRequestBanner:(id)a3
{
  v4 = a3;
  v5 = [AMSUIBannerMessageViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  v7 = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIBannerMessageViewController *)v5 initWithRequest:v4 bag:v6 account:v7];

  v8 = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIBannerMessageViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setDialogRequestBubbleTip:(id)a3
{
  v4 = a3;
  v5 = [AMSUIBubbleTipViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  v7 = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIBubbleTipViewController *)v5 initWithRequest:v4 bag:v6 account:v7];

  v8 = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIBubbleTipViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setDialogRequestDashboardMessage:(id)a3
{
  v4 = a3;
  v5 = [AMSUIDashboardMessageViewController alloc];
  v6 = [(AMSUIInlineDialogViewController *)self bag];
  v7 = [(AMSUIInlineDialogViewController *)self account];
  v10 = [(AMSUIDashboardMessageViewController *)v5 initWithRequest:v4 bag:v6 account:v7];

  v8 = [(AMSUIInlineDialogViewController *)self preferredAppearance];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(AMSUIDashboardMessageViewController *)v10 setPreferredAppearance:v9];
  [(AMSUIBaseMessageViewController *)v10 setDelegate:self];
  [(AMSUIInlineDialogViewController *)self _setContentController:v10];
}

- (void)_setContentController:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIInlineDialogViewController *)self childContentController];

  if (v5)
  {
    v6 = [(AMSUIInlineDialogViewController *)self childContentController];
    v7 = [v6 viewIfLoaded];
    [v7 removeFromSuperview];

    v8 = [(AMSUIInlineDialogViewController *)self childContentController];
    [v8 removeFromParentViewController];

    [(AMSUIInlineDialogViewController *)self setChildContentController:0];
  }

  if (v4)
  {
    [v4 setShouldAutomaticallyReportMetrics:{-[AMSUIInlineDialogViewController shouldAutomaticallyReportMetrics](self, "shouldAutomaticallyReportMetrics")}];
    [v4 setImpressionsReportingFrequency:{-[AMSUIInlineDialogViewController impressionsReportingFrequency](self, "impressionsReportingFrequency")}];
    [(AMSUIInlineDialogViewController *)self setChildContentController:v4];
    objc_initWeak(&location, v4);
    v9 = [v4 loadPromise];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AMSUIInlineDialogViewController__setContentController___block_invoke;
    v10[3] = &unk_1E7F24EF0;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    [v9 addFinishBlock:v10];

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
  v3 = [(AMSUIInlineDialogViewController *)self childContentController];

  v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v18 = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Tearing down content", &v18, 0x16u);
    }

    v9 = [(AMSUIInlineDialogViewController *)self childContentController];
    v10 = [v9 viewIfLoaded];
    [v10 removeFromSuperview];

    v11 = [(AMSUIInlineDialogViewController *)self childContentController];
    [v11 removeFromParentViewController];

    [(AMSUIInlineDialogViewController *)self setChildContentController:0];
    v12 = [(AMSUIInlineDialogViewController *)self view];
    [v12 setNeedsLayout];

    v5 = [(AMSUIInlineDialogViewController *)self delegate];
    v13 = [(AMSUIInlineDialogViewController *)self view];
    [v13 frame];
    [v5 messageViewController:self didUpdateSize:{v14, 0.0}];
  }

  else
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v5 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No content to teardown.", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)enqueueImpressionMetrics
{
  v2 = [(AMSUIInlineDialogViewController *)self childContentController];
  [v2 enqueueImpressionMetrics];
}

- (void)setPreferredAppearance:(id)a3
{
  v8 = a3;
  v4 = [(AMSUIInlineDialogViewController *)self childContentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_7:
      v6 = [(AMSUIInlineDialogViewController *)self childContentController];
      [v6 setPreferredAppearance:v8];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v6 = [(AMSUIInlineDialogViewController *)self childContentController];
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
  v3 = [(AMSUIInlineDialogViewController *)self childContentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(AMSUIInlineDialogViewController *)self childContentController];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v5 = [(AMSUIInlineDialogViewController *)self childContentController];
LABEL_4:
    v7 = [v5 preferredAppearance];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)setImpressionsReportingFrequency:(unint64_t)a3
{
  v5 = [(AMSUIInlineDialogViewController *)self childContentController];

  if (v5)
  {
    v6 = [(AMSUIInlineDialogViewController *)self childContentController];
    [v6 setImpressionsReportingFrequency:a3];
  }

  self->_impressionsReportingFrequency = a3;
}

- (void)_setupEngagement
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIInlineDialogViewController *)self engagement];
  if (!v3)
  {
LABEL_13:
    v28 = *MEMORY[0x1E69E9840];
    return;
  }

  v30 = v3;
  v4 = [(AMSUIInlineDialogViewController *)self serviceType];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIInlineDialogViewController *)self placement];

    if (v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!v7)
      {
        v7 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        *buf = 138543618;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Enqueueing initial message event request", buf, 0x16u);
      }

      v11 = objc_alloc(MEMORY[0x1E698C8E0]);
      v12 = [(AMSUIInlineDialogViewController *)self serviceType];
      v13 = objc_alloc(MEMORY[0x1E698C900]);
      v14 = [(AMSUIInlineDialogViewController *)self placement];
      v15 = [(AMSUIInlineDialogViewController *)self context];
      v16 = [v13 initWithPlacement:v14 context:v15];
      v33 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v18 = [v11 initWithServiceType:v12 placementInfo:v17];

      v19 = [(AMSUIInlineDialogViewController *)self engagement];
      v20 = [v19 enqueueMessageEvent:v18];

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
      v21 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!v21)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        *buf = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning to observe for updates", buf, 0x16u);
      }

      v25 = [(AMSUIInlineDialogViewController *)self engagement];
      v26 = [(AMSUIInlineDialogViewController *)self placement];
      v27 = [(AMSUIInlineDialogViewController *)self serviceType];
      [v25 addObserver:self placement:v26 serviceType:v27];
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

- (id)_findDialogRequestInResponse:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUIInlineDialogViewController *)self placement];
  v6 = [(AMSUIInlineDialogViewController *)self placement];

  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 messageActions];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) placementsMap];
        v13 = [v12 objectForKeyedSubscript:v5];
        v14 = [v13 firstObject];
        v15 = [v14 makeDialogRequest];

        if (v15)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698C968];
  v6 = a4;
  v7 = [v5 sharedMessagingUIConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = [(AMSUIInlineDialogViewController *)self placement];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] action for %@ was pushed", &v14, 0x20u);
  }

  v12 = [(AMSUIInlineDialogViewController *)self delegate];
  [v12 messageViewController:self didSelectActionWithDialogResult:v6];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(AMSUIInlineDialogViewController *)self delegate];
  [v7 messageViewController:self didUpdateSize:{width, height}];
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(AMSUIInlineDialogViewController *)self delegate];
  [v6 messageViewController:self didFailWithError:v5];
}

- (BOOL)messageViewController:(id)a3 shouldEnqueueMetricsForDialogResult:(id)a4
{
  v5 = a4;
  v6 = [(AMSUIInlineDialogViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSUIInlineDialogViewController *)self delegate];
    v9 = [v8 messageViewController:self shouldEnqueueMetricsForDialogResult:v5];
  }

  else
  {
    v9 = [(AMSUIInlineDialogViewController *)self shouldAutomaticallyReportMetrics];
  }

  return v9;
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(AMSUIInlineDialogViewController *)self serviceType];
  v13 = [v12 isEqualToString:v11];

  if (v13)
  {
    v14 = [(AMSUIInlineDialogViewController *)self placement];
    v15 = [v14 isEqualToString:v10];

    if (v15)
    {
      v16 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      v17 = v16;
      if (v9)
      {
        if (!v16)
        {
          v17 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          v21 = [(AMSUIInlineDialogViewController *)self placement];
          *buf = 138543874;
          v39 = v19;
          v40 = 2114;
          v41 = v20;
          v42 = 2112;
          v43 = v21;
          _os_log_impl(&dword_1BB036000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Message for %@ was pushed to", buf, 0x20u);
        }

        v22 = [(AMSUIInlineDialogViewController *)self delegate];
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_30;
          block[3] = &unk_1E7F243C0;
          block[4] = self;
          v36 = v9;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_2;
        v33[3] = &unk_1E7F243C0;
        v33[4] = self;
        v34 = v9;
        dispatch_async(MEMORY[0x1E69E96A0], v33);
      }

      else
      {
        if (!v16)
        {
          v17 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v29 = [v17 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = AMSLogKey();
          v32 = [(AMSUIInlineDialogViewController *)self placement];
          *buf = 138543874;
          v39 = v30;
          v40 = 2114;
          v41 = v31;
          v42 = 2112;
          v43 = v32;
          _os_log_impl(&dword_1BB036000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Nil message for %@ was pushed", buf, 0x20u);
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

  v24 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v25 = [v24 OSLogObject];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = objc_opt_class();
    v27 = AMSLogKey();
    *buf = 138543618;
    v39 = v26;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Ignoring dialog pushed due to wrong placement and service type", buf, 0x16u);
  }

LABEL_17:
  v28 = *MEMORY[0x1E69E9840];
}

void __85__AMSUIInlineDialogViewController_engagement_didUpdateRequest_placement_serviceType___block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageViewController:*(a1 + 32) didLoadDialogRequest:*(a1 + 40)];
}

- (void)_didFetchResponse:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIInlineDialogViewController *)self _findDialogRequestInResponse:v4];

  [(AMSUIInlineDialogViewController *)self setDialogRequest:v5];
  v6 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found message to display", &v19, 0x16u);
    }

    v11 = [(AMSUIInlineDialogViewController *)self viewIfLoaded];

    if (v11)
    {
      [(AMSUIInlineDialogViewController *)self _setDialogRequest:v5];
    }

    v12 = [(AMSUIInlineDialogViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(AMSUIInlineDialogViewController *)self delegate];
      [v14 messageViewController:self didLoadDialogRequest:v5];
    }
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v7 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_1BB036000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No message found to display", &v19, 0x16u);
    }

    [(AMSUIInlineDialogViewController *)self _tearDownContentView];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_didFailToFetchWithError:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIInlineDialogViewController *)self delegate];
  [v5 messageViewController:self didFailWithError:v4];
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