@interface _SFDownloadManager
+ (id)defaultDownloadsHistoryURL;
+ (id)downloadRepresentationsAtURL:(id)l;
+ (id)sharedManager;
- (BOOL)downloadShouldImportPlaceholderToDownloadsFolder:(id)folder;
- (BOOL)hasUnviewedDownloads;
- (BOOL)shouldExcludeDownloadFromFileSystem:(id)system;
- (BOOL)shouldExcludeDownloadFromList:(id)list;
- (NSArray)downloads;
- (NSDate)_lastUnviewedDownloadDate;
- (_SFDownloadDelegate)extraDownloadDelegate;
- (double)_calculateTotalProgress;
- (id)_containerDirectoryForDownload:(id)download;
- (id)_dataForPersistingToHistory;
- (id)initAsReadonly:(BOOL)readonly;
- (unint64_t)runningDownloadsCount;
- (void)_addDownload:(id)download;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_loadDownloadHistoryAsynchronous:(BOOL)asynchronous;
- (void)_noteDownloadsChanged;
- (void)_removeDeletedDownloads;
- (void)_removeOldDownloadsAndUpdateTimerIfNeeded;
- (void)_setHasUnviewedDownloadsIfNeeded;
- (void)_setLastUnviewedDownloadDate:(id)date;
- (void)_startUpdateTotalProgressTimerIfNeeded;
- (void)_updateTotalProgress:(id)progress;
- (void)createDirectoryForDownload:(id)download completionHandler:(id)handler;
- (void)dealloc;
- (void)downloadDidFail:(id)fail;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidImportFileToDownloadsFolder:(id)folder;
- (void)downloadDidReceiveResponse:(id)response;
- (void)downloadDidStart:(id)start;
- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler;
- (void)downloadWillBeDeleted:(id)deleted;
- (void)getDownloadsWithCompletionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDownloads:(id)downloads;
- (void)removeDownloadsStartedAfterDate:(id)date;
- (void)savePendingChangesBeforeTermination;
- (void)setHasUnviewedDownloads:(BOOL)downloads;
@end

@implementation _SFDownloadManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[_SFDownloadManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

- (void)_removeDeletedDownloads
{
  v3 = [(NSMutableArray *)self->_downloads safari_filterObjectsUsingBlock:&__block_literal_global_50];
  if ([v3 count])
  {
    [(_SFDownloadManager *)self removeDownloads:v3];
  }
}

- (void)_removeOldDownloadsAndUpdateTimerIfNeeded
{
  v39 = *MEMORY[0x1E69E9840];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults doubleForKey:*MEMORY[0x1E69B1EC8]];
  v5 = v4;

  [(NSTimer *)self->_removeDownloadsTimer invalidate];
  removeDownloadsTimer = self->_removeDownloadsTimer;
  self->_removeDownloadsTimer = 0;

  if (v5 >= 0.0)
  {
    date = [MEMORY[0x1E695DF00] date];
    downloads = self->_downloads;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __63___SFDownloadManager__removeOldDownloadsAndUpdateTimerIfNeeded__block_invoke;
    v35[3] = &unk_1E8495E80;
    v9 = date;
    v36 = v9;
    v37 = v5;
    v10 = [(NSMutableArray *)downloads safari_filterObjectsUsingBlock:v35];
    if ([v10 count])
    {
      [(_SFDownloadManager *)self removeDownloads:v10];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = self->_downloads;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dateFinished = [*(*(&v31 + 1) + 8 * i) dateFinished];
          v17 = dateFinished;
          if (dateFinished && (!v13 || [dateFinished compare:v13] == -1))
          {
            v18 = v17;

            v13 = v18;
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v12);

      if (!v13)
      {
        goto LABEL_19;
      }

      objc_initWeak(&location, self);
      [v9 timeIntervalSinceDate:v13];
      v20 = v19;
      v21 = MEMORY[0x1E695DFF0];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __63___SFDownloadManager__removeOldDownloadsAndUpdateTimerIfNeeded__block_invoke_2;
      v28 = &unk_1E8490860;
      objc_copyWeak(&v29, &location);
      v22 = [v21 scheduledTimerWithTimeInterval:0 repeats:&v25 block:v5 - v20];
      v24 = self->_removeDownloadsTimer;
      p_removeDownloadsTimer = &self->_removeDownloadsTimer;
      *p_removeDownloadsTimer = v22;

      [*p_removeDownloadsTimer setTolerance:{v5 / 10.0, v25, v26, v27, v28}];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = v11;
    }

LABEL_19:
  }
}

