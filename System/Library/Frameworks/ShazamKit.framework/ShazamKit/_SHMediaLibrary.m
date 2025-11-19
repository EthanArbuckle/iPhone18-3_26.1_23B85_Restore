@interface _SHMediaLibrary
+ (_SHMediaLibrary)_defaultLibrary;
+ (id)_localizedAttributionForLibraryItem:(id)a3;
+ (id)sh_uiServerConnection;
+ (void)_presentMediaLibraryWithCompletionHandler:(id)a3;
- (SHMediaLibrarySyncDelegate)delegate;
- (_SHMediaLibrary)init;
- (void)_addMediaItems:(id)a3 completionHandler:(id)a4;
- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4;
- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5;
- (void)_libraryDidCompleteSync:(id)a3;
- (void)_libraryInfoWithCompletionHandler:(id)a3;
- (void)_libraryInfoWithTask:(id)a3 completionHandler:(id)a4;
- (void)_libraryWillBeginSync:(id)a3;
- (void)_queryLibraryWithCompletionHandler:(id)a3;
- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_queryLibraryWithTask:(id)a3 parameters:(id)a4 completionHandler:(id)a5;
- (void)_synchronize;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4 completionHandler:(id)a5;
- (void)_synchronizeTask:(id)a3 snapshot:(id)a4 startCondition:(id)a5 completionHandler:(id)a6;
- (void)addInflightTask:(id)a3;
- (void)librarySyncDidChange:(id)a3;
- (void)removeInflightTask:(id)a3;
@end

@implementation _SHMediaLibrary

+ (void)_presentMediaLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 sh_uiServerConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___SHMediaLibrary_Presentation___presentMediaLibraryWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788F7C10;
  v8 = v4;
  v6 = v4;
  [v5 presentMediaLibraryWithCompletionHandler:v7];
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
    v4 = [MEMORY[0x277CBEB38] dictionary];
    inflightTasks = v3->_inflightTasks;
    v3->_inflightTasks = v4;

    v6 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v6 addObserver:v3 selector:sel_librarySyncDidChange_ name:@"SHMediaLibrarySyncDidChangeNotification" object:0];
  }

  return v3;
}

- (void)_addMediaItems:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 count])
    {
      v25 = self;
      v8 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = v6;
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
                v18 = [v14 properties];
                *buf = 138412290;
                v33 = v18;
                _os_log_impl(&dword_230F52000, v17, OS_LOG_TYPE_ERROR, "Failed to create library track from media item with properties: %@", buf, 0xCu);
              }

              v19 = MEMORY[0x277CCACA8];
              v20 = [v14 shazamID];
              v21 = [v19 stringWithFormat:@"%@ is not a valid shazamID or it is missing. Ensure shazamID is provided and valid.", v20];

              v30 = *MEMORY[0x277CCA068];
              v31 = v21;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
              v23 = [SHError errorWithCode:400 underlyingError:0 keyOverrides:v22];

              v7[2](v7, v23);
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

      [(_SHMediaLibrary *)v25 _synchronizeSnapshot:v8 startCondition:@"UserAction" completionHandler:v7];
LABEL_15:
    }

    else
    {
      v7[2](v7, 0);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(_SHMediaLibrary *)self _synchronizeTask:v8 snapshot:v7 startCondition:v6 completionHandler:0];
}

- (void)_libraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(_SHMediaLibrary *)self _libraryInfoWithTask:v5 completionHandler:v4];
}

- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(_SHMediaLibrary *)self _queryLibraryWithTask:v8 parameters:v7 completionHandler:v6];
}

+ (id)_localizedAttributionForLibraryItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 providerIdentifier];

    if (v5 && ([v4 providerIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = +[SHAttribution requiresMediaLibraryAttributionForBundleIdentifier:](SHAttribution, "requiresMediaLibraryAttributionForBundleIdentifier:", v6), v6, v7))
    {
      v8 = [v4 providerIdentifier];
      v9 = [SHAttribution productNameForBundleIdentifier:v8];
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

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [(_SHMediaLibrary *)self _synchronizeTask:v11 snapshot:v10 startCondition:v9 completionHandler:v8];
}

- (void)_queryLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  v5 = +[SHMediaLibraryQueryParameters defaultParameters];
  [(_SHMediaLibrary *)self _queryLibraryWithTask:v6 parameters:v5 completionHandler:v4];
}

- (void)_libraryWillBeginSync:(id)a3
{
  v4 = [(_SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_SHMediaLibrary *)self delegate];
    [v6 _libraryWillBeginSync:self];
  }
}

- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4
{
  v8 = a4;
  v5 = [(_SHMediaLibrary *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_SHMediaLibrary *)self delegate];
    [v7 _library:self didChangeWithSnapshot:v8];
  }
}

- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(_SHMediaLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(_SHMediaLibrary *)self delegate];
    [v10 _library:self didProduceError:v11 failedItemIdentifiers:v7];
  }
}

- (void)_libraryDidCompleteSync:(id)a3
{
  v7 = a3;
  v4 = [(_SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_SHMediaLibrary *)self delegate];
    [v6 _libraryDidCompleteSync:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_SHMediaLibrary *)self removeInflightTask:v7];
  }
}

- (void)_synchronizeTask:(id)a3 snapshot:(id)a4 startCondition:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v13 setDelegate:self];
  [v13 setSyncCompletionBlock:v10];

  [(_SHMediaLibrary *)self addInflightTask:v13];
  [v13 _synchronizeSnapshot:v12 startCondition:v11];
}

- (void)_queryLibraryWithTask:(id)a3 parameters:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(_SHMediaLibrary *)self addInflightTask:v8];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70___SHMediaLibrary__queryLibraryWithTask_parameters_completionHandler___block_invoke;
  v13[3] = &unk_2788F7EF0;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [v11 _queryLibraryWithParameters:v9 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_libraryInfoWithTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_SHMediaLibrary *)self addInflightTask:v6];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58___SHMediaLibrary__libraryInfoWithTask_completionHandler___block_invoke;
  v10[3] = &unk_2788F7F18;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [v8 _libraryInfoWithCompletionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addInflightTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_inflightTasksLock);
  v5 = [(_SHMediaLibrary *)self inflightTasks];
  v6 = [v4 identifier];
  [v5 setObject:v4 forKey:v6];

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (void)removeInflightTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_inflightTasksLock);
  v5 = [(_SHMediaLibrary *)self inflightTasks];
  v6 = [v4 identifier];

  [v5 removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (void)librarySyncDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_inflightTasksLock);
  v4 = [(_SHMediaLibrary *)self inflightTasks];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SHMediaLibraryLocalChangeNotification" object:0];
  }

  os_unfair_lock_unlock(&self->_inflightTasksLock);
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end