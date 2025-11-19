@interface MCDLibraryTableViewController
- (BOOL)artistHasCatalogID:(id)a3;
- (BOOL)canShowFavoriteContent;
- (BOOL)contentManager:(id)a3 canDrillIntoItem:(id)a4;
- (BOOL)hasRowsToDisplay;
- (MCDLibraryTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (MCDLibraryTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4 dataSource:(id)a5;
- (id)contentManager:(id)a3 viewControllerForItem:(id)a4;
- (id)favoriteNoContentMessage:(id)a3;
- (id)showAllActionTitle:(id)a3;
- (id)sortingPreference;
- (void)checkContentAndSetView;
- (void)contentManager:(id)a3 didReceiveResponse:(id)a4;
- (void)contentManager:(id)a3 shouldDisplayViewController:(id)a4;
- (void)dealloc;
- (void)filterButtonTapped;
- (void)replacePlaceholderViewWithView:(id)a3;
- (void)userDefaultsChanged:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MCDLibraryTableViewController

- (MCDLibraryTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_MCDLibraryDataSource);
  v8 = [(MCDLibraryTableViewController *)self initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  return v8;
}

- (MCDLibraryTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4 dataSource:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = MCDLibraryTableViewController;
  v11 = [(MCDTableViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_dataSource, a5);
    v12->_showLocalContent = v6;
    v13 = [MCDLibraryContentManager alloc];
    dataSource = v12->_dataSource;
    v15 = +[CPUILimitedUITrait defaultBoolValue];
    v16 = [(MCDPlaybackManager *)[MCDLibraryPlaybackManager alloc] initWithDelegate:v12];
    LOBYTE(v24) = 0;
    v17 = [(_MCDContentManager *)v13 initWithDataSource:dataSource limitedUI:v15 showLocalContent:v6 delegate:v12 viewController:v12 playbackManager:v16 shouldPerformRequestImmediately:v24];
    contentManager = v12->_contentManager;
    v12->_contentManager = &v17->super;

    v19 = [(MCDLibraryTableViewController *)v12 sortingPreferenceKey];
    if (v19)
    {
    }

    else
    {
      v20 = [(MCDLibraryTableViewController *)v12 filteringPreferenceKey];

      if (!v20)
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
  v3 = [(MCDLibraryTableViewController *)self tableView];
  [(MCDLibraryTableViewController *)self setContentTableView:v3];

  v4 = [(MCDLibraryTableViewController *)self tableView];
  v5 = [(MCDLibraryTableViewController *)self contentManager];
  [v5 setTableView:v4];

  v6 = [(MCDLibraryTableViewController *)self traitCollection];
  v7 = [v6 shouldLimitMusicLists];
  v8 = [(MCDLibraryTableViewController *)self contentManager];
  [v8 setLimitedUI:v7];

  v15 = objc_opt_class();
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [(MCDLibraryTableViewController *)self registerForTraitChanges:v9 withHandler:&stru_101097F60];

  if ([objc_opt_class() wantsTallCells])
  {
    v11 = objc_opt_class();
    v12 = [(MCDLibraryTableViewController *)self contentManager];
    [v12 setTableCellClass:v11];
  }

  v13 = [(MCDLibraryTableViewController *)self tableView];
  [v13 _setHeaderAndFooterViewsFloat:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v24 viewWillAppear:a3];
  if ([(MCDLibraryTableViewController *)self canShowFavoriteContent])
  {
    v4 = [(MCDLibraryTableViewController *)self navigationTitleView];

    if (!v4)
    {
      v5 = [_TtC5Music31LibraryTableNavigationTitleView alloc];
      v6 = [(MCDLibraryTableViewController *)self title];
      v7 = [(LibraryTableNavigationTitleView *)v5 initWithTitle:v6];
      [(MCDLibraryTableViewController *)self setNavigationTitleView:v7];

      v8 = [(MCDLibraryTableViewController *)self contentManager];
      v9 = [v8 showFavoriteContent];
      v10 = [(MCDLibraryTableViewController *)self navigationTitleView];
      v11 = [v10 filterButton];
      [v11 setSelected:v9];

      objc_initWeak(&location, self);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000E1DC4;
      v21 = &unk_101097F88;
      objc_copyWeak(&v22, &location);
      v12 = [UIAction actionWithHandler:&v18];
      v13 = [(MCDLibraryTableViewController *)self navigationTitleView:v18];
      v14 = [v13 filterButton];
      [v14 addAction:v12 forControlEvents:64];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v15 = [(MCDLibraryTableViewController *)self navigationTitleView];
    v16 = [(MCDLibraryTableViewController *)self navigationItem];
    [v16 setTitleView:v15];
  }

  else
  {
    v15 = [(MCDLibraryTableViewController *)self navigationItem];
    [v15 setTitleView:0];
  }

  v17 = [(MCDLibraryTableViewController *)self tableView];
  [v17 reloadData];

  [(MCDLibraryTableViewController *)self checkContentAndSetView];
  self->_canModifyView = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v4 viewDidAppear:a3];
  self->_canModifyView = 1;
  [(MCDLibraryTableViewController *)self checkContentAndSetView];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MCDLibraryTableViewController;
  [(MCDTableViewController *)&v5 viewWillDisappear:a3];
  v4 = [(MCDLibraryTableViewController *)self navigationItem];
  [v4 setTitleView:0];
}

- (void)userDefaultsChanged:(id)a3
{
  v4 = [(MCDLibraryTableViewController *)self contentManager];
  v5 = [v4 lastReceivedResponse];
  v6 = v5 == 0;

  v7 = [(MCDLibraryTableViewController *)self contentManager];
  v24 = [v7 sortingPreference];

  v8 = [(MCDLibraryTableViewController *)self sortingPreference];
  if (v24 != v8)
  {
    v9 = [(MCDLibraryTableViewController *)self sortingPreference];
    v10 = [v24 isEqualToString:v9];

    if (v10)
    {
      goto LABEL_5;
    }

    v8 = [(MCDLibraryTableViewController *)self sortingPreference];
    v11 = [(MCDLibraryTableViewController *)self contentManager];
    [v11 setSortingPreference:v8];

    v6 = 1;
  }

LABEL_5:
  v12 = [(MCDLibraryTableViewController *)self filteringPreferenceKey];
  v13 = [(MCDLibraryTableViewController *)self legacyFilteringPreferenceKey];
  v14 = [NSString stringWithFormat:@"LibraryFilterOptionsController-%@", v13];
  v15 = [_TtC5Music30LibraryFilterOptionsController isFilteringToFavoritesWithStorageKey:v12 legacyStorageKey:v14];

  v16 = [(MCDLibraryTableViewController *)self contentManager];
  LODWORD(v14) = [v16 showFavoriteContent];

  if (v15 == v14)
  {
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = [(MCDLibraryTableViewController *)self navigationTitleView];
    v18 = [v17 filterButton];
    [v18 setSelected:v15];

    v19 = [(MCDLibraryTableViewController *)self contentManager];
    [v19 setShowFavoriteContent:v15];

    v20 = [(MCDLibraryTableViewController *)self contentManager];
    v21 = [v20 playbackManager];
    [v21 setFavoriteContentOnly:v15];

    v22 = [(MCDLibraryTableViewController *)self contentManager];
    [v22 setLastReceivedResponse:0];

    [(MCDLibraryTableViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v23 = [(MCDLibraryTableViewController *)self contentManager];
  [v23 performRequest];

LABEL_9:
}

- (id)sortingPreference
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(MCDLibraryTableViewController *)self sortingPreferenceKey];
  v5 = [v3 stringForKey:v4];

  return v5;
}

- (BOOL)canShowFavoriteContent
{
  if ([(NSString *)self->_identifier isEqualToString:MCDAlbumsViewControllerIdentifier])
  {
    v3 = [(MCDLibraryTableViewController *)self dataSource];
    v4 = [v3 person];
    v5 = v4 == 0;

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
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  v4 = [v3 showFavoriteContent];

  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = [UIImage systemImageNamed:@"checkmark"];
  v7 = [(MCDLibraryTableViewController *)self showAllActionTitle:self->_identifier];
  objc_initWeak(&location, self);
  if (v4)
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
  if (v4)
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

- (id)showAllActionTitle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:MCDPlaylistsViewControllerIdentifier])
  {
    v4 = @"All Playlists";
LABEL_13:
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_101107168 table:0];

    goto LABEL_14;
  }

  if ([v3 isEqualToString:MCDArtistsViewControllerIdentifier])
  {
    v4 = @"All Artists";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:MCDAlbumsViewControllerIdentifier])
  {
    v4 = @"All Albums";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:MCDCompilationsViewControllerIdentifier])
  {
    v4 = @"All Compilations";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:MCDSongsViewControllerIdentifier])
  {
    v4 = @"All Songs";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:MCDMadeForYouViewControllerIdentifier])
  {
    v4 = @"All";
    goto LABEL_13;
  }

  v6 = &stru_101107168;
