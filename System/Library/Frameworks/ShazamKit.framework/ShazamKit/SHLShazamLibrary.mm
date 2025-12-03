@interface SHLShazamLibrary
+ (SHLShazamLibrary)defaultLibrary;
- (SHLShazamLibrary)initWithScope:(int64_t)scope callingProcessIdentifier:(id)identifier;
- (SHLShazamLibraryDelegate)delegate;
- (id)fetchTaskConditionFromStartCondition:(id)condition;
- (id)newFetchTaskWithStartCondition:(id)condition;
- (id)newModifyTaskWithChanges:(id)changes startCondition:(id)condition;
- (id)taskWithFailedItemsAndCurrentChanges:(id)changes;
- (void)clearCachedSyncStatus;
- (void)finishSession:(id)session;
- (void)migrateCacheIfNeeded;
- (void)retryFailedTasks:(id)tasks;
- (void)session:(id)session task:(id)task didDeleteItemsWithIdentifiers:(id)identifiers;
- (void)session:(id)session task:(id)task didFetchDeletedItemsWithIdentifiers:(id)identifiers;
- (void)session:(id)session task:(id)task didFetchGroups:(id)groups;
- (void)session:(id)session task:(id)task didFetchTracks:(id)tracks;
- (void)session:(id)session task:(id)task didModifyGroups:(id)groups;
- (void)session:(id)session task:(id)task didModifyTracks:(id)tracks;
- (void)session:(id)session task:(id)task didProduceOutcome:(id)outcome;
- (void)synchronizeChanges:(id)changes startCondition:(id)condition;
- (void)synchronizeWithStartCondition:(id)condition;
- (void)updateProgressWithTask:(id)task;
@end

@implementation SHLShazamLibrary

