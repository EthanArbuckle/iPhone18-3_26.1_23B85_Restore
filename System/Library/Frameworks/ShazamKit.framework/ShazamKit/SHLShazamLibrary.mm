@interface SHLShazamLibrary
+ (SHLShazamLibrary)defaultLibrary;
- (SHLShazamLibrary)initWithScope:(int64_t)a3 callingProcessIdentifier:(id)a4;
- (SHLShazamLibraryDelegate)delegate;
- (id)fetchTaskConditionFromStartCondition:(id)a3;
- (id)newFetchTaskWithStartCondition:(id)a3;
- (id)newModifyTaskWithChanges:(id)a3 startCondition:(id)a4;
- (id)taskWithFailedItemsAndCurrentChanges:(id)a3;
- (void)clearCachedSyncStatus;
- (void)finishSession:(id)a3;
- (void)migrateCacheIfNeeded;
- (void)retryFailedTasks:(id)a3;
- (void)session:(id)a3 task:(id)a4 didDeleteItemsWithIdentifiers:(id)a5;
- (void)session:(id)a3 task:(id)a4 didFetchDeletedItemsWithIdentifiers:(id)a5;
- (void)session:(id)a3 task:(id)a4 didFetchGroups:(id)a5;
- (void)session:(id)a3 task:(id)a4 didFetchTracks:(id)a5;
- (void)session:(id)a3 task:(id)a4 didModifyGroups:(id)a5;
- (void)session:(id)a3 task:(id)a4 didModifyTracks:(id)a5;
- (void)session:(id)a3 task:(id)a4 didProduceOutcome:(id)a5;
- (void)synchronizeChanges:(id)a3 startCondition:(id)a4;
- (void)synchronizeWithStartCondition:(id)a3;
- (void)updateProgressWithTask:(id)a3;
@end

@implementation SHLShazamLibrary

- (SHLShazamLibrary)initWithScope:(int64_t)a3 callingProcessIdentifier:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = SHLShazamLibrary;
  v7 = [(SHLShazamLibrary *)&v21 init];
  if (v7)
  {
    v8 = [SHLSyncSessionConfiguration alloc];
    v9 = +[NSUUID UUID];
    v10 = [(SHLSyncSessionConfiguration *)v8 initWithType:0 scope:a3 callingProcessIdentifier:v6 sessionIdentifier:v9];
    configuration = v7->_configuration;
    v7->_configuration = v10;

    v12 = [[SHLLibraryStore alloc] initWithConfiguration:v7->_configuration];
    store = v7->_store;
    v7->_store = v12;

    [(SHLShazamLibrary *)v7 migrateCacheIfNeeded];
    v14 = [NSProgress progressWithTotalUnitCount:0];
    syncProgress = v7->_syncProgress;
    v7->_syncProgress = v14;

    v7->_shouldPerformFetch = 1;
    v16 = [[SHLSyncSession alloc] initWithConfiguration:v7->_configuration];
    syncSession = v7->_syncSession;
    v7->_syncSession = v16;

    [(SHLSyncSession *)v7->_syncSession setDelegate:v7];
    v18 = objc_alloc_init(SHLFailedTaskRetryHandler);
    retryHandler = v7->_retryHandler;
    v7->_retryHandler = v18;
  }

  return v7;
}

- (void)synchronizeWithStartCondition:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SHLLibraryChangeset);
  [(SHLShazamLibrary *)self synchronizeChanges:v5 startCondition:v4];
}

