@interface MCDFuseContentManager
- (BOOL)offlineMode;
- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context;
- (MCDFuseContentManager)initWithDataSource:(id)source delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager limitedUI:(BOOL)i contentResults:(id)results;
- (MCDFuseContentManagerDelegate)delegate;
- (UITableView)tableView;
- (UIViewController)viewController;
- (id)actionForHeaderInSection:(int64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)itemsInSectionAtIndex:(unint64_t)index;
- (id)sectionAtIndex:(unint64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)maximumNumberOfItemsForDisplay;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
- (void)_invalidateLoadingTimer;
- (void)_networkConditionsDidChange:(id)change;
- (void)_processResponse:(id)response error:(id)error;
- (void)_replacePlaceholderViewWithView:(id)view;
- (void)_updateViewForNetwork;
- (void)clearActivityIndicatorForSelectedIndexPath;
- (void)dealloc;
- (void)decorateRequest:(id)request;
- (void)displayPlaceholderViewIfNeeded;
- (void)modelResponseDidInvalidate:(id)invalidate;
- (void)performRefresh;
- (void)performRequest;
- (void)setLimitedUI:(BOOL)i;
- (void)setTableView:(id)view;
- (void)showContentScreen;
- (void)showErrorScreen;
- (void)showLoadingScreen;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updatePlaceholderViewFrameIfNeeded;
@end

@implementation MCDFuseContentManager

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (MCDFuseContentManager)initWithDataSource:(id)source delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager limitedUI:(BOOL)i contentResults:(id)results
{
  sourceCopy = source;
  delegateCopy = delegate;
  controllerCopy = controller;
  managerCopy = manager;
  resultsCopy = results;
  v33.receiver = self;
  v33.super_class = MCDFuseContentManager;
  v20 = [(MCDFuseContentManager *)&v33 init];
  if (v20)
  {
    v31 = resultsCopy;
    v32 = sourceCopy;
    v21 = objc_alloc_init(NSOperationQueue);
    operationQueue = v20->_operationQueue;
    v20->_operationQueue = v21;

    [(NSOperationQueue *)v20->_operationQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v20->_operationQueue setQualityOfService:25];
    v23 = v20->_operationQueue;
    [(MCDFuseContentManager *)v20 _queueName];
    v25 = v24 = i;
    [(NSOperationQueue *)v23 setName:v25];

    v26 = objc_opt_new();
    refreshQueue = v20->_refreshQueue;
    v20->_refreshQueue = v26;

    [(NSOperationQueue *)v20->_refreshQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v20->_refreshQueue setQualityOfService:17];
    [(NSOperationQueue *)v20->_refreshQueue setName:@"RefreshQueue"];
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeWeak(&v20->_viewController, controllerCopy);
    objc_storeStrong(&v20->_playbackManager, manager);
    v20->_limitedUI = v24;
    objc_storeStrong(&v20->_contentResults, results);
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

    sourceCopy = v32;
    resultsCopy = v31;
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

- (void)decorateRequest:(id)request
{
  requestCopy = request;
  clientVersion = [requestCopy clientVersion];

  if (!clientVersion)
  {
    [requestCopy setClientVersion:@"2.0"];
  }

  dataSource = [(MCDFuseContentManager *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    [dataSource2 timeoutInterval];
    [requestCopy setTimeoutInterval:?];
  }

  dataSource3 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource4 = [(MCDFuseContentManager *)self dataSource];
    itemProperties = [dataSource4 itemProperties];
    [requestCopy setItemProperties:itemProperties];
  }

  dataSource5 = [(MCDFuseContentManager *)self dataSource];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    dataSource6 = [(MCDFuseContentManager *)self dataSource];
    sectionProperties = [dataSource6 sectionProperties];
    [requestCopy setSectionProperties:sectionProperties];
  }
}

- (void)performRequest
{
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (!contentResults)
  {
    _modelRequest = [(MCDFuseContentManager *)self _modelRequest];
    [(MCDFuseContentManager *)self decorateRequest:_modelRequest];
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_1000EA3C0;
    v8[4] = sub_1000EA3D0;
    selfCopy = self;
    operationQueue = selfCopy->_operationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EA3D8;
    v7[3] = &unk_101098108;
    v7[4] = v8;
    v6 = [_modelRequest newOperationWithResponseHandler:v7];
    [(NSOperationQueue *)operationQueue addOperation:v6];

    _Block_object_dispose(v8, 8);
  }
}

- (void)performRefresh
{
  _refreshRequest = [(MCDFuseContentManager *)self _refreshRequest];
  if (!_refreshRequest)
  {
    v4 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEE4C(v4);
    }
  }

  [(MCDFuseContentManager *)self decorateRequest:_refreshRequest];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000EA3C0;
  v8[4] = sub_1000EA3D0;
  selfCopy = self;
  refreshQueue = selfCopy->_refreshQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EA544;
  v7[3] = &unk_101098108;
  v7[4] = v8;
  v6 = [_refreshRequest newOperationWithResponseHandler:v7];
  [(NSOperationQueue *)refreshQueue addOperation:v6];

  _Block_object_dispose(v8, 8);
}