- (SHLShazamLibrary)initWithScope:(int64_t)scope callingProcessIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = SHLShazamLibrary;
  v7 = [(SHLShazamLibrary *)&v21 init];
  if (v7)
  {
    v8 = [SHLSyncSessionConfiguration alloc];
    v9 = +[NSUUID UUID];
    v10 = [(SHLSyncSessionConfiguration *)v8 initWithType:0 scope:scope callingProcessIdentifier:identifierCopy sessionIdentifier:v9];
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

- (void)synchronizeWithStartCondition:(id)condition
{
  conditionCopy = condition;
  v5 = objc_alloc_init(SHLLibraryChangeset);
  [(SHLShazamLibrary *)self synchronizeChanges:v5 startCondition:conditionCopy];
}

- (void)synchronizeChanges:(id)changes startCondition:(id)condition
{
  changesCopy = changes;
  conditionCopy = condition;
  v8 = sub_1000317DC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = conditionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync started with startCondition: %{public}@", buf, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 libraryWillBeginSync:self withStartCondition:conditionCopy];
  }

  syncSession = [(SHLShazamLibrary *)self syncSession];
  v39 = 0;
  v13 = [syncSession startTransactionWithError:&v39];
  v14 = v39;

  if (v13)
  {
    if ([(SHLShazamLibrary *)self shouldPerformFetch])
    {
      v15 = [(SHLShazamLibrary *)self newFetchTaskWithStartCondition:conditionCopy];
      [(SHLShazamLibrary *)self updateProgressWithTask:v15];
      syncSession2 = [(SHLShazamLibrary *)self syncSession];
      [syncSession2 executeTask:v15];
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    delegate8 = [(SHLShazamLibrary *)self newModifyTaskWithChanges:changesCopy startCondition:conditionCopy];
    v18 = [delegate8 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
            objc_enumerationMutation(delegate8);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          [(SHLShazamLibrary *)self updateProgressWithTask:v22, v35];
          syncSession3 = [(SHLShazamLibrary *)self syncSession];
          [syncSession3 executeTask:v22];
        }

        v19 = [delegate8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    if (!-[SHLShazamLibrary shouldPerformFetch](self, "shouldPerformFetch") && ![delegate8 count])
    {
      syncProgress = [(SHLShazamLibrary *)self syncProgress];
      [syncProgress shl_markIndeterminate];

      syncSession4 = [(SHLShazamLibrary *)self syncSession];
      [syncSession4 commitTransactionWithError:0];

      delegate3 = [(SHLShazamLibrary *)self delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        delegate4 = [(SHLShazamLibrary *)self delegate];
        [delegate4 library:self didCompleteSyncWithPendingBatchChanges:0 completionHandler:&stru_10007DD98];
      }
    }

    goto LABEL_24;
  }

  if (v14)
  {
    delegate5 = [(SHLShazamLibrary *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = [SHLError errorWithCode:5 underlyingError:v14];
      delegate6 = [(SHLShazamLibrary *)self delegate];
      [delegate6 library:self didProduceError:v31 withFailedItemIdentifiers:&__NSArray0__struct syncAction:1];
    }
  }

  delegate7 = [(SHLShazamLibrary *)self delegate];
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    delegate8 = [(SHLShazamLibrary *)self delegate];
    [delegate8 library:self didCompleteSyncWithPendingBatchChanges:0 completionHandler:&stru_10007DD78];
LABEL_24:
  }
}

- (void)clearCachedSyncStatus
{
  store = [(SHLShazamLibrary *)self store];
  currentCache = [store currentCache];
  [currentCache resetWithError:0];
}

- (void)session:(id)session task:(id)task didProduceOutcome:(id)outcome
{
  sessionCopy = session;
  taskCopy = task;
  outcomeCopy = outcome;
  error = [outcomeCopy error];
  userInfo = [error userInfo];
  v12 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  tasksToRetry = [outcomeCopy tasksToRetry];
  if ([tasksToRetry count])
  {
    v14 = 0;
  }

  else
  {
    error2 = [outcomeCopy error];
    v14 = error2 == 0;
  }

  if ([SHLError canRetryForError:v12])
  {
    tasksToRetry2 = [outcomeCopy tasksToRetry];
    if ([tasksToRetry2 count])
    {
      v17 = [taskCopy retryCount] < 5;
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
      identifier = [taskCopy identifier];
      error3 = [outcomeCopy error];
      *buf = 138543874;
      v55 = v20;
      v56 = 2112;
      v57 = identifier;
      v58 = 2112;
      v59 = error3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to complete <task: %{public}@ %@> and not retrying due to <error: %@>", buf, 0x20u);
    }

    delegate = [(SHLShazamLibrary *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate2 = [(SHLShazamLibrary *)self delegate];
      error4 = [outcomeCopy error];
      failedItemIdentifiers = [outcomeCopy failedItemIdentifiers];
      [delegate2 library:self didProduceError:error4 withFailedItemIdentifiers:failedItemIdentifiers syncAction:{-[SHLShazamLibrary syncActionForTaskType:](self, "syncActionForTaskType:", objc_msgSend(taskCopy, "type"))}];
    }
  }

  if ([taskCopy type] == 1)
  {
    syncStartCondition = [taskCopy syncStartCondition];
    v29 = syncStartCondition == @"InitialFetch";

    if (v29)
    {
      [(SHLShazamLibrary *)self setShouldMarkInitialFetchAsComplete:1];
    }

    if ([outcomeCopy hasPendingZoneBatchChanges])
    {
      taskIdentifiersWithPendingBatchChanges = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
      v31 = taskIdentifiersWithPendingBatchChanges == 0;

      if (v31)
      {
        v32 = +[NSMutableSet set];
        [(SHLShazamLibrary *)self setTaskIdentifiersWithPendingBatchChanges:v32];
      }

      v33 = sub_1000317DC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [taskCopy identifier];
        *buf = 138412290;
        v55 = identifier2;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Fetch <task: %@> has pending batch zone changes.", buf, 0xCu);
      }

      taskIdentifiersWithPendingBatchChanges2 = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
      identifier3 = [taskCopy identifier];
      [taskIdentifiersWithPendingBatchChanges2 addObject:identifier3];
    }
  }

  syncProgress = [(SHLShazamLibrary *)self syncProgress];
  isFinished = [syncProgress isFinished];

  if (isFinished)
  {
    v39 = sub_1000317DC();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      identifier4 = [taskCopy identifier];
      *buf = 138543618;
      v55 = v41;
      v56 = 2112;
      v57 = identifier4;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Finished <task: %{public}@ %@> and sync complete", buf, 0x16u);
    }

    [(SHLShazamLibrary *)self finishSession:taskCopy];
  }

  else if (v14 || !v17)
  {
    v43 = sub_1000317DC();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      identifier5 = [taskCopy identifier];
      *buf = 138543618;
      v55 = v45;
      v56 = 2112;
      v57 = identifier5;
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
    v52 = outcomeCopy;
    v48 = [(SHLTaskRetryContext *)v47 initWithOutcome:v52 retryBlock:v51];
    retryHandler = [(SHLShazamLibrary *)self retryHandler];
    [retryHandler retryTask:taskCopy withContext:v48];

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);
  }
}

