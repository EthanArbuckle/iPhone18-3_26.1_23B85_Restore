@interface MFContactsAutocompleteSearchOperation
+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5 autocompleteStore:(id)a6;
- (MFContactsAutocompleteSearchOperation)init;
- (id)_simulatedRecipientResults;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidFinish:(id)a3;
- (void)cancel;
- (void)configureForSearchTypes:(unint64_t)a3;
- (void)main;
@end

@implementation MFContactsAutocompleteSearchOperation

+ (id)operationWithOwner:(id)a3 text:(id)a4 taskID:(id)a5 autocompleteStore:(id)a6
{
  v10 = a6;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___MFContactsAutocompleteSearchOperation;
  v11 = objc_msgSendSuper2(&v13, sel_operationWithOwner_text_taskID_, a3, a4, a5);
  [v11 setAutocompleteStore:v10];

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

    v5 = [MEMORY[0x1E699B868] promise];
    fetchRequestPromise = v2->_fetchRequestPromise;
    v2->_fetchRequestPromise = v5;

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

- (void)configureForSearchTypes:(unint64_t)a3
{
  [(MFContactsAutocompleteSearchOperation *)self setIncludeContacts:(a3 >> 1) & 1];
  [(MFContactsAutocompleteSearchOperation *)self setIncludeRecents:(a3 & 5) != 0];
  [(MFContactsAutocompleteSearchOperation *)self setIncludeServers:(a3 >> 3) & 1];

  [(MFContactsAutocompleteSearchOperation *)self setIncludeSuggestions:(a3 >> 4) & 1];
}

- (void)main
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(MFContactsAutocompleteSearchOperation *)self simulateResults])
  {
    obj = [(MFContactsAutocompleteSearchOperation *)self _simulatedRecipientResults];
    v3 = [(CNAutocompleteFetchContext *)self->_fetchContext otherAddressesAlreadyChosen];
    v4 = [v3 count];

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
            v10 = [v9 uncommentedAddress];
            v11 = [(CNAutocompleteFetchContext *)self->_fetchContext otherAddressesAlreadyChosen];
            v12 = [v11 containsObject:v10];

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

    v28 = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v30 = [(MFContactsSearchOperation *)self owner];
    v31 = [v30 ef_onScheduler:v28];
    v32 = [(MFContactsSearchOperation *)self taskID];
    [v31 _handleContactsAutocompleteSearch:self returnedResults:v5 taskID:v32];

    v25 = [(MFContactsSearchOperation *)self owner];
    v29 = [v25 ef_onScheduler:v28];
    v33 = [(MFContactsSearchOperation *)self taskID];
    [v29 _handleContactsAutocompleteSearchFinished:self taskID:v33];

    goto LABEL_22;
  }

  objb = [MEMORY[0x1E6996338] request];
  v13 = [(MFContactsSearchOperation *)self text];
  [objb setSearchString:v13];

  v14 = [(MFContactsSearchOperation *)self owner];
  [objb setSearchType:{objc_msgSend(v14, "autocompleteSearchType")}];

  [objb setIncludeContacts:self->_includeContacts];
  [objb setIncludeRecents:self->_includeRecents];
  [objb setIncludeSuggestions:self->_includeSuggestions];
  [objb setIncludeDirectoryServers:self->_includeServers];
  v15 = [(CNAutocompleteFetchContext *)self->_fetchContext sendingAddress];

  if (!v15)
  {
    v16 = [(MFContactsSearchOperation *)self owner];
    v17 = [v16 sendingAddress];
    [(CNAutocompleteFetchContext *)self->_fetchContext setSendingAddress:v17];
  }

  v18 = [(CNAutocompleteFetchContext *)self->_fetchContext sendingAddressAccountIdentifier];

  if (!v18)
  {
    v19 = [(MFContactsSearchOperation *)self owner];
    v20 = [v19 sendingAccountIdentifier];
    [(CNAutocompleteFetchContext *)self->_fetchContext setSendingAddressAccountIdentifier:v20];
  }

  [objb setFetchContext:self->_fetchContext];
  if (([(MFContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    v21 = [(MFContactsSearchOperation *)self taskID];
    v22 = [(MFContactsAutocompleteSearchOperation *)self autocompleteStore];
    v23 = [v22 scheduleFetchRequest:objb delegate:self];

    fetchRequestToken = self->_fetchRequestToken;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __45__MFContactsAutocompleteSearchOperation_main__block_invoke;
    v42[3] = &unk_1E806C570;
    v25 = v23;
    v43 = v25;
    [(EFManualCancelationToken *)fetchRequestToken addCancelationBlock:v42];
    v26 = [(EFPromise *)self->_fetchRequestPromise future];
    objc_initWeak(&location, self);
    v27 = [MEMORY[0x1E699B978] mainThreadScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __45__MFContactsAutocompleteSearchOperation_main__block_invoke_2;
    v38[3] = &unk_1E806DCC0;
    objc_copyWeak(&v40, &location);
    v28 = v21;
    v39 = v28;
    [v26 onScheduler:v27 addSuccessBlock:v38];

    v37 = 0;
    [v26 result:&v37];

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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(MFComposeRecipientOriginContext);
  v5 = [(MFContactsSearchOperation *)self text];
  [(MFComposeRecipientOriginContext *)v4 setSearchTerm:v5];

  [(MFComposeRecipientOriginContext *)v4 setResultType:16];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MFContactsAutocompleteSearchOperation__simulatedRecipientResults__block_invoke;
  v11[3] = &unk_1E806DBD0;
  v6 = v4;
  v12 = v6;
  v7 = v3;
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

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = a4;
  if (([(MFContactsAutocompleteSearchOperation *)self isCancelled]& 1) == 0)
  {
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v25;
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
            v10 = self;
            v11 = [v8 sourceType];
            v12 = [v8 sourceType];
            v13 = [v8 sourceType];
            v14 = [v8 sourceType];
            v15 = [v8 sourceType];
            v16 = v11 & 2 | (v12 & 1);
            if ((v13 & 0x48) != 0)
            {
              v16 |= 8uLL;
            }

            v17 = v16 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((v14 >> 2) & 1));
            if (v15)
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 | 2;
            }

            v19 = objc_alloc_init(MFComposeRecipientOriginContext);
            self = v10;
            v20 = [(MFContactsSearchOperation *)v10 text];
            [(MFComposeRecipientOriginContext *)v19 setSearchTerm:v20];

            [(MFComposeRecipientOriginContext *)v19 setResultType:v18];
            [v9 setOriginContext:v19];
            [v27 addObject:v9];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v5);
    }

    v21 = [(MFContactsSearchOperation *)self owner];
    v22 = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v23 = [v21 ef_onScheduler:v22];
    v24 = [(MFContactsSearchOperation *)self taskID];
    [v23 _handleContactsAutocompleteSearch:self returnedResults:v27 taskID:v24];
  }
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  fetchRequestPromise = self->_fetchRequestPromise;
  v4 = [MEMORY[0x1E695DFB0] null];
  [(EFPromise *)fetchRequestPromise finishWithResult:?];
}

@end