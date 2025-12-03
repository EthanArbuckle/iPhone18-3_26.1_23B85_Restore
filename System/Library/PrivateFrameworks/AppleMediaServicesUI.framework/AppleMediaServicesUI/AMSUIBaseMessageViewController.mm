@interface AMSUIBaseMessageViewController
+ (unint64_t)_engagementReportingFrequencyWithDictionary:(id)dictionary;
- (AMSUIBaseMessageViewController)initWithRequest:(id)request;
- (AMSUIBaseMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (AMSUIMessageView)_messageView;
- (AMSUIMessageViewControllerDelegate)delegate;
- (BOOL)_debugInfoIsNotEmpty;
- (id)_loadIconAssetWithURL:(id)l;
- (id)_setImageWithURL:(id)l;
- (id)_setMICAIconAssetWithURL:(id)l;
- (void)_commitAppearance;
- (void)_didTapActionButton:(id)button;
- (void)_handleDialogResult:(id)result completionHandler:(id)handler;
- (void)_notifyMetricsFields:(id)fields isImpression:(BOOL)impression;
- (void)_preferredContentSizeCategoryDidChange:(id)change;
- (void)_preloadImageIfNeeded;
- (void)_presentDebugMenu;
- (void)_resetAndPlayMICAPlayer;
- (void)_setDialogRequest:(id)request;
- (void)_setupDebugMenu;
- (void)_startObservingMICAPlayer;
- (void)_updateTextWithAttributes;
- (void)_updateTextWithAttributes:(id)attributes;
- (void)enqueueImpressionEngagementMetrics;
- (void)enqueueImpressionMetrics;
- (void)loadView;
- (void)micaPlayerDidChangePlaybackTime:(id)time isPlaybackAtEnd:(BOOL)end;
- (void)viewDidLoad;
@end

@implementation AMSUIBaseMessageViewController

- (AMSUIBaseMessageViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = AMSUIBaseMessageViewController;
  v6 = [(AMSUIBaseMessageViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_currentIconPlayCount = 0;
    objc_storeStrong(&v6->_dialogRequest, request);
    v7->_engagementImpressionsReportingFrequency = 0;
    v7->_impressionsReportingFrequency = 1;
    appearanceInfo = [requestCopy appearanceInfo];
    v7->_jsEngagementImpressionsReportingFrequency = [AMSUIBaseMessageViewController _engagementReportingFrequencyWithDictionary:appearanceInfo];

    v7->_isImageSymbolImage = 0;
    v9 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    loadPromise = v7->_loadPromise;
    v7->_loadPromise = v9;

    v7->_shouldAutomaticallyReportMetrics = 1;
    [(AMSUIBaseMessageViewController *)v7 setViewRespectsSystemMinimumLayoutMargins:0];
    [(AMSUIBaseMessageViewController *)v7 _preloadImageIfNeeded];
    if (![(AMSUIBaseMessageViewController *)v7 _isLoadingImage])
    {
      loadPromise = [(AMSUIBaseMessageViewController *)v7 loadPromise];
      [loadPromise finishWithSuccess];
    }
  }

  return v7;
}

- (AMSUIBaseMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  bagCopy = bag;
  accountCopy = account;
  v11 = [(AMSUIBaseMessageViewController *)self initWithRequest:request];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_bag, bag);
  }

  return v12;
}

