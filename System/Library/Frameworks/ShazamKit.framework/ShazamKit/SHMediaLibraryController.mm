@interface SHMediaLibraryController
- (BOOL)_synchronizeLocalSnapshot:(id)a3 error:(id *)a4;
- (SHMediaLibraryController)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4;
- (SHMediaLibraryController)initWithDataStore:(id)a3 remoteLibrary:(id)a4 libraryInfoFetcher:(id)a5 snapshotUpdater:(id)a6;
- (SHMediaLibrarySyncDelegate)delegate;
- (id)mapInternalLibraryErrorToMediaLibrary:(id)a3 keyOverrides:(id)a4;
- (id)rawSongResponseDataForMediaItemIdentifier:(id)a3;
- (id)shazamLibrarySyncStartConditionForMediaLibraryStartCondition:(id)a3;
- (id)unsyncedGroupChangeset;
- (id)unsyncedTrackChangeset;
- (void)_libraryInfoWithCompletionHandler:(id)a3;
- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_synchronizeRemoteSnapshot:(id)a3 startCondition:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
- (void)beginLibrarySyncWithStartCondition:(id)a3;
- (void)commonInitWithDataStore:(id)a3 remoteLibrary:(id)a4 libraryInfoFetcher:(id)a5 snapshotUpdater:(id)a6;
- (void)failedToSyncContext:(id)a3;
- (void)finishLibrarySync;
- (void)handleLibraryError:(id)a3 failedItemIdentifiers:(id)a4;
- (void)library:(id)a3 didChangeGroups:(id)a4 syncAction:(int64_t)a5;
- (void)library:(id)a3 didChangeTracks:(id)a4 syncAction:(int64_t)a5;
- (void)library:(id)a3 didCompleteSyncWithPendingBatchChanges:(BOOL)a4 completionHandler:(id)a5;
- (void)library:(id)a3 didDeleteItemsWithIdentifiers:(id)a4 syncAction:(int64_t)a5;
- (void)libraryDataStore:(id)a3 didUpdateWithChanges:(id)a4;
- (void)libraryWillBeginSync:(id)a3 withStartCondition:(id)a4;
- (void)persistChangesAndCompleteSyncWithPendingBatchChanges:(BOOL)a3 completionHandler:(id)a4;
- (void)removeInvalidChangesFromSnapshot:(id)a3;
- (void)resetDataIfNeededForSyncError:(id)a3;
- (void)synchronizeRemoteSnapshot:(id)a3 startCondition:(id)a4 didLocalSyncComplete:(BOOL)a5;
- (void)synchronizeWithContext:(id)a3;
@end

@implementation SHMediaLibraryController

- (SHMediaLibraryController)initWithBundleIdentifier:(id)a3 clientType:(int64_t)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SHMediaLibraryController;
  v6 = [(SHMediaLibraryController *)&v12 init];
  if (v6)
  {
    v7 = [[SHMediaLibraryDataStore alloc] initWithStoreType:1];
    v8 = objc_alloc_init(SHMediaLibraryInfoFetcher);
    v9 = [[SHLShazamLibrary alloc] initWithCallingProcessIdentifier:v5];
    v10 = objc_alloc_init(SHMediaLibrarySnapshotUpdater);
    [(SHMediaLibraryController *)v6 commonInitWithDataStore:v7 remoteLibrary:v9 libraryInfoFetcher:v8 snapshotUpdater:v10];
  }

  return v6;
}

- (SHMediaLibraryController)initWithDataStore:(id)a3 remoteLibrary:(id)a4 libraryInfoFetcher:(id)a5 snapshotUpdater:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SHMediaLibraryController;
  v14 = [(SHMediaLibraryController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(SHMediaLibraryController *)v14 commonInitWithDataStore:v10 remoteLibrary:v11 libraryInfoFetcher:v12 snapshotUpdater:v13];
  }

  return v15;
}

