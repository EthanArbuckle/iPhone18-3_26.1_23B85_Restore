@interface iFBAAnnouncementViewController
- (iFBAAnnouncementViewController)initWithCoder:(id)coder;
- (void)markAnnouncementRead;
- (void)setContentItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitle;
- (void)updateWebView;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation iFBAAnnouncementViewController

- (iFBAAnnouncementViewController)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = iFBAAnnouncementViewController;
  v3 = [(iFBAAnnouncementViewController *)&v14 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc_init(WKWebViewConfiguration);
    [v4 setSelectionGranularity:1];
    [v4 _setColorFilterEnabled:1];
    v5 = [[WKWebView alloc] initWithFrame:v4 configuration:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(iFBAAnnouncementViewController *)v3 setWebView:v5];

    webView = [(iFBAAnnouncementViewController *)v3 webView];
    [webView setTranslatesAutoresizingMaskIntoConstraints:0];

    webView2 = [(iFBAAnnouncementViewController *)v3 webView];
    [webView2 setNavigationDelegate:v3];

    v8 = +[UIColor systemBackgroundColor];
    webView3 = [(iFBAAnnouncementViewController *)v3 webView];
    [webView3 setBackgroundColor:v8];

    v10 = +[UIColor systemBackgroundColor];
    webView4 = [(iFBAAnnouncementViewController *)v3 webView];
    scrollView = [webView4 scrollView];
    [scrollView setBackgroundColor:v10];
  }

  return v3;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = iFBAAnnouncementViewController;
  [(iFBAAnnouncementViewController *)&v28 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(iFBAAnnouncementViewController *)self view];
  [view setBackgroundColor:v3];

  navigationItem = [(iFBAAnnouncementViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  view2 = [(iFBAAnnouncementViewController *)self view];
  webView = [(iFBAAnnouncementViewController *)self webView];
  [view2 addSubview:webView];

  view3 = [(iFBAAnnouncementViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];

  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
  webView2 = [(iFBAAnnouncementViewController *)self webView];
  leadingAnchor2 = [webView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v13 setActive:1];

  trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
  webView3 = [(iFBAAnnouncementViewController *)self webView];
  trailingAnchor2 = [webView3 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  view4 = [(iFBAAnnouncementViewController *)self view];
  topAnchor = [view4 topAnchor];
  webView4 = [(iFBAAnnouncementViewController *)self webView];
  topAnchor2 = [webView4 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v22 setActive:1];

  view5 = [(iFBAAnnouncementViewController *)self view];
  bottomAnchor = [view5 bottomAnchor];
  webView5 = [(iFBAAnnouncementViewController *)self webView];
  bottomAnchor2 = [webView5 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 setActive:1];
}

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(iFBAAnnouncementViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {

    [(iFBAAnnouncementViewController *)self updateWebView];
  }
}

- (void)setContentItem:(id)item
{
  itemCopy = item;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000260B4;
  v12[3] = &unk_1000DE430;
  v12[4] = self;
  v6 = objc_retainBlock(v12);
  objc_storeStrong(&self->_contentItem, item);
  contentItem = [(iFBAAnnouncementViewController *)self contentItem];

  if (contentItem)
  {
    v8 = +[FBKData sharedInstance];
    contentItem2 = [(iFBAAnnouncementViewController *)self contentItem];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000260F0;
    v10[3] = &unk_1000DF418;
    v10[4] = self;
    v11 = v6;
    [v8 refreshAnnouncementFromContentItem:contentItem2 completion:v10];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)updateTitle
{
  announcement = [(iFBAAnnouncementViewController *)self announcement];

  if (announcement)
  {
    announcement2 = [(iFBAAnnouncementViewController *)self announcement];
    title = [announcement2 title];
    navigationItem = [(iFBAAnnouncementViewController *)self navigationItem];
    [navigationItem setTitle:title];
  }

  else
  {
    announcement2 = [(iFBAAnnouncementViewController *)self navigationItem];
    [announcement2 setTitle:&stru_1000E2210];
  }
}

- (void)updateWebView
{
  announcement = [(iFBAAnnouncementViewController *)self announcement];
  if (announcement && (v4 = announcement, -[iFBAAnnouncementViewController announcement](self, "announcement"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isStub], v5, v4, (v6 & 1) == 0))
  {
    announcement2 = [(iFBAAnnouncementViewController *)self announcement];
    fullHTMLContent = [announcement2 fullHTMLContent];

    if (fullHTMLContent)
    {
      announcement3 = [(iFBAAnnouncementViewController *)self announcement];
      fullHTMLContent2 = [announcement3 fullHTMLContent];
    }

    else
    {
      fullHTMLContent2 = &stru_1000E2210;
    }

    webView = [(iFBAAnnouncementViewController *)self webView];
    v13 = +[iFBAConstants appleSeedURL];
    v14 = [webView loadHTMLString:fullHTMLContent2 baseURL:v13];
  }

  else
  {
    v7 = [NSURL URLWithString:@"about://blank"];
    fullHTMLContent2 = [NSURLRequest requestWithURL:v7];

    webView = [(iFBAAnnouncementViewController *)self webView];
    v9 = [webView loadRequest:fullHTMLContent2];
  }
}

- (void)markAnnouncementRead
{
  announcement = [(iFBAAnnouncementViewController *)self announcement];
  if (announcement)
  {
    v9 = announcement;
    contentItem = [(iFBAAnnouncementViewController *)self contentItem];
    if (contentItem)
    {
      v5 = contentItem;
      contentItem2 = [(iFBAAnnouncementViewController *)self contentItem];
      unread = [contentItem2 unread];

      if (!unread)
      {
        return;
      }

      v9 = +[FBKData sharedInstance];
      announcement2 = [(iFBAAnnouncementViewController *)self announcement];
      [v9 markAnnouncementRead:announcement2 completion:0];
    }
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  navigationType = [actionCopy navigationType];
  v8 = handlerCopy[2];
  if (navigationType == -1)
  {
    v8(handlerCopy, 1);
  }

  else
  {
    v8(handlerCopy, 0);

    request = [actionCopy request];
    handlerCopy = [request URL];

    v10 = +[UIApplication sharedApplication];
    v11 = v10;
    if (handlerCopy && [v10 canOpenURL:handlerCopy])
    {
      [v11 openURL:handlerCopy options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

@end