- (void)loadView
{
  v3 = [[AMSUIMessageView alloc] initWithStyle:[(AMSUIBaseMessageViewController *)self _messageStyle]];
  [(AMSUIMessageView *)v3 setIsImageSymbolImage:[(AMSUIBaseMessageViewController *)self isImageSymbolImage]];
  [(AMSUIBaseMessageViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AMSUIBaseMessageViewController;
  [(AMSUIBaseMessageViewController *)&v11 viewDidLoad];
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  [(AMSUIBaseMessageViewController *)self _setDialogRequest:dialogRequest];

  [(AMSUIBaseMessageViewController *)self _commitAppearance];
  if (os_variant_has_internal_content() && ([MEMORY[0x1E698CBB0] isRunningUnitTests] & 1) == 0)
  {
    [(AMSUIBaseMessageViewController *)self _setupDebugMenu];
  }

  if ([(AMSUIBaseMessageViewController *)self _isLoadingImage])
  {
    _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
    [_messageView setPreLayoutImageView:1];
  }

  objc_initWeak(&location, self);
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AMSUIBaseMessageViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_1E7F24690;
  objc_copyWeak(&v9, &location);
  v6 = [(AMSUIBaseMessageViewController *)self registerForTraitChanges:v5 withHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x1E69E9840];
}

void __45__AMSUIBaseMessageViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v15 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 preferredContentSizeCategory];
  v9 = v8;
  if (v7 == v8)
  {
    v10 = [v15 traitCollection];
    v11 = [v10 legibilityWeight];
    v12 = [v5 legibilityWeight];

    if (v11 == v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [v15 traitCollection];
  [WeakRetained _preferredContentSizeCategoryDidChange:v14];

LABEL_5:
}

- (AMSUIMessageView)_messageView
{
  v4.receiver = self;
  v4.super_class = AMSUIBaseMessageViewController;
  view = [(AMSUIBaseMessageViewController *)&v4 view];

  return view;
}

- (void)enqueueImpressionMetrics
{
  v24 = *MEMORY[0x1E69E9840];
  impressionsReportingFrequency = [(AMSUIBaseMessageViewController *)self impressionsReportingFrequency];
  if (impressionsReportingFrequency == 2)
  {
    v4 = 1;
  }

  else if (impressionsReportingFrequency == 1)
  {
    v4 = ![(AMSUIBaseMessageViewController *)self didEnqueueClickstreamMetrics];
  }

  else
  {
    v4 = 0;
  }

  engagementImpressionsReportingFrequency = [(AMSUIBaseMessageViewController *)self engagementImpressionsReportingFrequency];
  if ([(AMSUIBaseMessageViewController *)self jsEngagementImpressionsReportingFrequency]!= 99)
  {
    engagementImpressionsReportingFrequency = [(AMSUIBaseMessageViewController *)self jsEngagementImpressionsReportingFrequency];
  }

  if (engagementImpressionsReportingFrequency != 1 && (engagementImpressionsReportingFrequency || [(AMSUIBaseMessageViewController *)self didEnqueueEngagementMetrics]))
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = v8;
      *buf = 138543618;
      v21 = v8;
      v22 = 2048;
      engagementImpressionsReportingFrequency2 = [(AMSUIBaseMessageViewController *)self engagementImpressionsReportingFrequency];
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Will not enqueue engagementimpression metrics (engagementImpressionsReportingFrequency: %lu)", buf, 0x16u);
    }

    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_21:
    dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
    clickstreamMetricsEvent = [dialogRequest clickstreamMetricsEvent];
    [(AMSUIBaseMessageViewController *)self _notifyMetricsFields:clickstreamMetricsEvent isImpression:1];
    goto LABEL_22;
  }

  [(AMSUIBaseMessageViewController *)self enqueueImpressionEngagementMetrics];
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_16:
  dialogRequest = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!dialogRequest)
  {
    dialogRequest = [MEMORY[0x1E698C968] sharedConfig];
  }

  clickstreamMetricsEvent = [dialogRequest OSLogObject];
  if (os_log_type_enabled(clickstreamMetricsEvent, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = v12;
    impressionsReportingFrequency2 = [(AMSUIBaseMessageViewController *)self impressionsReportingFrequency];
    *buf = 138543618;
    v21 = v12;
    v22 = 2048;
    engagementImpressionsReportingFrequency2 = impressionsReportingFrequency2;
    _os_log_impl(&dword_1BB036000, clickstreamMetricsEvent, OS_LOG_TYPE_DEBUG, "%{public}@: Will not enqueue clickstream impression metrics (impressionsReportingFrequency: %lu)", buf, 0x16u);
  }

LABEL_22:

  [(AMSUIBaseMessageViewController *)self setDidEnqueueClickstreamMetrics:1];
  [(AMSUIBaseMessageViewController *)self setDidEnqueueEngagementMetrics:1];
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUIBaseMessageViewController _messageStyle](self, "_messageStyle")}];
  v18 = [v16 stringWithFormat:@"%@ _notifyMetricsFields/impression", v17];
  [_messageView _recordNewsDebugEventWithCategory:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)enqueueImpressionEngagementMetrics
{
  v30 = *MEMORY[0x1E69E9840];
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUIBaseMessageViewController _messageStyle](self, "_messageStyle")}];
  v6 = [v4 stringWithFormat:@"%@ enqueueImpressionEngagementMetrics", v5];
  [_messageView _recordNewsDebugEventWithCategory:v6];

  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  metricsEvent = [dialogRequest metricsEvent];

  if (metricsEvent)
  {
    delegate = [(AMSUIBaseMessageViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(AMSUIBaseMessageViewController *)self delegate];
      [delegate2 messageViewControllerDidEnqueueImpression:self];
    }

    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v14 = *(&buf + 4);
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueueing Engagement Impression MetricsEvent", &buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__AMSUIBaseMessageViewController_enqueueImpressionEngagementMetrics__block_invoke;
    v23[3] = &unk_1E7F243C0;
    v23[4] = self;
    v24 = metricsEvent;
    v15 = v23;
    v16 = AMSLogKey();
    v17 = dispatch_get_global_queue(0, 0);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __AMSDispatchAsyncGlobal_block_invoke;
    v27 = &unk_1E7F245E0;
    v28 = v16;
    v29 = v15;
    v18 = v16;
    dispatch_async(v17, &buf);
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v21 = *(&buf + 4);
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: No Engagement MetricsEvent to enqueue", &buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __68__AMSUIBaseMessageViewController_enqueueImpressionEngagementMetrics__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E698CA00];
  v4 = [*(a1 + 32) bag];
  v3 = [v2 internalInstanceUsingBag:v4];
  [v3 enqueueEvent:*(a1 + 40)];
}