- (void)commonInitWithDataStore:(id)a3 remoteLibrary:(id)a4 libraryInfoFetcher:(id)a5 snapshotUpdater:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dataStore = self->_dataStore;
  self->_dataStore = v10;
  v20 = v10;

  [(SHMediaLibraryDataStore *)self->_dataStore setDelegate:self];
  remoteLibrary = self->_remoteLibrary;
  self->_remoteLibrary = v11;
  v16 = v11;

  [(SHLShazamLibrary *)self->_remoteLibrary setDelegate:self];
  libraryInfoFetcher = self->_libraryInfoFetcher;
  self->_libraryInfoFetcher = v12;
  v18 = v12;

  snapshotUpdater = self->_snapshotUpdater;
  self->_snapshotUpdater = v13;
}

- (void)synchronizeWithContext:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];
  [(SHMediaLibraryController *)self setSyncID:v6];

  [(SHMediaLibraryController *)self setCurrentContext:v4];
  v7 = objc_alloc_init(SHMediaLibrarySnapshot);
  [(SHMediaLibraryController *)self setCurrentSnapshot:v7];

  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SHMediaLibraryController *)self syncID];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Media Library started syncing. Sync ID: %@", buf, 0xCu);
  }

  v10 = [(SHMediaLibraryController *)self dataStore];
  v11 = v10 == 0;

  if (v11)
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to start sync, missing data store", buf, 2u);
    }

    [(SHMediaLibraryController *)self failedToSyncContext:v4];
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = [(SHMediaLibraryController *)self snapshotUpdater];
    v13 = [v4 snapshot];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001DF60;
    v15[3] = &unk_10007D688;
    v16 = v4;
    objc_copyWeak(&v18, buf);
    v17 = self;
    [v12 updateSnapshot:v13 completionHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_libraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryController *)self libraryInfoFetcher];
  [v5 fetchLibraryInfoWithCompletionHandler:v4];
}

- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SHMediaLibraryController *)self libraryInfoFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001E314;
  v11[3] = &unk_10007D728;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 fetchLibraryInfoWithCompletionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)rawSongResponseDataForMediaItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryController *)self dataStore];

  v6 = sh_log_object();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching raw song response from data store for mediaItem ID: %@", &v11, 0xCu);
    }

    v7 = [(SHMediaLibraryController *)self dataStore];
    v8 = [v4 UUIDString];
    v9 = [v7 fetchRawSongResponseDataForLibraryTrackIdentifier:v8];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No data store to retrieve raw song response.", &v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_synchronizeLocalSnapshot:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [v4 changes];
  v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);

  v7 = [v4 changes];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v46 = v4;
  v9 = [v4 changes];
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v69 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        v16 = [v15 changeType];
        if ((v16 - 1) >= 2)
        {
          if (v16 != 3)
          {
            goto LABEL_21;
          }

          v30 = [v15 libraryItem];
          v31 = [v30 identifier];
          [v8 addObject:v31];

          goto LABEL_20;
        }

        v17 = [v15 libraryItem];
        v18 = v13[263];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v20 = v9;
          v21 = v8;
          v22 = [v15 libraryItem];
          [v48 addObject:v22];
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v56 = 0u;
          v23 = [v22 tracksToSave];
          v24 = [v23 countByEnumeratingWithState:&v56 objects:v68 count:16];
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
                  objc_enumerationMutation(v23);
                }

                [v5 addObject:*(*(&v56 + 1) + 8 * i)];
              }

              v25 = [v23 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v25);
          }

          v8 = v21;
          v9 = v20;
          v12 = v47;
          v13 = &cblas_sasum_NEWLAPACK_ptr;
          v11 = v49;
        }

        v28 = [v15 libraryItem];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          v30 = [v15 libraryItem];
          [v5 addObject:v30];
LABEL_20:
        }