LABEL_14:

  return v6;
}

- (id)favoriteNoContentMessage:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:MCDPlaylistsViewControllerIdentifier] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", MCDMadeForYouViewControllerIdentifier))
  {
    v4 = @"Playlists you favorite will appear here.";
LABEL_4:
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_101107168 table:0];

    goto LABEL_5;
  }

  if ([v3 isEqualToString:MCDArtistsViewControllerIdentifier])
  {
    v4 = @"Artists you favorite will appear here.";
    goto LABEL_4;
  }

  if ([v3 isEqualToString:MCDAlbumsViewControllerIdentifier] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", MCDCompilationsViewControllerIdentifier))
  {
    v4 = @"Albums you favorite will appear here.";
    goto LABEL_4;
  }

  if ([v3 isEqualToString:MCDSongsViewControllerIdentifier])
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

- (void)contentManager:(id)a3 didReceiveResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 results];
    v10 = [v9 totalItemCount];
    v11 = [(MCDLibraryTableViewController *)self contentManager];
    v12 = [v11 showFavoriteContent];
    v13 = [v7 request];
    v15 = 138413570;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    v22 = v10;
    v23 = 1024;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Received response %@ from %@: itemCount=%ld, showFavoriteContent=%d, request=%@", &v15, 0x3Au);
  }

  v14 = [(MCDLibraryTableViewController *)self tableView];
  [v14 reloadData];

  [(MCDLibraryTableViewController *)self checkContentAndSetView];
}