- (void)_commitAppearance
{
  v8 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: (_commitAppearance)", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setupDebugMenu
{
  if ([(AMSUIBaseMessageViewController *)self _debugInfoIsNotEmpty])
  {
    view = [(AMSUIBaseMessageViewController *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [(AMSUIBaseMessageViewController *)self view];
      [view2 setupDebugButtonWithTarget:self action:sel__presentDebugMenu];
    }
  }
}

- (BOOL)_debugInfoIsNotEmpty
{
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  userInfo = [dialogRequest userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"debugInfo"];

  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count] != 0;
  return v5;
}

- (void)_presentDebugMenu
{
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  userInfo = [dialogRequest userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"debugInfo"];
  [AMSUIDebugMenu presentDebugMenuWithPresentingVC:self debugInfo:v4];
}

- (void)_handleDialogResult:(id)result completionHandler:(id)handler
{
  v65 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = MEMORY[0x1E698C968];
  resultCopy = result;
  sharedMessagingUIConfig = [v7 sharedMessagingUIConfig];
  if (!sharedMessagingUIConfig)
  {
    sharedMessagingUIConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedMessagingUIConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v62 = objc_opt_class();
    v11 = v62;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Attempting to handle dialog request", buf, 0xCu);
  }

  originalRequest = [resultCopy originalRequest];
  selectedActionIdentifier = [resultCopy selectedActionIdentifier];

  v14 = [originalRequest locateActionWithIdentifier:selectedActionIdentifier];

  kind = [v14 kind];
  v16 = [kind length];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E698C898]) initWithDialogAction:v14];
    if ([v14 requiresDelegate])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [(AMSUIActionContext *)mEMORY[0x1E698C968] OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
LABEL_28:

        delegate = [(AMSUIBaseMessageViewController *)self delegate];
        v39 = objc_opt_respondsToSelector();

        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
        mEMORY[0x1E698C968]3 = mEMORY[0x1E698C968]2;
        if (v39)
        {
          if (!mEMORY[0x1E698C968]2)
          {
            mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v43 = objc_opt_class();
            v44 = v43;
            identifier = [v17 identifier];
            *buf = 138543618;
            v62 = v43;
            v63 = 2114;
            v64 = identifier;
            _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling delegate to handle delegate action (identifier: %{public}@)", buf, 0x16u);
          }

          delegate2 = [(AMSUIBaseMessageViewController *)self delegate];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __72__AMSUIBaseMessageViewController__handleDialogResult_completionHandler___block_invoke;
          v58[3] = &unk_1E7F246B8;
          v58[4] = self;
          v59 = v17;
          v60 = handlerCopy;
          v47 = [delegate2 messageViewController:self handleDelegateAction:v59 completionHandler:v58];

          if (v47)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (!mEMORY[0x1E698C968]2)
          {
            mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject4 = [mEMORY[0x1E698C968]3 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
          {
            v49 = objc_opt_class();
            v50 = v49;
            identifier2 = [v17 identifier];
            *buf = 138543618;
            v62 = v49;
            v63 = 2114;
            v64 = identifier2;
            _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_DEBUG, "%{public}@: Delegate does not implement handleDelegateAction (identifier: %{public}@)", buf, 0x16u);
          }

          (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E118], 0);
        }

        mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
        if (!mEMORY[0x1E698C968]4)
        {
          mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject5 = [mEMORY[0x1E698C968]4 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v54 = objc_opt_class();
          v55 = v54;
          identifier3 = [v17 identifier];
          *buf = 138543618;
          v62 = v54;
          v63 = 2114;
          v64 = identifier3;
          _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate action not handled (identifier: %{public}@)", buf, 0x16u);
        }

        (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E110], 0);
LABEL_45:

        goto LABEL_46;
      }

      v20 = objc_opt_class();
      *buf = 138543362;
      v62 = v20;
      mEMORY[0x1E698C968]6 = v20;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: Delegate is required to process action", buf, 0xCu);
    }

    else
    {
      v26 = [AMSUIActionContext alloc];
      account = [(AMSUIBaseMessageViewController *)self account];
      v28 = [(AMSUIBaseMessageViewController *)self bag];
      mEMORY[0x1E698C968] = [(AMSUIActionContext *)v26 initWithAccount:account bag:v28 presentingViewController:self processInfo:0];

      oSLogObject2 = [v17 actionPayload];
      v29 = [AMSUIActionRunner canHandle:oSLogObject2 context:mEMORY[0x1E698C968]];
      mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      mEMORY[0x1E698C968]6 = mEMORY[0x1E698C968]5;
      if (v29)
      {
        if (!mEMORY[0x1E698C968]5)
        {
          mEMORY[0x1E698C968]6 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject6 = [mEMORY[0x1E698C968]6 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          *buf = 138543362;
          v62 = v32;
          v33 = v32;
          _os_log_impl(&dword_1BB036000, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: AMS ActionRunner can handle action", buf, 0xCu);
        }

        v34 = [AMSUIActionRunner handle:oSLogObject2 context:mEMORY[0x1E698C968]];
        [v34 addFinishBlock:handlerCopy];

        goto LABEL_45;
      }

      if (!mEMORY[0x1E698C968]5)
      {
        mEMORY[0x1E698C968]6 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject7 = [mEMORY[0x1E698C968]6 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
      {
        v36 = objc_opt_class();
        *buf = 138543362;
        v62 = v36;
        v37 = v36;
        _os_log_impl(&dword_1BB036000, oSLogObject7, OS_LOG_TYPE_INFO, "%{public}@: AMS ActionRunner cannot handle action", buf, 0xCu);
      }
    }

    goto LABEL_28;
  }

  mEMORY[0x1E698C968]7 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968]7)
  {
    mEMORY[0x1E698C968]7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject8 = [mEMORY[0x1E698C968]7 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
  {
    v24 = objc_opt_class();
    *buf = 138543362;
    v62 = v24;
    v25 = v24;
    _os_log_impl(&dword_1BB036000, oSLogObject8, OS_LOG_TYPE_INFO, "%{public}@: No action kind", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E110], 0);
LABEL_46:

  v57 = *MEMORY[0x1E69E9840];
}

void __72__AMSUIBaseMessageViewController__handleDialogResult_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v14 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!v14)
      {
        v14 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v26 = a1[4];
      v27 = objc_opt_class();
      v28 = a1[5];
      v19 = v27;
      v20 = [v28 identifier];
      v29 = 138543618;
      v30 = v27;
      v31 = 2114;
      v32 = v20;
      v21 = "%{public}@: Delegate responded with neither an error or response (identifier: %{public}@)";
      v22 = v15;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 22;
      goto LABEL_13;
    }

LABEL_9:
    v14 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = a1[4];
    v17 = objc_opt_class();
    v18 = a1[5];
    v19 = v17;
    v20 = [v18 identifier];
    v29 = 138543874;
    v30 = v17;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = v5;
    v21 = "%{public}@: Delegate responded with a response (identifier: %{public}@, response: %{public}@)";
    v22 = v15;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 32;
LABEL_13:
    _os_log_impl(&dword_1BB036000, v22, v23, v21, &v29, v24);

LABEL_14:
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 identifier];
    v29 = 138543874;
    v30 = v10;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v13;
    _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Delegate responded with error (identifier: %{public}@, error: %{public}@)", &v29, 0x20u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_15:
  (*(a1[6] + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_notifyMetricsFields:(id)fields isImpression:(BOOL)impression
{
  v24 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  if (fieldsCopy)
  {
    delegate = [(AMSUIBaseMessageViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
    }

    else
    {
      delegate2 = [(AMSUIBaseMessageViewController *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v22 = 138543362;
          v23 = objc_opt_class();
          v21 = v23;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Delegate does observe for metrics. Dropping metrics event.", &v22, 0xCu);
        }

        goto LABEL_16;
      }
    }

    delegate3 = [(AMSUIBaseMessageViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      delegate4 = [(AMSUIBaseMessageViewController *)self delegate];
      objc_opt_respondsToSelector();
    }

    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v15 = v23;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueueing metrics fields", &v22, 0xCu);
    }

    mEMORY[0x1E698C968] = [MEMORY[0x1E695DF90] dictionaryWithDictionary:fieldsCopy];
    oSLogObject = [mEMORY[0x1E698C968] objectForKey:@"topic"];
    [mEMORY[0x1E698C968] removeObjectForKey:@"topic"];
    if (v11)
    {
      if (impression)
      {
LABEL_16:

        goto LABEL_17;
      }

      delegate5 = [(AMSUIBaseMessageViewController *)self delegate];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:mEMORY[0x1E698C968]];
      [delegate5 messageViewController:self enqueueActionEventWithFields:v19 inTopic:oSLogObject];
    }

    else
    {
      delegate5 = [(AMSUIBaseMessageViewController *)self delegate];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:mEMORY[0x1E698C968]];
      [delegate5 messageViewController:self enqueueEventWithFields:v19 inTopic:oSLogObject];
    }

    goto LABEL_16;
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_preloadImageIfNeeded
{
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dialogRequest;
  }

  else
  {
    v4 = 0;
  }

  iconImage = [v4 iconImage];

  if (!iconImage)
  {
    dialogRequest2 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    iconURL = [dialogRequest2 iconURL];

    if (iconURL)
    {
      dialogRequest3 = [(AMSUIBaseMessageViewController *)self dialogRequest];
      iconURL2 = [dialogRequest3 iconURL];
      v10 = [(AMSUIBaseMessageViewController *)self _loadIconAssetWithURL:iconURL2];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__AMSUIBaseMessageViewController__preloadImageIfNeeded__block_invoke;
      v12[3] = &unk_1E7F246E0;
      v12[4] = self;
      [v10 resultWithTimeout:v12 completion:2.0];
      loadPromise = [(AMSUIBaseMessageViewController *)self loadPromise];
      [loadPromise finishWithPromise:v10];
    }
  }
}

void __55__AMSUIBaseMessageViewController__preloadImageIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v4;
      v8 = v12;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Icon loading failed with error %{public}@", &v11, 0x16u);
    }

    v9 = [*(a1 + 32) loadPromise];
    [v9 finishWithSuccess];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setDialogRequest:(id)request
{
  requestCopy = request;
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];
  v13 = requestCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  iconImage = [v6 iconImage];
  if (iconImage)
  {
    v8 = iconImage;
  }

  else
  {
    _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v8 = [_loadedImage ams_imageWithRenderingMode:{-[AMSUIBaseMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  _effectiveImageSymbolConfiguration = [(AMSUIBaseMessageViewController *)self _effectiveImageSymbolConfiguration];
  imageView = [_messageView imageView];
  [imageView setPreferredSymbolConfiguration:_effectiveImageSymbolConfiguration];

  imageView2 = [_messageView imageView];
  [imageView2 setImage:v8];

LABEL_8:
}

- (id)_loadIconAssetWithURL:(id)l
{
  lCopy = l;
  if ([AMSUIEngagementContentRecord isURLEngagementContent:lCopy])
  {
    v5 = [[AMSUIEngagementContentRecord alloc] initWithURL:lCopy];
    contentExtension = [(AMSUIEngagementContentRecord *)v5 contentExtension];
  }

  else
  {
    contentExtension = [lCopy pathExtension];
  }

  [(AMSUIBaseMessageViewController *)self set_isLoadingImage:1];
  if ([contentExtension isEqualToString:@"caar"])
  {
    [(AMSUIBaseMessageViewController *)self _setMICAIconAssetWithURL:lCopy];
  }

  else
  {
    [(AMSUIBaseMessageViewController *)self _setImageWithURL:lCopy];
  }
  v7 = ;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AMSUIBaseMessageViewController__loadIconAssetWithURL___block_invoke;
  v9[3] = &unk_1E7F246E0;
  v9[4] = self;
  [v7 addFinishBlock:v9];

  return v7;
}

void __56__AMSUIBaseMessageViewController__loadIconAssetWithURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v8 = *(&buf + 4);
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_INFO, "%{public}@: Finished icon loading", &buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__AMSUIBaseMessageViewController__loadIconAssetWithURL___block_invoke_54;
  v14[3] = &unk_1E7F243C0;
  v14[4] = *(a1 + 32);
  v15 = v4;
  v9 = v14;
  v10 = v4;
  v11 = AMSLogKey();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v17 = __AMSDispatchAsync_block_invoke_1;
  v18 = &unk_1E7F245E0;
  v19 = v11;
  v20 = v9;
  v12 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], &buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __56__AMSUIBaseMessageViewController__loadIconAssetWithURL___block_invoke_54(uint64_t a1)
{
  [*(a1 + 32) set_isLoadingImage:0];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) _messageView];
    [v2 setPreLayoutImageView:0];
  }
}