- (void)finishSession:(id)session
{
  sessionCopy = session;
  syncProgress = [(SHLShazamLibrary *)self syncProgress];
  [syncProgress shl_markIndeterminate];

  shouldMarkInitialFetchAsComplete = [(SHLShazamLibrary *)self shouldMarkInitialFetchAsComplete];
  [(SHLShazamLibrary *)self setShouldMarkInitialFetchAsComplete:0];
  taskIdentifiersWithPendingBatchChanges = [(SHLShazamLibrary *)self taskIdentifiersWithPendingBatchChanges];
  v8 = [taskIdentifiersWithPendingBatchChanges count];

  [(SHLShazamLibrary *)self setTaskIdentifiersWithPendingBatchChanges:0];
  delegate = [(SHLShazamLibrary *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100039994;
    v15[3] = &unk_10007DDC0;
    v18 = shouldMarkInitialFetchAsComplete;
    v16 = sessionCopy;
    selfCopy = self;
    [delegate2 library:self didCompleteSyncWithPendingBatchChanges:v8 != 0 completionHandler:v15];
  }

  else
  {
    if (shouldMarkInitialFetchAsComplete)
    {
      store = [(SHLShazamLibrary *)self store];
      currentCache = [store currentCache];
      [currentCache initialFetchCompleted];
    }

    syncSession = [(SHLShazamLibrary *)self syncSession];
    [syncSession commitTransactionWithError:0];
  }
}

- (void)session:(id)session task:(id)task didModifyTracks:(id)tracks
{
  tracksCopy = tracks;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [tracksCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Uploaded %lu modified tracks", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didChangeTracks:tracksCopy syncAction:0];
  }
}

- (void)session:(id)session task:(id)task didModifyGroups:(id)groups
{
  groupsCopy = groups;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [groupsCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Uploaded %lu modified groups", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didChangeGroups:groupsCopy syncAction:0];
  }
}

- (void)session:(id)session task:(id)task didDeleteItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Deleted %lu items", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didDeleteItemsWithIdentifiers:identifiersCopy syncAction:0];
  }
}

- (void)session:(id)session task:(id)task didFetchTracks:(id)tracks
{
  tracksCopy = tracks;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [tracksCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu tracks", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didChangeTracks:tracksCopy syncAction:1];
  }
}

- (void)session:(id)session task:(id)task didFetchGroups:(id)groups
{
  groupsCopy = groups;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [groupsCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu groups", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didChangeGroups:groupsCopy syncAction:1];
  }
}

- (void)session:(id)session task:(id)task didFetchDeletedItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = sub_1000317DC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Fetched %lu deleted items", &v11, 0xCu);
  }

  delegate = [(SHLShazamLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHLShazamLibrary *)self delegate];
    [delegate2 library:self didDeleteItemsWithIdentifiers:identifiersCopy syncAction:1];
  }
}

