@interface MFContactsAutocompleteSearchOperation
+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d autocompleteStore:(id)store;
- (MFContactsAutocompleteSearchOperation)init;
- (id)_simulatedRecipientResults;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidFinish:(id)finish;
- (void)cancel;
- (void)configureForSearchTypes:(unint64_t)types;
- (void)main;
@end

@implementation MFContactsAutocompleteSearchOperation

+ (id)operationWithOwner:(id)owner text:(id)text taskID:(id)d autocompleteStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___MFContactsAutocompleteSearchOperation;
  v11 = objc_msgSendSuper2(&v13, sel_operationWithOwner_text_taskID_, owner, text, d);
  [v11 setAutocompleteStore:storeCopy];

  return v11;
}

- (MFContactsAutocompleteSearchOperation)init
{
  v8.receiver = self;
  v8.super_class = MFContactsAutocompleteSearchOperation;
  v2 = [(MFContactsAutocompleteSearchOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    fetchRequestToken = v2->_fetchRequestToken;
    v2->_fetchRequestToken = v3;

    promise = [MEMORY[0x1E699B868] promise];
    fetchRequestPromise = v2->_fetchRequestPromise;
    v2->_fetchRequestPromise = promise;

    [(EFManualCancelationToken *)v2->_fetchRequestToken addCancelable:v2->_fetchRequestPromise];
  }

  return v2;
}

- (void)cancel
{
  [(EFManualCancelationToken *)self->_fetchRequestToken cancel];
  v3.receiver = self;
  v3.super_class = MFContactsAutocompleteSearchOperation;
  [(MFContactsAutocompleteSearchOperation *)&v3 cancel];
}

- (void)configureForSearchTypes:(unint64_t)types
{
  [(MFContactsAutocompleteSearchOperation *)self setIncludeContacts:(types >> 1) & 1];
  [(MFContactsAutocompleteSearchOperation *)self setIncludeRecents:(types & 5) != 0];
  [(MFContactsAutocompleteSearchOperation *)self setIncludeServers:(types >> 3) & 1];

  [(MFContactsAutocompleteSearchOperation *)self setIncludeSuggestions:(types >> 4) & 1];
}

- (void)main
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(MFContactsAutocompleteSearchOperation *)self simulateResults])
  {
    obj = [(MFContactsAutocompleteSearchOperation *)self _simulatedRecipientResults];
    otherAddressesAlreadyChosen = [(CNAutocompleteFetchContext *)self->_fetchContext otherAddressesAlreadyChosen];
    v4 = [otherAddressesAlreadyChosen count];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obja = obj;
      v6 = [obja countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v6)
      {
        v7 = *v45;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v45 != v7)
            {
              objc_enumerationMutation(obja);
            }

            v9 = *(*(&v44 + 1) + 8 * i);
            uncommentedAddress = [v9 uncommentedAddress];
            otherAddressesAlreadyChosen2 = [(CNAutocompleteFetchContext *)self->_fetchContext otherAddressesAlreadyChosen];
            v12 = [otherAddressesAlreadyChosen2 containsObject:uncommentedAddress];

            if ((v12 & 1) == 0)
            {
              [v5 addObject:v9];
            }
          }

          v6 = [obja countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v5 = obj;
    }

    __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    owner = [(MFContactsSearchOperation *)self owner];
    v31 = [owner ef_onScheduler:__mui_nextRunLoopMainThreadScheduler];
    taskID = [(MFContactsSearchOperation *)self taskID];
    [v31 _handleContactsAutocompleteSearch:self returnedResults:v5 taskID:taskID];

    owner2 = [(MFContactsSearchOperation *)self owner];
    v29 = [owner2 ef_onScheduler:__mui_nextRunLoopMainThreadScheduler];
    taskID2 = [(MFContactsSearchOperation *)self taskID];
    [v29 _handleContactsAutocompleteSearchFinished:self taskID:taskID2];

    goto LABEL_22;
  }

  objb = [MEMORY[0x1E6996338] request];
  text = [(MFContactsSearchOperation *)self text];
  [objb setSearchString:text];

  owner3 = [(MFContactsSearchOperation *)self owner];
  [objb setSearchType:{objc_msgSend(owner3, "autocompleteSearchType")}];

  [objb setIncludeContacts:self->_includeContacts];
  [objb setIncludeRecents:self->_includeRecents];
  [objb setIncludeSuggestions:self->_includeSuggestions];
  [objb setIncludeDirectoryServers:self->_includeServers];
  sendingAddress = [(CNAutocompleteFetchContext *)self->_fetchContext sendingAddress];

  if (!sendingAddress)
  {
    owner4 = [(MFContactsSearchOperation *)self owner];
    sendingAddress2 = [owner4 sendingAddress];
    [(CNAutocompleteFetchContext *)self->_fetchContext setSendingAddress:sendingAddress2];
  }

  sendingAddressAccountIdentifier = [(CNAutocompleteFetchContext *)self->_fetchContext sendingAddressAccountIdentifier];

  if (!sendingAddressAccountIdentifier)
  {
    owner5 = [(MFContactsSearchOperation *)self owner];
    sendingAccountIdentifier = [owner5 sendingAccountIdentifier];
    [(CNAutocompleteFetchContext *)self->_fetchContext setSendingAddressAccountIdentifier:sendingAccountIdentifier];
  }

  [objb setFetchContext:self->_fetchContext];
  if (([(MFContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    taskID3 = [(MFContactsSearchOperation *)self taskID];
    autocompleteStore = [(MFContactsAutocompleteSearchOperation *)self autocompleteStore];
    v23 = [autocompleteStore scheduleFetchRequest:objb delegate:self];

    fetchRequestToken = self->_fetchRequestToken;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __45__MFContactsAutocompleteSearchOperation_main__block_invoke;
    v42[3] = &unk_1E806C570;
    owner2 = v23;
    v43 = owner2;
    [(EFManualCancelationToken *)fetchRequestToken addCancelationBlock:v42];
    future = [(EFPromise *)self->_fetchRequestPromise future];
    objc_initWeak(&location, self);
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __45__MFContactsAutocompleteSearchOperation_main__block_invoke_2;
    v38[3] = &unk_1E806DCC0;
    objc_copyWeak(&v40, &location);
    __mui_nextRunLoopMainThreadScheduler = taskID3;
    v39 = __mui_nextRunLoopMainThreadScheduler;
    [future onScheduler:mainThreadScheduler addSuccessBlock:v38];

    v37 = 0;
    [future result:&v37];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    v29 = v43;
    v5 = objb;
LABEL_22:

    goto LABEL_23;
  }

  v5 = objb;
LABEL_23:
}

void __45__MFContactsAutocompleteSearchOperation_main__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained owner];
  [v2 _handleContactsAutocompleteSearchFinished:WeakRetained taskID:*(a1 + 32)];
}