- (void)_resetAndPlayMICAPlayer
{
  if (!UIAccessibilityIsReduceMotionEnabled() && [(AMSUIBaseMessageViewController *)self _iconAnimationPlayCount])
  {
    [(AMSUIBaseMessageViewController *)self _startObservingMICAPlayer];
    self->_currentIconPlayCount = 0;
    _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
    micaPlayer = [_messageView micaPlayer];
    [micaPlayer play];
  }
}

- (id)_setMICAIconAssetWithURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v7 = v18;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Loading MICA asset", buf, 0xCu);
  }

  v8 = +[AMSUIAssetLoader sharedLoader];
  v9 = [v8 fetchWithAssetURL:lCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke;
  v15[3] = &unk_1E7F24708;
  v15[4] = self;
  v16 = lCopy;
  v10 = lCopy;
  [v9 addSuccessBlock:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_2;
  v14[3] = &unk_1E7F24410;
  v14[4] = self;
  [v9 addErrorBlock:v14];
  binaryPromiseAdapter = [v9 binaryPromiseAdapter];

  v12 = *MEMORY[0x1E69E9840];

  return binaryPromiseAdapter;
}

void __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v7 = *(&buf + 4);
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully loaded MICA asset", &buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_56;
  v14[3] = &unk_1E7F24590;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v3;
  v16 = v8;
  v9 = v14;
  v10 = v3;
  v11 = AMSLogKey();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v18 = __AMSDispatchAsync_block_invoke_1;
  v19 = &unk_1E7F245E0;
  v20 = v11;
  v21 = v9;
  v12 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], &buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_56(uint64_t a1)
{
  v2 = [*(a1 + 32) _messageView];
  [v2 _setupMICAAssetWithData:*(a1 + 40) originalURL:*(a1 + 48)];

  v3 = [*(a1 + 32) view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 _resetAndPlayMICAPlayer];
  }
}

