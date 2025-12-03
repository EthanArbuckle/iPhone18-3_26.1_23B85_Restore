@interface MCDLibraryTableViewController
- (BOOL)artistHasCatalogID:(id)d;
- (BOOL)canShowFavoriteContent;
- (BOOL)contentManager:(id)manager canDrillIntoItem:(id)item;
- (BOOL)hasRowsToDisplay;
- (MCDLibraryTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (MCDLibraryTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content dataSource:(id)source;
- (id)contentManager:(id)manager viewControllerForItem:(id)item;
- (id)favoriteNoContentMessage:(id)message;
- (id)showAllActionTitle:(id)title;
- (id)sortingPreference;
- (void)checkContentAndSetView;
- (void)contentManager:(id)manager didReceiveResponse:(id)response;
- (void)contentManager:(id)manager shouldDisplayViewController:(id)controller;
- (void)dealloc;
- (void)filterButtonTapped;
- (void)replacePlaceholderViewWithView:(id)view;
- (void)userDefaultsChanged:(id)changed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MCDLibraryTableViewController

- (MCDLibraryTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_alloc_init(_MCDLibraryDataSource);
  v8 = [(MCDLibraryTableViewController *)self initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  return v8;
}

- (MCDLibraryTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content dataSource:(id)source
{
  contentCopy = content;
  identifierCopy = identifier;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = MCDLibraryTableViewController;
  v11 = [(MCDTableViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_dataSource, source);
    v12->_showLocalContent = contentCopy;
    v13 = [MCDLibraryContentManager alloc];
    dataSource = v12->_dataSource;
    v15 = +[CPUILimitedUITrait defaultBoolValue];
    v16 = [(MCDPlaybackManager *)[MCDLibraryPlaybackManager alloc] initWithDelegate:v12];
    LOBYTE(v24) = 0;
    v17 = [(_MCDContentManager *)v13 initWithDataSource:dataSource limitedUI:v15 showLocalContent:contentCopy delegate:v12 viewController:v12 playbackManager:v16 shouldPerformRequestImmediately:v24];
    contentManager = v12->_contentManager;
    v12->_contentManager = &v17->super;

    sortingPreferenceKey = [(MCDLibraryTableViewController *)v12 sortingPreferenceKey];
    if (sortingPreferenceKey)
    {
    }

    else
    {
      filteringPreferenceKey = [(MCDLibraryTableViewController *)v12 filteringPreferenceKey];

      if (!filteringPreferenceKey)
      {
        [(_MCDContentManager *)v12->_contentManager performRequest];
        goto LABEL_6;
      }
    }

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v12 selector:"userDefaultsChanged:" name:NSUserDefaultsDidChangeNotification object:0];

    [(MCDLibraryTableViewController *)v12 userDefaultsChanged:0];
LABEL_6:
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v12 selector:"mediaLibraryChanged:" name:MPMediaLibraryDidChangeNotification object:0];

    v12->_canModifyView = 1;
  }

  return v12;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSUserDefaultsDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:MPMediaLibraryDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = MCDLibraryTableViewController;
  [(MCDLibraryTableViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v14 viewDidLoad];
  tableView = [(MCDLibraryTableViewController *)self tableView];
  [(MCDLibraryTableViewController *)self setContentTableView:tableView];

  tableView2 = [(MCDLibraryTableViewController *)self tableView];
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setTableView:tableView2];

  traitCollection = [(MCDLibraryTableViewController *)self traitCollection];
  shouldLimitMusicLists = [traitCollection shouldLimitMusicLists];
  contentManager2 = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager2 setLimitedUI:shouldLimitMusicLists];

  v15 = objc_opt_class();
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [(MCDLibraryTableViewController *)self registerForTraitChanges:v9 withHandler:&stru_101097F60];

  if ([objc_opt_class() wantsTallCells])
  {
    v11 = objc_opt_class();
    contentManager3 = [(MCDLibraryTableViewController *)self contentManager];
    [contentManager3 setTableCellClass:v11];
  }

  tableView3 = [(MCDLibraryTableViewController *)self tableView];
  [tableView3 _setHeaderAndFooterViewsFloat:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v24.receiver = self;
  v24.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v24 viewWillAppear:appear];
  if ([(MCDLibraryTableViewController *)self canShowFavoriteContent])
  {
    navigationTitleView = [(MCDLibraryTableViewController *)self navigationTitleView];

    if (!navigationTitleView)
    {
      v5 = [_TtC5Music31LibraryTableNavigationTitleView alloc];
      title = [(MCDLibraryTableViewController *)self title];
      v7 = [(LibraryTableNavigationTitleView *)v5 initWithTitle:title];
      [(MCDLibraryTableViewController *)self setNavigationTitleView:v7];

      contentManager = [(MCDLibraryTableViewController *)self contentManager];
      showFavoriteContent = [contentManager showFavoriteContent];
      navigationTitleView2 = [(MCDLibraryTableViewController *)self navigationTitleView];
      filterButton = [navigationTitleView2 filterButton];
      [filterButton setSelected:showFavoriteContent];

      objc_initWeak(&location, self);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000E1DC4;
      v21 = &unk_101097F88;
      objc_copyWeak(&v22, &location);
      v12 = [UIAction actionWithHandler:&v18];
      v13 = [(MCDLibraryTableViewController *)self navigationTitleView:v18];
      filterButton2 = [v13 filterButton];
      [filterButton2 addAction:v12 forControlEvents:64];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    navigationTitleView3 = [(MCDLibraryTableViewController *)self navigationTitleView];
    navigationItem = [(MCDLibraryTableViewController *)self navigationItem];
    [navigationItem setTitleView:navigationTitleView3];
  }

  else
  {
    navigationTitleView3 = [(MCDLibraryTableViewController *)self navigationItem];
    [navigationTitleView3 setTitleView:0];
  }

  tableView = [(MCDLibraryTableViewController *)self tableView];
  [tableView reloadData];

  [(MCDLibraryTableViewController *)self checkContentAndSetView];
  self->_canModifyView = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v4 viewDidAppear:appear];
  self->_canModifyView = 1;
  [(MCDLibraryTableViewController *)self checkContentAndSetView];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v5 viewWillDisappear:disappear];
  navigationItem = [(MCDLibraryTableViewController *)self navigationItem];
  [navigationItem setTitleView:0];
}

