@interface HODiscoverWebViewController
- (HODiscoverWebViewController)initWithLocalizationDictionary:(id)a3;
- (HODiscoverWebViewController)initWithURLString:(id)a3;
- (double)statusBarHeight;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_addConnectionIssueOverlayViewConstraints;
- (void)_addConstraintsForWebViewActivityIndicator;
- (void)_addContentViewConstraints;
- (void)_addWebViewConstraints;
- (void)_commonInitializer:(id)a3;
- (void)_startWebViewActivityIndicator;
- (void)_stopWebViewActivityIndicator;
- (void)_updateNavigationBarAppearenceFromOffset;
- (void)_updateNetworkConnectionState:(unint64_t)a3;
- (void)_updateScrollPocketAppearanceFromOffset;
- (void)applicationWentIntoBackground:(id)a3;
- (void)connectionIssueOverlayRetryButtonPressed;
- (void)contentSizeDidChange:(id)a3;
- (void)dealloc;
- (void)exitToAppleStoreAppOrSafariWithURL:(id)a3;
- (void)presentModalDiscoverWebViewControllerWithURLString:(id)a3;
- (void)pushNewDiscoverWebViewControllerWithURLString:(id)a3;
- (void)reloadWebView:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setupWebViewAndActivityIndicator;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webViewNavigationStateUpdated:(id)a3 navigationState:(unint64_t)a4;
@end

@implementation HODiscoverWebViewController

- (HODiscoverWebViewController)initWithLocalizationDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HODiscoverWebViewController;
  v5 = [(HODiscoverWebViewController *)&v9 init];
  if (v5)
  {
    v6 = +[HODiscoverWebViewManager sharedInstance];
    v7 = [v6 getURLStringFromLocaleDictionary:v4];

    [(HODiscoverWebViewController *)v5 _commonInitializer:v7];
  }

  return v5;
}

- (HODiscoverWebViewController)initWithURLString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HODiscoverWebViewController;
  v5 = [(HODiscoverWebViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HODiscoverWebViewController *)v5 _commonInitializer:v4];
  }

  return v6;
}

- (void)_commonInitializer:(id)a3
{
  [(HODiscoverWebViewController *)self setUrlString:a3];
  [(HODiscoverWebViewController *)self setHasConnectedToNetwork:1];
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(HODiscoverWebViewController *)self setContentView:v4];

  v5 = [(HODiscoverWebViewController *)self contentView];
  [v5 setClipsToBounds:1];

  v6 = [(HODiscoverWebViewController *)self contentView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = sub_100014198();
  [(HODiscoverWebViewController *)self setNetworkPathMonitorDispatchQueue:v7];

  v8 = nw_path_monitor_create();
  [(HODiscoverWebViewController *)self setNetworkPathMonitor:v8];

  v9 = [(HODiscoverWebViewController *)self networkPathMonitor];
  v10 = [(HODiscoverWebViewController *)self networkPathMonitorDispatchQueue];
  nw_path_monitor_set_queue(v9, v10);

  v11 = [(HODiscoverWebViewController *)self networkPathMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_10001421C;
  update_handler[3] = &unk_1000C23A0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v11, update_handler);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v26 viewDidLoad];
  v3 = [(HODiscoverWebViewController *)self view];
  v4 = [(HODiscoverWebViewController *)self contentView];
  [v3 addSubview:v4];

  [(HODiscoverWebViewController *)self _addContentViewConstraints];
  v5 = +[NSBundle mainBundle];
  v6 = @"HOTabDiscoverTitle";
  v7 = [v5 localizedStringForKey:@"HOTabDiscoverTitle" value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v7])
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = sub_100016B2C();
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"HOTabDiscoverTitle" value:@"HOTabDiscoverTitle" table:v13];

        if (![(__CFString *)v15 isEqualToString:@"HOTabDiscoverTitle"])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          v15 = @"_";
          break;
        }
      }

      v6 = @"HOTabDiscoverTitle";
    }

    else
    {
      v15 = @"_";
    }

    v7 = v15;
  }

  if ([@"_" isEqualToString:v7])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOTabDiscoverTitle");
  }

  else
  {
    v6 = v7;
  }

  [(HODiscoverWebViewController *)self setTitle:v6];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    v16 = [(HODiscoverWebViewController *)self navigationController];
    v17 = [v16 navigationBar];
    [v17 setPrefersLargeTitles:0];

    v31 = NSForegroundColorAttributeName;
    v18 = +[UIColor labelColor];
    v32 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v20 = [(HODiscoverWebViewController *)self navigationController];
    v21 = [v20 navigationBar];
    [v21 setTitleTextAttributes:v19];

    v22 = [(HODiscoverWebViewController *)self navigationController];
    [v22 setModalPresentationStyle:0];
  }

  v23 = [(HODiscoverWebViewController *)self networkPathMonitor];
  nw_path_monitor_start(v23);

  [(HODiscoverWebViewController *)self _updateNetworkConnectionState:0];
  v24 = [UIColor colorNamed:@"background-color-discover"];
  v25 = [(HODiscoverWebViewController *)self view];
  [v25 setBackgroundColor:v24];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v3 viewDidLayoutSubviews];
  [(HODiscoverWebViewController *)self _updateNavigationBarAppearenceFromOffset];
}

