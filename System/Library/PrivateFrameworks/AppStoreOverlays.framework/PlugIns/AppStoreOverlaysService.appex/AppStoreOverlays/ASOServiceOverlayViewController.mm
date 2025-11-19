@interface ASOServiceOverlayViewController
+ (id)log;
- (CGPoint)edgePointForPercentage:(double)a3;
- (CGRect)overlayFrameForEdgePoint:(CGPoint)a3;
- (UIGestureRecognizer)panGestureRecognizer;
- (double)overlayHeight;
- (double)percentageForEdgePoint:(CGPoint)a3;
- (id)hideOverlayAnimated:(BOOL)a3;
- (id)presentationQueue:(id)a3 presentOverlayWithConfiguration:(id)a4 delegate:(id)a5;
- (id)showOverlayAnimated:(BOOL)a3;
- (void)hostDidEnterBackground;
- (void)hostWillEnterForeground;
- (void)interactiveDismissGesture:(id)a3;
- (void)loadView;
- (void)refreshOverlayFrame;
- (void)reloadAXSize;
- (void)reloadContainerConfiguration;
- (void)serviceContext:(id)a3 presentOverlayWithConfiguration:(id)a4 delegate:(id)a5;
- (void)serviceContextDismissOverlay:(id)a3;
- (void)setContainerConfiguration:(id)a3;
- (void)setPercentageOnScreen:(double)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateRateLimiterConstantsIfNeeded;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ASOServiceOverlayViewController

+ (id)log
{
  if (qword_10002C790 != -1)
  {
    sub_100017F8C();
  }

  v3 = qword_10002C798;

  return v3;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = ASOServiceOverlayViewController;
  [(ASOServiceOverlayViewController *)&v32 viewDidLoad];
  v3 = objc_alloc_init(ASOServicePresentationQueue);
  serviceQueue = self->_serviceQueue;
  self->_serviceQueue = v3;

  v5 = [(ASOServiceOverlayViewController *)self serviceQueue];
  [v5 setDelegate:self];

  v6 = [(ASOServiceOverlayViewController *)self extensionContext];
  [v6 setDelegate:self];

  v7 = +[ASCOverlaySettings sharedSettings];
  v8 = [v7 rateLimitRequestsPerSecond];

  v9 = &off_100025B20;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = +[ASCOverlaySettings sharedSettings];
  v12 = [v11 rateLimitTimeWindow];

  v13 = &off_100025B30;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = +[ASOServiceOverlayViewController log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v10;
    v36 = 2114;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up rate limiter. requestsPerSecond=%{public}@ timeWindow=%{public}@", buf, 0x16u);
  }

  v16 = [ASORateLimiter alloc];
  [v10 doubleValue];
  v18 = v17;
  [v14 doubleValue];
  v20 = [(ASORateLimiter *)v16 initWithRequestsPerSecond:v18 timeWindow:v19];
  [(ASOServiceOverlayViewController *)self setRateLimiter:v20];

  [(ASOServiceOverlayViewController *)self setPercentageOnScreen:0.0];
  [(ASOServiceOverlayViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  v21 = [(ASOServiceOverlayViewController *)self view];
  [v21 setInsetsLayoutMarginsFromSafeArea:1];

  v22 = objc_alloc_init(_TtC23AppStoreOverlaysService27ServiceOverlayContainerView);
  [(ASOServiceOverlayViewController *)self setOverlayContainer:v22];

  v23 = [(ASOServiceOverlayViewController *)self view];
  v24 = [(ASOServiceOverlayViewController *)self overlayContainer];
  [v23 addSubview:v24];

  v25 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"interactiveDismissGesture:"];
  v26 = [(ASOServiceOverlayViewController *)self view];
  [v26 addGestureRecognizer:v25];

  [(ASOServiceOverlayViewController *)self setPanGestureRecognizer:v25];
  v27 = objc_opt_self();
  v33 = v27;
  v28 = [NSArray arrayWithObjects:&v33 count:1];
  v29 = [(ASOServiceOverlayViewController *)self registerForTraitChanges:v28 withAction:"reloadAXSize"];

  v30 = +[NSNotificationCenter defaultCenter];
  [v30 addObserver:self selector:"hostDidEnterBackground" name:NSExtensionHostDidEnterBackgroundNotification object:0];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"hostWillEnterForeground" name:NSExtensionHostWillEnterForegroundNotification object:0];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(ASOServiceOverlayViewController *)self setView:v3];
}

- (void)setContainerConfiguration:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_containerConfiguration, a3);
  v5 = [v13 userDismissible];
  v6 = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [v6 setEnabled:v5];

  if ([v13 hostIdiom] == 6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v10 = [v13 position];
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_9;
      }

      v7 = 15.0;
      v8 = 75.0;
    }

    else
    {
      v7 = 15.0;
      v8 = 20.0;
    }

    v9 = 15.0;
  }

  v11 = [(ASOServiceOverlayViewController *)self view];
  [v11 setLayoutMargins:{0.0, v7, v8, v9}];