void __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v7 = v13;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load MICA asset with error %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_58;
  v10[3] = &unk_1E7F243C0;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__AMSUIBaseMessageViewController__setMICAIconAssetWithURL___block_invoke_58(uint64_t a1)
{
  v2 = [*(a1 + 32) _messageView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) delegate];
  [v3 messageViewController:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (id)_setImageWithURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = objc_opt_class();
    v7 = v21;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Loading image asset", buf, 0xCu);
  }

  v8 = +[AMSUIImageLoader defaultLoader];
  v9 = [v8 fetchImageWithURL:lCopy];
  if ([v8 _isURLSystemImage:lCopy])
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      *buf = 138543362;
      v21 = v12;
      v13 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: Setting MessageView isImageSymbolImage true", buf, 0xCu);
    }

    [(AMSUIBaseMessageViewController *)self setIsImageSymbolImage:1];
  }

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke;
  v18[3] = &unk_1E7F24758;
  v18[4] = self;
  objc_copyWeak(&v19, buf);
  [v9 addSuccessBlock:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_2;
  v17[3] = &unk_1E7F24410;
  v17[4] = self;
  [v9 addErrorBlock:v17];
  binaryPromiseAdapter = [v9 binaryPromiseAdapter];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x1E69E9840];

  return binaryPromiseAdapter;
}

