@interface ASOServiceOverlayViewController
+ (id)log;
- (CGPoint)edgePointForPercentage:(double)percentage;
- (CGRect)overlayFrameForEdgePoint:(CGPoint)point;
- (UIGestureRecognizer)panGestureRecognizer;
- (double)overlayHeight;
- (double)percentageForEdgePoint:(CGPoint)point;
- (id)hideOverlayAnimated:(BOOL)animated;
- (id)presentationQueue:(id)queue presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)showOverlayAnimated:(BOOL)animated;
- (void)hostDidEnterBackground;
- (void)hostWillEnterForeground;
- (void)interactiveDismissGesture:(id)gesture;
- (void)loadView;
- (void)refreshOverlayFrame;
- (void)reloadAXSize;
- (void)reloadContainerConfiguration;
- (void)serviceContext:(id)context presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate;
- (void)serviceContextDismissOverlay:(id)overlay;
- (void)setContainerConfiguration:(id)configuration;
- (void)setPercentageOnScreen:(double)screen animated:(BOOL)animated completion:(id)completion;
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

  serviceQueue = [(ASOServiceOverlayViewController *)self serviceQueue];
  [serviceQueue setDelegate:self];

  extensionContext = [(ASOServiceOverlayViewController *)self extensionContext];
  [extensionContext setDelegate:self];

  v7 = +[ASCOverlaySettings sharedSettings];
  rateLimitRequestsPerSecond = [v7 rateLimitRequestsPerSecond];

  v9 = &off_100025B20;
  if (rateLimitRequestsPerSecond)
  {
    v9 = rateLimitRequestsPerSecond;
  }

  v10 = v9;

  v11 = +[ASCOverlaySettings sharedSettings];
  rateLimitTimeWindow = [v11 rateLimitTimeWindow];

  v13 = &off_100025B30;
  if (rateLimitTimeWindow)
  {
    v13 = rateLimitTimeWindow;
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
  view = [(ASOServiceOverlayViewController *)self view];
  [view setInsetsLayoutMarginsFromSafeArea:1];

  v22 = objc_alloc_init(_TtC23AppStoreOverlaysService27ServiceOverlayContainerView);
  [(ASOServiceOverlayViewController *)self setOverlayContainer:v22];

  view2 = [(ASOServiceOverlayViewController *)self view];
  overlayContainer = [(ASOServiceOverlayViewController *)self overlayContainer];
  [view2 addSubview:overlayContainer];

  v25 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"interactiveDismissGesture:"];
  view3 = [(ASOServiceOverlayViewController *)self view];
  [view3 addGestureRecognizer:v25];

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

