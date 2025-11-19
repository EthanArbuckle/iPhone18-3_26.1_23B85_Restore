@interface ASCAppearMetricsPresenter
+ (OS_os_log)log;
- (ASCAppearMetricsPresenter)initWithView:(id)a3;
- (ASCAppearMetricsPresenter)initWithView:(id)a3 metrics:(id)a4 notificationCenter:(id)a5;
- (BOOL)canAppear;
- (BOOL)canDisappear;
- (NSString)description;
- (UIView)view;
- (void)appearIfNeeded;
- (void)dealloc;
- (void)disappearIfNeeded;
- (void)hostDidEnterBackground;
- (void)hostWillEnterForeground;
- (void)scrollViewDidScroll:(id)a3;
- (void)setModel:(id)a3;
- (void)setScrollObserver:(id)a3;
- (void)viewDidAction;
- (void)viewDidEndRenderWithPredicate:(id)a3;
- (void)viewDidFailRequest:(id)a3 withError:(id)a4;
- (void)viewDidMoveToWindow;
- (void)viewDidRetryFailedRequest;
- (void)viewDidSetHidden;
@end

@implementation ASCAppearMetricsPresenter

+ (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    +[ASCAppearMetricsPresenter log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __32__ASCAppearMetricsPresenter_log__block_invoke()
{
  log_log = os_log_create("com.apple.AppStoreComponents", "ASCAppearMetricsPresenter");

  return MEMORY[0x2821F96F8]();
}

- (ASCAppearMetricsPresenter)initWithView:(id)a3 metrics:(id)a4 notificationCenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ASCAppearMetricsPresenter;
  v11 = [(ASCAppearMetricsPresenter *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_view, v8);
    objc_storeStrong(&v12->_metrics, a4);
    v13 = objc_alloc_init(ASCMetricsActivity);
    activity = v12->_activity;
    v12->_activity = v13;

    *&v12->_enabled = 1;
    objc_storeStrong(&v12->_notificationCenter, a5);
    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_hostDidEnterBackground name:*MEMORY[0x277CCA0C8] object:0];
    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_hostWillEnterForeground name:*MEMORY[0x277CCA0D0] object:0];
    v15 = *MEMORY[0x277D76758];
    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_hostDidEnterBackground name:*MEMORY[0x277D76660] object:0];
    [(NSNotificationCenter *)v12->_notificationCenter addObserver:v12 selector:sel_hostWillEnterForeground name:v15 object:0];
  }

  return v12;
}

- (ASCAppearMetricsPresenter)initWithView:(id)a3
{
  v4 = a3;
  v5 = +[ASCMetrics sharedMetrics];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = [(ASCAppearMetricsPresenter *)self initWithView:v4 metrics:v5 notificationCenter:v6];

  return v7;
}

- (void)dealloc
{
  v3 = [(ASCAppearMetricsPresenter *)self notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCAppearMetricsPresenter;
  [(ASCAppearMetricsPresenter *)&v4 dealloc];
}

- (void)setScrollObserver:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_21571A000, v6, OS_LOG_TYPE_INFO, "%{public}@ set scroll observer: %{public}@", &v15, 0x16u);
  }

  p_scrollObserver = &self->_scrollObserver;
  v8 = self->_scrollObserver;
  v9 = v8;
  if (v5 && v8)
  {
    v10 = [(ASCMetricsScrollObserver *)v8 isEqual:v5];

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v9 == v5)
    {
      goto LABEL_14;
    }
  }

  if (*p_scrollObserver)
  {
    [(ASCMetricsScrollObserver *)*p_scrollObserver removeDelegate:self];
  }

  objc_storeStrong(&self->_scrollObserver, a3);
  if (v5)
  {
    v11 = [(ASCAppearMetricsPresenter *)self model];
    if (!v11 || (v12 = v11, [(ASCAppearMetricsPresenter *)self model], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(ASCMetricsScrollObserver *)v5 hasModelAppeared:v13], v13, v12, !v14))
    {
      [(ASCMetricsScrollObserver *)v5 addDelegate:self];
    }
  }

LABEL_14:
}