- (NSArray)downloads
{
  v2 = [(NSMutableArray *)self->_downloads copy];

  return v2;
}

- (BOOL)hasUnviewedDownloads
{
  _lastUnviewedDownloadDate = [(_SFDownloadManager *)self _lastUnviewedDownloadDate];
  v3 = _lastUnviewedDownloadDate;
  if (_lastUnviewedDownloadDate)
  {
    [_lastUnviewedDownloadDate safari_timeIntervalUntilNow];
    v5 = v4 < 28800.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)_lastUnviewedDownloadDate
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults safari_dateForKey:*MEMORY[0x1E69B1F08]];

  return v3;
}

+ (id)defaultDownloadsHistoryURL
{
  v2 = _SFSafariContainerURL();
  v3 = [v2 URLByAppendingPathComponent:@"/Library/Safari/Downloads/Downloads.plist" isDirectory:0];

  return v3;
}

+ (id)downloadRepresentationsAtURL:(id)l
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:l];
  v4 = [v3 safari_arrayForKey:@"DownloadHistory"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (id)initAsReadonly:(BOOL)readonly
{
  v30.receiver = self;
  v30.super_class = _SFDownloadManager;
  v4 = [(_SFDownloadManager *)&v30 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    downloads = v4->_downloads;
    v4->_downloads = v5;

    v7 = objc_alloc_init(_SFDownloadIconCache);
    iconCache = v4->_iconCache;
    v4->_iconCache = v7;

    v4->_totalProgress = -2.0;
    v9 = _SFSafariContainerURL();
    v10 = [v9 URLByAppendingPathComponent:@"Library/Safari/Downloads" isDirectory:1];
    downloadsRootURL = v4->_downloadsRootURL;
    v4->_downloadsRootURL = v10;

    v12 = [(NSURL *)v4->_downloadsRootURL URLByAppendingPathComponent:@"Downloads.plist" isDirectory:0];
    downloadHistoryURL = v4->_downloadHistoryURL;
    v4->_downloadHistoryURL = v12;

    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    downloadsToDeferAdding = v4->_downloadsToDeferAdding;
    v4->_downloadsToDeferAdding = weakToWeakObjectsMapTable;

    if (!readonly)
    {
      objc_initWeak(&location, v4);
      v16 = objc_alloc(MEMORY[0x1E69C8840]);
      v17 = v4->_downloadHistoryURL;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __37___SFDownloadManager_initAsReadonly___block_invoke;
      v27 = &unk_1E8495D50;
      objc_copyWeak(&v28, &location);
      v18 = [v16 initWithName:@"DownloadHistory" fileURL:v17 dataSourceBlock:&v24];
      historyWriter = v4->_historyWriter;
      v4->_historyWriter = v18;

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults addObserver:v4 forKeyPath:*MEMORY[0x1E69B1EC8] options:1 context:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:v4];

    [(_SFDownloadManager *)v4 _loadDownloadHistory];
    v22 = v4;
  }

  return v4;
}

- (void)dealloc
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObserver:self forKeyPath:*MEMORY[0x1E69B1EC8]];

  v4.receiver = self;
  v4.super_class = _SFDownloadManager;
  [(_SFDownloadManager *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:*MEMORY[0x1E69B1EC8]])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___SFDownloadManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E848F8F0;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SFDownloadManager;
    [(_SFDownloadManager *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  _busyDownloads = [(_SFDownloadManager *)self _busyDownloads];
  v4 = [_busyDownloads count];

  if (v4)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didMoveToBackgroundWithNumberOfOnGoingDownloads:v4];
  }
}

- (id)_dataForPersistingToHistory
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_downloads safari_mapObjectsUsingBlock:&__block_literal_global_40_0];
  v6 = @"DownloadHistory";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

- (unint64_t)runningDownloadsCount
{
  v2 = [(NSMutableArray *)self->_downloads safari_filterObjectsUsingBlock:&__block_literal_global_44];
  v3 = [v2 count];

  return v3;
}