void __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully loaded image asset", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_61;
  v10[3] = &unk_1E7F24730;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = v3;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v12);
  v9 = *MEMORY[0x1E69E9840];
}

void __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained viewIfLoaded];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 ams_imageWithRenderingMode:{objc_msgSend(WeakRetained, "_primaryImageRenderingMode")}];
    v5 = [WeakRetained _effectiveImageSymbolConfiguration];
    if (v5)
    {
      v6 = [v4 imageWithSymbolConfiguration:v5];

      v4 = v6;
    }

    v7 = [WeakRetained _messageView];
    v8 = [v7 imageView];
    [v8 setImage:v4];

    v9 = [WeakRetained _messageView];
    [v9 setNeedsLayout];
  }

  else
  {
    [WeakRetained set_loadedImage:v3];
  }
}

void __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
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
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v7 = v13;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load image %{public}@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_63;
  v10[3] = &unk_1E7F243C0;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __51__AMSUIBaseMessageViewController__setImageWithURL___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) _messageView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) delegate];
  [v3 messageViewController:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_startObservingMICAPlayer
{
  v13 = *MEMORY[0x1E69E9840];
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  micaPlayer = [_messageView micaPlayer];

  if (micaPlayer)
  {
    [(AMSUIBaseMessageViewController *)self setCurrentIconPlayCount:0];
    _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
    micaPlayer2 = [_messageView2 micaPlayer];
    [micaPlayer2 setDelegate:self];

    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v9 = v12;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Began observing MICA Player", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_preferredContentSizeCategoryDidChange:(id)change
{
  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes:change];
  delegate = [(AMSUIBaseMessageViewController *)self delegate];
  [delegate messageViewController:self didUpdateSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
}

- (void)_updateTextWithAttributes
{
  traitCollection = [(AMSUIBaseMessageViewController *)self traitCollection];
  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes:traitCollection];
}

- (void)_updateTextWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  title = [dialogRequest title];

  if (title)
  {
    _titleTextColor = [(AMSUIBaseMessageViewController *)self _titleTextColor];
    v7 = _titleTextColor;
    if (_titleTextColor)
    {
      v8 = _titleTextColor;
    }

    else
    {
      v8 = +[AMSUIAppearance _defaultTitleColor];
    }

    v9 = v8;

    v10 = [(AMSUIBaseMessageViewController *)self _titleFontCompatibleWith:attributesCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [AMSUIAppearance _defaultTitleFontForStyle:[(AMSUIBaseMessageViewController *)self _messageStyle] withTraitCollection:attributesCopy];
    }

    v13 = v12;

    v14 = [[AMSUIMessageMarkdownConfiguration alloc] initWithColor:v9 font:v13];
    v15 = [AMSUIMessageMarkdownGenerator alloc];
    dialogRequest2 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    title2 = [dialogRequest2 title];
    v18 = [(AMSUIMessageMarkdownGenerator *)v15 initWithMarkdownString:title2 configuration:v14];

    generate = [(AMSUIMessageMarkdownGenerator *)v18 generate];
    _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
    [_messageView setTitle:generate];
  }

  dialogRequest3 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  message = [dialogRequest3 message];
  if (message)
  {
    v23 = message;
    dialogRequest4 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    style = [dialogRequest4 style];

    if (style == 8)
    {
      goto LABEL_19;
    }

    _messageTextColor = [(AMSUIBaseMessageViewController *)self _messageTextColor];
    v27 = _messageTextColor;
    if (_messageTextColor)
    {
      v28 = _messageTextColor;
    }

    else
    {
      v28 = [AMSUIAppearance _defaultMessageColorForStyle:[(AMSUIBaseMessageViewController *)self _messageStyle]];
    }

    dialogRequest3 = v28;

    v29 = [(AMSUIBaseMessageViewController *)self _messageFontCompatibleWith:attributesCopy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [AMSUIAppearance _defaultMessageFontForStyle:[(AMSUIBaseMessageViewController *)self _messageStyle] withTraitCollection:attributesCopy];
    }

    v32 = v31;

    v33 = [[AMSUIMessageMarkdownConfiguration alloc] initWithColor:dialogRequest3 font:v32];
    v34 = [AMSUIMessageMarkdownGenerator alloc];
    dialogRequest5 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    message2 = [dialogRequest5 message];
    v37 = [(AMSUIMessageMarkdownGenerator *)v34 initWithMarkdownString:message2 configuration:v33];

    generate2 = [(AMSUIMessageMarkdownGenerator *)v37 generate];
    _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
    [_messageView2 setMessage:generate2];
  }

LABEL_19:
  _messageView3 = [(AMSUIBaseMessageViewController *)self _messageView];
  [_messageView3 _setTextViewText];

  array = [MEMORY[0x1E695DF70] array];
  dialogRequest6 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  titleAccessibilityLabel = [dialogRequest6 titleAccessibilityLabel];

  dialogRequest7 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  v45 = dialogRequest7;
  if (titleAccessibilityLabel)
  {
    titleAccessibilityLabel2 = [dialogRequest7 titleAccessibilityLabel];
    v47 = [titleAccessibilityLabel2 length];

    if (v47 < 2)
    {
      goto LABEL_25;
    }

    dialogRequest8 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    titleAccessibilityLabel3 = [dialogRequest8 titleAccessibilityLabel];
  }

  else
  {
    title3 = [dialogRequest7 title];

    if (!title3)
    {
      goto LABEL_25;
    }

    dialogRequest8 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    titleAccessibilityLabel3 = [dialogRequest8 title];
  }

  v51 = titleAccessibilityLabel3;
  [array addObject:titleAccessibilityLabel3];

LABEL_25:
  dialogRequest9 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  messageAccessibilityLabel = [dialogRequest9 messageAccessibilityLabel];

  dialogRequest10 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  v55 = dialogRequest10;
  if (messageAccessibilityLabel)
  {
    messageAccessibilityLabel2 = [dialogRequest10 messageAccessibilityLabel];
    v57 = [messageAccessibilityLabel2 length];

    if (v57 < 2)
    {
      goto LABEL_31;
    }

    dialogRequest11 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    messageAccessibilityLabel3 = [dialogRequest11 messageAccessibilityLabel];
  }

  else
  {
    message3 = [dialogRequest10 message];

    if (!message3)
    {
      goto LABEL_31;
    }

    dialogRequest11 = [(AMSUIBaseMessageViewController *)self dialogRequest];
    messageAccessibilityLabel3 = [dialogRequest11 message];
  }

  v61 = messageAccessibilityLabel3;
  [array addObject:messageAccessibilityLabel3];

LABEL_31:
  if ([array count])
  {
    _messageView5 = [array componentsJoinedByString:{@", "}];
    _messageView4 = [(AMSUIBaseMessageViewController *)self _messageView];
    textView = [_messageView4 textView];
    [textView setAccessibilityLabel:_messageView5];
  }

  else
  {
    _messageView5 = [(AMSUIBaseMessageViewController *)self _messageView];
    _messageView4 = [_messageView5 textView];
    textView = [_messageView4 attributedText];
    string = [textView string];
    _messageView6 = [(AMSUIBaseMessageViewController *)self _messageView];
    textView2 = [_messageView6 textView];
    [textView2 setAccessibilityLabel:string];
  }
}

+ (unint64_t)_engagementReportingFrequencyWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"engagementMetricReportingFrequency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && ([&unk_1F394A8C8 objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 99;
  }

  return unsignedIntegerValue;
}