- (void)setModel:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@ set model: %{public}@", &v17, 0x16u);
  }

  v6 = self->_model;
  v7 = v6;
  if (v4 && v6)
  {
    v8 = [(ASCViewModel *)v6 isEqual:v4];

    if (v8)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v7 == v4)
    {
      goto LABEL_22;
    }
  }

  v9 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = self;
    _os_log_impl(&dword_21571A000, v9, OS_LOG_TYPE_INFO, "%{public}@ begin setting model", &v17, 0xCu);
  }

  [(ASCAppearMetricsPresenter *)self setSettingModel:1];
  if (self->_model)
  {
    [(ASCAppearMetricsPresenter *)self disappearIfNeeded];
  }

  v10 = [(ASCViewModel *)v4 copyWithZone:0];
  model = self->_model;
  self->_model = v10;

  if (v4)
  {
    v12 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    if (v12)
    {
      v13 = v12;
      v14 = [(ASCAppearMetricsPresenter *)self isAppeared];

      if (v14)
      {
        v15 = +[ASCAppearMetricsPresenter log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138543362;
          v18 = self;
          _os_log_impl(&dword_21571A000, v15, OS_LOG_TYPE_INFO, "%{public}@ model id changed, reset appearance flag", &v17, 0xCu);
        }

        [(ASCAppearMetricsPresenter *)self setAppeared:0];
      }
    }

    [(ASCAppearMetricsPresenter *)self appearIfNeeded];
  }

  v16 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = self;
    _os_log_impl(&dword_21571A000, v16, OS_LOG_TYPE_INFO, "%{public}@ end setting model", &v17, 0xCu);
  }

  [(ASCAppearMetricsPresenter *)self setSettingModel:0];
LABEL_22:
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCAppearMetricsPresenter *)self model];
  v5 = [v4 id];
  [(ASCDescriber *)v3 addObject:v5 withName:@"model.id"];

  [(ASCDescriber *)v3 addBool:[(ASCAppearMetricsPresenter *)self isAppeared] withName:@"isAppeared"];
  v6 = [(ASCAppearMetricsPresenter *)self view];
  v7 = [v6 window];
  [(ASCDescriber *)v3 addBool:v7 != 0 withName:@"isInWindow"];

  v8 = [(ASCAppearMetricsPresenter *)self view];
  -[ASCDescriber addBool:withName:](v3, "addBool:withName:", [v8 isHidden], @"isHidden");

  v9 = [(ASCAppearMetricsPresenter *)self scrollObserver];
  [(ASCDescriber *)v3 addBool:v9 != 0 withName:@"isInScrollView"];

  v10 = [(ASCDescriber *)v3 finalizeDescription];

  return v10;
}

- (void)hostDidEnterBackground
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ host did enter background", &v4, 0xCu);
  }

  [(ASCAppearMetricsPresenter *)self setEnteringBackground:1];
  [(ASCAppearMetricsPresenter *)self disappearIfNeeded];
  [(ASCAppearMetricsPresenter *)self setEnteringBackground:0];
}

- (void)hostWillEnterForeground
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ host will enter foreground", &v4, 0xCu);
  }

  [(ASCAppearMetricsPresenter *)self setEnteringForeground:1];
  [(ASCAppearMetricsPresenter *)self appearIfNeeded];
  [(ASCAppearMetricsPresenter *)self setEnteringForeground:0];
}

- (void)viewDidMoveToWindow
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(ASCAppearMetricsPresenter *)self view];
    v5 = [v4 window];
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ did move to window %{public}@", &v12, 0x16u);
  }

  v6 = [(ASCAppearMetricsPresenter *)self view];
  v7 = [v6 window];

  if (v7)
  {
    v8 = [(ASCAppearMetricsPresenter *)self view];
    v9 = [v8 asc_nearestSuperviewPassingTest:&__block_literal_global_28];

    v10 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@ enclosing scroll view is %@", &v12, 0x16u);
    }

    if (v9)
    {
      v11 = [ASCMetricsScrollObserver observerForScrollView:v9];
      [(ASCAppearMetricsPresenter *)self setScrollObserver:v11];
    }

    else
    {
      [(ASCAppearMetricsPresenter *)self setScrollObserver:0];
    }

    [(ASCAppearMetricsPresenter *)self appearIfNeeded];
  }

  else
  {
    [(ASCAppearMetricsPresenter *)self setScrollObserver:0];
    [(ASCAppearMetricsPresenter *)self disappearIfNeeded];
  }
}

