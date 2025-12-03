@interface SHMediaLibraryController
- (BOOL)_synchronizeLocalSnapshot:(id)snapshot error:(id *)error;
- (SHMediaLibraryController)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type;
- (SHMediaLibraryController)initWithDataStore:(id)store remoteLibrary:(id)library libraryInfoFetcher:(id)fetcher snapshotUpdater:(id)updater;
- (SHMediaLibrarySyncDelegate)delegate;
- (id)mapInternalLibraryErrorToMediaLibrary:(id)library keyOverrides:(id)overrides;
- (id)rawSongResponseDataForMediaItemIdentifier:(id)identifier;
- (id)shazamLibrarySyncStartConditionForMediaLibraryStartCondition:(id)condition;
- (id)unsyncedGroupChangeset;
- (id)unsyncedTrackChangeset;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronizeRemoteSnapshot:(id)snapshot startCondition:(id)condition;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)beginLibrarySyncWithStartCondition:(id)condition;
- (void)commonInitWithDataStore:(id)store remoteLibrary:(id)library libraryInfoFetcher:(id)fetcher snapshotUpdater:(id)updater;
- (void)failedToSyncContext:(id)context;
- (void)finishLibrarySync;
- (void)handleLibraryError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)library:(id)library didChangeGroups:(id)groups syncAction:(int64_t)action;
- (void)library:(id)library didChangeTracks:(id)tracks syncAction:(int64_t)action;
- (void)library:(id)library didCompleteSyncWithPendingBatchChanges:(BOOL)changes completionHandler:(id)handler;
- (void)library:(id)library didDeleteItemsWithIdentifiers:(id)identifiers syncAction:(int64_t)action;
- (void)libraryDataStore:(id)store didUpdateWithChanges:(id)changes;
- (void)libraryWillBeginSync:(id)sync withStartCondition:(id)condition;
- (void)persistChangesAndCompleteSyncWithPendingBatchChanges:(BOOL)changes completionHandler:(id)handler;
- (void)removeInvalidChangesFromSnapshot:(id)snapshot;
- (void)resetDataIfNeededForSyncError:(id)error;
- (void)synchronizeRemoteSnapshot:(id)snapshot startCondition:(id)condition didLocalSyncComplete:(BOOL)complete;
- (void)synchronizeWithContext:(id)context;
@end

@implementation SHMediaLibraryController

- (SHMediaLibraryController)initWithBundleIdentifier:(id)identifier clientType:(int64_t)type
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SHMediaLibraryController;
  v6 = [(SHMediaLibraryController *)&v12 init];
  if (v6)
  {
    v7 = [[SHMediaLibraryDataStore alloc] initWithStoreType:1];
    v8 = objc_alloc_init(SHMediaLibraryInfoFetcher);
    v9 = [[SHLShazamLibrary alloc] initWithCallingProcessIdentifier:identifierCopy];
    v10 = objc_alloc_init(SHMediaLibrarySnapshotUpdater);
    [(SHMediaLibraryController *)v6 commonInitWithDataStore:v7 remoteLibrary:v9 libraryInfoFetcher:v8 snapshotUpdater:v10];
  }

  return v6;
}

- (SHMediaLibraryController)initWithDataStore:(id)store remoteLibrary:(id)library libraryInfoFetcher:(id)fetcher snapshotUpdater:(id)updater
{
  storeCopy = store;
  libraryCopy = library;
  fetcherCopy = fetcher;
  updaterCopy = updater;
  v17.receiver = self;
  v17.super_class = SHMediaLibraryController;
  v14 = [(SHMediaLibraryController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(SHMediaLibraryController *)v14 commonInitWithDataStore:storeCopy remoteLibrary:libraryCopy libraryInfoFetcher:fetcherCopy snapshotUpdater:updaterCopy];
  }

  return v15;
}

