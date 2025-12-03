@interface MCDCuratedPlaylistsTableViewController
- (MCDCuratedPlaylistsTableViewController)initWithCurator:(id)curator;
- (id)_contentManager;
- (void)viewDidLoad;
@end

@implementation MCDCuratedPlaylistsTableViewController

- (MCDCuratedPlaylistsTableViewController)initWithCurator:(id)curator
{
  curatorCopy = curator;
  v9.receiver = self;
  v9.super_class = MCDCuratedPlaylistsTableViewController;
  v6 = [(MCDFuseTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_curator, curator);
  }

  return v7;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MCDCuratedPlaylistsTableViewController;
  [(MCDContentItemTableViewController *)&v13 viewDidLoad];
  curator = [(MCDCuratedPlaylistsTableViewController *)self curator];
  shortName = [curator shortName];
  v5 = [shortName length];
  curator2 = [(MCDCuratedPlaylistsTableViewController *)self curator];
  v7 = curator2;
  if (v5)
  {
    [curator2 shortName];
  }

  else
  {
    [curator2 name];
  }
  v8 = ;
  [(MCDCuratedPlaylistsTableViewController *)self setTitle:v8];

  v9 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    title = [(MCDCuratedPlaylistsTableViewController *)self title];
    *buf = 138412290;
    v15 = title;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading content item view, title: %@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DB82C;
  v12[3] = &unk_101097CD0;
  v12[4] = self;
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableCellConfigurationBlock:v12];
}

- (id)_contentManager
{
  v3 = [MCDCuratedPlaylistsContentManager alloc];
  v4 = [MCDCuratedPlaylistsDataSource alloc];
  curator = [(MCDCuratedPlaylistsTableViewController *)self curator];
  v6 = [(MCDCuratedPlaylistsDataSource *)v4 initWithCurator:curator];
  playbackManager = [(MCDFuseTableViewController *)self playbackManager];
  traitCollection = [(MCDCuratedPlaylistsTableViewController *)self traitCollection];
  v9 = -[MCDFuseContentManager initWithDataSource:delegate:viewController:playbackManager:limitedUI:](v3, "initWithDataSource:delegate:viewController:playbackManager:limitedUI:", v6, self, self, playbackManager, [traitCollection shouldLimitMusicLists]);

  return v9;
}

@end