- (id)newModifyTaskWithChanges:(id)changes startCondition:(id)condition
{
  conditionCopy = condition;
  v7 = [(SHLShazamLibrary *)self taskWithFailedItemsAndCurrentChanges:changes];
  v8 = v7;
  if (v7)
  {
    [v7 setSyncStartCondition:conditionCopy];
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

- (id)newFetchTaskWithStartCondition:(id)condition
{
  conditionCopy = condition;
  v5 = objc_alloc_init(SHLSyncSessionFetchTask);
  v6 = [(SHLShazamLibrary *)self fetchTaskConditionFromStartCondition:conditionCopy];

  [(SHLSyncSessionFetchTask *)v5 setSyncStartCondition:v6];
  syncStartCondition = [(SHLSyncSessionFetchTask *)v5 syncStartCondition];
  LODWORD(conditionCopy) = [syncStartCondition isEqualToString:@"InitialFetch"];

  [(SHLSyncSessionFetchTask *)v5 setFetchType:conditionCopy ^ 1];
  return v5;
}

- (id)fetchTaskConditionFromStartCondition:(id)condition
{
  conditionCopy = condition;
  v5 = conditionCopy;
  if (conditionCopy == @"UserAction")
  {
    store = [(SHLShazamLibrary *)self store];
    currentCache = [store currentCache];
    needsInitialFetch = [currentCache needsInitialFetch];

    v5 = @"UserAction";
    if (needsInitialFetch)
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

- (id)taskWithFailedItemsAndCurrentChanges:(id)changes
{
  changesCopy = changes;
  tracksToAdd = [changesCopy tracksToAdd];
  v43 = [NSMutableSet setWithArray:tracksToAdd];

  trackIDsToDelete = [changesCopy trackIDsToDelete];
  v7 = [NSMutableSet setWithArray:trackIDsToDelete];

  groupsToAdd = [changesCopy groupsToAdd];
  v9 = [NSMutableSet setWithArray:groupsToAdd];

  v42 = changesCopy;
  groupIDsToDelete = [changesCopy groupIDsToDelete];
  v11 = [NSMutableSet setWithArray:groupIDsToDelete];

  store = [(SHLShazamLibrary *)self store];
  currentCache = [store currentCache];
  v14 = [currentCache tasksOfType:1];

  store2 = [(SHLShazamLibrary *)self store];
  currentCache2 = [store2 currentCache];
  [currentCache2 removeAllTasksOfType:1];

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
          tracksToModify = [v23 tracksToModify];
          insertions = [tracksToModify insertions];
          [v43 unionSet:insertions];

          tracksToModify2 = [v23 tracksToModify];
          deletions = [tracksToModify2 deletions];
          [v7 unionSet:deletions];

          groupsToModify = [v23 groupsToModify];
          insertions2 = [groupsToModify insertions];
          [v9 unionSet:insertions2];

          groupsToModify2 = [v23 groupsToModify];

          deletions2 = [groupsToModify2 deletions];
          [v11 unionSet:deletions2];
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
  currentCache = [(SHLLibraryStore *)self->_store currentCache];
  needsMigration = [currentCache needsMigration];

  if (needsMigration)
  {
    v5 = sub_1000317DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current local cache requires migration", buf, 2u);
    }

    currentCache2 = [(SHLLibraryStore *)self->_store currentCache];
    v15 = 0;
    v7 = [currentCache2 migrateWithError:&v15];
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

- (void)updateProgressWithTask:(id)task
{
  taskCopy = task;
  syncProgress = [(SHLShazamLibrary *)self syncProgress];
  totalUnitCount = [syncProgress totalUnitCount];
  progress = [taskCopy progress];
  totalUnitCount2 = [progress totalUnitCount];

  syncProgress2 = [(SHLShazamLibrary *)self syncProgress];
  [syncProgress2 setTotalUnitCount:&totalUnitCount[totalUnitCount2]];

  syncProgress3 = [(SHLShazamLibrary *)self syncProgress];
  progress2 = [taskCopy progress];
  progress3 = [taskCopy progress];

  [syncProgress3 addChild:progress2 withPendingUnitCount:{objc_msgSend(progress3, "totalUnitCount")}];
}

- (void)retryFailedTasks:(id)tasks
{
  tasksCopy = tasks;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [tasksCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(tasksCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setRetryCount:{objc_msgSend(v9, "retryCount") + 1}];
        syncSession = [(SHLShazamLibrary *)self syncSession];
        [syncSession executeTask:v9];
      }

      v6 = [tasksCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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