- (void)commonInitWithDataStore:(id)store remoteLibrary:(id)library libraryInfoFetcher:(id)fetcher snapshotUpdater:(id)updater
{
  storeCopy = store;
  libraryCopy = library;
  fetcherCopy = fetcher;
  updaterCopy = updater;
  dataStore = self->_dataStore;
  self->_dataStore = storeCopy;
  v20 = storeCopy;

  [(SHMediaLibraryDataStore *)self->_dataStore setDelegate:self];
  remoteLibrary = self->_remoteLibrary;
  self->_remoteLibrary = libraryCopy;
  v16 = libraryCopy;

  [(SHLShazamLibrary *)self->_remoteLibrary setDelegate:self];
  libraryInfoFetcher = self->_libraryInfoFetcher;
  self->_libraryInfoFetcher = fetcherCopy;
  v18 = fetcherCopy;

  snapshotUpdater = self->_snapshotUpdater;
  self->_snapshotUpdater = updaterCopy;
}

- (void)synchronizeWithContext:(id)context
{
  contextCopy = context;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  [(SHMediaLibraryController *)self setSyncID:uUIDString];

  [(SHMediaLibraryController *)self setCurrentContext:contextCopy];
  v7 = objc_alloc_init(SHMediaLibrarySnapshot);
  [(SHMediaLibraryController *)self setCurrentSnapshot:v7];

  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    syncID = [(SHMediaLibraryController *)self syncID];
    *buf = 138412290;
    v20 = syncID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Media Library started syncing. Sync ID: %@", buf, 0xCu);
  }

  dataStore = [(SHMediaLibraryController *)self dataStore];
  v11 = dataStore == 0;

  if (v11)
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to start sync, missing data store", buf, 2u);
    }

    [(SHMediaLibraryController *)self failedToSyncContext:contextCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    snapshotUpdater = [(SHMediaLibraryController *)self snapshotUpdater];
    snapshot = [contextCopy snapshot];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001DF60;
    v15[3] = &unk_10007D688;
    v16 = contextCopy;
    objc_copyWeak(&v18, buf);
    selfCopy = self;
    [snapshotUpdater updateSnapshot:snapshot completionHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  libraryInfoFetcher = [(SHMediaLibraryController *)self libraryInfoFetcher];
  [libraryInfoFetcher fetchLibraryInfoWithCompletionHandler:handlerCopy];
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  libraryInfoFetcher = [(SHMediaLibraryController *)self libraryInfoFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001E314;
  v11[3] = &unk_10007D728;
  objc_copyWeak(&v14, &location);
  v9 = parametersCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [libraryInfoFetcher fetchLibraryInfoWithCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)rawSongResponseDataForMediaItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataStore = [(SHMediaLibraryController *)self dataStore];

  v6 = sh_log_object();
  dataStore2 = v6;
  if (dataStore)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&_mh_execute_header, dataStore2, OS_LOG_TYPE_INFO, "Fetching raw song response from data store for mediaItem ID: %@", &v11, 0xCu);
    }

    dataStore2 = [(SHMediaLibraryController *)self dataStore];
    uUIDString = [identifierCopy UUIDString];
    v9 = [dataStore2 fetchRawSongResponseDataForLibraryTrackIdentifier:uUIDString];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, dataStore2, OS_LOG_TYPE_ERROR, "No data store to retrieve raw song response.", &v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_synchronizeLocalSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v5 = +[NSMutableSet set];
  changes = [snapshotCopy changes];
  v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [changes count]);

  changes2 = [snapshotCopy changes];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [changes2 count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v46 = snapshotCopy;
  changes3 = [snapshotCopy changes];
  v10 = [changes3 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    v13 = &cblas_sasum_NEWLAPACK_ptr;
    v47 = *v61;
    do
    {
      v14 = 0;
      v49 = v11;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(changes3);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        changeType = [v15 changeType];
        if ((changeType - 1) >= 2)
        {
          if (changeType != 3)
          {
            goto LABEL_21;
          }

          libraryItem = [v15 libraryItem];
          identifier = [libraryItem identifier];
          [v8 addObject:identifier];

          goto LABEL_20;
        }

        libraryItem2 = [v15 libraryItem];
        v18 = v13[263];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v20 = changes3;
          v21 = v8;
          libraryItem3 = [v15 libraryItem];
          [v48 addObject:libraryItem3];
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v56 = 0u;
          tracksToSave = [libraryItem3 tracksToSave];
          v24 = [tracksToSave countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v57;
            do
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v57 != v26)
                {
                  objc_enumerationMutation(tracksToSave);
                }

                [v5 addObject:*(*(&v56 + 1) + 8 * i)];
              }

              v25 = [tracksToSave countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v25);
          }

          v8 = v21;
          changes3 = v20;
          v12 = v47;
          v13 = &cblas_sasum_NEWLAPACK_ptr;
          v11 = v49;
        }

        libraryItem4 = [v15 libraryItem];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          libraryItem = [v15 libraryItem];
          [v5 addObject:libraryItem];
