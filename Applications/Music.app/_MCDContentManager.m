@interface _MCDContentManager
- (BOOL)itemIsPlayable:(id)a3;
- (Class)tableCellClass;
- (MCDContentManagerDataSource)dataSource;
- (MCDContentManagerDelegate)delegate;
- (UITableView)tableView;
- (UIViewController)viewController;
- (_MCDContentManager)initWithDataSource:(id)a3 delegate:(id)a4;
- (_MCDContentManager)initWithDataSource:(id)a3 limitedUI:(BOOL)a4 showLocalContent:(BOOL)a5 delegate:(id)a6 viewController:(id)a7 playbackManager:(id)a8 shouldPerformRequestImmediately:(BOOL)a9;
- (double)_heightForHeaderView;
- (double)_tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_textForHeaderView;
- (id)itemAtIndexPath:(id)a3;
- (id)itemsInSectionAtIndex:(int64_t)a3;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_initiatePlaybackForItem:(id)a3 shuffled:(BOOL)a4;
- (void)_performRequest;
- (void)_processResponse:(id)a3 error:(id)a4;
- (void)_setupOperationQueue;
- (void)dealloc;
- (void)modelResponseDidInvalidate:(id)a3;
- (void)performRequest:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setLimitedUI:(BOOL)a3;
- (void)setShowShuffleAll:(BOOL)a3;
- (void)setShowSiriCellInLimitedUI:(BOOL)a3;
- (void)setShowsMediaCell:(BOOL)a3;
- (void)setTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
@end

@implementation _MCDContentManager

- (_MCDContentManager)initWithDataSource:(id)a3 limitedUI:(BOOL)a4 showLocalContent:(BOOL)a5 delegate:(id)a6 viewController:(id)a7 playbackManager:(id)a8 shouldPerformRequestImmediately:(BOOL)a9
{
  v12 = a5;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = _MCDContentManager;
  v19 = [(_MCDContentManager *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_dataSource, v15);
    objc_storeWeak(&v20->_delegate, v16);
    v21 = objc_opt_class();
    objc_storeWeak(&v20->_tableCellClass, v21);
    v20->_limitedUI = a4;
    v20->_showLocalContent = v12;
    v20->_showFavoriteContent = 0;
    objc_storeStrong(&v20->_playbackManager, a8);
    [(MCDPlayableProvider *)v20->_playbackManager setLocalContentOnly:v12];
    [(MCDPlayableProvider *)v20->_playbackManager setFavoriteContentOnly:0];
    *&v20->_showSiriCellInLimitedUI = 0;
    v20->_showsMediaCell = 0;
    objc_storeWeak(&v20->_viewController, v17);
    v22 = [[SiriDirectActionSource alloc] initWithDelegate:0];
    siriDirectActionSource = v20->_siriDirectActionSource;
    v20->_siriDirectActionSource = v22;

    [(_MCDContentManager *)v20 _setupOperationQueue];
    if (a9)
    {
      [(_MCDContentManager *)v20 _performRequest];
    }
  }

  return v20;
}

- (_MCDContentManager)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _MCDContentManager;
  v8 = [(_MCDContentManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
    [(_MCDContentManager *)v9 _setupOperationQueue];
    [(_MCDContentManager *)v9 _performRequest];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(_MCDContentManager *)self siriDirectActionSource];
  [v4 invalidate];

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

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_MCDContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 itemAtIndexPath:v4];

  return v7;
}

- (id)itemsInSectionAtIndex:(int64_t)a3
{
  v4 = [(_MCDContentManager *)self lastReceivedResponse];
  v5 = [v4 results];
  v6 = [v5 itemsInSectionAtIndex:a3];

  return v6;
}

- (BOOL)itemIsPlayable:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 song];

    v4 = v5;
  }

  if ([(_MCDContentManager *)self limitedUI])
  {
    goto LABEL_8;
  }

  v6 = [(_MCDContentManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  v7 = [(_MCDContentManager *)self delegate];
  v8 = [v7 contentManager:self canDrillIntoItem:v4];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v9 = [_TtC5Music31CarPlayPlayabilityStatusService isModelObjectPlayable:v4];
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (void)setLimitedUI:(BOOL)a3
{
  if (self->_limitedUI != a3)
  {
    v4 = a3;
    self->_limitedUI = a3;
    v6 = [(_MCDContentManager *)self dataSource];
    [v6 setLimitedUI:v4];

    [(_MCDContentManager *)self setLastReceivedResponse:0];

    [(_MCDContentManager *)self _performRequest];
  }
}

- (void)setShowSiriCellInLimitedUI:(BOOL)a3
{
  if (self->_showSiriCellInLimitedUI != a3)
  {
    self->_showSiriCellInLimitedUI = a3;
    v4 = [(_MCDContentManager *)self tableView];
    [v4 reloadData];
  }
}

- (void)setShowShuffleAll:(BOOL)a3
{
  if (self->_showShuffleAll != a3)
  {
    self->_showShuffleAll = a3;
    v4 = [(_MCDContentManager *)self tableView];
    [v4 reloadData];
  }
}

- (void)setShowsMediaCell:(BOOL)a3
{
  if (self->_showsMediaCell != a3)
  {
    self->_showsMediaCell = a3;
    v4 = [(_MCDContentManager *)self tableView];
    [v4 reloadData];
  }
}

- (void)modelResponseDidInvalidate:(id)a3
{
  v7 = [a3 object];
  v4 = [(_MCDContentManager *)self lastReceivedResponse];
  v5 = [v7 isEqual:v4];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:MPModelResponseDidInvalidateNotification object:0];

    [(_MCDContentManager *)self _performRequest];
  }
}

