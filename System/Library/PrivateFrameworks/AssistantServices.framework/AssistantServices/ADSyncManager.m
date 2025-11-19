@interface ADSyncManager
- (ADSyncManager)initWithServiceManager:(id)a3 queue:(id)a4;
- (BOOL)shouldSyncEverythingForReason:(id)a3;
- (BOOL)shouldSyncIntentPolicyForSyncKeys:(id)a3;
- (id)_preferredSyncKeyOrder;
- (id)_sortedAnchorsFromAnchors:(id)a3;
- (id)queuedAnchors;
- (id)syncKeysForReason:(id)a3;
- (void)_continueSync;
- (void)_finishSync;
- (void)_invokeContinueBlockWithKeepGoingArgument:(BOOL)a3;
- (void)_setAnchorsToSync:(id)a3;
- (void)_setCurrentAnchorToNext;
- (void)_syncFinishedForService:(id)a3 error:(id)a4;
- (void)_syncingService:(id)a3 withSyncInfo:(id)a4 receivedChunk:(id)a5 continueBlock:(id)a6;
- (void)_waitUntilSafeToContinue;
- (void)addQueuedAnchors:(id)a3 forReasons:(id)a4;
- (void)cancelSyncForAnchor:(id)a3;
- (void)clearQueuedAnchorsAndReasons;
- (void)continueSync;
- (void)prepareSyncWithAnchors:(id)a3 forReasons:(id)a4 delegate:(id)a5;
- (void)reset;
- (void)serviceTimedoutForSync:(id)a3;
@end

@implementation ADSyncManager

- (void)reset
{
  v3 = [(ADSyncManager *)self isSyncing];
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

  if (v3)
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

- (void)serviceTimedoutForSync:(id)a3
{
  timedoutServices = self->_timedoutServices;
  v5 = [a3 identifier];
  [(NSMutableSet *)timedoutServices addObject:v5];

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

- (void)_invokeContinueBlockWithKeepGoingArgument:(BOOL)a3
{
  continueBlock = self->_continueBlock;
  if (continueBlock)
  {
    v5 = a3;
    v7 = objc_retainBlock(continueBlock);
    v6 = self->_continueBlock;
    self->_continueBlock = 0;

    v7[2](v7, v5);
  }
}

- (void)cancelSyncForAnchor:(id)a3
{
  v4 = a3;
  v5 = self->_currentAnchor;
  v6 = v4;
  v7 = [(SASyncAnchor *)v5 key];
  v8 = [v6 key];
  if (v7 | v8 && ![v7 isEqual:v8])
  {

    goto LABEL_11;
  }

  v9 = [(SASyncAnchor *)v5 appMetaData];
  v10 = [v6 appMetaData];
  if (v9 | v10)
  {
    v11 = v10;
    v12 = [v9 isEqual:v10];

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
  v3 = [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey count];
  if (v3)
  {
    v3 = [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey allValues];
  }

  return v3;
}

- (void)clearQueuedAnchorsAndReasons
{
  queuedAnchorsByNormalizedKey = self->_queuedAnchorsByNormalizedKey;
  self->_queuedAnchorsByNormalizedKey = 0;

  queuedReasons = self->_queuedReasons;
  self->_queuedReasons = 0;
}

- (void)addQueuedAnchors:(id)a3 forReasons:(id)a4
{
  v6 = a3;
  v7 = a4;
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

        v16 = [*(*(&v36 + 1) + 8 * i) _af_normalizedKey];
        [v10 addObject:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v6;
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
        v23 = [v22 _af_normalizedKey];
        if (([v10 containsObject:v23] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_queuedAnchorsByNormalizedKey setObject:v22 forKey:v23];
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

  [(NSMutableSet *)queuedReasons addObjectsFromArray:v7, v32];
  v27 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_DEBUG))
  {
    v28 = self->_queuedAnchorsByNormalizedKey;
    v29 = v27;
    v30 = [(NSMutableDictionary *)v28 allKeys];
    v31 = self->_queuedReasons;
    *buf = 136315650;
    v41 = "[ADSyncManager addQueuedAnchors:forReasons:]";
    v42 = 2112;
    v43 = v30;
    v44 = 2112;
    v45 = v31;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Anchors in queue: %@ for reasons: %@", buf, 0x20u);
  }
}

- (void)prepareSyncWithAnchors:(id)a3 forReasons:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_delegate)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"ADSyncManager.m" lineNumber:283 description:{@"Already have a sync delegate, is sync still in progress?"}];
  }

  v12 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  objc_storeStrong(&self->_delegate, a5);
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
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Preparing sync with ID %@ for reasons: %@", &v25, 0x20u);
  }

  v17 = [(ADSyncManager *)self _sortedAnchorsFromAnchors:v9];
  [(ADSyncManager *)self _setAnchorsToSync:v17];
  v18 = [[NSSet alloc] initWithArray:v10];
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

