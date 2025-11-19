@interface TPSViewController
- (TPSKVOManager)KVOManager;
- (TPSViewController)init;
- (TPSViewController)initWithCoder:(id)a3;
- (TPSViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)commonInit;
- (void)dealloc;
- (void)removeErrorView;
- (void)setLoading:(BOOL)a3;
- (void)showErrorView:(id)a3;
- (void)viewDidLoad;
@end

@implementation TPSViewController

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = +[TPSNetworkPathMonitor sharedMonitor];
  v4 = [(TPSViewController *)self networkMonitorToken];
  [v3 removeObserverForKey:v4];

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

- (TPSViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = TPSViewController;
  v4 = [(TPSViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(TPSViewController *)v4 commonInit];
  }

  return v5;
}

- (TPSViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSViewController;
  v3 = [(TPSViewController *)&v6 initWithCoder:a3];
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
  v4 = [(TPSViewController *)self view];
  [v4 setBackgroundColor:v3];
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

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    loadingView = self->_loadingView;
    if (a3)
    {
      if (!loadingView)
      {
        v5 = [(TPSViewController *)self view];
        v6 = objc_alloc_init(TPSLoadingView);
        v7 = self->_loadingView;
        self->_loadingView = v6;

        [(TPSLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
        [v5 addSubview:self->_loadingView];
        v8 = [(TPSLoadingView *)self->_loadingView topAnchor];
        v9 = [v5 topAnchor];
        v10 = [v8 constraintEqualToAnchor:v9];
        [v10 setActive:1];

        v11 = [(TPSLoadingView *)self->_loadingView bottomAnchor];
        v12 = [v5 bottomAnchor];
        v13 = [v11 constraintEqualToAnchor:v12];
        [v13 setActive:1];

        v14 = [(TPSLoadingView *)self->_loadingView leadingAnchor];
        v15 = [v5 leadingAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];
        [v16 setActive:1];

        v17 = [(TPSLoadingView *)self->_loadingView trailingAnchor];
        v18 = [v5 trailingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
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

- (void)showErrorView:(id)a3
{
  if (!self->_contentMessageViewController)
  {
    v4 = a3;
    v19 = [[ContentMessageViewModel alloc] initWithError:v4];

    v5 = [[ContentMessageViewController alloc] initWithContentMessageViewModel:v19];
    contentMessageViewController = self->_contentMessageViewController;
    self->_contentMessageViewController = v5;

    [(TPSViewController *)self addChildViewController:self->_contentMessageViewController];
    v7 = [(TPSViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [(TPSViewController *)self view];
    v18 = [(ContentMessageViewController *)self->_contentMessageViewController view];
    [v17 addSubview:v18];

    [(ContentMessageViewController *)self->_contentMessageViewController didMoveToParentViewController:self];
  }
}

- (void)removeErrorView
{
  v3 = [(ContentMessageViewController *)self->_contentMessageViewController view];
  [v3 removeFromSuperview];

  [(ContentMessageViewController *)self->_contentMessageViewController willMoveToParentViewController:0];
  [(ContentMessageViewController *)self->_contentMessageViewController removeFromParentViewController];
  contentMessageViewController = self->_contentMessageViewController;
  self->_contentMessageViewController = 0;
}

@end