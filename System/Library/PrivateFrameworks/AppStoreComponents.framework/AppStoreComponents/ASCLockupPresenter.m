@interface ASCLockupPresenter
+ (__CFString)iconPlaceholderDecoration;
+ (id)log;
- (ASCLockupPresenter)initWithView:(id)a3 customContentProvider:(id)a4 offerPresenter:(id)a5 metricsPresenter:(id)a6;
- (ASCLockupPresenter)initWithView:(id)a3 customContentProvider:(id)a4 offerPresenter:(id)a5 metricsPresenter:(id)a6 context:(id)a7;
- (ASCLockupPresenter)initWithView:(id)a3 metricsPresenter:(id)a4;
- (ASCLockupPresenter)initWithView:(id)a3 offerPresenter:(id)a4 metricsPresenter:(id)a5;
- (ASCLockupPresenterObserver)observer;
- (ASCLockupPresenterView)view;
- (BOOL)prefersRightToLeftViewLayout;
- (id)description;
- (void)beginViewRender;
- (void)daemonDidRebootstrap:(id)a3;
- (void)dealloc;
- (void)endViewRender;
- (void)iconArtwork:(id)a3 didFailFetchWithError:(id)a4;
- (void)iconArtwork:(id)a3 didFetchImage:(id)a4;
- (void)performFollowUpWork:(id)a3;
- (void)performIconFetch;
- (void)performLockupFetch;
- (void)reloadDefaultContent;
- (void)request:(id)a3 didCompleteWithLockup:(id)a4;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestWillFetchLockup:(id)a3;
- (void)retryGroup:(id)a3;
- (void)retryRequestIfNeeded:(id)a3;
- (void)setGroup:(id)a3;
- (void)setLockup:(id)a3;
- (void)setRequest:(id)a3;
- (void)setShowsPlaceholderContent:(BOOL)a3;
- (void)showLoadingState;
@end

@implementation ASCLockupPresenter

+ (id)log
{
  objc_opt_self();
  if (log_onceToken_3 != -1)
  {
    +[ASCLockupPresenter log];
  }

  v0 = log_log_3;

  return v0;
}

uint64_t __25__ASCLockupPresenter_log__block_invoke()
{
  log_log_3 = os_log_create("com.apple.AppStoreComponents", "ASCLockupPresenter");

  return MEMORY[0x2821F96F8]();
}

+ (__CFString)iconPlaceholderDecoration
{
  objc_opt_self();

  return @"roundedRect";
}

- (ASCLockupPresenter)initWithView:(id)a3 customContentProvider:(id)a4 offerPresenter:(id)a5 metricsPresenter:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = ASCLockupPresenter;
  v17 = [(ASCLockupPresenter *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_view, v12);
    objc_storeStrong(&v18->_context, a7);
    objc_storeStrong(&v18->_offerPresenter, a5);
    objc_storeStrong(&v18->_metricsPresenter, a6);
    objc_storeStrong(&v18->_customContentProvider, a4);
    v18->_showsPlaceholderContent = 1;
    [(ASCLockupPresenter *)v18 showLoadingState];
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = +[ASCRebootstrapNotifier sharedNotifier];
    [v19 addObserver:v18 selector:sel_daemonDidRebootstrap_ name:0x2827A4C98 object:v20];
  }

  return v18;
}

- (ASCLockupPresenter)initWithView:(id)a3 customContentProvider:(id)a4 offerPresenter:(id)a5 metricsPresenter:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[ASCPresenterContext sharedContext];
  v15 = [(ASCLockupPresenter *)self initWithView:v13 customContentProvider:v12 offerPresenter:v11 metricsPresenter:v10 context:v14];

  return v15;
}

- (ASCLockupPresenter)initWithView:(id)a3 offerPresenter:(id)a4 metricsPresenter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[ASCPresenterContext sharedContext];
  v12 = [(ASCLockupPresenter *)self initWithView:v10 customContentProvider:0 offerPresenter:v9 metricsPresenter:v8 context:v11];

  return v12;
}

