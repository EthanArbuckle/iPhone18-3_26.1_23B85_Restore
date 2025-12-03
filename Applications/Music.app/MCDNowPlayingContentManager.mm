@interface MCDNowPlayingContentManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller;
- (BOOL)_allowsTasteActionsForGenericObject:(id)object;
- (BOOL)_itemCanCreateRadioStation;
- (BOOL)_nowPlayingViewControllerIsFuseSubscriber;
- (BOOL)_showAddToLibraryOptions;
- (BOOL)_showStopForCenterTransportCommand;
- (BOOL)currentPlayingSongFoundIn:(id)in;
- (BOOL)isAutoplaySectionAtIndex:(int64_t)index;
- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active;
- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library;
- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)link;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)more;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive;
- (BOOL)prefersCatalogContainerNavigationForPlayingSong;
- (MCDNowPlayingContentManager)initWithDelegate:(id)delegate dataSource:(id)source bundleID:(id)d;
- (MCDNowPlayingContentManagerDelegate)contentManagerDelegate;
- (NSString)nowPlayingBundleID;
- (double)preferredJumpIntervalForDirection:(int64_t)direction;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_radioCommandRequestWithCurrentPlayingSongWithViewController:(id)controller;
- (id)attributionTitleForNowPlayingViewController:(id)controller;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller;
- (id)delegate;
- (id)sectionTypeAtIndex:(int64_t)index;
- (id)skipIntervalButtonImageForInterval:(double)interval;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller;
- (int64_t)repeatTypeForNowPlayingViewController:(id)controller;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)videoPlaybackStateForNowPlayingController:(id)controller;
- (void)_addItemsToLibrary;
- (void)_processResponse:(id)response error:(id)error;
- (void)_subscriptionCapabilitiesChanged:(id)changed;
- (void)contentManager:(id)manager bufferingItem:(BOOL)item;
- (void)contentManager:(id)manager displayItemIndex:(int64_t)index totalItemCount:(int64_t)count;
- (void)contentManager:(id)manager itemDidChange:(id)change response:(id)response;
- (void)contentManager:(id)manager presentViewController:(id)controller;
- (void)contentManager:(id)manager processResponse:(id)response error:(id)error;
- (void)contentManager:(id)manager sectionName:(id)name;
- (void)contentManager:(id)manager shouldShowPlaybackQueue:(BOOL)queue;
- (void)contentManagerCompletedAllPlayback:(id)playback;
- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)queue;
- (void)contentManagerReloadData:(id)data;
- (void)dealloc;
- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button;
- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state;
- (void)nowPlayingViewControllerAddToLibrary:(id)library;
- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)tapped;
- (void)nowPlayingViewControllerAttributionButtonTapped:(id)tapped;
- (void)nowPlayingViewControllerMore:(id)more;
- (void)nowPlayingViewControllerToggleRepeat:(id)repeat;
- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle;
- (void)performFavoriteChangeRequestFor:(id)for action:(int64_t)action;
- (void)playbackManager:(id)manager shouldShowError:(id)error;
- (void)reloadData;
- (void)requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum;
- (void)setCurrentAttributionCatalog:(id)catalog;
- (void)setCurrentAttributionMetadata:(id)metadata;
- (void)setTableView:(id)view;
- (void)sharePlayTogetherButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateBarButtonItems;
- (void)updateNoContentView;
- (void)updateNoContentViewFrameIfNeeded;
- (void)updateSharePlayTogetherState;
@end

@implementation MCDNowPlayingContentManager

- (void)updateSharePlayTogetherState
{
  v3 = +[UIApplication sharePlayTogetherObjCViewModel];
  if (v3)
  {
    sharePlayTogetherButton = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];

    if (!sharePlayTogetherButton)
    {
      v5 = [UIButton buttonWithType:0];
      [v5 setFrame:{0.0, 0.0, 48.0, 26.0}];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000F9BDC;
      v46[3] = &unk_1010984D8;
      v47 = v3;
      [v5 setConfigurationUpdateHandler:v46];
      [v5 addTarget:self action:"sharePlayTogetherButtonTapped" forControlEvents:64];
      [(MCDNowPlayingContentManager *)self setSharePlayTogetherButton:v5];
    }

    sharePlayTogetherButton2 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [sharePlayTogetherButton2 setNeedsUpdateConfiguration];

    sharePlayTogetherButton3 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [sharePlayTogetherButton3 sizeToFit];

    sharePlayTogetherButton4 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [sharePlayTogetherButton4 sizeThatFits:{INFINITY, 26.0}];
    v10 = v9;
    v12 = v11;

    if (v10 < 48.0)
    {
      v10 = 48.0;
    }

    sharePlayTogetherButton5 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [sharePlayTogetherButton5 setFrame:{0.0, 0.0, v10, v12}];

    if ([v3 pendingParticipantsCount] < 1)
    {
      [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsView:0];
    }

    else
    {
      sharePlayTogetherPendingParticipantsView = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];

      if (!sharePlayTogetherPendingParticipantsView)
      {
        v15 = objc_opt_new();
        v16 = [[UIView alloc] initWithFrame:{0.0, 10.5, 5.0, 5.0}];
        layer = [v16 layer];
        [layer setCornerRadius:2.5];

        v18 = +[UIColor systemCyanColor];
        [v16 setBackgroundColor:v18];

        [v15 addSubview:v16];
        v19 = [[UILabel alloc] initWithFrame:{8.0, 0.0, 0.0, 26.0}];
        v20 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightMedium];
        [v19 setFont:v20];

        [v15 addSubview:v19];
        [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsView:v15];
        [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsLabel:v19];
      }

      v21 = MCDCarDisplayBundle();
      v22 = [v21 localizedStringForKey:@"%ld Pending" value:&stru_101107168 table:@"MusicCarDisplayUI"];
      v23 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v22, [v3 pendingParticipantsCount]);
      sharePlayTogetherPendingParticipantsLabel = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel setText:v23];

      sharePlayTogetherPendingParticipantsLabel2 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel2 sizeToFit];

      sharePlayTogetherPendingParticipantsLabel3 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel3 frame];
      MinX = CGRectGetMinX(v48);
      sharePlayTogetherPendingParticipantsLabel4 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel4 frame];
      v29 = (26.0 - CGRectGetHeight(v49)) * 0.5;
      sharePlayTogetherPendingParticipantsLabel5 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel5 frame];
      Width = CGRectGetWidth(v50);
      sharePlayTogetherPendingParticipantsLabel6 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel6 frame];
      Height = CGRectGetHeight(v51);
      sharePlayTogetherPendingParticipantsLabel7 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel7 setFrame:{MinX, v29, Width, Height}];

      sharePlayTogetherPendingParticipantsLabel8 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [sharePlayTogetherPendingParticipantsLabel8 frame];
      MaxX = CGRectGetMaxX(v52);
      sharePlayTogetherPendingParticipantsView2 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];
      [sharePlayTogetherPendingParticipantsView2 setFrame:{0.0, 0.0, MaxX, 26.0}];
    }

    [(MCDNowPlayingContentManager *)self updateBarButtonItems];
    tableView = [(MCDNowPlayingContentManager *)self tableView];
    [tableView reloadData];
  }

  else
  {
    [(MCDNowPlayingContentManager *)self setSharePlayTogetherButton:0];
    [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsView:0];
    [(MCDNowPlayingContentManager *)self updateBarButtonItems];
    tableView = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
    [tableView contentManagerReloadData:self->_impl];
  }

  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  playingItemIndexPath = [tracklist playingItemIndexPath];

  if (playingItemIndexPath)
  {
    lastReceivedResponse = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
    tracklist2 = [(MCDNowPlayingContentManager *)self tracklist];
    items = [tracklist2 items];
    v44 = [items itemAtIndexPath:playingItemIndexPath];
    v45 = [lastReceivedResponse attributionMetadataFor:v44];
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:v45];
  }

  else
  {
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:0];
  }
}

