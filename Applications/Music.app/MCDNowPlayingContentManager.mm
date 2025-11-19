@interface MCDNowPlayingContentManager
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3;
- (BOOL)_allowsTasteActionsForGenericObject:(id)a3;
- (BOOL)_itemCanCreateRadioStation;
- (BOOL)_nowPlayingViewControllerIsFuseSubscriber;
- (BOOL)_showAddToLibraryOptions;
- (BOOL)_showStopForCenterTransportCommand;
- (BOOL)currentPlayingSongFoundIn:(id)a3;
- (BOOL)isAutoplaySectionAtIndex:(int64_t)a3;
- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4;
- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7;
- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)a3;
- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3;
- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3;
- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3;
- (BOOL)prefersCatalogContainerNavigationForPlayingSong;
- (MCDNowPlayingContentManager)initWithDelegate:(id)a3 dataSource:(id)a4 bundleID:(id)a5;
- (MCDNowPlayingContentManagerDelegate)contentManagerDelegate;
- (NSString)nowPlayingBundleID;
- (double)preferredJumpIntervalForDirection:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_radioCommandRequestWithCurrentPlayingSongWithViewController:(id)a3;
- (id)attributionTitleForNowPlayingViewController:(id)a3;
- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3;
- (id)delegate;
- (id)sectionTypeAtIndex:(int64_t)a3;
- (id)skipIntervalButtonImageForInterval:(double)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3;
- (int64_t)repeatTypeForNowPlayingViewController:(id)a3;
- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)videoPlaybackStateForNowPlayingController:(id)a3;
- (void)_addItemsToLibrary;
- (void)_processResponse:(id)a3 error:(id)a4;
- (void)_subscriptionCapabilitiesChanged:(id)a3;
- (void)contentManager:(id)a3 bufferingItem:(BOOL)a4;
- (void)contentManager:(id)a3 displayItemIndex:(int64_t)a4 totalItemCount:(int64_t)a5;
- (void)contentManager:(id)a3 itemDidChange:(id)a4 response:(id)a5;
- (void)contentManager:(id)a3 presentViewController:(id)a4;
- (void)contentManager:(id)a3 processResponse:(id)a4 error:(id)a5;
- (void)contentManager:(id)a3 sectionName:(id)a4;
- (void)contentManager:(id)a3 shouldShowPlaybackQueue:(BOOL)a4;
- (void)contentManagerCompletedAllPlayback:(id)a3;
- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)a3;
- (void)contentManagerReloadData:(id)a3;
- (void)dealloc;
- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4;
- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5;
- (void)nowPlayingViewControllerAddToLibrary:(id)a3;
- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)a3;
- (void)nowPlayingViewControllerAttributionButtonTapped:(id)a3;
- (void)nowPlayingViewControllerMore:(id)a3;
- (void)nowPlayingViewControllerToggleRepeat:(id)a3;
- (void)nowPlayingViewControllerToggleShuffle:(id)a3;
- (void)performFavoriteChangeRequestFor:(id)a3 action:(int64_t)a4;
- (void)playbackManager:(id)a3 shouldShowError:(id)a4;
- (void)reloadData;
- (void)requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum;
- (void)setCurrentAttributionCatalog:(id)a3;
- (void)setCurrentAttributionMetadata:(id)a3;
- (void)setTableView:(id)a3;
- (void)sharePlayTogetherButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v4 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];

    if (!v4)
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

    v6 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [v6 setNeedsUpdateConfiguration];

    v7 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [v7 sizeToFit];

    v8 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [v8 sizeThatFits:{INFINITY, 26.0}];
    v10 = v9;
    v12 = v11;

    if (v10 < 48.0)
    {
      v10 = 48.0;
    }

    v13 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    [v13 setFrame:{0.0, 0.0, v10, v12}];

    if ([v3 pendingParticipantsCount] < 1)
    {
      [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsView:0];
    }

    else
    {
      v14 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];

      if (!v14)
      {
        v15 = objc_opt_new();
        v16 = [[UIView alloc] initWithFrame:{0.0, 10.5, 5.0, 5.0}];
        v17 = [v16 layer];
        [v17 setCornerRadius:2.5];

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
      v24 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v24 setText:v23];

      v25 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v25 sizeToFit];

      v26 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v26 frame];
      MinX = CGRectGetMinX(v48);
      v28 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v28 frame];
      v29 = (26.0 - CGRectGetHeight(v49)) * 0.5;
      v30 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v30 frame];
      Width = CGRectGetWidth(v50);
      v32 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v32 frame];
      Height = CGRectGetHeight(v51);
      v34 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v34 setFrame:{MinX, v29, Width, Height}];

      v35 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsLabel];
      [v35 frame];
      MaxX = CGRectGetMaxX(v52);
      v37 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];
      [v37 setFrame:{0.0, 0.0, MaxX, 26.0}];
    }

    [(MCDNowPlayingContentManager *)self updateBarButtonItems];
    v38 = [(MCDNowPlayingContentManager *)self tableView];
    [v38 reloadData];
  }

  else
  {
    [(MCDNowPlayingContentManager *)self setSharePlayTogetherButton:0];
    [(MCDNowPlayingContentManager *)self setSharePlayTogetherPendingParticipantsView:0];
    [(MCDNowPlayingContentManager *)self updateBarButtonItems];
    v38 = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
    [v38 contentManagerReloadData:self->_impl];
  }

  v39 = [(MCDNowPlayingContentManager *)self tracklist];
  v40 = [v39 playingItemIndexPath];

  if (v40)
  {
    v41 = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
    v42 = [(MCDNowPlayingContentManager *)self tracklist];
    v43 = [v42 items];
    v44 = [v43 itemAtIndexPath:v40];
    v45 = [v41 attributionMetadataFor:v44];
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
  v3 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];

  if (v3)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [(MCDNowPlayingContentManager *)self sharePlayTogetherButton];
    v6 = [v4 initWithCustomView:v5];

    [v12 addObject:v6];
  }

  v7 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];

  if (v7)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = [(MCDNowPlayingContentManager *)self sharePlayTogetherPendingParticipantsView];
    v10 = [v8 initWithCustomView:v9];

    [v12 addObject:v10];
  }

  v11 = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [v11 contentManager:self->_impl setAdditionalBarButtonItems:v12];
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

