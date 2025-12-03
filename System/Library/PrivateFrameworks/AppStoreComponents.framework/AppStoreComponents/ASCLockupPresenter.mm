@interface ASCLockupPresenter
+ (__CFString)iconPlaceholderDecoration;
+ (id)log;
- (ASCLockupPresenter)initWithView:(id)view customContentProvider:(id)provider offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter;
- (ASCLockupPresenter)initWithView:(id)view customContentProvider:(id)provider offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter context:(id)context;
- (ASCLockupPresenter)initWithView:(id)view metricsPresenter:(id)presenter;
- (ASCLockupPresenter)initWithView:(id)view offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter;
- (ASCLockupPresenterObserver)observer;
- (ASCLockupPresenterView)view;
- (BOOL)prefersRightToLeftViewLayout;
- (id)description;
- (void)beginViewRender;
- (void)daemonDidRebootstrap:(id)rebootstrap;
- (void)dealloc;
- (void)endViewRender;
- (void)iconArtwork:(id)artwork didFailFetchWithError:(id)error;
- (void)iconArtwork:(id)artwork didFetchImage:(id)image;
- (void)performFollowUpWork:(id)work;
- (void)performIconFetch;
- (void)performLockupFetch;
- (void)reloadDefaultContent;
- (void)request:(id)request didCompleteWithLockup:(id)lockup;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestWillFetchLockup:(id)lockup;
- (void)retryGroup:(id)group;
- (void)retryRequestIfNeeded:(id)needed;
- (void)setGroup:(id)group;
- (void)setLockup:(id)lockup;
- (void)setRequest:(id)request;
- (void)setShowsPlaceholderContent:(BOOL)content;
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

- (ASCLockupPresenter)initWithView:(id)view customContentProvider:(id)provider offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter context:(id)context
{
  viewCopy = view;
  providerCopy = provider;
  presenterCopy = presenter;
  metricsPresenterCopy = metricsPresenter;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = ASCLockupPresenter;
  v17 = [(ASCLockupPresenter *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_view, viewCopy);
    objc_storeStrong(&v18->_context, context);
    objc_storeStrong(&v18->_offerPresenter, presenter);
    objc_storeStrong(&v18->_metricsPresenter, metricsPresenter);
    objc_storeStrong(&v18->_customContentProvider, provider);
    v18->_showsPlaceholderContent = 1;
    [(ASCLockupPresenter *)v18 showLoadingState];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = +[ASCRebootstrapNotifier sharedNotifier];
    [defaultCenter addObserver:v18 selector:sel_daemonDidRebootstrap_ name:0x2827A4C98 object:v20];
  }

  return v18;
}

- (ASCLockupPresenter)initWithView:(id)view customContentProvider:(id)provider offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter
{
  metricsPresenterCopy = metricsPresenter;
  presenterCopy = presenter;
  providerCopy = provider;
  viewCopy = view;
  v14 = +[ASCPresenterContext sharedContext];
  v15 = [(ASCLockupPresenter *)self initWithView:viewCopy customContentProvider:providerCopy offerPresenter:presenterCopy metricsPresenter:metricsPresenterCopy context:v14];

  return v15;
}

- (ASCLockupPresenter)initWithView:(id)view offerPresenter:(id)presenter metricsPresenter:(id)metricsPresenter
{
  metricsPresenterCopy = metricsPresenter;
  presenterCopy = presenter;
  viewCopy = view;
  v11 = +[ASCPresenterContext sharedContext];
  v12 = [(ASCLockupPresenter *)self initWithView:viewCopy customContentProvider:0 offerPresenter:presenterCopy metricsPresenter:metricsPresenterCopy context:v11];

  return v12;
}

- (ASCLockupPresenter)initWithView:(id)view metricsPresenter:(id)presenter
{
  presenterCopy = presenter;
  viewCopy = view;
  v8 = +[ASCPresenterContext sharedContext];
  v9 = [(ASCLockupPresenter *)self initWithView:viewCopy customContentProvider:0 offerPresenter:0 metricsPresenter:presenterCopy context:v8];

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCLockupPresenter;
  [(ASCLockupPresenter *)&v4 dealloc];
}

