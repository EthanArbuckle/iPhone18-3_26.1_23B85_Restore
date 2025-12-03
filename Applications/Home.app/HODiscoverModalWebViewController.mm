@interface HODiscoverModalWebViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (HODiscoverModalWebViewController)init;
- (HODiscoverModalWebViewController)initWithCoder:(id)coder;
- (HODiscoverModalWebViewController)initWithURLString:(id)string;
- (double)_getStatusBarHeight;
- (void)_addWebViewConstraints;
- (void)handlePanGesture:(id)gesture;
- (void)viewDidLoad;
@end

@implementation HODiscoverModalWebViewController

- (HODiscoverModalWebViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithURL:");
  [v5 handleFailureInMethod:a2 object:self file:@"HODiscoverModalWebViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HODiscoverModalWebViewController initWithCoder:]", v6}];

  return 0;
}

- (HODiscoverModalWebViewController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithURL:");
  [v4 handleFailureInMethod:a2 object:self file:@"HODiscoverModalWebViewController.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HODiscoverModalWebViewController init]", v5}];

  return 0;
}

- (HODiscoverModalWebViewController)initWithURLString:(id)string
{
  v7.receiver = self;
  v7.super_class = HODiscoverModalWebViewController;
  v3 = [(HODiscoverWebViewController *)&v7 initWithURLString:string];
  if (v3)
  {
    if ((+[HFUtilities isAMac]& 1) == 0)
    {
      if (+[HFUtilities isAnIPad])
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      [(HODiscoverModalWebViewController *)v3 setModalPresentationStyle:v4];
      [(HODiscoverModalWebViewController *)v3 setModalTransitionStyle:0];
      [(HODiscoverModalWebViewController *)v3 setModalPresentationCapturesStatusBarAppearance:1];
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:v3];
  }

  return v3;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HODiscoverModalWebViewController;
  [(HODiscoverWebViewController *)&v10 viewDidLoad];
  [(HODiscoverModalWebViewController *)self setTitle:0];
  v3 = +[HFUtilities isAMac];
  navigationController = [(HODiscoverModalWebViewController *)self navigationController];
  [navigationController setNavigationBarHidden:v3];

  if ((+[HFUtilities isAMac]& 1) == 0)
  {
    webView = [(HODiscoverWebViewController *)self webView];
    scrollView = [webView scrollView];
    [(HODiscoverModalWebViewController *)self _getStatusBarHeight];
    [scrollView setContentInset:{-v7, 0.0, 0.0, 0.0}];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissedButtonPressed:"];
    navigationItem = [(HODiscoverModalWebViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  presentationController = [(HODiscoverModalWebViewController *)self presentationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = presentationController;
  }

  else
  {
    v6 = 0;
  }

  v12 = v6;

  contentView = [(HODiscoverWebViewController *)self contentView];
  [gestureCopy translationInView:contentView];
  v9 = v8;

  state = [gestureCopy state];
  if (state == 2)
  {
    [v12 dismissalPanTranslationChanged:v9];
  }

  else
  {
    v11 = v12;
    if (state != 3)
    {
      goto LABEL_9;
    }

    [v12 dismissalPanTranslationEnded];
  }

  v11 = v12;
LABEL_9:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  objc_opt_class();
  presentationController = [(HODiscoverModalWebViewController *)self presentationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = presentationController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  webView = [(HODiscoverWebViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  if (v10 <= 0.0)
  {
    shouldAllowViewTranslation = 1;
  }

  else
  {
    shouldAllowViewTranslation = [v7 shouldAllowViewTranslation];
  }

  return shouldAllowViewTranslation;
}

- (void)_addWebViewConstraints
{
  v23 = objc_alloc_init(NSMutableArray);
  webView = [(HODiscoverWebViewController *)self webView];
  leadingAnchor = [webView leadingAnchor];
  contentView = [(HODiscoverWebViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v23 addObject:v7];

  webView2 = [(HODiscoverWebViewController *)self webView];
  trailingAnchor = [webView2 trailingAnchor];
  contentView2 = [(HODiscoverWebViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 addObject:v12];

  webView3 = [(HODiscoverWebViewController *)self webView];
  bottomAnchor = [webView3 bottomAnchor];
  contentView3 = [(HODiscoverWebViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 addObject:v17];

  webView4 = [(HODiscoverWebViewController *)self webView];
  topAnchor = [webView4 topAnchor];
  contentView4 = [(HODiscoverWebViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (double)_getStatusBarHeight
{
  v2 = +[UIApplication sharedApplication];
  windows = [v2 windows];
  v4 = [windows na_filter:&stru_1000C2170];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    windowScene = [firstObject windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end