- (MCDNowPlayingContentManager)initWithDelegate:(id)a3 dataSource:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = MCDNowPlayingContentManager;
  v11 = [(MCDNowPlayingContentManager *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_contentManagerDelegate, v8);
    v13 = [[_MCDNowPlayingContentManager alloc] initWithDelegate:v12 dataSource:v9 bundleID:v10];
    impl = v12->_impl;
    v12->_impl = v13;

    v15 = objc_alloc_init(MCDLibraryAddObserver);
    libraryAddObserver = v12->_libraryAddObserver;
    v12->_libraryAddObserver = v15;

    v17 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
    carSessionStatus = v12->_carSessionStatus;
    v12->_carSessionStatus = v17;

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
  v3 = [(MCDNowPlayingContentManager *)self siriDirectActionSource];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MCDNowPlayingContentManager;
  [(MCDNowPlayingContentManager *)&v4 dealloc];
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  if (self->_tableView != v5)
  {
    v8 = v5;
    [(_MCDNowPlayingContentManager *)self->_impl setTableView:v5];
    objc_storeStrong(&self->_tableView, a3);
    v6 = [(MCDNowPlayingContentManager *)self tableCellClass];
    v7 = NSStringFromClass([(MCDNowPlayingContentManager *)self tableCellClass]);
    [(UITableView *)v8 registerClass:v6 forCellReuseIdentifier:v7];

    [(UITableView *)v8 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"autoplay"];
    [(UITableView *)v8 setDelegate:self];
    [(UITableView *)v8 setDataSource:self];
    [(UITableView *)v8 setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v8 setEstimatedRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v8 _setHeaderAndFooterViewsFloat:0];
    [(UITableView *)v8 reloadData];
    [(MCDNowPlayingContentManager *)self updateNoContentView];
    v5 = v8;
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

- (void)_processResponse:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = [v5 tracklist];
  [(MCDNowPlayingContentManager *)self setTracklist:v6];

  v7 = [(MCDNowPlayingContentManager *)self tracklist];
  v8 = [v7 displayItems];
  v43[0] = MPCPlayerResponseTracklistDisplaySectionUpNextItems;
  v43[1] = MPCPlayerResponseTracklistDisplaySectionNextItems;
  v43[2] = MPCPlayerResponseTracklistDisplaySectionAutoPlayItems;
  v9 = [NSArray arrayWithObjects:v43 count:3];
  v10 = [v8 filteredWithSections:v9];
  [(MCDNowPlayingContentManager *)self setFilteredItems:v10];

  [(MCDNowPlayingContentManager *)self requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum];
  v11 = [(MCDNowPlayingContentManager *)self libraryAddObserver];
  v12 = [(MCDNowPlayingContentManager *)self tracklist];
  [v11 updateRequestForTracklist:v12];

  v13 = [(MCDNowPlayingContentManager *)self tracklist];
  v14 = [v13 playingItemIndexPath];

  if (v14)
  {
    v15 = [(MCDNowPlayingContentManager *)self tracklist];
    v16 = [v15 items];
    v17 = [v16 itemAtIndexPath:v14];
    v18 = [v5 attributionMetadataFor:v17];
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:v18];

    v19 = [(MCDNowPlayingContentManager *)self tracklist];
    v20 = [v19 items];
    v21 = [v20 sectionAtIndex:{objc_msgSend(v14, "section")}];

    v22 = [v21 metadataObject];
    if ([v22 type] == 13)
    {
      v23 = [v22 radioStation];
      v24 = [v23 name];
      v25 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
      v26 = [v25 title];
      v27 = [v24 isEqualToString:v26];

      if ((v27 & 1) == 0)
      {
        v28 = [(MCDNowPlayingContentManager *)self delegate];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          v30 = MCDMusicGeneralLogging();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v22 radioStation];
            v32 = [v31 name];
            v41 = 138543362;
            v42 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting radio station: %{public}@", &v41, 0xCu);
          }

          v33 = [(MCDNowPlayingContentManager *)self delegate];
          impl = self->_impl;
          v35 = [v22 radioStation];
          v36 = [v35 name];
          [v33 contentManager:impl sectionName:v36];
        }
      }
    }
  }

  else
  {
    [(MCDNowPlayingContentManager *)self setCurrentAttributionMetadata:0];
  }

  [(MCDNowPlayingContentManager *)self updateBarButtonItems];
  v37 = [v5 state];
  if (v37 != [(MCDNowPlayingContentManager *)self playerState])
  {
    self->_playerState = v37;
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 postNotificationName:MCDPlaybackStateChangedNotification object:0];
  }

  v39 = [(MCDNowPlayingContentManager *)self tableView];

  if (v39)
  {
    v40 = [(MCDNowPlayingContentManager *)self tableView];
    [v40 reloadData];

    [(MCDNowPlayingContentManager *)self updateNoContentView];
  }
}