- (void)userDefaultsChanged:(id)changed
{
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  lastReceivedResponse = [contentManager lastReceivedResponse];
  v6 = lastReceivedResponse == 0;

  contentManager2 = [(MCDLibraryTableViewController *)self contentManager];
  sortingPreference = [contentManager2 sortingPreference];

  sortingPreference2 = [(MCDLibraryTableViewController *)self sortingPreference];
  if (sortingPreference != sortingPreference2)
  {
    sortingPreference3 = [(MCDLibraryTableViewController *)self sortingPreference];
    v10 = [sortingPreference isEqualToString:sortingPreference3];

    if (v10)
    {
      goto LABEL_5;
    }

    sortingPreference2 = [(MCDLibraryTableViewController *)self sortingPreference];
    contentManager3 = [(MCDLibraryTableViewController *)self contentManager];
    [contentManager3 setSortingPreference:sortingPreference2];

    v6 = 1;
  }

LABEL_5:
  filteringPreferenceKey = [(MCDLibraryTableViewController *)self filteringPreferenceKey];
  legacyFilteringPreferenceKey = [(MCDLibraryTableViewController *)self legacyFilteringPreferenceKey];
  v14 = [NSString stringWithFormat:@"LibraryFilterOptionsController-%@", legacyFilteringPreferenceKey];
  v15 = [_TtC5Music30LibraryFilterOptionsController isFilteringToFavoritesWithStorageKey:filteringPreferenceKey legacyStorageKey:v14];

  contentManager4 = [(MCDLibraryTableViewController *)self contentManager];
  LODWORD(v14) = [contentManager4 showFavoriteContent];

  if (v15 == v14)
  {
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    navigationTitleView = [(MCDLibraryTableViewController *)self navigationTitleView];
    filterButton = [navigationTitleView filterButton];
    [filterButton setSelected:v15];

    contentManager5 = [(MCDLibraryTableViewController *)self contentManager];
    [contentManager5 setShowFavoriteContent:v15];

    contentManager6 = [(MCDLibraryTableViewController *)self contentManager];
    playbackManager = [contentManager6 playbackManager];
    [playbackManager setFavoriteContentOnly:v15];

    contentManager7 = [(MCDLibraryTableViewController *)self contentManager];
    [contentManager7 setLastReceivedResponse:0];

    [(MCDLibraryTableViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  contentManager8 = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager8 performRequest];

LABEL_9:
}

- (id)sortingPreference
{
  v3 = +[NSUserDefaults standardUserDefaults];
  sortingPreferenceKey = [(MCDLibraryTableViewController *)self sortingPreferenceKey];
  v5 = [v3 stringForKey:sortingPreferenceKey];

  return v5;
}

- (BOOL)canShowFavoriteContent
{
  if ([(NSString *)self->_identifier isEqualToString:MCDAlbumsViewControllerIdentifier])
  {
    dataSource = [(MCDLibraryTableViewController *)self dataSource];
    person = [dataSource person];
    v5 = person == 0;

    return v5;
  }

  if ([(NSString *)self->_identifier isEqualToString:MCDPlaylistsViewControllerIdentifier]|| [(NSString *)self->_identifier isEqualToString:MCDArtistsViewControllerIdentifier]|| [(NSString *)self->_identifier isEqualToString:MCDCompilationsViewControllerIdentifier]|| [(NSString *)self->_identifier isEqualToString:MCDSongsViewControllerIdentifier])
  {
    return 1;
  }

  identifier = self->_identifier;
  v8 = MCDMadeForYouViewControllerIdentifier;

  return [(NSString *)identifier isEqualToString:v8];
}

- (void)filterButtonTapped
{
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  showFavoriteContent = [contentManager showFavoriteContent];

  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = [UIImage systemImageNamed:@"checkmark"];
  v7 = [(MCDLibraryTableViewController *)self showAllActionTitle:self->_identifier];
  objc_initWeak(&location, self);
  if (showFavoriteContent)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E25B8;
  v20[3] = &unk_101097FB0;
  v20[4] = self;
  objc_copyWeak(&v21, &location);
  v9 = [UIAlertAction actionWithTitle:v7 image:v8 handler:v20];
  [v5 addAction:v9];
  v17 = v7;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Favorites" value:&stru_101107168 table:0];
  if (showFavoriteContent)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E2664;
  v18[3] = &unk_101097FB0;
  v18[4] = self;
  objc_copyWeak(&v19, &location);
  v13 = [UIAlertAction actionWithTitle:v11 image:v12 handler:v18];

  [v5 addAction:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Cancel" value:&stru_101107168 table:0];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
  [v5 addAction:v16];

  [(MCDLibraryTableViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (id)showAllActionTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy isEqualToString:MCDPlaylistsViewControllerIdentifier])
  {
    v4 = @"All Playlists";
LABEL_13:
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_101107168 table:0];

    goto LABEL_14;
  }

  if ([titleCopy isEqualToString:MCDArtistsViewControllerIdentifier])
  {
    v4 = @"All Artists";
    goto LABEL_13;
  }

  if ([titleCopy isEqualToString:MCDAlbumsViewControllerIdentifier])
  {
    v4 = @"All Albums";
    goto LABEL_13;
  }

  if ([titleCopy isEqualToString:MCDCompilationsViewControllerIdentifier])
  {
    v4 = @"All Compilations";
    goto LABEL_13;
  }

  if ([titleCopy isEqualToString:MCDSongsViewControllerIdentifier])
  {
    v4 = @"All Songs";
    goto LABEL_13;
  }

  if ([titleCopy isEqualToString:MCDMadeForYouViewControllerIdentifier])
  {
    v4 = @"All";
    goto LABEL_13;
  }

  v6 = &stru_101107168;
LABEL_14:

  return v6;
}

- (id)favoriteNoContentMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy isEqualToString:MCDPlaylistsViewControllerIdentifier] & 1) != 0 || (objc_msgSend(messageCopy, "isEqualToString:", MCDMadeForYouViewControllerIdentifier))
  {
    v4 = @"Playlists you favorite will appear here.";
LABEL_4:
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_101107168 table:0];

    goto LABEL_5;
  }

  if ([messageCopy isEqualToString:MCDArtistsViewControllerIdentifier])
  {
    v4 = @"Artists you favorite will appear here.";
    goto LABEL_4;
  }

  if ([messageCopy isEqualToString:MCDAlbumsViewControllerIdentifier] & 1) != 0 || (objc_msgSend(messageCopy, "isEqualToString:", MCDCompilationsViewControllerIdentifier))
  {
    v4 = @"Albums you favorite will appear here.";
    goto LABEL_4;
  }

  if ([messageCopy isEqualToString:MCDSongsViewControllerIdentifier])
  {
    v4 = @"Songs you favorite will appear here.";
    goto LABEL_4;
  }

  v6 = &stru_101107168;
