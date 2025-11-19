@interface MCDFuseContentManager
- (BOOL)offlineMode;
- (BOOL)tableView:(id)a3 shouldUpdateFocusInContext:(id)a4;
- (MCDFuseContentManager)initWithDataSource:(id)a3 delegate:(id)a4 viewController:(id)a5 playbackManager:(id)a6 limitedUI:(BOOL)a7 contentResults:(id)a8;
- (MCDFuseContentManagerDelegate)delegate;
- (UITableView)tableView;
- (UIViewController)viewController;
- (id)actionForHeaderInSection:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)itemsInSectionAtIndex:(unint64_t)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)maximumNumberOfItemsForDisplay;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
- (void)_invalidateLoadingTimer;
- (void)_networkConditionsDidChange:(id)a3;
- (void)_processResponse:(id)a3 error:(id)a4;
- (void)_replacePlaceholderViewWithView:(id)a3;
- (void)_updateViewForNetwork;
- (void)clearActivityIndicatorForSelectedIndexPath;
- (void)dealloc;
- (void)decorateRequest:(id)a3;
- (void)displayPlaceholderViewIfNeeded;
- (void)modelResponseDidInvalidate:(id)a3;
- (void)performRefresh;
- (void)performRequest;
- (void)setLimitedUI:(BOOL)a3;
- (void)setTableView:(id)a3;
- (void)showContentScreen;
- (void)showErrorScreen;
- (void)showLoadingScreen;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePlaceholderViewFrameIfNeeded;
@end

@implementation MCDFuseContentManager

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (MCDFuseContentManager)initWithDataSource:(id)a3 delegate:(id)a4 viewController:(id)a5 playbackManager:(id)a6 limitedUI:(BOOL)a7 contentResults:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v33.receiver = self;
  v33.super_class = MCDFuseContentManager;
  v20 = [(MCDFuseContentManager *)&v33 init];
  if (v20)
  {
    v31 = v19;
    v32 = v15;
    v21 = objc_alloc_init(NSOperationQueue);
    operationQueue = v20->_operationQueue;
    v20->_operationQueue = v21;

    [(NSOperationQueue *)v20->_operationQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v20->_operationQueue setQualityOfService:25];
    v23 = v20->_operationQueue;
    [(MCDFuseContentManager *)v20 _queueName];
    v25 = v24 = a7;
    [(NSOperationQueue *)v23 setName:v25];

    v26 = objc_opt_new();
    refreshQueue = v20->_refreshQueue;
    v20->_refreshQueue = v26;

    [(NSOperationQueue *)v20->_refreshQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v20->_refreshQueue setQualityOfService:17];
    [(NSOperationQueue *)v20->_refreshQueue setName:@"RefreshQueue"];
    objc_storeStrong(&v20->_dataSource, a3);
    objc_storeWeak(&v20->_delegate, v16);
    objc_storeWeak(&v20->_viewController, v17);
    objc_storeStrong(&v20->_playbackManager, a6);
    v20->_limitedUI = v24;
    objc_storeStrong(&v20->_contentResults, a8);
    if (v20->_contentResults)
    {
      v28 = objc_opt_new();
      [v28 setLoadAdditionalContentURL:0];
      v29 = [[MPModelStoreBrowseResponse alloc] initWithRequest:v28];
      [v29 setResults:v20->_contentResults];
      [(MCDFuseContentManager *)v20 _processResponse:v29 error:0];
    }

    else
    {
      [(MCDFuseContentManager *)v20 performRequest];
    }

    v15 = v32;
    v19 = v31;
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDFuseContentManager;
  [(MCDFuseContentManager *)&v4 dealloc];
}

- (void)decorateRequest:(id)a3
{
  v16 = a3;
  v4 = [v16 clientVersion];

  if (!v4)
  {
    [v16 setClientVersion:@"2.0"];
  }

  v5 = [(MCDFuseContentManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MCDFuseContentManager *)self dataSource];
    [v7 timeoutInterval];
    [v16 setTimeoutInterval:?];
  }

  v8 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self dataSource];
    v11 = [v10 itemProperties];
    [v16 setItemProperties:v11];
  }

  v12 = [(MCDFuseContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(MCDFuseContentManager *)self dataSource];
    v15 = [v14 sectionProperties];
    [v16 setSectionProperties:v15];
  }
}