- (void)updateNoContentView
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v3 = [(MCDNowPlayingContentManager *)self filteredItems];
  if ([v3 totalItemCount])
  {

LABEL_5:
    v5 = [(MCDNowPlayingContentManager *)self tableView];
    [v5 setBackgroundView:0];

    [(MCDNowPlayingContentManager *)self setNoContentView:0];
    return;
  }

  v4 = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];

  if (v4)
  {
    goto LABEL_5;
  }

  v6 = [(MCDNowPlayingContentManager *)self noContentView];

  if (!v6)
  {
    v32 = objc_opt_new();
    [v32 setAutoresizingMask:18];
    v7 = [(MCDNowPlayingContentManager *)self tableView];
    [v7 frame];
    [v32 setFrame:?];

    v8 = [(MCDNowPlayingContentManager *)self tableView];
    [v8 setBackgroundView:v32];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"There’s no music in the queue." value:&stru_101107168 table:0];
    v11 = [_TtC5Music22CarPlayInformationView noContentWithTitle:v10 subtitle:0 buttonText:0 buttonAction:0 isCentered:1];
    [(MCDNowPlayingContentManager *)self setNoContentView:v11];

    v12 = [(MCDNowPlayingContentManager *)self noContentView];
    [v12 setAutoresizingMask:18];

    [v32 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(MCDNowPlayingContentManager *)self tableView];
    [v21 safeAreaInsets];
    v23 = v14 + v22;
    v25 = v16 + v24;
    v27 = v18 - (v22 + v26);
    v29 = v20 - (v24 + v28);
    v30 = [(MCDNowPlayingContentManager *)self noContentView];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [(MCDNowPlayingContentManager *)self noContentView];
    [v32 addSubview:v31];
  }
}

- (void)updateNoContentViewFrameIfNeeded
{
  v22 = [(MCDNowPlayingContentManager *)self tableView];
  v3 = [v22 backgroundView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MCDNowPlayingContentManager *)self tableView];
  [v12 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  v21 = [(MCDNowPlayingContentManager *)self noContentView];
  [v21 setFrame:{v14, v16, v18, v20}];
}

- (void)setCurrentAttributionMetadata:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_currentAttributionMetadata, a3);
  v5 = [v9 artworkCatalog];
  if (v5)
  {
    [(MCDNowPlayingContentManager *)self setCurrentAttributionCatalog:v5];
  }

  else
  {
    v6 = [v9 placeholderArtworkCatalog];
    [(MCDNowPlayingContentManager *)self setCurrentAttributionCatalog:v6];
  }

  v7 = [(MCDNowPlayingContentManager *)self delegate];
  v8 = [(MCDNowPlayingContentManager *)self impl];
  [v7 contentManagerReloadData:v8];
}

- (void)setCurrentAttributionCatalog:(id)a3
{
  v5 = a3;
  if (([v5 isArtworkVisuallyIdenticalToCatalog:self->_currentAttributionCatalog] & 1) == 0)
  {
    objc_storeStrong(&self->_currentAttributionCatalog, a3);
    [(MCDNowPlayingContentManager *)self setCurrentAttributionImage:0];
    v6 = +[UITraitCollection currentTraitCollection];
    [v6 displayScale];
    [v5 setDestinationScale:?];

    [v5 setFittingSize:{30.0, 30.0}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 setCacheIdentifier:v8 forCacheReference:self];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v5);
    v9 = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
    v10 = [v9 placeholderArtworkCatalog];
    v11 = [v5 isArtworkVisuallyIdenticalToCatalog:v10];

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
    [v5 setDestination:self configurationBlock:v13];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_subscriptionCapabilitiesChanged:(id)a3
{
  v4 = [(MCDNowPlayingContentManager *)self delegate];
  [v4 contentManagerReloadData:self->_impl];
}

- (BOOL)isAutoplaySectionAtIndex:(int64_t)a3
{
  v5 = [(MCDNowPlayingContentManager *)self filteredItems];
  v6 = [v5 numberOfSections];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(MCDNowPlayingContentManager *)self filteredItems];
  v8 = [v7 sectionAtIndex:a3];
  v9 = [v8 isEqualToString:MPCPlayerResponseTracklistDisplaySectionAutoPlayItems];

  return v9;
}

