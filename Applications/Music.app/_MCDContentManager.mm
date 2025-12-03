@interface _MCDContentManager
- (BOOL)itemIsPlayable:(id)playable;
- (Class)tableCellClass;
- (MCDContentManagerDataSource)dataSource;
- (MCDContentManagerDelegate)delegate;
- (UITableView)tableView;
- (UIViewController)viewController;
- (_MCDContentManager)initWithDataSource:(id)source delegate:(id)delegate;
- (_MCDContentManager)initWithDataSource:(id)source limitedUI:(BOOL)i showLocalContent:(BOOL)content delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager shouldPerformRequestImmediately:(BOOL)immediately;
- (double)_heightForHeaderView;
- (double)_tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_textForHeaderView;
- (id)itemAtIndexPath:(id)path;
- (id)itemsInSectionAtIndex:(int64_t)index;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_initiatePlaybackForItem:(id)item shuffled:(BOOL)shuffled;
- (void)_performRequest;
- (void)_processResponse:(id)response error:(id)error;
- (void)_setupOperationQueue;
- (void)dealloc;
- (void)modelResponseDidInvalidate:(id)invalidate;
- (void)performRequest:(id)request;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setLimitedUI:(BOOL)i;
- (void)setShowShuffleAll:(BOOL)all;
- (void)setShowSiriCellInLimitedUI:(BOOL)i;
- (void)setShowsMediaCell:(BOOL)cell;
- (void)setTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
@end

@implementation _MCDContentManager

- (_MCDContentManager)initWithDataSource:(id)source limitedUI:(BOOL)i showLocalContent:(BOOL)content delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager shouldPerformRequestImmediately:(BOOL)immediately
{
  contentCopy = content;
  sourceCopy = source;
  delegateCopy = delegate;
  controllerCopy = controller;
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = _MCDContentManager;
  v19 = [(_MCDContentManager *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_dataSource, sourceCopy);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    v21 = objc_opt_class();
    objc_storeWeak(&v20->_tableCellClass, v21);
    v20->_limitedUI = i;
    v20->_showLocalContent = contentCopy;
    v20->_showFavoriteContent = 0;
    objc_storeStrong(&v20->_playbackManager, manager);
    [(MCDPlayableProvider *)v20->_playbackManager setLocalContentOnly:contentCopy];
    [(MCDPlayableProvider *)v20->_playbackManager setFavoriteContentOnly:0];
    *&v20->_showSiriCellInLimitedUI = 0;
    v20->_showsMediaCell = 0;
    objc_storeWeak(&v20->_viewController, controllerCopy);
    v22 = [[SiriDirectActionSource alloc] initWithDelegate:0];
    siriDirectActionSource = v20->_siriDirectActionSource;
    v20->_siriDirectActionSource = v22;

    [(_MCDContentManager *)v20 _setupOperationQueue];
    if (immediately)
    {
      [(_MCDContentManager *)v20 _performRequest];
    }
  }

  return v20;
}

- (_MCDContentManager)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _MCDContentManager;
  v8 = [(_MCDContentManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    [(_MCDContentManager *)v9 _setupOperationQueue];
    [(_MCDContentManager *)v9 _performRequest];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  siriDirectActionSource = [(_MCDContentManager *)self siriDirectActionSource];
  [siriDirectActionSource invalidate];

  v5.receiver = self;
  v5.super_class = _MCDContentManager;
  [(_MCDContentManager *)&v5 dealloc];
}

- (void)_setupOperationQueue
{
  v3 = objc_alloc_init(NSOperationQueue);
  operationQueue = self->_operationQueue;
  self->_operationQueue = v3;

  [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:4];
  [(NSOperationQueue *)self->_operationQueue setQualityOfService:25];
  v5 = self->_operationQueue;

  [(NSOperationQueue *)v5 setName:@"com.apple.MusicCarDisplayUI.MCDContentManager.operationQueue"];
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results itemAtIndexPath:pathCopy];

  return v7;
}

- (id)itemsInSectionAtIndex:(int64_t)index
{
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v6 = [results itemsInSectionAtIndex:index];

  return v6;
}