- (void)_didTapActionButton:(id)button
{
  v62 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = buttonCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _messageView2 = v6;
    }

    else
    {
      _messageView2 = 0;
    }

    dialogAction = [_messageView2 dialogAction];
LABEL_13:
    v13 = dialogAction;
    identifier = [dialogAction identifier];

    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v59 = objc_opt_class();
      v60 = 2114;
      v61 = identifier;
      v16 = v59;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Action invoked (identifier: %{public}@)", buf, 0x16u);
    }

    [_messageView setUserInteractionEnabled:0];
    v17 = objc_alloc(MEMORY[0x1E698C8C8]);
    dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
    v19 = [v17 initWithOriginalRequest:dialogRequest selectedActionIdentifier:identifier];

    originalRequest = [v19 originalRequest];
    oSLogObject5 = [originalRequest locateActionWithIdentifier:identifier];

    shouldAutomaticallyReportMetrics = [(AMSUIBaseMessageViewController *)self shouldAutomaticallyReportMetrics];
    delegate = [(AMSUIBaseMessageViewController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(AMSUIBaseMessageViewController *)self delegate];
      shouldAutomaticallyReportMetrics = [delegate2 messageViewController:self shouldEnqueueMetricsForDialogResult:v19];
    }

    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = @"false";
      if (shouldAutomaticallyReportMetrics)
      {
        v28 = @"true";
      }

      *buf = 138543618;
      v59 = v27;
      v60 = 2114;
      v61 = v28;
      v29 = _messageView;
      v30 = v27;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: shouldAutoEnqueue %{public}@", buf, 0x16u);

      _messageView = v29;
    }

    if (shouldAutomaticallyReportMetrics)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *buf = 138543362;
        v59 = v33;
        v34 = v33;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueueing engagement metrics", buf, 0xCu);
      }

      v35 = objc_alloc(MEMORY[0x1E698C8D8]);
      v36 = [(AMSUIBaseMessageViewController *)self bag];
      v37 = [v35 initWithBag:v36];
      [v37 handleDialogResult:v19];

      if (oSLogObject5)
      {
        clickstreamMetricsEvent = [oSLogObject5 clickstreamMetricsEvent];
        [(AMSUIBaseMessageViewController *)self _notifyMetricsFields:clickstreamMetricsEvent isImpression:0];
      }
    }

    deepLink = [oSLogObject5 deepLink];
    v40 = [(AMSUIBaseMessageViewController *)self bag];
    if (v40 && deepLink)
    {
      v41 = [AMSUIMessagingActionRunner canRespondToDeeplink:deepLink];

      if (!v41)
      {
LABEL_44:
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __54__AMSUIBaseMessageViewController__didTapActionButton___block_invoke;
        v55[3] = &unk_1E7F24780;
        v55[4] = self;
        v56 = v19;
        v57 = _messageView;
        v52 = v19;
        [(AMSUIBaseMessageViewController *)self _handleDialogResult:v52 completionHandler:v55];

        goto LABEL_45;
      }

      v54 = _messageView;
      mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968]4)
      {
        mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        *buf = 138543618;
        v59 = v44;
        v60 = 2114;
        v61 = deepLink;
        v45 = v44;
        _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_INFO, "%{public}@: AMS can respond to action with deeplink %{public}@", buf, 0x16u);
      }

      v46 = [AMSUIMessagingActionContext alloc];
      v47 = [(AMSUIBaseMessageViewController *)self bag];
      account = [(AMSUIBaseMessageViewController *)self account];
      currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
      v40 = [(AMSUIMessagingActionContext *)v46 initWithBag:v47 account:account clientInfo:currentProcess];

      v50 = [AMSUIMessagingTemporaryActionDataProvider parametersForAppStoreOptInNotificationWithDeeplink:deepLink];
      v51 = v50;
      if (v40 && v50)
      {
        [AMSUIMessagingActionRunner performWithDeeplink:deepLink context:v40 parameters:v50];
      }

      _messageView = v54;
    }

    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bodyAction = [_messageView bodyAction];

    if (bodyAction)
    {
      _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
      dialogAction = [_messageView2 bodyAction];
      goto LABEL_13;
    }
  }

  identifier = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!identifier)
  {
    identifier = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject5 = [(__CFString *)identifier OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = objc_opt_class();
    v12 = v59;
    _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: Action invoked but failed dialog action found", buf, 0xCu);
  }

LABEL_45:

  v53 = *MEMORY[0x1E69E9840];
}