- (id)sectionTypeAtIndex:(int64_t)a3
{
  v5 = [(MCDNowPlayingContentManager *)self filteredItems];
  v6 = [v5 numberOfSections];

  if (v6 <= a3)
  {
    v8 = MPCPlayerResponseTracklistDisplaySectionNextItems;
  }

  else
  {
    v7 = [(MCDNowPlayingContentManager *)self filteredItems];
    v8 = [v7 sectionAtIndex:a3];
  }

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(MCDNowPlayingContentManager *)self limitedUI])
  {
    return 1;
  }

  v5 = [(MCDNowPlayingContentManager *)self filteredItems];
  v6 = [v5 numberOfSections];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MCDNowPlayingContentManager *)self filteredItems];
  v7 = [v6 numberOfSections];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(MCDNowPlayingContentManager *)self filteredItems];
  v9 = [v8 numberOfItemsInSection:a4];

  v10 = [(MCDNowPlayingContentManager *)self limitedUI];
  v11 = 12;
  if (v9 < 12)
  {
    v11 = v9;
  }

  if (v10)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(objc_class *)[(MCDNowPlayingContentManager *)self tableCellClass] cellForTableView:v6 indexPath:v7];
  v9 = [(MCDNowPlayingContentManager *)self filteredItems];
  v10 = [v9 itemAtIndexPath:v7];

  v11 = [(MCDNowPlayingContentManager *)self tableCellConfigurationBlock];

  if (v11)
  {
    v12 = [(MCDNowPlayingContentManager *)self tableCellConfigurationBlock];
    v13 = [v10 metadataObject];
    v14 = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
    v15 = [v14 attributionMetadataFor:v10];
    (v12)[2](v12, v8, v13, v6, v15);
  }

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (_os_feature_enabled_impl())
  {
    return UITableViewAutomaticDimension;
  }

  v7 = [(MCDNowPlayingContentManager *)self isAutoplaySectionAtIndex:a4];
  result = UITableViewAutomaticDimension;
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDNowPlayingContentManager *)self tableView:v6 titleForHeaderInSection:a4];
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

    v13 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"autoplay"];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (_os_feature_enabled_impl())
  {
    v6 = [(MCDNowPlayingContentManager *)self sectionTypeAtIndex:a4];
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
      if (a4)
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

  if ([(MCDNowPlayingContentManager *)self isAutoplaySectionAtIndex:a4])
  {
    v6 = MCDCarDisplayBundle();
    v10 = [v6 localizedStringForKey:@"AUTOPLAY_SECTION_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [(MCDNowPlayingContentManager *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v14];

  if (([v6 isContentUnavailable] & 1) == 0)
  {
    v7 = [(MCDNowPlayingContentManager *)self playbackManager];
    v8 = [(MCDNowPlayingContentManager *)self tracklist];
    v9 = [v8 changeItemCommand];
    v10 = [(MCDNowPlayingContentManager *)self filteredItems];
    v11 = [v10 itemAtIndexPath:v14];
    v12 = [v9 changeToItem:v11];
    [v7 performPlaybackRequestWithCommand:v12];
  }

  v13 = [(MCDNowPlayingContentManager *)self tableView];
  [v13 deselectRowAtIndexPath:v14 animated:1];
}

- (void)playbackManager:(id)a3 shouldShowError:(id)a4
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
  v12 = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    v13 = [(MCDNowPlayingContentManager *)self delegate];
    [v13 contentManager:self->_impl presentViewController:v14];
  }
}

- (double)preferredJumpIntervalForDirection:(int64_t)a3
{
  if ((a3 - 1) < 2)
  {
    v3 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    v4 = [v3 seekCommand];
    v5 = [v4 preferredForwardJumpIntervals];
    goto LABEL_5;
  }

  if ((a3 + 2) <= 1)
  {
    v3 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    v4 = [v3 seekCommand];
    v5 = [v4 preferredBackwardJumpIntervals];
LABEL_5:
    v6 = v5;
    v7 = [v5 firstObject];
    [v7 doubleValue];
    v9 = v8;

    return v9;
  }

  return 0.0;
}