- (void)_loadDownloadHistoryAsynchronous:(BOOL)asynchronous
{
  asynchronousCopy = asynchronous;
  v5 = self->_downloadHistoryURL;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__11;
  v24[4] = __Block_byref_object_dispose__11;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__11;
  v22[4] = __Block_byref_object_dispose__11;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke;
  aBlock[3] = &unk_1E8495DB8;
  aBlock[4] = self;
  aBlock[5] = v22;
  aBlock[6] = v20;
  v6 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___SFDownloadManager__loadDownloadHistoryAsynchronous___block_invoke_2;
  v12[3] = &unk_1E8495E08;
  v15 = v24;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  v16 = v22;
  v17 = v20;
  v18 = asynchronousCopy;
  v8 = v6;
  v14 = v8;
  v9 = _Block_copy(v12);
  v10 = v9;
  if (asynchronousCopy)
  {
    v11 = dispatch_get_global_queue(25, 0);
    dispatch_async(v11, v10);
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
}

- (void)savePendingChangesBeforeTermination
{
  if (self->_loadedDownloadHistory)
  {
    [(WBSCoalescedAsynchronousWriter *)self->_historyWriter completePendingWriteSynchronously];
  }
}

- (void)getDownloadsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_loadedDownloadHistory)
  {
    dispatch_async(MEMORY[0x1E69E96A0], handlerCopy);
  }

  else
  {
    blockToExecuteWhenDownloadHistoryIsLoaded = self->_blockToExecuteWhenDownloadHistoryIsLoaded;
    if (blockToExecuteWhenDownloadHistoryIsLoaded)
    {
      v6 = _Block_copy(blockToExecuteWhenDownloadHistoryIsLoaded);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56___SFDownloadManager_getDownloadsWithCompletionHandler___block_invoke;
      v12[3] = &unk_1E8495E30;
      v13 = v6;
      v14 = handlerCopy;
      v7 = v6;
      v8 = _Block_copy(v12);
      v9 = self->_blockToExecuteWhenDownloadHistoryIsLoaded;
      self->_blockToExecuteWhenDownloadHistoryIsLoaded = v8;
    }

    else
    {
      v10 = _Block_copy(handlerCopy);
      v11 = self->_blockToExecuteWhenDownloadHistoryIsLoaded;
      self->_blockToExecuteWhenDownloadHistoryIsLoaded = v10;
    }
  }
}

- (void)_noteDownloadsChanged
{
  [(WBSCoalescedAsynchronousWriter *)self->_historyWriter scheduleWrite];
  if (self->_loadedDownloadHistory)
  {
    [(_SFDownloadManager *)self _startUpdateTotalProgressTimerIfNeeded];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_SFDownloadsDidChangeNotification" object:self];
  }
}

- (void)removeDownloads:(id)downloads
{
  v18 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  if ([downloadsCopy count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithArray:downloadsCopy];
    v6 = [MEMORY[0x1E695DFD8] setWithArray:self->_downloads];
    [v5 intersectSet:v6];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 cancel];
          [v12 removeDataAndPlaceholderFromDisk];
          [(NSMutableArray *)self->_downloads removeObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(_SFDownloadManager *)self _noteDownloadsChanged];
  }
}

- (void)removeDownloadsStartedAfterDate:(id)date
{
  dateCopy = date;
  downloads = self->_downloads;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___SFDownloadManager_removeDownloadsStartedAfterDate___block_invoke;
  v8[3] = &unk_1E8495E58;
  v9 = dateCopy;
  v6 = dateCopy;
  v7 = [(NSMutableArray *)downloads safari_filterObjectsUsingBlock:v8];
  [(_SFDownloadManager *)self removeDownloads:v7];
}