- (ASCLockupPresenter)initWithView:(id)a3 metricsPresenter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ASCPresenterContext sharedContext];
  v9 = [(ASCLockupPresenter *)self initWithView:v7 customContentProvider:0 offerPresenter:0 metricsPresenter:v6 context:v8];

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCLockupPresenter;
  [(ASCLockupPresenter *)&v4 dealloc];
}

- (BOOL)prefersRightToLeftViewLayout
{
  v2 = [MEMORY[0x277CBEAF8] asc_storefrontLocale];
  v3 = [v2 asc_prefersRightToLeftLayout];

  return v3;
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  lockup = self->_lockup;
  v26 = v4;
  if (!v4 || !lockup)
  {
    if (lockup == v4)
    {
      goto LABEL_10;
    }

LABEL_6:
    v7 = [(ASCLockup *)v4 copy];
    v8 = self->_lockup;
    self->_lockup = v7;

    if (v26)
    {
      v9 = [(ASCLockupPresenter *)self view];
      [v9 setLoading:0];

      v10 = [(ASCLockup *)v26 offer];
      v11 = [(ASCLockupPresenter *)self offerPresenter];
      [v11 setOffer:v10];

      v12 = [(ASCLockupPresenter *)self metricsPresenter];
      [v12 setModel:v26];

      [(ASCLockupPresenter *)self performIconFetch];
      v13 = [(ASCLockupPresenter *)self view];
      v14 = [(ASCLockup *)v26 heading];
      [v13 setHeading:v14];

      v15 = [(ASCLockupPresenter *)self view];
      v16 = [(ASCLockup *)v26 title];
      [v15 setTitle:v16];

      v17 = [(ASCLockupPresenter *)self view];
      v18 = [(ASCLockup *)v26 subtitle];
      [v17 setSubtitle:v18];

      v19 = [(ASCLockupPresenter *)self view];
      [v19 setPrefersRightToLeftLayout:{-[ASCLockupPresenter prefersRightToLeftViewLayout](self, "prefersRightToLeftViewLayout")}];

      v20 = [(ASCLockupPresenter *)self view];
      v21 = [(ASCLockup *)v26 displayContext];
      [v20 setDisplayContext:v21];

      v22 = [(ASCLockupPresenter *)self view];
      v23 = [(ASCLockupPresenter *)self customContentProvider];
      v24 = [v23 badgeView];
      [v22 setBadge:v24];
    }

    else
    {
      [(ASCLockupPresenter *)self reloadDefaultContent];
    }

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 postNotificationName:@"ASCLockupPresenterDidChangeNotification" object:self];

    goto LABEL_10;
  }

  v6 = [(ASCLockup *)lockup isEqual:v4];
  v4 = v26;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (void)setGroup:(id)a3
{
  v5 = a3;
  v6 = self->_group;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(ASCLockupViewGroup *)v6 isEqual:v5];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v7 == v5)
    {
      goto LABEL_13;
    }
  }

  if (self->_group)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:self name:@"ASCLockupPresenterRetryGroupNotification" object:self->_group];
  }

  objc_storeStrong(&self->_group, a3);
  if (v5)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_retryGroup_ name:@"ASCLockupPresenterRetryGroupNotification" object:v5];

    v11 = [(ASCLockupPresenter *)self request];

    if (v11)
    {
      v12 = +[ASCLockupPresenter log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ASCLockupPresenter *)self setGroup:v12];
      }
    }
  }

LABEL_13:
}

- (void)setRequest:(id)a3
{
  v4 = a3;
  request = self->_request;
  v9 = v4;
  if (!v4 || !request)
  {
    if (request == v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCLockupRequest *)request isEqual:v4];
  v4 = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCLockupRequest *)v4 copy];
    v8 = self->_request;
    self->_request = v7;

    [(ASCLockupPresenter *)self performLockupFetch];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)setShowsPlaceholderContent:(BOOL)a3
{
  if (self->_showsPlaceholderContent != a3)
  {
    self->_showsPlaceholderContent = a3;
    [(ASCLockupPresenter *)self reloadDefaultContent];
  }
}