- (void)updateBarButtonItems
{
  v12 = objc_opt_new();
  sharePlayTogetherButton = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];

  if (sharePlayTogetherButton)
  {
    v4 = [UIBarButtonItem alloc];
    sharePlayTogetherButton2 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    v6 = [v4 initWithCustomView:sharePlayTogetherButton2];

    [v12 addObject:v6];
  }

  sharePlayTogetherPendingParticipantsView = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];

  if (sharePlayTogetherPendingParticipantsView)
  {
    v8 = [UIBarButtonItem alloc];
    sharePlayTogetherPendingParticipantsView2 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];
    v10 = [v8 initWithCustomView:sharePlayTogetherPendingParticipantsView2];

    [v12 addObject:v10];
  }

  contentManagerDelegate = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [contentManagerDelegate contentManager:self->_impl setAdditionalBarButtonItems:v12];
}

- (MCDNowPlayingContentManagerDelegate)contentManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);

  return WeakRetained;
}

- (MCDNowPlayingContentManager)initWithDelegate:(id)delegate dataSource:(id)source bundleID:(id)d
{
  delegateCopy = delegate;
  sourceCopy = source;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = MCDNowPlayingContentManager;
  v11 = [(MCDNowPlayingContentManager *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_contentManagerDelegate, delegateCopy);
    v13 = [[_MCDNowPlayingContentManager alloc] initWithDelegate:v12 dataSource:sourceCopy bundleID:dCopy];
    impl = v12->_impl;
    v12->_impl = v13;

    v15 = objc_alloc_init(MCDLibraryAddObserver);
    libraryAddObserver = v12->_libraryAddObserver;
    v12->_libraryAddObserver = v15;

    initAndWaitUntilSessionUpdated = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
    carSessionStatus = v12->_carSessionStatus;
    v12->_carSessionStatus = initAndWaitUntilSessionUpdated;

    [(MCDNowPlayingContentManager *)v12 setTableCellClass:objc_opt_class()];
    v19 = [[SiriDirectActionSource alloc] initWithDelegate:0];
    siriDirectActionSource = v12->_siriDirectActionSource;
    v12->_siriDirectActionSource = v19;

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v12 selector:"_subscriptionCapabilitiesChanged:" name:@"MusicCarPlayApplicationCapabilitiesControllerSubscriptionCapabilitiesDidChangeNotification" object:0];

    if (_os_feature_enabled_impl())
    {
      v22 = +[NSNotificationCenter defaultCenter];
      v23 = +[_TtC5Music29MCDSharePlayTogetherViewModel notificationName];
      [v22 addObserver:v12 selector:"updateSharePlayTogetherState" name:v23 object:0];

      [(MCDNowPlayingContentManager *)v12 updateSharePlayTogetherState];
    }

    objc_initWeak(&location, v12);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000F4824;
    v25[3] = &unk_101097D20;
    objc_copyWeak(&v26, &location);
    [(MCDLibraryAddObserver *)v12->_libraryAddObserver setUpdateBlock:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  siriDirectActionSource = [(MCDNowPlayingContentManager *)self siriDirectActionSource];
  [siriDirectActionSource invalidate];

  v4.receiver = self;
  v4.super_class = MCDNowPlayingContentManager;
  [(MCDNowPlayingContentManager *)&v4 dealloc];
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  if (self->_tableView != viewCopy)
  {
    v8 = viewCopy;
    [(_MCDNowPlayingContentManager *)self->_impl setTableView:viewCopy];
    objc_storeStrong(&self->_tableView, view);
    tableCellClass = [(MCDNowPlayingContentManager *)self tableCellClass];
    v7 = NSStringFromClass([(MCDNowPlayingContentManager *)self tableCellClass]);
    [(UITableView *)v8 registerClass:tableCellClass forCellReuseIdentifier:v7];

    [(UITableView *)v8 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"autoplay"];
    [(UITableView *)v8 setDelegate:self];
    [(UITableView *)v8 setDataSource:self];
    [(UITableView *)v8 setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v8 setEstimatedRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v8 _setHeaderAndFooterViewsFloat:0];
    [(UITableView *)v8 reloadData];
    [(MCDNowPlayingContentManager *)self updateNoContentView];
    viewCopy = v8;
  }
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v5 reloadData];
  }
}

- (void)_processResponse:(id)response error:(id)error
{
  responseCopy = response;
  tracklist = [responseCopy tracklist];
  [(MCDNowPlayingContentManager *)self setTracklist:tracklist];

  tracklist2 = [(MCDNowPlayingContentManager *)self tracklist];
  displayItems = [tracklist2 displayItems];
  v43[0] = MPCPlayerResponseTracklistDisplaySectionUpNextItems;
  v43[1] = MPCPlayerResponseTracklistDisplaySectionNextItems;
  v43[2] = MPCPlayerResponseTracklistDisplaySectionAutoPlayItems;
  v9 = [NSArray arrayWithObjects:v43 count:3];
  v10 = [displayItems filteredWithSections:v9];
  [(MCDNowPlayingContentManager *)self setFilteredItems:v10];

  [(MCDNowPlayingContentManager *)self requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum];
  libraryAddObserver = [(MCDNowPlayingContentManager *)self libraryAddObserver];
  tracklist3 = [(MCDNowPlayingContentManager *)self tracklist];
  [libraryAddObserver updateRequestForTracklist:tracklist3];

  tracklist4 = [(MCDNowPlayingContentManager *)self tracklist];
  playingItemIndexPath = [tracklist4 playingItemIndexPath];

  if (playingItemIndexPath)
  {
    tracklist5 = [(MCDNowPlayingContentManager *)self tracklist];
    items = [tracklist5 items];
    v17 = [items itemAtIndexPath:playingItemIndexPath];
    v18 = [responseCopy attributionMetadataFor:v17];
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:v18];

    tracklist6 = [(MCDNowPlayingContentManager *)self tracklist];
    items2 = [tracklist6 items];
    v21 = [items2 sectionAtIndex:{objc_msgSend(playingItemIndexPath, "section")}];

    metadataObject = [v21 metadataObject];
    if ([metadataObject type] == 13)
    {
      radioStation = [metadataObject radioStation];
      name = [radioStation name];
      currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
      title = [currentPlayingSong title];
      v27 = [name isEqualToString:title];

      if ((v27 & 1) == 0)
      {
        delegate = [(MCDNowPlayingContentManager *)self delegate];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          v30 = MCDMusicGeneralLogging();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            radioStation2 = [metadataObject radioStation];
            name2 = [radioStation2 name];
            v41 = 138543362;
            v42 = name2;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting radio station: %{public}@", &v41, 0xCu);
          }

          delegate2 = [(MCDNowPlayingContentManager *)self delegate];
          impl = self->_impl;
          radioStation3 = [metadataObject radioStation];
          name3 = [radioStation3 name];
          [delegate2 contentManager:impl sectionName:name3];
        }
      }
    }
  }

  else
  {
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:0];
  }

  [(MCDNowPlayingContentManager *)self updateBarButtonItems];
  state = [responseCopy state];
  if (state != [(MCDNowPlayingContentManager *)self playerState])
  {
    self->_playerState = state;
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 postNotificationName:MCDPlaybackStateChangedNotification object:0];
  }

  tableView = [(MCDNowPlayingContentManager *)self tableView];

  if (tableView)
  {
    tableView2 = [(MCDNowPlayingContentManager *)self tableView];
    [tableView2 reloadData];

    [(MCDNowPlayingContentManager *)self updateNoContentView];
  }
}