- (void)_addDownload:(id)download
{
  downloadCopy = download;
  v4 = [(_SFDownloadManager *)self shouldExcludeDownloadFromList:downloadCopy];
  v5 = downloadCopy;
  if (!v4)
  {
    if (([(NSMutableArray *)self->_downloads containsObject:downloadCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_downloads insertObject:downloadCopy atIndex:0];
    }

    [(_SFDownloadManager *)self _noteDownloadsChanged];
    [(_SFDownloadManager *)self _removeOldDownloadsAndUpdateTimerIfNeeded];
    v5 = downloadCopy;
  }
}

- (BOOL)shouldExcludeDownloadFromFileSystem:(id)system
{
  v12 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  if (![(_SFDownloadManager *)self shouldExcludeDownloadFromList:systemCopy])
  {
    if ([systemCopy dataOwner] != 2)
    {
      v5 = 0;
      goto LABEL_15;
    }

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    if ([mEMORY[0x1E69ADFB8] mayOpenFromManagedToUnmanaged])
    {
      if ([mEMORY[0x1E69ADFB8] mayOpenFromUnmanagedToManaged])
      {
        v5 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = systemCopy;
        v8 = "Excluding %{public}@ from Files because Managed Configuration prohibits moving unmanaged content to managed destinations";
        goto LABEL_12;
      }
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = systemCopy;
        v8 = "Excluding %{public}@ from Files because Managed Configuration prohibits moving managed content to unmanaged destinations";
LABEL_12:
        _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
      }
    }

    v5 = 1;
    goto LABEL_14;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (BOOL)shouldExcludeDownloadFromList:(id)list
{
  listCopy = list;
  fileType = [listCopy fileType];
  if ((fileType - 3) < 5 || fileType == 1)
  {
    v7 = [listCopy explicitlySaved] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_startUpdateTotalProgressTimerIfNeeded
{
  if (![(NSTimer *)self->_updateTotalProgressTimer isValid])
  {
    _busyDownloads = [(_SFDownloadManager *)self _busyDownloads];
    v4 = [_busyDownloads count];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__updateTotalProgress_ selector:0 userInfo:1 repeats:0.2];
      updateTotalProgressTimer = self->_updateTotalProgressTimer;
      self->_updateTotalProgressTimer = v5;

      [(NSTimer *)self->_updateTotalProgressTimer setTolerance:1.0];
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:self->_updateTotalProgressTimer forMode:*MEMORY[0x1E695DA28]];

      v8 = self->_updateTotalProgressTimer;

      [(NSTimer *)v8 fire];
    }
  }
}

- (void)_updateTotalProgress:(id)progress
{
  [(_SFDownloadManager *)self _calculateTotalProgress];
  self->_totalProgress = v4;
  if (v4 == -2.0)
  {
    [(NSTimer *)self->_updateTotalProgressTimer invalidate];
    updateTotalProgressTimer = self->_updateTotalProgressTimer;
    self->_updateTotalProgressTimer = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDownloadManagerTotalProgressDidChangeNotification" object:self];
}

- (double)_calculateTotalProgress
{
  v21 = *MEMORY[0x1E69E9840];
  _busyDownloads = [(_SFDownloadManager *)self _busyDownloads];
  if ([_busyDownloads count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = _busyDownloads;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v17;
      v9 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          bytesExpected = [v11 bytesExpected];
          if (bytesExpected != -1)
          {
            v13 = bytesExpected;
            v9 = 0;
            v6 += [v11 bytesLoaded];
            v7 += v13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);

      v14 = -1.0;
      if ((v9 & 1) == 0)
      {
        if (v7)
        {
          v14 = v6 / v7;
        }

        else
        {
          v14 = 1.0;
        }
      }
    }

    else
    {

      v14 = -1.0;
    }
  }

  else
  {
    v14 = -2.0;
  }

  return v14;
}

- (void)_setLastUnviewedDownloadDate:(id)date
{
  v3 = MEMORY[0x1E695E000];
  dateCopy = date;
  safari_browserDefaults = [v3 safari_browserDefaults];
  [safari_browserDefaults setObject:dateCopy forKey:*MEMORY[0x1E69B1F08]];
}

- (void)setHasUnviewedDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  hasUnviewedDownloads = [(_SFDownloadManager *)self hasUnviewedDownloads];
  if (downloadsCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(_SFDownloadManager *)self _setLastUnviewedDownloadDate:date];
  }

  else
  {
    [(_SFDownloadManager *)self _setLastUnviewedDownloadDate:0];
  }

  if (hasUnviewedDownloads != downloadsCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_SFDownloadManagerHasUnviewedDownloadsDidChangeNotification" object:self];
  }
}

- (void)_setHasUnviewedDownloadsIfNeeded
{
  if (!self->_viewingDownloadsCount)
  {
    [(_SFDownloadManager *)self setHasUnviewedDownloads:1];
  }
}

