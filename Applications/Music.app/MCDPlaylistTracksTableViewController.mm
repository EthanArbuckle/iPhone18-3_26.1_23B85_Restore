@interface MCDPlaylistTracksTableViewController
- (MCDPlaylistTracksTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (MCDPlaylistTracksTableViewController)initWithPlaylist:(id)playlist showLocalContent:(BOOL)content;
- (id)shuffleContainerForContentManager:(id)manager;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDPlaylistTracksTableViewController

- (MCDPlaylistTracksTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDPlaylistTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDPlaylistTracksTableViewController *)v8 setPlayActivityFeatureName:@"playlist_detail"];
  }

  return v8;
}

- (MCDPlaylistTracksTableViewController)initWithPlaylist:(id)playlist showLocalContent:(BOOL)content
{
  contentCopy = content;
  playlistCopy = playlist;
  v7 = [[MCDPlaylistTracksDataSource alloc] initWithPlaylist:playlistCopy];
  v11.receiver = self;
  v11.super_class = MCDPlaylistTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v11 initWithIdentifier:MCDPlaylistTracksViewControllerIdentifier showLocalContent:contentCopy dataSource:v7];
  if (v8)
  {
    name = [playlistCopy name];
    [(MCDPlaylistTracksTableViewController *)v8 setTitle:name];

    [(MCDPlaylistTracksTableViewController *)v8 setPlayActivityFeatureName:@"playlist_detail"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MCDPlaylistTracksTableViewController;
  [(MCDLibraryTableViewController *)&v9 viewDidLoad];
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setShowShuffleAll:1];

  contentManager2 = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager2 setShowSiriCellInLimitedUI:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v5 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v5 setTableCellConfigurationBlock:&v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)shuffleContainerForContentManager:(id)manager
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  containerObject = [dataSource containerObject];

  return containerObject;
}

- (id)sortingPreferenceKey
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  containerObject = [dataSource containerObject];

  sortStorageKeyDomain = [containerObject sortStorageKeyDomain];
  if ([sortStorageKeyDomain length])
  {
    v5 = [@"playlistDetailSortType-" stringByAppendingString:sortStorageKeyDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)textForHeaderViewInContentManager:(id)manager
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