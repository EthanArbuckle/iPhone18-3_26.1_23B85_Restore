@interface MCDCuratedPlaylistsTableViewController
- (MCDCuratedPlaylistsTableViewController)initWithCurator:(id)a3;
- (id)_contentManager;
- (void)viewDidLoad;
@end

@implementation MCDCuratedPlaylistsTableViewController

- (MCDCuratedPlaylistsTableViewController)initWithCurator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCDCuratedPlaylistsTableViewController;
  v6 = [(MCDFuseTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_curator, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MCDCuratedPlaylistsTableViewController;
  [(MCDContentItemTableViewController *)&v13 viewDidLoad];
  v3 = [(MCDCuratedPlaylistsTableViewController *)self curator];
  v4 = [v3 shortName];
  v5 = [v4 length];
  v6 = [(MCDCuratedPlaylistsTableViewController *)self curator];
  v7 = v6;
  if (v5)
  {
    [v6 shortName];
  }

  else
  {
    [v6 name];
  }
  v8 = ;
  [(MCDCuratedPlaylistsTableViewController *)self setTitle:v8];

  v9 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MCDCuratedPlaylistsTableViewController *)self title];
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading content item view, title: %@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DB82C;
  v12[3] = &unk_101097CD0;
  v12[4] = self;
  v11 = [(MCDFuseTableViewController *)self contentManager];
  [v11 setTableCellConfigurationBlock:v12];
}

- (id)_contentManager
{
  v3 = [MCDCuratedPlaylistsContentManager alloc];
  v4 = [MCDCuratedPlaylistsDataSource alloc];
  v5 = [(MCDCuratedPlaylistsTableViewController *)self curator];
  v6 = [(MCDCuratedPlaylistsDataSource *)v4 initWithCurator:v5];
  v7 = [(MCDFuseTableViewController *)self playbackManager];
  v8 = [(MCDCuratedPlaylistsTableViewController *)self traitCollection];
  v9 = -[MCDFuseContentManager initWithDataSource:delegate:viewController:playbackManager:limitedUI:](v3, "initWithDataSource:delegate:viewController:playbackManager:limitedUI:", v6, self, self, v7, [v8 shouldLimitMusicLists]);

  return v9;
}

@end