- (void)downloadDidFinish:(id)finish
{
  v13[1] = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);
  [WeakRetained downloadDidFinish:finishCopy];

  [(WBSCoalescedAsynchronousWriter *)self->_historyWriter scheduleWrite];
  [(_SFDownloadManager *)self _removeOldDownloadsAndUpdateTimerIfNeeded];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults doubleForKey:*MEMORY[0x1E69B1EC8]];
  v8 = v7;

  if (v8 == -2.0 && [(_SFDownloadManager *)self _canExpireDownloadOnCompletion:finishCopy])
  {
    v13[0] = finishCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(_SFDownloadManager *)self removeDownloads:v9];
  }

  else
  {
    [(_SFDownloadIconCache *)self->_iconCache regenerateIconForSource:finishCopy];
  }

  _busyDownloads = [(_SFDownloadManager *)self _busyDownloads];
  v11 = [_busyDownloads count];

  if (!v11)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_SFDownloadManagerDidFinishLastDownloadNotification" object:self];
  }

  if ([(NSMutableArray *)self->_downloads containsObject:finishCopy])
  {
    [(_SFDownloadManager *)self _setHasUnviewedDownloadsIfNeeded];
  }
}

- (void)downloadDidFail:(id)fail
{
  failCopy = fail;
  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);
  [WeakRetained downloadDidFail:failCopy];

  [(WBSCoalescedAsynchronousWriter *)self->_historyWriter scheduleWrite];

  [(_SFDownloadManager *)self _removeOldDownloadsAndUpdateTimerIfNeeded];
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);
  [WeakRetained downloadDidStart:startCopy];

  v5 = [(NSMapTable *)self->_downloadsToDeferAdding objectForKey:startCopy];

  if (!v5)
  {
    [(_SFDownloadManager *)self _addDownload:startCopy];
  }
}

- (BOOL)downloadShouldImportPlaceholderToDownloadsFolder:(id)folder
{
  folderCopy = folder;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v6 = [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1ED0]];

  if (v6)
  {
    v7 = ![(_SFDownloadManager *)self shouldExcludeDownloadFromFileSystem:folderCopy];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
    LOBYTE(v7) = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Not importing to the Downloads folder because the internal setting is disabled", v10, 2u);
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)downloadDidImportFileToDownloadsFolder:(id)folder
{
  v3 = [(_SFDownloadManager *)self _containerDirectoryForDownload:folder];
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___SFDownloadManager_downloadDidImportFileToDownloadsFolder___block_invoke;
  block[3] = &unk_1E848F810;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)downloadDidReceiveResponse:(id)response
{
  responseCopy = response;
  [(_SFDownloadIconCache *)self->_iconCache regenerateIconForSource:?];
  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained downloadDidReceiveResponse:responseCopy];
  }

  [(WBSCoalescedAsynchronousWriter *)self->_historyWriter scheduleWrite];
}

- (id)_containerDirectoryForDownload:(id)download
{
  identifier = [download identifier];
  uUIDString = [identifier UUIDString];

  v6 = [(NSURL *)self->_downloadsRootURL URLByAppendingPathComponent:uUIDString isDirectory:1];

  return v6;
}

- (void)createDirectoryForDownload:(id)download completionHandler:(id)handler
{
  downloadCopy = download;
  handlerCopy = handler;
  if ([(_SFDownloadManager *)self shouldExcludeDownloadFromList:downloadCopy])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = [(_SFDownloadManager *)self _containerDirectoryForDownload:downloadCopy];
    v9 = dispatch_get_global_queue(25, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67___SFDownloadManager_createDirectoryForDownload_completionHandler___block_invoke;
    v11[3] = &unk_1E8490818;
    v12 = v8;
    v13 = handlerCopy;
    v10 = v8;
    dispatch_async(v9, v11);
  }
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = [(NSMapTable *)self->_downloadsToDeferAdding objectForKey:responseCopy];

  if (v8)
  {
    [(NSMapTable *)self->_downloadsToDeferAdding removeObjectForKey:responseCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83___SFDownloadManager_downloadShouldContinueAfterReceivingResponse_decisionHandler___block_invoke;
    aBlock[3] = &unk_1E8492088;
    aBlock[4] = self;
    v12 = responseCopy;
    v13 = handlerCopy;
    v9 = _Block_copy(aBlock);
  }

  else
  {
    v9 = _Block_copy(handlerCopy);
  }

  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained downloadShouldContinueAfterReceivingResponse:responseCopy decisionHandler:v9];
  }

  else
  {
    v9[2](v9, 1);
  }
}

- (void)downloadWillBeDeleted:(id)deleted
{
  v8 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  v4 = MEMORY[0x1E695DEC8];
  deletedCopy2 = deleted;
  v6 = [v4 arrayWithObjects:&deletedCopy count:1];

  [(_SFDownloadManager *)self removeDownloads:v6, deletedCopy, v8];
}

- (_SFDownloadDelegate)extraDownloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extraDownloadDelegate);

  return WeakRetained;
}

@end