- (BOOL)itemIsPlayable:(id)playable
{
  playableCopy = playable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    song = [playableCopy song];

    playableCopy = song;
  }

  if ([(_MCDContentManager *)self limitedUI])
  {
    goto LABEL_8;
  }

  delegate = [(_MCDContentManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  delegate2 = [(_MCDContentManager *)self delegate];
  v8 = [delegate2 contentManager:self canDrillIntoItem:playableCopy];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v9 = [_TtC5Music31CarPlayPlayabilityStatusService isModelObjectPlayable:playableCopy];
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (void)setLimitedUI:(BOOL)i
{
  if (self->_limitedUI != i)
  {
    iCopy = i;
    self->_limitedUI = i;
    dataSource = [(_MCDContentManager *)self dataSource];
    [dataSource setLimitedUI:iCopy];

    [(_MCDContentManager *)self setLastReceivedResponse:0];

    [(_MCDContentManager *)self _performRequest];
  }
}

- (void)setShowSiriCellInLimitedUI:(BOOL)i
{
  if (self->_showSiriCellInLimitedUI != i)
  {
    self->_showSiriCellInLimitedUI = i;
    tableView = [(_MCDContentManager *)self tableView];
    [tableView reloadData];
  }
}

- (void)setShowShuffleAll:(BOOL)all
{
  if (self->_showShuffleAll != all)
  {
    self->_showShuffleAll = all;
    tableView = [(_MCDContentManager *)self tableView];
    [tableView reloadData];
  }
}

- (void)setShowsMediaCell:(BOOL)cell
{
  if (self->_showsMediaCell != cell)
  {
    self->_showsMediaCell = cell;
    tableView = [(_MCDContentManager *)self tableView];
    [tableView reloadData];
  }
}

- (void)modelResponseDidInvalidate:(id)invalidate
{
  object = [invalidate object];
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
  v5 = [object isEqual:lastReceivedResponse];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:MPModelResponseDidInvalidateNotification object:0];

    [(_MCDContentManager *)self _performRequest];
  }
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_tableView, viewCopy);
  if (viewCopy)
  {
    tableCellClass = [(_MCDContentManager *)self tableCellClass];
    v5 = NSStringFromClass([(_MCDContentManager *)self tableCellClass]);
    [viewCopy registerClass:tableCellClass forCellReuseIdentifier:v5];

    v6 = objc_opt_class();
    v7 = +[(_MCDReusableCell *)MCDShuffleActionCell];
    [viewCopy registerClass:v6 forCellReuseIdentifier:v7];

    v8 = objc_opt_class();
    v9 = +[(_MCDReusableCell *)MCDSiriActionCell];
    [viewCopy registerClass:v8 forCellReuseIdentifier:v9];

    [viewCopy setRowHeight:UITableViewAutomaticDimension];
    [viewCopy setEstimatedRowHeight:UITableViewAutomaticDimension];
    [viewCopy setDataSource:self];
    [viewCopy setDelegate:self];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  numberOfSections = [results numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  numberOfSections = [results numberOfSections];

  if (numberOfSections <= section)
  {
    return 0;
  }

  lastReceivedResponse2 = [(_MCDContentManager *)self lastReceivedResponse];
  results2 = [lastReceivedResponse2 results];
  v11 = [results2 numberOfItemsInSection:section];

  if (!section)
  {
    showShuffleAll = [(_MCDContentManager *)self showShuffleAll];
    if (v11 > 0)
    {
      v13 = showShuffleAll;
    }

    else
    {
      v13 = 0;
    }

    v11 += v13;
  }

  limitedUI = [(_MCDContentManager *)self limitedUI];
  v15 = 12;
  if (v11 < 12)
  {
    v15 = v11;
  }

  if (limitedUI)
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(objc_class *)[(_MCDContentManager *)self tableCellClass] cellForTableView:viewCopy indexPath:pathCopy];
  if (-[_MCDContentManager showSiriCellInLimitedUI](self, "showSiriCellInLimitedUI") && -[_MCDContentManager limitedUI](self, "limitedUI") && [pathCopy row] == 11)
  {
    v9 = [(_MCDReusableCell *)MCDSiriActionCell cellForTableView:viewCopy indexPath:pathCopy];
    goto LABEL_17;
  }

  if (!-[_MCDContentManager showShuffleAll](self, "showShuffleAll") || [pathCopy section])
  {
    goto LABEL_9;
  }

  if ([pathCopy row])
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));

    pathCopy = v10;