- (void)synchronizeChanges:(id)a3 startCondition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000317DC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync started with startCondition: %{public}@", buf, 0xCu);
  }

  v9 = [(SHLShazamLibrary *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SHLShazamLibrary *)self delegate];
    [v11 libraryWillBeginSync:self withStartCondition:v7];
  }

  v12 = [(SHLShazamLibrary *)self syncSession];
  v39 = 0;
  v13 = [v12 startTransactionWithError:&v39];
  v14 = v39;

  if (v13)
  {
    if ([(SHLShazamLibrary *)self shouldPerformFetch])
    {
      v15 = [(SHLShazamLibrary *)self newFetchTaskWithStartCondition:v7];
      [(SHLShazamLibrary *)self updateProgressWithTask:v15];
      v16 = [(SHLShazamLibrary *)self syncSession];
      [v16 executeTask:v15];
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = [(SHLShazamLibrary *)self newModifyTaskWithChanges:v6 startCondition:v7];
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          [(SHLShazamLibrary *)self updateProgressWithTask:v22, v35];
          v23 = [(SHLShazamLibrary *)self syncSession];
          [v23 executeTask:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    if (!-[SHLShazamLibrary shouldPerformFetch](self, "shouldPerformFetch") && ![v17 count])
    {
      v24 = [(SHLShazamLibrary *)self syncProgress];
      [v24 shl_markIndeterminate];

      v25 = [(SHLShazamLibrary *)self syncSession];
      [v25 commitTransactionWithError:0];

      v26 = [(SHLShazamLibrary *)self delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        v28 = [(SHLShazamLibrary *)self delegate];
        [v28 library:self didCompleteSyncWithPendingBatchChanges:0 completionHandler:&stru_10007DD98];
      }
    }

    goto LABEL_24;
  }

  if (v14)
  {
    v29 = [(SHLShazamLibrary *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = [SHLError errorWithCode:5 underlyingError:v14];
      v32 = [(SHLShazamLibrary *)self delegate];
      [v32 library:self didProduceError:v31 withFailedItemIdentifiers:&__NSArray0__struct syncAction:1];
    }
  }

  v33 = [(SHLShazamLibrary *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v17 = [(SHLShazamLibrary *)self delegate];
    [v17 library:self didCompleteSyncWithPendingBatchChanges:0 completionHandler:&stru_10007DD78];
LABEL_24:
  }
}

- (void)clearCachedSyncStatus
{
  v3 = [(SHLShazamLibrary *)self store];
  v2 = [v3 currentCache];
  [v2 resetWithError:0];
}

- (void)session:(id)a3 task:(id)a4 didProduceOutcome:(id)a5
{
  v50 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 error];
  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v13 = [v9 tasksToRetry];
  if ([v13 count])
  {
    v14 = 0;
  }

  else
  {
    v15 = [v9 error];
    v14 = v15 == 0;
  }

  if ([SHLError canRetryForError:v12])
  {
    v16 = [v9 tasksToRetry];
    if ([v16 count])
    {
      v17 = [v8 retryCount] < 5;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (!v14 && !v17)
  {
    v18 = sub_1000317DC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v8 identifier];
      v22 = [v9 error];
      *buf = 138543874;
      v55 = v20;
      v56 = 2112;
      v57 = v21;
      v58 = 2112;
      v59 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to complete <task: %{public}@ %@> and not retrying due to <error: %@>", buf, 0x20u);
    }

    v23 = [(SHLShazamLibrary *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(SHLShazamLibrary *)self delegate];
      v26 = [v9 error];
      v27 = [v9 failedItemIdentifiers];
      [v25 library:self didProduceError:v26 withFailedItemIdentifiers:v27 syncAction:{-[SHLShazamLibrary syncActionForTaskType:](self, "syncActionForTaskType:", objc_msgSend(v8, "type"))}];
    }
  }

  if ([v8 type] == 1)
  {
    v28 = [v8 syncStartCondition];
    v29 = v28 == @"InitialFetch";

    if (v29)
    {
      [(SHLShazamLibrary *)self setShouldMarkInitialFetchAsComplete:1];
    }

    if ([v9 hasPendingZoneBatchChanges])
    {
      v30 = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
      v31 = v30 == 0;

      if (v31)
      {
        v32 = +[NSMutableSet set];
        [(SHLShazamLibrary *)self setTaskIdentifiersWithPendingBatchChanges:v32];
      }

      v33 = sub_1000317DC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v8 identifier];
        *buf = 138412290;
        v55 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Fetch <task: %@> has pending batch zone changes.", buf, 0xCu);
      }

      v35 = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
      v36 = [v8 identifier];
      [v35 addObject:v36];
    }
  }

  v37 = [(SHLShazamLibrary *)self syncProgress];
  v38 = [v37 isFinished];

  if (v38)
  {
    v39 = sub_1000317DC();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = [v8 identifier];
      *buf = 138543618;
      v55 = v41;
      v56 = 2112;
      v57 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Finished <task: %{public}@ %@> and sync complete", buf, 0x16u);
    }

    [(SHLShazamLibrary *)self finishSession:v8];
  }

  else if (v14 || !v17)
  {
    v43 = sub_1000317DC();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v8 identifier];
      *buf = 138543618;
      v55 = v45;
      v56 = 2112;
      v57 = v46;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Finished <task: %{public}@ %@>, still syncing", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v47 = [SHLTaskRetryContext alloc];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100039794;
    v51[3] = &unk_10007CDF0;
    objc_copyWeak(&v53, buf);
    v52 = v9;
    v48 = [(SHLTaskRetryContext *)v47 initWithOutcome:v52 retryBlock:v51];
    v49 = [(SHLShazamLibrary *)self retryHandler];
    [v49 retryTask:v8 withContext:v48];

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);
  }
}