- (id)sectionAtIndex:(unint64_t)index
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v6 = [results sectionAtIndex:index];

  return v6;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  section = [pathCopy section];

  v8 = [results sectionAtIndex:section];

  return v8;
}

- (id)itemsInSectionAtIndex:(unint64_t)index
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v6 = [results itemsInSectionAtIndex:index];

  return v6;
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  viewController = [(MCDFuseContentManager *)self viewController];
  wantsTallCells = [objc_opt_class() wantsTallCells];

  return wantsTallCells;
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

- (void)_processResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1000EA3C0;
  v15[4] = sub_1000EA3D0;
  selfCopy = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EA8EC;
  v10[3] = &unk_101098130;
  v11 = responseCopy;
  v12 = errorCopy;
  v13 = selfCopy;
  v14 = v15;
  v8 = errorCopy;
  v9 = responseCopy;
  dispatch_async(&_dispatch_main_q, v10);

  _Block_object_dispose(v15, 8);
}

- (void)clearActivityIndicatorForSelectedIndexPath
{
  selectedIndexPath = [(MCDFuseContentManager *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    tableView = [(MCDFuseContentManager *)self tableView];
    selectedIndexPath2 = [(MCDFuseContentManager *)self selectedIndexPath];
    v6 = [tableView cellForRowAtIndexPath:selectedIndexPath2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setLoading:0];
    }
  }
}

- (void)setLimitedUI:(BOOL)i
{
  if (self->_limitedUI != i)
  {
    self->_limitedUI = i;
    tableView = [(MCDFuseContentManager *)self tableView];
    [tableView reloadData];
  }
}

- (void)modelResponseDidInvalidate:(id)invalidate
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000EAC48;
  v8 = &unk_101098158;
  selfCopy = self;
  invalidateCopy = invalidate;
  v10 = invalidateCopy;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  v7 = [(MCDFuseContentManager *)self allowedNumberOfItemsForDisplayWithResponse:lastReceivedResponse inSection:section];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  if (results)
  {
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    results2 = [lastReceivedResponse2 results];
    numberOfSections = [results2 numberOfSections];
  }

  else
  {
    numberOfSections = 0;
  }

  return numberOfSections;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [NSIndexPath indexPathForRow:0 inSection:section];
  v8 = [(MCDFuseContentManager *)self cellTitleAtIndexPath:v7];

  v9 = +[CPUITableHeaderFooterView reuseIdentifier];
  v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitle:v8];
  v11 = [(MCDFuseContentManager *)self actionForHeaderInSection:section];
  [v10 setAction:v11];

  return v10;
}

