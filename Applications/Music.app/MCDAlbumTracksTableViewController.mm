@interface MCDAlbumTracksTableViewController
+ (id)albumTracksViewControllerForContentItem:(id)a3 showLocalContent:(BOOL)a4;
+ (id)albumTracksViewControllerForStoreItem:(id)a3 showLocalContent:(BOOL)a4;
- (MCDAlbumTracksTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4;
- (id)shuffleContainerForContentManager:(id)a3;
- (id)viewForHeaderViewInContentManager:(id)a3;
- (void)_replacePlaceholderViewWithView:(id)a3;
- (void)_setCurrentTableView;
- (void)_showLoadingScreen;
- (void)contentManager:(id)a3 didFailWithError:(id)a4;
- (void)contentManager:(id)a3 didReceiveResponse:(id)a4;
- (void)playbackManagerShouldShowNowPlaying:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAlbum:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MCDAlbumTracksTableViewController

- (MCDAlbumTracksTableViewController)initWithIdentifier:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDAlbumTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:v6 showLocalContent:v4 dataSource:v7];

  if (v8)
  {
    [(MCDAlbumTracksTableViewController *)v8 setPlayActivityFeatureName:@"album_detail"];
  }

  return v8;
}

+ (id)albumTracksViewControllerForContentItem:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:v5 storeContent:0];
  v7 = [MCDAlbumTracksTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsDetailViewControllerIdentifier showLocalContent:v4 dataSource:v6];
  [(MCDAlbumTracksTableViewController *)v8 setAlbum:v5];
  [(MCDAlbumTracksTableViewController *)v8 setPlayActivityFeatureName:@"album_detail"];
  v9 = [v5 title];

  v10 = [(MCDAlbumTracksTableViewController *)v8 titleViewLabel];
  [v10 setText:v9];

  v11 = objc_opt_class();
  v12 = [(MCDLibraryTableViewController *)v8 contentManager];
  [v12 setTableCellClass:v11];

  return v8;
}

