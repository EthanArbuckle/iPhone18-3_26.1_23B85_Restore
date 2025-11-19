@interface iFBAAnnouncementViewController
- (iFBAAnnouncementViewController)initWithCoder:(id)a3;
- (void)markAnnouncementRead;
- (void)setContentItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTitle;
- (void)updateWebView;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
@end

@implementation iFBAAnnouncementViewController

- (iFBAAnnouncementViewController)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = iFBAAnnouncementViewController;
  v3 = [(iFBAAnnouncementViewController *)&v14 initWithCoder:a3];
  if (v3)
  {
    v4 = objc_alloc_init(WKWebViewConfiguration);
    [v4 setSelectionGranularity:1];
    [v4 _setColorFilterEnabled:1];
    v5 = [[WKWebView alloc] initWithFrame:v4 configuration:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(iFBAAnnouncementViewController *)v3 setWebView:v5];

    v6 = [(iFBAAnnouncementViewController *)v3 webView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(iFBAAnnouncementViewController *)v3 webView];
    [v7 setNavigationDelegate:v3];

    v8 = +[UIColor systemBackgroundColor];
    v9 = [(iFBAAnnouncementViewController *)v3 webView];
    [v9 setBackgroundColor:v8];

    v10 = +[UIColor systemBackgroundColor];
    v11 = [(iFBAAnnouncementViewController *)v3 webView];
    v12 = [v11 scrollView];
    [v12 setBackgroundColor:v10];
  }

  return v3;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = iFBAAnnouncementViewController;
  [(iFBAAnnouncementViewController *)&v28 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(iFBAAnnouncementViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(iFBAAnnouncementViewController *)self navigationItem];
  [v5 setLargeTitleDisplayMode:2];

  v6 = [(iFBAAnnouncementViewController *)self view];
  v7 = [(iFBAAnnouncementViewController *)self webView];
  [v6 addSubview:v7];

  v8 = [(iFBAAnnouncementViewController *)self view];
  v9 = [v8 safeAreaLayoutGuide];

  v10 = [v9 leadingAnchor];
  v11 = [(iFBAAnnouncementViewController *)self webView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v9 trailingAnchor];
  v15 = [(iFBAAnnouncementViewController *)self webView];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(iFBAAnnouncementViewController *)self view];
  v19 = [v18 topAnchor];
  v20 = [(iFBAAnnouncementViewController *)self webView];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(iFBAAnnouncementViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [(iFBAAnnouncementViewController *)self webView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(iFBAAnnouncementViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4 != v6)
  {

    [(iFBAAnnouncementViewController *)self updateWebView];
  }
}

- (void)setContentItem:(id)a3
{
  v5 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000260B4;
  v12[3] = &unk_1000DE430;
  v12[4] = self;
  v6 = objc_retainBlock(v12);
  objc_storeStrong(&self->_contentItem, a3);
  v7 = [(iFBAAnnouncementViewController *)self contentItem];

  if (v7)
  {
    v8 = +[FBKData sharedInstance];
    v9 = [(iFBAAnnouncementViewController *)self contentItem];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000260F0;
    v10[3] = &unk_1000DF418;
    v10[4] = self;
    v11 = v6;
    [v8 refreshAnnouncementFromContentItem:v9 completion:v10];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)updateTitle
{
  v3 = [(iFBAAnnouncementViewController *)self announcement];

  if (v3)
  {
    v6 = [(iFBAAnnouncementViewController *)self announcement];
    v4 = [v6 title];
    v5 = [(iFBAAnnouncementViewController *)self navigationItem];
    [v5 setTitle:v4];
  }

  else
  {
    v6 = [(iFBAAnnouncementViewController *)self navigationItem];
    [v6 setTitle:&stru_1000E2210];
  }
}

- (void)updateWebView
{
  v3 = [(iFBAAnnouncementViewController *)self announcement];
  if (v3 && (v4 = v3, -[iFBAAnnouncementViewController announcement](self, "announcement"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isStub], v5, v4, (v6 & 1) == 0))
  {
    v10 = [(iFBAAnnouncementViewController *)self announcement];
    v11 = [v10 fullHTMLContent];

    if (v11)
    {
      v12 = [(iFBAAnnouncementViewController *)self announcement];
      v15 = [v12 fullHTMLContent];
    }

    else
    {
      v15 = &stru_1000E2210;
    }

    v8 = [(iFBAAnnouncementViewController *)self webView];
    v13 = +[iFBAConstants appleSeedURL];
    v14 = [v8 loadHTMLString:v15 baseURL:v13];
  }

  else
  {
    v7 = [NSURL URLWithString:@"about://blank"];
    v15 = [NSURLRequest requestWithURL:v7];

    v8 = [(iFBAAnnouncementViewController *)self webView];
    v9 = [v8 loadRequest:v15];
  }
}

- (void)markAnnouncementRead
{
  v3 = [(iFBAAnnouncementViewController *)self announcement];
  if (v3)
  {
    v9 = v3;
    v4 = [(iFBAAnnouncementViewController *)self contentItem];
    if (v4)
    {
      v5 = v4;
      v6 = [(iFBAAnnouncementViewController *)self contentItem];
      v7 = [v6 unread];

      if (!v7)
      {
        return;
      }

      v9 = +[FBKData sharedInstance];
      v8 = [(iFBAAnnouncementViewController *)self announcement];
      [v9 markAnnouncementRead:v8 completion:0];
    }
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v12 = a4;
  v6 = a5;
  v7 = [v12 navigationType];
  v8 = v6[2];
  if (v7 == -1)
  {
    v8(v6, 1);
  }

  else
  {
    v8(v6, 0);

    v9 = [v12 request];
    v6 = [v9 URL];

    v10 = +[UIApplication sharedApplication];
    v11 = v10;
    if (v6 && [v10 canOpenURL:v6])
    {
      [v11 openURL:v6 options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

@end