- (id)skipIntervalButtonImageForInterval:(double)a3
{
  v4 = @"gobackward";
  if (a3 > 0.0)
  {
    v4 = @"goforward";
  }

  v5 = v4;
  v6 = [NSNumber numberWithDouble:fabs(a3)];
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

- (id)customPlaybackControlButtonsForNowPlayingViewController:(id)a3
{
  v4 = a3;
  v5 = [(MCDNowPlayingContentManager *)self favoriteButton];

  v6 = &_s8MusicKit5GenreVSeAAMc_ptr;
  if (!v5)
  {
    v7 = objc_opt_new();
    [(MCDNowPlayingContentManager *)self setFavoriteButton:v7];

    v8 = [UIImage _systemImageNamed:@"star"];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
    v10 = [v8 imageWithSymbolConfiguration:v9];

    v11 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [v11 setImage:v10 forState:0];

    v12 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v13 = +[UIColor labelColor];
    v14 = [v13 colorWithAlphaComponent:0.2];
    v15 = [v10 imageWithTintColor:v14];
    [v12 setImage:v15 forState:1];

    v16 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v17 = +[UIColor labelColor];
    v18 = [v17 colorWithAlphaComponent:0.2];
    v19 = [v10 imageWithTintColor:v18];
    [v16 setImage:v19 forState:8];

    v20 = [UIImage _systemImageNamed:@"star.fill"];
    v21 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:16.0];
    v22 = [v20 imageWithSymbolConfiguration:v21];

    v23 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [v23 setImage:v22 forState:4];

    v24 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v25 = +[UIColor labelColor];
    v26 = [v25 colorWithAlphaComponent:0.2];
    v27 = [v22 imageWithTintColor:v26];
    [v24 setImage:v27 forState:5];

    v28 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v29 = +[UIColor labelColor];
    v30 = [v29 colorWithAlphaComponent:0.2];
    v31 = [v22 imageWithTintColor:v30];
    [v28 setImage:v31 forState:12];

    v32 = [(MCDNowPlayingContentManager *)self favoriteButton];
    v33 = [v32 imageView];
    [v33 setContentMode:1];

    v34 = MCDCarDisplayBundle();
    v35 = [v34 localizedStringForKey:@"ACCESSIBILITY_FAVORITE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v55[0] = v35;
    v36 = MCDCarDisplayBundle();
    v37 = [v36 localizedStringForKey:@"ACCESSIBILITY_STAR" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v55[1] = v37;
    v38 = [NSArray arrayWithObjects:v55 count:2];
    v39 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [v39 setAccessibilityUserInputLabels:v38];

    v6 = &_s8MusicKit5GenreVSeAAMc_ptr;
  }

  v40 = [(MCDNowPlayingContentManager *)self tracklist];
  v41 = [v40 playingItem];
  v42 = [v41 likeCommand];

  LODWORD(v41) = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
  v43 = [(MCDNowPlayingContentManager *)self favoriteButton];
  v44 = v43;
  if (v41 && v42)
  {
    [v43 setHidden:0];

    v44 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [v44 setSelected:{objc_msgSend(v42, "value")}];
  }

  else
  {
    [v43 setHidden:1];
  }

  v45 = [v4 playModeControlView];
  v46 = [v45 shuffleButton];
  v54[0] = v46;
  v47 = [v4 playModeControlView];
  v48 = [v47 repeatButton];
  v54[1] = v48;
  v49 = [(MCDNowPlayingContentManager *)self favoriteButton];
  v54[2] = v49;
  v50 = [v4 playModeControlView];

  v51 = [v50 moreButton];
  v54[3] = v51;
  v52 = [v6[287] arrayWithObjects:v54 count:4];

  return v52;
}

- (void)nowPlayingViewController:(id)a3 didSelectButton:(id)a4
{
  v5 = a4;
  v6 = [(MCDNowPlayingContentManager *)self favoriteButton];

  if (v6 == v5)
  {
    v7 = [(MCDNowPlayingContentManager *)self tracklist];
    v8 = [v7 playingItem];
    v11 = [v8 likeCommand];

    v9 = [v11 changeValue:{objc_msgSend(v11, "value") ^ 1}];
    [MPCPlayerChangeRequest performRequest:v9 options:0x10000 completion:0];
    v10 = [(MCDNowPlayingContentManager *)self favoriteButton];
    [v10 setSelected:{objc_msgSend(v11, "value") ^ 1}];
  }
}

- (BOOL)_showStopForCenterTransportCommand
{
  v3 = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
  v4 = [v3 stop];
  if (v4)
  {
    v5 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    v6 = v5;
    if (v5)
    {
      [v5 duration];
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

- (BOOL)nowPlayingViewController:(id)a3 buttonShouldBeActive:(int64_t)a4
{
  v6 = [(MCDNowPlayingContentManager *)self tracklist];
  v7 = [v6 changeItemCommand];

  v8 = [(MCDNowPlayingContentManager *)self tracklist];
  v9 = [v8 playingItem];
  v10 = [v9 seekCommand];

  if (a4 == 1)
  {
    v11 = [v7 nextItem];
    if (!v11)
    {
      v12 = [v7 nextChapter];
      if (!v12)
      {
        v13 = [v7 nextSection];
        if (!v13)
        {
          v14 = [v10 preferredForwardJumpIntervals];
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

  if (!a4)
  {
    v11 = [v7 previousItem];
    if (!v11)
    {
      v12 = [v7 previousChapter];
      if (!v12)
      {
        v13 = [v7 previousSection];
        if (!v13)
        {
          v14 = [v10 preferredBackwardJumpIntervals];
LABEL_15:
          v16 = v14;
          v15 = [v14 count] != 0;

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

- (BOOL)nowPlayingViewController:(id)a3 shouldDisplayButton:(int64_t)a4 withImage:(id *)a5 existingIdentifier:(id)a6 tinted:(BOOL *)a7
{
  v11 = a3;
  v12 = a6;
  if (a4)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        if ([(_MCDNowPlayingContentManager *)self->_impl nowPlayingViewControllerIsPlaying:v11])
        {
          v13 = [(MCDNowPlayingContentManager *)self _showStopForCenterTransportCommand];
          v14 = MCDMusicGeneralLogging();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v15)
            {
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Showing stop button", v30, 2u);
            }

            v16 = [v11 transportControlView];
            [v16 setPauseButtonImageName:@"square.fill"];

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

            v25 = [v11 transportControlView];
            [v25 setPauseButtonImageName:@"pause.fill"];

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

          v24 = [v11 transportControlView];
          [v24 setPlayButtonImageName:@"play.fill"];

          v17 = MCDCarDisplayBundle();
          v18 = [v17 localizedStringForKey:@"ACCESSIBILITY_PLAY" value:&stru_101107168 table:@"MusicCarDisplayUI"];
          v31 = v18;
          v19 = &v31;
        }

        v26 = [NSArray arrayWithObjects:v19 count:1];
        v27 = [v11 transportControlView];
        v28 = [v27 playPauseButton];
        [v28 setAccessibilityUserInputLabels:v26];
      }

      goto LABEL_20;
    }

    v20 = self;
    v21 = 2;
  }

  else
  {
    v20 = self;
    v21 = -2;
  }

  [(MCDNowPlayingContentManager *)v20 preferredJumpIntervalForDirection:v21];
  if (v22 != 0.0)
  {
    *a5 = [(MCDNowPlayingContentManager *)self skipIntervalButtonImageForInterval:?];
  }

LABEL_20:

  return 1;
}

- (BOOL)nowPlayingViewControllerCanShowAddToLibrary:(id)a3
{
  v4 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v5 = [v4 subscriptionCapabilities];

  if ((v5 & 0x200) != 0)
  {
    v8 = [(MCDNowPlayingContentManager *)self libraryAddObserver];
    v9 = [v8 isSongAddable];

    return v9;
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

- (void)nowPlayingViewControllerAddToLibrary:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self libraryAddObserver];
  [v3 addSongToLibrary];
}

- (BOOL)nowPlayingViewControllerCanShowMore:(id)a3
{
  v4 = [(MCDNowPlayingContentManager *)self _itemCanCreateRadioStation];
  v5 = [(MCDNowPlayingContentManager *)self _showAddToLibraryOptions];
  if ([(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong])
  {
    v6 = [(MCDNowPlayingContentManager *)self tracklist];
    v7 = [v6 playingItem];
    v8 = [v7 dislikeCommand];
    if (v8)
    {
      v9 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      v10 = [v9 metadataObject];
      v11 = [v10 flattenedGenericObject];
      v12 = [v11 song];
      v13 = [v12 isFavorite] ^ 1;
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
    v16[1] = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Show CTA: Create Station: %d, Add to Library: %d, allowsTasteActions: %d", v16, 0x14u);
  }

  return (v4 | v5 | v13) & 1;
}

- (BOOL)nowPlayingViewControllerIsRightHandDrive:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self carSessionStatus];
  v4 = [v3 currentSession];
  v5 = [v4 configuration];
  v6 = [v5 rightHandDrive];

  return v6;
}

- (BOOL)nowPlayingViewControllerCanShowAlbumLink:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 album];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)prefersCatalogContainerNavigationForPlayingSong
{
  v3 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 album];
  v5 = [v4 identifiers];
  v6 = [v5 universalStore];
  v7 = [v6 adamID];

  if (v7 || ([v5 universalStore], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "subscriptionAdamID"), v8, v9))
  {
    v10 = 0;
  }

  else
  {
    v15 = [v5 universalStore];
    v16 = [v15 purchasedAdamID];

    v10 = v16 == 0;
  }

  v11 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v12 = [v11 subscriptionCapabilities];

  if (v10)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = ![(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAdded]& v12;
  }

  return v13;
}

- (void)nowPlayingViewControllerAlbumArtistButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v6 = [v5 album];

  LODWORD(self) = [(MCDNowPlayingContentManager *)self prefersCatalogContainerNavigationForPlayingSong];
  v7 = [_TtC5Music27MCDItemDetailViewController alloc];
  if (self)
  {
    v8 = [(MCDItemDetailViewController *)v7 initWithAlbum:v6 onlyDownloaded:0 preferCatalog:1];
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
    v8 = [(MCDItemDetailViewController *)v7 initWithAlbum:v6 onlyDownloaded:0 preferCatalog:0];
    v9 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "Album/Artist button tapped for local album, pushing to album view from Now Playing";
      v11 = &v13;
      goto LABEL_6;
    }
  }

  [(MCDItemDetailViewController *)v8 setPlayActivityFeatureNameSourceViewController:v4];
  v12 = [v4 navigationController];

  [v12 pushViewController:v8 animated:1];
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
        v8 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
        if ([v8 hasVideo])
        {
          v9 = 0;
        }

        else
        {
          v10 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
          v11 = [v10 identifiers];
          v12 = [v11 universalStore];
          if ([v12 adamID])
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

- (id)_radioCommandRequestWithCurrentPlayingSongWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v6 = [MPCPlaybackIntent radioPlaybackIntentFromSong:v5];

  v7 = [v4 combinedPlayActivityFeatureName];

  [v6 setPlayActivityFeatureName:v7];
  v8 = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];
  v9 = [v8 type];

  if (v9 != 4)
  {
    v12 = [(MCDNowPlayingContentManager *)self tracklist];
    v13 = [v12 insertCommand];
    v14 = [v13 insertAfterPlayingItemWithPlaybackIntent:v6];
    goto LABEL_5;
  }

  v10 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v11 = [v10 isLibraryAddEligible];

  if (v11)
  {
    v12 = [(MCDNowPlayingContentManager *)self tracklist];
    v13 = [v12 resetCommand];
    v14 = [v13 replaceWithPlaybackIntent:v6];
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

  v19 = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v17) = objc_opt_respondsToSelector();

  if (v17)
  {
    v20 = [(MCDNowPlayingContentManager *)self delegate];
    [v20 contentManager:self->_impl presentViewController:v3];
  }

  objc_destroyWeak(&location);
}

- (BOOL)_showAddToLibraryOptions
{
  v3 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v4 = [v3 subscriptionCapabilities];

  if ((v4 & 0x200) != 0)
  {
    v7 = [(MCDLibraryAddObserver *)self->_libraryAddObserver isSongAddable];
    v8 = [(MCDLibraryAddObserver *)self->_libraryAddObserver isAlbumAddable];
    v9 = [(MCDLibraryAddObserver *)self->_libraryAddObserver isPlaylistAddable];
    v6 = v7 | v8 | v9;
    v5 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109888;
      v11[1] = v6 & 1;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = v8 & 1;
      v16 = 1024;
      v17 = v9 & 1;
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

- (BOOL)_allowsTasteActionsForGenericObject:(id)a3
{
  v4 = a3;
  if ([v4 type] == 1)
  {
    v5 = [v4 anyObject];
    v6 = [(MCDNowPlayingContentManager *)self currentPlayingRadioStation];
    v7 = [v6 type];

    if (v7 == 4 && ![v5 isLibraryAddEligible])
    {
      v8 = 0;
    }

    else if ([(MCDNowPlayingContentManager *)self _showAddToLibraryOptions]|| [(MCDNowPlayingContentManager *)self _itemCanCreateRadioStation])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)nowPlayingViewControllerMore:(id)a3
{
  v4 = a3;
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v5 setOverrideUserInterfaceStyle:2];
  objc_initWeak(location, self);
  v6 = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
  if (v6)
  {
    v7 = [(MCDNowPlayingContentManager *)self nowPlayingViewControllerCanShowAlbumLink:v4];

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
      v54 = v4;
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
    v16 = [(MCDNowPlayingContentManager *)self _radioCommandRequestWithCurrentPlayingSongWithViewController:v4];
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

  v24 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  v25 = [v24 metadataObject];
  v26 = [v25 flattenedGenericObject];

  v27 = [v26 song];
  v28 = [(MCDNowPlayingContentManager *)self tracklist];
  v29 = [v28 playingItem];
  v30 = [v29 dislikeCommand];

  v31 = [(MCDLibraryAddObserver *)self->_libraryAddObserver shouldShowFavoriteSong];
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 == 1 && ([v27 isFavorite] & 1) == 0)
  {
    if ([v27 isDisliked])
    {
      v33 = [UIImage systemImageNamed:@"hand.thumbsdown.slash"];
      v34 = +[NSBundle mainBundle];
      v35 = [v34 localizedStringForKey:@"Undo Suggest Less" value:&stru_101107168 table:0];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000F882C;
      v47[3] = &unk_1010983D8;
      v47[4] = self;
      v47[5] = v27;
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
      v46[5] = v27;
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

  v44 = [(MCDNowPlayingContentManager *)self delegate];
  LOBYTE(v42) = objc_opt_respondsToSelector();

  if (v42)
  {
    v45 = [(MCDNowPlayingContentManager *)self delegate];
    [v45 contentManager:self->_impl presentViewController:v5];
  }

  objc_destroyWeak(location);
}

- (BOOL)nowPlayingViewControllerCanRepeat:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v3 repeatCommand];
  v5 = v4 != 0;

  return v5;
}

- (void)nowPlayingViewControllerToggleRepeat:(id)a3
{
  v6 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v6 repeatCommand];
  v5 = [v4 advance];
  [(MCDNowPlayingContentManager *)self _performChangeRequest:v5];
}

- (BOOL)nowPlayingViewControllerCanShuffle:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v3 shuffleCommand];
  v5 = v4 != 0;

  return v5;
}

- (void)nowPlayingViewControllerToggleShuffle:(id)a3
{
  v6 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v6 shuffleCommand];
  v5 = [v4 advance];
  [(MCDNowPlayingContentManager *)self _performChangeRequest:v5];
}

- (BOOL)_nowPlayingViewControllerIsFuseSubscriber
{
  v2 = +[MusicCarPlayApplicationCapabilitiesController sharedController];
  v3 = [v2 userSubscriptionState] == 2;

  return v3;
}

- (void)nowPlayingViewController:(id)a3 didSendAction:(int64_t)a4 state:(int64_t)a5
{
  v8 = a3;
  v32 = v8;
  if (!a4)
  {
    if (a5 == 2)
    {
      if ([(MCDNowPlayingContentManager *)self seeking])
      {
        goto LABEL_20;
      }
    }

    else if (a5 == 1)
    {
      v13 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      v14 = [v13 seekCommand];
      v15 = v14;
      v16 = -1;
      goto LABEL_14;
    }

    [(MCDNowPlayingContentManager *)self preferredJumpIntervalForDirection:-2];
    v20 = self;
    if (v27 == 0.0)
    {
      v11 = [(MCDNowPlayingContentManager *)self tracklist];
      v30 = [v11 changeItemCommand];
      v31 = [v30 previousItem];
      goto LABEL_30;
    }

    v22 = -2;
    goto LABEL_25;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      if ([(_MCDNowPlayingContentManager *)self->_impl nowPlayingViewControllerIsPlaying:v8])
      {
        v9 = [(MCDNowPlayingContentManager *)self _showStopForCenterTransportCommand];
        v10 = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
        v11 = v10;
        if (v9)
        {
          [v10 stop];
        }

        else
        {
          [v10 pause];
        }
        v12 = ;
      }

      else
      {
        v11 = [(MCDNowPlayingContentManager *)self lastReceivedResponse];
        v12 = [v11 play];
      }

      v26 = v12;
      goto LABEL_31;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_32;
  }

  if (a5 != 2)
  {
    if (a5 == 1)
    {
      v13 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
      v14 = [v13 seekCommand];
      v15 = v14;
      v16 = 1;
LABEL_14:
      v17 = [v14 beginSeekWithDirection:v16];
      [(MCDNowPlayingContentManager *)self _performChangeRequest:v17];

      v18 = self;
      v19 = 1;
LABEL_21:
      [(MCDNowPlayingContentManager *)v18 setSeeking:v19];
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if ([(MCDNowPlayingContentManager *)self seeking])
  {
LABEL_20:
    v23 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
    v24 = [v23 seekCommand];
    v25 = [v24 endSeek];
    [(MCDNowPlayingContentManager *)self _performChangeRequest:v25];

    v18 = self;
    v19 = 0;
    goto LABEL_21;
  }

LABEL_17:
  [(MCDNowPlayingContentManager *)self preferredJumpIntervalForDirection:2];
  v20 = self;
  if (v21 == 0.0)
  {
    v11 = [(MCDNowPlayingContentManager *)self tracklist];
    v30 = [v11 changeItemCommand];
    v31 = [v30 nextItem];
    goto LABEL_30;
  }

  v22 = 2;
LABEL_25:
  [(MCDNowPlayingContentManager *)v20 preferredJumpIntervalForDirection:v22];
  v29 = v28;
  v11 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  v30 = [v11 seekCommand];
  v31 = [v30 jumpByInterval:v29];
LABEL_30:
  v26 = v31;

LABEL_31:
LABEL_32:
  [(MCDNowPlayingContentManager *)self _performChangeRequest:v26];
}

- (void)nowPlayingViewControllerAttributionButtonTapped:(id)a3
{
  v4 = +[UIApplication sharePlayTogetherObjCViewModel];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = [_TtC5Music41MCDSharePlayTogetherSessionViewController alloc];
    v7 = +[UIApplication sharePlayTogetherObjCViewModel];
    v8 = [(MCDSharePlayTogetherSessionViewController *)v6 initWithViewModel:v7];
  }

  else
  {
    v9 = [MCDPlaylistTracksTableViewController alloc];
    v7 = [(MCDNowPlayingContentManager *)self currentPlayingPlaylist];
    v8 = [(MCDPlaylistTracksTableViewController *)v9 initWithPlaylist:v7 showLocalContent:0];
  }

  v11 = v8;

  v10 = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [v10 contentManager:self->_impl pushViewController:v11];
}

- (NSString)nowPlayingBundleID
{
  v2 = [(_MCDNowPlayingContentManager *)self->_impl nowPlayingBundleID];
  v3 = [v2 copy];

  return v3;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshotForNowPlayingViewController:(SEL)a3
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

- (int64_t)shuffleTypeForNowPlayingViewController:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v3 shuffleType];

  return v4;
}

- (int64_t)repeatTypeForNowPlayingViewController:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self tracklist];
  v4 = [v3 repeatType];

  return v4;
}