- (void)setContainerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_containerConfiguration, configuration);
  userDismissible = [configurationCopy userDismissible];
  panGestureRecognizer = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer setEnabled:userDismissible];

  if ([configurationCopy hostIdiom] == 6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    position = [configurationCopy position];
    if (position)
    {
      if (position != 1)
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

  view = [(ASOServiceOverlayViewController *)self view];
  [view setLayoutMargins:{0.0, v7, v8, v9}];

LABEL_9:
  view2 = [(ASOServiceOverlayViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)reloadContainerConfiguration
{
  currentOverlayPresenter = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];

  if (currentOverlayPresenter)
  {
    currentOverlayPresenter2 = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
    containerConfiguration = [currentOverlayPresenter2 containerConfiguration];
    [(ASOServiceOverlayViewController *)self setContainerConfiguration:containerConfiguration];
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
  overlayContainer = [(ASOServiceOverlayViewController *)self overlayContainer];
  view = [(ASOServiceOverlayViewController *)self view];
  [view bounds];
  [overlayContainer sizeThatFits:{v5, v6}];
  v8 = v7;

  return v8;
}

- (void)refreshOverlayFrame
{
  containerConfiguration = [(ASOServiceOverlayViewController *)self containerConfiguration];
  hostIdiom = [containerConfiguration hostIdiom];

  if (hostIdiom == 6)
  {
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:1.0];
    [(ASOServiceOverlayViewController *)self overlayFrameForEdgePoint:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    overlayContainer = [(ASOServiceOverlayViewController *)self overlayContainer];
    [overlayContainer setFrame:{v6, v8, v10, v12}];

    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    v15 = v14;
    overlayContainer2 = [(ASOServiceOverlayViewController *)self overlayContainer];
    [overlayContainer2 setAlpha:v15];
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
    overlayContainer2 = [(ASOServiceOverlayViewController *)self overlayContainer];
    [overlayContainer2 setFrame:{v18, v20, v22, v24}];
  }

  overlayContainer3 = [(ASOServiceOverlayViewController *)self overlayContainer];
  [overlayContainer3 setNeedsLayout];
}

- (void)setPercentageOnScreen:(double)screen animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  view = [(ASOServiceOverlayViewController *)self view];
  [view layoutIfNeeded];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009B94;
  v12[3] = &unk_1000251F0;
  v12[4] = self;
  *&v12[5] = screen;
  v10 = objc_retainBlock(v12);
  v11 = v10;
  if (animatedCopy)
  {
    [ASOOverlayAnimator performAnimations:v10 completion:completionCopy];
  }

  else
  {
    (v10[2])(v10);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

- (void)reloadAXSize
{
  traitCollection = [(ASOServiceOverlayViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  view = [(ASOServiceOverlayViewController *)self view];
  traitOverrides = [view traitOverrides];
  if (IsAccessibilityCategory)
  {
    [traitOverrides setPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  }

  else
  {
    v7 = objc_opt_self();
    [traitOverrides removeTrait:v7];
  }
}

- (void)interactiveDismissGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(ASOServiceOverlayViewController *)self view];
  [gestureCopy translationInView:view];

  state = [gestureCopy state];
  if (state == 3)
  {
    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    [(ASOServiceOverlayViewController *)self edgePointForPercentage:?];
    v13 = v12;
    view2 = [(ASOServiceOverlayViewController *)self view];
    [gestureCopy velocityInView:view2];
    v16 = v15;

    view3 = [(ASOServiceOverlayViewController *)self view];
    [view3 safeAreaInsets];
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

  else if (state == 2)
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

  else if (state == 1)
  {
    [(ASOServiceOverlayViewController *)self percentageOnScreen];
    [(ASOServiceOverlayViewController *)self setInteractiveDismissStartPercentage:?];
  }
}

- (id)showOverlayAnimated:(BOOL)animated
{
  [(ASOServiceOverlayViewController *)self percentageOnScreen];
  if (v5 <= 0.0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009F20;
    block[3] = &unk_100025268;
    block[4] = self;
    animatedCopy = animated;
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

- (id)hideOverlayAnimated:(BOOL)animated
{
  panGestureRecognizer = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  panGestureRecognizer2 = [(ASOServiceOverlayViewController *)self panGestureRecognizer];
  [panGestureRecognizer2 setEnabled:1];

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
    animatedCopy = animated;
    v9 = objc_alloc_init(AMSMutableBinaryPromise);
    v13 = v9;
    dispatch_async(&_dispatch_main_q, block);
    v10 = v13;
    v8 = v9;
  }

  return v8;
}

- (CGPoint)edgePointForPercentage:(double)percentage
{
  view = [(ASOServiceOverlayViewController *)self view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(ASOServiceOverlayViewController *)self view];
  [view2 layoutMargins];
  v16 = v7 + v15;
  v18 = v9 + v17;
  v20 = v11 - (v15 + v19);
  v22 = v13 - (v17 + v21);

  [(ASOServiceOverlayViewController *)self overlayHeight];
  v24 = v23;
  view3 = [(ASOServiceOverlayViewController *)self view];
  [view3 layoutMargins];
  v27 = v24 + v26;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MidX = CGRectGetMidX(v31);
  v29 = v27 * percentage;
  result.y = v29;
  result.x = MidX;
  return result;
}

- (double)percentageForEdgePoint:(CGPoint)point
{
  y = point.y;
  [(ASOServiceOverlayViewController *)self edgePointForPercentage:1.0];
  return y / v4;
}

- (CGRect)overlayFrameForEdgePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(ASOServiceOverlayViewController *)self view];
  [view frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [(ASOServiceOverlayViewController *)self view];
  [view2 layoutMargins];
  v17 = v8 + v16;
  v19 = v10 + v18;
  v21 = v12 - (v16 + v20);
  v23 = v14 - (v18 + v22);

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  v24 = fmin(CGRectGetWidth(v32), 600.0);
  view3 = [(ASOServiceOverlayViewController *)self view];
  [view3 frame];
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

- (void)serviceContext:(id)context presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate
{
  delegateCopy = delegate;
  configurationCopy = configuration;
  serviceQueue = [(ASOServiceOverlayViewController *)self serviceQueue];
  [serviceQueue queuePresentOverlayWithConfiguration:configurationCopy delegate:delegateCopy];
}

- (void)serviceContextDismissOverlay:(id)overlay
{
  serviceQueue = [(ASOServiceOverlayViewController *)self serviceQueue];
  [serviceQueue queueDismissOverlay];
}

- (id)presentationQueue:(id)queue presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate
{
  delegateCopy = delegate;
  configurationCopy = configuration;
  v9 = [ASOServiceOverlayPresenter alloc];
  serviceContext = [(ASOServiceOverlayViewController *)self serviceContext];
  v11 = objc_alloc_init(ASOServiceOverlayLoader);
  v12 = [(ASOServiceOverlayPresenter *)v9 initWithConfiguration:configurationCopy remoteDelegate:delegateCopy serviceContext:serviceContext overlayLoader:v11];

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
  currentOverlayPresenter = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
  [currentOverlayPresenter hostApplicationDidEnterBackground];
}

- (void)hostWillEnterForeground
{
  currentOverlayPresenter = [(ASOServiceOverlayViewController *)self currentOverlayPresenter];
  [currentOverlayPresenter hostApplicationWillEnterForeground];
}

- (void)updateRateLimiterConstantsIfNeeded
{
  v3 = +[ASCOverlaySettings sharedSettings];
  rateLimitRequestsPerSecond = [v3 rateLimitRequestsPerSecond];

  if (rateLimitRequestsPerSecond)
  {
    [rateLimitRequestsPerSecond doubleValue];
    v5 = v4;
    rateLimiter = [(ASOServiceOverlayViewController *)self rateLimiter];
    [rateLimiter setRequestsPerSecond:v5];
  }

  v7 = +[ASCOverlaySettings sharedSettings];
  rateLimitTimeWindow = [v7 rateLimitTimeWindow];

  if (rateLimitTimeWindow)
  {
    [rateLimitTimeWindow doubleValue];
    v10 = v9;
    rateLimiter2 = [(ASOServiceOverlayViewController *)self rateLimiter];
    [rateLimiter2 setTimeWindow:v10];
  }
}

- (UIGestureRecognizer)panGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_panGestureRecognizer);

  return WeakRetained;
}

@end