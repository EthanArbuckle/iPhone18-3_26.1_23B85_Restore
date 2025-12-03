@interface MCDAlbumTracksTableViewController
+ (id)albumTracksViewControllerForContentItem:(id)item showLocalContent:(BOOL)content;
+ (id)albumTracksViewControllerForStoreItem:(id)item showLocalContent:(BOOL)content;
- (MCDAlbumTracksTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content;
- (id)shuffleContainerForContentManager:(id)manager;
- (id)viewForHeaderViewInContentManager:(id)manager;
- (void)_replacePlaceholderViewWithView:(id)view;
- (void)_setCurrentTableView;
- (void)_showLoadingScreen;
- (void)contentManager:(id)manager didFailWithError:(id)error;
- (void)contentManager:(id)manager didReceiveResponse:(id)response;
- (void)playbackManagerShouldShowNowPlaying:(id)playing;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAlbum:(id)album;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MCDAlbumTracksTableViewController

- (MCDAlbumTracksTableViewController)initWithIdentifier:(id)identifier showLocalContent:(BOOL)content
{
  contentCopy = content;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = MCDAlbumTracksTableViewController;
  v8 = [(MCDLibraryTableViewController *)&v10 initWithIdentifier:identifierCopy showLocalContent:contentCopy dataSource:v7];

  if (v8)
  {
    [(MCDAlbumTracksTableViewController *)v8 setPlayActivityFeatureName:@"album_detail"];
  }

  return v8;
}

+ (id)albumTracksViewControllerForContentItem:(id)item showLocalContent:(BOOL)content
{
  contentCopy = content;
  itemCopy = item;
  v6 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:itemCopy storeContent:0];
  v7 = [MCDAlbumTracksTableViewController alloc];
  v8 = [(MCDLibraryTableViewController *)v7 initWithIdentifier:MCDAlbumsDetailViewControllerIdentifier showLocalContent:contentCopy dataSource:v6];
  [(MCDAlbumTracksTableViewController *)v8 setAlbum:itemCopy];
  [(MCDAlbumTracksTableViewController *)v8 setPlayActivityFeatureName:@"album_detail"];
  title = [itemCopy title];

  titleViewLabel = [(MCDAlbumTracksTableViewController *)v8 titleViewLabel];
  [titleViewLabel setText:title];

  v11 = objc_opt_class();
  contentManager = [(MCDLibraryTableViewController *)v8 contentManager];
  [contentManager setTableCellClass:v11];

  return v8;
}

