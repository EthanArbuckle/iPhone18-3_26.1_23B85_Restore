@interface _SHMediaLibrary
+ (_SHMediaLibrary)_defaultLibrary;
+ (id)_localizedAttributionForLibraryItem:(id)item;
+ (id)sh_uiServerConnection;
+ (void)_presentMediaLibraryWithCompletionHandler:(id)handler;
- (SHMediaLibrarySyncDelegate)delegate;
- (_SHMediaLibrary)init;
- (void)_addMediaItems:(id)items completionHandler:(id)handler;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)_libraryDidCompleteSync:(id)sync;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_libraryInfoWithTask:(id)task completionHandler:(id)handler;
- (void)_libraryWillBeginSync:(id)sync;
- (void)_queryLibraryWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_queryLibraryWithTask:(id)task parameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronize;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler;
- (void)_synchronizeTask:(id)task snapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler;
- (void)addInflightTask:(id)task;
- (void)librarySyncDidChange:(id)change;
- (void)removeInflightTask:(id)task;
@end

@implementation _SHMediaLibrary

+ (void)_presentMediaLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sh_uiServerConnection = [self sh_uiServerConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___SHMediaLibrary_Presentation___presentMediaLibraryWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788F7C10;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [sh_uiServerConnection presentMediaLibraryWithCompletionHandler:v7];
}

+ (id)sh_uiServerConnection
{
  if (sh_uiServerConnection_onceToken != -1)
  {
    +[_SHMediaLibrary(Presentation) sh_uiServerConnection];
  }

  v3 = sh_uiServerConnection_serverConnection;

  return v3;
}

+ (_SHMediaLibrary)_defaultLibrary
{
  if (_defaultLibrary_onceToken != -1)
  {
    +[_SHMediaLibrary _defaultLibrary];
  }

  v3 = _defaultLibrary_library;

  return v3;
}

- (_SHMediaLibrary)init
{
  v8.receiver = self;
  v8.super_class = _SHMediaLibrary;
  v2 = [(_SHMediaLibrary *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_inflightTasksLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    inflightTasks = v3->_inflightTasks;
    v3->_inflightTasks = dictionary;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_librarySyncDidChange_ name:@"SHMediaLibrarySyncDidChangeNotification" object:0];
  }

  return v3;
}

- (void)_addMediaItems:(id)items completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([itemsCopy count])
    {
      selfCopy = self;
      v8 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = itemsCopy;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            v15 = [[SHMediaLibraryTrack alloc] initWithMediaItem:v14];
            if (!v15)
            {
              v17 = sh_log_object();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                properties = [v14 properties];
                *buf = 138412290;
                v33 = properties;
                _os_log_impl(&dword_230F52000, v17, OS_LOG_TYPE_ERROR, "Failed to create library track from media item with properties: %@", buf, 0xCu);
              }

              v19 = MEMORY[0x277CCACA8];
              shazamID = [v14 shazamID];
              v21 = [v19 stringWithFormat:@"%@ is not a valid shazamID or it is missing. Ensure shazamID is provided and valid.", shazamID];

              v30 = *MEMORY[0x277CCA068];
              v31 = v21;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
              v23 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v22];

              handlerCopy[2](handlerCopy, v23);
              goto LABEL_15;
            }

            v16 = v15;
            [v8 addItem:v15];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      [(_SHMediaLibrary *)selfCopy _synchronizeSnapshot:v8 startCondition:@"UserAction" completionHandler:handlerCopy];
LABEL_15:
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  conditionCopy = condition;
  snapshotCopy = snapshot;
  v8 = objc_opt_new();
  [(_SHMediaLibrary *)self _synchronizeTask:v8 snapshot:snapshotCopy startCondition:conditionCopy completionHandler:0];
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  [(_SHMediaLibrary *)self _libraryInfoWithTask:v5 completionHandler:handlerCopy];
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  v8 = objc_opt_new();
  [(_SHMediaLibrary *)self _queryLibraryWithTask:v8 parameters:parametersCopy completionHandler:handlerCopy];
}

+ (id)_localizedAttributionForLibraryItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    providerIdentifier = [v4 providerIdentifier];

    if (providerIdentifier && ([v4 providerIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = +[SHAttribution requiresMediaLibraryAttributionForBundleIdentifier:](SHAttribution, "requiresMediaLibraryAttributionForBundleIdentifier:", v6), v6, v7))
    {
      providerIdentifier2 = [v4 providerIdentifier];
      v9 = [SHAttribution productNameForBundleIdentifier:providerIdentifier2];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x277D54E28] localizedStringForKey:@"SHAZAM_LIBRARY_MISSING_PROVIDER_NAME"];
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_synchronize
{
  v3 = objc_opt_new();
  [(_SHMediaLibrary *)self _synchronizeSnapshot:v3 startCondition:@"UserAction"];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler
{
  handlerCopy = handler;
  conditionCopy = condition;
  snapshotCopy = snapshot;
  v11 = objc_opt_new();
  [(_SHMediaLibrary *)self _synchronizeTask:v11 snapshot:snapshotCopy startCondition:conditionCopy completionHandler:handlerCopy];
}

- (void)_queryLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_new();
  v5 = +[SHMediaLibraryQueryParameters defaultParameters];
  [(_SHMediaLibrary *)self _queryLibraryWithTask:v6 parameters:v5 completionHandler:handlerCopy];
}

- (void)_libraryWillBeginSync:(id)sync
{
  delegate = [(_SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_SHMediaLibrary *)self delegate];
    [delegate2 _libraryWillBeginSync:self];
  }
}

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  delegate = [(_SHMediaLibrary *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_SHMediaLibrary *)self delegate];
    [delegate2 _library:self didChangeWithSnapshot:snapshotCopy];
  }
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  errorCopy = error;
  identifiersCopy = identifiers;
  delegate = [(_SHMediaLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(_SHMediaLibrary *)self delegate];
    [delegate2 _library:self didProduceError:errorCopy failedItemIdentifiers:identifiersCopy];
  }
}

- (void)_libraryDidCompleteSync:(id)sync
{
  syncCopy = sync;
  delegate = [(_SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_SHMediaLibrary *)self delegate];
    [delegate2 _libraryDidCompleteSync:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_SHMediaLibrary *)self removeInflightTask:syncCopy];
  }
}

- (void)_synchronizeTask:(id)task snapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler
{
  handlerCopy = handler;
  conditionCopy = condition;
  snapshotCopy = snapshot;
  taskCopy = task;
  [taskCopy setDelegate:self];
  [taskCopy setSyncCompletionBlock:handlerCopy];

  [(_SHMediaLibrary *)self addInflightTask:taskCopy];
  [taskCopy _synchronizeSnapshot:snapshotCopy startCondition:conditionCopy];
}

- (void)_queryLibraryWithTask:(id)task parameters:(id)parameters completionHandler:(id)handler
{
  taskCopy = task;
  parametersCopy = parameters;
  handlerCopy = handler;
  [(_SHMediaLibrary *)self addInflightTask:taskCopy];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70___SHMediaLibrary__queryLibraryWithTask_parameters_completionHandler___block_invoke;
  v13[3] = &unk_2788F7EF0;
  objc_copyWeak(&v16, &location);
  v11 = taskCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [v11 _queryLibraryWithParameters:parametersCopy completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_libraryInfoWithTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  [(_SHMediaLibrary *)self addInflightTask:taskCopy];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58___SHMediaLibrary__libraryInfoWithTask_completionHandler___block_invoke;
  v10[3] = &unk_2788F7F18;
  objc_copyWeak(&v13, &location);
  v8 = taskCopy;
  v11 = v8;
  v9 = handlerCopy;
  v12 = v9;
  [v8 _libraryInfoWithCompletionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addInflightTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_inflightTasksLock);
  inflightTasks = [(_SHMediaLibrary *)self inflightTasks];
  identifier = [taskCopy identifier];
  [inflightTasks setObject:taskCopy forKey:identifier];

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (void)removeInflightTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_inflightTasksLock);
  inflightTasks = [(_SHMediaLibrary *)self inflightTasks];
  identifier = [taskCopy identifier];

  [inflightTasks removeObjectForKey:identifier];

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (void)librarySyncDidChange:(id)change
{
  os_unfair_lock_lock(&self->_inflightTasksLock);
  inflightTasks = [(_SHMediaLibrary *)self inflightTasks];
  v5 = [inflightTasks count];

  if (!v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SHMediaLibraryLocalChangeNotification" object:0];
  }

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end