- (void)setTableView:(id)a3
{
  v10 = a3;
  objc_storeWeak(&self->_tableView, v10);
  if (v10)
  {
    v4 = [(_MCDContentManager *)self tableCellClass];
    v5 = NSStringFromClass([(_MCDContentManager *)self tableCellClass]);
    [v10 registerClass:v4 forCellReuseIdentifier:v5];

    v6 = objc_opt_class();
    v7 = +[(_MCDReusableCell *)MCDShuffleActionCell];
    [v10 registerClass:v6 forCellReuseIdentifier:v7];

    v8 = objc_opt_class();
    v9 = +[(_MCDReusableCell *)MCDSiriActionCell];
    [v10 registerClass:v8 forCellReuseIdentifier:v9];

    [v10 setRowHeight:UITableViewAutomaticDimension];
    [v10 setEstimatedRowHeight:UITableViewAutomaticDimension];
    [v10 setDataSource:self];
    [v10 setDelegate:self];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(_MCDContentManager *)self lastReceivedResponse];
  v4 = [v3 results];
  v5 = [v4 numberOfSections];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(_MCDContentManager *)self lastReceivedResponse];
  v7 = [v6 results];
  v8 = [v7 numberOfSections];

  if (v8 <= a4)
  {
    return 0;
  }

  v9 = [(_MCDContentManager *)self lastReceivedResponse];
  v10 = [v9 results];
  v11 = [v10 numberOfItemsInSection:a4];

  if (!a4)
  {
    v12 = [(_MCDContentManager *)self showShuffleAll];
    if (v11 > 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v11 += v13;
  }

  v14 = [(_MCDContentManager *)self limitedUI];
  v15 = 12;
  if (v11 < 12)
  {
    v15 = v11;
  }

  if (v14)
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(objc_class *)[(_MCDContentManager *)self tableCellClass] cellForTableView:v6 indexPath:v7];
  if (-[_MCDContentManager showSiriCellInLimitedUI](self, "showSiriCellInLimitedUI") && -[_MCDContentManager limitedUI](self, "limitedUI") && [v7 row] == 11)
  {
    v9 = [(_MCDReusableCell *)MCDSiriActionCell cellForTableView:v6 indexPath:v7];
    goto LABEL_17;
  }

  if (!-[_MCDContentManager showShuffleAll](self, "showShuffleAll") || [v7 section])
  {
    goto LABEL_9;
  }

  if ([v7 row])
  {
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v7 row] - 1, objc_msgSend(v7, "section"));

    v7 = v10;