LABEL_21:
        v14 = v14 + 1;
      }

      while (v14 != v11);
      v11 = [v9 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v11);
  }

  v32 = sh_log_object();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(SHMediaLibraryController *)self syncID];
    *buf = 138412290;
    v65 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Local] Media Library sync starts. Sync ID: %@", buf, 0xCu);
  }

  if ([v48 count])
  {
    v34 = [(SHMediaLibraryController *)self dataStore];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10001F238;
    v54[3] = &unk_10007D6B0;
    v55 = v48;
    [v34 persistLibraryGroups:v55 completionHandler:v54];
  }

  if ([v5 count])
  {
    v35 = [(SHMediaLibraryController *)self dataStore];
    v36 = [v5 allObjects];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10001F308;
    v52[3] = &unk_10007D6B0;
    v53 = v5;
    [v35 persistUpdatedTracks:v36 completionHandler:v52];
  }

  if ([v8 count])
  {
    v37 = [(SHMediaLibraryController *)self dataStore];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10001F3D8;
    v50[3] = &unk_10007D750;
    v51 = v8;
    [v37 deleteItemsByIdentifiers:v51 completionHandler:v50];
  }

  v38 = [(SHMediaLibraryController *)self dataStore];
  v39 = [v38 commitChangesWithError:a4];

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

    v42 = [(SHMediaLibraryController *)self syncID];
    *buf = 138412546;
    v65 = v41;
    v66 = 2112;
    v67 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[Local] Media Library completed sync successfully? %@. Sync ID: %@", buf, 0x16u);
  }

  return v39;
}

- (void)synchronizeRemoteSnapshot:(id)a3 startCondition:(id)a4 didLocalSyncComplete:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = [(SHMediaLibraryController *)self libraryInfoFetcher];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001F5D0;
  v13[3] = &unk_10007D778;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  v17 = a5;
  [v10 fetchLibraryInfoWithCompletionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_synchronizeRemoteSnapshot:(id)a3 startCondition:(id)a4
{
  v6 = a3;
  v45 = a4;
  v7 = objc_alloc_init(SHLLibraryChangeset);
  v8 = [(SHMediaLibraryController *)self unsyncedGroupChangeset];
  [(SHLLibraryChangeset *)v7 mergeChangeset:v8];

  v44 = self;
  v9 = [(SHMediaLibraryController *)self unsyncedTrackChangeset];
  [(SHLLibraryChangeset *)v7 mergeChangeset:v9];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = v6;
  v10 = [v6 changes];
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
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
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = [v16 changeType];
        if ((v17 - 1) >= 2)
        {
          if (v17 == 3)
          {
            v29 = [v16 libraryItem];
            v30 = v13[269];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v32 = [SHLLibraryTrack alloc];
              v33 = [v16 libraryItem];
              v34 = [v33 identifier];
              v35 = [(SHLLibraryTrack *)v32 initWithIdentifier:v34];

              v13 = &cblas_sasum_NEWLAPACK_ptr;
              v52 = v35;
              v36 = [NSArray arrayWithObjects:&v52 count:1];
              [(SHLLibraryChangeset *)v7 deleteTracks:v36];
            }

            v37 = [v16 libraryItem];
            objc_opt_class();
            v38 = objc_opt_isKindOfClass();

            if (v38)
            {
              v39 = [SHLLibraryGroup alloc];
              v40 = [v16 libraryItem];
              v41 = [v40 identifier];
              v27 = [(SHLLibraryGroup *)v39 initWithIdentifier:v41];

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
          v18 = [v16 libraryItem];
          v19 = v13[269];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();

          if (v20)
          {
            v21 = [v16 libraryItem];
            v22 = [SHMediaLibraryItemMapper shazamLibraryTrackFromLibraryTrack:v21];

            if (v22)
            {
              v54 = v22;
              v23 = [NSArray arrayWithObjects:&v54 count:1];
              [(SHLLibraryChangeset *)v7 addTracks:v23];
            }
          }

          v24 = [v16 libraryItem];
          objc_opt_class();
          v25 = objc_opt_isKindOfClass();

          if (v25)
          {
            v26 = [v16 libraryItem];
            v27 = [SHMediaLibraryItemMapper shazamLibraryGroupFromLibraryGroup:v26];

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

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v12);
  }

  v42 = [(SHMediaLibraryController *)v44 shazamLibrarySyncStartConditionForMediaLibraryStartCondition:v45];
  v43 = [(SHMediaLibraryController *)v44 remoteLibrary];
  [v43 synchronizeChanges:v7 startCondition:v42];
}

- (id)unsyncedGroupChangeset
{
  v2 = [(SHMediaLibraryController *)self dataStore];
  v3 = [v2 fetchAllUploadableGroupsMissingLibrarySyncMetadata];

  v4 = objc_alloc_init(SHLLibraryChangeset);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
  v4 = [(SHMediaLibraryController *)self dataStore];
  v5 = [v4 fetchAllUploadableTracksMissingLibrarySyncMetadata];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
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

- (id)shazamLibrarySyncStartConditionForMediaLibraryStartCondition:(id)a3
{
  v3 = a3;
  v4 = &off_10007DD38;
  if (([v3 isEqualToString:SHMediaLibrarySyncStartConditionUserAction] & 1) == 0)
  {
    if ([v3 isEqualToString:SHMediaLibrarySyncStartConditionInitialFetch])
    {
      v4 = &off_10007DD28;
    }

    else if ([v3 isEqualToString:SHMediaLibrarySyncStartConditionInitialUpload])
    {
      v4 = &off_10007DD30;
    }

    else if ([v3 isEqualToString:SHMediaLibrarySyncStartConditionRemotePush])
    {
      v4 = &off_10007DD40;
    }

    else if ([v3 isEqualToString:SHMediaLibrarySyncStartConditionMigration])
    {
      v4 = &off_10007DD50;
    }
  }

  v5 = *v4;
  v6 = v5;

  return v5;
}

- (void)libraryWillBeginSync:(id)a3 withStartCondition:(id)a4
{
  [(SHMediaLibraryController *)self beginLibrarySyncWithStartCondition:a4];
  v5 = objc_alloc_init(SHMediaLibrarySnapshot);
  [(SHMediaLibraryController *)self setSyncSnapshot:v5];
}

- (void)library:(id)a3 didChangeTracks:(id)a4 syncAction:(int64_t)a5
{
  v6 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v6;
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
  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_29;
    }

    v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v15 = [(SHMediaLibraryController *)self dataStore];
    v16 = [v15 updateReportForLibraryTrack:v7];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v16;
    v17 = [v16 missingFromLocalStoreTracks];
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v23 = [(SHMediaLibraryController *)self currentSnapshot];
          v24 = [v23 containsLibraryItem:v22];

          if ((v24 & 1) == 0)
          {
            v25 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v22 changeType:1];
            [v38 addObject:v25];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v19);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = [v37 locallyFoundTracks];
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v54 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v42 + 1) + 8 * k) updatedTrack];
          [v14 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v28);
    }

    v32 = [(SHMediaLibraryController *)self syncSnapshot];
    v33 = v38;
    v34 = [v38 copy];
    [v32 addChanges:v34];
  }

  else
  {
    v33 = [v7 copy];
    [v14 addObjectsFromArray:v33];
  }