- (void)setupWebViewAndActivityIndicator
{
  v3 = [(HODiscoverWebViewController *)self webView];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [(HODiscoverWebViewController *)self contentView];
  v6 = [v5 subviews];
  v7 = [(HODiscoverWebViewController *)self webView];
  v8 = [v6 containsObject:v7];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    v9 = [(HODiscoverWebViewController *)self webView];

    if (!v9)
    {
      v10 = +[HODiscoverWebViewManager sharedInstance];
      v11 = [(HODiscoverWebViewController *)self urlString];
      v12 = [v10 webViewForURLString:v11];
      [(HODiscoverWebViewController *)self setWebView:v12];

      v13 = [(HODiscoverWebViewController *)self webView];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

      v14 = [(HODiscoverWebViewController *)self webView];
      [v14 setOpaque:0];

      v15 = [(HODiscoverWebViewController *)self webView];
      [v15 setClipsToBounds:1];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [(HODiscoverWebViewController *)self webView];
        v17 = [v16 scrollView];
        [v17 contentInset];
        v19 = v18;
        v21 = v20;
        v23 = v22;

        [(HODiscoverWebViewController *)self statusBarHeight];
        v25 = v24;
        v26 = [(HODiscoverWebViewController *)self webView];
        v27 = [v26 scrollView];
        [v27 setContentInset:{v25, v19, v21, v23}];
      }

      if (+[HFUtilities isAMac])
      {
        v28 = [(HODiscoverWebViewController *)self navigationController];
        v29 = [v28 navigationBar];
        [v29 setHidden:1];
      }

      v30 = [(HODiscoverWebViewController *)self webView];
      v31 = [v30 configuration];
      [v31 setAllowsInlineMediaPlayback:1];

      v32 = [(HODiscoverWebViewController *)self webView];
      v33 = [v32 configuration];
      [v33 setMediaTypesRequiringUserActionForPlayback:1];

      v34 = [(HODiscoverWebViewController *)self webView];
      [v34 setAllowsLinkPreview:0];

      v35 = +[NSDate date];
      [(HODiscoverWebViewController *)self setApplicationBackgroundedDate:v35];
    }

    v36 = [(HODiscoverWebViewController *)self view];
    v37 = [v36 subviews];
    v38 = [(HODiscoverWebViewController *)self webView];
    v39 = [v37 containsObject:v38];

    if ((v39 & 1) == 0)
    {
      v40 = [[HODiscoverWebKitContentController alloc] initWithDelegate:self];
      v41 = [(HODiscoverWebViewController *)self webView];
      v42 = [v41 configuration];
      v43 = [v42 userContentController];
      [v43 removeScriptMessageHandlerForName:off_1000D8788];

      v44 = [(HODiscoverWebViewController *)self webView];
      v45 = [v44 configuration];
      v46 = [v45 userContentController];
      [v46 addScriptMessageHandler:v40 name:off_1000D8788];

      v47 = [(HODiscoverWebViewController *)self webView];
      v48 = [v47 configuration];
      v49 = [v48 userContentController];
      [v49 removeScriptMessageHandlerForName:off_1000D8790];

      v50 = [(HODiscoverWebViewController *)self webView];
      v51 = [v50 configuration];
      v52 = [v51 userContentController];
      [v52 addScriptMessageHandler:v40 name:off_1000D8790];

      v53 = [(HODiscoverWebViewController *)self webView];
      [v53 setUIDelegate:self];

      v54 = [(HODiscoverWebViewController *)self webView];
      v55 = [v54 scrollView];
      [v55 setDelegate:self];

      v56 = [(HODiscoverWebViewController *)self contentView];
      v57 = [(HODiscoverWebViewController *)self webView];
      [v56 addSubview:v57];

      v58 = [(HODiscoverWebViewController *)self contentView];
      v59 = [(HODiscoverWebViewController *)self webView];
      [v58 sendSubviewToBack:v59];

      [(HODiscoverWebViewController *)self _addWebViewConstraints];
      v60 = +[NSNotificationCenter defaultCenter];
      [v60 addObserver:self selector:"reloadWebView:" name:UIApplicationWillEnterForegroundNotification object:0];

      v61 = +[NSNotificationCenter defaultCenter];
      [v61 addObserver:self selector:"applicationWentIntoBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

      v62 = +[NSNotificationCenter defaultCenter];
      [v62 addObserver:self selector:"contentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    }

    v63 = [(HODiscoverWebViewController *)self webViewActivityIndicator];

    if (!v63)
    {
      v64 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
      [(HODiscoverWebViewController *)self setWebViewActivityIndicator:v64];

      v65 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [v65 setHidesWhenStopped:1];

      v66 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

      v67 = [(HODiscoverWebViewController *)self contentView];
      v68 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [v67 addSubview:v68];

      [(HODiscoverWebViewController *)self _addConstraintsForWebViewActivityIndicator];
    }
  }
}

- (double)statusBarHeight
{
  if (+[HFUtilities isAnIPad]&& ([(HODiscoverWebViewController *)self navigationController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(HODiscoverWebViewController *)self navigationController];
    v5 = [v4 navigationBar];
    [v5 size];
    v7 = v6;
  }

  else
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 windows];
    v8 = [v5 firstObject];
    v9 = [v8 windowScene];
    v10 = [v9 statusBarManager];
    [v10 statusBarFrame];
    v7 = v11;
  }

  return v7;
}

