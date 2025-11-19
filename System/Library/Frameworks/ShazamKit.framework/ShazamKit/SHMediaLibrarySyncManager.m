@interface SHMediaLibrarySyncManager
- (NSUUID)taskID;
- (NSUUID)workerID;
- (SHMediaLibrarySyncDelegate)delegate;
- (SHMediaLibrarySyncManager)initWithClient:(id)a3 completionHandler:(id)a4;
- (SHWorkerDelegate)workerDelegate;
- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4;
- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5;
- (void)_libraryDidCompleteSync:(id)a3;
- (void)_libraryWillBeginSync:(id)a3;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4 controller:(id)a5;
- (void)finishSyncing;
- (void)shutdownWorker;
- (void)updateSnapshotWithAttribution:(id)a3;
@end

@implementation SHMediaLibrarySyncManager

- (SHMediaLibrarySyncManager)initWithClient:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = objc_retainBlock(a4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v15.receiver = self;
  v15.super_class = SHMediaLibrarySyncManager;
  v10 = [(SHMediaLibrarySyncManager *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_client, a3);
    v12 = objc_alloc_init(NSLock);
    syncCompletionLock = v11->_syncCompletionLock;
    v11->_syncCompletionLock = v12;
  }

  return v11;
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHMediaLibrarySyncManager *)self client];
  v9 = [v8 type];

  if (!v9)
  {
    v32 = NSDebugDescriptionErrorKey;
    v33 = @"Invalid client Bundle ID or Team ID";
    v23 = &v33;
    v24 = &v32;
LABEL_9:
    v26 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1];
    v27 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v26];

    v28 = [(SHMediaLibrarySyncManager *)self delegate];
    v29 = [v6 allItemIdentifiers];
    [v28 _library:self didProduceError:v27 failedItemIdentifiers:v29];

    v30 = [(SHMediaLibrarySyncManager *)self completionHandler];
    v30[2]();

    goto LABEL_10;
  }

  if (v9 == 2)
  {
    v10 = [(SHMediaLibrarySyncManager *)self client];
    v11 = [v10 credentials];
    v12 = [v11 attribution];
    v13 = [v12 containingAppBundleIdentifier];
    v14 = [v6 validateWithBundleIdentifier:v13];

    if ((v14 & 1) == 0)
    {
      v25 = sh_log_object();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to synchronize library, snapshot contains invalid changes", v31, 2u);
      }

      v34 = NSDebugDescriptionErrorKey;
      v35 = @"No permisison to sync media library changes";
      v23 = &v35;
      v24 = &v34;
      goto LABEL_9;
    }
  }

  v15 = [SHMediaLibraryController alloc];
  v16 = [(SHMediaLibrarySyncManager *)self client];
  v17 = [v16 credentials];
  v18 = [v17 attribution];
  v19 = [v18 containingAppBundleIdentifier];
  v20 = [(SHMediaLibrarySyncManager *)self client];
  v21 = [v20 credentials];
  v22 = -[SHMediaLibraryController initWithBundleIdentifier:clientType:](v15, "initWithBundleIdentifier:clientType:", v19, [v21 clientType]);

  [(SHMediaLibrarySyncManager *)self _synchronizeSnapshot:v6 startCondition:v7 controller:v22];
LABEL_10:
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4 controller:(id)a5
{
  objc_storeStrong(&self->_controller, a5);
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [(SHMediaLibrarySyncManager *)self updateSnapshotWithAttribution:v11];
  v12 = [SHMediaLibraryContext alloc];

  v14 = [(SHMediaLibraryContext *)v12 initWithSnapshot:v11 startCondition:v10];
  [(SHMediaLibraryContext *)v14 setDelegate:self];
  v13 = [(SHMediaLibrarySyncManager *)self controller];
  [v13 synchronizeWithContext:v14];
}

- (void)_libraryWillBeginSync:(id)a3
{
  v4 = [(SHMediaLibrarySyncManager *)self delegate];
  [v4 _libraryWillBeginSync:self];
}

- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(SHMediaLibrarySyncManager *)self client];
  v8 = [v7 type];

  if (v8 == 2)
  {
    v10 = [(SHMediaLibrarySyncManager *)self client];
    v11 = [v10 credentials];
    v12 = [v11 attribution];
    v13 = [v12 containingAppBundleIdentifier];
    v9 = [SHMediaLibrarySnapshot remapSnapshot:v6 withBundleIdentifier:v13];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_6:
    if ([v9 hasChanges])
    {
      v14 = +[NSDistributedNotificationCenter defaultCenter];
      [v14 postNotificationName:SHMediaLibrarySyncDidChangeNotification object:0];

      v15 = [(SHMediaLibrarySyncManager *)self delegate];
      [v15 _library:v16 didChangeWithSnapshot:v9];
    }

    goto LABEL_9;
  }

  if (v8 != 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = [v6 copy];
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_9:
}

- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(SHMediaLibrarySyncManager *)self client];
  v9 = [v8 type];

  if (v9 == 1 || v9 == 2 && [v13 sh_isMediaLibraryPublicError])
  {
    v10 = [SHError remapErrorToClientError:v13];
    if (v10)
    {
      v11 = v10;
      v12 = [(SHMediaLibrarySyncManager *)self delegate];
      [v12 _library:self didProduceError:v11 failedItemIdentifiers:v7];
    }
  }
}

- (void)_libraryDidCompleteSync:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibrarySyncManager *)self delegate];
  [v5 _libraryDidCompleteSync:self];

  v6 = v4;
  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SHMediaLibrarySyncManager *)self completionHandler];
    v9 = objc_retainBlock(v8);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling completion handler %@ on library controller %@", &v10, 0x16u);
  }

  [(SHMediaLibrarySyncManager *)self finishSyncing];
  [(SHMediaLibrarySyncManager *)self shutdownWorker];
}

- (void)finishSyncing
{
  v3 = [(SHMediaLibrarySyncManager *)self syncCompletionLock];
  [v3 lock];

  v4 = [(SHMediaLibrarySyncManager *)self completionHandler];

  if (v4)
  {
    v5 = [(SHMediaLibrarySyncManager *)self completionHandler];
    v5[2]();

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  v7 = [(SHMediaLibrarySyncManager *)self syncCompletionLock];
  [v7 unlock];
}

- (void)shutdownWorker
{
  controller = self->_controller;
  self->_controller = 0;

  v4 = [(SHMediaLibrarySyncManager *)self workerDelegate];
  [v4 finishedWorker:self];

  [(SHMediaLibrarySyncManager *)self finishSyncing];
}

- (void)updateSnapshotWithAttribution:(id)a3
{
  v3 = a3;
  v4 = [v3 changes];
  v5 = [v4 count];

  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = v3;
    v6 = [v3 changes];
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = *v28;
    v10 = &cblas_sasum_NEWLAPACK_ptr;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 libraryItem];
        v14 = v10[269];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v12 changeType];

          if (v15 == 3)
          {
            continue;
          }

          v13 = [v12 libraryItem];
          v16 = [v13 providerIdentifier];

          if (!v16)
          {
            v17 = [(SHMediaLibrarySyncManager *)self client];
            v18 = [v17 credentials];
            v19 = [v18 attribution];
            v20 = [v19 containingAppBundleIdentifier];
            [v13 setProviderIdentifier:v20];

            v10 = &cblas_sasum_NEWLAPACK_ptr;
            v21 = [(SHMediaLibrarySyncManager *)self client];
            v22 = [v21 credentials];
            v23 = [v22 attribution];
            v24 = [v23 productName];
            [v13 setProviderName:v24];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v8)
      {
LABEL_14:

        v3 = v25;
        break;
      }
    }
  }
}

- (NSUUID)workerID
{
  workerID = self->_workerID;
  if (!workerID)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_workerID;
    self->_workerID = v4;

    workerID = self->_workerID;
  }

  return workerID;
}

- (NSUUID)taskID
{
  taskID = self->_taskID;
  if (!taskID)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_taskID;
    self->_taskID = v4;

    taskID = self->_taskID;
  }

  return taskID;
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHWorkerDelegate)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

@end