LABEL_20:
        }

LABEL_21:
        v14 = v14 + 1;
      }

      while (v14 != v11);
      v11 = [changes3 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v11);
  }

  v32 = sh_log_object();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    syncID = [(SHMediaLibraryController *)self syncID];
    *buf = 138412290;
    v65 = syncID;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Local] Media Library sync starts. Sync ID: %@", buf, 0xCu);
  }

  if ([v48 count])
  {
    dataStore = [(SHMediaLibraryController *)self dataStore];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10001F238;
    v54[3] = &unk_10007D6B0;
    v55 = v48;
    [dataStore persistLibraryGroups:v55 completionHandler:v54];
  }

  if ([v5 count])
  {
    dataStore2 = [(SHMediaLibraryController *)self dataStore];
    allObjects = [v5 allObjects];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10001F308;
    v52[3] = &unk_10007D6B0;
    v53 = v5;
    [dataStore2 persistUpdatedTracks:allObjects completionHandler:v52];
  }

  if ([v8 count])
  {
    dataStore3 = [(SHMediaLibraryController *)self dataStore];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10001F3D8;
    v50[3] = &unk_10007D750;
    v51 = v8;
    [dataStore3 deleteItemsByIdentifiers:v51 completionHandler:v50];
  }

  dataStore4 = [(SHMediaLibraryController *)self dataStore];
  v39 = [dataStore4 commitChangesWithError:error];

  v40 = sh_log_object();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    if (v39)
    {
      v41 = @"Yes";
    }

    else
    {
      v41 = @"No";
    }

    syncID2 = [(SHMediaLibraryController *)self syncID];
    *buf = 138412546;
    v65 = v41;
    v66 = 2112;
    v67 = syncID2;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[Local] Media Library completed sync successfully? %@. Sync ID: %@", buf, 0x16u);
  }

  return v39;
}