- (BOOL)prefersRightToLeftViewLayout
{
  asc_storefrontLocale = [MEMORY[0x277CBEAF8] asc_storefrontLocale];
  asc_prefersRightToLeftLayout = [asc_storefrontLocale asc_prefersRightToLeftLayout];

  return asc_prefersRightToLeftLayout;
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockup = self->_lockup;
  v26 = lockupCopy;
  if (!lockupCopy || !lockup)
  {
    if (lockup == lockupCopy)
    {
      goto LABEL_10;
    }

LABEL_6:
    v7 = [(ASCLockup *)lockupCopy copy];
    v8 = self->_lockup;
    self->_lockup = v7;

    if (v26)
    {
      view = [(ASCLockupPresenter *)self view];
      [view setLoading:0];

      offer = [(ASCLockup *)v26 offer];
      offerPresenter = [(ASCLockupPresenter *)self offerPresenter];
      [offerPresenter setOffer:offer];

      metricsPresenter = [(ASCLockupPresenter *)self metricsPresenter];
      [metricsPresenter setModel:v26];

      [(ASCLockupPresenter *)self performIconFetch];
      view2 = [(ASCLockupPresenter *)self view];
      heading = [(ASCLockup *)v26 heading];
      [view2 setHeading:heading];

      view3 = [(ASCLockupPresenter *)self view];
      title = [(ASCLockup *)v26 title];
      [view3 setTitle:title];

      view4 = [(ASCLockupPresenter *)self view];
      subtitle = [(ASCLockup *)v26 subtitle];
      [view4 setSubtitle:subtitle];

      view5 = [(ASCLockupPresenter *)self view];
      [view5 setPrefersRightToLeftLayout:{-[ASCLockupPresenter prefersRightToLeftViewLayout](self, "prefersRightToLeftViewLayout")}];

      view6 = [(ASCLockupPresenter *)self view];
      displayContext = [(ASCLockup *)v26 displayContext];
      [view6 setDisplayContext:displayContext];

      view7 = [(ASCLockupPresenter *)self view];
      customContentProvider = [(ASCLockupPresenter *)self customContentProvider];
      badgeView = [customContentProvider badgeView];
      [view7 setBadge:badgeView];
    }

    else
    {
      [(ASCLockupPresenter *)self reloadDefaultContent];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ASCLockupPresenterDidChangeNotification" object:self];

    goto LABEL_10;
  }

  v6 = [(ASCLockup *)lockup isEqual:lockupCopy];
  lockupCopy = v26;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  v6 = self->_group;
  v7 = v6;
  if (groupCopy && v6)
  {
    v8 = [(ASCLockupViewGroup *)v6 isEqual:groupCopy];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v7 == groupCopy)
    {
      goto LABEL_13;
    }
  }

  if (self->_group)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"ASCLockupPresenterRetryGroupNotification" object:self->_group];
  }

  objc_storeStrong(&self->_group, group);
  if (groupCopy)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_retryGroup_ name:@"ASCLockupPresenterRetryGroupNotification" object:groupCopy];

    request = [(ASCLockupPresenter *)self request];

    if (request)
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