uint64_t __48__ASCAppearMetricsPresenter_viewDidMoveToWindow__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidSetHidden
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(ASCAppearMetricsPresenter *)self view];
    v7 = 138543618;
    v8 = self;
    v9 = 1026;
    v10 = [v4 isHidden];
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ set hidden %{public}d", &v7, 0x12u);
  }

  v5 = [(ASCAppearMetricsPresenter *)self view];
  v6 = [v5 isHidden];

  if (v6)
  {
    [(ASCAppearMetricsPresenter *)self disappearIfNeeded];
  }

  else
  {
    [(ASCAppearMetricsPresenter *)self appearIfNeeded];
  }
}

- (void)viewDidAction
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ASCAppearMetricsPresenter *)self model];
  v4 = [v3 metrics];

  v5 = +[ASCAppearMetricsPresenter log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@ did action", &v11, 0xCu);
    }

    v5 = [(ASCAppearMetricsPresenter *)self metrics];
    v7 = [(ASCAppearMetricsPresenter *)self model];
    v8 = [v7 metrics];
    v9 = [(ASCAppearMetricsPresenter *)self activity];
    v10 = [v5 processViewMetrics:v8 atInvocationPoint:@"click" withActivity:v9];
  }

  else if (v6)
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@ has no metrics for action", &v11, 0xCu);
  }
}

- (void)viewDidEndRenderWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(ASCAppearMetricsPresenter *)self model];

  if (!v5)
  {
    v17 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v17 initWithName:*MEMORY[0x277CBE658] reason:@"Cannot end view render without a model" userInfo:0]);
  }

  v6 = [(ASCAppearMetricsPresenter *)self scrollObserver];

  if (v6)
  {
    v7 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    v8 = [(ASCAppearMetricsPresenter *)self model];
    v9 = [v7 hasModelRendered:v8];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    v11 = [(ASCAppearMetricsPresenter *)self model];
    [v10 modelDidRender:v11];
  }

  v12 = [(ASCAppearMetricsPresenter *)self model];
  v13 = [v12 metrics];

  if (v13)
  {
    v14 = [(ASCAppearMetricsPresenter *)self metrics];
    v15 = [v14 processViewRenderWithPredicate:v4];
  }

  else
  {
    v16 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ASCAppearMetricsPresenter *)self viewDidEndRenderWithPredicate:v16];
    }
  }

LABEL_10:
}

- (void)viewDidFailRequest:(id)a3 withError:(id)a4
{
  v23[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if (![v8 isEqualToString:*MEMORY[0x277CCA050]] || objc_msgSend(v7, "code") < 4096)
  {

    goto LABEL_7;
  }

  v9 = [v7 code];

  if (v9 > 4224)
  {
LABEL_7:
    v22[0] = @"eventType";
    v22[1] = @"page";
    v23[0] = @"page";
    v23[1] = @"Error";
    v23[2] = @"AppStoreError";
    v22[2] = @"pageType";
    v22[3] = @"pageId";
    v11 = [v6 id];
    v12 = [v11 stringValue];
    v23[3] = v12;
    v22[4] = @"pageContext";
    v13 = [v6 context];
    v23[4] = v13;
    v22[5] = @"errorDescription";
    v14 = [v7 localizedDescription];
    v23[5] = v14;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];

    v15 = [ASCMetricsData alloc];
    v16 = [MEMORY[0x277CBEB98] set];
    v17 = [MEMORY[0x277CBEB98] set];
    v18 = [(ASCMetricsData *)v15 initWithTopic:0 shouldFlush:0 fields:v10 includingFields:v16 excludingFields:v17];

    v19 = [(ASCAppearMetricsPresenter *)self metrics];
    v20 = [(ASCAppearMetricsPresenter *)self activity];
    v21 = [v19 processMetricsData:v18 withActivity:v20];

    goto LABEL_8;
  }

  v10 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(ASCAppearMetricsPresenter *)self viewDidFailRequest:v7 withError:v10];
  }

LABEL_8:
}