void __54__AMSUIBaseMessageViewController__didTapActionButton___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AMSUIBaseMessageViewController__didTapActionButton___block_invoke_2;
  v6[3] = &unk_1E7F24590;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 48);
  v3 = v6;
  v4 = AMSLogKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAsync_block_invoke_1;
  block[3] = &unk_1E7F245E0;
  v10 = v4;
  v11 = v3;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__AMSUIBaseMessageViewController__didTapActionButton___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageViewController:*(a1 + 32) didSelectActionWithDialogResult:*(a1 + 40)];

  v3 = *(a1 + 48);

  return [v3 setUserInteractionEnabled:1];
}

- (void)micaPlayerDidChangePlaybackTime:(id)time isPlaybackAtEnd:(BOOL)end
{
  endCopy = end;
  v30 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v24 = 138543618;
    v25 = v9;
    v26 = 2050;
    currentIconPlayCount = [(AMSUIBaseMessageViewController *)self currentIconPlayCount];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: micaPlayerDidChangePlaybackTime (currentIconPlayCount: %{public}ld)", &v24, 0x16u);
  }

  _iconAnimationPlayCount = [(AMSUIBaseMessageViewController *)self _iconAnimationPlayCount];
  if (_iconAnimationPlayCount >= 1)
  {
    v12 = _iconAnimationPlayCount;
    if (endCopy)
    {
      [(AMSUIBaseMessageViewController *)self setCurrentIconPlayCount:[(AMSUIBaseMessageViewController *)self currentIconPlayCount]+ 1];
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_opt_class();
        v16 = v15;
        currentIconPlayCount2 = [(AMSUIBaseMessageViewController *)self currentIconPlayCount];
        v24 = 138543618;
        v25 = v15;
        v26 = 2050;
        currentIconPlayCount = currentIconPlayCount2;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: MICA playback at end (currentIconPlayCount: %{public}ld)", &v24, 0x16u);
      }
    }

    if ([(AMSUIBaseMessageViewController *)self currentIconPlayCount]>= v12)
    {
      [timeCopy pause];
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = v20;
        currentIconPlayCount3 = [(AMSUIBaseMessageViewController *)self currentIconPlayCount];
        v24 = 138543874;
        v25 = v20;
        v26 = 2050;
        currentIconPlayCount = currentIconPlayCount3;
        v28 = 2050;
        v29 = v12;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@: Paused MICA playback (currentIconPlayCount: %{public}ld, maxPlayCount: %{public}ld)", &v24, 0x20u);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (AMSUIMessageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end