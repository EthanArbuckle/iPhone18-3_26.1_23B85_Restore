@interface SHMediaLibrarySyncManager
- (NSUUID)taskID;
- (NSUUID)workerID;
- (SHMediaLibrarySyncDelegate)delegate;
- (SHMediaLibrarySyncManager)initWithClient:(id)client completionHandler:(id)handler;
- (SHWorkerDelegate)workerDelegate;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)_libraryDidCompleteSync:(id)sync;
- (void)_libraryWillBeginSync:(id)sync;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition controller:(id)controller;
- (void)finishSyncing;
- (void)shutdownWorker;
- (void)updateSnapshotWithAttribution:(id)attribution;
@end

@implementation SHMediaLibrarySyncManager

- (SHMediaLibrarySyncManager)initWithClient:(id)client completionHandler:(id)handler
{
  clientCopy = client;
  v8 = objc_retainBlock(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v15.receiver = self;
  v15.super_class = SHMediaLibrarySyncManager;
  v10 = [(SHMediaLibrarySyncManager *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_client, client);
    v12 = objc_alloc_init(NSLock);
    syncCompletionLock = v11->_syncCompletionLock;
    v11->_syncCompletionLock = v12;
  }

  return v11;
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  snapshotCopy = snapshot;
  conditionCopy = condition;
  client = [(SHMediaLibrarySyncManager *)self client];
  type = [client type];

  if (!type)
  {
    v32 = NSDebugDescriptionErrorKey;
    v33 = @"Invalid client Bundle ID or Team ID";
    v23 = &v33;
    v24 = &v32;
LABEL_9:
    v26 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1];
    v27 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v26];

    delegate = [(SHMediaLibrarySyncManager *)self delegate];
    allItemIdentifiers = [snapshotCopy allItemIdentifiers];
    [delegate _library:self didProduceError:v27 failedItemIdentifiers:allItemIdentifiers];

    completionHandler = [(SHMediaLibrarySyncManager *)self completionHandler];
    completionHandler[2]();

    goto LABEL_10;
  }

  if (type == 2)
  {
    client2 = [(SHMediaLibrarySyncManager *)self client];
    credentials = [client2 credentials];
    attribution = [credentials attribution];
    containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
    v14 = [snapshotCopy validateWithBundleIdentifier:containingAppBundleIdentifier];

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
  client3 = [(SHMediaLibrarySyncManager *)self client];
  credentials2 = [client3 credentials];
  attribution2 = [credentials2 attribution];
  containingAppBundleIdentifier2 = [attribution2 containingAppBundleIdentifier];
  client4 = [(SHMediaLibrarySyncManager *)self client];
  credentials3 = [client4 credentials];
  v22 = -[SHMediaLibraryController initWithBundleIdentifier:clientType:](v15, "initWithBundleIdentifier:clientType:", containingAppBundleIdentifier2, [credentials3 clientType]);

  [(SHMediaLibrarySyncManager *)self _synchronizeSnapshot:snapshotCopy startCondition:conditionCopy controller:v22];
LABEL_10:
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition controller:(id)controller
{
  objc_storeStrong(&self->_controller, controller);
  controllerCopy = controller;
  conditionCopy = condition;
  snapshotCopy = snapshot;
  [(SHMediaLibrarySyncManager *)self updateSnapshotWithAttribution:snapshotCopy];
  v12 = [SHMediaLibraryContext alloc];

  v14 = [(SHMediaLibraryContext *)v12 initWithSnapshot:snapshotCopy startCondition:conditionCopy];
  [(SHMediaLibraryContext *)v14 setDelegate:self];
  controller = [(SHMediaLibrarySyncManager *)self controller];
  [controller synchronizeWithContext:v14];
}

- (void)_libraryWillBeginSync:(id)sync
{
  delegate = [(SHMediaLibrarySyncManager *)self delegate];
  [delegate _libraryWillBeginSync:self];
}

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  _libraryCopy = _library;
  snapshotCopy = snapshot;
  client = [(SHMediaLibrarySyncManager *)self client];
  type = [client type];

  if (type == 2)
  {
    client2 = [(SHMediaLibrarySyncManager *)self client];
    credentials = [client2 credentials];
    attribution = [credentials attribution];
    containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
    v9 = [SHMediaLibrarySnapshot remapSnapshot:snapshotCopy withBundleIdentifier:containingAppBundleIdentifier];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_6:
    if ([v9 hasChanges])
    {
      v14 = +[NSDistributedNotificationCenter defaultCenter];
      [v14 postNotificationName:SHMediaLibrarySyncDidChangeNotification object:0];

      delegate = [(SHMediaLibrarySyncManager *)self delegate];
      [delegate _library:_libraryCopy didChangeWithSnapshot:v9];
    }

    goto LABEL_9;
  }

  if (type != 1)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = [snapshotCopy copy];
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_9:
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  errorCopy = error;
  identifiersCopy = identifiers;
  client = [(SHMediaLibrarySyncManager *)self client];
  type = [client type];

  if (type == 1 || type == 2 && [errorCopy sh_isMediaLibraryPublicError])
  {
    v10 = [SHError remapErrorToClientError:errorCopy];
    if (v10)
    {
      v11 = v10;
      delegate = [(SHMediaLibrarySyncManager *)self delegate];
      [delegate _library:self didProduceError:v11 failedItemIdentifiers:identifiersCopy];
    }
  }
}

- (void)_libraryDidCompleteSync:(id)sync
{
  syncCopy = sync;
  delegate = [(SHMediaLibrarySyncManager *)self delegate];
  [delegate _libraryDidCompleteSync:self];

  v6 = syncCopy;
  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    completionHandler = [(SHMediaLibrarySyncManager *)self completionHandler];
    v9 = objc_retainBlock(completionHandler);
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
  syncCompletionLock = [(SHMediaLibrarySyncManager *)self syncCompletionLock];
  [syncCompletionLock lock];

  completionHandler = [(SHMediaLibrarySyncManager *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(SHMediaLibrarySyncManager *)self completionHandler];
    completionHandler2[2]();

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  syncCompletionLock2 = [(SHMediaLibrarySyncManager *)self syncCompletionLock];
  [syncCompletionLock2 unlock];
}

- (void)shutdownWorker
{
  controller = self->_controller;
  self->_controller = 0;

  workerDelegate = [(SHMediaLibrarySyncManager *)self workerDelegate];
  [workerDelegate finishedWorker:self];

  [(SHMediaLibrarySyncManager *)self finishSyncing];
}

- (void)updateSnapshotWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  changes = [attributionCopy changes];
  v5 = [changes count];

  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = attributionCopy;
    changes2 = [attributionCopy changes];
    v7 = [changes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(changes2);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        libraryItem = [v12 libraryItem];
        v14 = v10[269];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          changeType = [v12 changeType];

          if (changeType == 3)
          {
            continue;
          }

          libraryItem = [v12 libraryItem];
          providerIdentifier = [libraryItem providerIdentifier];

          if (!providerIdentifier)
          {
            client = [(SHMediaLibrarySyncManager *)self client];
            credentials = [client credentials];
            attribution = [credentials attribution];
            containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
            [libraryItem setProviderIdentifier:containingAppBundleIdentifier];

            v10 = &cblas_sasum_NEWLAPACK_ptr;
            client2 = [(SHMediaLibrarySyncManager *)self client];
            credentials2 = [client2 credentials];
            attribution2 = [credentials2 attribution];
            productName = [attribution2 productName];
            [libraryItem setProviderName:productName];
          }
        }
      }

      v8 = [changes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v8)
      {
LABEL_14:

        attributionCopy = v25;
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