- (void)viewDidRetryFailedRequest
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ did retry failed request", &v11, 0xCu);
  }

  v4 = [ASCMetricsData alloc];
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(ASCMetricsData *)v4 initWithTopic:0 shouldFlush:0 fields:&unk_2827B3900 includingFields:v5 excludingFields:v6];

  v8 = [(ASCAppearMetricsPresenter *)self metrics];
  v9 = [(ASCAppearMetricsPresenter *)self activity];
  v10 = [v8 processMetricsData:v7 withActivity:v9];
}

- (BOOL)canAppear
{
  v40 = *MEMORY[0x277D85DE8];
  if (![(ASCAppearMetricsPresenter *)self isEnabled])
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v38 = 138543362;
      v39 = self;
      v4 = "%{public}@ can appear: no, reason: not enabled";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if ([(ASCAppearMetricsPresenter *)self isAppeared])
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v38 = 138543362;
      v39 = self;
      v4 = "%{public}@ can appear: no, reason: already appeared";
LABEL_7:
      _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, v4, &v38, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = [(ASCAppearMetricsPresenter *)self model];
  v8 = [v7 metrics];

  if (!v8)
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v38 = 138543362;
    v39 = self;
    v4 = "%{public}@ can appear: no, reason: no metrics";
    goto LABEL_7;
  }

  v9 = [(ASCAppearMetricsPresenter *)self view];
  v10 = [v9 window];

  if (!v10)
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v38 = 138543362;
    v39 = self;
    v4 = "%{public}@ can appear: no, reason: no window";
    goto LABEL_7;
  }

  v11 = [(ASCAppearMetricsPresenter *)self view];
  v12 = [v11 isHidden];

  if (v12)
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v38 = 138543362;
    v39 = self;
    v4 = "%{public}@ can appear: no, reason: is hidden";
    goto LABEL_7;
  }

  v13 = [(ASCAppearMetricsPresenter *)self scrollObserver];

  if (v13)
  {
    v14 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    v15 = [(ASCAppearMetricsPresenter *)self model];
    if ([v14 hasModelAppeared:v15] && !-[ASCAppearMetricsPresenter isSettingModel](self, "isSettingModel"))
    {
      v37 = [(ASCAppearMetricsPresenter *)self isEnteringForeground];

      if (!v37)
      {
        v3 = +[ASCAppearMetricsPresenter log];
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v38 = 138543362;
        v39 = self;
        v4 = "%{public}@ can appear: no, reason: already appeared in scroll view";
        goto LABEL_7;
      }
    }

    else
    {
    }

    v16 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    [v16 visibleRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    v26 = [(ASCAppearMetricsPresenter *)self view];
    [v25 centerOfView:v26];
    v41.x = v27;
    v41.y = v28;
    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    v29 = CGRectContainsPoint(v42, v41);

    if (!v29)
    {
      v3 = +[ASCAppearMetricsPresenter log];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      v38 = 138543362;
      v39 = self;
      v4 = "%{public}@ can appear: no, reason: model is not visible";
      goto LABEL_7;
    }

    v30 = [(ASCAppearMetricsPresenter *)self scrollObserver];
    [v30 contentSize];
    v32 = v31;
    v34 = v33;
    v35 = MEMORY[0x277CBF3A8];
    v36 = *MEMORY[0x277CBF3A8];

    if (v32 == v36 && v34 == *(v35 + 8))
    {
      v3 = +[ASCAppearMetricsPresenter log];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      v38 = 138543362;
      v39 = self;
      v4 = "%{public}@ can appear: no, reason: scroll view content size is zero";
      goto LABEL_7;
    }
  }

  v3 = +[ASCAppearMetricsPresenter log];
  v5 = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v38 = 138543362;
    v39 = self;
    _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ can appear: yes", &v38, 0xCu);
  }

LABEL_9:

  return v5;
}

- (void)appearIfNeeded
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(ASCAppearMetricsPresenter *)self canAppear])
  {
    v3 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = self;
      _os_log_impl(&dword_21571A000, v3, OS_LOG_TYPE_INFO, "%{public}@ did appear", &v13, 0xCu);
    }

    v4 = [(ASCAppearMetricsPresenter *)self metrics];
    v5 = [(ASCAppearMetricsPresenter *)self model];
    v6 = [v5 metrics];
    v7 = [(ASCAppearMetricsPresenter *)self activity];
    v8 = [v4 processViewMetrics:v6 atInvocationPoint:@"appear" withActivity:v7];

    v9 = [(ASCAppearMetricsPresenter *)self scrollObserver];

    if (v9)
    {
      v10 = [(ASCAppearMetricsPresenter *)self scrollObserver];
      v11 = [(ASCAppearMetricsPresenter *)self model];
      [v10 modelDidAppear:v11];

      v12 = [(ASCAppearMetricsPresenter *)self scrollObserver];
      [v12 removeDelegate:self];
    }

    [(ASCAppearMetricsPresenter *)self setAppeared:1];
  }
}

