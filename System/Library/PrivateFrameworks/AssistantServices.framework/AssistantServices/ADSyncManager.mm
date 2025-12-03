@interface ADSyncManager
- (ADSyncManager)initWithServiceManager:(id)manager queue:(id)queue;
- (BOOL)shouldSyncEverythingForReason:(id)reason;
- (BOOL)shouldSyncIntentPolicyForSyncKeys:(id)keys;
- (id)_preferredSyncKeyOrder;
- (id)_sortedAnchorsFromAnchors:(id)anchors;
- (id)queuedAnchors;
- (id)syncKeysForReason:(id)reason;
- (void)_continueSync;
- (void)_finishSync;
- (void)_invokeContinueBlockWithKeepGoingArgument:(BOOL)argument;
- (void)_setAnchorsToSync:(id)sync;
- (void)_setCurrentAnchorToNext;
- (void)_syncFinishedForService:(id)service error:(id)error;
- (void)_syncingService:(id)service withSyncInfo:(id)info receivedChunk:(id)chunk continueBlock:(id)block;
- (void)_waitUntilSafeToContinue;
- (void)addQueuedAnchors:(id)anchors forReasons:(id)reasons;
- (void)cancelSyncForAnchor:(id)anchor;
- (void)clearQueuedAnchorsAndReasons;
- (void)continueSync;
- (void)prepareSyncWithAnchors:(id)anchors forReasons:(id)reasons delegate:(id)delegate;
- (void)reset;
- (void)serviceTimedoutForSync:(id)sync;
@end

@implementation ADSyncManager

- (void)reset
{
  isSyncing = [(ADSyncManager *)self isSyncing];
  v4 = self->_delegate;
  [(ADSyncManager *)self cancelSyncForAnchor:self->_currentAnchor];
  delegate = self->_delegate;
  self->_delegate = 0;

  getAnchorsRequest = self->_getAnchorsRequest;
  self->_getAnchorsRequest = 0;

  currentAnchor = self->_currentAnchor;
  self->_currentAnchor = 0;

  syncedAnchors = self->_syncedAnchors;
  self->_syncedAnchors = 0;

  anchorsToSync = self->_anchorsToSync;
  self->_anchorsToSync = 0;

  currentSyncReasons = self->_currentSyncReasons;
  self->_currentSyncReasons = 0;

  continueBlock = self->_continueBlock;
  self->_continueBlock = 0;

  currentSyncService = self->_currentSyncService;
  self->_currentSyncService = 0;

  currentSyncID = self->_currentSyncID;
  self->_currentSyncID = 0;

  timedoutServices = self->_timedoutServices;
  self->_timedoutServices = 0;

  if (isSyncing)
  {
    v15 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADSyncManager reset]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s In progress sync has been reset", &v16, 0xCu);
    }

    [(ADSyncManagerDelegate *)v4 syncManagerDidResetInProgressSync:self];
  }
}

- (void)_continueSync
{
  v3 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    anchorsToSync = self->_anchorsToSync;
    *buf = 136315394;
    v23 = "[ADSyncManager _continueSync]";
    v24 = 2112;
    v25 = anchorsToSync;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s anchorsToSync: %@", buf, 0x16u);
  }

  [(ADSyncManager *)self _setCurrentAnchorToNext];
  currentAnchor = self->_currentAnchor;
  if (!currentAnchor)
  {
    goto LABEL_14;
  }

  *&v5 = 136315394;
  v17 = v5;
  while (1)
  {
    v7 = [(SASyncAnchor *)currentAnchor key];
    v8 = [(ADServiceManager *)self->_serviceManager serviceForSyncAnchorKey:v7];
    if (v8)
    {
      break;
    }

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = v17;
      v23 = "[ADSyncManager _continueSync]";
      v24 = 2114;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Sync manager couldn't find connection for anchor key %{public}@. Moving on.", buf, 0x16u);
    }

    [(ADSyncManager *)self _setCurrentAnchorToNext];

    currentAnchor = self->_currentAnchor;
    if (!currentAnchor)
    {
      goto LABEL_14;
    }
  }

  v10 = v8;
  v11 = [[AFSyncInfo alloc] initWithAnchor:self->_currentAnchor forcingReset:self->_forceResetOnNextSync];
  [v11 setReasons:self->_currentSyncReasons];
  [v11 setForVerification:0];
  if (self->_forceResetOnNextSync)
  {
    v12 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      *buf = v17;
      v23 = "[ADSyncManager _continueSync]";
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Forcing a reset on key %@", buf, 0x16u);
    }
  }

  [v10 setDelegate:self];
  self->_currentSyncShouldCancel = 0;
  objc_storeStrong(&self->_currentSyncService, v10);
  self->_currentSyncHasChanges = 0;
  v13 = [(NSUUID *)self->_currentSyncID copy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100246308;
  v18[3] = &unk_100517888;
  v18[4] = self;
  v19 = v10;
  v20 = v13;
  v21 = v11;
  v14 = v11;
  v15 = v13;
  v16 = v10;
  [v16 beginSyncForInfo:v14 chunkHandler:v18];

  if (!self->_currentAnchor)
  {
LABEL_14:
    [(ADSyncManager *)self _finishSync];
  }
}