LABEL_9:
    v11 = [(_MCDContentManager *)self itemAtIndexPath:pathCopy];
    tableCellConfigurationBlock = [(_MCDContentManager *)self tableCellConfigurationBlock];

    if (tableCellConfigurationBlock)
    {
      tableCellConfigurationBlock2 = [(_MCDContentManager *)self tableCellConfigurationBlock];
      (tableCellConfigurationBlock2)[2](tableCellConfigurationBlock2, v8, 0, v11, viewCopy, pathCopy);
    }

    [v8 setAccessoryType:0];
    if (![(_MCDContentManager *)self limitedUI])
    {
      delegate = [(_MCDContentManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate2 = [(_MCDContentManager *)self delegate];
        v16 = [delegate2 contentManager:self canDrillIntoItem:v11];

        if (v16)
        {
          [v8 setAccessoryType:1];
        }
      }

      else
      {
      }
    }

    v9 = v8;

    goto LABEL_17;
  }

  v9 = [(_MCDReusableCell *)MCDShuffleActionCell cellForTableView:viewCopy indexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 sizeForArtwork];
    [v9 setSizeForArtwork:?];
  }

LABEL_17:

  return v9;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  delegate = [(_MCDContentManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_MCDContentManager *)self delegate];
    v7 = [delegate2 sectionIndexTitlesForContentManager:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  delegate = [(_MCDContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_MCDContentManager *)self delegate];
    index = [delegate2 sectionForSectionIndexTitle:titleCopy atIndex:index contentManager:self];
  }

  return index;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy copy];
  if (-[_MCDContentManager showSiriCellInLimitedUI](self, "showSiriCellInLimitedUI") && -[_MCDContentManager limitedUI](self, "limitedUI") && [pathCopy row] == 11)
  {
    tableView = [(_MCDContentManager *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:1];

    delegate6 = [SiriDirectActionContext musicSearchDirectActionWithAppBundleId:MCDMusicBundleIdentifier];
    siriDirectActionSource = [(_MCDContentManager *)self siriDirectActionSource];
    [siriDirectActionSource activateWithContext:delegate6 completion:&stru_101098230];
    goto LABEL_15;
  }

  if (!-[_MCDContentManager showShuffleAll](self, "showShuffleAll") || [pathCopy section])
  {
    goto LABEL_9;
  }

  if ([pathCopy row])
  {
    v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));

    v5 = v9;
LABEL_9:
    delegate6 = [(_MCDContentManager *)self itemAtIndexPath:v5];
    if ([(_MCDContentManager *)self limitedUI])
    {
      if ([(_MCDContentManager *)self itemIsPlayable:delegate6])
      {
        [(_MCDContentManager *)self _initiatePlaybackForItem:delegate6 shuffled:0];
LABEL_27:

        goto LABEL_28;
      }

      siriDirectActionSource = [(_MCDContentManager *)self tableView];
      [siriDirectActionSource deselectRowAtIndexPath:pathCopy animated:1];
LABEL_15:

      goto LABEL_27;
    }

    delegate = [(_MCDContentManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(_MCDContentManager *)self delegate];
      v13 = [delegate2 contentManager:self viewControllerForItem:delegate6];
    }

    else
    {
      v13 = 0;
    }

    viewController = [(_MCDContentManager *)self viewController];
    [v13 setPlayActivityFeatureNameSourceViewController:viewController];

    if (v13)
    {
      delegate3 = [(_MCDContentManager *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate4 = [(_MCDContentManager *)self delegate];
        [delegate4 contentManager:self shouldDisplayViewController:v13];
      }

      goto LABEL_26;
    }

    if (![(_MCDContentManager *)self itemIsPlayable:delegate6])
    {
      tableView2 = [(_MCDContentManager *)self tableView];
      [tableView2 deselectRowAtIndexPath:pathCopy animated:1];

LABEL_26:
      goto LABEL_27;
    }

    selfCopy2 = self;
    v19 = delegate6;
    v20 = 0;
LABEL_25:
    [(_MCDContentManager *)selfCopy2 _initiatePlaybackForItem:v19 shuffled:v20];
    goto LABEL_26;
  }

  delegate5 = [(_MCDContentManager *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate6 = [(_MCDContentManager *)self delegate];
    v13 = [delegate6 shuffleContainerForContentManager:self];
    selfCopy2 = self;
    v19 = v13;
    v20 = 1;
    goto LABEL_25;
  }

  [(_MCDContentManager *)self _initiatePlaybackForItem:0 shuffled:1];
LABEL_28:
}

