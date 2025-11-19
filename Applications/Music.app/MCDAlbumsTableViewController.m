@interface MCDAlbumsTableViewController
+ (id)albumsForGenre:(id)a3 showLocalContent:(BOOL)a4;
+ (id)albumsForPerson:(id)a3 showLocalContent:(BOOL)a4;
- (MCDAlbumsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)filteringPreferenceKey;
- (id)legacyFilteringPreferenceKey;
- (id)sectionIndexTitlesForContentManager:(id)a3;
- (id)shuffleContainerForContentManager:(id)a3;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)a3;
- (void)viewDidLoad;
@end

@implementation MCDAlbumsTableViewController

- (MCDAlbumsTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDAlbumsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];
  }

  return v8;
}

+ (id)albumsForPerson:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[MCDAlbumsDataSource alloc] initWithPerson:v5];
  v7 = [MCDAlbumsTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsViewControllerIdentifier showLocalContent:v4 dataSource:v6];
  v9 = [v5 name];

  [(MCDAlbumsTableViewController *)v8 setTitle:v9];
  [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];

  return v8;
}

+ (id)albumsForGenre:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[MCDAlbumsDataSource alloc] initWithGenre:v5];
  v7 = [MCDAlbumsTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsViewControllerIdentifier showLocalContent:v4 dataSource:v6];
  v9 = [v5 name];

  [(MCDAlbumsTableViewController *)v8 setTitle:v9];
  [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MCDAlbumsTableViewController;
  [(MCDLibraryTableViewController *)&v8 viewDidLoad];
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setShowShuffleAll:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v4 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v4 setTableCellConfigurationBlock:&v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)sortingPreferenceKey
{
  v2 = [(MCDLibraryTableViewController *)self dataSource];
  v3 = [v2 genre];

  if (v3)
  {
    v4 = @"genreAlbumsSortType";
  }

  else
  {
    v5 = [v2 person];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = @"composerAlbumsSortType";
    }

    else
    {
      v7 = [v2 person];
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();

      if (v8)
      {
        v4 = @"artistAlbumsSortType";
      }

      else
      {
        v4 = @"SortAlbums";
      }
    }
  }

  return v4;
}

- (id)filteringPreferenceKey
{
  v2 = [(MCDLibraryTableViewController *)self dataSource];
  v3 = [v2 genre];

  if (v3)
  {
    v4 = @"LibraryGenresFilterOption";
  }

  else
  {
    v5 = [v2 person];

    if (v5)
    {
      v4 = &stru_101107168;
    }

    else
    {
      v4 = @"LibraryAlbumsFilterOption";
    }
  }

  return v4;
}

- (id)legacyFilteringPreferenceKey
{
  v2 = [(MCDLibraryTableViewController *)self dataSource];
  v3 = [v2 genre];

  if (v3)
  {
    v4 = @"genres";
  }

  else
  {
    v5 = [v2 person];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = @"composers";
    }

    else
    {
      v7 = [v2 person];
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();

      if (v8)
      {
        v4 = @"artistDetail";
      }

      else
      {
        v4 = @"albums";
      }
    }
  }

  return v4;
}

- (id)textForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDAlbumsTableViewController *)self traitCollection];
  v5 = [v4 shouldLimitMusicLists];

  if (v5)
  {
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"RECENTLY_PLAYED_ALBUMS" value:&stru_101107168 table:@"MusicCarDisplayUI"];
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

- (id)sectionIndexTitlesForContentManager:(id)a3
{
  v4 = a3;
  v5 = [(MCDAlbumsTableViewController *)self traitCollection];
  v6 = [v5 shouldLimitMusicLists];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = [v4 lastReceivedResponse];
    v10 = [v9 results];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EDC38;
    v14[3] = &unk_101097CA8;
    v15 = v8;
    v11 = v8;
    [v10 enumerateSectionsUsingBlock:v14];

    if ([v11 count])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v7 = v12;
  }

  return v7;
}

- (id)shuffleContainerForContentManager:(id)a3
{
  v3 = [(MCDLibraryTableViewController *)self dataSource];
  v4 = [v3 scopedContainers];
  v5 = [v4 firstObject];

  return v5;
}

@end