- (void)performRequest
{
  v3 = [(MCDFuseContentManager *)self contentResults];

  if (!v3)
  {
    v4 = [(MCDFuseContentManager *)self _modelRequest];
    [(MCDFuseContentManager *)self decorateRequest:v4];
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_1000EA3C0;
    v8[4] = sub_1000EA3D0;
    v9 = self;
    operationQueue = v9->_operationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EA3D8;
    v7[3] = &unk_101098108;
    v7[4] = v8;
    v6 = [v4 newOperationWithResponseHandler:v7];
    [(NSOperationQueue *)operationQueue addOperation:v6];

    _Block_object_dispose(v8, 8);
  }
}

- (void)performRefresh
{
  v3 = [(MCDFuseContentManager *)self _refreshRequest];
  if (!v3)
  {
    v4 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEE4C(v4);
    }
  }

  [(MCDFuseContentManager *)self decorateRequest:v3];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000EA3C0;
  v8[4] = sub_1000EA3D0;
  v9 = self;
  refreshQueue = v9->_refreshQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EA544;
  v7[3] = &unk_101098108;
  v7[4] = v8;
  v6 = [v3 newOperationWithResponseHandler:v7];
  [(NSOperationQueue *)refreshQueue addOperation:v6];

  _Block_object_dispose(v8, 8);
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v5 = [v4 results];
  v6 = [v5 sectionAtIndex:a3];

  return v6;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v4 section];

  v8 = [v6 sectionAtIndex:v7];

  return v8;
}

- (id)itemsInSectionAtIndex:(unint64_t)a3
{
  v4 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v5 = [v4 results];
  v6 = [v5 itemsInSectionAtIndex:a3];

  return v6;
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v3 = [(MCDFuseContentManager *)self viewController];
  v4 = [objc_opt_class() wantsTallCells];

  return v4;
}

- (int64_t)maximumNumberOfItemsForDisplay
{
  if ([(MCDFuseContentManager *)self limitedUI])
  {
    return 12;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_processResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1000EA3C0;
  v15[4] = sub_1000EA3D0;
  v16 = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EA8EC;
  v10[3] = &unk_101098130;
  v11 = v6;
  v12 = v7;
  v13 = v16;
  v14 = v15;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);

  _Block_object_dispose(v15, 8);
}

- (void)clearActivityIndicatorForSelectedIndexPath
{
  v3 = [(MCDFuseContentManager *)self selectedIndexPath];

  if (v3)
  {
    v4 = [(MCDFuseContentManager *)self tableView];
    v5 = [(MCDFuseContentManager *)self selectedIndexPath];
    v6 = [v4 cellForRowAtIndexPath:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setLoading:0];
    }
  }
}

- (void)setLimitedUI:(BOOL)a3
{
  if (self->_limitedUI != a3)
  {
    self->_limitedUI = a3;
    v4 = [(MCDFuseContentManager *)self tableView];
    [v4 reloadData];
  }
}

- (void)modelResponseDidInvalidate:(id)a3
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000EAC48;
  v8 = &unk_101098158;
  v9 = self;
  v3 = a3;
  v10 = v3;
  v4 = objc_retainBlock(&v5);
  if ([NSThread isMainThread:v5])
  {
    (v4[2])(v4);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v4);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v7 = [(MCDFuseContentManager *)self allowedNumberOfItemsForDisplayWithResponse:v6 inSection:a4];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v5 = [v4 results];
  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v7 = [v6 results];
    v8 = [v7 numberOfSections];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [NSIndexPath indexPathForRow:0 inSection:a4];
  v8 = [(MCDFuseContentManager *)self cellTitleAtIndexPath:v7];

  v9 = +[CPUITableHeaderFooterView reuseIdentifier];
  v10 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitle:v8];
  v11 = [(MCDFuseContentManager *)self actionForHeaderInSection:a4];
  [v10 setAction:v11];

  return v10;
}

- (id)actionForHeaderInSection:(int64_t)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EAF30;
  v5[3] = &unk_101098180;
  v5[4] = self;
  v5[5] = a3;
  v3 = objc_retainBlock(v5);

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCDFuseContentManager *)self itemAtIndexPath:v7];
  v9 = [(MCDFuseContentManager *)self cellTypeAtIndexPath:v7];
  v10 = 0;
  v11 = 0;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v10 = [(_MCDReusableCell *)MCDSiriActionCell cellForTableView:v6 indexPath:v7];
