@interface MCDPlaylistTracksTableViewController
- (MCDPlaylistTracksTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (MCDPlaylistTracksTableViewController)initWithPlaylist:(id)a3 showLocalContent:(BOOL)a4;
- (id)shuffleContainerForContentManager:(id)a3;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDPlaylistTracksTableViewController

- (MCDPlaylistTracksTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDPlaylistTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDPlaylistTracksTableViewController *)v8 setPlayActivityFeatureName:@"playlist_detail"];
  }

  return v8;
}

- (MCDPlaylistTracksTableViewController)initWithPlaylist:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[MCDPlaylistTracksDataSource alloc] initWithPlaylist:v6];
  v11.receiver = self;
  v11.super_class = MCDPlaylistTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v11 initWithIdentifier:MCDPlaylistTracksViewControllerIdentifier showLocalContent:v4 dataSource:v7];
  if (v8)
  {
    v9 = [v6 name];
    [(MCDPlaylistTracksTableViewController *)v8 setTitle:v9];

    [(MCDPlaylistTracksTableViewController *)v8 setPlayActivityFeatureName:@"playlist_detail"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MCDPlaylistTracksTableViewController;
  [(MCDLibraryTableViewController *)&v9 viewDidLoad];
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setShowShuffleAll:1];

  v4 = [(MCDLibraryTableViewController *)self contentManager];
  [v4 setShowSiriCellInLimitedUI:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v5 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v5 setTableCellConfigurationBlock:&v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)shuffleContainerForContentManager:(id)a3
{
  v3 = [(MCDLibraryTableViewController *)self dataSource];
  v4 = [v3 containerObject];

  return v4;
}

- (id)sortingPreferenceKey
{
  v2 = [(MCDLibraryTableViewController *)self dataSource];
  v3 = [v2 containerObject];

  v4 = [v3 sortStorageKeyDomain];
  if ([v4 length])
  {
    v5 = [@"playlistDetailSortType-" stringByAppendingString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  if ([(MCDLibraryTableViewController *)self showLocalContent])
  {
    v3 = +[NSString downloadedOnlyMessage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end