- (id)_sortedAnchorsFromAnchors:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v23 = self;
    v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v4;
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
    v16 = [(ADSyncManager *)v23 _preferredSyncKeyOrder];
    v17 = [v16 count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [v16 objectAtIndex:v18];
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

    v21 = [v5 allValues];
    if (v21)
    {
      [v6 addObjectsFromArray:v21];
    }

    if (v15)
    {
      [v6 addObjectsFromArray:v15];
    }
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)_syncFinishedForService:(id)a3 error:(id)a4
{
  [a3 setDelegate:0];
  currentSyncService = self->_currentSyncService;
  self->_currentSyncService = 0;

  if (!a4 && !self->_currentSyncShouldCancel)
  {
    v7 = [(ADSyncManager *)self _currentAnchor];
    if (v7)
    {
      [(NSMutableArray *)self->_syncedAnchors addObject:v7];
      v8 = [v7 key];
      v10 = v8;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      sub_1002F3A14(v9);
    }
  }

  [(ADSyncManager *)self _setCurrentAnchor:0];
  [(ADSyncManager *)self _waitUntilSafeToContinue];
  [(ADSyncManagerDelegate *)self->_delegate syncManagerIsPausingSync:self];
}

- (void)_syncingService:(id)a3 withSyncInfo:(id)a4 receivedChunk:(id)a5 continueBlock:(id)a6
{
  v39 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 appMetadata];
  v14 = [v13 appIdentifyingInfo];

  v15 = [v11 toAdd];
  *(&v38 + 1) = [v15 count];

  v16 = [v11 toRemove];
  *&v38 = [v16 count];

  v17 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    log = v17;
    v36 = [v10 key];
    v37 = [v10 anchor];
    v35 = [v10 validity];
    v32 = [v10 count];
    v28 = [v14 bundleId];
    v27 = [v14 version];
    v18 = [v14 clientIdentifier];
    v19 = [v14 buildNumber];
    v29 = [v10 appMetadata];
    [v29 syncSlots];
    v20 = v30 = v10;
    v21 = [v11 pre];
    v22 = [v11 post];
    [v11 validity];
    v23 = v33 = v12;
    *buf = 136318978;
    v41 = "[ADSyncManager _syncingService:withSyncInfo:receivedChunk:continueBlock:]";
    v42 = 2112;
    v43 = v39;
    v44 = 2112;
    v45 = v36;
    v46 = 2112;
    v47 = v37;
    v48 = 2112;
    v49 = v35;
    v50 = 2048;
    v51 = v32;
    v52 = 2112;
    v53 = v28;
    v54 = 2112;
    v55 = v27;
    v56 = 2112;
    v57 = v18;
    v58 = 2112;
    v59 = v19;
    v60 = 2112;
    v61 = v20;
    v62 = 2112;
    v63 = v21;
    v64 = 2112;
    v65 = v22;
    v66 = 2112;
    v67 = v23;
    v68 = 2048;
    v69 = *(&v38 + 1);
    v70 = 2048;
    v71 = v38;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s %@  Sync - key: %@  anchor: %@  validity: %@  count %lu\nApp Metadata - bundleId: %@  version: %@  clientIdentifier: %@  buildNumber: %@  syncSlots: %@\nChunk - pre: %@  post: %@  validity: %@  toAdd: %lu  toRemove: %lu", buf, 0xA2u);

    v12 = v33;
    v10 = v30;
  }

  if (self->_continueBlock)
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"ADSyncManager.m" lineNumber:140 description:@"Not expecting a sync chunk; already have a continue block"];
  }

  if (self->_currentSyncShouldCancel)
  {
    v12[2](v12, 0);
  }

  else
  {
    [(ADSyncManager *)self _setContinueBlock:v12];
    if (v38 != 0)
    {
      self->_currentSyncHasChanges = 1;
    }

    v24 = [v11 post];
    currentSyncGeneration = self->_currentSyncGeneration;
    self->_currentSyncGeneration = v24;

    [(ADSyncManagerDelegate *)self->_delegate syncManager:self chunkForSyncInfo:v10 chunkInfo:v11];
    [(ADSyncManagerDelegate *)self->_delegate syncManagerIsPausingSync:self];
  }
}