LABEL_5:

  return v6;
}

- (BOOL)hasRowsToDisplay
{
  if (self->_isShowingButton)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MCDLibraryTableViewController;
  return [(MCDTableViewController *)&v5 hasRowsToDisplay];
}

- (void)contentManager:(id)manager didReceiveResponse:(id)response
{
  managerCopy = manager;
  responseCopy = response;
  v8 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    results = [responseCopy results];
    totalItemCount = [results totalItemCount];
    contentManager = [(MCDLibraryTableViewController *)self contentManager];
    showFavoriteContent = [contentManager showFavoriteContent];
    request = [responseCopy request];
    v15 = 138413570;
    selfCopy = self;
    v17 = 2112;
    v18 = responseCopy;
    v19 = 2112;
    v20 = managerCopy;
    v21 = 2048;
    v22 = totalItemCount;
    v23 = 1024;
    v24 = showFavoriteContent;
    v25 = 2112;
    v26 = request;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Received response %@ from %@: itemCount=%ld, showFavoriteContent=%d, request=%@", &v15, 0x3Au);
  }

  tableView = [(MCDLibraryTableViewController *)self tableView];
  [tableView reloadData];

  [(MCDLibraryTableViewController *)self checkContentAndSetView];
}

- (id)contentManager:(id)manager viewControllerForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MCDAlbumsTableViewController albumsForGenre:itemCopy showLocalContent:[(MCDLibraryTableViewController *)self showLocalContent]];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy orphanMusicVideo], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v6 = [[_TtC5Music27MCDItemDetailViewController alloc] initWithAlbum:itemCopy onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = itemCopy;
          if ([v8 type] == 3)
          {
            v9 = [MCDPlaylistsViewController playlistsViewControllerForFolder:v8 showLocalContent:[(MCDLibraryTableViewController *)self showLocalContent]];
          }

          else
          {
            v9 = [[_TtC5Music27MCDItemDetailViewController alloc] initWithPlaylist:v8 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
          }

          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_13;
      }

      v6 = [MCDAlbumsTableViewController albumsForPerson:itemCopy showLocalContent:[(MCDLibraryTableViewController *)self showLocalContent]];
    }
  }

  v10 = v6;