- (void)serviceTimedoutForSync:(id)sync
{
  timedoutServices = self->_timedoutServices;
  identifier = [sync identifier];
  [(NSMutableSet *)timedoutServices addObject:identifier];

  if ([(NSMutableSet *)self->_timedoutServices count]>= 3)
  {
    v6 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADSyncManager serviceTimedoutForSync:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Too many plugins have timed out for sync, reset and try later", &v7, 0xCu);
    }

    [(ADSyncManager *)self reset];
  }
}

- (void)_invokeContinueBlockWithKeepGoingArgument:(BOOL)argument
{
  continueBlock = self->_continueBlock;
  if (continueBlock)
  {
    argumentCopy = argument;
    v7 = objc_retainBlock(continueBlock);
    v6 = self->_continueBlock;
    self->_continueBlock = 0;

    v7[2](v7, argumentCopy);
  }
}

- (void)cancelSyncForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = self->_currentAnchor;
  v6 = anchorCopy;
  v7 = [(SASyncAnchor *)v5 key];
  v8 = [v6 key];
  if (v7 | v8 && ![v7 isEqual:v8])
  {

    goto LABEL_11;
  }

  appMetaData = [(SASyncAnchor *)v5 appMetaData];
  appMetaData2 = [v6 appMetaData];
  if (appMetaData | appMetaData2)
  {
    v11 = appMetaData2;
    v12 = [appMetaData isEqual:appMetaData2];

    if ((v12 & 1) == 0)
    {
LABEL_11:
      v14 = AFSiriLogContextSync;
      if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
      {
        currentAnchor = self->_currentAnchor;
        v16 = 136315650;
        v17 = "[ADSyncManager cancelSyncForAnchor:]";
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = currentAnchor;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Ignoring sync cancel for anchor %@. Current anchor is %@", &v16, 0x20u);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADSyncManager cancelSyncForAnchor:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Canceling sync for anchor %@", &v16, 0x16u);
  }

  self->_currentSyncShouldCancel = 1;
  [(ADSyncManager *)self _invokeContinueBlockWithKeepGoingArgument:0];
LABEL_13:
}

- (void)continueSync
{
  continueBlock = self->_continueBlock;
  v4 = AFSiriLogContextSync;
  v5 = os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO);
  if (continueBlock)
  {
    if (v5)
    {
      v6 = 136315138;
      v7 = "[ADSyncManager continueSync]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Continuing sync", &v6, 0xCu);
    }

    [(ADSyncManager *)self _invokeContinueBlockWithKeepGoingArgument:1];
  }

  else if (v5)
  {
    v6 = 136315138;
    v7 = "[ADSyncManager continueSync]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sync Manager isn't waiting on a continue, ignoring request", &v6, 0xCu);
  }
}

- (void)_waitUntilSafeToContinue
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100245A70;
  v3[3] = &unk_1005178B0;
  objc_copyWeak(&v4, &location);
  [(ADSyncManager *)self _setContinueBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)queuedAnchors
{
  allValues = [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey count];
  if (allValues)
  {
    allValues = [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey allValues];
  }

  return allValues;
}

- (void)clearQueuedAnchorsAndReasons
{
  queuedAnchorsByNormalizedKey = self->_queuedAnchorsByNormalizedKey;
  self->_queuedAnchorsByNormalizedKey = 0;

  queuedReasons = self->_queuedReasons;
  self->_queuedReasons = 0;
}