LABEL_22:
          v11 = 0;
          goto LABEL_23;
        }

        goto LABEL_23;
      }

      v21 = MCDTallCell;
    }

    else
    {
      v21 = MCDTableViewCell;
    }

    v10 = [(__objc2_class *)v21 cellForTableView:v6 indexPath:v7];
    v11 = 1;
    goto LABEL_23;
  }

  if (v9 <= 4)
  {
    if (v9 != 3)
    {
      v12 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:2];
      v13 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];

      v10 = v13;
      [v10 setGridViewStyle:2];
      [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
      v14 = self;
      v15 = v7;
      v16 = 1;
      v17 = 0;
LABEL_12:
      v20 = [(MCDFuseContentManager *)v14 viewModelsAtIndexPath:v15 prefersTallArtwork:v16 withSubtitleForPlaylists:1 actionToPerform:v17];
      [v10 setViewModels:v20];

      goto LABEL_22;
    }

    v10 = [CPUIImageRowCell cellForTableView:v6];
    v22 = [(MCDFuseContentManager *)self childrenOfItemAtIndexPath:v7];
    v23 = [(MCDFuseContentManager *)self rowCellItemConfigurationsAtIndexPath:v7];
    objc_initWeak(&location, self);
    v24 = -[MCDFuseContentManager maximumNumberOfLinesInSection:](self, "maximumNumberOfLinesInSection:", [v7 section]);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000EB5E0;
    v48[3] = &unk_1010981A8;
    objc_copyWeak(&v50, &location);
    v25 = v22;
    v49 = v25;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000EB650;
    v45[3] = &unk_101097FD8;
    objc_copyWeak(&v47, &location);
    v46 = v7;
    LOBYTE(v44) = 1;
    v26 = [CPUIImageRowCellConfiguration configurationWithText:0 itemsConfigurations:v23 maximumNumberOfLines:v24 contentInsets:v48 selectGridItemBlock:v45 selectTitleBlock:0 showActivityIndicator:0.0 enabled:8.0 bundleIdentifier:0.0, 0.0, v44, 0];
    [v10 applyConfiguration:v26];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);

LABEL_21:
    goto LABEL_22;
  }

  if (v9 == 5)
  {
    v27 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:0];
    v28 = [v6 dequeueReusableCellWithIdentifier:v27 forIndexPath:v7];

    v10 = v28;
    [v10 setGridViewStyle:0];
    v29 = [[CPUIGridViewBaseStyleOptions alloc] initWithMaximumNumberOfLines:2 condensedOptions:0 imageGridOptions:0];
    [v10 setGridViewStyleOptions:v29];
    [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
    v30 = [(MCDFuseContentManager *)self viewModelsAtIndexPath:v7 prefersTallArtwork:0 withSubtitleForPlaylists:1 actionToPerform:0];
    if ([v30 count] <= 6)
    {
      v31 = [v30 count];
    }

    else
    {
      v31 = 6;
    }

    v32 = [v30 subarrayWithRange:{0, v31}];
    [v10 setViewModels:v32];

    goto LABEL_21;
  }

  if (v9 == 6)
  {
    v18 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:1];
    v19 = [v6 dequeueReusableCellWithIdentifier:v18 forIndexPath:v7];

    v10 = v19;
    [v10 setGridViewStyle:1];
    [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
    v14 = self;
    v15 = v7;
    v16 = 0;
    v17 = 1;
    goto LABEL_12;
  }

LABEL_23:
  v33 = [(MCDFuseContentManager *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = [(MCDFuseContentManager *)self delegate];
    v36 = [v35 showRankedList];

    if (v36)
    {
      v37 = [(_MCDReusableCell *)MCDRankedContentCell cellForTableView:v6 indexPath:v7];

      v10 = v37;
    }
  }

  v38 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v39 = [v38 results];
  v40 = [v39 sectionAtIndex:{objc_msgSend(v7, "section")}];

  if (v11)
  {
    v41 = [(MCDFuseContentManager *)self tableCellConfigurationBlock];

    if (v41)
    {
      v42 = [(MCDFuseContentManager *)self tableCellConfigurationBlock];
      (v42)[2](v42, v10, v40, v8, v6, v7);
    }
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [(MCDFuseContentManager *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v16];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setLoading:1];
  }

  v7 = [(MCDFuseContentManager *)self itemAtIndexPath:v16];
  [(MCDFuseContentManager *)self setSelectedIndexPath:v16];
  v8 = [(MCDFuseContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self delegate];
    v11 = [v10 contentManager:self viewControllerForItem:v7 indexPath:v16];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MCDFuseContentManager *)self viewController];
  [v11 setPlayActivityFeatureNameSourceViewController:v12];

  if (v11)
  {
    v13 = [(MCDFuseContentManager *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(MCDFuseContentManager *)self delegate];
      [v15 contentManager:self shouldDisplayViewController:v11];
    }
  }

  else
  {
    [(MCDFuseContentManager *)self _initiatePlaybackForItem:v7];
  }
}