- (id)actionForHeaderInSection:(int64_t)section
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EAF30;
  v5[3] = &unk_101098180;
  v5[4] = self;
  v5[5] = section;
  v3 = objc_retainBlock(v5);

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MCDFuseContentManager *)self itemAtIndexPath:pathCopy];
  v9 = [(MCDFuseContentManager *)self cellTypeAtIndexPath:pathCopy];
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
          v10 = [(_MCDReusableCell *)MCDSiriActionCell cellForTableView:viewCopy indexPath:pathCopy];
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

    v10 = [(__objc2_class *)v21 cellForTableView:viewCopy indexPath:pathCopy];
    v11 = 1;
    goto LABEL_23;
  }

  if (v9 <= 4)
  {
    if (v9 != 3)
    {
      v12 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:2];
      v13 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

      v10 = v13;
      [v10 setGridViewStyle:2];
      [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
      selfCopy2 = self;
      v15 = pathCopy;
      v16 = 1;
      v17 = 0;
LABEL_12:
      v20 = [(MCDFuseContentManager *)selfCopy2 viewModelsAtIndexPath:v15 prefersTallArtwork:v16 withSubtitleForPlaylists:1 actionToPerform:v17];
      [v10 setViewModels:v20];

      goto LABEL_22;
    }

    v10 = [CPUIImageRowCell cellForTableView:viewCopy];
    v22 = [(MCDFuseContentManager *)self childrenOfItemAtIndexPath:pathCopy];
    v23 = [(MCDFuseContentManager *)self rowCellItemConfigurationsAtIndexPath:pathCopy];
    objc_initWeak(&location, self);
    v24 = -[MCDFuseContentManager maximumNumberOfLinesInSection:](self, "maximumNumberOfLinesInSection:", [pathCopy section]);
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
    v46 = pathCopy;
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
    v28 = [viewCopy dequeueReusableCellWithIdentifier:v27 forIndexPath:pathCopy];

    v10 = v28;
    [v10 setGridViewStyle:0];
    v29 = [[CPUIGridViewBaseStyleOptions alloc] initWithMaximumNumberOfLines:2 condensedOptions:0 imageGridOptions:0];
    [v10 setGridViewStyleOptions:v29];
    [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
    v30 = [(MCDFuseContentManager *)self viewModelsAtIndexPath:pathCopy prefersTallArtwork:0 withSubtitleForPlaylists:1 actionToPerform:0];
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
    v19 = [viewCopy dequeueReusableCellWithIdentifier:v18 forIndexPath:pathCopy];

    v10 = v19;
    [v10 setGridViewStyle:1];
    [v10 setContentInsets:{0.0, 8.0, 0.0, 0.0}];
    selfCopy2 = self;
    v15 = pathCopy;
    v16 = 0;
    v17 = 1;
    goto LABEL_12;
  }

LABEL_23:
  delegate = [(MCDFuseContentManager *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    delegate2 = [(MCDFuseContentManager *)self delegate];
    showRankedList = [delegate2 showRankedList];

    if (showRankedList)
    {
      v37 = [(_MCDReusableCell *)MCDRankedContentCell cellForTableView:viewCopy indexPath:pathCopy];

      v10 = v37;
    }
  }

  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v40 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (v11)
  {
    tableCellConfigurationBlock = [(MCDFuseContentManager *)self tableCellConfigurationBlock];

    if (tableCellConfigurationBlock)
    {
      tableCellConfigurationBlock2 = [(MCDFuseContentManager *)self tableCellConfigurationBlock];
      (tableCellConfigurationBlock2)[2](tableCellConfigurationBlock2, v10, v40, v8, viewCopy, pathCopy);
    }
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(MCDFuseContentManager *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setLoading:1];
  }

  v7 = [(MCDFuseContentManager *)self itemAtIndexPath:pathCopy];
  [(MCDFuseContentManager *)self setSelectedIndexPath:pathCopy];
  delegate = [(MCDFuseContentManager *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MCDFuseContentManager *)self delegate];
    v11 = [delegate2 contentManager:self viewControllerForItem:v7 indexPath:pathCopy];
  }

  else
  {
    v11 = 0;
  }

  viewController = [(MCDFuseContentManager *)self viewController];
  [v11 setPlayActivityFeatureNameSourceViewController:viewController];

  if (v11)
  {
    delegate3 = [(MCDFuseContentManager *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate4 = [(MCDFuseContentManager *)self delegate];
      [delegate4 contentManager:self shouldDisplayViewController:v11];
    }
  }

  else
  {
    [(MCDFuseContentManager *)self _initiatePlaybackForItem:v7];
  }
}

- (BOOL)tableView:(id)view shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if ([(MCDFuseContentManager *)self offlineMode])
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_tableView, viewCopy);
  if (viewCopy)
  {
    v5 = objc_opt_class();
    v6 = +[(_MCDReusableCell *)MCDTableViewCell];
    [viewCopy registerClass:v5 forCellReuseIdentifier:v6];

    v7 = objc_opt_class();
    v8 = +[(_MCDReusableCell *)MCDTallCell];
    [viewCopy registerClass:v7 forCellReuseIdentifier:v8];

    v9 = objc_opt_class();
    v10 = +[(_MCDReusableCell *)MCDRankedContentCell];
    [viewCopy registerClass:v9 forCellReuseIdentifier:v10];

    v11 = objc_opt_class();
    v12 = +[(_MCDReusableCell *)MCDSiriActionCell];
    [viewCopy registerClass:v11 forCellReuseIdentifier:v12];

    v13 = objc_opt_class();
    v14 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:0];
    [viewCopy registerClass:v13 forCellReuseIdentifier:v14];

    v15 = objc_opt_class();
    v16 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:1];
    [viewCopy registerClass:v15 forCellReuseIdentifier:v16];

    v17 = objc_opt_class();
    v18 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:2];
    [viewCopy registerClass:v17 forCellReuseIdentifier:v18];

    v19 = objc_opt_class();
    v20 = [CPUIGridViewBaseTableViewCell reuseIdentifierFor:3];
    [viewCopy registerClass:v19 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[CPUITableHeaderFooterView reuseIdentifier];
    [viewCopy registerClass:v21 forHeaderFooterViewReuseIdentifier:v22];

    [viewCopy setRowHeight:UITableViewAutomaticDimension];
    [viewCopy setEstimatedRowHeight:UITableViewAutomaticDimension];
    [viewCopy setDataSource:self];
    [viewCopy setDelegate:self];
    [viewCopy _setHeaderAndFooterViewsFloat:0];
    v23 = +[NSNotificationCenter defaultCenter];
    v24 = MPNetworkObserverIsMusicCellularStreamingAllowedDidChangeNotification;
    v25 = +[MPNetworkObserver sharedNetworkObserver];
    [v23 addObserver:self selector:"_networkConditionsDidChange:" name:v24 object:v25];

    v26 = +[ICEnvironmentMonitor sharedMonitor];
    [v26 registerObserver:self];

    delegate = [(MCDFuseContentManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(MCDFuseContentManager *)self delegate];
      hasLoadedStoreContent = [delegate2 hasLoadedStoreContent];

      if (hasLoadedStoreContent)
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
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (!contentResults)
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
    tableView = [(MCDFuseContentManager *)self tableView];
    [tableView reloadData];
  }
}

