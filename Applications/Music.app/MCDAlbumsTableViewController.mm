@interface MCDAlbumsTableViewController
+ (id)albumsForGenre:(id)genre showLocalContent:(BOOL)content;
+ (id)albumsForPerson:(id)person showLocalContent:(BOOL)content;
- (MCDAlbumsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)filteringPreferenceKey;
- (id)legacyFilteringPreferenceKey;
- (id)sectionIndexTitlesForContentManager:(id)manager;
- (id)shuffleContainerForContentManager:(id)manager;
- (id)sortingPreferenceKey;
- (id)textForHeaderViewInContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDAlbumsTableViewController

- (MCDAlbumsTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDAlbumsTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];
  }

  return v8;
}

+ (id)albumsForPerson:(id)person showLocalContent:(BOOL)content
{
  contentCopy = content;
  personCopy = person;
  v6 = [[MCDAlbumsDataSource alloc] initWithPerson:personCopy];
  v7 = [MCDAlbumsTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsViewControllerIdentifier showLocalContent:contentCopy dataSource:v6];
  name = [personCopy name];

  [(MCDAlbumsTableViewController *)v8 setTitle:name];
  [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];

  return v8;
}

+ (id)albumsForGenre:(id)genre showLocalContent:(BOOL)content
{
  contentCopy = content;
  genreCopy = genre;
  v6 = [[MCDAlbumsDataSource alloc] initWithGenre:genreCopy];
  v7 = [MCDAlbumsTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsViewControllerIdentifier showLocalContent:contentCopy dataSource:v6];
  name = [genreCopy name];

  [(MCDAlbumsTableViewController *)v8 setTitle:name];
  [(MCDAlbumsTableViewController *)v8 setPlayActivityFeatureName:@"albums"];

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MCDAlbumsTableViewController;
  [(MCDLibraryTableViewController *)&v8 viewDidLoad];
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setShowShuffleAll:1];

  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v4 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v4 setTableCellConfigurationBlock:&v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)sortingPreferenceKey
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  genre = [dataSource genre];

  if (genre)
  {
    v4 = @"genreAlbumsSortType";
  }

  else
  {
    person = [dataSource person];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = @"composerAlbumsSortType";
    }

    else
    {
      person2 = [dataSource person];
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
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  genre = [dataSource genre];

  if (genre)
  {
    v4 = @"LibraryGenresFilterOption";
  }

  else
  {
    person = [dataSource person];

    if (person)
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
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  genre = [dataSource genre];

  if (genre)
  {
    v4 = @"genres";
  }

  else
  {
    person = [dataSource person];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = @"composers";
    }

    else
    {
      person2 = [dataSource person];
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

- (id)textForHeaderViewInContentManager:(id)manager
{
  traitCollection = [(MCDAlbumsTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
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

- (id)sectionIndexTitlesForContentManager:(id)manager
{
  managerCopy = manager;
  traitCollection = [(MCDAlbumsTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];

  if (shouldLimitMusicLists)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSMutableArray array];
    lastReceivedResponse = [managerCopy lastReceivedResponse];
    results = [lastReceivedResponse results];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EDC38;
    v14[3] = &unk_101097CA8;
    v15 = v8;
    v11 = v8;
    [results enumerateSectionsUsingBlock:v14];

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

- (id)shuffleContainerForContentManager:(id)manager
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  scopedContainers = [dataSource scopedContainers];
  firstObject = [scopedContainers firstObject];

  return firstObject;
}

@end