- (BOOL)tableView:(id)a3 shouldUpdateFocusInContext:(id)a4
{
  v5 = a4;
  if ([(MCDFuseContentManager *)self offlineMode])
  {
    v6 = [v5 nextFocusedItem];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)setTableView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_tableView, v4);
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = +[(_MCDReusableCell *)MCDTableViewCell];
    [v4 registerClass:v5 forCellReuseIdentifier:v6];

    v7 = objc_opt_class();
    v8 = +[(_MCDReusableCell *)MCDTallCell];
    [v4 registerClass:v7 forCellReuseIdentifier:v8];

    v9 = objc_opt_class();
    v10 = +[(_MCDReusableCell *)MCDRankedContentCell];
    [v4 registerClass:v9 forCellReuseIdentifier:v10];

    v11 = objc_opt_class();
    v12 = +[(_MCDReusableCell *)MCDSiriActionCell];
    [v4 registerClass:v11 forCellReuseIdentifier:v12];

    v13 = objc_opt_class();
    v14 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:0];
    [v4 registerClass:v13 forCellReuseIdentifier:v14];

    v15 = objc_opt_class();
    v16 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:1];
    [v4 registerClass:v15 forCellReuseIdentifier:v16];

    v17 = objc_opt_class();
    v18 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:2];
    [v4 registerClass:v17 forCellReuseIdentifier:v18];

    v19 = objc_opt_class();
    v20 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:3];
    [v4 registerClass:v19 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[CPUITableHeaderFooterView reuseIdentifier];
    [v4 registerClass:v21 forHeaderFooterViewReuseIdentifier:v22];

    [v4 setRowHeight:UITableViewAutomaticDimension];
    [v4 setEstimatedRowHeight:UITableViewAutomaticDimension];
    [v4 setDataSource:self];
    [v4 setDelegate:self];
    [v4 _setHeaderAndFooterViewsFloat:0];
    v23 = +[NSNotificationCenter defaultCenter];
    v24 = MPNetworkObserverIsMusicCellularStreamingAllowedDidChangeNotification;
    v25 = +[MPNetworkObserver sharedNetworkObserver];
    [v23 addObserver:self selector:"_networkConditionsDidChange:" name:v24 object:v25];

    v26 = +[ICEnvironmentMonitor sharedMonitor];
    [v26 registerObserver:self];

    v27 = [(MCDFuseContentManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v28 = [(MCDFuseContentManager *)self delegate];
      v29 = [v28 hasLoadedStoreContent];

      if (v29)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    objc_initWeak(&location, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000EBD28;
    v32[3] = &unk_101097D20;
    objc_copyWeak(&v33, &location);
    v30 = [MPWeakTimer timerWithInterval:0 repeats:v32 block:2.0];
    loadingTimer = self->_loadingTimer;
    self->_loadingTimer = v30;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
LABEL_7:
  }
}

- (void)showLoadingScreen
{
  v3 = [(MCDFuseContentManager *)self contentResults];

  if (!v3)
  {
    v4 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing loading view", v6, 2u);
    }

    [(MCDFuseContentManager *)self _invalidateLoadingTimer];
    v5 = +[_TtC5Music22CarPlayInformationView loading];
    [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:v5];
  }
}

- (void)showErrorScreen
{
  [(MCDFuseContentManager *)self _invalidateLoadingTimer];
  if ([(MCDFuseContentManager *)self offlineMode])
  {

    [(MCDFuseContentManager *)self _updateViewForNetwork];
  }

  else
  {
    v3 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing error view", buf, 2u);
    }

    v4 = MCDCarDisplayBundle();
    v5 = [v4 localizedStringForKey:@"FUSE_TIMEOUT_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v6 = MCDCarDisplayBundle();
    v7 = [v6 localizedStringForKey:@"Try Again" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EBFC8;
    v9[3] = &unk_101097CF8;
    v9[4] = self;
    v8 = [_TtC5Music22CarPlayInformationView errorWithTitle:v5 buttonText:v7 buttonAction:v9];

    [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:v8];
  }
}

- (void)showContentScreen
{
  [(MCDFuseContentManager *)self _invalidateLoadingTimer];
  if ([(MCDFuseContentManager *)self offlineMode])
  {

    [(MCDFuseContentManager *)self _updateViewForNetwork];
  }

  else
  {
    v3 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing content view", v5, 2u);
    }

    [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:0];
    v4 = [(MCDFuseContentManager *)self tableView];
    [v4 reloadData];
  }
}

- (void)displayPlaceholderViewIfNeeded
{
  v3 = [(MCDFuseContentManager *)self placeholderView];

  if (v3)
  {
    v4 = [(MCDFuseContentManager *)self placeholderView];
    [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:v4];
  }
}

- (void)updatePlaceholderViewFrameIfNeeded
{
  v3 = [(MCDFuseContentManager *)self placeholderView];
  v4 = [v3 superview];

  if (v4)
  {
    v23 = [(MCDFuseContentManager *)self tableView];
    [v23 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(MCDFuseContentManager *)self tableView];
    [v13 safeAreaInsets];
    v15 = v6 + v14;
    v17 = v8 + v16;
    v19 = v10 - (v14 + v18);
    v21 = v12 - (v16 + v20);
    v22 = [(MCDFuseContentManager *)self placeholderView];
    [v22 setFrame:{v15, v17, v19, v21}];
  }
}

- (void)_replacePlaceholderViewWithView:(id)a3
{
  v34 = a3;
  v4 = [(MCDFuseContentManager *)self placeholderView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [(MCDFuseContentManager *)self placeholderView];
    [v6 removeFromSuperview];
  }

  [(MCDFuseContentManager *)self setPlaceholderView:v34];
  v7 = [(MCDFuseContentManager *)self placeholderView];
  v8 = [(MCDFuseContentManager *)self tableView];
  [v8 setScrollEnabled:v7 == 0];

  v9 = [(MCDFuseContentManager *)self placeholderView];
  v10 = [(MCDFuseContentManager *)self tableView];
  [v10 setHidden:v9 != 0];

  v11 = [(MCDFuseContentManager *)self placeholderView];

  if (v11)
  {
    v12 = [(MCDFuseContentManager *)self tableView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(MCDFuseContentManager *)self tableView];
    [v21 safeAreaInsets];
    v23 = v14 + v22;
    v25 = v16 + v24;
    v27 = v18 - (v22 + v26);
    v29 = v20 - (v24 + v28);

    v30 = [(MCDFuseContentManager *)self placeholderView];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [(MCDFuseContentManager *)self tableView];
    v32 = [v31 superview];
    v33 = [(MCDFuseContentManager *)self placeholderView];
    [v32 addSubview:v33];
  }
}

- (void)_invalidateLoadingTimer
{
  [(MPWeakTimer *)self->_loadingTimer invalidate];
  loadingTimer = self->_loadingTimer;
  self->_loadingTimer = 0;
}

- (void)_networkConditionsDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC504;
  block[3] = &unk_101097CF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)offlineMode
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  [v2 networkType];

  if (!MCDNetworkConnectionAvailable())
  {
    return 1;
  }

  return MCDNetworkRestrictedCellularData();
}