LABEL_29:
  if ([v14 count])
  {
    v35 = [(SHMediaLibraryController *)self dataStore];
    v36 = [v14 copy];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002052C;
    v40[3] = &unk_10007D6B0;
    v41 = v14;
    [v35 persistUpdatedTracks:v36 completionHandler:v40];
  }
}

- (void)library:(id)a3 didChangeGroups:(id)a4 syncAction:(int64_t)a5
{
  v19 = self;
  v6 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
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

        v13 = [SHMediaLibraryItemMapper libraryGroupFromShazamLibraryGroup:*(*(&v22 + 1) + 8 * v12), v19];
        if (a5 != 1 || (-[SHMediaLibraryController currentSnapshot](v19, "currentSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 containsLibraryItem:v13], v14, (v15 & 1) == 0))
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = v8;

  v17 = [(SHMediaLibraryController *)v19 dataStore];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000207F8;
  v20[3] = &unk_10007D6B0;
  v21 = v7;
  v18 = v7;
  [v17 persistLibraryGroups:v18 completionHandler:v20];
}

- (void)library:(id)a3 didDeleteItemsWithIdentifiers:(id)a4 syncAction:(int64_t)a5
{
  v6 = a4;
  v7 = [(SHMediaLibraryController *)self dataStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020978;
  v9[3] = &unk_10007D750;
  v10 = v6;
  v8 = v6;
  [v7 deleteItemsByIdentifiers:v8 completionHandler:v9];
}

- (void)library:(id)a3 didCompleteSyncWithPendingBatchChanges:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SHMediaLibraryController *)self syncSnapshot];
  v11 = [v10 copy];

  [(SHMediaLibraryController *)self setSyncSnapshot:0];
  objc_initWeak(&location, self);
  v12 = [(SHMediaLibraryController *)self snapshotUpdater];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100020BAC;
  v15[3] = &unk_10007D7A0;
  v13 = v11;
  v16 = v13;
  objc_copyWeak(&v18, &location);
  v19 = a4;
  v14 = v9;
  v17 = v14;
  [v12 updateSnapshot:v13 completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)beginLibrarySyncWithStartCondition:(id)a3
{
  v4 = a3;
  v5 = sh_log_object();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (@"BatchFetchContinuation" == v4)
  {
    if (v6)
    {
      v12 = [(SHMediaLibraryController *)self syncID];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library continued syncing for next batch. Sync ID: %@. ", &v13, 0xCu);
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v7 = [(SHMediaLibraryController *)self syncID];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library sync starts. Sync ID: %@", &v13, 0xCu);
  }

  v8 = [(SHMediaLibraryController *)self currentContext];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v5 = [(SHMediaLibraryController *)self currentContext];
    v11 = [v5 delegate];
    [v11 _libraryWillBeginSync:self];

LABEL_8:
  }
}

- (void)persistChangesAndCompleteSyncWithPendingBatchChanges:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SHMediaLibraryController *)self dataStore];
  v39 = 0;
  v8 = [v7 commitChangesWithError:&v39];
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

  if (v6)
  {
    v6[2](v6, v8);
  }

  v11 = [(SHMediaLibraryController *)self currentContext];
  v12 = [v11 error];
  [(SHMediaLibraryController *)self resetDataIfNeededForSyncError:v12];

  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SHMediaLibraryController *)self currentSnapshot];
    if ([v14 hasChanges])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [(SHMediaLibraryController *)self currentSnapshot];
    v17 = [v16 changes];
    v18 = [v17 count];
    *buf = 138412546;
    *v41 = v15;
    *&v41[8] = 2048;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current Context hasChanges: %@. Change count: %lu", buf, 0x16u);
  }

  v19 = [(SHMediaLibraryController *)self currentSnapshot];
  v20 = [v19 hasChanges];

  if (v20)
  {
    v21 = [(SHMediaLibraryController *)self currentSnapshot];
    v22 = [v21 copy];

    v23 = [(SHMediaLibraryController *)self currentContext];
    v24 = [v23 delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [(SHMediaLibraryController *)self currentContext];
      v27 = [v26 delegate];
      [v27 _library:self didChangeWithSnapshot:v22];
    }
  }

  v28 = sh_log_object();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v41 = v8;
    *&v41[4] = 1024;
    *&v41[6] = v4;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Checking for unfetched changes. PersistedPreviousChanges: %d, TaskOutcomeWithMoreChanges: %d", buf, 0xEu);
  }

  if ((v8 & v4) != 0)
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

    v31 = [(SHMediaLibraryController *)self remoteLibrary];
    [v31 synchronizeWithStartCondition:@"BatchFetchContinuation"];
  }

  else
  {
    v32 = [(SHMediaLibraryController *)self currentContext];
    v33 = [v32 delegate];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v35 = [(SHMediaLibraryController *)self currentContext];
      v36 = [v35 delegate];
      [v36 _libraryDidCompleteSync:self];
    }

    v37 = sh_log_object();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(SHMediaLibraryController *)self syncID];
      *buf = 138412290;
      *v41 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Remote] Media Library completed sync. Sync ID: %@", buf, 0xCu);
    }

    [(SHMediaLibraryController *)self finishLibrarySync];
  }
}