- (void)_addContentViewConstraints
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v19 = [(HODiscoverWebViewController *)self contentView];
    v18 = [v19 leadingAnchor];
    v30 = [(HODiscoverWebViewController *)self view];
    v29 = [v30 safeAreaLayoutGuide];
    v28 = [v29 leadingAnchor];
    v27 = [v18 constraintEqualToAnchor:?];
    v32[0] = v27;
    v26 = [(HODiscoverWebViewController *)self contentView];
    v3 = [v26 trailingAnchor];
    v24 = [(HODiscoverWebViewController *)self view];
    v23 = [v24 safeAreaLayoutGuide];
    [v23 trailingAnchor];
    v22 = v25 = v3;
    v21 = [v3 constraintEqualToAnchor:?];
    v32[1] = v21;
    v20 = [(HODiscoverWebViewController *)self contentView];
    v4 = [v20 topAnchor];
    v5 = [(HODiscoverWebViewController *)self view];
    v6 = [v5 topAnchor];
    v7 = [v4 constraintEqualToAnchor:v6];
    v32[2] = v7;
    v8 = [(HODiscoverWebViewController *)self contentView];
    v9 = [v8 bottomAnchor];
    v10 = [(HODiscoverWebViewController *)self view];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v32[3] = v12;
    v13 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = v18;
    v15 = v19;
  }

  else
  {
    v15 = [(HODiscoverWebViewController *)self contentView];
    v14 = [v15 leadingAnchor];
    v30 = [(HODiscoverWebViewController *)self view];
    v29 = [v30 leadingAnchor];
    v28 = [v14 constraintEqualToAnchor:?];
    v31[0] = v28;
    v27 = [(HODiscoverWebViewController *)self contentView];
    v16 = [v27 trailingAnchor];
    v25 = [(HODiscoverWebViewController *)self view];
    [v25 trailingAnchor];
    v24 = v26 = v16;
    v23 = [v16 constraintEqualToAnchor:?];
    v31[1] = v23;
    v22 = [(HODiscoverWebViewController *)self contentView];
    v17 = [v22 topAnchor];
    v20 = [(HODiscoverWebViewController *)self view];
    v4 = [v20 topAnchor];
    v21 = v17;
    v5 = [v17 constraintEqualToAnchor:v4];
    v31[2] = v5;
    v6 = [(HODiscoverWebViewController *)self contentView];
    v7 = [v6 bottomAnchor];
    v8 = [(HODiscoverWebViewController *)self view];
    v9 = [v8 bottomAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v31[3] = v10;
    v11 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v11];
  }
}