- (void)updateNoContentView
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  if ([filteredItems totalItemCount])
  {

LABEL_5:
    tableView = [(MCDNowPlayingContentManager *)self tableView];
    [tableView setBackgroundView:0];

    [(MCDNowPlayingContentManager *)self setNoContentView:0];
    return;
  }

  currentPlayingRadioStation = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];

  if (currentPlayingRadioStation)
  {
    goto LABEL_5;
  }

  noContentView = [(MCDNowPlayingContentManager *)self noContentView];

  if (!noContentView)
  {
    v32 = objc_opt_new();
    [v32 setAutoresizingMask:18];
    tableView2 = [(MCDNowPlayingContentManager *)self tableView];
    [tableView2 frame];
    [v32 setFrame:?];

    tableView3 = [(MCDNowPlayingContentManager *)self tableView];
    [tableView3 setBackgroundView:v32];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"There’s no music in the queue." value:&stru_101107168 table:0];
    v11 = [_TtC5Music22CarPlayInformationView noContentWithTitle:v10 subtitle:0 buttonText:0 buttonAction:0 isCentered:1];
    [(MCDNowPlayingContentManager *)self setNoContentView:v11];

    noContentView2 = [(MCDNowPlayingContentManager *)self noContentView];
    [noContentView2 setAutoresizingMask:18];

    [v32 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    tableView4 = [(MCDNowPlayingContentManager *)self tableView];
    [tableView4 safeAreaInsets];
    v23 = v14 + v22;
    v25 = v16 + v24;
    v27 = v18 - (v22 + v26);
    v29 = v20 - (v24 + v28);
    noContentView3 = [(MCDNowPlayingContentManager *)self noContentView];
    [noContentView3 setFrame:{v23, v25, v27, v29}];

    noContentView4 = [(MCDNowPlayingContentManager *)self noContentView];
    [v32 addSubview:noContentView4];
  }
}

- (void)updateNoContentViewFrameIfNeeded
{
  tableView = [(MCDNowPlayingContentManager *)self tableView];
  backgroundView = [tableView backgroundView];
  [backgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView2 = [(MCDNowPlayingContentManager *)self tableView];
  [tableView2 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  noContentView = [(MCDNowPlayingContentManager *)self noContentView];
  [noContentView setFrame:{v14, v16, v18, v20}];
}

- (void)setCurrentAttributionMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_currentAttributionMetadata, metadata);
  artworkCatalog = [metadataCopy artworkCatalog];
  if (artworkCatalog)
  {
    [(MCDNowPlayingContentManager *)self setCurrentAttributionCatalog:artworkCatalog];
  }

  else
  {
    placeholderArtworkCatalog = [metadataCopy placeholderArtworkCatalog];
    [(MCDNowPlayingContentManager *)self setCurrentAttributionCatalog:placeholderArtworkCatalog];
  }

  delegate = [(MCDNowPlayingContentManager *)self delegate];
  impl = [(MCDNowPlayingContentManager *)self impl];
  [delegate contentManagerReloadData:impl];
}