- (void)handleLibraryError:(id)a3 failedItemIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Media Library sync error: %@. Failed item identifiers: %@", &v19, 0x16u);
  }

  v9 = [(SHMediaLibraryController *)self mapInternalLibraryErrorToMediaLibrary:v6 keyOverrides:0];
  v10 = [(SHMediaLibraryController *)self currentContext];
  [v10 setError:v9];

  v11 = [(SHMediaLibraryController *)self currentContext];
  v12 = [v11 delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(SHMediaLibraryController *)self currentContext];
    v15 = [v14 delegate];
    v16 = [(SHMediaLibraryController *)self currentContext];
    v17 = [v16 error];
    v18 = [v7 copy];
    [v15 _library:self didProduceError:v17 failedItemIdentifiers:v18];
  }
}

- (void)resetDataIfNeededForSyncError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:SHMediaLibraryErrorDomain];

    if (v6)
    {
      v7 = [v9 code];
      if (v7 != 201)
      {
        if (v7 == 402)
        {
          v8 = [(SHMediaLibraryController *)self dataStore];
          [v8 deleteAllItems];
          goto LABEL_8;
        }

        if (v7 != 401)
        {
          goto LABEL_9;
        }
      }

      v8 = [(SHMediaLibraryController *)self dataStore];
      [v8 deleteAllSyncMetadataItems];
LABEL_8:
    }
  }