- (void)setRequest:(id)request
{
  requestCopy = request;
  request = self->_request;
  v9 = requestCopy;
  if (!requestCopy || !request)
  {
    if (request == requestCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [(ASCLockupRequest *)request isEqual:requestCopy];
  requestCopy = v9;
  if (!v6)
  {
LABEL_6:
    v7 = [(ASCLockupRequest *)requestCopy copy];
    v8 = self->_request;
    self->_request = v7;

    [(ASCLockupPresenter *)self performLockupFetch];
  }

LABEL_7:

  MEMORY[0x2821F96F8]();
}

- (void)setShowsPlaceholderContent:(BOOL)content
{
  if (self->_showsPlaceholderContent != content)
  {
    self->_showsPlaceholderContent = content;
    [(ASCLockupPresenter *)self reloadDefaultContent];
  }
}

- (void)showLoadingState
{
  if ([(ASCLockupPresenter *)self showsPlaceholderContent])
  {
    view = [(ASCLockupPresenter *)self view];
    v4 = +[ASCLockupPresenter iconPlaceholderDecoration];
    [view setIconImage:0 withDecoration:v4];

    view2 = [(ASCLockupPresenter *)self view];
    [view2 setHeading:0];

    view3 = [(ASCLockupPresenter *)self view];
    [view3 setTitle:0];

    view4 = [(ASCLockupPresenter *)self view];
    [view4 setSubtitle:0];

    view5 = [(ASCLockupPresenter *)self view];
    [view5 setPrefersRightToLeftLayout:{-[ASCLockupPresenter prefersRightToLeftViewLayout](self, "prefersRightToLeftViewLayout")}];

    view6 = [(ASCLockupPresenter *)self view];
    [view6 setBadge:0];

    view7 = [(ASCLockupPresenter *)self view];
    [view7 setLoading:1];

    view13 = +[ASCOfferMetadata placeholderMetadata];
    v11 = [[ASCLocalOffer alloc] initWithMetadata:view13 action:0];
    offerPresenter = [(ASCLockupPresenter *)self offerPresenter];
    [offerPresenter setOffer:v11];
  }

  else
  {
    offerPresenter2 = [(ASCLockupPresenter *)self offerPresenter];
    [offerPresenter2 setOffer:0];

    metricsPresenter = [(ASCLockupPresenter *)self metricsPresenter];
    [metricsPresenter setModel:0];

    view8 = [(ASCLockupPresenter *)self view];
    [view8 setIconImage:0 withDecoration:@"none"];

    view9 = [(ASCLockupPresenter *)self view];
    [view9 setHeading:0];

    view10 = [(ASCLockupPresenter *)self view];
    [view10 setTitle:0];

    view11 = [(ASCLockupPresenter *)self view];
    [view11 setSubtitle:0];

    view12 = [(ASCLockupPresenter *)self view];
    [view12 setBadge:0];

    view13 = [(ASCLockupPresenter *)self view];
    [view13 setLoading:0];
  }
}

- (void)reloadDefaultContent
{
  request = [(ASCLockupPresenter *)self request];
  if (request || ([(ASCLockupPresenter *)self lockup], (request = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    pendingRequestedLockup = [(ASCLockupPresenter *)self pendingRequestedLockup];

    if (!pendingRequestedLockup)
    {

      [(ASCLockupPresenter *)self showLoadingState];
    }
  }
}

- (void)retryRequestIfNeeded:(id)needed
{
  neededCopy = needed;
  request = [(ASCLockupPresenter *)self request];
  if (!request)
  {
    goto LABEL_7;
  }

  v6 = request;
  pendingRequestedLockup = [(ASCLockupPresenter *)self pendingRequestedLockup];
  if (!pendingRequestedLockup)
  {

    goto LABEL_7;
  }

  v8 = pendingRequestedLockup;
  pendingRequestedLockup2 = [(ASCLockupPresenter *)self pendingRequestedLockup];
  asc_isCanceledOrPending = [pendingRequestedLockup2 asc_isCanceledOrPending];

  if (asc_isCanceledOrPending)
  {
LABEL_7:
    neededCopy[2](neededCopy, 0);
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke;
  v19[3] = &unk_2781CC0E8;
  v19[4] = self;
  v11 = MEMORY[0x216070C30](v19);
  group = [(ASCLockupPresenter *)self group];

  if (group)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    group2 = [(ASCLockupPresenter *)self group];
    [defaultCenter postNotificationName:@"ASCLockupPresenterRetryGroupNotification" object:group2];

    v11[2](v11);
    neededCopy[2](neededCopy, 1);
  }

  else
  {
    pendingRequestedLockup3 = [(ASCLockupPresenter *)self pendingRequestedLockup];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__ASCLockupPresenter_retryRequestIfNeeded___block_invoke_2;
    v16[3] = &unk_2781CC340;
    v16[4] = self;
    v17 = v11;
    v18 = neededCopy;
    [pendingRequestedLockup3 resultWithCompletion:v16];
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
  pendingRequestedLockup = [(ASCLockupPresenter *)self pendingRequestedLockup];
  if (pendingRequestedLockup)
  {
    v5 = +[ASCLockupPresenter log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@: Canceling previous request", buf, 0xCu);
    }

    [pendingRequestedLockup cancel];
    [(ASCLockupPresenter *)self setPendingRequestedLockup:0];
  }

  request = [(ASCLockupPresenter *)self request];
  if (!request)
  {
    view = [(ASCLockupPresenter *)self view];
    [view setLoading:0];

    [(ASCLockupPresenter *)self reloadDefaultContent];
    goto LABEL_15;
  }

  [(ASCLockupPresenter *)self requestWillFetchLockup:request];
  group = [(ASCLockupPresenter *)self group];
  if (group)
  {
    context = [request context];
    if ((ASCLockupContextIsContingentPricingContext(context, v8) & 1) == 0)
    {
      group2 = [(ASCLockupPresenter *)self group];
      v10 = [group2 lockupWithRequest:request];

LABEL_11:
      goto LABEL_12;
    }
  }

  context2 = [(ASCLockupPresenter *)self context];
  lockupFetcher = [context2 lockupFetcher];
  v10 = [lockupFetcher lockupWithRequest:request];

  if (group)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(ASCLockupPresenter *)self setPendingRequestedLockup:v10];
  v14 = +[ASCLockupPresenter log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_21571A000, v14, OS_LOG_TYPE_INFO, "%{public}@: Started new request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__ASCLockupPresenter_performLockupFetch__block_invoke;
  v19[3] = &unk_2781CC368;
  objc_copyWeak(&v21, buf);
  v15 = request;
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
  lockup = [(ASCLockupPresenter *)self lockup];
  icon = [lockup icon];

  if (icon)
  {
    decoration = [icon decoration];
    v6 = [decoration isEqualToString:@"none"];

    view = [(ASCLockupPresenter *)self view];
    if (v6)
    {
      +[ASCLockupPresenter iconPlaceholderDecoration];
    }

    else
    {
      [icon decoration];
    }
    v9 = ;
    [view setIconImage:0 withDecoration:v9];

    pendingViewRender = [(ASCLockupPresenter *)self pendingViewRender];

    if (pendingViewRender)
    {
      pendingViewRender2 = [(ASCLockupPresenter *)self pendingViewRender];
      +[ASCViewRender resourceRequestDidBeginWithTag:](ASCViewRender, "resourceRequestDidBeginWithTag:", [pendingViewRender2 primaryTag]);
    }

    view2 = [(ASCLockupPresenter *)self view];
    [view2 preferredIconSize];
    v14 = v13;
    v16 = v15;

    context = [(ASCLockupPresenter *)self context];
    artworkFetcher = [context artworkFetcher];
    v19 = [artworkFetcher imageForContentsOfArtwork:icon withSize:{v14, v16}];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __38__ASCLockupPresenter_performIconFetch__block_invoke;
    v24[3] = &unk_2781CC3B8;
    objc_copyWeak(&v26, &location);
    v20 = icon;
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
    view3 = [(ASCLockupPresenter *)self view];
    [view3 setIconImage:0 withDecoration:@"none"];

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

- (void)performFollowUpWork:(id)work
{
  v3 = MEMORY[0x277CCACC8];
  block = work;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)requestWillFetchLockup:(id)lockup
{
  [(ASCLockupPresenter *)self beginViewRender];
  lockup = [(ASCLockupPresenter *)self lockup];

  if (!lockup)
  {
    view = [(ASCLockupPresenter *)self view];
    v7 = ASCLocalizedString(@"LOADING", v6);
    [view setTitle:v7];

    [(ASCLockupPresenter *)self showLoadingState];
  }

  observer = [(ASCLockupPresenter *)self observer];
  [observer lockupPresenterDidBeginRequest];
}

- (void)request:(id)request didCompleteWithLockup:(id)lockup
{
  requestCopy = request;
  lockupCopy = lockup;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ASCLockupPresenter_request_didCompleteWithLockup___block_invoke;
  v10[3] = &unk_2781CB9D8;
  v10[4] = self;
  v11 = requestCopy;
  v12 = lockupCopy;
  v8 = lockupCopy;
  v9 = requestCopy;
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

- (void)request:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    code = [errorCopy code];

    if (code == 3072)
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
  v11 = requestCopy;
  v12 = errorCopy;
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

- (void)iconArtwork:(id)artwork didFetchImage:(id)image
{
  artworkCopy = artwork;
  imageCopy = image;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ASCLockupPresenter_iconArtwork_didFetchImage___block_invoke;
  v10[3] = &unk_2781CB9D8;
  v10[4] = self;
  v11 = artworkCopy;
  v12 = imageCopy;
  v8 = imageCopy;
  v9 = artworkCopy;
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

- (void)iconArtwork:(id)artwork didFailFetchWithError:(id)error
{
  artworkCopy = artwork;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ASCLockupPresenter_iconArtwork_didFailFetchWithError___block_invoke;
  v7[3] = &unk_2781CC1F8;
  v7[4] = self;
  v8 = artworkCopy;
  v6 = artworkCopy;
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
  request = [(ASCLockupPresenter *)self request];

  if (request)
  {
    context = [(ASCLockupPresenter *)self context];
    lockupFetcher = [context lockupFetcher];
    request2 = [(ASCLockupPresenter *)self request];
    v7 = [lockupFetcher loadedLockupWithRequest:request2];
    if (v7)
    {
      v8 = v7;
      group = [(ASCLockupPresenter *)self group];
      prefetchSpansIfLoaded = [group prefetchSpansIfLoaded];

      if (!prefetchSpansIfLoaded)
      {
        return;
      }
    }

    else
    {
    }

    v11 = objc_alloc_init(ASCSignpostSpan);
    [(ASCLockupPresenter *)self setPendingViewRender:v11];

    pendingViewRender = [(ASCLockupPresenter *)self pendingViewRender];
    request3 = [(ASCLockupPresenter *)self request];
    v14 = [request3 id];
    [pendingViewRender addSupplementaryTag:ASCSignpostTagFromID(v14)];

    pendingViewRender2 = [(ASCLockupPresenter *)self pendingViewRender];
    [pendingViewRender2 beginEmitting];

    pendingViewRender3 = [(ASCLockupPresenter *)self pendingViewRender];
    +[ASCViewRender pageRequestedWithTag:](ASCViewRender, "pageRequestedWithTag:", [pendingViewRender3 primaryTag]);
  }
}

- (void)endViewRender
{
  v31 = *MEMORY[0x277D85DE8];
  pendingViewRender = [(ASCLockupPresenter *)self pendingViewRender];

  if (pendingViewRender)
  {
    pendingViewRender2 = [(ASCLockupPresenter *)self pendingViewRender];
    +[ASCViewRender pageUserReadyWithTag:](ASCViewRender, "pageUserReadyWithTag:", [pendingViewRender2 primaryTag]);

    pendingViewRender3 = [(ASCLockupPresenter *)self pendingViewRender];
    [pendingViewRender3 endEmitting];

    lockup = [(ASCLockupPresenter *)self lockup];
    signpostTags = [lockup signpostTags];

    if (signpostTags)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = signpostTags;
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
            pendingViewRender4 = [(ASCLockupPresenter *)self pendingViewRender];
            [pendingViewRender4 addSupplementaryTag:{objc_msgSend(v13, "unsignedLongLongValue")}];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingViewRender5 = [(ASCLockupPresenter *)self pendingViewRender];
    [v15 addObject:pendingViewRender5];

    group = [(ASCLockupPresenter *)self group];
    prefetchSpansIfLoaded = [group prefetchSpansIfLoaded];

    if (prefetchSpansIfLoaded)
    {
      group2 = [(ASCLockupPresenter *)self group];
      prefetchSpansIfLoaded2 = [group2 prefetchSpansIfLoaded];
      [v15 addObjectsFromArray:prefetchSpansIfLoaded2];
    }

    viewRenderSpanProvider = [(ASCLockupPresenter *)self viewRenderSpanProvider];
    v22 = viewRenderSpanProvider;
    if (viewRenderSpanProvider)
    {
      v23 = (*(viewRenderSpanProvider + 16))(viewRenderSpanProvider);
      [v15 addObjectsFromArray:v23];
    }

    v24 = [[ASCSignpostPredicate alloc] initWithSpans:v15];
    metricsPresenter = [(ASCLockupPresenter *)self metricsPresenter];
    [metricsPresenter viewDidEndRenderWithPredicate:v24];

    [(ASCLockupPresenter *)self setPendingViewRender:0];
  }
}

- (void)daemonDidRebootstrap:(id)rebootstrap
{
  request = [(ASCLockupPresenter *)self request];

  if (request)
  {
    [(ASCLockupPresenter *)self setLockup:0];

    [(ASCLockupPresenter *)self performLockupFetch];
  }
}

- (void)retryGroup:(id)group
{
  request = [(ASCLockupPresenter *)self request];
  if (request)
  {
    v10 = request;
    pendingRequestedLockup = [(ASCLockupPresenter *)self pendingRequestedLockup];
    if (pendingRequestedLockup)
    {
      v6 = pendingRequestedLockup;
      pendingRequestedLockup2 = [(ASCLockupPresenter *)self pendingRequestedLockup];
      asc_isCanceledOrPending = [pendingRequestedLockup2 asc_isCanceledOrPending];

      if ((asc_isCanceledOrPending & 1) == 0)
      {
        pendingRequestedLockup3 = [(ASCLockupPresenter *)self pendingRequestedLockup];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __33__ASCLockupPresenter_retryGroup___block_invoke;
        v11[3] = &unk_2781CC3E0;
        v11[4] = self;
        [pendingRequestedLockup3 resultWithCompletion:v11];
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
  group = [(ASCLockupPresenter *)self group];
  [(ASCDescriber *)v3 addObject:group withName:@"group"];

  lockup = [(ASCLockupPresenter *)self lockup];
  v6 = [lockup id];
  [(ASCDescriber *)v3 addObject:v6 withName:@"lockup.id"];

  request = [(ASCLockupPresenter *)self request];
  v8 = [request id];
  [(ASCDescriber *)v3 addObject:v8 withName:@"request.id"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
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