- (BOOL)canDisappear
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(ASCAppearMetricsPresenter *)self isEnabled])
  {
    v10 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = self;
      v11 = "%{public}@ can disappear: no, reason: not enabled";
      goto LABEL_21;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (![(ASCAppearMetricsPresenter *)self isAppeared])
  {
    v10 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = self;
      v11 = "%{public}@ can disappear: no, reason: not appeared yet";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = [(ASCAppearMetricsPresenter *)self model];
  v4 = [v3 metrics];

  if (!v4)
  {
    v10 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = self;
      v11 = "%{public}@ can disappear: no, reason: no metrics";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = [(ASCAppearMetricsPresenter *)self view];
  v6 = [v5 window];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [(ASCAppearMetricsPresenter *)self view];
  if (([v8 isHidden] & 1) != 0 || -[ASCAppearMetricsPresenter isSettingModel](self, "isSettingModel"))
  {

LABEL_8:
    goto LABEL_9;
  }

  v14 = [(ASCAppearMetricsPresenter *)self isEnteringBackground];

  if (!v14)
  {
    v10 = +[ASCAppearMetricsPresenter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = [(ASCAppearMetricsPresenter *)self isSettingModel];
      v16 = [(ASCAppearMetricsPresenter *)self view];
      v17 = 138543874;
      v18 = self;
      v19 = 1026;
      v20 = v15;
      v21 = 1026;
      v22 = [v16 isHidden];
      _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@ can disappear: no, reason: is not setting model (%{public}d) and window is hidden (%{public}d)", &v17, 0x18u);
    }

    goto LABEL_22;
  }

LABEL_9:
  if ([(ASCAppearMetricsPresenter *)self isSettingModel])
  {
    v9 = [(ASCAppearMetricsPresenter *)self scrollObserver];

    if (v9)
    {
      v10 = +[ASCAppearMetricsPresenter log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v17 = 138543362;
        v18 = self;
        v11 = "%{public}@ can disappear: no, reason: is settings model and has scroll observer";
LABEL_21:
        _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, v11, &v17, 0xCu);
        goto LABEL_22;
      }

      goto LABEL_22;
    }
  }

  v10 = +[ASCAppearMetricsPresenter log];
  v12 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = self;
    _os_log_impl(&dword_21571A000, v10, OS_LOG_TYPE_INFO, "%{public}@ can disappear: yes", &v17, 0xCu);
  }

LABEL_23:

  return v12;
}

- (void)disappearIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ASCAppearMetricsPresenter *)self canDisappear];
  v4 = +[ASCAppearMetricsPresenter log];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "%{public}@ did disappear", &v11, 0xCu);
    }

    v6 = [(ASCAppearMetricsPresenter *)self metrics];
    v7 = [(ASCAppearMetricsPresenter *)self model];
    v8 = [v7 metrics];
    v9 = [(ASCAppearMetricsPresenter *)self activity];
    v10 = [v6 processViewMetrics:v8 atInvocationPoint:@"disappear" withActivity:v9];

    [(ASCAppearMetricsPresenter *)self setAppeared:0];
  }

  else
  {
    if (v5)
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "%{public}@ can't disappear", &v11, 0xCu);
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[ASCAppearMetricsPresenter log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "%{public}@ enclosing scroll view did scroll %{public}@", &v6, 0x16u);
  }

  [(ASCAppearMetricsPresenter *)self appearIfNeeded];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)viewDidEndRenderWithPredicate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21571A000, a2, OS_LOG_TYPE_ERROR, "%{public}@ cannot process view render for model with missing metrics data", &v2, 0xCu);
}

- (void)viewDidFailRequest:(os_log_t)log withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_21571A000, log, OS_LOG_TYPE_DEBUG, "%{public}@ not generating page event for %@", &v3, 0x16u);
}

@end