- (void)_addWebViewConstraints
{
  v3 = [(HODiscoverWebViewController *)self webView];
  v4 = [v3 topAnchor];
  v5 = [(HODiscoverWebViewController *)self contentView];
  v6 = [v5 topAnchor];
  v18 = [v4 constraintEqualToAnchor:v6];

  v23 = [(HODiscoverWebViewController *)self webView];
  v21 = [v23 leadingAnchor];
  v22 = [(HODiscoverWebViewController *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v17 = [(HODiscoverWebViewController *)self webView];
  v7 = [v17 trailingAnchor];
  v8 = [(HODiscoverWebViewController *)self contentView];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v24[1] = v10;
  v24[2] = v18;
  v11 = [(HODiscoverWebViewController *)self webView];
  v12 = [v11 bottomAnchor];
  v13 = [(HODiscoverWebViewController *)self contentView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)_addConnectionIssueOverlayViewConstraints
{
  v23 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  v21 = [v23 leadingAnchor];
  v22 = [(HODiscoverWebViewController *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  v16 = [v18 trailingAnchor];
  v17 = [(HODiscoverWebViewController *)self contentView];
  v15 = [v17 trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  v3 = [v13 topAnchor];
  v4 = [(HODiscoverWebViewController *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  v8 = [v7 bottomAnchor];
  v9 = [(HODiscoverWebViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_addConstraintsForWebViewActivityIndicator
{
  v13 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  v3 = [v13 centerXAnchor];
  v4 = [(HODiscoverWebViewController *)self contentView];
  v5 = [v4 centerXAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v14[0] = v6;
  v7 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  v8 = [v7 centerYAnchor];
  v9 = [(HODiscoverWebViewController *)self contentView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateNetworkConnectionState:(unint64_t)a3
{
  v5 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];

  if (v5)
  {
    if ([(HODiscoverWebViewController *)self currentConnectionIssueState]== a3)
    {
      return;
    }
  }

  else
  {
    v6 = [[HODiscoverConnectionIssueOverlayView alloc] initWithFrame:self withDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(HODiscoverWebViewController *)self setConnectionIssueOverlayView:v6];

    v7 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HODiscoverWebViewController *)self contentView];
    v9 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
    [v8 addSubview:v9];

    [(HODiscoverWebViewController *)self _addConnectionIssueOverlayViewConstraints];
  }

  switch(a3)
  {
    case 2uLL:
      v16 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [v16 setConnectionIssueType:2];

      v17 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [v17 setHidden:0];

      v13 = [(HODiscoverWebViewController *)self webView];
      v11 = 1;
      [v13 setHidden:1];
      goto LABEL_12;
    case 1uLL:
      v14 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [v14 setConnectionIssueType:1];

      v15 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [v15 setHidden:0];

      v13 = [(HODiscoverWebViewController *)self webView];
      [v13 setHidden:1];
      v11 = 0;
      goto LABEL_12;
    case 0uLL:
      v10 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      v11 = 1;
      [v10 setHidden:1];

      v12 = [(HODiscoverWebViewController *)self webView];
      [v12 setHidden:0];

      if ([(HODiscoverWebViewController *)self hasConnectedToNetwork])
      {
LABEL_13:
        [(HODiscoverWebViewController *)self setHasConnectedToNetwork:v11];
        break;
      }

      v13 = +[HODiscoverWebViewManager sharedInstance];
      [v13 reloadWebViews];
LABEL_12:

      goto LABEL_13;
  }

  [(HODiscoverWebViewController *)self setCurrentConnectionIssueState:a3];
}

- (void)_updateNavigationBarAppearenceFromOffset
{
  v3 = [(HODiscoverWebViewController *)self webView];
  v4 = [v3 scrollView];
  [v4 contentOffset];
  v6 = v5 / 20.0;

  v7 = 1.0;
  if (v6 > 1.0)
  {
    v8 = [(HODiscoverWebViewController *)self navigationController];
    v9 = [v8 navigationBar];
    v10 = v9;
    v11 = 1.0;
LABEL_5:
    [v9 _setTitleOpacity:v11];
    goto LABEL_7;
  }

  v8 = [(HODiscoverWebViewController *)self navigationController];
  v9 = [v8 navigationBar];
  v10 = v9;
  if (v6 < 0.0)
  {
    v7 = 0.0;
    v11 = 0.0;
    goto LABEL_5;
  }

  [v9 _setTitleOpacity:v6];
  v7 = v6;
LABEL_7:

  v12 = [(HODiscoverWebViewController *)self navigationController];
  v13 = [v12 navigationBar];
  [v13 _setBackgroundOpacity:v7];

  [(HODiscoverWebViewController *)self _updateScrollPocketAppearanceFromOffset];
}

- (void)_updateScrollPocketAppearanceFromOffset
{
  v3 = [(HODiscoverWebViewController *)self webView];
  v4 = [v3 scrollView];
  [v4 contentOffset];
  v6 = v5;
  v7 = [(HODiscoverWebViewController *)self webView];
  v8 = [v7 scrollView];
  [v8 contentInset];
  v10 = v6 / -v9;

  v12 = [(HODiscoverWebViewController *)self webView];
  v11 = [v12 scrollView];
  [v11 _setHiddenPocketEdges:v10 >= 1.0];
}

- (void)_startWebViewActivityIndicator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016168;
  v4[3] = &unk_1000C23C8;
  v4[4] = self;
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v4 block:1.5];
  [(HODiscoverWebViewController *)self setWebViewActivityIndicatorDelayTimer:v3];
}

- (void)_stopWebViewActivityIndicator
{
  v3 = [(HODiscoverWebViewController *)self webViewActivityIndicatorDelayTimer];

  if (v3)
  {
    v4 = [(HODiscoverWebViewController *)self webViewActivityIndicatorDelayTimer];
    [v4 invalidate];
  }

  [(HODiscoverWebViewController *)self setWebViewActivityIndicatorDelayTimer:0];
  v5 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  [v5 stopAnimating];
}

- (void)reloadWebView:(id)a3
{
  v3 = [(HODiscoverWebViewController *)self applicationBackgroundedDate];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4);
  v6 = +[HODiscoverWebViewManager sharedInstance];
  [v6 cacheRefreshTimeInterval];
  if (v5 > v7)
  {
  }

  else
  {
    v8 = +[HODiscoverWebViewManager sharedInstance];
    v9 = [v8 allowForcedCacheReload];

    if (!v9)
    {
      return;
    }
  }

  v10 = +[HODiscoverWebViewManager sharedInstance];
  [v10 reloadWebViews];
}

- (void)applicationWentIntoBackground:(id)a3
{
  v4 = +[NSDate date];
  [(HODiscoverWebViewController *)self setApplicationBackgroundedDate:v4];
}

- (void)contentSizeDidChange:(id)a3
{
  v9 = [(HODiscoverWebViewController *)self applicationBackgroundedDate];
  [v9 timeIntervalSinceNow];
  v4 = fabs(v3);
  v5 = +[HODiscoverWebViewManager sharedInstance];
  [v5 cacheRefreshTimeInterval];
  if (v4 > v6)
  {
  }

  else
  {
    v7 = +[HODiscoverWebViewManager sharedInstance];
    v8 = [v7 allowForcedCacheReload];

    if (v8)
    {
      return;
    }

    v9 = +[HODiscoverWebViewManager sharedInstance];
    [v9 reloadWebViews];
  }
}

- (void)pushNewDiscoverWebViewControllerWithURLString:(id)a3
{
  v4 = a3;
  v6 = [[HODiscoverModalWebViewController alloc] initWithURLString:v4];

  v5 = [(HODiscoverWebViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (void)presentModalDiscoverWebViewControllerWithURLString:(id)a3
{
  v4 = a3;
  v8 = [[HODiscoverModalWebViewController alloc] initWithURLString:v4];

  if (+[HFUtilities isAnIPad])
  {
    v5 = [(HODiscoverModalWebViewController *)v8 presentationController];
    [v5 setDelegate:self];

    [(HODiscoverModalWebViewController *)v8 setTransitioningDelegate:self];
  }

  v6 = [[UINavigationController alloc] initWithRootViewController:v8];
  v7 = [(HODiscoverWebViewController *)self navigationController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (void)exitToAppleStoreAppOrSafariWithURL:(id)a3
{
  v5 = a3;
  v3 = +[HFOpenURLRouter sharedInstance];
  v4 = [v3 openURL:v5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  [v4 setContentOffset:0.0];

  [(HODiscoverWebViewController *)self _updateNavigationBarAppearenceFromOffset];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v6 = [(HODiscoverWebViewController *)self webView:a3];
  v4 = [v6 scrollView];
  v5 = [v4 pinchGestureRecognizer];
  [v5 setEnabled:0];
}

- (void)webViewNavigationStateUpdated:(id)a3 navigationState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HODiscoverWebViewController *)self webView];

  if (v7 == v6)
  {
    if (a4 == 2)
    {
      [(HODiscoverWebViewController *)self _stopWebViewActivityIndicator];
      v8 = 2;
    }

    else
    {
      if (a4 == 1)
      {
        [(HODiscoverWebViewController *)self _stopWebViewActivityIndicator];
      }

      else
      {
        if (a4)
        {
          return;
        }

        [(HODiscoverWebViewController *)self _startWebViewActivityIndicator];
      }

      v8 = 0;
    }

    [(HODiscoverWebViewController *)self _updateNetworkConnectionState:v8];
  }
}

- (void)connectionIssueOverlayRetryButtonPressed
{
  v2 = +[HODiscoverWebViewManager sharedInstance];
  [v2 reloadWebViews];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[HODiscoverModalPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

@end