LABEL_13:

  return v10;
}

- (BOOL)contentManager:(id)manager canDrillIntoItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy orphanMusicVideo], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (void)contentManager:(id)manager shouldDisplayViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setPlayActivityFeatureNameSourceViewController:self];
  navigationController = [(MCDLibraryTableViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)checkContentAndSetView
{
  self->_isShowingButton = 0;
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  lastReceivedResponse = [contentManager lastReceivedResponse];
  if ([lastReceivedResponse isEmpty])
  {
    contentManager2 = [(MCDLibraryTableViewController *)self contentManager];
    showFavoriteContent = [contentManager2 showFavoriteContent];

    if (showFavoriteContent)
    {
      v29 = [(MCDLibraryTableViewController *)self favoriteNoContentMessage:self->_identifier];
      v7 = [_TtC5Music22CarPlayInformationView noContentWithTitle:0 subtitle:v29 buttonText:0 buttonAction:0 isCentered:0];
      [(MCDLibraryTableViewController *)self replacePlaceholderViewWithView:v7];

      return;
    }
  }

  else
  {
  }

  contentManager3 = [(MCDLibraryTableViewController *)self contentManager];
  lastReceivedResponse2 = [contentManager3 lastReceivedResponse];
  isEmpty = [lastReceivedResponse2 isEmpty];

  if (isEmpty)
  {
    if ([(MCDLibraryTableViewController *)self showLocalContent])
    {
      v11 = +[NSString downloadedOnlyMessage];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        person = [(MCDContentManagerDataSource *)self->_dataSource person];

        if (person)
        {
          person2 = [(MCDContentManagerDataSource *)self->_dataSource person];
          v14 = [(MCDLibraryTableViewController *)self artistHasCatalogID:person2];
          v15 = +[NSBundle mainBundle];
          v16 = v15;
          if (v14)
          {
            v17 = [v15 localizedStringForKey:@"Add music by %@ to save it here value:or start a station to hear similar music." table:{&stru_101107168, 0}];
            title = [(MCDLibraryTableViewController *)self title];
            v11 = [NSString stringWithFormat:v17, title];

            v19 = +[NSBundle mainBundle];
            v20 = [v19 localizedStringForKey:@"Start Station" value:&stru_101107168 table:0];

            self->_isShowingButton = 1;
          }

          else
          {
            v27 = [v15 localizedStringForKey:@"Add music by %@ to save it here." value:&stru_101107168 table:0];
            title2 = [(MCDLibraryTableViewController *)self title];
            v11 = [NSString stringWithFormat:v27, title2];

            v20 = 0;
          }

          goto LABEL_22;
        }
      }

      v21 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
      subscriptionCapabilities = [v21 subscriptionCapabilities];

      v23 = +[NSBundle mainBundle];
      v24 = v23;
      if (subscriptionCapabilities)
      {
        v25 = @"Music added from Apple Music, from your computer, or purchased in iTunes will appear here.";
      }

      else
      {
        v25 = @"Music purchased in iTunes or added from your computer will appear here.";
      }

      v11 = [v23 localizedStringForKey:v25 value:&stru_101107168 table:0];
    }

    v20 = 0;
LABEL_22:
    objc_initWeak(&location, self);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E3314;
    v30[3] = &unk_101097FD8;
    objc_copyWeak(&v31, &location);
    v30[4] = self;
    v26 = [_TtC5Music22CarPlayInformationView noContentWithTitle:0 subtitle:v11 buttonText:v20 buttonAction:v30 isCentered:0];
    [(MCDLibraryTableViewController *)self replacePlaceholderViewWithView:v26];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);

    return;
  }

  [(MCDLibraryTableViewController *)self replacePlaceholderViewWithView:0];
}