- (id)contentManager:(id)a3 viewControllerForItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MCDAlbumsTableViewController albumsForGenre:v5 showLocalContent:[(MCDLibraryTableViewController *)self showLocalContent]];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 orphanMusicVideo], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v6 = [[_TtC5Music27MCDItemDetailViewController alloc] initWithAlbum:v5 onlyDownloaded:[(MCDLibraryTableViewController *)self showLocalContent] preferCatalog:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v5;
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

      v6 = [MCDAlbumsTableViewController albumsForPerson:v5 showLocalContent:[(MCDLibraryTableViewController *)self showLocalContent]];
    }
  }

  v10 = v6;
LABEL_13:

  return v10;
}

- (BOOL)contentManager:(id)a3 canDrillIntoItem:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 orphanMusicVideo], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
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

- (void)contentManager:(id)a3 shouldDisplayViewController:(id)a4
{
  v5 = a4;
  [v5 setPlayActivityFeatureNameSourceViewController:self];
  v6 = [(MCDLibraryTableViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)checkContentAndSetView
{
  self->_isShowingButton = 0;
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  v4 = [v3 lastReceivedResponse];
  if ([v4 isEmpty])
  {
    v5 = [(MCDLibraryTableViewController *)self contentManager];
    v6 = [v5 showFavoriteContent];

    if (v6)
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

  v8 = [(MCDLibraryTableViewController *)self contentManager];
  v9 = [v8 lastReceivedResponse];
  v10 = [v9 isEmpty];

  if (v10)
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
        v12 = [(MCDContentManagerDataSource *)self->_dataSource person];

        if (v12)
        {
          v13 = [(MCDContentManagerDataSource *)self->_dataSource person];
          v14 = [(MCDLibraryTableViewController *)self artistHasCatalogID:v13];
          v15 = +[NSBundle mainBundle];
          v16 = v15;
          if (v14)
          {
            v17 = [v15 localizedStringForKey:@"Add music by %@ to save it here value:or start a station to hear similar music." table:{&stru_101107168, 0}];
            v18 = [(MCDLibraryTableViewController *)self title];
            v11 = [NSString stringWithFormat:v17, v18];

            v19 = +[NSBundle mainBundle];
            v20 = [v19 localizedStringForKey:@"Start Station" value:&stru_101107168 table:0];

            self->_isShowingButton = 1;
          }

          else
          {
            v27 = [v15 localizedStringForKey:@"Add music by %@ to save it here." value:&stru_101107168 table:0];
            v28 = [(MCDLibraryTableViewController *)self title];
            v11 = [NSString stringWithFormat:v27, v28];

            v20 = 0;
          }

          goto LABEL_22;
        }
      }

      v21 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
      v22 = [v21 subscriptionCapabilities];

      v23 = +[NSBundle mainBundle];
      v24 = v23;
      if (v22)
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

- (void)replacePlaceholderViewWithView:(id)a3
{
  v4 = a3;
  if (self->_canModifyView)
  {
    v27 = v4;
    [(MCDLibraryTableViewController *)self setPlaceholderView:v4];
    v5 = [(MCDLibraryTableViewController *)self placeholderView];

    if (v5)
    {
      v6 = [(MCDLibraryTableViewController *)self tableView];
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [(MCDLibraryTableViewController *)self tableView];
      [v15 safeAreaInsets];
      v17 = v8 + v16;
      v19 = v10 + v18;
      v21 = v12 - (v16 + v20);
      v23 = v14 - (v18 + v22);

      v24 = [(MCDLibraryTableViewController *)self placeholderView];
      [v24 setFrame:{v17, v19, v21, v23}];

      v25 = [(MCDLibraryTableViewController *)self placeholderView];
      [(MCDLibraryTableViewController *)self setView:v25];
    }

    else
    {
      v26 = [(MCDLibraryTableViewController *)self contentTableView];
      [(MCDLibraryTableViewController *)self setView:v26];

      v25 = [(MCDLibraryTableViewController *)self contentTableView];
      [v25 reloadData];
    }

    v4 = v27;
  }
}

- (BOOL)artistHasCatalogID:(id)a3
{
  v3 = [a3 identifiers];
  v4 = [v3 universalStore];

  if (v4)
  {
    v9[1] = [v4 purchasedAdamID];
    v5 = [v4 adamID];
    v6 = 0;
    v9[2] = v5;
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