- (int64_t)placeholderTypeForNowPlayingViewController:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self nowPlayingItem];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
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

- (id)attributionTitleForNowPlayingViewController:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self currentAttributionMetadata];
  v4 = [v3 displayName];

  return v4;
}

- (int64_t)videoPlaybackStateForNowPlayingController:(id)a3
{
  v3 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  if ([v3 hasVideo])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)contentManager:(id)a3 processResponse:(id)a4 error:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v12 contentManager:v13 processResponse:v8 error:v9];
  }

  [(MCDNowPlayingContentManager *)self _processResponse:v8 error:v9];
}

- (void)contentManager:(id)a3 shouldShowPlaybackQueue:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v8 contentManager:v9 shouldShowPlaybackQueue:v4];
  }
}

- (void)contentManagerReloadData:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerReloadData:v7];
  }
}

- (void)contentManager:(id)a3 presentViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v9 contentManager:v10 presentViewController:v6];
  }
}

- (void)contentManager:(id)a3 bufferingItem:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v8 contentManager:v9 bufferingItem:v4];
  }
}

- (void)contentManagerInitiatedPlaybackFromPlaybackQueue:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerInitiatedPlaybackFromPlaybackQueue:v7];
  }
}

- (void)contentManager:(id)a3 displayItemIndex:(int64_t)a4 totalItemCount:(int64_t)a5
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v10 contentManager:v11 displayItemIndex:a4 totalItemCount:a5];
  }
}

