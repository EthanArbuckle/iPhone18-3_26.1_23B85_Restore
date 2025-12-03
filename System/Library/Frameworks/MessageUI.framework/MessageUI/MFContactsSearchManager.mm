@interface MFContactsSearchManager
- (MFContactsSearchManager)initWithAutocompleteSearchType:(unint64_t)type;
- (MFContactsSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type;
- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (id)searchForText:(id)text consumer:(id)consumer;
- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d;
- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d;
- (void)_handleTaskFinished:(id)finished context:(id)context;
- (void)cancelTaskWithID:(id)d;
- (void)dealloc;
- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)removeRecipientResult:(id)result;
@end

@implementation MFContactsSearchManager

- (MFContactsSearchManager)initWithAutocompleteSearchType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E6996378]);
  v6 = [(MFContactsSearchManager *)self initWithAutocompleteStore:v5 searchType:type];

  return v6;
}

- (MFContactsSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = MFContactsSearchManager;
  v8 = [(MFContactsSearchManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_searchTypes = 31;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [bundleIdentifier copy];
    recentsBundleIdentifier = v9->_recentsBundleIdentifier;
    v9->_recentsBundleIdentifier = v12;

    v9->_autocompleteSearchType = type;
    objc_storeStrong(&v9->_autocompleteStore, store);
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

- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  autocompleteStore = self->_autocompleteStore;
  autocompleteResult = [recipient autocompleteResult];
  [CNAutocompleteStore userSelectedResult:"userSelectedResult:atSortedIndex:" atSortedIndex:?];
}

- (void)removeRecipientResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isRemovableFromSearchResults])
  {
    autocompleteResult = [resultCopy autocompleteResult];
    if (autocompleteResult)
    {
      autocompleteStore = self->_autocompleteStore;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__MFContactsSearchManager_removeRecipientResult___block_invoke;
      v7[3] = &unk_1E806DCE8;
      v8 = resultCopy;
      [(CNAutocompleteStore *)autocompleteStore ignoreResult:autocompleteResult completionHandler:v7];
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

- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  v21[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(MFContactsSearchManager *)self _nextTaskID];
  v12 = [MFContactsAutocompleteSearchOperation operationWithOwner:self text:textCopy taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];

  if (v12)
  {
    [v12 configureForSearchTypes:self->_searchTypes];
    [v12 setFetchContext:contextCopy];
    [v12 setSimulateResults:{-[MFContactsSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
    queue = self->_queue;
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(NSOperationQueue *)queue addOperations:v14 waitUntilFinished:0];

    v15 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v16 = [MFContactsSearchTaskContext contextWithConsumer:consumerCopy text:textCopy operations:v15 searchQueries:0];

    if (v16)
    {
      taskContextsByTaskID = self->_taskContextsByTaskID;
      taskID = [v12 taskID];
      [(NSMutableDictionary *)taskContextsByTaskID setObject:v16 forKey:taskID];
    }
  }

  taskID2 = [v12 taskID];

  return taskID2;
}

- (id)searchForText:(id)text consumer:(id)consumer
{
  v4 = [(MFContactsSearchManager *)self searchForText:text withAutocompleteFetchContext:0 consumer:consumer];

  return v4;
}

- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(MFContactsSearchManager *)self _nextTaskID];
  v9 = [MFContactsAutocompleteSearchOperation operationWithOwner:self text:0 taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];
  [v9 configureForSearchTypes:self->_searchTypes];
  [v9 setFetchContext:contextCopy];
  [v9 setSimulateResults:{-[MFContactsSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
  corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  if (!corecipientSearchTaskIDs)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = self->_corecipientSearchTaskIDs;
    self->_corecipientSearchTaskIDs = v11;

    corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  }

  [(NSMutableArray *)corecipientSearchTaskIDs addObject:_nextTaskID];
  [(NSOperationQueue *)self->_queue addOperation:v9];
  v13 = [MEMORY[0x1E695DFA8] setWithObject:v9];
  otherAddressesAlreadyChosen = [contextCopy otherAddressesAlreadyChosen];
  v15 = [otherAddressesAlreadyChosen componentsJoinedByString:{@", "}];
  v16 = [MFContactsSearchTaskContext contextWithConsumer:consumerCopy text:v15 operations:v13 searchQueries:0];

  if (v16)
  {
    [(NSMutableDictionary *)self->_taskContextsByTaskID setObject:v16 forKey:_nextTaskID];
  }

  return _nextTaskID;
}

- (void)_handleTaskFinished:(id)finished context:(id)context
{
  finishedCopy = finished;
  contextCopy = context;
  consumer = [contextCopy consumer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    consumer2 = [contextCopy consumer];
    [consumer2 finishedTaskWithID:finishedCopy];
  }

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:finishedCopy];
}

- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d
{
  finishedCopy = finished;
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  if ([(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy])
  {
    if ([v7 consumerRespondsToCallbacks])
    {
      consumer = [v7 consumer];
      [consumer finishedSearchingForCorecipients];
    }

    [(NSMutableArray *)self->_corecipientSearchTaskIDs removeObject:dCopy];
  }

  else if ([v7 consumerRespondsToCallbacks])
  {
    consumer2 = [v7 consumer];
    [consumer2 finishedSearchingForAutocompleteResults];
  }

  operations = [v7 operations];
  [operations removeObject:finishedCopy];

  if ([v7 done])
  {
    [(MFContactsSearchManager *)self _handleTaskFinished:dCopy context:v7];
  }
}

- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  if ([(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy])
  {
    if (![v8 consumerRespondsToCallbacks])
    {
      goto LABEL_7;
    }

    consumer = [v8 consumer];
    [consumer consumeCorecipientSearchResults:resultsCopy taskID:dCopy];
  }

  else
  {
    if (![v8 consumerRespondsToCallbacks])
    {
      goto LABEL_7;
    }

    consumer = [v8 consumer];
    [consumer consumeAutocompleteSearchResults:resultsCopy taskID:dCopy];
  }

LABEL_7:
}

- (void)cancelTaskWithID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:?];
  operations = [v4 operations];
  [operations makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:dCopy];
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