- (void)addQueuedAnchors:(id)anchors forReasons:(id)reasons
{
  anchorsCopy = anchors;
  reasonsCopy = reasons;
  if (!self->_queuedAnchorsByNormalizedKey)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    queuedAnchorsByNormalizedKey = self->_queuedAnchorsByNormalizedKey;
    self->_queuedAnchorsByNormalizedKey = v8;
  }

  v10 = [[NSMutableSet alloc] initWithCapacity:{-[NSMutableArray count](self->_anchorsToSync, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_anchorsToSync;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        _af_normalizedKey = [*(*(&v36 + 1) + 8 * i) _af_normalizedKey];
        [v10 addObject:_af_normalizedKey];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = anchorsCopy;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        _af_normalizedKey2 = [v22 _af_normalizedKey];
        if (([v10 containsObject:_af_normalizedKey2] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey setObject:v22 forKey:_af_normalizedKey2];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v19);
  }

  queuedReasons = self->_queuedReasons;
  if (!queuedReasons)
  {
    v25 = objc_alloc_init(NSMutableSet);
    v26 = self->_queuedReasons;
    self->_queuedReasons = v25;

    queuedReasons = self->_queuedReasons;
  }

  [(NSMutableSet *)queuedReasons addObjectsFromArray:reasonsCopy, v32];
  v27 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_DEBUG))
  {
    v28 = self->_queuedAnchorsByNormalizedKey;
    v29 = v27;
    allKeys = [(NSMutableDictionary *)v28 allKeys];
    v31 = self->_queuedReasons;
    *buf = 136315650;
    v41 = "[ADSyncManager addQueuedAnchors:forReasons:]";
    v42 = 2112;
    v43 = allKeys;
    v44 = 2112;
    v45 = v31;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Anchors in queue: %@ for reasons: %@", buf, 0x20u);
  }
}

- (void)prepareSyncWithAnchors:(id)anchors forReasons:(id)reasons delegate:(id)delegate
{
  anchorsCopy = anchors;
  reasonsCopy = reasons;
  delegateCopy = delegate;
  if (self->_delegate)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"ADSyncManager.m" lineNumber:283 description:{@"Already have a sync delegate, is sync still in progress?"}];
  }

  v12 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  objc_storeStrong(&self->_delegate, delegate);
  v13 = objc_alloc_init(NSUUID);
  currentSyncID = self->_currentSyncID;
  self->_currentSyncID = v13;

  v15 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v16 = self->_currentSyncID;
    v25 = 136315650;
    v26 = "[ADSyncManager prepareSyncWithAnchors:forReasons:delegate:]";
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = reasonsCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Preparing sync with ID %@ for reasons: %@", &v25, 0x20u);
  }

  v17 = [(ADSyncManager *)self _sortedAnchorsFromAnchors:anchorsCopy];
  [(ADSyncManager *)self _setAnchorsToSync:v17];
  v18 = [[NSSet alloc] initWithArray:reasonsCopy];
  currentSyncReasons = self->_currentSyncReasons;
  self->_currentSyncReasons = v18;

  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v17, "count")}];
  syncedAnchors = self->_syncedAnchors;
  self->_syncedAnchors = v20;

  v22 = objc_alloc_init(NSMutableSet);
  timedoutServices = self->_timedoutServices;
  self->_timedoutServices = v22;

  [(ADSyncManager *)self _waitUntilSafeToContinue];
  [(ADSyncManagerDelegate *)self->_delegate syncManagerIsPausingSync:self];
}

- (id)_sortedAnchorsFromAnchors:(id)anchors
{
  anchorsCopy = anchors;
  if ([anchorsCopy count])
  {
    selfCopy = self;
    v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(anchorsCopy, "count")}];
    v6 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = anchorsCopy;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 key];
          if (v13 && ([v12 appMetaData], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
          {
            [v5 setObject:v12 forKey:v13];
          }

          else
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v15 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    _preferredSyncKeyOrder = [(ADSyncManager *)selfCopy _preferredSyncKeyOrder];
    v17 = [_preferredSyncKeyOrder count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [_preferredSyncKeyOrder objectAtIndex:v18];
        v20 = [v5 objectForKey:v19];
        if (v20)
        {
          [v15 addObject:v20];
          [v5 removeObjectForKey:v19];
        }

        --v18;
      }

      while (v18 != -1);
    }

    allValues = [v5 allValues];
    if (allValues)
    {
      [v6 addObjectsFromArray:allValues];
    }

    if (v15)
    {
      [v6 addObjectsFromArray:v15];
    }
  }

  else
  {
    v6 = anchorsCopy;
  }

  return v6;
}

