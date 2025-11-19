@interface MCDPlaylistsViewController
+ (id)madeForYouViewControllerWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
+ (id)playlistsViewControllerForFolder:(id)a3 showLocalContent:(BOOL)a4;
- (MCDPlaylistsViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)filteringPreferenceKey;
- (id)legacyFilteringPreferenceKey;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDPlaylistsViewController

- (MCDPlaylistsViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(MCDLibraryTableViewController *)self initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDPlaylistsViewController *)v8 setPlayActivityFeatureName:@"playlists"];
  }

  return v8;
}

+ (id)madeForYouViewControllerWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MCDPlaylistsViewController alloc];
  v7 = objc_opt_new();
  v8 = [(MCDLibraryTableViewController *)v6 initWithIdentifier:v5 showLocalContent:v4 dataSource:v7];

  [(MCDPlaylistsViewController *)v8 setPlayActivityFeatureName:@"made_for_you"];

  return v8;
}

+ (id)playlistsViewControllerForFolder:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MCDPlaylistsViewController alloc];
  v7 = MCDPlaylistsViewControllerIdentifier;
  v8 = [[MCDPlaylistDataSource alloc] initWithPlaylist:v5];
  v9 = [(MCDLibraryTableViewController *)v6 initWithIdentifier:v7 showLocalContent:v4 dataSource:v8];

  [(MCDPlaylistsViewController *)v9 setPlayActivityFeatureName:@"playlists"];
  v10 = [v5 name];

  [(MCDPlaylistsViewController *)v9 setTitle:v10];

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

- (id)textForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDPlaylistsViewController *)self traitCollection];
  v5 = [v4 shouldLimitMusicLists];

  if (v5)
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
  v2 = [(MCDLibraryTableViewController *)self dataSource];
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
  v2 = [(MCDLibraryTableViewController *)self dataSource];
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
  v2 = [(MCDLibraryTableViewController *)self dataSource];
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