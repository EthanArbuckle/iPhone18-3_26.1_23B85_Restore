@interface HODiscoverModalWebViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (HODiscoverModalWebViewController)init;
- (HODiscoverModalWebViewController)initWithCoder:(id)a3;
- (HODiscoverModalWebViewController)initWithURLString:(id)a3;
- (double)_getStatusBarHeight;
- (void)_addWebViewConstraints;
- (void)handlePanGesture:(id)a3;
- (void)viewDidLoad;
@end

@implementation HODiscoverModalWebViewController

- (HODiscoverModalWebViewController)initWithCoder:(id)a3
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

- (HODiscoverModalWebViewController)initWithURLString:(id)a3
{
  v7.receiver = self;
  v7.super_class = HODiscoverModalWebViewController;
  v3 = [(HODiscoverWebViewController *)&v7 initWithURLString:a3];
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
  v4 = [(HODiscoverModalWebViewController *)self navigationController];
  [v4 setNavigationBarHidden:v3];

  if ((+[HFUtilities isAMac]& 1) == 0)
  {
    v5 = [(HODiscoverWebViewController *)self webView];
    v6 = [v5 scrollView];
    [(HODiscoverModalWebViewController *)self _getStatusBarHeight];
    [v6 setContentInset:{-v7, 0.0, 0.0, 0.0}];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"_dismissedButtonPressed:"];
    v9 = [(HODiscoverModalWebViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HODiscoverModalWebViewController *)self presentationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v12 = v6;

  v7 = [(HODiscoverWebViewController *)self contentView];
  [v4 translationInView:v7];
  v9 = v8;

  v10 = [v4 state];
  if (v10 == 2)
  {
    [v12 dismissalPanTranslationChanged:v9];
  }

  else
  {
    v11 = v12;
    if (v10 != 3)
    {
      goto LABEL_9;
    }

    [v12 dismissalPanTranslationEnded];
  }

  v11 = v12;
LABEL_9:
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  objc_opt_class();
  v5 = [(HODiscoverModalWebViewController *)self presentationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(HODiscoverWebViewController *)self webView];
  v9 = [v8 scrollView];
  [v9 contentOffset];
  if (v10 <= 0.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v7 shouldAllowViewTranslation];
  }

  return v11;
}

- (void)_addWebViewConstraints
{
  v23 = objc_alloc_init(NSMutableArray);
  v3 = [(HODiscoverWebViewController *)self webView];
  v4 = [v3 leadingAnchor];
  v5 = [(HODiscoverWebViewController *)self contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v23 addObject:v7];

  v8 = [(HODiscoverWebViewController *)self webView];
  v9 = [v8 trailingAnchor];
  v10 = [(HODiscoverWebViewController *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v23 addObject:v12];

  v13 = [(HODiscoverWebViewController *)self webView];
  v14 = [v13 bottomAnchor];
  v15 = [(HODiscoverWebViewController *)self contentView];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v23 addObject:v17];

  v18 = [(HODiscoverWebViewController *)self webView];
  v19 = [v18 topAnchor];
  v20 = [(HODiscoverWebViewController *)self contentView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (double)_getStatusBarHeight
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 na_filter:&stru_1000C2170];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 windowScene];
    v7 = [v6 statusBarManager];
    [v7 statusBarFrame];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end