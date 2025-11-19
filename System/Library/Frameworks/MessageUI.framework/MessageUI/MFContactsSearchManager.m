@interface MFContactsSearchManager
- (MFContactsSearchManager)initWithAutocompleteSearchType:(unint64_t)a3;
- (MFContactsSearchManager)initWithAutocompleteStore:(id)a3 searchType:(unint64_t)a4;
- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)a3 consumer:(id)a4;
- (id)searchForText:(id)a3 consumer:(id)a4;
- (id)searchForText:(id)a3 withAutocompleteFetchContext:(id)a4 consumer:(id)a5;
- (void)_handleContactsAutocompleteSearch:(id)a3 returnedResults:(id)a4 taskID:(id)a5;
- (void)_handleContactsAutocompleteSearchFinished:(id)a3 taskID:(id)a4;
- (void)_handleTaskFinished:(id)a3 context:(id)a4;
- (void)cancelTaskWithID:(id)a3;
- (void)dealloc;
- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4;
- (void)removeRecipientResult:(id)a3;
@end

@implementation MFContactsSearchManager

- (MFContactsSearchManager)initWithAutocompleteSearchType:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E6996378]);
  v6 = [(MFContactsSearchManager *)self initWithAutocompleteStore:v5 searchType:a3];

  return v6;
}

- (MFContactsSearchManager)initWithAutocompleteStore:(id)a3 searchType:(unint64_t)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = MFContactsSearchManager;
  v8 = [(MFContactsSearchManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_searchTypes = 31;
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 copy];
    recentsBundleIdentifier = v9->_recentsBundleIdentifier;
    v9->_recentsBundleIdentifier = v12;

    v9->_autocompleteSearchType = a4;
    objc_storeStrong(&v9->_autocompleteStore, a3);
    if (!v9->_queue)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      queue = v9->_queue;
      v9->_queue = v14;

      [(NSOperationQueue *)v9->_queue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)v9->_queue setQualityOfService:25];
    }

    if (!v9->_taskContextsByTaskID)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      taskContextsByTaskID = v9->_taskContextsByTaskID;
      v9->_taskContextsByTaskID = v16;
    }
  }

  return v9;
}

- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4
{
  autocompleteStore = self->_autocompleteStore;
  v5 = [a3 autocompleteResult];
  [CNAutocompleteStore userSelectedResult:"userSelectedResult:atSortedIndex:" atSortedIndex:?];
}

- (void)removeRecipientResult:(id)a3
{
  v4 = a3;
  if ([v4 isRemovableFromSearchResults])
  {
    v5 = [v4 autocompleteResult];
    if (v5)
    {
      autocompleteStore = self->_autocompleteStore;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__MFContactsSearchManager_removeRecipientResult___block_invoke;
      v7[3] = &unk_1E806DCE8;
      v8 = v4;
      [(CNAutocompleteStore *)autocompleteStore ignoreResult:v5 completionHandler:v7];
    }
  }
}

void __49__MFContactsSearchManager_removeRecipientResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#Warning removal of autocomplete recent %@ failed: %@", &v8, 0x16u);
    }
  }
}

- (id)searchForText:(id)a3 withAutocompleteFetchContext:(id)a4 consumer:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MFContactsSearchManager *)self _nextTaskID];
  v12 = [MFContactsAutocompleteSearchOperation operationWithOwner:self text:v8 taskID:v11 autocompleteStore:self->_autocompleteStore];

  if (v12)
  {
    [v12 configureForSearchTypes:self->_searchTypes];
    [v12 setFetchContext:v9];
    [v12 setSimulateResults:{-[MFContactsSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
    queue = self->_queue;
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(NSOperationQueue *)queue addOperations:v14 waitUntilFinished:0];

    v15 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v16 = [MFContactsSearchTaskContext contextWithConsumer:v10 text:v8 operations:v15 searchQueries:0];

    if (v16)
    {
      taskContextsByTaskID = self->_taskContextsByTaskID;
      v18 = [v12 taskID];
      [(NSMutableDictionary *)taskContextsByTaskID setObject:v16 forKey:v18];
    }
  }

  v19 = [v12 taskID];

  return v19;
}

- (id)searchForText:(id)a3 consumer:(id)a4
{
  v4 = [(MFContactsSearchManager *)self searchForText:a3 withAutocompleteFetchContext:0 consumer:a4];

  return v4;
}

- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFContactsSearchManager *)self _nextTaskID];
  v9 = [MFContactsAutocompleteSearchOperation operationWithOwner:self text:0 taskID:v8 autocompleteStore:self->_autocompleteStore];
  [v9 configureForSearchTypes:self->_searchTypes];
  [v9 setFetchContext:v6];
  [v9 setSimulateResults:{-[MFContactsSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
  corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  if (!corecipientSearchTaskIDs)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = self->_corecipientSearchTaskIDs;
    self->_corecipientSearchTaskIDs = v11;

    corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  }

  [(NSMutableArray *)corecipientSearchTaskIDs addObject:v8];
  [(NSOperationQueue *)self->_queue addOperation:v9];
  v13 = [MEMORY[0x1E695DFA8] setWithObject:v9];
  v14 = [v6 otherAddressesAlreadyChosen];
  v15 = [v14 componentsJoinedByString:{@", "}];
  v16 = [MFContactsSearchTaskContext contextWithConsumer:v7 text:v15 operations:v13 searchQueries:0];

  if (v16)
  {
    [(NSMutableDictionary *)self->_taskContextsByTaskID setObject:v16 forKey:v8];
  }

  return v8;
}

- (void)_handleTaskFinished:(id)a3 context:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 consumer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [v6 consumer];
    [v9 finishedTaskWithID:v10];
  }

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:v10];
}

- (void)_handleContactsAutocompleteSearchFinished:(id)a3 taskID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:v6];
  if ([(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:v6])
  {
    if ([v7 consumerRespondsToCallbacks])
    {
      v8 = [v7 consumer];
      [v8 finishedSearchingForCorecipients];
    }

    [(NSMutableArray *)self->_corecipientSearchTaskIDs removeObject:v6];
  }

  else if ([v7 consumerRespondsToCallbacks])
  {
    v9 = [v7 consumer];
    [v9 finishedSearchingForAutocompleteResults];
  }

  v10 = [v7 operations];
  [v10 removeObject:v11];

  if ([v7 done])
  {
    [(MFContactsSearchManager *)self _handleTaskFinished:v6 context:v7];
  }
}

- (void)_handleContactsAutocompleteSearch:(id)a3 returnedResults:(id)a4 taskID:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:v7];
  if ([(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:v7])
  {
    if (![v8 consumerRespondsToCallbacks])
    {
      goto LABEL_7;
    }

    v9 = [v8 consumer];
    [v9 consumeCorecipientSearchResults:v10 taskID:v7];
  }

  else
  {
    if (![v8 consumerRespondsToCallbacks])
    {
      goto LABEL_7;
    }

    v9 = [v8 consumer];
    [v9 consumeAutocompleteSearchResults:v10 taskID:v7];
  }

LABEL_7:
}

- (void)cancelTaskWithID:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:?];
  v5 = [v4 operations];
  [v5 makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:v6];
}

- (void)dealloc
{
  contactSearchAccountChangedToken = self->_contactSearchAccountChangedToken;
  if (contactSearchAccountChangedToken)
  {
    notify_cancel(contactSearchAccountChangedToken);
  }

  v4.receiver = self;
  v4.super_class = MFContactsSearchManager;
  [(MFContactsSearchManager *)&v4 dealloc];
}

@end