- (void)synchronizeRemoteSnapshot:(id)snapshot startCondition:(id)condition didLocalSyncComplete:(BOOL)complete
{
  snapshotCopy = snapshot;
  conditionCopy = condition;
  objc_initWeak(&location, self);
  libraryInfoFetcher = [(SHMediaLibraryController *)self libraryInfoFetcher];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F5D0;
  v13[3] = &unk_10007D778;
  objc_copyWeak(&v16, &location);
  v11 = snapshotCopy;
  v14 = v11;
  v12 = conditionCopy;
  v15 = v12;
  completeCopy = complete;
  [libraryInfoFetcher fetchLibraryInfoWithCompletionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_synchronizeRemoteSnapshot:(id)snapshot startCondition:(id)condition
{
  snapshotCopy = snapshot;
  conditionCopy = condition;
  v7 = objc_alloc_init(SHLLibraryChangeset);
  unsyncedGroupChangeset = [(SHMediaLibraryController *)self unsyncedGroupChangeset];
  [(SHLLibraryChangeset *)v7 mergeChangeset:unsyncedGroupChangeset];

  selfCopy = self;
  unsyncedTrackChangeset = [(SHMediaLibraryController *)self unsyncedTrackChangeset];
  [(SHLLibraryChangeset *)v7 mergeChangeset:unsyncedTrackChangeset];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = snapshotCopy;
  changes = [snapshotCopy changes];
  v11 = [changes countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = &cblas_sasum_NEWLAPACK_ptr;
    v14 = *v48;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(changes);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        changeType = [v16 changeType];
        if ((changeType - 1) >= 2)
        {
          if (changeType == 3)
          {
            libraryItem = [v16 libraryItem];
            v30 = v13[269];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v32 = [SHLLibraryTrack alloc];
              libraryItem2 = [v16 libraryItem];
              identifier = [libraryItem2 identifier];
              v35 = [(SHLLibraryTrack *)v32 initWithIdentifier:identifier];

              v13 = &cblas_sasum_NEWLAPACK_ptr;
              v52 = v35;
              v36 = [NSArray arrayWithObjects:&v52 count:1];
              [(SHLLibraryChangeset *)v7 deleteTracks:v36];
            }

            libraryItem3 = [v16 libraryItem];
            objc_opt_class();
            v38 = objc_opt_isKindOfClass();

            if (v38)
            {
              v39 = [SHLLibraryGroup alloc];
              libraryItem4 = [v16 libraryItem];
              identifier2 = [libraryItem4 identifier];
              v27 = [(SHLLibraryGroup *)v39 initWithIdentifier:identifier2];

              v13 = &cblas_sasum_NEWLAPACK_ptr;
              v51 = v27;
              v28 = [NSArray arrayWithObjects:&v51 count:1];
              [(SHLLibraryChangeset *)v7 deleteGroups:v28];
LABEL_19:

LABEL_20:
              continue;
            }
          }
        }

        else
        {
          libraryItem5 = [v16 libraryItem];
          v19 = v13[269];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();

          if (v20)
          {
            libraryItem6 = [v16 libraryItem];
            v22 = [SHMediaLibraryItemMapper shazamLibraryTrackFromLibraryTrack:libraryItem6];

            if (v22)
            {
              v54 = v22;
              v23 = [NSArray arrayWithObjects:&v54 count:1];
              [(SHLLibraryChangeset *)v7 addTracks:v23];
            }
          }

          libraryItem7 = [v16 libraryItem];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          if (v25)
          {
            libraryItem8 = [v16 libraryItem];
            v27 = [SHMediaLibraryItemMapper shazamLibraryGroupFromLibraryGroup:libraryItem8];

            if (v27)
            {
              v53 = v27;
              v28 = [NSArray arrayWithObjects:&v53 count:1];
              [(SHLLibraryChangeset *)v7 addGroups:v28];
              goto LABEL_19;
            }

            goto LABEL_20;
          }
        }
      }

      v12 = [changes countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v12);
  }

  v42 = [(SHMediaLibraryController *)selfCopy shazamLibrarySyncStartConditionForMediaLibraryStartCondition:conditionCopy];
  remoteLibrary = [(SHMediaLibraryController *)selfCopy remoteLibrary];
  [remoteLibrary synchronizeChanges:v7 startCondition:v42];
}