- (void)_syncFinishedForService:(id)service error:(id)error
{
  [service setDelegate:0];
  currentSyncService = self->_currentSyncService;
  self->_currentSyncService = 0;

  if (!error && !self->_currentSyncShouldCancel)
  {
    _currentAnchor = [(ADSyncManager *)self _currentAnchor];
    if (_currentAnchor)
    {
      [(NSMutableArray *)self->_syncedAnchors addObject:_currentAnchor];
      v8 = [_currentAnchor key];
      v10 = v8;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      sub_1002F3A14(v9);
    }
  }

  [(ADSyncManager *)self _setCurrentAnchor:0];
  [(ADSyncManager *)self _waitUntilSafeToContinue];
  [(ADSyncManagerDelegate *)self->_delegate syncManagerIsPausingSync:self];
}

- (void)_syncingService:(id)service withSyncInfo:(id)info receivedChunk:(id)chunk continueBlock:(id)block
{
  serviceCopy = service;
  infoCopy = info;
  chunkCopy = chunk;
  blockCopy = block;
  appMetadata = [infoCopy appMetadata];
  appIdentifyingInfo = [appMetadata appIdentifyingInfo];

  toAdd = [chunkCopy toAdd];
  *(&v38 + 1) = [toAdd count];

  toRemove = [chunkCopy toRemove];
  *&v38 = [toRemove count];

  v17 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    log = v17;
    v36 = [infoCopy key];
    anchor = [infoCopy anchor];
    validity = [infoCopy validity];
    v32 = [infoCopy count];
    bundleId = [appIdentifyingInfo bundleId];
    version = [appIdentifyingInfo version];
    clientIdentifier = [appIdentifyingInfo clientIdentifier];
    buildNumber = [appIdentifyingInfo buildNumber];
    appMetadata2 = [infoCopy appMetadata];
    [appMetadata2 syncSlots];
    v20 = v30 = infoCopy;
    v21 = [chunkCopy pre];
    post = [chunkCopy post];
    [chunkCopy validity];
    v23 = v33 = blockCopy;
    *buf = 136318978;
    v41 = "[ADSyncManager _syncingService:withSyncInfo:receivedChunk:continueBlock:]";
    v42 = 2112;
    v43 = serviceCopy;
    v44 = 2112;
    v45 = v36;
    v46 = 2112;
    v47 = anchor;
    v48 = 2112;
    v49 = validity;
    v50 = 2048;
    v51 = v32;
    v52 = 2112;
    v53 = bundleId;
    v54 = 2112;
    v55 = version;
    v56 = 2112;
    v57 = clientIdentifier;
    v58 = 2112;
    v59 = buildNumber;
    v60 = 2112;
    v61 = v20;
    v62 = 2112;
    v63 = v21;
    v64 = 2112;
    v65 = post;
    v66 = 2112;
    v67 = v23;
    v68 = 2048;
    v69 = *(&v38 + 1);
    v70 = 2048;
    v71 = v38;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s %@  Sync - key: %@  anchor: %@  validity: %@  count %lu\nApp Metadata - bundleId: %@  version: %@  clientIdentifier: %@  buildNumber: %@  syncSlots: %@\nChunk - pre: %@  post: %@  validity: %@  toAdd: %lu  toRemove: %lu", buf, 0xA2u);

    blockCopy = v33;
    infoCopy = v30;
  }

  if (self->_continueBlock)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"ADSyncManager.m" lineNumber:140 description:@"Not expecting a sync chunk; already have a continue block"];
  }

  if (self->_currentSyncShouldCancel)
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    [(ADSyncManager *)self _setContinueBlock:blockCopy];
    if (v38 != 0)
    {
      self->_currentSyncHasChanges = 1;
    }

    post2 = [chunkCopy post];
    currentSyncGeneration = self->_currentSyncGeneration;
    self->_currentSyncGeneration = post2;

    [(ADSyncManagerDelegate *)self->_delegate syncManager:self chunkForSyncInfo:infoCopy chunkInfo:chunkCopy];
    [(ADSyncManagerDelegate *)self->_delegate syncManagerIsPausingSync:self];
  }
}

- (void)_setCurrentAnchorToNext
{
  lastObject = [(NSMutableArray *)self->_anchorsToSync lastObject];
  [(ADSyncManager *)self _setCurrentAnchor:lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_anchorsToSync removeLastObject];
  }
}