LABEL_9:
    v11 = [(_MCDContentManager *)self itemAtIndexPath:v7];
    v12 = [(_MCDContentManager *)self tableCellConfigurationBlock];

    if (v12)
    {
      v13 = [(_MCDContentManager *)self tableCellConfigurationBlock];
      (v13)[2](v13, v8, 0, v11, v6, v7);
    }

    [v8 setAccessoryType:0];
    if (![(_MCDContentManager *)self limitedUI])
    {
      v14 = [(_MCDContentManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v15 = [(_MCDContentManager *)self delegate];
        v16 = [v15 contentManager:self canDrillIntoItem:v11];

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

  v9 = [(_MCDReusableCell *)MCDShuffleActionCell cellForTableView:v6 indexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 sizeForArtwork];
    [v9 setSizeForArtwork:?];
  }

LABEL_17:

  return v9;
}

- (id)sectionIndexTitlesForTableView:(id)a3
{
  v4 = [(_MCDContentManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_MCDContentManager *)self delegate];
    v7 = [v6 sectionIndexTitlesForContentManager:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v7 = a4;
  v8 = [(_MCDContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_MCDContentManager *)self delegate];
    a5 = [v10 sectionForSectionIndexTitle:v7 atIndex:a5 contentManager:self];
  }

  return a5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24 = a4;
  v5 = [v24 copy];
  if (-[_MCDContentManager showSiriCellInLimitedUI](self, "showSiriCellInLimitedUI") && -[_MCDContentManager limitedUI](self, "limitedUI") && [v24 row] == 11)
  {
    v6 = [(_MCDContentManager *)self tableView];
    [v6 deselectRowAtIndexPath:v24 animated:1];

    v7 = [SiriDirectActionContext musicSearchDirectActionWithAppBundleId:MCDMusicBundleIdentifier];
    v8 = [(_MCDContentManager *)self siriDirectActionSource];
    [v8 activateWithContext:v7 completion:&stru_101098230];
    goto LABEL_15;
  }

  if (!-[_MCDContentManager showShuffleAll](self, "showShuffleAll") || [v24 section])
  {
    goto LABEL_9;
  }

  if ([v24 row])
  {
    v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v24 row] - 1, objc_msgSend(v24, "section"));

    v5 = v9;
LABEL_9:
    v7 = [(_MCDContentManager *)self itemAtIndexPath:v5];
    if ([(_MCDContentManager *)self limitedUI])
    {
      if ([(_MCDContentManager *)self itemIsPlayable:v7])
      {
        [(_MCDContentManager *)self _initiatePlaybackForItem:v7 shuffled:0];
LABEL_27:

        goto LABEL_28;
      }

      v8 = [(_MCDContentManager *)self tableView];
      [v8 deselectRowAtIndexPath:v24 animated:1];
LABEL_15:

      goto LABEL_27;
    }

    v10 = [(_MCDContentManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(_MCDContentManager *)self delegate];
      v13 = [v12 contentManager:self viewControllerForItem:v7];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(_MCDContentManager *)self viewController];
    [v13 setPlayActivityFeatureNameSourceViewController:v14];

    if (v13)
    {
      v15 = [(_MCDContentManager *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(_MCDContentManager *)self delegate];
        [v17 contentManager:self shouldDisplayViewController:v13];
      }

      goto LABEL_26;
    }

    if (![(_MCDContentManager *)self itemIsPlayable:v7])
    {
      v21 = [(_MCDContentManager *)self tableView];
      [v21 deselectRowAtIndexPath:v24 animated:1];

LABEL_26:
      goto LABEL_27;
    }

    v18 = self;
    v19 = v7;
    v20 = 0;
LABEL_25:
    [(_MCDContentManager *)v18 _initiatePlaybackForItem:v19 shuffled:v20];
    goto LABEL_26;
  }

  v22 = [(_MCDContentManager *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v7 = [(_MCDContentManager *)self delegate];
    v13 = [v7 shuffleContainerForContentManager:self];
    v18 = self;
    v19 = v13;
    v20 = 1;
    goto LABEL_25;
  }

  [(_MCDContentManager *)self _initiatePlaybackForItem:0 shuffled:1];
LABEL_28:
}

- (double)_tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(_MCDContentManager *)self limitedUI:a3]|| [(_MCDContentManager *)self showLocalContent])
  {
    v5 = [(_MCDContentManager *)self _textForHeaderView];
    v6 = 27.0;
    if (!v5)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(_MCDContentManager *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_MCDContentManager *)self delegate];
    v8 = [v7 viewForHeaderViewInContentManager:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [(_MCDContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 && [v14 numberOfSections] <= 1 && (-[_MCDContentManager limitedUI](self, "limitedUI") || -[_MCDContentManager showLocalContent](self, "showLocalContent")))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
      MCDSetupTableHeaderView();
      v11 = +[UIBackgroundConfiguration clearConfiguration];
      [v10 setBackgroundConfiguration:v11];

      v12 = [(_MCDContentManager *)self _textForHeaderView];
      v13 = [v10 textLabel];

      [v13 setText:v12];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 scrollViewDidScroll:v7];
  }
}