- (void)setCurrentAttributionCatalog:(id)catalog
{
  catalogCopy = catalog;
  if (([catalogCopy isArtworkVisuallyIdenticalToCatalog:self->_currentAttributionCatalog] & 1) == 0)
  {
    objc_storeStrong(&self->_currentAttributionCatalog, catalog);
    [(MCDNowPlayingContentManager *)self setCurrentAttributionImage:0];
    v6 = +[UITraitCollection currentTraitCollection];
    [v6 displayScale];
    [catalogCopy setDestinationScale:?];

    [catalogCopy setFittingSize:{30.0, 30.0}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [catalogCopy setCacheIdentifier:v8 forCacheReference:self];

    objc_initWeak(&location, self);
    objc_initWeak(&from, catalogCopy);
    currentAttributionMetadata = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
    placeholderArtworkCatalog = [currentAttributionMetadata placeholderArtworkCatalog];
    v11 = [catalogCopy isArtworkVisuallyIdenticalToCatalog:placeholderArtworkCatalog];

    if ((v11 & 1) == 0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000F55B4;
      v16[3] = &unk_101097D20;
      objc_copyWeak(&v17, &location);
      v12 = [MSVTimer timerWithInterval:0 repeats:v16 block:2.0];
      [(MCDNowPlayingContentManager *)self setArtworkTimer:v12];

      objc_destroyWeak(&v17);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F5624;
    v13[3] = &unk_101098360;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    [catalogCopy setDestination:self configurationBlock:v13];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_subscriptionCapabilitiesChanged:(id)changed
{
  delegate = [(MCDNowPlayingContentManager *)self delegate];
  [delegate contentManagerReloadData:self->_impl];
}

- (BOOL)isAutoplaySectionAtIndex:(int64_t)index
{
  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  numberOfSections = [filteredItems numberOfSections];

  if (numberOfSections <= index)
  {
    return 0;
  }

  filteredItems2 = [(MCDNowPlayingContentManager *)self filteredItems];
  v8 = [filteredItems2 sectionAtIndex:index];
  v9 = [v8 isEqualToString:MPCPlayerResponseTracklistDisplaySectionAutoPlayItems];

  return v9;
}

- (id)sectionTypeAtIndex:(int64_t)index
{
  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  numberOfSections = [filteredItems numberOfSections];

  if (numberOfSections <= index)
  {
    v8 = MPCPlayerResponseTracklistDisplaySectionNextItems;
  }

  else
  {
    filteredItems2 = [(MCDNowPlayingContentManager *)self filteredItems];
    v8 = [filteredItems2 sectionAtIndex:index];
  }

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(MCDNowPlayingContentManager *)self limitedUI])
  {
    return 1;
  }

  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  numberOfSections = [filteredItems numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  numberOfSections = [filteredItems numberOfSections];

  if (numberOfSections <= section)
  {
    return 0;
  }

  filteredItems2 = [(MCDNowPlayingContentManager *)self filteredItems];
  v9 = [filteredItems2 numberOfItemsInSection:section];

  limitedUI = [(MCDNowPlayingContentManager *)self limitedUI];
  v11 = 12;
  if (v9 < 12)
  {
    v11 = v9;
  }

  if (limitedUI)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(objc_class *)[(MCDNowPlayingContentManager *)self tableCellClass] cellForTableView:viewCopy indexPath:pathCopy];
  filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
  v10 = [filteredItems itemAtIndexPath:pathCopy];

  tableCellConfigurationBlock = [(MCDNowPlayingContentManager *)self tableCellConfigurationBlock];

  if (tableCellConfigurationBlock)
  {
    tableCellConfigurationBlock2 = [(MCDNowPlayingContentManager *)self tableCellConfigurationBlock];
    metadataObject = [v10 metadataObject];
    lastReceivedResponse = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
    v15 = [lastReceivedResponse attributionMetadataFor:v10];
    (tableCellConfigurationBlock2)[2](tableCellConfigurationBlock2, v8, metadataObject, viewCopy, v15);
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (_os_feature_enabled_impl())
  {
    return UITableViewAutomaticDimension;
  }

  v7 = [(MCDNowPlayingContentManager *)self isAutoplaySectionAtIndex:section];
  result = UITableViewAutomaticDimension;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(MCDNowPlayingContentManager *)self tableView:viewCopy titleForHeaderInSection:section];
  if (v7)
  {
    v8 = [NSAttributedString alloc];
    v17[0] = NSFontAttributeName;
    v9 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 variant:1024];
    v18[0] = v9;
    v17[1] = NSForegroundColorAttributeName;
    v10 = +[UIColor _carSystemSecondaryColor];
    v18[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v8 initWithString:v7 attributes:v11];

    v13 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"autoplay"];
    v14 = +[UIListContentConfiguration plainHeaderConfiguration];
    [v14 setAttributedText:v12];
    [v13 setContentConfiguration:v14];
    if (_UISolariumEnabled())
    {
      v15 = +[UIBackgroundConfiguration clearConfiguration];
      [v13 setBackgroundConfiguration:v15];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (_os_feature_enabled_impl())
  {
    v6 = [(MCDNowPlayingContentManager *)self sectionTypeAtIndex:section];
    if ([v6 isEqualToString:MPCPlayerResponseTracklistDisplaySectionNextItems])
    {
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"Continue Playing";
    }

    else if ([v6 isEqualToString:MPCPlayerResponseTracklistDisplaySectionUpNextItems])
    {
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"Queue";
    }

    else
    {
      if (![v6 isEqualToString:MPCPlayerResponseTracklistDisplaySectionAutoPlayItems])
      {
        v10 = 0;
        goto LABEL_9;
      }

      v7 = +[NSBundle mainBundle];
      v8 = v7;
      if (section)
      {
        v9 = @"AutoPlaying";
      }

      else
      {
        v9 = @"AutoPlaying similar music";
      }
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_101107168 table:0];

LABEL_9:
    goto LABEL_11;
  }

  if ([(MCDNowPlayingContentManager *)self isAutoplaySectionAtIndex:section])
  {
    v6 = MCDCarDisplayBundle();
    v10 = [v6 localizedStringForKey:@"AUTOPLAY_SECTION_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(MCDNowPlayingContentManager *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  if (([v6 isContentUnavailable] & 1) == 0)
  {
    playbackManager = [(MCDNowPlayingContentManager *)self playbackManager];
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    changeItemCommand = [tracklist changeItemCommand];
    filteredItems = [(MCDNowPlayingContentManager *)self filteredItems];
    v11 = [filteredItems itemAtIndexPath:pathCopy];
    v12 = [changeItemCommand changeToItem:v11];
    [playbackManager performPlaybackRequestWithCommand:v12];
  }

  tableView2 = [(MCDNowPlayingContentManager *)self tableView];
  [tableView2 deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)playbackManager:(id)manager shouldShowError:(id)error
{
  v5 = MCDCarDisplayBundle();
  v6 = [v5 localizedStringForKey:@"ADD_STATION_FAILED_ALERT_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v7 = MCDCarDisplayBundle();
  v8 = [v7 localizedStringForKey:@"ADD_STATION_FAILED_ALERT_MESSAGE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v14 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_101107168 table:0];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  [v14 addAction:v11];
  delegate = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MCDNowPlayingContentManager *)self delegate];
    [delegate2 contentManager:self->_impl presentViewController:v14];
  }
}

- (double)preferredJumpIntervalForDirection:(int64_t)direction
{
  if ((direction - 1) < 2)
  {
    nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    seekCommand = [nowPlayingItem seekCommand];
    preferredForwardJumpIntervals = [seekCommand preferredForwardJumpIntervals];
    goto LABEL_5;
  }

  if ((direction + 2) <= 1)
  {
    nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    seekCommand = [nowPlayingItem seekCommand];
    preferredForwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
LABEL_5:
    v6 = preferredForwardJumpIntervals;
    firstObject = [preferredForwardJumpIntervals firstObject];
    [firstObject doubleValue];
    v9 = v8;

    return v9;
  }

  return 0.0;
}

- (id)skipIntervalButtonImageForInterval:(double)interval
{
  v4 = @"gobackward";
  if (interval > 0.0)
  {
    v4 = @"goforward";
  }

  v5 = v4;
  v6 = [NSNumber numberWithDouble:fabs(interval)];
  v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];

  v8 = [UIImage systemImageNamed:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [UIImage systemImageNamed:v5];
  }

  v11 = v10;

  return v11;
}

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)controller
{
  controllerCopy = controller;
  favoriteButton = [(MCDNowPlayingContentManager *)self favoriteButton];

  v6 = &_s8MusicKit5GenreVSeAAMc_ptr;
  if (!favoriteButton)
  {
    v7 = objc_opt_new();
    [(MCDNowPlayingContentManager *)self setFavoriteButton:v7];

    v8 = [UIImage _systemImageNamed:@"star"];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
    v10 = [v8 imageWithSymbolConfiguration:v9];

    favoriteButton2 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [favoriteButton2 setImage:v10 forState:0];

    favoriteButton3 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v13 = +[UIColor labelColor];
    v14 = [v13 colorWithAlphaComponent:0.2];
    v15 = [v10 imageWithTintColor:v14];
    [favoriteButton3 setImage:v15 forState:1];

    favoriteButton4 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v17 = +[UIColor labelColor];
    v18 = [v17 colorWithAlphaComponent:0.2];
    v19 = [v10 imageWithTintColor:v18];
    [favoriteButton4 setImage:v19 forState:8];

    v20 = [UIImage _systemImageNamed:@"star.fill"];
    v21 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
    v22 = [v20 imageWithSymbolConfiguration:v21];

    favoriteButton5 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [favoriteButton5 setImage:v22 forState:4];

    favoriteButton6 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v25 = +[UIColor labelColor];
    v26 = [v25 colorWithAlphaComponent:0.2];
    v27 = [v22 imageWithTintColor:v26];
    [favoriteButton6 setImage:v27 forState:5];

    favoriteButton7 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v29 = +[UIColor labelColor];
    v30 = [v29 colorWithAlphaComponent:0.2];
    v31 = [v22 imageWithTintColor:v30];
    [favoriteButton7 setImage:v31 forState:12];

    favoriteButton8 = [(MCDNowPlayingContentManager *)self favoriteButton];
    imageView = [favoriteButton8 imageView];
    [imageView setContentMode:1];

    v34 = MCDCarDisplayBundle();
    v35 = [v34 localizedStringForKey:@"ACCESSIBILITY_FAVORITE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v55[0] = v35;
    v36 = MCDCarDisplayBundle();
    v37 = [v36 localizedStringForKey:@"ACCESSIBILITY_STAR" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v55[1] = v37;
    v38 = [NSArray arrayWithObjects:v55 count:2];
    favoriteButton9 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [favoriteButton9 setAccessibilityUserInputLabels:v38];

    v6 = &_s8MusicKit5GenreVSeAAMc_ptr;
  }

  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  playingItem = [tracklist playingItem];
  likeCommand = [playingItem likeCommand];

  LODWORD(playingItem) = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
  favoriteButton10 = [(MCDNowPlayingContentManager *)self favoriteButton];
  favoriteButton11 = favoriteButton10;
  if (playingItem && likeCommand)
  {
    [favoriteButton10 setHidden:0];

    favoriteButton11 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [favoriteButton11 setSelected:{objc_msgSend(likeCommand, "value")}];
  }

  else
  {
    [favoriteButton10 setHidden:1];
  }

  playModeControlView = [controllerCopy playModeControlView];
  shuffleButton = [playModeControlView shuffleButton];
  v54[0] = shuffleButton;
  playModeControlView2 = [controllerCopy playModeControlView];
  repeatButton = [playModeControlView2 repeatButton];
  v54[1] = repeatButton;
  favoriteButton12 = [(MCDNowPlayingContentManager *)self favoriteButton];
  v54[2] = favoriteButton12;
  playModeControlView3 = [controllerCopy playModeControlView];

  moreButton = [playModeControlView3 moreButton];
  v54[3] = moreButton;
  v52 = [v6[287] arrayWithObjects:v54 count:4];

  return v52;
}

- (void)nowPlayingViewController:(id)controller didSelectButton:(id)button
{
  buttonCopy = button;
  favoriteButton = [(MCDNowPlayingContentManager *)self favoriteButton];

  if (favoriteButton == buttonCopy)
  {
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    playingItem = [tracklist playingItem];
    likeCommand = [playingItem likeCommand];

    v9 = [likeCommand changeValue:{objc_msgSend(likeCommand, "value") ^ 1}];
    [MPCPlayerChangeRequest performRequest:v9 options:0x10000 completion:0];
    favoriteButton2 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [favoriteButton2 setSelected:{objc_msgSend(likeCommand, "value") ^ 1}];
  }
}

- (BOOL)_showStopForCenterTransportCommand
{
  lastReceivedResponse = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
  stop = [lastReceivedResponse stop];
  if (stop)
  {
    nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    v6 = nowPlayingItem;
    if (nowPlayingItem)
    {
      [nowPlayingItem duration];
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)nowPlayingViewController:(id)controller buttonShouldBeActive:(int64_t)active
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  changeItemCommand = [tracklist changeItemCommand];

  tracklist2 = [(MCDNowPlayingContentManager *)self tracklist];
  playingItem = [tracklist2 playingItem];
  seekCommand = [playingItem seekCommand];

  if (active == 1)
  {
    nextItem = [changeItemCommand nextItem];
    if (!nextItem)
    {
      nextChapter = [changeItemCommand nextChapter];
      if (!nextChapter)
      {
        nextSection = [changeItemCommand nextSection];
        if (!nextSection)
        {
          preferredForwardJumpIntervals = [seekCommand preferredForwardJumpIntervals];
          goto LABEL_15;
        }

LABEL_13:
        v15 = 1;
LABEL_16:

        goto LABEL_17;
      }

LABEL_11:
      v15 = 1;
LABEL_17:

      goto LABEL_18;
    }

LABEL_8:
    v15 = 1;
LABEL_18:

    goto LABEL_19;
  }

  if (!active)
  {
    nextItem = [changeItemCommand previousItem];
    if (!nextItem)
    {
      nextChapter = [changeItemCommand previousChapter];
      if (!nextChapter)
      {
        nextSection = [changeItemCommand previousSection];
        if (!nextSection)
        {
          preferredForwardJumpIntervals = [seekCommand preferredBackwardJumpIntervals];
LABEL_15:
          v16 = preferredForwardJumpIntervals;
          v15 = [preferredForwardJumpIntervals count] != 0;

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v15 = 1;
LABEL_19:

  return v15;
}

- (BOOL)nowPlayingViewController:(id)controller shouldDisplayButton:(int64_t)button withImage:(id *)image existingIdentifier:(id)identifier tinted:(BOOL *)tinted
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (button)
  {
    if (button != 1)
    {
      if (button == 2)
      {
        if ([(_MCDNowPlayingContentManager *)self->_impl nowPlayingViewControllerIsPlaying:controllerCopy])
        {
          _showStopForCenterTransportCommand = [(MCDNowPlayingContentManager *)self _showStopForCenterTransportCommand];
          v14 = MCDMusicGeneralLogging();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (_showStopForCenterTransportCommand)
          {
            if (v15)
            {
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing stop button", v30, 2u);
            }

            transportControlView = [controllerCopy transportControlView];
            [transportControlView setPauseButtonImageName:@"square.fill"];

            v17 = MCDCarDisplayBundle();
            v18 = [v17 localizedStringForKey:@"ACCESSIBILITY_STOP" value:&stru_101107168 table:@"MusicCarDisplayUI"];
            v33 = v18;
            v19 = &v33;
          }

          else
          {
            if (v15)
            {
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing pause button", v30, 2u);
            }

            transportControlView2 = [controllerCopy transportControlView];
            [transportControlView2 setPauseButtonImageName:@"pause.fill"];

            v17 = MCDCarDisplayBundle();
            v18 = [v17 localizedStringForKey:@"ACCESSIBILITY_PAUSE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
            v32 = v18;
            v19 = &v32;
          }
        }

        else
        {
          v23 = MCDMusicGeneralLogging();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Showing play button", v30, 2u);
          }

          transportControlView3 = [controllerCopy transportControlView];
          [transportControlView3 setPlayButtonImageName:@"play.fill"];

          v17 = MCDCarDisplayBundle();
          v18 = [v17 localizedStringForKey:@"ACCESSIBILITY_PLAY" value:&stru_101107168 table:@"MusicCarDisplayUI"];
          v31 = v18;
          v19 = &v31;
        }

        v26 = [NSArray arrayWithObjects:v19 count:1];
        transportControlView4 = [controllerCopy transportControlView];
        playPauseButton = [transportControlView4 playPauseButton];
        [playPauseButton setAccessibilityUserInputLabels:v26];
      }

      goto LABEL_20;
    }

    selfCopy2 = self;
    v21 = 2;
  }

  else
  {
    selfCopy2 = self;
    v21 = -2;
  }

  [(MCDNowPlayingContentManager *)selfCopy2 preferredJumpIntervalForDirection:v21];
  if (v22 != 0.0)
  {
    *image = [(MCDNowPlayingContentManager *)self skipIntervalButtonImageForInterval:?];
  }

LABEL_20:

  return 1;
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)library
{
  v4 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  subscriptionCapabilities = [v4 subscriptionCapabilities];

  if ((subscriptionCapabilities & 0x200) != 0)
  {
    libraryAddObserver = [(MCDNowPlayingContentManager *)self libraryAddObserver];
    isSongAddable = [libraryAddObserver isSongAddable];

    return isSongAddable;
  }

  else
  {
    v6 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Subscriber cannot add catalog content to their Cloud Library, hiding Add Library button from Now Playing", v10, 2u);
    }

    return 0;
  }
}

- (void)nowPlayingViewControllerAddToLibrary:(id)library
{
  libraryAddObserver = [(MCDNowPlayingContentManager *)self libraryAddObserver];
  [libraryAddObserver addSongToLibrary];
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)more
{
  _itemCanCreateRadioStation = [(MCDNowPlayingContentManager *)self _itemCanCreateRadioStation];
  _showAddToLibraryOptions = [(MCDNowPlayingContentManager *)self _showAddToLibraryOptions];
  if ([(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong])
  {
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    playingItem = [tracklist playingItem];
    dislikeCommand = [playingItem dislikeCommand];
    if (dislikeCommand)
    {
      nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      metadataObject = [nowPlayingItem metadataObject];
      flattenedGenericObject = [metadataObject flattenedGenericObject];
      song = [flattenedGenericObject song];
      v13 = [song isFavorite] ^ 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109632;
    v16[1] = _itemCanCreateRadioStation;
    v17 = 1024;
    v18 = _showAddToLibraryOptions;
    v19 = 1024;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Show CTA: Create Station: %d, Add to Library: %d, allowsTasteActions: %d", v16, 0x14u);
  }

  return (_itemCanCreateRadioStation | _showAddToLibraryOptions | v13) & 1;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)drive
{
  carSessionStatus = [(MCDNowPlayingContentManager *)self carSessionStatus];
  currentSession = [carSessionStatus currentSession];
  configuration = [currentSession configuration];
  rightHandDrive = [configuration rightHandDrive];

  return rightHandDrive;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)link
{
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  album = [currentPlayingSong album];
  v5 = album != 0;

  return v5;
}

- (BOOL)prefersCatalogContainerNavigationForPlayingSong
{
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  album = [currentPlayingSong album];
  identifiers = [album identifiers];
  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  if (adamID || ([identifiers universalStore], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "subscriptionAdamID"), v8, v9))
  {
    v10 = 0;
  }

  else
  {
    universalStore2 = [identifiers universalStore];
    purchasedAdamID = [universalStore2 purchasedAdamID];

    v10 = purchasedAdamID == 0;
  }

  v11 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  subscriptionCapabilities = [v11 subscriptionCapabilities];

  if (v10)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = ![(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAdded]& subscriptionCapabilities;
  }

  return v13;
}

- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  album = [currentPlayingSong album];

  LODWORD(self) = [(MCDNowPlayingContentManager *)self prefersCatalogContainerNavigationForPlayingSong];
  v7 = [_TtC5Music27MCDItemDetailViewController alloc];
  if (self)
  {
    v8 = [(MCDItemDetailViewController *)v7 initWithAlbum:album onlyDownloaded:0 preferCatalog:1];
    v9 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v10 = "Album/Artist button tapped for remote album, pushing to album view from Now Playing";
      v11 = &v14;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

  else
  {
    v8 = [(MCDItemDetailViewController *)v7 initWithAlbum:album onlyDownloaded:0 preferCatalog:0];
    v9 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "Album/Artist button tapped for local album, pushing to album view from Now Playing";
      v11 = &v13;
      goto LABEL_6;
    }
  }

  [(MCDItemDetailViewController *)v8 setPlayActivityFeatureNameSourceViewController:tappedCopy];
  navigationController = [tappedCopy navigationController];

  [navigationController pushViewController:v8 animated:1];
}

- (BOOL)_itemCanCreateRadioStation
{
  v3 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  if (([v3 subscriptionCapabilities] & 1) != 0 && -[MCDNowPlayingContentManager _nowPlayingViewControllerIsFuseSubscriber](self, "_nowPlayingViewControllerIsFuseSubscriber"))
  {
    v4 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
    if ([v4 allowsRadioContent])
    {
      v5 = +[ICUserIdentityStore defaultIdentityStore];
      v6 = +[ICUserIdentity activeAccount];
      v7 = [v5 DSIDForUserIdentity:v6 outError:0];
      if ([v7 unsignedLongLongValue])
      {
        currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
        if ([currentPlayingSong hasVideo])
        {
          v9 = 0;
        }

        else
        {
          currentPlayingSong2 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
          identifiers = [currentPlayingSong2 identifiers];
          universalStore = [identifiers universalStore];
          if ([universalStore adamID])
          {
            v13 = [(MCDNowPlayingContentManager *)self _radioCommandRequestWithCurrentPlayingSongWithViewController:0];
            v9 = v13 != 0;
          }

          else
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_radioCommandRequestWithCurrentPlayingSongWithViewController:(id)controller
{
  controllerCopy = controller;
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v6 = [MPCPlaybackIntent radioPlaybackIntentFromSong:currentPlayingSong];

  combinedPlayActivityFeatureName = [controllerCopy combinedPlayActivityFeatureName];

  [v6 setPlayActivityFeatureName:combinedPlayActivityFeatureName];
  currentPlayingRadioStation = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];
  type = [currentPlayingRadioStation type];

  if (type != 4)
  {
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    insertCommand = [tracklist insertCommand];
    v14 = [insertCommand insertAfterPlayingItemWithPlaybackIntent:v6];
    goto LABEL_5;
  }

  currentPlayingSong2 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  isLibraryAddEligible = [currentPlayingSong2 isLibraryAddEligible];

  if (isLibraryAddEligible)
  {
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    insertCommand = [tracklist resetCommand];
    v14 = [insertCommand replaceWithPlaybackIntent:v6];
LABEL_5:
    v15 = v14;

    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (void)_addItemsToLibrary
{
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v3 setOverrideUserInterfaceStyle:2];
  objc_initWeak(&location, self);
  if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isSongAddable]|| [(MCDLibraryAddObserver *)self->_libraryAddObserver isSongAdded])
  {
    v4 = MCDCarDisplayBundle();
    if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isSongAdded])
    {
      v5 = @"LIBRARY_SONG_ADDED";
    }

    else
    {
      v5 = @"LIBRARY_ADD_SONG";
    }

    v6 = [v4 localizedStringForKey:v5 value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000F7CBC;
    v28[3] = &unk_101098388;
    objc_copyWeak(&v29, &location);
    v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v28];

    [v7 setEnabled:{-[MCDLibraryAddObserver isSongAdded](self->_libraryAddObserver, "isSongAdded") ^ 1}];
    [v3 addAction:v7];

    objc_destroyWeak(&v29);
  }

  if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAddable]|| [(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAdded])
  {
    v8 = MCDCarDisplayBundle();
    if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAdded])
    {
      v9 = @"LIBRARY_ALBUM_ADDED";
    }

    else
    {
      v9 = @"LIBRARY_ADD_ALBUM";
    }

    v10 = [v8 localizedStringForKey:v9 value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000F7D14;
    v26[3] = &unk_101098388;
    objc_copyWeak(&v27, &location);
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v26];

    [v11 setEnabled:{-[MCDLibraryAddObserver isAlbumAdded](self->_libraryAddObserver, "isAlbumAdded") ^ 1}];
    [v3 addAction:v11];

    objc_destroyWeak(&v27);
  }

  if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isPlaylistAddable]|| [(MCDLibraryAddObserver *)self->_libraryAddObserver isPlaylistAdded])
  {
    v12 = MCDCarDisplayBundle();
    if ([(MCDLibraryAddObserver *)self->_libraryAddObserver isPlaylistAdded])
    {
      v13 = @"LIBRARY_PLAYLIST_ADDED";
    }

    else
    {
      v13 = @"LIBRARY_ADD_PLAYLIST";
    }

    v14 = [v12 localizedStringForKey:v13 value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000F7D6C;
    v24 = &unk_101098388;
    objc_copyWeak(&v25, &location);
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&v21];

    [v15 setEnabled:{-[MCDLibraryAddObserver isPlaylistAdded](self->_libraryAddObserver, "isPlaylistAdded", v21, v22, v23, v24) ^ 1}];
    [v3 addAction:v15];

    objc_destroyWeak(&v25);
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Cancel" value:&stru_101107168 table:0];
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:0];
  [v3 addAction:v18];

  delegate = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v17) = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(MCDNowPlayingContentManager *)self delegate];
    [delegate2 contentManager:self->_impl presentViewController:v3];
  }

  objc_destroyWeak(&location);
}