- (void)showLoadingState
{
  if ([(ASCLockupPresenter *)self showsPlaceholderContent])
  {
    v3 = [(ASCLockupPresenter *)self view];
    v4 = +[ASCLockupPresenter iconPlaceholderDecoration];
    [v3 setIconImage:0 withDecoration:v4];

    v5 = [(ASCLockupPresenter *)self view];
    [v5 setHeading:0];

    v6 = [(ASCLockupPresenter *)self view];
    [v6 setTitle:0];

    v7 = [(ASCLockupPresenter *)self view];
    [v7 setSubtitle:0];

    v8 = [(ASCLockupPresenter *)self view];
    [v8 setPrefersRightToLeftLayout:{-[ASCLockupPresenter prefersRightToLeftViewLayout](self, "prefersRightToLeftViewLayout")}];

    v9 = [(ASCLockupPresenter *)self view];
    [v9 setBadge:0];

    v10 = [(ASCLockupPresenter *)self view];
    [v10 setLoading:1];

    v20 = +[ASCOfferMetadata placeholderMetadata];
    v11 = [[ASCLocalOffer alloc] initWithMetadata:v20 action:0];
    v12 = [(ASCLockupPresenter *)self offerPresenter];
    [v12 setOffer:v11];
  }

  else
  {
    v13 = [(ASCLockupPresenter *)self offerPresenter];
    [v13 setOffer:0];

    v14 = [(ASCLockupPresenter *)self metricsPresenter];
    [v14 setModel:0];

    v15 = [(ASCLockupPresenter *)self view];
    [v15 setIconImage:0 withDecoration:@"none"];

    v16 = [(ASCLockupPresenter *)self view];
    [v16 setHeading:0];

    v17 = [(ASCLockupPresenter *)self view];
    [v17 setTitle:0];

    v18 = [(ASCLockupPresenter *)self view];
    [v18 setSubtitle:0];

    v19 = [(ASCLockupPresenter *)self view];
    [v19 setBadge:0];

    v20 = [(ASCLockupPresenter *)self view];
    [v20 setLoading:0];
  }
}

- (void)reloadDefaultContent
{
  v3 = [(ASCLockupPresenter *)self request];
  if (v3 || ([(ASCLockupPresenter *)self lockup], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v4 = [(ASCLockupPresenter *)self pendingRequestedLockup];

    if (!v4)
    {

      [(ASCLockupPresenter *)self showLoadingState];
    }
  }
}

- (void)retryRequestIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupPresenter *)self request];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(ASCLockupPresenter *)self pendingRequestedLockup];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(ASCLockupPresenter *)self pendingRequestedLockup];
  v10 = [v9 asc_isCanceledOrPending];

  if (v10)
  {
LABEL_7:
    v4[2](v4, 0);
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke;
  v19[3] = &unk_2781CC0E8;
  v19[4] = self;
  v11 = MEMORY[0x216070C30](v19);
  v12 = [(ASCLockupPresenter *)self group];

  if (v12)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [(ASCLockupPresenter *)self group];
    [v13 postNotificationName:@"ASCLockupPresenterRetryGroupNotification" object:v14];

    v11[2](v11);
    v4[2](v4, 1);
  }

  else
  {
    v15 = [(ASCLockupPresenter *)self pendingRequestedLockup];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke_2;
    v16[3] = &unk_2781CC340;
    v16[4] = self;
    v17 = v11;
    v18 = v4;
    [v15 resultWithCompletion:v16];
  }

LABEL_8:
}

void __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metricsPresenter];
  [v1 viewDidRetryFailedRequest];
}

uint64_t __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  if (!v4)
  {
    v5 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Retrying failed request", &v8, 0xCu);
    }

    [*(a1 + 32) performLockupFetch];
  }

  (*(*(a1 + 40) + 16))();
  return (*(*(a1 + 48) + 16))();
}

