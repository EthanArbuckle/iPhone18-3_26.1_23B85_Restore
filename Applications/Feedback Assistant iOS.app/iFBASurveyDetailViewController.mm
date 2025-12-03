@interface iFBASurveyDetailViewController
- (UIButton)actionButton;
- (UIScrollView)scrollView;
- (iFBASurveyDetailViewController)initWithCoder:(id)coder;
- (id)surveyBugForm;
- (void)dealloc;
- (void)didPressTakeSurveyButton:(id)button;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setContentItem:(id)item;
- (void)updateActionView;
- (void)updateNavigation;
- (void)updateScrollView;
- (void)updateWebView;
- (void)updateWebViewFittingSize;
- (void)updateWebViewHeight:(double)height;
- (void)viewDidLoad;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation iFBASurveyDetailViewController

- (iFBASurveyDetailViewController)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = iFBASurveyDetailViewController;
  v3 = [(iFBASurveyDetailViewController *)&v12 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc_init(WKWebViewConfiguration);
    [v4 setSelectionGranularity:1];
    [v4 _setColorFilterEnabled:1];
    v5 = [[FBAAdaptiveWebView alloc] initWithFrame:v4 configuration:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    webView = v3->_webView;
    v3->_webView = v5;

    v7 = +[UIColor clearColor];
    [(FBAAdaptiveWebView *)v3->_webView setBackgroundColor:v7];

    v8 = +[UIColor clearColor];
    scrollView = [(FBAAdaptiveWebView *)v3->_webView scrollView];
    [scrollView setBackgroundColor:v8];

    [(FBAAdaptiveWebView *)v3->_webView setNavigationDelegate:v3];
    webViewHeightConstraint = v3->_webViewHeightConstraint;
    v3->_webViewHeightConstraint = 0;

    v3->_isLoading = 0;
    v3->_isObserving = 0;
  }

  return v3;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = iFBASurveyDetailViewController;
  [(iFBASurveyDetailViewController *)&v23 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(iFBASurveyDetailViewController *)self view];
  [view setBackgroundColor:v3];

  navigationItem = [(iFBASurveyDetailViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v6 = +[UIColor systemBackgroundColor];
  scrollView = [(iFBASurveyDetailViewController *)self scrollView];
  [scrollView setBackgroundColor:v6];

  v8 = +[UIColor systemBackgroundColor];
  actionView = [(iFBASurveyDetailViewController *)self actionView];
  [actionView setBackgroundColor:v8];

  webView = [(iFBASurveyDetailViewController *)self webView];
  [webView setTranslatesAutoresizingMaskIntoConstraints:0];

  actionView2 = [(iFBASurveyDetailViewController *)self actionView];
  [actionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(iFBASurveyDetailViewController *)self updateScrollView];
  [(iFBASurveyDetailViewController *)self updateActionView];
  webView2 = [(iFBASurveyDetailViewController *)self webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 addObserver:self forKeyPath:@"contentSize" options:0 context:off_1001084D0];

  objc_initWeak(&location, self);
  v14 = +[FBKData sharedInstance];
  mainQueueContext = [v14 mainQueueContext];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000032CC;
  v20 = &unk_1000DE408;
  objc_copyWeak(&v21, &location);
  v16 = [mainQueueContext addObjectsDidChangeNotificationObserver:&v17];
  [(iFBASurveyDetailViewController *)self setDataChangeObserver:v16, v17, v18, v19, v20];

  self->_isObserving = 1;
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  if (self->_isObserving)
  {
    v3 = +[FBKData sharedInstance];
    notificationCenter = [v3 notificationCenter];
    [notificationCenter removeObserver:self];

    v5 = +[FBKData sharedInstance];
    notificationCenter2 = [v5 notificationCenter];
    dataChangeObserver = [(iFBASurveyDetailViewController *)self dataChangeObserver];
    [notificationCenter2 removeObserver:dataChangeObserver];

    [(iFBASurveyDetailViewController *)self setDataChangeObserver:0];
    webView = [(iFBASurveyDetailViewController *)self webView];
    scrollView = [webView scrollView];
    [scrollView removeObserver:self forKeyPath:@"contentSize"];
  }

  v10.receiver = self;
  v10.super_class = iFBASurveyDetailViewController;
  [(iFBASurveyDetailViewController *)&v10 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_1001084D0 == context)
  {

    [(iFBASurveyDetailViewController *)self updateWebViewFittingSize:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = iFBASurveyDetailViewController;
    [(iFBASurveyDetailViewController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)surveyBugForm
{
  contentItem = [(iFBASurveyDetailViewController *)self contentItem];
  detailedItem = [contentItem detailedItem];

  return detailedItem;
}

- (void)setContentItem:(id)item
{
  objc_storeStrong(&self->_contentItem, item);
  itemCopy = item;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000038FC;
  v12[3] = &unk_1000DE430;
  v12[4] = self;
  v6 = objc_retainBlock(v12);
  v7 = +[FBKData sharedInstance];
  team = [(iFBASurveyDetailViewController *)self team];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000394C;
  v10[3] = &unk_1000DE480;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 refreshSurveyFromContentItem:itemCopy forTeam:team completion:v10];
}

- (void)updateNavigation
{
  surveyBugForm = [(iFBASurveyDetailViewController *)self surveyBugForm];
  if (surveyBugForm && (v4 = surveyBugForm, v5 = [(iFBASurveyDetailViewController *)self isLoading], v4, (v5 & 1) == 0))
  {
    surveyBugForm2 = [(iFBASurveyDetailViewController *)self surveyBugForm];
    name = [surveyBugForm2 name];
    navigationItem = [(iFBASurveyDetailViewController *)self navigationItem];
    [navigationItem setTitle:name];
  }

  else
  {
    surveyBugForm2 = [(iFBASurveyDetailViewController *)self navigationItem];
    [surveyBugForm2 setTitle:&stru_1000E2210];
  }
}

- (void)updateScrollView
{
  scrollView = [(iFBASurveyDetailViewController *)self scrollView];

  if (scrollView)
  {
    webView = [(iFBASurveyDetailViewController *)self webView];
    superview = [webView superview];
    scrollView2 = [(iFBASurveyDetailViewController *)self scrollView];
    v7 = [superview isEqual:scrollView2];

    if ((v7 & 1) == 0)
    {
      scrollView3 = [(iFBASurveyDetailViewController *)self scrollView];
      webView2 = [(iFBASurveyDetailViewController *)self webView];
      [scrollView3 addSubview:webView2];

      scrollView4 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView5 = [(iFBASurveyDetailViewController *)self scrollView];
      webView3 = [(iFBASurveyDetailViewController *)self webView];
      v13 = [NSLayoutConstraint constraintWithItem:scrollView5 attribute:7 relatedBy:0 toItem:webView3 attribute:7 multiplier:1.0 constant:0.0];
      [scrollView4 addConstraint:v13];

      scrollView6 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView7 = [(iFBASurveyDetailViewController *)self scrollView];
      webView4 = [(iFBASurveyDetailViewController *)self webView];
      v17 = [NSLayoutConstraint constraintWithItem:scrollView7 attribute:5 relatedBy:0 toItem:webView4 attribute:5 multiplier:1.0 constant:0.0];
      [scrollView6 addConstraint:v17];

      scrollView8 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView9 = [(iFBASurveyDetailViewController *)self scrollView];
      webView5 = [(iFBASurveyDetailViewController *)self webView];
      v21 = [NSLayoutConstraint constraintWithItem:scrollView9 attribute:3 relatedBy:0 toItem:webView5 attribute:3 multiplier:1.0 constant:0.0];
      [scrollView8 addConstraint:v21];
    }

    actionView = [(iFBASurveyDetailViewController *)self actionView];
    superview2 = [actionView superview];
    scrollView10 = [(iFBASurveyDetailViewController *)self scrollView];
    v25 = [superview2 isEqual:scrollView10];

    if ((v25 & 1) == 0)
    {
      scrollView11 = [(iFBASurveyDetailViewController *)self scrollView];
      actionView2 = [(iFBASurveyDetailViewController *)self actionView];
      [scrollView11 addSubview:actionView2];

      scrollView12 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView13 = [(iFBASurveyDetailViewController *)self scrollView];
      actionView3 = [(iFBASurveyDetailViewController *)self actionView];
      v31 = [NSLayoutConstraint constraintWithItem:scrollView13 attribute:7 relatedBy:0 toItem:actionView3 attribute:7 multiplier:1.0 constant:0.0];
      [scrollView12 addConstraint:v31];

      scrollView14 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView15 = [(iFBASurveyDetailViewController *)self scrollView];
      actionView4 = [(iFBASurveyDetailViewController *)self actionView];
      v35 = [NSLayoutConstraint constraintWithItem:scrollView15 attribute:5 relatedBy:0 toItem:actionView4 attribute:5 multiplier:1.0 constant:0.0];
      [scrollView14 addConstraint:v35];

      scrollView16 = [(iFBASurveyDetailViewController *)self scrollView];
      webView6 = [(iFBASurveyDetailViewController *)self webView];
      actionView5 = [(iFBASurveyDetailViewController *)self actionView];
      v39 = [NSLayoutConstraint constraintWithItem:webView6 attribute:4 relatedBy:0 toItem:actionView5 attribute:3 multiplier:1.0 constant:0.0];
      [scrollView16 addConstraint:v39];

      scrollView17 = [(iFBASurveyDetailViewController *)self scrollView];
      scrollView18 = [(iFBASurveyDetailViewController *)self scrollView];
      actionView6 = [(iFBASurveyDetailViewController *)self actionView];
      v42 = [NSLayoutConstraint constraintWithItem:scrollView18 attribute:4 relatedBy:0 toItem:actionView6 attribute:4 multiplier:1.0 constant:0.0];
      [scrollView17 addConstraint:v42];
    }
  }
}

- (void)updateWebView
{
  surveyBugForm = [(iFBASurveyDetailViewController *)self surveyBugForm];
  if (surveyBugForm && (v4 = surveyBugForm, v5 = [(iFBASurveyDetailViewController *)self isLoading], v4, (v5 & 1) == 0))
  {
    webView = [(iFBASurveyDetailViewController *)self webView];
    scrollView = [webView scrollView];
    [scrollView setScrollEnabled:0];

    webView2 = [(iFBASurveyDetailViewController *)self webView];
    surveyBugForm2 = [(iFBASurveyDetailViewController *)self surveyBugForm];
    fullAnnouncementHTML = [surveyBugForm2 fullAnnouncementHTML];
    v12 = +[iFBAConstants appleSeedURL];
    v13 = [webView2 loadHTMLString:fullAnnouncementHTML baseURL:v12];
  }

  else
  {
    v6 = [NSURL URLWithString:@"about://blank"];
    webView2 = [NSURLRequest requestWithURL:v6];

    surveyBugForm2 = [(iFBASurveyDetailViewController *)self webView];
    v8 = [surveyBugForm2 loadRequest:webView2];
  }
}

- (void)updateWebViewFittingSize
{
  webView = [(iFBASurveyDetailViewController *)self webView];
  [webView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v4;

  webView2 = [(iFBASurveyDetailViewController *)self webView];
  scrollView = [webView2 scrollView];
  [scrollView contentSize];
  v9 = v8;

  webView3 = [(iFBASurveyDetailViewController *)self webView];
  scrollView2 = [webView3 scrollView];
  [scrollView2 contentInset];
  v13 = v12;
  v15 = v14;

  if (v5 >= v9)
  {
    v16 = v5;
  }

  else
  {
    v16 = v9;
  }

  v17 = v15 + v16 + v13;

  [(iFBASurveyDetailViewController *)self updateWebViewHeight:v17];
}

- (void)updateActionView
{
  surveyBugForm = [(iFBASurveyDetailViewController *)self surveyBugForm];
  if (surveyBugForm && (v4 = surveyBugForm, v5 = [(iFBASurveyDetailViewController *)self isLoading], v4, (v5 & 1) == 0))
  {
    actionButton = [(iFBASurveyDetailViewController *)self actionButton];
    surveyBugForm2 = [(iFBASurveyDetailViewController *)self surveyBugForm];
    team = [(iFBASurveyDetailViewController *)self team];
    v10 = [surveyBugForm2 surveyActionTextForTeam:team];
    [actionButton setTitle:v10 forState:0];

    surveyBugForm3 = [(iFBASurveyDetailViewController *)self surveyBugForm];
    team2 = [(iFBASurveyDetailViewController *)self team];
    v13 = [surveyBugForm3 canTakeForTeam:team2];

    actionButton2 = [(iFBASurveyDetailViewController *)self actionButton];
    [actionButton2 setEnabled:v13];

    actionButton3 = [(iFBASurveyDetailViewController *)self actionButton];
    [actionButton3 setHidden:0];
  }

  else
  {
    actionButton4 = [(iFBASurveyDetailViewController *)self actionButton];
    [actionButton4 setHidden:1];

    actionButton3 = [(iFBASurveyDetailViewController *)self actionButton];
    [actionButton3 setTitle:&stru_1000E2210 forState:0];
  }
}

- (void)updateWebViewHeight:(double)height
{
  webViewHeightConstraint = [(iFBASurveyDetailViewController *)self webViewHeightConstraint];

  if (webViewHeightConstraint)
  {
    webViewHeightConstraint2 = [(iFBASurveyDetailViewController *)self webViewHeightConstraint];
    [webViewHeightConstraint2 constant];
    v8 = vabdd_f64(v7, height);

    if (v8 <= 4.0)
    {
      return;
    }

    webViewHeightConstraint3 = [(iFBASurveyDetailViewController *)self webViewHeightConstraint];
    [webViewHeightConstraint3 setConstant:height];
  }

  else
  {
    webView = [(iFBASurveyDetailViewController *)self webView];
    v10 = [NSLayoutConstraint constraintWithItem:webView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:height];
    [(iFBASurveyDetailViewController *)self setWebViewHeightConstraint:v10];

    webViewHeightConstraint3 = [(iFBASurveyDetailViewController *)self webView];
    webViewHeightConstraint4 = [(iFBASurveyDetailViewController *)self webViewHeightConstraint];
    [webViewHeightConstraint3 addConstraint:webViewHeightConstraint4];
  }
}

- (void)didPressTakeSurveyButton:(id)button
{
  surveyBugForm = [(iFBASurveyDetailViewController *)self surveyBugForm];
  surveyBugForm2 = [(iFBASurveyDetailViewController *)self surveyBugForm];

  if (surveyBugForm2)
  {
    v5 = +[FBADraftManager sharedInstance];
    contentItem = [(iFBASurveyDetailViewController *)self contentItem];
    team = [(iFBASurveyDetailViewController *)self team];
    [v5 beginFeedbackForSurvey:surveyBugForm contentItem:contentItem forTeam:team];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateViewport];
  }
}

- (UIButton)actionButton
{
  WeakRetained = objc_loadWeakRetained(&self->_actionButton);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end