- (BOOL)_showAddToLibraryOptions
{
  v3 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  subscriptionCapabilities = [v3 subscriptionCapabilities];

  if ((subscriptionCapabilities & 0x200) != 0)
  {
    isSongAddable = [(MCDLibraryAddObserver *)self->_libraryAddObserver isSongAddable];
    isAlbumAddable = [(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAddable];
    isPlaylistAddable = [(MCDLibraryAddObserver *)self->_libraryAddObserver isPlaylistAddable];
    v6 = isSongAddable | isAlbumAddable | isPlaylistAddable;
    v5 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109888;
      v11[1] = v6 & 1;
      v12 = 1024;
      v13 = isSongAddable;
      v14 = 1024;
      v15 = isAlbumAddable & 1;
      v16 = 1024;
      v17 = isPlaylistAddable & 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_showAddToLibraryOptions returning %d (derived from isSongAddable=%d || isAlbumAddable=%d || isPlaylistAddable=%d)", v11, 0x1Au);
    }
  }

  else
  {
    v5 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
    }

    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_allowsTasteActionsForGenericObject:(id)object
{
  objectCopy = object;
  if ([objectCopy type] == 1)
  {
    anyObject = [objectCopy anyObject];
    currentPlayingRadioStation = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];
    type = [currentPlayingRadioStation type];

    if (type == 4 && ![anyObject isLibraryAddEligible])
    {
      shouldShowFavoriteSong = 0;
    }

    else if ([(MCDNowPlayingContentManager *)self _showAddToLibraryOptions]|| [(MCDNowPlayingContentManager *)self _itemCanCreateRadioStation])
    {
      shouldShowFavoriteSong = 1;
    }

    else
    {
      shouldShowFavoriteSong = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
    }
  }

  else
  {
    shouldShowFavoriteSong = 0;
  }

  return shouldShowFavoriteSong;
}