- (void)performLockupFetch
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(ASCLockupPresenter *)self pendingRequestedLockup];
  if (v4)
  {
    v5 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Canceling previous request", buf, 0xCu);
    }

    [v4 cancel];
    [(ASCLockupPresenter *)self setPendingRequestedLockup:0];
  }

  v6 = [(ASCLockupPresenter *)self request];
  if (!v6)
  {
    v11 = [(ASCLockupPresenter *)self view];
    [v11 setLoading:0];

    [(ASCLockupPresenter *)self reloadDefaultContent];
    goto LABEL_15;
  }

  [(ASCLockupPresenter *)self requestWillFetchLockup:v6];
  v7 = [(ASCLockupPresenter *)self group];
  if (v7)
  {
    v2 = [v6 context];
    if ((ASCLockupContextIsContingentPricingContext(v2, v8) & 1) == 0)
    {
      v9 = [(ASCLockupPresenter *)self group];
      v10 = [v9 lockupWithRequest:v6];

LABEL_11:
      goto LABEL_12;
    }
  }

  v12 = [(ASCLockupPresenter *)self context];
  v13 = [v12 lockupFetcher];
  v10 = [v13 lockupWithRequest:v6];

  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(ASCLockupPresenter *)self setPendingRequestedLockup:v10];
  v14 = +[ASCLockupPresenter log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_21571A000, v14, OS_LOG_TYPE_INFO, "%{public}@: Started new request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__ASCLockupPresenter_performLockupFetch__block_invoke;
  v19[3] = &unk_2781CC368;
  objc_copyWeak(&v21, buf);
  v15 = v6;
  v20 = v15;
  [v10 addSuccessBlock:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__ASCLockupPresenter_performLockupFetch__block_invoke_2;
  v16[3] = &unk_2781CC390;
  objc_copyWeak(&v18, buf);
  v17 = v15;
  [v10 addErrorBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

LABEL_15:
}

void __40__ASCLockupPresenter_performLockupFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained request:*(a1 + 32) didCompleteWithLockup:v3];
}

void __40__ASCLockupPresenter_performLockupFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained request:*(a1 + 32) didFailWithError:v3];
}

- (void)performIconFetch
{
  v3 = [(ASCLockupPresenter *)self lockup];
  v4 = [v3 icon];

  if (v4)
  {
    v5 = [v4 decoration];
    v6 = [v5 isEqualToString:@"none"];

    v7 = [(ASCLockupPresenter *)self view];
    if (v6)
    {
      +[ASCLockupPresenter iconPlaceholderDecoration];
    }

    else
    {
      [v4 decoration];
    }
    v9 = ;
    [v7 setIconImage:0 withDecoration:v9];

    v10 = [(ASCLockupPresenter *)self pendingViewRender];

    if (v10)
    {
      v11 = [(ASCLockupPresenter *)self pendingViewRender];
      +[ASCViewRender resourceRequestDidBeginWithTag:](ASCViewRender, "resourceRequestDidBeginWithTag:", [v11 primaryTag]);
    }

    v12 = [(ASCLockupPresenter *)self view];
    [v12 preferredIconSize];
    v14 = v13;
    v16 = v15;

    v17 = [(ASCLockupPresenter *)self context];
    v18 = [v17 artworkFetcher];
    v19 = [v18 imageForContentsOfArtwork:v4 withSize:{v14, v16}];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __38__ASCLockupPresenter_performIconFetch__block_invoke;
    v24[3] = &unk_2781CC3B8;
    objc_copyWeak(&v26, &location);
    v20 = v4;
    v25 = v20;
    [v19 addSuccessBlock:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__ASCLockupPresenter_performIconFetch__block_invoke_2;
    v21[3] = &unk_2781CC390;
    objc_copyWeak(&v23, &location);
    v22 = v20;
    [v19 addErrorBlock:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [(ASCLockupPresenter *)self view];
    [v8 setIconImage:0 withDecoration:@"none"];

    [(ASCLockupPresenter *)self endViewRender];
  }
}

void __38__ASCLockupPresenter_performIconFetch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained iconArtwork:*(a1 + 32) didFetchImage:v3];
}