- (void)contentManagerCompletedAllPlayback:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v6 contentManagerCompletedAllPlayback:v7];
  }
}

- (void)contentManager:(id)a3 sectionName:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v9 contentManager:v10 sectionName:v6];
  }
}

- (void)contentManager:(id)a3 itemDidChange:(id)a4 response:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_contentManagerDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_contentManagerDelegate);
    [v12 contentManager:v13 itemDidChange:v8 response:v9];
  }
}

- (BOOL)currentPlayingSongFoundIn:(id)a3
{
  v4 = a3;
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
  [v4 enumerateItemIdentifiersUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)requestAndUpdateLibraryResponseForCurrentPlayingSongAlbum
{
  v3 = [(MCDNowPlayingContentManager *)self currentPlayingSong];
  v4 = [v3 album];
  v5 = [(MCDNowPlayingContentManager *)self currentPlayingAlbum];
  v6 = [v5 identifiers];
  v7 = [v4 identifiers];
  v8 = [v6 intersectsSet:v7];

  if ((v8 & 1) == 0)
  {
    [(MCDNowPlayingContentManager *)self setCurrentPlayingAlbum:v4];
    if (v3)
    {
      if (v4)
      {
        v9 = [[MCDAlbumTracksDataSource alloc] initWithAlbum:v4 storeContent:0];
        v10 = [(_MCDContentManager *)[MCDLibraryContentManager alloc] initWithDataSource:v9 delegate:0];
        objc_initWeak(&location, self);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000F995C;
        v11[3] = &unk_101098428;
        objc_copyWeak(&v13, &location);
        v11[4] = self;
        v12 = v4;
        [(_MCDContentManager *)v10 performRequest:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)performFavoriteChangeRequestFor:(id)a3 action:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MPModelLibraryFavoriteEntityChangeRequest);
  [v6 setModelObject:v5];

  v7 = [[MPModelLibraryFavoriteEntityRequestAction alloc] initWithChangeAction:a4];
  [v6 setRequestAction:v7];

  v8 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F9B10;
  v9[3] = &unk_101098448;
  v9[4] = a4;
  [v8 performFavoriteStateChangeRequest:v6 withRelatedModelObjects:0 completion:v9];
}

- (void)sharePlayTogetherButtonTapped
{
  v3 = [_TtC5Music41MCDSharePlayTogetherSessionViewController alloc];
  v4 = +[UIApplication sharePlayTogetherObjCViewModel];
  v6 = [(MCDSharePlayTogetherSessionViewController *)v3 initWithViewModel:v4];

  v5 = [(MCDNowPlayingContentManager *)self contentManagerDelegate];
  [v5 contentManager:self->_impl pushViewController:v6];
}

@end