+ (id)albumTracksViewControllerForStoreItem:(id)a3 showLocalContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 setShowLocalContent:v4];
    v8 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:v5 storeContent:1];
    [v7 setDataSource:v8];

    [v7 setAlbum:v5];
    [v7 setPlayActivityFeatureName:@"album_detail"];
    v9 = [v5 title];
    v10 = [v7 titleViewLabel];
    [v10 setText:v9];

    [v7 setStoreContent:1];
    v11 = [MCDStoreContentManager alloc];
    v12 = [v7 dataSource];
    v13 = +[CPUILimitedUITrait defaultBoolValue];
    v14 = [(MCDPlaybackManager *)[MCDStorePlaybackManager alloc] initWithDelegate:v7];
    LOBYTE(v19) = 1;
    v15 = [(_MCDContentManager *)v11 initWithDataSource:v12 limitedUI:v13 showLocalContent:v4 delegate:v7 viewController:v7 playbackManager:v14 shouldPerformRequestImmediately:v19];
    [v7 setContentManager:v15];

    v16 = objc_opt_class();
    v17 = [v7 contentManager];
    [v17 setTableCellClass:v16];
  }

  return v7;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v24 viewDidLoad];
  v3 = [(MCDLibraryTableViewController *)self contentManager];
  [v3 setShowSiriCellInLimitedUI:1];

  v4 = [(MCDAlbumTracksTableViewController *)self tableView];
  [v4 _setHeaderAndFooterViewsFloat:0];

  v5 = objc_opt_new();
  [(MCDAlbumTracksTableViewController *)self setTitleViewLabel:v5];

  v6 = [(MCDAlbumTracksTableViewController *)self album];
  v7 = [v6 title];
  v8 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [v8 setText:v7];

  v9 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout variant:1024];
  v10 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [v10 setFont:v9];

  v11 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [v11 setAlpha:0.0];

  v12 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  v13 = [(MCDAlbumTracksTableViewController *)self navigationItem];
  [v13 setTitleView:v12];

  v14 = [(MCDAlbumTracksTableViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[MCDAlbumsDetailTableHeaderView reuseIdentifier];
  [v14 registerClass:v15 forHeaderFooterViewReuseIdentifier:v16];

  v17 = [(MCDAlbumTracksTableViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[(_MCDReusableCell *)MCDAlbumTracksCell];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  objc_initWeak(&location, self);
  objc_copyWeak(&v22, &location);
  v20 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v20 setTableCellConfigurationBlock:&v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v12 viewWillAppear:a3];
  if ([(MCDTableViewController *)self alwaysHideNowPlayingButton])
  {
    v4 = [(MCDLibraryTableViewController *)self placeholderView];
    if (v4)
    {
    }

    else if (![(MCDAlbumTracksTableViewController *)self hasLoadedContent])
    {
      objc_initWeak(&location, self);
      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v8 = sub_100100BF4;
      v9 = &unk_101097D20;
      objc_copyWeak(&v10, &location);
      v5 = [MPWeakTimer timerWithInterval:0 repeats:&v6 block:2.0];
      [(MCDAlbumTracksTableViewController *)self setLoadingTimer:v5, v6, v7, v8, v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v5 viewWillDisappear:a3];
  if ([(MCDTableViewController *)self alwaysHideNowPlayingButton])
  {
    [(MPWeakTimer *)self->_loadingTimer invalidate];
    loadingTimer = self->_loadingTimer;
    self->_loadingTimer = 0;
  }
}

- (void)_showLoadingScreen
{
  [(MPWeakTimer *)self->_loadingTimer invalidate];
  loadingTimer = self->_loadingTimer;
  self->_loadingTimer = 0;

  v4 = +[_TtC5Music22CarPlayInformationView loading];
  [(MCDAlbumTracksTableViewController *)self _replacePlaceholderViewWithView:v4];
}

- (void)_setCurrentTableView
{
  [(MPWeakTimer *)self->_loadingTimer invalidate];
  loadingTimer = self->_loadingTimer;
  self->_loadingTimer = 0;

  [(MCDAlbumTracksTableViewController *)self _replacePlaceholderViewWithView:0];
  v4 = [(MCDAlbumTracksTableViewController *)self tableView];
  [v4 reloadData];
}

- (void)contentManager:(id)a3 didReceiveResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 results];
  if ([v8 numberOfSections] >= 1 && objc_msgSend(v8, "numberOfItemsInSection:", 0) >= 1 && -[MCDTableViewController alwaysHideNowPlayingButton](self, "alwaysHideNowPlayingButton"))
  {
    v9 = [(MCDAlbumTracksTableViewController *)self storeContent];
    v10 = [v8 firstSection];
    v11 = v10;
    if (v9)
    {
      if ([v10 itemType] == 1)
      {
        v12 = [v11 album];
        [(MCDAlbumTracksTableViewController *)self setAlbum:v12];
      }
    }

    else
    {
      [(MCDAlbumTracksTableViewController *)self setAlbum:v10];
    }

    [(MCDAlbumTracksTableViewController *)self _setCurrentTableView];
    [(MCDAlbumTracksTableViewController *)self setHasLoadedContent:1];
  }

  objc_initWeak(&location, self);
  v13 = [v7 request];
  v14 = [v13 copy];

  v15 = self->_album;
  v24 = MPModelPropertySongDuration;
  v16 = [NSArray arrayWithObjects:&v24 count:1];
  v17 = [MPPropertySet propertySetWithProperties:v16];
  [v14 setItemProperties:v17];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100101060;
  v20[3] = &unk_101098658;
  objc_copyWeak(&v22, &location);
  v18 = v15;
  v21 = v18;
  [v14 performWithResponseHandler:v20];
  [(MCDAlbumTracksTableViewController *)self setHasPlayableContent:1];
  v19.receiver = self;
  v19.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v19 contentManager:v6 didReceiveResponse:v7];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)contentManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Album tracks content manager failed to load data with error: %{public}@\nShowing error view", buf, 0xCu);
  }

  v7 = MCDCarDisplayBundle();
  v8 = [v7 localizedStringForKey:@"FUSE_TIMEOUT_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v9 = MCDCarDisplayBundle();
  v10 = [v9 localizedStringForKey:@"Try Again" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100101468;
  v12[3] = &unk_101097CF8;
  v12[4] = self;
  v11 = [_TtC5Music22CarPlayInformationView errorWithTitle:v8 buttonText:v10 buttonAction:v12];

  [(MCDAlbumTracksTableViewController *)self _replacePlaceholderViewWithView:v11];
}

- (id)viewForHeaderViewInContentManager:(id)a3
{
  v4 = [(MCDAlbumTracksTableViewController *)self tableView];
  v5 = +[MCDAlbumsDetailTableHeaderView reuseIdentifier];
  v6 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v5];

  v7 = +[UIBackgroundConfiguration clearConfiguration];
  [v6 setBackgroundConfiguration:v7];

  v8 = [(MCDLibraryTableViewController *)self dataSource];
  v9 = [v8 album];

  v10 = [v9 title];
  if ([v10 length])
  {
    [v6 setTitle:v10];
  }

  else
  {
    v11 = MCDCarDisplayBundle();
    v12 = [v11 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    [v6 setTitle:v12];
  }

  [(MCDAlbumTracksTableViewController *)self albumDuration];
  [v6 setDuration:objc_msgSend(v9 count:{"trackCount"), v13}];
  v14 = [v9 artworkCatalog];
  v15 = v14;
  if (v14)
  {
    [v14 setFittingSize:{36.0, 36.0}];
    v16 = [(MCDAlbumTracksTableViewController *)self view];
    v17 = [v16 window];
    v18 = [v17 screen];
    [v18 scale];
    [v15 setDestinationScale:?];

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v15 setCacheIdentifier:v20 forRequestingContext:self];

    [v15 setDestination:v6 configurationBlock:&stru_101098698];
  }

  else
  {
    [v6 setTemplateArtworkImage:0];
  }

  [v6 setContentPlayable:{-[MCDAlbumTracksTableViewController hasPlayableContent](self, "hasPlayableContent")}];
  [v6 setFavorite:{objc_msgSend(v9, "isFavorite")}];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100101794;
  v23[3] = &unk_1010986C0;
  v23[4] = self;
  v24 = v9;
  v21 = v9;
  [v6 setShuffleActionBlock:v23];

  return v6;
}

