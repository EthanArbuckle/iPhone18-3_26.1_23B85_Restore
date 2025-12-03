@interface MCDForYouTableViewController
- (MCDForYouTableViewController)init;
- (id)_contentManager;
- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MCDForYouTableViewController

- (MCDForYouTableViewController)init
{
  v6.receiver = self;
  v6.super_class = MCDForYouTableViewController;
  v2 = [(MCDFuseTableViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MCDForYouTableViewController *)v2 setPlayActivityFeatureName:@"home"];
    v4 = objc_opt_new();
    [(MCDForYouTableViewController *)v3 setRecentlyPlayedObserver:v4];
  }

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MCDForYouTableViewController;
  [(MCDFuseTableViewController *)&v9 viewDidLoad];
  v3 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading view for For You", buf, 2u);
  }

  objc_initWeak(buf, self);
  recentlyPlayedObserver = [(MCDForYouTableViewController *)self recentlyPlayedObserver];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DDF44;
  v6[3] = &unk_101097D20;
  objc_copyWeak(&v7, buf);
  [recentlyPlayedObserver registerHandler:v6];

  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:&stru_101097DF0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = itemCopy;
    v7 = [[MCDForYouGroupTableViewController alloc] initWithRecommendationGroup:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_contentManager
{
  v3 = [MCDForYouContentManager alloc];
  v4 = [[MCDForYouDataSource alloc] initWithRecommendationGroup:0];
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDForYouTableViewController *)self traitCollection];
  v7 = -[MCDFuseContentManager initWithDataSource:delegate:viewController:playbackManager:limitedUI:](v3, "initWithDataSource:delegate:viewController:playbackManager:limitedUI:", v4, self, self, playbackManager, [traitCollection shouldLimitMusicLists]);

  return v7;
}

@end