+ (id)albumTracksViewControllerForStoreItem:(id)item showLocalContent:(BOOL)content
{
  contentCopy = content;
  itemCopy = item;
  v6 = objc_opt_new();
  v7 = v6;
  if (v6)
  {
    [v6 setShowLocalContent:contentCopy];
    v8 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:itemCopy storeContent:1];
    [v7 setDataSource:v8];

    [v7 setAlbum:itemCopy];
    [v7 setPlayActivityFeatureName:@"album_detail"];
    title = [itemCopy title];
    titleViewLabel = [v7 titleViewLabel];
    [titleViewLabel setText:title];

    [v7 setStoreContent:1];
    v11 = [MCDStoreContentManager alloc];
    dataSource = [v7 dataSource];
    v13 = +[CPUILimitedUITrait defaultBoolValue];
    v14 = [(MCDPlaybackManager *)[MCDStorePlaybackManager alloc] initWithDelegate:v7];
    LOBYTE(v19) = 1;
    v15 = [(_MCDContentManager *)v11 initWithDataSource:dataSource limitedUI:v13 showLocalContent:contentCopy delegate:v7 viewController:v7 playbackManager:v14 shouldPerformRequestImmediately:v19];
    [v7 setContentManager:v15];

    v16 = objc_opt_class();
    contentManager = [v7 contentManager];
    [contentManager setTableCellClass:v16];
  }

  return v7;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v24 viewDidLoad];
  contentManager = [(MCDLibraryTableViewController *)self contentManager];
  [contentManager setShowSiriCellInLimitedUI:1];

  tableView = [(MCDAlbumTracksTableViewController *)self tableView];
  [tableView _setHeaderAndFooterViewsFloat:0];

  v5 = objc_opt_new();
  [(MCDAlbumTracksTableViewController *)self setTitleViewLabel:v5];

  album = [(MCDAlbumTracksTableViewController *)self album];
  title = [album title];
  titleViewLabel = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [titleViewLabel setText:title];

  v9 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout variant:1024];
  titleViewLabel2 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [titleViewLabel2 setFont:v9];

  titleViewLabel3 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  [titleViewLabel3 setAlpha:0.0];

  titleViewLabel4 = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
  navigationItem = [(MCDAlbumTracksTableViewController *)self navigationItem];
  [navigationItem setTitleView:titleViewLabel4];

  tableView2 = [(MCDAlbumTracksTableViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[MCDAlbumsDetailTableHeaderView reuseIdentifier];
  [tableView2 registerClass:v15 forHeaderFooterViewReuseIdentifier:v16];

  tableView3 = [(MCDAlbumTracksTableViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[(_MCDReusableCell *)MCDAlbumTracksCell];
  [tableView3 registerClass:v18 forCellReuseIdentifier:v19];

  objc_initWeak(&location, self);
  objc_copyWeak(&v22, &location);
  v20 = [(MCDLibraryTableViewController *)self contentManager:_NSConcreteStackBlock];
  [v20 setTableCellConfigurationBlock:&v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v12 viewWillAppear:appear];
  if ([(MCDTableViewController *)self alwaysHideNowPlayingButton])
  {
    placeholderView = [(MCDLibraryTableViewController *)self placeholderView];
    if (placeholderView)
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MCDAlbumTracksTableViewController;
  [(MCDLibraryTableViewController *)&v5 viewWillDisappear:disappear];
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
  tableView = [(MCDAlbumTracksTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)contentManager:(id)manager didReceiveResponse:(id)response
{
  managerCopy = manager;
  responseCopy = response;
  results = [responseCopy results];
  if ([results numberOfSections] >= 1 && objc_msgSend(results, "numberOfItemsInSection:", 0) >= 1 && -[MCDTableViewController alwaysHideNowPlayingButton](self, "alwaysHideNowPlayingButton"))
  {
    storeContent = [(MCDAlbumTracksTableViewController *)self storeContent];
    firstSection = [results firstSection];
    v11 = firstSection;
    if (storeContent)
    {
      if ([firstSection itemType] == 1)
      {
        album = [v11 album];
        [(MCDAlbumTracksTableViewController *)self setAlbum:album];
      }
    }

    else
    {
      [(MCDAlbumTracksTableViewController *)self setAlbum:firstSection];
    }

    [(MCDAlbumTracksTableViewController *)self _setCurrentTableView];
    [(MCDAlbumTracksTableViewController *)self setHasLoadedContent:1];
  }

  objc_initWeak(&location, self);
  request = [responseCopy request];
  v14 = [request copy];

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
  [(MCDLibraryTableViewController *)&v19 contentManager:managerCopy didReceiveResponse:responseCopy];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)contentManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = errorCopy;
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

- (id)viewForHeaderViewInContentManager:(id)manager
{
  tableView = [(MCDAlbumTracksTableViewController *)self tableView];
  v5 = +[MCDAlbumsDetailTableHeaderView reuseIdentifier];
  v6 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v5];

  v7 = +[UIBackgroundConfiguration clearConfiguration];
  [v6 setBackgroundConfiguration:v7];

  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  album = [dataSource album];

  title = [album title];
  if ([title length])
  {
    [v6 setTitle:title];
  }

  else
  {
    v11 = MCDCarDisplayBundle();
    v12 = [v11 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    [v6 setTitle:v12];
  }

  [(MCDAlbumTracksTableViewController *)self albumDuration];
  [v6 setDuration:objc_msgSend(album count:{"trackCount"), v13}];
  artworkCatalog = [album artworkCatalog];
  v15 = artworkCatalog;
  if (artworkCatalog)
  {
    [artworkCatalog setFittingSize:{36.0, 36.0}];
    view = [(MCDAlbumTracksTableViewController *)self view];
    window = [view window];
    screen = [window screen];
    [screen scale];
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
  [v6 setFavorite:{objc_msgSend(album, "isFavorite")}];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100101794;
  v23[3] = &unk_1010986C0;
  v23[4] = self;
  v24 = album;
  v21 = album;
  [v6 setShuffleActionBlock:v23];

  return v6;
}

- (id)shuffleContainerForContentManager:(id)manager
{
  dataSource = [(MCDLibraryTableViewController *)self dataSource];
  scopedContainers = [dataSource scopedContainers];
  firstObject = [scopedContainers firstObject];

  return firstObject;
}

- (void)setAlbum:(id)album
{
  albumCopy = album;
  if (self->_album != albumCopy)
  {
    v7 = albumCopy;
    objc_storeStrong(&self->_album, album);
    dataSource = [(MCDLibraryTableViewController *)self dataSource];
    [dataSource setAlbum:v7];

    albumCopy = v7;
  }
}

- (void)playbackManagerShouldShowNowPlaying:(id)playing
{
  playingCopy = playing;
  if ([(MCDTableViewController *)self alwaysHideNowPlayingButton])
  {
    navigationController = [(MCDAlbumTracksTableViewController *)self navigationController];
    v6 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MCDAlbumTracksTableViewController;
    [(MCDLibraryTableViewController *)&v7 playbackManagerShouldShowNowPlaying:playingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  tableView = [(MCDAlbumTracksTableViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    tableView2 = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    tableView3 = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView3 safeAreaInsets];
    v17 = v10 + v16;

    tableView4 = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView4 safeAreaInsets];
    v20 = v14 - v19;

    tableView5 = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView5 rectForHeaderInSection:0];
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

    titleViewLabel = [(MCDAlbumTracksTableViewController *)self titleViewLabel];
    [titleViewLabel alpha];
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

- (void)_replacePlaceholderViewWithView:(id)view
{
  viewCopy = view;
  placeholderView = [(MCDLibraryTableViewController *)self placeholderView];
  superview = [placeholderView superview];

  if (superview)
  {
    placeholderView2 = [(MCDLibraryTableViewController *)self placeholderView];
    [placeholderView2 removeFromSuperview];
  }

  [(MCDLibraryTableViewController *)self setPlaceholderView:viewCopy];
  placeholderView3 = [(MCDLibraryTableViewController *)self placeholderView];

  if (placeholderView3)
  {
    tableView = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    tableView2 = [(MCDAlbumTracksTableViewController *)self tableView];
    [tableView2 safeAreaInsets];
    v19 = v10 + v18;
    v21 = v12 + v20;
    v23 = v14 - (v18 + v22);
    v25 = v16 - (v20 + v24);

    placeholderView4 = [(MCDLibraryTableViewController *)self placeholderView];
    [placeholderView4 setFrame:{v19, v21, v23, v25}];

    tableView3 = [(MCDAlbumTracksTableViewController *)self tableView];
    superview2 = [tableView3 superview];
    placeholderView5 = [(MCDLibraryTableViewController *)self placeholderView];
    [superview2 addSubview:placeholderView5];
  }
}

@end