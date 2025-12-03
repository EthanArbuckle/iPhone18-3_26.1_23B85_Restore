@interface MCDPlaylistsViewController
+ (id)madeForYouViewControllerWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
+ (id)playlistsViewControllerForFolder:(id)folder showLocalContent:(BOOL)content;
- (MCDPlaylistsViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)filteringPreferenceKey;
- (id)legacyFilteringPreferenceKey;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDPlaylistsViewController

- (MCDPlaylistsViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v8 = [(MCDLibraryTableViewController *)self initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDPlaylistsViewController *)v8 setPlayActivityFeatureName:@"playlists"];
  }

  return v8;
}

+ (id)madeForYouViewControllerWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v6 = [MCDPlaylistsViewController alloc];
  v7 = objc_opt_new();
  v8 = [(MCDLibraryTableViewController *)v6 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  [(MCDPlaylistsViewController *)v8 setPlayActivityFeatureName:@"made_for_you"];

  return v8;
}

+ (id)playlistsViewControllerForFolder:(id)folder showLocalContent:(BOOL)content
{
  contentCopy = content;
  folderCopy = folder;
  v6 = [MCDPlaylistsViewController alloc];
  v7 = MCDPlaylistsViewControllerIdentifier;
  v8 = [[MCDPlaylistDataSource alloc] initWithPlaylist:folderCopy];
  v9 = [(MCDLibraryTableViewController *)v6 initWithIdentifier:v7 showLocalContent:contentCopy dataSource:v8];

  [(MCDPlaylistsViewController *)v9 setPlayActivityFeatureName:@"playlists"];
  name = [folderCopy name];

  [(MCDPlaylistsViewController *)v9 setTitle:name];

  return v9;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCDPlaylistsViewController;
  [(MCDLibraryTableViewController *)&v7 viewDidLoad];
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v3 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v3 setTableCellConfigurationBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)textForHeaderViewInContentManager:(id)manager
{
  traitCollection = [(MCDPlaylistsViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
  {
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"RECENTLY_PLAYED_PLAYLISTS" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  else if ([(MCDLibraryTableViewController *)self showLocalContent])
  {
    v7 = +[NSString downloadedOnlyMessage];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sortingPreferenceKey
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"personalizedMixPlaylistsSortType";
  }

  else
  {
    return @"playlistsSortType";
  }
}

- (id)filteringPreferenceKey
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"LibraryMadeForYouFilterOption";
  }

  else
  {
    return @"LibraryPlaylistsFilterOption";
  }
}

- (id)legacyFilteringPreferenceKey
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"madeForYou";
  }

  else
  {
    return @"playlists";
  }
}

@end