LABEL_9:
  v12 = [(ASOServiceOverlayViewController *)self view];
  [v12 setNeedsLayout];
}

- (void)reloadContainerConfiguration
{
  v3 = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];

  if (v3)
  {
    v5 = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
    v4 = [v5 containerConfiguration];
    [(ASOServiceOverlayViewController *)self setContainerConfiguration:v4];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASOServiceOverlayViewController;
  [(ASOServiceOverlayViewController *)&v3 viewWillLayoutSubviews];
  [(ASOServiceOverlayViewController *)self refreshOverlayFrame];
}

- (double)overlayHeight
{
  v3 = [(ASOServiceOverlayViewController *)self overlayContainer];
  v4 = [(ASOServiceOverlayViewController *)self view];
  [v4 bounds];
  [v3 sizeThatFits:{v5, v6}];
  v8 = v7;

  return v8;
}

- (void)refreshOverlayFrame
{
  v3 = [(ASOServiceOverlayViewController *)self containerConfiguration];
  v4 = [v3 hostIdiom];

  if (v4 == 6)
  {
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:1.0];
    [(ASOServiceOverlayViewController *)self overlayFrameForEdgePoint:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(ASOServiceOverlayViewController *)self overlayContainer];
    [v13 setFrame:{v6, v8, v10, v12}];

    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    v15 = v14;
    v16 = [(ASOServiceOverlayViewController *)self overlayContainer];
    [v16 setAlpha:v15];
  }

  else
  {
    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:?];
    [(ASOServiceOverlayViewController *)self overlayFrameForEdgePoint:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v16 = [(ASOServiceOverlayViewController *)self overlayContainer];
    [v16 setFrame:{v18, v20, v22, v24}];
  }

  v25 = [(ASOServiceOverlayViewController *)self overlayContainer];
  [v25 setNeedsLayout];
}

- (void)setPercentageOnScreen:(double)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(ASOServiceOverlayViewController *)self view];
  [v9 layoutIfNeeded];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009B94;
  v12[3] = &unk_1000251F0;
  v12[4] = self;
  *&v12[5] = a3;
  v10 = objc_retainBlock(v12);
  v11 = v10;
  if (v5)
  {
    [ASOOverlayAnimator performAnimations:v10 completion:v8];
  }

  else
  {
    (v10[2])(v10);
    if (v8)
    {
      v8[2](v8, 1);
    }
  }
}