- (double)_tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if ([(_MCDContentManager *)self limitedUI:view]|| [(_MCDContentManager *)self showLocalContent])
  {
    _textForHeaderView = [(_MCDContentManager *)self _textForHeaderView];
    v6 = 27.0;
    if (!_textForHeaderView)
    {
      [(_MCDContentManager *)self _heightForHeaderView];
      v6 = v7;
    }

    return v6;
  }

  else
  {

    [(_MCDContentManager *)self _heightForHeaderView];
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [(_MCDContentManager *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(_MCDContentManager *)self delegate];
    v8 = [delegate viewForHeaderViewInContentManager:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  delegate = [(_MCDContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 && [viewCopy numberOfSections] <= 1 && (-[_MCDContentManager limitedUI](self, "limitedUI") || -[_MCDContentManager showLocalContent](self, "showLocalContent")))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = headerViewCopy;
      MCDSetupTableHeaderView();
      v11 = +[UIBackgroundConfiguration clearConfiguration];
      [v10 setBackgroundConfiguration:v11];

      _textForHeaderView = [(_MCDContentManager *)self _textForHeaderView];
      textLabel = [v10 textLabel];

      [textLabel setText:_textForHeaderView];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 scrollViewDidScroll:scrollCopy];
  }
}

- (void)_initiatePlaybackForItem:(id)item shuffled:(BOOL)shuffled
{
  shuffledCopy = shuffled;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MCDMPModelObjectForGenericObject();

    v7 = v6;
  }

  else
  {
    v7 = itemCopy;
  }

  v21 = v7;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dataSource = [(_MCDContentManager *)self dataSource];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      dataSource2 = [(_MCDContentManager *)self dataSource];
      forceScopingToResponseResults = [dataSource2 forceScopingToResponseResults];
    }

    else
    {
      forceScopingToResponseResults = 0;
    }

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      playbackManager = [(_MCDContentManager *)self playbackManager];
      lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
      viewController = [(_MCDContentManager *)self viewController];
      combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
      [playbackManager initiatePlaybackForPlaylistEntry:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy forceScopingToResponseResults:forceScopingToResponseResults playActivityFeatureName:combinedPlayActivityFeatureName];
    }

    else
    {
      dataSource3 = [(_MCDContentManager *)self dataSource];
      v13 = objc_opt_respondsToSelector();

      playbackManager = [(_MCDContentManager *)self playbackManager];
      if (v13)
      {
        lastReceivedResponse = [(_MCDContentManager *)self dataSource];
        viewController = [lastReceivedResponse playbackSectionKind];
        combinedPlayActivityFeatureName = [(_MCDContentManager *)self lastReceivedResponse];
        viewController2 = [(_MCDContentManager *)self viewController];
        combinedPlayActivityFeatureName2 = [viewController2 combinedPlayActivityFeatureName];
        [playbackManager initiatePlaybackForSong:v21 sectionKind:viewController lastResponse:combinedPlayActivityFeatureName shuffled:shuffledCopy forceScopingToResponseResults:forceScopingToResponseResults playActivityFeatureName:combinedPlayActivityFeatureName2];
      }

      else
      {
        lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
        viewController = [(_MCDContentManager *)self viewController];
        combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
        [playbackManager initiatePlaybackForSong:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy forceScopingToResponseResults:forceScopingToResponseResults playActivityFeatureName:combinedPlayActivityFeatureName];
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      playbackManager = [(_MCDContentManager *)self playbackManager];
      lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
      viewController = [(_MCDContentManager *)self viewController];
      combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
      [playbackManager initiatePlaybackForPlaylist:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy playActivityFeatureName:combinedPlayActivityFeatureName];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        playbackManager = [(_MCDContentManager *)self playbackManager];
        lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
        viewController = [(_MCDContentManager *)self viewController];
        combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
        [playbackManager initiatePlaybackForGenre:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy playActivityFeatureName:combinedPlayActivityFeatureName];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          playbackManager = [(_MCDContentManager *)self playbackManager];
          lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
          viewController = [(_MCDContentManager *)self viewController];
          combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
          [playbackManager initiatePlaybackForAlbum:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy playActivityFeatureName:combinedPlayActivityFeatureName];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          playbackManager = [(_MCDContentManager *)self playbackManager];
          lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];
          viewController = [(_MCDContentManager *)self viewController];
          combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
          [playbackManager initiatePlaybackForPerson:v21 lastResponse:lastReceivedResponse shuffled:shuffledCopy playActivityFeatureName:combinedPlayActivityFeatureName];
        }
      }
    }
  }