- (id)unsyncedGroupChangeset
{
  dataStore = [(SHMediaLibraryController *)self dataStore];
  fetchAllUploadableGroupsMissingLibrarySyncMetadata = [dataStore fetchAllUploadableGroupsMissingLibrarySyncMetadata];

  v4 = objc_alloc_init(SHLLibraryChangeset);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = fetchAllUploadableGroupsMissingLibrarySyncMetadata;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SHMediaLibraryItemMapper shazamLibraryGroupFromLibraryGroup:*(*(&v14 + 1) + 8 * i), v14];
        v11 = v10;
        if (v10)
        {
          v18 = v10;
          v12 = [NSArray arrayWithObjects:&v18 count:1];
          [(SHLLibraryChangeset *)v4 addGroups:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)unsyncedTrackChangeset
{
  v3 = objc_alloc_init(SHLLibraryChangeset);
  dataStore = [(SHMediaLibraryController *)self dataStore];
  fetchAllUploadableTracksMissingLibrarySyncMetadata = [dataStore fetchAllUploadableTracksMissingLibrarySyncMetadata];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = fetchAllUploadableTracksMissingLibrarySyncMetadata;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [SHMediaLibraryItemMapper shazamLibraryTrackFromLibraryTrack:*(*(&v15 + 1) + 8 * i), v15];
        v12 = v11;
        if (v11)
        {
          v19 = v11;
          v13 = [NSArray arrayWithObjects:&v19 count:1];
          [(SHLLibraryChangeset *)v3 addTracks:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)shazamLibrarySyncStartConditionForMediaLibraryStartCondition:(id)condition
{
  conditionCopy = condition;
  v4 = &off_10007DD38;
  if (([conditionCopy isEqualToString:SHMediaLibrarySyncStartConditionUserAction] & 1) == 0)
  {
    if ([conditionCopy isEqualToString:SHMediaLibrarySyncStartConditionInitialFetch])
    {
      v4 = &off_10007DD28;
    }

    else if ([conditionCopy isEqualToString:SHMediaLibrarySyncStartConditionInitialUpload])
    {
      v4 = &off_10007DD30;
    }

    else if ([conditionCopy isEqualToString:SHMediaLibrarySyncStartConditionRemotePush])
    {
      v4 = &off_10007DD40;
    }

    else if ([conditionCopy isEqualToString:SHMediaLibrarySyncStartConditionMigration])
    {
      v4 = &off_10007DD50;
    }
  }

  v5 = *v4;
  v6 = v5;

  return v5;
}

- (void)libraryWillBeginSync:(id)sync withStartCondition:(id)condition
{
  [(SHMediaLibraryController *)self beginLibrarySyncWithStartCondition:condition];
  v5 = objc_alloc_init(SHMediaLibrarySnapshot);
  [(SHMediaLibraryController *)self setSyncSnapshot:v5];
}

- (void)library:(id)library didChangeTracks:(id)tracks syncAction:(int64_t)action
{
  tracksCopy = tracks;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [tracksCopy count]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = tracksCopy;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [SHMediaLibraryItemMapper libraryTrackFromShazamLibraryTrack:*(*(&v50 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v10);
  }

  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  if (action)
  {
    if (action != 1)
    {
      goto LABEL_29;
    }

    v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    dataStore = [(SHMediaLibraryController *)self dataStore];
    v16 = [dataStore updateReportForLibraryTrack:v7];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v16;
    missingFromLocalStoreTracks = [v16 missingFromLocalStoreTracks];
    v18 = [missingFromLocalStoreTracks countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(missingFromLocalStoreTracks);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          currentSnapshot = [(SHMediaLibraryController *)self currentSnapshot];
          v24 = [currentSnapshot containsLibraryItem:v22];

          if ((v24 & 1) == 0)
          {
            v25 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v22 changeType:1];
            [v38 addObject:v25];
          }
        }

        v19 = [missingFromLocalStoreTracks countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v19);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    locallyFoundTracks = [v37 locallyFoundTracks];
    v27 = [locallyFoundTracks countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(locallyFoundTracks);
          }

          updatedTrack = [*(*(&v42 + 1) + 8 * k) updatedTrack];
          [v14 addObject:updatedTrack];
        }

        v28 = [locallyFoundTracks countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v28);
    }

    syncSnapshot = [(SHMediaLibraryController *)self syncSnapshot];
    v33 = v38;
    v34 = [v38 copy];
    [syncSnapshot addChanges:v34];
  }

  else
  {
    v33 = [v7 copy];
    [v14 addObjectsFromArray:v33];
  }

LABEL_29:
  if ([v14 count])
  {
    dataStore2 = [(SHMediaLibraryController *)self dataStore];
    v36 = [v14 copy];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002052C;
    v40[3] = &unk_10007D6B0;
    v41 = v14;
    [dataStore2 persistUpdatedTracks:v36 completionHandler:v40];
  }
}

- (void)library:(id)library didChangeGroups:(id)groups syncAction:(int64_t)action
{
  selfCopy = self;
  groupsCopy = groups;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [groupsCopy count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = groupsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        selfCopy = [SHMediaLibraryItemMapper libraryGroupFromShazamLibraryGroup:*(*(&v22 + 1) + 8 * v12), selfCopy];
        if (action != 1 || (-[SHMediaLibraryController currentSnapshot](selfCopy, "currentSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 containsLibraryItem:selfCopy], v14, (v15 & 1) == 0))
        {
          [v7 addObject:selfCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = v8;

  dataStore = [(SHMediaLibraryController *)selfCopy dataStore];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000207F8;
  v20[3] = &unk_10007D6B0;
  v21 = v7;
  v18 = v7;
  [dataStore persistLibraryGroups:v18 completionHandler:v20];
}

- (void)library:(id)library didDeleteItemsWithIdentifiers:(id)identifiers syncAction:(int64_t)action
{
  identifiersCopy = identifiers;
  dataStore = [(SHMediaLibraryController *)self dataStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020978;
  v9[3] = &unk_10007D750;
  v10 = identifiersCopy;
  v8 = identifiersCopy;
  [dataStore deleteItemsByIdentifiers:v8 completionHandler:v9];
}

- (void)library:(id)library didCompleteSyncWithPendingBatchChanges:(BOOL)changes completionHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  syncSnapshot = [(SHMediaLibraryController *)self syncSnapshot];
  v11 = [syncSnapshot copy];

  [(SHMediaLibraryController *)self setSyncSnapshot:0];
  objc_initWeak(&location, self);
  snapshotUpdater = [(SHMediaLibraryController *)self snapshotUpdater];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100020BAC;
  v15[3] = &unk_10007D7A0;
  v13 = v11;
  v16 = v13;
  objc_copyWeak(&v18, &location);
  changesCopy = changes;
  v14 = handlerCopy;
  v17 = v14;
  [snapshotUpdater updateSnapshot:v13 completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)beginLibrarySyncWithStartCondition:(id)condition
{
  conditionCopy = condition;
  currentContext2 = sh_log_object();
  v6 = os_log_type_enabled(currentContext2, OS_LOG_TYPE_DEFAULT);
  if (@"BatchFetchContinuation" == conditionCopy)
  {
    if (v6)
    {
      syncID = [(SHMediaLibraryController *)self syncID];
      v13 = 138412290;
      v14 = syncID;
      _os_log_impl(&_mh_execute_header, currentContext2, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library continued syncing for next batch. Sync ID: %@. ", &v13, 0xCu);
    }

    goto LABEL_8;
  }

  if (v6)
  {
    syncID2 = [(SHMediaLibraryController *)self syncID];
    v13 = 138412290;
    v14 = syncID2;
    _os_log_impl(&_mh_execute_header, currentContext2, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library sync starts. Sync ID: %@", &v13, 0xCu);
  }

  currentContext = [(SHMediaLibraryController *)self currentContext];
  delegate = [currentContext delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    currentContext2 = [(SHMediaLibraryController *)self currentContext];
    delegate2 = [currentContext2 delegate];
    [delegate2 _libraryWillBeginSync:self];

LABEL_8:
  }
}

- (void)persistChangesAndCompleteSyncWithPendingBatchChanges:(BOOL)changes completionHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  dataStore = [(SHMediaLibraryController *)self dataStore];
  v39 = 0;
  v8 = [dataStore commitChangesWithError:&v39];
  v9 = v39;

  if (v9)
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v41 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to persist sync changes with error: %@", buf, 0xCu);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }

  currentContext = [(SHMediaLibraryController *)self currentContext];
  error = [currentContext error];
  [(SHMediaLibraryController *)self resetDataIfNeededForSyncError:error];

  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    currentSnapshot = [(SHMediaLibraryController *)self currentSnapshot];
    if ([currentSnapshot hasChanges])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    currentSnapshot2 = [(SHMediaLibraryController *)self currentSnapshot];
    changes = [currentSnapshot2 changes];
    v18 = [changes count];
    *buf = 138412546;
    *v41 = v15;
    *&v41[8] = 2048;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current Context hasChanges: %@. Change count: %lu", buf, 0x16u);
  }

  currentSnapshot3 = [(SHMediaLibraryController *)self currentSnapshot];
  hasChanges = [currentSnapshot3 hasChanges];

  if (hasChanges)
  {
    currentSnapshot4 = [(SHMediaLibraryController *)self currentSnapshot];
    v22 = [currentSnapshot4 copy];

    currentContext2 = [(SHMediaLibraryController *)self currentContext];
    delegate = [currentContext2 delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      currentContext3 = [(SHMediaLibraryController *)self currentContext];
      delegate2 = [currentContext3 delegate];
      [delegate2 _library:self didChangeWithSnapshot:v22];
    }
  }

  v28 = sh_log_object();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = v8;
    *&v41[4] = 1024;
    *&v41[6] = changesCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Checking for unfetched changes. PersistedPreviousChanges: %d, TaskOutcomeWithMoreChanges: %d", buf, 0xEu);
  }

  if ((v8 & changesCopy) != 0)
  {
    v29 = sh_log_object();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library Sync has unfetched changes. Starting a new sync to continue fetching.", buf, 2u);
    }

    [(SHMediaLibraryController *)self setCurrentSnapshot:0];
    v30 = objc_alloc_init(SHMediaLibrarySnapshot);
    [(SHMediaLibraryController *)self setCurrentSnapshot:v30];

    remoteLibrary = [(SHMediaLibraryController *)self remoteLibrary];
    [remoteLibrary synchronizeWithStartCondition:@"BatchFetchContinuation"];
  }

  else
  {
    currentContext4 = [(SHMediaLibraryController *)self currentContext];
    delegate3 = [currentContext4 delegate];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      currentContext5 = [(SHMediaLibraryController *)self currentContext];
      delegate4 = [currentContext5 delegate];
      [delegate4 _libraryDidCompleteSync:self];
    }

    v37 = sh_log_object();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      syncID = [(SHMediaLibraryController *)self syncID];
      *buf = 138412290;
      *v41 = syncID;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library completed sync. Sync ID: %@", buf, 0xCu);
    }

    [(SHMediaLibraryController *)self finishLibrarySync];
  }
}

- (void)handleLibraryError:(id)error failedItemIdentifiers:(id)identifiers
{
  errorCopy = error;
  identifiersCopy = identifiers;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412546;
    v20 = errorCopy;
    v21 = 2112;
    v22 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Media Library sync error: %@. Failed item identifiers: %@", &v19, 0x16u);
  }

  v9 = [(SHMediaLibraryController *)self mapInternalLibraryErrorToMediaLibrary:errorCopy keyOverrides:0];
  currentContext = [(SHMediaLibraryController *)self currentContext];
  [currentContext setError:v9];

  currentContext2 = [(SHMediaLibraryController *)self currentContext];
  delegate = [currentContext2 delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    currentContext3 = [(SHMediaLibraryController *)self currentContext];
    delegate2 = [currentContext3 delegate];
    currentContext4 = [(SHMediaLibraryController *)self currentContext];
    error = [currentContext4 error];
    v18 = [identifiersCopy copy];
    [delegate2 _library:self didProduceError:error failedItemIdentifiers:v18];
  }
}

- (void)resetDataIfNeededForSyncError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v9 = errorCopy;
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:SHMediaLibraryErrorDomain];

    if (v6)
    {
      code = [v9 code];
      if (code != 201)
      {
        if (code == 402)
        {
          dataStore = [(SHMediaLibraryController *)self dataStore];
          [dataStore deleteAllItems];
          goto LABEL_8;
        }

        if (code != 401)
        {
          goto LABEL_9;
        }
      }

      dataStore = [(SHMediaLibraryController *)self dataStore];
      [dataStore deleteAllSyncMetadataItems];
LABEL_8:
    }
  }

LABEL_9:

  _objc_release_x1();
}