- (void)finishSession:(id)a3
{
  v4 = a3;
  v5 = [(SHLShazamLibrary *)self syncProgress];
  [v5 shl_markIndeterminate];

  v6 = [(SHLShazamLibrary *)self shouldMarkInitialFetchAsComplete];
  [(SHLShazamLibrary *)self setShouldMarkInitialFetchAsComplete:0];
  v7 = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
  v8 = [v7 count];

  [(SHLShazamLibrary *)self setTaskIdentifiersWithPendingBatchChanges:0];
  v9 = [(SHLShazamLibrary *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SHLShazamLibrary *)self delegate];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100039994;
    v15[3] = &unk_10007DDC0;
    v18 = v6;
    v16 = v4;
    v17 = self;
    [v11 library:self didCompleteSyncWithPendingBatchChanges:v8 != 0 completionHandler:v15];
  }

  else
  {
    if (v6)
    {
      v12 = [(SHLShazamLibrary *)self store];
      v13 = [v12 currentCache];
      [v13 initialFetchCompleted];
    }

    v14 = [(SHLShazamLibrary *)self syncSession];
    [v14 commitTransactionWithError:0];
  }
}

- (void)session:(id)a3 task:(id)a4 didModifyTracks:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Uploaded %lu modified tracks", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didChangeTracks:v6 syncAction:0];
  }
}

- (void)session:(id)a3 task:(id)a4 didModifyGroups:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Uploaded %lu modified groups", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didChangeGroups:v6 syncAction:0];
  }
}

- (void)session:(id)a3 task:(id)a4 didDeleteItemsWithIdentifiers:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Deleted %lu items", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didDeleteItemsWithIdentifiers:v6 syncAction:0];
  }
}

- (void)session:(id)a3 task:(id)a4 didFetchTracks:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu tracks", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didChangeTracks:v6 syncAction:1];
  }
}

- (void)session:(id)a3 task:(id)a4 didFetchGroups:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu groups", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didChangeGroups:v6 syncAction:1];
  }
}

- (void)session:(id)a3 task:(id)a4 didFetchDeletedItemsWithIdentifiers:(id)a5
{
  v6 = a5;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu deleted items", &v11, 0xCu);
  }

  v8 = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHLShazamLibrary *)self delegate];
    [v10 library:self didDeleteItemsWithIdentifiers:v6 syncAction:1];
  }
}

- (id)newModifyTaskWithChanges:(id)a3 startCondition:(id)a4
{
  v6 = a4;
  v7 = [(SHLShazamLibrary *)self taskWithFailedItemsAndCurrentChanges:a3];
  v8 = v7;
  if (v7)
  {
    [v7 setSyncStartCondition:v6];
    if ([v8 size] <= 200)
    {
      v12 = v8;
      v9 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v9 = [v8 subdivideTaskIntoBatchesOfSize:?];
    }

    v10 = v9;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)newFetchTaskWithStartCondition:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SHLSyncSessionFetchTask);
  v6 = [(SHLShazamLibrary *)self fetchTaskConditionFromStartCondition:v4];

  [(SHLSyncSessionFetchTask *)v5 setSyncStartCondition:v6];
  v7 = [(SHLSyncSessionFetchTask *)v5 syncStartCondition];
  LODWORD(v4) = [v7 isEqualToString:@"InitialFetch"];

  [(SHLSyncSessionFetchTask *)v5 setFetchType:v4 ^ 1];
  return v5;
}