- (void)_setCurrentAnchorToNext
{
  v3 = [(NSMutableArray *)self->_anchorsToSync lastObject];
  [(ADSyncManager *)self _setCurrentAnchor:v3];
  if (v3)
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
  v27 = self;
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
            v12 = [v9 generation];
            v13 = v6;
            v14 = v7;
            v15 = [v9 count];
            v16 = [v9 validity];
            v17 = [v9 appMetaData];
            v18 = [v17 syncSlots];
            *buf = 136316418;
            v36 = "[ADSyncManager _finishSync]";
            v37 = 2112;
            v38 = v10;
            v39 = 2112;
            v40 = v12;
            v41 = 2048;
            v42 = v15;
            v7 = v14;
            v6 = v13;
            v43 = 2112;
            v44 = v16;
            v45 = 2112;
            v46 = v18;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Anchor key: %@  generation: %@   count: %lu  validity: %@  syncSlots: %@", buf, 0x3Eu);

            v4 = v28;
          }
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v6);
  }

  delegate = v27->_delegate;
  v27->_delegate = 0;
  v20 = delegate;

  currentAnchor = v27->_currentAnchor;
  v27->_currentAnchor = 0;

  anchorsToSync = v27->_anchorsToSync;
  v27->_anchorsToSync = 0;

  syncedAnchors = v27->_syncedAnchors;
  v27->_syncedAnchors = 0;

  currentSyncID = v27->_currentSyncID;
  v27->_currentSyncID = 0;

  currentSyncReasons = v27->_currentSyncReasons;
  v27->_currentSyncReasons = 0;

  timedoutServices = v27->_timedoutServices;
  v27->_timedoutServices = 0;

  v27->_forceResetOnNextSync = 0;
  [(ADSyncManagerDelegate *)v20 syncManager:v27 finishedSyncForKeys:v4 postNotification:1];

  [(ADSyncManager *)v27 _postSyncFinishedNotification];
}

- (void)_setAnchorsToSync:(id)a3
{
  if (self->_anchorsToSync != a3)
  {
    v5 = [a3 mutableCopy];
    anchorsToSync = self->_anchorsToSync;
    self->_anchorsToSync = v5;

    _objc_release_x1(v5, anchorsToSync);
  }
}

- (ADSyncManager)initWithServiceManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ADSyncManager;
  v9 = [(ADSyncManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceManager, a3);
    objc_storeStrong(&v10->_queue, a4);
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

- (BOOL)shouldSyncIntentPolicyForSyncKeys:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:@"com.apple.siri.appIntentSupportPolicyAndVocab"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:@"com.apple.siri.appIntentSupportPolicyAndVocab.nano"];
  }

  return v4;
}

- (BOOL)shouldSyncEverythingForReason:(id)a3
{
  v3 = a3;
  v4 = [[NSSet alloc] initWithObjects:{@"assistant_enabled", @"daily_sync", @"requested_by_assistantd", @"com.apple.assistant.sync_data_changed", @"Safety net", @"siri_locale_change", 0}];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)syncKeysForReason:(id)a3
{
  v4 = sub_1002F356C(a3);
  if (![v4 count])
  {
    v5 = [(ADSyncManager *)self _serviceManager];
    v6 = [v5 allSyncAnchorKeys];

    v4 = v6;
  }

  return v4;
}

@end