void __38__ASCLockupPresenter_performIconFetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained iconArtwork:*(a1 + 32) didFailFetchWithError:v3];
}

- (void)performFollowUpWork:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)requestWillFetchLockup:(id)a3
{
  [(ASCLockupPresenter *)self beginViewRender];
  v4 = [(ASCLockupPresenter *)self lockup];

  if (!v4)
  {
    v5 = [(ASCLockupPresenter *)self view];
    v7 = ASCLocalizedString(@"LOADING", v6);
    [v5 setTitle:v7];

    [(ASCLockupPresenter *)self showLoadingState];
  }

  v8 = [(ASCLockupPresenter *)self observer];
  [v8 lockupPresenterDidBeginRequest];
}

- (void)request:(id)a3 didCompleteWithLockup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ASCLockupPresenter_request_didCompleteWithLockup___block_invoke;
  v10[3] = &unk_2781CB9D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(ASCLockupPresenter *)self performFollowUpWork:v10];
}

void __52__ASCLockupPresenter_request_didCompleteWithLockup___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {

    if (v3 == v4)
    {
LABEL_10:
      v9 = +[ASCLockupPresenter log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_21571A000, v9, OS_LOG_TYPE_INFO, "%{public}@: Completed request", &v14, 0xCu);
      }

      v11 = [*(a1 + 32) view];
      [v11 setLoading:0];

      v12 = [*(a1 + 32) pendingViewRender];

      if (v12)
      {
        v13 = [*(a1 + 32) pendingViewRender];
        +[ASCViewRender rootViewModelPresentWithTag:](ASCViewRender, "rootViewModelPresentWithTag:", [v13 primaryTag]);
      }

      [*(a1 + 32) setLockup:*(a1 + 48)];
      [*(a1 + 32) setPendingRequestedLockup:0];
      v6 = [*(a1 + 32) observer];
      [v6 lockupPresenterDidFinishRequest];
      goto LABEL_15;
    }
  }

  else
  {
    v8 = [v2 isEqual:*(a1 + 40)];

    if (v8)
    {
      goto LABEL_10;
    }
  }

  v6 = +[ASCLockupPresenter log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_21571A000, v6, OS_LOG_TYPE_INFO, "%{public}@: Ignoring loaded lockup for mismatched request", &v14, 0xCu);
  }

LABEL_15:
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v9 = [v7 code];

    if (v9 == 3072)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ASCLockupPresenter_request_didFailWithError___block_invoke;
  v10[3] = &unk_2781CB9D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  [(ASCLockupPresenter *)self performFollowUpWork:v10];

LABEL_6:
}

void __47__ASCLockupPresenter_request_didFailWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) request];
  v4 = v3;
  v5 = v2[1];
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {

    if (v4 == v5)
    {
LABEL_10:
      v10 = +[ASCLockupPresenter log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47__ASCLockupPresenter_request_didFailWithError___block_invoke_cold_1(v2, a1, v10);
      }

      v11 = [*(a1 + 32) view];
      [v11 setLoading:0];

      v12 = [*(a1 + 32) offerPresenter];
      [v12 setOffer:0];

      [*(a1 + 32) setLockup:0];
      [*(a1 + 32) setPendingViewRender:0];
      v7 = [ASCImageRenderer systemImageNamed:@"arrow.counterclockwise.circle" compatibleWithTraitCollection:0];
      v13 = [*(a1 + 32) view];
      v14 = +[ASCLockupPresenter iconPlaceholderDecoration];
      [v13 setIconImage:v7 withDecoration:v14];

      v15 = [*(a1 + 32) view];
      [v15 setHeading:0];

      v16 = [*(a1 + 32) view];
      [v16 setTitle:0];

      v17 = [*(a1 + 32) view];
      v18 = ASCLocalizedPlatformString(@"VIEW_ERROR");
      [v17 setSubtitle:v18];

      v19 = [*(a1 + 32) view];
      [v19 setPrefersRightToLeftLayout:{objc_msgSend(*(a1 + 32), "prefersRightToLeftViewLayout")}];

      v20 = [*(a1 + 32) observer];
      [v20 lockupPresenterDidFailRequestWithError:*(a1 + 48)];

      v21 = [*(a1 + 32) metricsPresenter];
      [v21 viewDidFailRequest:*(a1 + 40) withError:*(a1 + 48)];

      goto LABEL_13;
    }
  }

  else
  {
    v9 = [v3 isEqual:v2[1]];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v7 = +[ASCLockupPresenter log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *v2;
    v22 = 138543362;
    v23 = v8;
    _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "%{public}@: Ignoring load error for mismatched request", &v22, 0xCu);
  }