LABEL_9:

  _objc_release_x1();
}

- (id)mapInternalLibraryErrorToMediaLibrary:(id)a3 keyOverrides:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:@"com.shazam.library"];

  if (v8)
  {
    v9 = [v5 code];
    if (v9 > 8)
    {
      v10 = 301;
    }

    else
    {
      v10 = qword_10005D090[v9];
    }

    v12 = [v5 domain];
    v13 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v12, [v5 code], 0);

    v14 = +[NSMutableDictionary dictionary];
    v15 = [v5 localizedDescription];
    [v14 setValue:v15 forKey:NSDebugDescriptionErrorKey];

    [v14 setValue:v13 forKey:NSUnderlyingErrorKey];
    if (v6)
    {
      [v14 addEntriesFromDictionary:v6];
    }

    v16 = SHMediaLibraryErrorDomain;
    v17 = [v14 copy];
    v11 = [NSError errorWithDomain:v16 code:v10 userInfo:v17];
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)finishLibrarySync
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SHMediaLibraryController *)self syncID];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Media Library finished syncing. Sync ID: %@", &v5, 0xCu);
  }

  [(SHMediaLibraryController *)self setSyncID:0];
  [(SHMediaLibraryController *)self setCurrentContext:0];
  [(SHMediaLibraryController *)self setCurrentSnapshot:0];
}

- (void)failedToSyncContext:(id)a3
{
  v4 = SHMediaLibraryErrorDomain;
  v10 = NSDebugDescriptionErrorKey;
  v11 = @"Failed to synchronize library. Try again later.";
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError errorWithDomain:v4 code:500 userInfo:v6];

  v8 = [v5 snapshot];

  v9 = [v8 allItemIdentifiers];
  [(SHMediaLibraryController *)self handleLibraryError:v7 failedItemIdentifiers:v9];

  [(SHMediaLibraryController *)self finishLibrarySync];
}

- (void)removeInvalidChangesFromSnapshot:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021BB4;
  v10[3] = &unk_10007D7C8;
  objc_copyWeak(&v11, &location);
  v5 = [NSPredicate predicateWithBlock:v10];
  v6 = [v4 filteredSnapshotUsingPredicate:v5];
  if ([v6 hasChanges])
  {
    v13 = NSDebugDescriptionErrorKey;
    v14 = @"Items with invalid Shazam IDs are not supported.";
    v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [NSError errorWithDomain:SHMediaLibraryErrorDomain code:500 userInfo:v7];

    v9 = [v6 allItemIdentifiers];
    [(SHMediaLibraryController *)self handleLibraryError:v8 failedItemIdentifiers:v9];
  }

  [v4 removeSnapshot:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)libraryDataStore:(id)a3 didUpdateWithChanges:(id)a4
{
  v5 = a4;
  v6 = [(SHMediaLibraryController *)self currentSnapshot];
  [v6 addChanges:v5];
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
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