- (id)shuffleContainerForContentManager:(id)a3
{
  v3 = [(MCDLibraryTableViewController *)self dataSource];
  v4 = [v3 scopedContainers];
  v5 = [v4 firstObject];

  return v5;
}

- (void)setAlbum:(id)a3
{
  v5 = a3;
  if (self->_album != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_album, a3);
    v6 = [(MCDLibraryTableViewController *)self dataSource];
    [v6 setAlbum:v7];

    v5 = v7;
  }
}

- (void)playbackManagerShouldShowNowPlaying:(id)a3
{
  v4 = a3;
  if ([(MCDTableViewController *)self alwaysHideNowPlayingButton])
  {
    v5 = [(MCDAlbumTracksTableViewController *)self navigationController];
    v6 = [v5 popViewControllerAnimated:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MCDAlbumTracksTableViewController;
    [(MCDLibraryTableViewController *)&v7 playbackManagerShouldShowNowPlaying:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(MCDAlbumTracksTableViewController *)self tableView];
  v5 = [v4 numberOfSections];

  if (v5 >= 1)
  {
    v6 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v15 safeAreaInsets];
    v17 = v10 + v16;

    v18 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v18 safeAreaInsets];
    v20 = v14 - v19;

    v21 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v21 rectForHeaderInSection:0];
    v30.origin.x = v8;
    v30.origin.y = v17;
    v30.size.width = v12;
    v30.size.height = v20;
    v29 = CGRectIntersection(v28, v30);
    height = v29.size.height;

    if (height > 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0;
    }

    v24 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
    [v24 alpha];
    v26 = v25;

    if (v26 != v23)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100101B4C;
      v27[3] = &unk_101098180;
      v27[4] = self;
      *&v27[5] = v23;
      [UIView animateWithDuration:v27 animations:0.4];
    }
  }
}

- (void)_replacePlaceholderViewWithView:(id)a3
{
  v30 = a3;
  v4 = [(MCDLibraryTableViewController *)self placeholderView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [(MCDLibraryTableViewController *)self placeholderView];
    [v6 removeFromSuperview];
  }

  [(MCDLibraryTableViewController *)self setPlaceholderView:v30];
  v7 = [(MCDLibraryTableViewController *)self placeholderView];

  if (v7)
  {
    v8 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(MCDAlbumTracksTableViewController *)self tableView];
    [v17 safeAreaInsets];
    v19 = v10 + v18;
    v21 = v12 + v20;
    v23 = v14 - (v18 + v22);
    v25 = v16 - (v20 + v24);

    v26 = [(MCDLibraryTableViewController *)self placeholderView];
    [v26 setFrame:{v19, v21, v23, v25}];

    v27 = [(MCDAlbumTracksTableViewController *)self tableView];
    v28 = [v27 superview];
    v29 = [(MCDLibraryTableViewController *)self placeholderView];
    [v28 addSubview:v29];
  }
}

@end