LABEL_13:
}

- (void)iconArtwork:(id)a3 didFetchImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ASCLockupPresenter_iconArtwork_didFetchImage___block_invoke;
  v10[3] = &unk_2781CB9D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(ASCLockupPresenter *)self performFollowUpWork:v10];
}

void __48__ASCLockupPresenter_iconArtwork_didFetchImage___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lockup];
  v3 = [v2 icon];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v3 == v5;
  }

  else
  {
    v7 = [v3 isEqual:?];
  }

  if (v7)
  {
    v8 = [*(a1 + 32) view];
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) decoration];
    [v8 setIconImage:v9 withDecoration:v10];

    v11 = [*(a1 + 32) pendingViewRender];

    if (v11)
    {
      v12 = [*(a1 + 32) pendingViewRender];
      +[ASCViewRender resourceRequestDidEndWithTag:](ASCViewRender, "resourceRequestDidEndWithTag:", [v12 primaryTag]);
    }

    v13 = *(a1 + 32);

    [v13 endViewRender];
  }

  else
  {
    v14 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_21571A000, v14, OS_LOG_TYPE_INFO, "%{public}@: Ignoring icon for mismatched lockup", &v16, 0xCu);
    }
  }
}

- (void)iconArtwork:(id)a3 didFailFetchWithError:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ASCLockupPresenter_iconArtwork_didFailFetchWithError___block_invoke;
  v7[3] = &unk_2781CC1F8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ASCLockupPresenter *)self performFollowUpWork:v7];
}

void __56__ASCLockupPresenter_iconArtwork_didFailFetchWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lockup];
  v3 = [v2 icon];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v3 == v5;
  }

  else
  {
    v7 = [v3 isEqual:?];
  }

  if (v7)
  {
    v8 = *(a1 + 32);

    [v8 endViewRender];
  }

  else
  {
    v9 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_21571A000, v9, OS_LOG_TYPE_INFO, "%{public}@: Ignoring icon for mismatched lockup", &v11, 0xCu);
    }
  }
}

- (void)beginViewRender
{
  v3 = [(ASCLockupPresenter *)self request];

  if (v3)
  {
    v4 = [(ASCLockupPresenter *)self context];
    v5 = [v4 lockupFetcher];
    v6 = [(ASCLockupPresenter *)self request];
    v7 = [v5 loadedLockupWithRequest:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [(ASCLockupPresenter *)self group];
      v10 = [v9 prefetchSpansIfLoaded];

      if (!v10)
      {
        return;
      }
    }

    else
    {
    }

    v11 = objc_alloc_init(ASCSignpostSpan);
    [(ASCLockupPresenter *)self setPendingViewRender:v11];

    v12 = [(ASCLockupPresenter *)self pendingViewRender];
    v13 = [(ASCLockupPresenter *)self request];
    v14 = [v13 id];
    [v12 addSupplementaryTag:ASCSignpostTagFromID(v14)];

    v15 = [(ASCLockupPresenter *)self pendingViewRender];
    [v15 beginEmitting];

    v16 = [(ASCLockupPresenter *)self pendingViewRender];
    +[ASCViewRender pageRequestedWithTag:](ASCViewRender, "pageRequestedWithTag:", [v16 primaryTag]);
  }
}