- (id)_simulatedRecipientResults
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(MFComposeRecipientOriginContext);
  text = [(MFContactsSearchOperation *)self text];
  [(MFComposeRecipientOriginContext *)v4 setSearchTerm:text];

  [(MFComposeRecipientOriginContext *)v4 setResultType:16];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MFContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke;
  v11[3] = &unk_1E806DBD0;
  v6 = v4;
  v12 = v6;
  v7 = array;
  v13 = v7;
  v8 = _Block_copy(v11);
  v8[2](v8, @"Rachel Green <rachel@centralp3rk.com>");
  v8[2](v8, @"Phoebe Buffay <phoebe@centralp3rk.com>");
  v8[2](v8, @"Ross Geller <ross@centralp3rk.com>");
  v8[2](v8, @"Monica Geller <monica@centralp3rk.com>");
  v9 = v7;

  return v7;
}

void __67__MFContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [[MFComposeRecipient alloc] initWithContact:0 address:v4 kind:0];
  [(MFComposeRecipient *)v3 setOriginContext:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  v33 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (([(MFContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = resultsCopy;
    v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      v6 = *v29;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = [MFComposeRecipient composeRecipientWithAutocompleteResult:v8];
          if (v9)
          {
            selfCopy = self;
            sourceType = [v8 sourceType];
            sourceType2 = [v8 sourceType];
            sourceType3 = [v8 sourceType];
            sourceType4 = [v8 sourceType];
            sourceType5 = [v8 sourceType];
            v16 = sourceType & 2 | (sourceType2 & 1);
            if ((sourceType3 & 0x48) != 0)
            {
              v16 |= 8uLL;
            }

            v17 = v16 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((sourceType4 >> 2) & 1));
            if (sourceType5)
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 | 2;
            }

            v19 = objc_alloc_init(MFComposeRecipientOriginContext);
            self = selfCopy;
            text = [(MFContactsSearchOperation *)selfCopy text];
            [(MFComposeRecipientOriginContext *)v19 setSearchTerm:text];

            [(MFComposeRecipientOriginContext *)v19 setResultType:v18];
            [v9 setOriginContext:v19];
            [v27 addObject:v9];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v5);
    }

    owner = [(MFContactsSearchOperation *)self owner];
    __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v23 = [owner ef_onScheduler:__mui_nextRunLoopMainThreadScheduler];
    taskID = [(MFContactsSearchOperation *)self taskID];
    [v23 _handleContactsAutocompleteSearch:self returnedResults:v27 taskID:taskID];
  }
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  fetchRequestPromise = self->_fetchRequestPromise;
  null = [MEMORY[0x1E695DFB0] null];
  [(EFPromise *)fetchRequestPromise finishWithResult:?];
}

@end