LABEL_25:
}

- (double)_heightForHeaderView
{
  delegate = [(_MCDContentManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  delegate2 = [(_MCDContentManager *)self delegate];
  [delegate2 heightForHeaderViewInContentManager:self];
  v7 = v6;

  return v7;
}

- (id)_textForHeaderView
{
  delegate = [(_MCDContentManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_5;
  }

  tableView = [(_MCDContentManager *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections == 1)
  {
    delegate = [(_MCDContentManager *)self delegate];
    v6 = [delegate textForHeaderViewInContentManager:self];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_performRequest
{
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];

  if (lastReceivedResponse)
  {
    lastReceivedResponse2 = [(_MCDContentManager *)self lastReceivedResponse];
    request = [lastReceivedResponse2 request];
  }

  else
  {
    request = [(_MCDContentManager *)self _modelRequest];
  }

  v6 = [(_MCDContentManager *)self _operationForRequest:request];
  v7 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    if (v6)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    selfCopy = self;
    v14 = 2112;
    v15 = request;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Performing request: %@, as operation: %c", buf, 0x1Cu);
  }

  if (v6)
  {
    operationQueue = [(_MCDContentManager *)self operationQueue];
    [operationQueue addOperation:v6];
  }

  else
  {
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F16C8;
    v10[3] = &unk_101098258;
    objc_copyWeak(&v11, buf);
    [request performWithResponseHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)performRequest:(id)request
{
  requestCopy = request;
  lastReceivedResponse = [(_MCDContentManager *)self lastReceivedResponse];

  if (lastReceivedResponse)
  {
    lastReceivedResponse2 = [(_MCDContentManager *)self lastReceivedResponse];
    request = [lastReceivedResponse2 request];
  }

  else
  {
    request = [(_MCDContentManager *)self _modelRequest];
  }

  [request performWithResponseHandler:requestCopy];
}

- (void)_processResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  request = [responseCopy request];
  v9 = MCDMusicGeneralLogging();
  v10 = v9;
  if (!errorCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2112;
      v21 = request;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Processing response of request: %@", buf, 0x16u);
    }

    v13 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v14 = sub_1000F1A2C;
    v15 = responseCopy;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100DEEF20(self, request, v10);
  }

  delegate = [(_MCDContentManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v14 = sub_1000F19D8;
    v15 = errorCopy;
LABEL_9:
    v13[2] = v14;
    v13[3] = &unk_101098158;
    v13[4] = self;
    v13[5] = v15;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (MCDContentManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MCDContentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (Class)tableCellClass
{
  WeakRetained = objc_loadWeakRetained(&self->_tableCellClass);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end