- (void)displayPlaceholderViewIfNeeded
{
  placeholderView = [(MCDFuseContentManager *)self placeholderView];

  if (placeholderView)
  {
    placeholderView2 = [(MCDFuseContentManager *)self placeholderView];
    [(MCDFuseContentManager *)self _replacePlaceholderViewWithView:placeholderView2];
  }
}

- (void)updatePlaceholderViewFrameIfNeeded
{
  placeholderView = [(MCDFuseContentManager *)self placeholderView];
  superview = [placeholderView superview];

  if (superview)
  {
    tableView = [(MCDFuseContentManager *)self tableView];
    [tableView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    tableView2 = [(MCDFuseContentManager *)self tableView];
    [tableView2 safeAreaInsets];
    v15 = v6 + v14;
    v17 = v8 + v16;
    v19 = v10 - (v14 + v18);
    v21 = v12 - (v16 + v20);
    placeholderView2 = [(MCDFuseContentManager *)self placeholderView];
    [placeholderView2 setFrame:{v15, v17, v19, v21}];
  }
}

- (void)_replacePlaceholderViewWithView:(id)view
{
  viewCopy = view;
  placeholderView = [(MCDFuseContentManager *)self placeholderView];
  superview = [placeholderView superview];

  if (superview)
  {
    placeholderView2 = [(MCDFuseContentManager *)self placeholderView];
    [placeholderView2 removeFromSuperview];
  }

  [(MCDFuseContentManager *)self setPlaceholderView:viewCopy];
  placeholderView3 = [(MCDFuseContentManager *)self placeholderView];
  tableView = [(MCDFuseContentManager *)self tableView];
  [tableView setScrollEnabled:placeholderView3 == 0];

  placeholderView4 = [(MCDFuseContentManager *)self placeholderView];
  tableView2 = [(MCDFuseContentManager *)self tableView];
  [tableView2 setHidden:placeholderView4 != 0];

  placeholderView5 = [(MCDFuseContentManager *)self placeholderView];

  if (placeholderView5)
  {
    tableView3 = [(MCDFuseContentManager *)self tableView];
    [tableView3 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    tableView4 = [(MCDFuseContentManager *)self tableView];
    [tableView4 safeAreaInsets];
    v23 = v14 + v22;
    v25 = v16 + v24;
    v27 = v18 - (v22 + v26);
    v29 = v20 - (v24 + v28);

    placeholderView6 = [(MCDFuseContentManager *)self placeholderView];
    [placeholderView6 setFrame:{v23, v25, v27, v29}];

    tableView5 = [(MCDFuseContentManager *)self tableView];
    superview2 = [tableView5 superview];
    placeholderView7 = [(MCDFuseContentManager *)self placeholderView];
    [superview2 addSubview:placeholderView7];
  }
}

- (void)_invalidateLoadingTimer
{
  [(MPWeakTimer *)self->_loadingTimer invalidate];
  loadingTimer = self->_loadingTimer;
  self->_loadingTimer = 0;
}

- (void)_networkConditionsDidChange:(id)change
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
    placeholderView = [(MCDFuseContentManager *)self placeholderView];

    if (placeholderView)
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