- (void)replacePlaceholderViewWithView:(id)view
{
  viewCopy = view;
  if (self->_canModifyView)
  {
    v27 = viewCopy;
    [(MCDLibraryTableViewController *)self setPlaceholderView:viewCopy];
    placeholderView = [(MCDLibraryTableViewController *)self placeholderView];

    if (placeholderView)
    {
      tableView = [(MCDLibraryTableViewController *)self tableView];
      [tableView frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      tableView2 = [(MCDLibraryTableViewController *)self tableView];
      [tableView2 safeAreaInsets];
      v17 = v8 + v16;
      v19 = v10 + v18;
      v21 = v12 - (v16 + v20);
      v23 = v14 - (v18 + v22);

      placeholderView2 = [(MCDLibraryTableViewController *)self placeholderView];
      [placeholderView2 setFrame:{v17, v19, v21, v23}];

      placeholderView3 = [(MCDLibraryTableViewController *)self placeholderView];
      [(MCDLibraryTableViewController *)self setView:placeholderView3];
    }

    else
    {
      contentTableView = [(MCDLibraryTableViewController *)self contentTableView];
      [(MCDLibraryTableViewController *)self setView:contentTableView];

      placeholderView3 = [(MCDLibraryTableViewController *)self contentTableView];
      [placeholderView3 reloadData];
    }

    viewCopy = v27;
  }
}

- (BOOL)artistHasCatalogID:(id)d
{
  identifiers = [d identifiers];
  universalStore = [identifiers universalStore];

  if (universalStore)
  {
    v9[1] = [universalStore purchasedAdamID];
    adamID = [universalStore adamID];
    v6 = 0;
    v9[2] = adamID;
    while (!v9[v6])
    {
      if (++v6 == 3)
      {
        goto LABEL_5;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

@end