- (id)mapInternalLibraryErrorToMediaLibrary:(id)library keyOverrides:(id)overrides
{
  libraryCopy = library;
  overridesCopy = overrides;
  domain = [libraryCopy domain];
  v8 = [domain isEqualToString:@"com.shazam.library"];

  if (v8)
  {
    code = [libraryCopy code];
    if (code > 8)
    {
      v10 = 301;
    }

    else
    {
      v10 = qword_10005D090[code];
    }

    domain2 = [libraryCopy domain];
    v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain2, [libraryCopy code], 0);

    v14 = +[NSMutableDictionary dictionary];
    localizedDescription = [libraryCopy localizedDescription];
    [v14 setValue:localizedDescription forKey:NSDebugDescriptionErrorKey];

    [v14 setValue:v13 forKey:NSUnderlyingErrorKey];
    if (overridesCopy)
    {
      [v14 addEntriesFromDictionary:overridesCopy];
    }

    v16 = SHMediaLibraryErrorDomain;
    v17 = [v14 copy];
    v11 = [NSError errorWithDomain:v16 code:v10 userInfo:v17];
  }

  else
  {
    v11 = libraryCopy;
  }

  return v11;
}

- (void)finishLibrarySync
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    syncID = [(SHMediaLibraryController *)self syncID];
    v5 = 138412290;
    v6 = syncID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Media Library finished syncing. Sync ID: %@", &v5, 0xCu);
  }

  [(SHMediaLibraryController *)self setSyncID:0];
  [(SHMediaLibraryController *)self setCurrentContext:0];
  [(SHMediaLibraryController *)self setCurrentSnapshot:0];
}

