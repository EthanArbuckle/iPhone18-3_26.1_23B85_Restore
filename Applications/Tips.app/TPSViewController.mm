@interface TPSViewController
- (TPSKVOManager)KVOManager;
- (TPSViewController)init;
- (TPSViewController)initWithCoder:(id)coder;
- (TPSViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)commonInit;
- (void)dealloc;
- (void)removeErrorView;
- (void)setLoading:(BOOL)loading;
- (void)showErrorView:(id)view;
- (void)viewDidLoad;
@end

@implementation TPSViewController

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = +[TPSNetworkPathMonitor sharedMonitor];
  networkMonitorToken = [(TPSViewController *)self networkMonitorToken];
  [v3 removeObserverForKey:networkMonitorToken];

  v5.receiver = self;
  v5.super_class = TPSViewController;
  [(TPSViewController *)&v5 dealloc];
}

- (void)commonInit
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  networkMonitorToken = self->_networkMonitorToken;
  self->_networkMonitorToken = v3;

  v5 = +[TPSNetworkPathMonitor sharedMonitor];
  v6 = self->_networkMonitorToken;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A00C;
  v7[3] = &unk_1000A2F20;
  objc_copyWeak(&v8, &location);
  [v5 addObserverForKey:v6 using:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (TPSViewController)init
{
  v5.receiver = self;
  v5.super_class = TPSViewController;
  v2 = [(TPSViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSViewController *)v2 commonInit];
  }

  return v3;
}

- (TPSViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = TPSViewController;
  v4 = [(TPSViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(TPSViewController *)v4 commonInit];
  }

  return v5;
}

- (TPSViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSViewController;
  v3 = [(TPSViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TPSViewController *)v3 commonInit];
  }

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TPSViewController;
  [(TPSViewController *)&v5 viewDidLoad];
  v3 = +[TPSAppearance defaultBackgroundColor];
  view = [(TPSViewController *)self view];
  [view setBackgroundColor:v3];
}

- (TPSKVOManager)KVOManager
{
  KVOManager = self->_KVOManager;
  if (!KVOManager)
  {
    v4 = [[TPSKVOManager alloc] initWithObserver:self];
    v5 = self->_KVOManager;
    self->_KVOManager = v4;

    KVOManager = self->_KVOManager;
  }

  return KVOManager;
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    loadingView = self->_loadingView;
    if (loading)
    {
      if (!loadingView)
      {
        view = [(TPSViewController *)self view];
        v6 = objc_alloc_init(TPSLoadingView);
        v7 = self->_loadingView;
        self->_loadingView = v6;

        [(TPSLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
        [view addSubview:self->_loadingView];
        topAnchor = [(TPSLoadingView *)self->_loadingView topAnchor];
        topAnchor2 = [view topAnchor];
        v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v10 setActive:1];

        bottomAnchor = [(TPSLoadingView *)self->_loadingView bottomAnchor];
        bottomAnchor2 = [view bottomAnchor];
        v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v13 setActive:1];

        leadingAnchor = [(TPSLoadingView *)self->_loadingView leadingAnchor];
        leadingAnchor2 = [view leadingAnchor];
        v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [v16 setActive:1];

        trailingAnchor = [(TPSLoadingView *)self->_loadingView trailingAnchor];
        trailingAnchor2 = [view trailingAnchor];
        v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [v19 setActive:1];
      }

      [(TPSViewController *)self removeErrorView];
    }

    else
    {
      [(TPSLoadingView *)loadingView removeFromSuperview];
      v20 = self->_loadingView;
      self->_loadingView = 0;
    }
  }
}

- (void)showErrorView:(id)view
{
  if (!self->_contentMessageViewController)
  {
    viewCopy = view;
    v19 = [[ContentMessageViewModel alloc] initWithError:viewCopy];

    v5 = [[ContentMessageViewController alloc] initWithContentMessageViewModel:v19];
    contentMessageViewController = self->_contentMessageViewController;
    self->_contentMessageViewController = v5;

    [(TPSViewController *)self addChildViewController:self->_contentMessageViewController];
    view = [(TPSViewController *)self view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view2 = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [view2 setFrame:{v9, v11, v13, v15}];

    view3 = [(TPSViewController *)self view];
    view4 = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [view3 addSubview:view4];

    [(ContentMessageViewController *)self->_contentMessageViewController didMoveToParentViewController:self];
  }
}

- (void)removeErrorView
{
  view = [(ContentMessageViewController *)self->_contentMessageViewController view];
  [view removeFromSuperview];

  [(ContentMessageViewController *)self->_contentMessageViewController willMoveToParentViewController:0];
  [(ContentMessageViewController *)self->_contentMessageViewController removeFromParentViewController];
  contentMessageViewController = self->_contentMessageViewController;
  self->_contentMessageViewController = 0;
}

@end