- (void)_updateViewForNetwork
{
  if ([(MCDFuseContentManager *)self offlineMode])
  {
    v3 = +[ICEnvironmentMonitor sharedMonitor];
    [v3 networkType];

    if (MCDNetworkConnectionAvailable())
    {
      if (MCDNetworkRestrictedCellularData())
      {
        v4 = MCDCarDisplayBundle();
        v5 = [v4 localizedStringForKey:@"FUSE_CELLULAR_DATA_RESTRICTED_TITLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
        v6 = +[NSBundle mainBundle];
        v7 = [v6 localizedStringForKey:@"Turn On" value:&stru_101107168 table:0];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000EC868;
        v17[3] = &unk_101097CF8;
        v17[4] = self;
        v8 = [_TtC5Music22CarPlayInformationView errorWithTitle:v5 buttonText:v7 buttonAction:v17];

        v9 = MCDMusicGeneralLogging();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Showing cellular data restricted view", buf, 2u);
        }

        [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:v8];
      }
    }

    else
    {
      v11 = MCDMusicGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Showing offline view", buf, 2u);
      }

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"You’re Offline" value:&stru_101107168 table:0];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"Your iPhone is not connected to the internet" value:&stru_101107168 table:0];
      v16 = [_TtC5Music22CarPlayInformationView noContentWithTitle:v13 subtitle:v15 buttonText:0 buttonAction:0 isCentered:0];

      [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:v16];
    }
  }

  else
  {
    v10 = [(MCDFuseContentManager *)self placeholderView];

    if (v10)
    {
      [(MCDFuseContentManager *)self showLoadingScreen];
    }

    [(MCDFuseContentManager *)self performRequest];
  }
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (MCDFuseContentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end