- (void)_finishSync
{
  v3 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[ADSyncManager _finishSync]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_syncedAnchors, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = self->_syncedAnchors;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v28 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 key];
        if (v10)
        {
          [v4 addObject:v10];
          v11 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            log = v11;
            generation = [v9 generation];
            v13 = v6;
            v14 = v7;
            v15 = [v9 count];
            validity = [v9 validity];
            appMetaData = [v9 appMetaData];
            syncSlots = [appMetaData syncSlots];
            *buf = 136316418;
            v36 = "[ADSyncManager _finishSync]";
            v37 = 2112;
            v38 = v10;
            v39 = 2112;
            v40 = generation;
            v41 = 2048;
            v42 = v15;
            v7 = v14;
            v6 = v13;
            v43 = 2112;
            v44 = validity;
            v45 = 2112;
            v46 = syncSlots;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Anchor key: %@  generation: %@   count: %lu  validity: %@  syncSlots: %@", buf, 0x3Eu);

            v4 = v28;
          }
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v6);
  }

  delegate = selfCopy->_delegate;
  selfCopy->_delegate = 0;
  v20 = delegate;

  currentAnchor = selfCopy->_currentAnchor;
  selfCopy->_currentAnchor = 0;

  anchorsToSync = selfCopy->_anchorsToSync;
  selfCopy->_anchorsToSync = 0;

  syncedAnchors = selfCopy->_syncedAnchors;
  selfCopy->_syncedAnchors = 0;

  currentSyncID = selfCopy->_currentSyncID;
  selfCopy->_currentSyncID = 0;

  currentSyncReasons = selfCopy->_currentSyncReasons;
  selfCopy->_currentSyncReasons = 0;

  timedoutServices = selfCopy->_timedoutServices;
  selfCopy->_timedoutServices = 0;

  selfCopy->_forceResetOnNextSync = 0;
  [(ADSyncManagerDelegate *)v20 syncManager:selfCopy finishedSyncForKeys:v4 postNotification:1];

  [(ADSyncManager *)selfCopy _postSyncFinishedNotification];
}

- (void)_setAnchorsToSync:(id)sync
{
  if (self->_anchorsToSync != sync)
  {
    v5 = [sync mutableCopy];
    anchorsToSync = self->_anchorsToSync;
    self->_anchorsToSync = v5;

    _objc_release_x1(v5, anchorsToSync);
  }
}

- (ADSyncManager)initWithServiceManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ADSyncManager;
  v9 = [(ADSyncManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceManager, manager);
    objc_storeStrong(&v10->_queue, queue);
    v11 = v10->_queue;
    v12 = +[ADQueueMonitor sharedMonitor];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100247050;
    v15[3] = &unk_10051C2E0;
    v16 = v11;
    v13 = v11;
    [v12 addQueue:v13 heartBeatInterval:v15 timeoutInterval:5.0 timeoutHandler:5.0];
  }

  return v10;
}

- (id)_preferredSyncKeyOrder
{
  if (AFIsHorseman())
  {
    v8 = @"com.apple.siri.client.state.DynamiteClientState";
    v9 = @"com.apple.media.entities";
    v10 = @"com.apple.homekit.name";
    v2 = &v8;
    v3 = 3;
  }

  else
  {
    v6 = @"com.apple.contact.people";
    v7 = @"com.apple.homekit.name";
    v2 = &v6;
    v3 = 2;
  }

  v4 = [NSArray arrayWithObjects:v2 count:v3, v6, v7, v8, v9, v10];

  return v4;
}

- (BOOL)shouldSyncIntentPolicyForSyncKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy containsObject:@"com.apple.siri.appIntentSupportPolicyAndVocab"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keysCopy containsObject:@"com.apple.siri.appIntentSupportPolicyAndVocab.nano"];
  }

  return v4;
}

- (BOOL)shouldSyncEverythingForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [[NSSet alloc] initWithObjects:{@"assistant_enabled", @"daily_sync", @"requested_by_assistantd", @"com.apple.assistant.sync_data_changed", @"Safety net", @"siri_locale_change", 0}];
  v5 = [v4 containsObject:reasonCopy];

  return v5;
}

- (id)syncKeysForReason:(id)reason
{
  v4 = sub_1002F356C(reason);
  if (![v4 count])
  {
    _serviceManager = [(ADSyncManager *)self _serviceManager];
    allSyncAnchorKeys = [_serviceManager allSyncAnchorKeys];

    v4 = allSyncAnchorKeys;
  }

  return v4;
}

@end