- (void)nowPlayingViewControllerMore:(id)more
{
  moreCopy = more;
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v5 setOverrideUserInterfaceStyle:2];
  objc_initWeak(location, self);
  currentAttributionMetadata = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
  if (currentAttributionMetadata)
  {
    v7 = [(MCDNowPlayingContentManager *)self nowPlayingViewControllerCanShowAlbumLink:moreCopy];

    if (v7)
    {
      v8 = [UIImage _systemImageNamed:@"music.square"];
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"Go to Album" value:&stru_101107168 table:0];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000F8790;
      v53[3] = &unk_1010983B0;
      objc_copyWeak(&v55, location);
      v54 = moreCopy;
      v11 = [UIAlertAction actionWithTitle:v10 image:v8 handler:v53];

      [v5 addAction:v11];
      objc_destroyWeak(&v55);
    }
  }

  if ([(MCDNowPlayingContentManager *)self _showAddToLibraryOptions])
  {
    v12 = [UIImage systemImageNamed:@"plus"];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Add to Library" value:&stru_101107168 table:0];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000F87E0;
    v51[3] = &unk_101098388;
    objc_copyWeak(&v52, location);
    v15 = [UIAlertAction actionWithTitle:v14 image:v12 handler:v51];

    [v5 addAction:v15];
    objc_destroyWeak(&v52);
  }

  if ([(MCDNowPlayingContentManager *)self _itemCanCreateRadioStation])
  {
    v16 = [(MCDNowPlayingContentManager *)self _radioCommandRequestWithCurrentPlayingSongWithViewController:moreCopy];
    v17 = [[MCDPlaybackManager alloc] initWithDelegate:self];
    v18 = [UIImage systemImageNamed:@"badge.plus.radiowaves.right"];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Create Station" value:&stru_101107168 table:0];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000F8820;
    v48[3] = &unk_1010983D8;
    v21 = v17;
    v49 = v21;
    v22 = v16;
    v50 = v22;
    v23 = [UIAlertAction actionWithTitle:v20 image:v18 handler:v48];

    [v5 addAction:v23];
  }

  nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  metadataObject = [nowPlayingItem metadataObject];
  flattenedGenericObject = [metadataObject flattenedGenericObject];

  song = [flattenedGenericObject song];
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  playingItem = [tracklist playingItem];
  dislikeCommand = [playingItem dislikeCommand];

  shouldShowFavoriteSong = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
  if (dislikeCommand)
  {
    v32 = shouldShowFavoriteSong;
  }

  else
  {
    v32 = 0;
  }

  if (v32 == 1 && ([song isFavorite] & 1) == 0)
  {
    if ([song isDisliked])
    {
      v33 = [UIImage systemImageNamed:@"hand.thumbsdown.slash"];
      v34 = +[NSBundle mainBundle];
      v35 = [v34 localizedStringForKey:@"Undo Suggest Less" value:&stru_101107168 table:0];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000F882C;
      v47[3] = &unk_1010983D8;
      v47[4] = self;
      v47[5] = song;
      v36 = [UIAlertAction actionWithTitle:v35 image:v33 handler:v47];

      [v5 addAction:v36];
      v37 = v47;
    }

    else
    {
      v33 = [UIImage systemImageNamed:@"hand.thumbsdown"];
      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@"Suggest Less" value:&stru_101107168 table:0];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000F883C;
      v46[3] = &unk_1010983D8;
      v46[4] = self;
      v46[5] = song;
      v36 = [UIAlertAction actionWithTitle:v39 image:v33 handler:v46];

      [v5 addAction:v36];
      v37 = v46;
    }

    v40 = (v37 + 5);
  }

  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"Cancel" value:&stru_101107168 table:0];
  v43 = [UIAlertAction actionWithTitle:v42 style:1 handler:0];
  [v5 addAction:v43];

  delegate = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v42) = objc_opt_respondsToSelector();

  if (v42)
  {
    delegate2 = [(MCDNowPlayingContentManager *)self delegate];
    [delegate2 contentManager:self->_impl presentViewController:v5];
  }

  objc_destroyWeak(location);
}