- (void)endViewRender
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockupPresenter *)self pendingViewRender];

  if (v3)
  {
    v4 = [(ASCLockupPresenter *)self pendingViewRender];
    +[ASCViewRender pageUserReadyWithTag:](ASCViewRender, "pageUserReadyWithTag:", [v4 primaryTag]);

    v5 = [(ASCLockupPresenter *)self pendingViewRender];
    [v5 endEmitting];

    v6 = [(ASCLockupPresenter *)self lockup];
    v7 = [v6 signpostTags];

    if (v7)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          v12 = 0;
          do
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v26 + 1) + 8 * v12);
            v14 = [(ASCLockupPresenter *)self pendingViewRender];
            [v14 addSupplementaryTag:{objc_msgSend(v13, "unsignedLongLongValue")}];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [(ASCLockupPresenter *)self pendingViewRender];
    [v15 addObject:v16];

    v17 = [(ASCLockupPresenter *)self group];
    v18 = [v17 prefetchSpansIfLoaded];

    if (v18)
    {
      v19 = [(ASCLockupPresenter *)self group];
      v20 = [v19 prefetchSpansIfLoaded];
      [v15 addObjectsFromArray:v20];
    }

    v21 = [(ASCLockupPresenter *)self viewRenderSpanProvider];
    v22 = v21;
    if (v21)
    {
      v23 = (*(v21 + 16))(v21);
      [v15 addObjectsFromArray:v23];
    }

    v24 = [[ASCSignpostPredicate alloc] initWithSpans:v15];
    v25 = [(ASCLockupPresenter *)self metricsPresenter];
    [v25 viewDidEndRenderWithPredicate:v24];

    [(ASCLockupPresenter *)self setPendingViewRender:0];
  }
}

- (void)daemonDidRebootstrap:(id)a3
{
  v4 = [(ASCLockupPresenter *)self request];

  if (v4)
  {
    [(ASCLockupPresenter *)self setLockup:0];

    [(ASCLockupPresenter *)self performLockupFetch];
  }
}

- (void)retryGroup:(id)a3
{
  v4 = [(ASCLockupPresenter *)self request];
  if (v4)
  {
    v10 = v4;
    v5 = [(ASCLockupPresenter *)self pendingRequestedLockup];
    if (v5)
    {
      v6 = v5;
      v7 = [(ASCLockupPresenter *)self pendingRequestedLockup];
      v8 = [v7 asc_isCanceledOrPending];

      if ((v8 & 1) == 0)
      {
        v9 = [(ASCLockupPresenter *)self pendingRequestedLockup];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __33__ASCLockupPresenter_retryGroup___block_invoke;
        v11[3] = &unk_2781CC3E0;
        v11[4] = self;
        [v9 resultWithCompletion:v11];
      }
    }

    else
    {
    }
  }
}

uint64_t __33__ASCLockupPresenter_retryGroup___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2 && a3)
  {
    v3 = result;
    v4 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(v3 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "%{public}@: Retrying failed request as part of group", &v6, 0xCu);
    }

    return [*(v3 + 32) performLockupFetch];
  }

  return result;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupPresenter *)self group];
  [(ASCDescriber *)v3 addObject:v4 withName:@"group"];

  v5 = [(ASCLockupPresenter *)self lockup];
  v6 = [v5 id];
  [(ASCDescriber *)v3 addObject:v6 withName:@"lockup.id"];

  v7 = [(ASCLockupPresenter *)self request];
  v8 = [v7 id];
  [(ASCDescriber *)v3 addObject:v8 withName:@"request.id"];

  v9 = [(ASCDescriber *)v3 finalizeDescription];

  return v9;
}

- (ASCLockupPresenterObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (ASCLockupPresenterView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)setGroup:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
}

void __47__ASCLockupPresenter_request_didFailWithError___block_invoke_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = AMSLogableError();
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21571A000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Request did fail, reason: %{public}@", &v6, 0x16u);
}

@end