- (void)_initiatePlaybackForItem:(id)a3 shuffled:(BOOL)a4
{
  v4 = a4;
  v20 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MCDMPModelObjectForGenericObject();

    v7 = v6;
  }

  else
  {
    v7 = v20;
  }

  v21 = v7;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [(_MCDContentManager *)self dataSource];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(_MCDContentManager *)self dataSource];
      v11 = [v10 forceScopingToResponseResults];
    }

    else
    {
      v11 = 0;
    }

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = [(_MCDContentManager *)self playbackManager];
      v15 = [(_MCDContentManager *)self lastReceivedResponse];
      v16 = [(_MCDContentManager *)self viewController];
      v17 = [v16 combinedPlayActivityFeatureName];
      [v14 initiatePlaybackForPlaylistEntry:v21 lastResponse:v15 shuffled:v4 forceScopingToResponseResults:v11 playActivityFeatureName:v17];
    }

    else
    {
      v12 = [(_MCDContentManager *)self dataSource];
      v13 = objc_opt_respondsToSelector();

      v14 = [(_MCDContentManager *)self playbackManager];
      if (v13)
      {
        v15 = [(_MCDContentManager *)self dataSource];
        v16 = [v15 playbackSectionKind];
        v17 = [(_MCDContentManager *)self lastReceivedResponse];
        v18 = [(_MCDContentManager *)self viewController];
        v19 = [v18 combinedPlayActivityFeatureName];
        [v14 initiatePlaybackForSong:v21 sectionKind:v16 lastResponse:v17 shuffled:v4 forceScopingToResponseResults:v11 playActivityFeatureName:v19];
      }

      else
      {
        v15 = [(_MCDContentManager *)self lastReceivedResponse];
        v16 = [(_MCDContentManager *)self viewController];
        v17 = [v16 combinedPlayActivityFeatureName];
        [v14 initiatePlaybackForSong:v21 lastResponse:v15 shuffled:v4 forceScopingToResponseResults:v11 playActivityFeatureName:v17];
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(_MCDContentManager *)self playbackManager];
      v15 = [(_MCDContentManager *)self lastReceivedResponse];
      v16 = [(_MCDContentManager *)self viewController];
      v17 = [v16 combinedPlayActivityFeatureName];
      [v14 initiatePlaybackForPlaylist:v21 lastResponse:v15 shuffled:v4 playActivityFeatureName:v17];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [(_MCDContentManager *)self playbackManager];
        v15 = [(_MCDContentManager *)self lastReceivedResponse];
        v16 = [(_MCDContentManager *)self viewController];
        v17 = [v16 combinedPlayActivityFeatureName];
        [v14 initiatePlaybackForGenre:v21 lastResponse:v15 shuffled:v4 playActivityFeatureName:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [(_MCDContentManager *)self playbackManager];
          v15 = [(_MCDContentManager *)self lastReceivedResponse];
          v16 = [(_MCDContentManager *)self viewController];
          v17 = [v16 combinedPlayActivityFeatureName];
          [v14 initiatePlaybackForAlbum:v21 lastResponse:v15 shuffled:v4 playActivityFeatureName:v17];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          v14 = [(_MCDContentManager *)self playbackManager];
          v15 = [(_MCDContentManager *)self lastReceivedResponse];
          v16 = [(_MCDContentManager *)self viewController];
          v17 = [v16 combinedPlayActivityFeatureName];
          [v14 initiatePlaybackForPerson:v21 lastResponse:v15 shuffled:v4 playActivityFeatureName:v17];
        }
      }
    }
  }

LABEL_25:
}

- (double)_heightForHeaderView
{
  v3 = [(_MCDContentManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(_MCDContentManager *)self delegate];
  [v5 heightForHeaderViewInContentManager:self];
  v7 = v6;

  return v7;
}

- (id)_textForHeaderView
{
  v3 = [(_MCDContentManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [(_MCDContentManager *)self tableView];
  v5 = [v4 numberOfSections];

  if (v5 == 1)
  {
    v3 = [(_MCDContentManager *)self delegate];
    v6 = [v3 textForHeaderViewInContentManager:self];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_performRequest
{
  v3 = [(_MCDContentManager *)self lastReceivedResponse];

  if (v3)
  {
    v4 = [(_MCDContentManager *)self lastReceivedResponse];
    v5 = [v4 request];
  }

  else
  {
    v5 = [(_MCDContentManager *)self _modelRequest];
  }

  v6 = [(_MCDContentManager *)self _operationForRequest:v5];
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

    v13 = self;
    v14 = 2112;
    v15 = v5;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Performing request: %@, as operation: %c", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [(_MCDContentManager *)self operationQueue];
    [v9 addOperation:v6];
  }

  else
  {
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F16C8;
    v10[3] = &unk_101098258;
    objc_copyWeak(&v11, buf);
    [v5 performWithResponseHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)performRequest:(id)a3
{
  v4 = a3;
  v5 = [(_MCDContentManager *)self lastReceivedResponse];

  if (v5)
  {
    v6 = [(_MCDContentManager *)self lastReceivedResponse];
    v7 = [v6 request];
  }

  else
  {
    v7 = [(_MCDContentManager *)self _modelRequest];
  }

  [v7 performWithResponseHandler:v4];
}

- (void)_processResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = MCDMusicGeneralLogging();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = self;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Processing response of request: %@", buf, 0x16u);
    }

    v13 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v14 = sub_1000F1A2C;
    v15 = v6;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100DEEF20(self, v8, v10);
  }

  v11 = [(_MCDContentManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v14 = sub_1000F19D8;
    v15 = v7;
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