- (BOOL)nowPlayingViewControllerCanRepeat:(id)repeat
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  repeatCommand = [tracklist repeatCommand];
  v5 = repeatCommand != 0;

  return v5;
}

- (void)nowPlayingViewControllerToggleRepeat:(id)repeat
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  repeatCommand = [tracklist repeatCommand];
  advance = [repeatCommand advance];
  [(MCDNowPlayingContentManager *)self _performChangeRequest:advance];
}

- (BOOL)nowPlayingViewControllerCanShuffle:(id)shuffle
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  shuffleCommand = [tracklist shuffleCommand];
  v5 = shuffleCommand != 0;

  return v5;
}

- (void)nowPlayingViewControllerToggleShuffle:(id)shuffle
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  shuffleCommand = [tracklist shuffleCommand];
  advance = [shuffleCommand advance];
  [(MCDNowPlayingContentManager *)self _performChangeRequest:advance];
}

- (BOOL)_nowPlayingViewControllerIsFuseSubscriber
{
  v2 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v3 = [v2 userSubscriptionState] == 2;

  return v3;
}

- (void)nowPlayingViewController:(id)controller didSendAction:(int64_t)action state:(int64_t)state
{
  controllerCopy = controller;
  v32 = controllerCopy;
  if (!action)
  {
    if (state == 2)
    {
      if ([(MCDNowPlayingContentManager *)self seeking])
      {
        goto LABEL_20;
      }
    }

    else if (state == 1)
    {
      nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      seekCommand = [nowPlayingItem seekCommand];
      v15 = seekCommand;
      v16 = -1;
      goto LABEL_14;
    }

    [(MCDNowPlayingContentManager *)self preferredJumpIntervalForDirection:-2];
    selfCopy4 = self;
    if (v27 == 0.0)
    {
      tracklist = [(MCDNowPlayingContentManager *)self tracklist];
      changeItemCommand = [tracklist changeItemCommand];
      previousItem = [changeItemCommand previousItem];
      goto LABEL_30;
    }

    v22 = -2;
    goto LABEL_25;
  }

  if (action != 1)
  {
    if (action == 2)
    {
      if ([(_MCDNowPlayingContentManager *)self->_impl nowPlayingViewControllerIsPlaying:controllerCopy])
      {
        _showStopForCenterTransportCommand = [(MCDNowPlayingContentManager *)self _showStopForCenterTransportCommand];
        lastReceivedResponse = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
        tracklist = lastReceivedResponse;
        if (_showStopForCenterTransportCommand)
        {
          [lastReceivedResponse stop];
        }

        else
        {
          [lastReceivedResponse pause];
        }
        play = ;
      }

      else
      {
        tracklist = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
        play = [tracklist play];
      }

      v26 = play;
      goto LABEL_31;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_32;
  }

  if (state != 2)
  {
    if (state == 1)
    {
      nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      seekCommand = [nowPlayingItem seekCommand];
      v15 = seekCommand;
      v16 = 1;
LABEL_14:
      v17 = [seekCommand beginSeekWithDirection:v16];
      [(MCDNowPlayingContentManager *)self _performChangeRequest:v17];

      selfCopy3 = self;
      v19 = 1;
LABEL_21:
      [(MCDNowPlayingContentManager *)selfCopy3 setSeeking:v19];
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if ([(MCDNowPlayingContentManager *)self seeking])
  {
LABEL_20:
    nowPlayingItem2 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    seekCommand2 = [nowPlayingItem2 seekCommand];
    endSeek = [seekCommand2 endSeek];
    [(MCDNowPlayingContentManager *)self _performChangeRequest:endSeek];

    selfCopy3 = self;
    v19 = 0;
    goto LABEL_21;
  }

LABEL_17:
  [(MCDNowPlayingContentManager *)self preferredJumpIntervalForDirection:2];
  selfCopy4 = self;
  if (v21 == 0.0)
  {
    tracklist = [(MCDNowPlayingContentManager *)self tracklist];
    changeItemCommand = [tracklist changeItemCommand];
    previousItem = [changeItemCommand nextItem];
    goto LABEL_30;
  }

  v22 = 2;
LABEL_25:
  [(MCDNowPlayingContentManager *)selfCopy4 preferredJumpIntervalForDirection:v22];
  v29 = v28;
  tracklist = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  changeItemCommand = [tracklist seekCommand];
  previousItem = [changeItemCommand jumpByInterval:v29];
LABEL_30:
  v26 = previousItem;

LABEL_31:
LABEL_32:
  [(MCDNowPlayingContentManager *)self _performChangeRequest:v26];
}

- (void)nowPlayingViewControllerAttributionButtonTapped:(id)tapped
{
  v4 = +[UIApplication sharePlayTogetherObjCViewModel];
  isActive = [v4 isActive];

  if (isActive)
  {
    v6 = [_TtC5Music41MCDSharePlayTogetherSessionViewController alloc];
    currentPlayingPlaylist = +[UIApplication sharePlayTogetherObjCViewModel];
    v8 = [(MCDSharePlayTogetherSessionViewController *)v6 initWithViewModel:currentPlayingPlaylist];
  }

  else
  {
    v9 = [MCDPlaylistTracksTableViewController alloc];
    currentPlayingPlaylist = [(MCDNowPlayingContentManager *)self currentPlayingPlaylist];
    v8 = [(MCDPlaylistTracksTableViewController *)v9 initWithPlaylist:currentPlayingPlaylist showLocalContent:0];
  }

  v11 = v8;

  contentManagerDelegate = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [contentManagerDelegate contentManager:self->_impl pushViewController:v11];
}

- (NSString)nowPlayingBundleID
{
  nowPlayingBundleID = [(_MCDNowPlayingContentManager *)self->_impl nowPlayingBundleID];
  v3 = [nowPlayingBundleID copy];

  return v3;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)controller
{
  result = self->_impl;
  if (result)
  {
    return [($04B05C73ED6AEEF31C5815932084562D *)result durationSnapshotForNowPlayingViewController:a4];
  }

  *&retstr->var7 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return result;
}

- (int64_t)shuffleTypeForNowPlayingViewController:(id)controller
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  shuffleType = [tracklist shuffleType];

  return shuffleType;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)controller
{
  tracklist = [(MCDNowPlayingContentManager *)self tracklist];
  repeatType = [tracklist repeatType];

  return repeatType;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)controller
{
  nowPlayingItem = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = nowPlayingItem;
  if (nowPlayingItem)
  {
    [nowPlayingItem duration];
    if (v7)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributionTitleForNowPlayingViewController:(id)controller
{
  currentAttributionMetadata = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
  displayName = [currentAttributionMetadata displayName];

  return displayName;
}

- (int64_t)videoPlaybackStateForNowPlayingController:(id)controller
{
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  if ([currentPlayingSong hasVideo])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)contentManager:(id)manager processResponse:(id)response error:(id)error
{
  managerCopy = manager;
  responseCopy = response;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v12 contentManager:managerCopy processResponse:responseCopy error:errorCopy];
  }

  [(MCDNowPlayingContentManager *)self _processResponse:responseCopy error:errorCopy];
}

- (void)contentManager:(id)manager shouldShowPlaybackQueue:(BOOL)queue
{
  queueCopy = queue;
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v8 contentManager:managerCopy shouldShowPlaybackQueue:queueCopy];
  }
}