- (void)failedToSyncContext:(id)context
{
  v4 = SHMediaLibraryErrorDomain;
  v10 = NSDebugDescriptionErrorKey;
  v11 = @"Failed to synchronize library. Try again later.";
  contextCopy = context;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError errorWithDomain:v4 code:500 userInfo:v6];

  snapshot = [contextCopy snapshot];

  allItemIdentifiers = [snapshot allItemIdentifiers];
  [(SHMediaLibraryController *)self handleLibraryError:v7 failedItemIdentifiers:allItemIdentifiers];

  [(SHMediaLibraryController *)self finishLibrarySync];
}

- (void)removeInvalidChangesFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021BB4;
  v10[3] = &unk_10007D7C8;
  objc_copyWeak(&v11, &location);
  v5 = [NSPredicate predicateWithBlock:v10];
  v6 = [snapshotCopy filteredSnapshotUsingPredicate:v5];
  if ([v6 hasChanges])
  {
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"Items with invalid Shazam IDs are not supported.";
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:SHMediaLibraryErrorDomain code:500 userInfo:v7];

    allItemIdentifiers = [v6 allItemIdentifiers];
    [(SHMediaLibraryController *)self handleLibraryError:v8 failedItemIdentifiers:allItemIdentifiers];
  }

  [snapshotCopy removeSnapshot:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)libraryDataStore:(id)store didUpdateWithChanges:(id)changes
{
  changesCopy = changes;
  currentSnapshot = [(SHMediaLibraryController *)self currentSnapshot];
  [currentSnapshot addChanges:changesCopy];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is not supported by shazamd, please use synchronizeWithContext:", v4];
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end