- (void)reloadAXSize
{
  v3 = [(ASOServiceOverlayViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v8 = [(ASOServiceOverlayViewController *)self view];
  v6 = [v8 traitOverrides];
  if (IsAccessibilityCategory)
  {
    [v6 setPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  }

  else
  {
    v7 = objc_opt_self();
    [v6 removeTrait:v7];
  }
}

- (void)interactiveDismissGesture:(id)a3
{
  v22 = a3;
  v4 = [(ASOServiceOverlayViewController *)self view];
  [v22 translationInView:v4];

  v5 = [v22 state];
  if (v5 == 3)
  {
    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:?];
    v13 = v12;
    v14 = [(ASOServiceOverlayViewController *)self view];
    [v22 velocityInView:v14];
    v16 = v15;

    v17 = [(ASOServiceOverlayViewController *)self view];
    [v17 safeAreaInsets];
    v19 = v13 - v18;

    [(ASOServiceOverlayViewController *)self overlayHeight];
    if (v19 / v20 < 0.3 || v16 > 300.0)
    {
      v21 = [(ASOServiceOverlayViewController *)self hideOverlayAnimated:1];
    }

    else
    {
      [(ASOServiceOverlayViewController *)self setPercentageOnScreen:1 animated:0 completion:1.0];
    }
  }

  else if (v5 == 2)
  {
    [(ASOServiceOverlayViewController *)self interactiveDismissStartPercentage];
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:?];
    [(ASOServiceOverlayViewController *)self percentageForEdgePoint:?];
    v7 = v6;
    BSUIConstrainValueWithRubberBand();
    v8 = 0.0;
    v10 = fmax(v9, 0.0);
    if (v7 >= 0.0)
    {
      v8 = v7;
    }

    v11 = v10 + 1.0;
    if (v8 < v11)
    {
      v11 = v8;
    }

    [(ASOServiceOverlayViewController *)self setPercentageOnScreen:v11];
  }

  else if (v5 == 1)
  {
    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    [(ASOServiceOverlayViewController *)self setInteractiveDismissStartPercentage:?];
  }
}

- (id)showOverlayAnimated:(BOOL)a3
{
  [(ASOServiceOverlayViewController *)self percentageOnScreen];
  if (v5 <= 0.0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F20;
    block[3] = &unk_100025268;
    block[4] = self;
    v12 = a3;
    v7 = objc_alloc_init(AMSMutableBinaryPromise);
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v8 = v11;
    v6 = v7;
  }

  else
  {
    v6 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v6;
}

- (id)hideOverlayAnimated:(BOOL)a3
{
  v5 = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [v5 setEnabled:0];

  v6 = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [v6 setEnabled:1];

  [(ASOServiceOverlayViewController *)self percentageOnScreen];
  if (v7 == 0.0)
  {
    v8 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A35C;
    block[3] = &unk_100025268;
    block[4] = self;
    v14 = a3;
    v9 = objc_alloc_init(AMSMutableBinaryPromise);
    v13 = v9;
    dispatch_async(&_dispatch_main_q, block);
    v10 = v13;
    v8 = v9;
  }

  return v8;
}

- (CGPoint)edgePointForPercentage:(double)a3
{
  v5 = [(ASOServiceOverlayViewController *)self view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(ASOServiceOverlayViewController *)self view];
  [v14 layoutMargins];
  v16 = v7 + v15;
  v18 = v9 + v17;
  v20 = v11 - (v15 + v19);
  v22 = v13 - (v17 + v21);

  [(ASOServiceOverlayViewController *)self overlayHeight];
  v24 = v23;
  v25 = [(ASOServiceOverlayViewController *)self view];
  [v25 layoutMargins];
  v27 = v24 + v26;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MidX = CGRectGetMidX(v31);
  v29 = v27 * a3;
  result.y = v29;
  result.x = MidX;
  return result;
}

- (double)percentageForEdgePoint:(CGPoint)a3
{
  y = a3.y;
  [(ASOServiceOverlayViewController *)self edgePointForPercentage:1.0];
  return y / v4;
}

- (CGRect)overlayFrameForEdgePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ASOServiceOverlayViewController *)self view];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(ASOServiceOverlayViewController *)self view];
  [v15 layoutMargins];
  v17 = v8 + v16;
  v19 = v10 + v18;
  v21 = v12 - (v16 + v20);
  v23 = v14 - (v18 + v22);

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  v24 = fmin(CGRectGetWidth(v32), 600.0);
  v25 = [(ASOServiceOverlayViewController *)self view];
  [v25 frame];
  v26 = CGRectGetMaxY(v33) - y;

  [(ASOServiceOverlayViewController *)self overlayHeight];
  v28 = v27;
  v29 = x + v24 * -0.5;
  v30 = v26;
  v31 = v24;
  result.size.height = v28;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)serviceContext:(id)a3 presentOverlayWithConfiguration:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ASOServiceOverlayViewController *)self serviceQueue];
  [v9 queuePresentOverlayWithConfiguration:v8 delegate:v7];
}

- (void)serviceContextDismissOverlay:(id)a3
{
  v3 = [(ASOServiceOverlayViewController *)self serviceQueue];
  [v3 queueDismissOverlay];
}

- (id)presentationQueue:(id)a3 presentOverlayWithConfiguration:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [ASOServiceOverlayPresenter alloc];
  v10 = [(ASOServiceOverlayViewController *)self serviceContext];
  v11 = objc_alloc_init(ASOServiceOverlayLoader);
  v12 = [(ASOServiceOverlayPresenter *)v9 initWithConfiguration:v8 remoteDelegate:v7 serviceContext:v10 overlayLoader:v11];

  v13 = +[ASOServiceOverlayViewController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Starting overlay presentation", v16, 2u);
  }

  v14 = [(ASOServiceOverlayViewController *)self presentOverlayPresenter:v12 animated:1];
  [v14 addSuccessBlock:&stru_100025288];
  [v14 addErrorBlock:&stru_1000252C8];

  return v14;
}

- (void)hostDidEnterBackground
{
  v2 = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
  [v2 hostApplicationDidEnterBackground];
}

- (void)hostWillEnterForeground
{
  v2 = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
  [v2 hostApplicationWillEnterForeground];
}

- (void)updateRateLimiterConstantsIfNeeded
{
  v3 = +[ASCOverlaySettings sharedSettings];
  v12 = [v3 rateLimitRequestsPerSecond];

  if (v12)
  {
    [v12 doubleValue];
    v5 = v4;
    v6 = [(ASOServiceOverlayViewController *)self rateLimiter];
    [v6 setRequestsPerSecond:v5];
  }

  v7 = +[ASCOverlaySettings sharedSettings];
  v8 = [v7 rateLimitTimeWindow];

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
    v11 = [(ASOServiceOverlayViewController *)self rateLimiter];
    [v11 setTimeWindow:v10];
  }
}

- (UIGestureRecognizer)panGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_panGestureRecognizer);

  return WeakRetained;
}

@end