- (void)contentManagerReloadData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerReloadData:dataCopy];
  }
}

- (void)contentManager:(id)manager presentViewController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v9 contentManager:managerCopy presentViewController:controllerCopy];
  }
}

- (void)contentManager:(id)manager bufferingItem:(BOOL)item
{
  itemCopy = item;
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v8 contentManager:managerCopy bufferingItem:itemCopy];
  }
}

- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)queue
{
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerInitiatedPlaybackFromPlaybackQueue:queueCopy];
  }
}

- (void)contentManager:(id)manager displayItemIndex:(int64_t)index totalItemCount:(int64_t)count
{
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v10 contentManager:managerCopy displayItemIndex:index totalItemCount:count];
  }
}

- (void)contentManagerCompletedAllPlayback:(id)playback
{
  playbackCopy = playback;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerCompletedAllPlayback:playbackCopy];
  }
}

- (void)contentManager:(id)manager sectionName:(id)name
{
  managerCopy = manager;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v9 contentManager:managerCopy sectionName:nameCopy];
  }
}

- (void)contentManager:(id)manager itemDidChange:(id)change response:(id)response
{
  managerCopy = manager;
  changeCopy = change;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v12 contentManager:managerCopy itemDidChange:changeCopy response:responseCopy];
  }
}

- (BOOL)currentPlayingSongFoundIn:(id)in
{
  inCopy = in;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F9728;
  v6[3] = &unk_101098400;
  v6[4] = self;
  v6[5] = &v7;
  [inCopy enumerateItemIdentifiersUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum
{
  currentPlayingSong = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  album = [currentPlayingSong album];
  currentPlayingAlbum = [(MCDNowPlayingContentManager *)self currentPlayingAlbum];
  identifiers = [currentPlayingAlbum identifiers];
  identifiers2 = [album identifiers];
  v8 = [identifiers intersectsSet:identifiers2];

  if ((v8 & 1) == 0)
  {
    [(MCDNowPlayingContentManager *)self setCurrentPlayingAlbum:album];
    if (currentPlayingSong)
    {
      if (album)
      {
        v9 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:album storeContent:0];
        v10 = [(_MCDContentManager *)[MCDLibraryContentManager alloc] initWithDataSource:v9 delegate:0];
        objc_initWeak(&location, self);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000F995C;
        v11[3] = &unk_101098428;
        objc_copyWeak(&v13, &location);
        v11[4] = self;
        v12 = album;
        [(_MCDContentManager *)v10 performRequest:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)performFavoriteChangeRequestFor:(id)for action:(int64_t)action
{
  forCopy = for;
  v6 = objc_alloc_init(MPModelLibraryFavoriteEntityChangeRequest);
  [v6 setModelObject:forCopy];

  v7 = [[MPModelLibraryFavoriteEntityRequestAction alloc] initWithChangeAction:action];
  [v6 setRequestAction:v7];

  v8 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F9B10;
  v9[3] = &unk_101098448;
  v9[4] = action;
  [v8 performFavoriteStateChangeRequest:v6 withRelatedModelObjects:0 completion:v9];
}

- (void)sharePlayTogetherButtonTapped
{
  v3 = [_TtC5Music41MCDSharePlayTogetherSessionViewController alloc];
  v4 = +[UIApplication sharePlayTogetherObjCViewModel];
  v6 = [(MCDSharePlayTogetherSessionViewController *)v3 initWithViewModel:v4];

  contentManagerDelegate = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [contentManagerDelegate contentManager:self->_impl pushViewController:v6];
}

@end