- (id)fetchTaskConditionFromStartCondition:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"UserAction")
  {
    v6 = [(SHLShazamLibrary *)self store];
    v7 = [v6 currentCache];
    v8 = [v7 needsInitialFetch];

    v5 = @"UserAction";
    if (v8)
    {
      v9 = sub_1000317DC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = @"UserAction";
        v13 = 2112;
        v14 = @"InitialFetch";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Library needs initial fetch. Overriding %@ to %@", &v11, 0x16u);
      }

      v5 = @"InitialFetch";
    }
  }

  return v5;
}

- (id)taskWithFailedItemsAndCurrentChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 tracksToAdd];
  v43 = [NSMutableSet setWithArray:v5];

  v6 = [v4 trackIDsToDelete];
  v7 = [NSMutableSet setWithArray:v6];

  v8 = [v4 groupsToAdd];
  v9 = [NSMutableSet setWithArray:v8];

  v42 = v4;
  v10 = [v4 groupIDsToDelete];
  v11 = [NSMutableSet setWithArray:v10];

  v12 = [(SHLShazamLibrary *)self store];
  v13 = [v12 currentCache];
  v14 = [v13 tasksOfType:1];

  v15 = [(SHLShazamLibrary *)self store];
  v16 = [v15 currentCache];
  [v16 removeAllTasksOfType:1];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        if (![v22 type])
        {
          v23 = v22;
          v24 = [v23 tracksToModify];
          v25 = [v24 insertions];
          [v43 unionSet:v25];

          v26 = [v23 tracksToModify];
          v27 = [v26 deletions];
          [v7 unionSet:v27];

          v28 = [v23 groupsToModify];
          v29 = [v28 insertions];
          [v9 unionSet:v29];

          v30 = [v23 groupsToModify];

          v31 = [v30 deletions];
          [v11 unionSet:v31];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v19);
  }

  v32 = [SHLLibraryBatch alloc];
  v33 = [v43 copy];
  v34 = [v7 copy];
  v35 = [(SHLLibraryBatch *)v32 initWithInsertions:v33 deletions:v34];

  v36 = [SHLLibraryBatch alloc];
  v37 = [v9 copy];
  v38 = [v11 copy];
  v39 = [(SHLLibraryBatch *)v36 initWithInsertions:v37 deletions:v38];

  if ([(SHLLibraryBatch *)v35 hasChanges]|| [(SHLLibraryBatch *)v39 hasChanges])
  {
    v40 = [[SHLSyncSessionModifyTask alloc] initWithTracksToModify:v35 groupsToModify:v39];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (void)migrateCacheIfNeeded
{
  v3 = [(SHLLibraryStore *)self->_store currentCache];
  v4 = [v3 needsMigration];

  if (v4)
  {
    v5 = sub_1000317DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current local cache requires migration", buf, 2u);
    }

    v6 = [(SHLLibraryStore *)self->_store currentCache];
    v15 = 0;
    v7 = [v6 migrateWithError:&v15];
    v8 = v15;

    v9 = sub_1000317DC();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Successfully migrated local cache";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      v11 = "Failed to migrate current local cache %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
      goto LABEL_9;
    }
  }
}

- (void)updateProgressWithTask:(id)a3
{
  v4 = a3;
  v5 = [(SHLShazamLibrary *)self syncProgress];
  v6 = [v5 totalUnitCount];
  v7 = [v4 progress];
  v8 = [v7 totalUnitCount];

  v9 = [(SHLShazamLibrary *)self syncProgress];
  [v9 setTotalUnitCount:&v6[v8]];

  v12 = [(SHLShazamLibrary *)self syncProgress];
  v10 = [v4 progress];
  v11 = [v4 progress];

  [v12 addChild:v10 withPendingUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
}

- (void)retryFailedTasks:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setRetryCount:{objc_msgSend(v9, "retryCount") + 1}];
        v10 = [(SHLShazamLibrary *)self syncSession];
        [v10 executeTask:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

+ (SHLShazamLibrary)defaultLibrary
{
  if (qword_1000982F8 != -1)
  {
    sub_10003AEFC();
  }

  v3 = qword_1000982F0;

  return v3;
}

- (SHLShazamLibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end