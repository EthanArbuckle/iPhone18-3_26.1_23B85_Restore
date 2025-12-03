@interface EKAutocompleter
- (BOOL)directorySearchWithCompletion:(id)completion;
- (BOOL)isRunning;
- (EKAutocompleter)initWithDelegate:(id)delegate;
- (EKAutocompleterDelegate)delegate;
- (id)allResults;
- (id)autocompleteResultsFromDirectoryRecords:(id)records withType:(int64_t)type;
- (id)cnResults;
- (id)removeIgnoredAddressesFromResults:(id)results;
- (id)searchFor:(id)for onSource:(id)source withContext:(id)context;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity;
- (void)autocompleteFetchDidEndNetworkActivity:(id)activity;
- (void)autocompleteFetchDidFinish:(id)finish;
- (void)cancelSearch;
- (void)clearLastResults;
- (void)setIgnoredAddresses:(id)addresses;
- (void)setIgnoredAddresses:(id)addresses ignoredAddressesFromParticipants:(id)participants;
@end

@implementation EKAutocompleter

- (EKAutocompleter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = EKAutocompleter;
  v5 = [(EKAutocompleter *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactResults = v5->_contactResults;
    v5->_contactResults = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    directorySearchResults = v5->_directorySearchResults;
    v5->_directorySearchResults = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("directorySearchQueue", v10);
    directorySearchQueue = v5->_directorySearchQueue;
    v5->_directorySearchQueue = v11;

    v5->_useDirectorySearch = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v13 = getCNAutocompleteStoreClass_softClass;
    v23 = getCNAutocompleteStoreClass_softClass;
    if (!getCNAutocompleteStoreClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getCNAutocompleteStoreClass_block_invoke;
      v19[3] = &unk_1E77FCFD8;
      v19[4] = &v20;
      __getCNAutocompleteStoreClass_block_invoke(v19);
      v13 = v21[3];
    }

    v14 = v13;
    _Block_object_dispose(&v20, 8);
    v15 = [[v13 alloc] initWithDelegate:v5];
    autocompleteStore = v5->_autocompleteStore;
    v5->_autocompleteStore = v15;

    if ([delegateCopy conformsToProtocol:&unk_1F1B9C2C0])
    {
      [(EKAutocompleter *)v5 setDelegate:delegateCopy];
      if (objc_opt_respondsToSelector())
      {
        [delegateCopy autocompleterSetCNAutocompleteStore:v5->_autocompleteStore];
      }
    }
  }

  return v5;
}

- (id)searchFor:(id)for onSource:(id)source withContext:(id)context
{
  forCopy = for;
  sourceCopy = source;
  contextCopy = context;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKAutocompleter searchFor:forCopy onSource:v11 withContext:?];
  }

  v12 = [forCopy length];
  if (!contextCopy && !v12)
  {
    [(EKAutocompleter *)self cancelSearch];
    [(EKAutocompleter *)self clearLastResults];
    delegate = [(EKAutocompleter *)self delegate];
    [delegate autocompleter:self finishedWithError:0];

    allResults = 0;
    goto LABEL_27;
  }

  prefix = [(EKAutocompleter *)self prefix];
  if ([prefix isEqualToString:forCopy])
  {
    source = [(EKAutocompleter *)self source];
    v17 = [source isEqual:sourceCopy];

    if (v17)
    {
      v18 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKAutocompleter searchFor:forCopy onSource:v18 withContext:self];
      }

      allResults = [(EKAutocompleter *)self allResults];
      goto LABEL_27;
    }
  }

  else
  {
  }

  [(EKAutocompleter *)self setPrefix:forCopy];
  [(EKAutocompleter *)self setSource:sourceCopy];
  source2 = [(EKAutocompleter *)self source];
  eventStore = [source2 eventStore];
  blockList = [eventStore blockList];
  blockList = self->_blockList;
  self->_blockList = blockList;

  [(EKAutocompleter *)self cancelSearch];
  [(EKAutocompleter *)self clearLastResults];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v23 = getCNAutocompleteFetchRequestClass_softClass;
  v36 = getCNAutocompleteFetchRequestClass_softClass;
  if (!getCNAutocompleteFetchRequestClass_softClass)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __getCNAutocompleteFetchRequestClass_block_invoke;
    v32[3] = &unk_1E77FCFD8;
    v32[4] = &v33;
    __getCNAutocompleteFetchRequestClass_block_invoke(v32);
    v23 = v34[3];
  }

  v24 = v23;
  _Block_object_dispose(&v33, 8);
  request = [v23 request];
  [request setSearchString:forCopy];
  [request setSearchType:3];
  if ([(EKAutocompleter *)self findPeople])
  {
    v26 = [(EKAutocompleter *)self excludeLocal]^ 1;
  }

  else
  {
    v26 = 0;
  }

  [request setIncludeContacts:v26];
  if ([(EKAutocompleter *)self findSuggestions])
  {
    v27 = [(EKAutocompleter *)self excludeLocal]^ 1;
  }

  else
  {
    v27 = 0;
  }

  [request setIncludeSuggestions:v27];
  if ([(EKAutocompleter *)self findRecents])
  {
    v28 = [(EKAutocompleter *)self excludeLocal]^ 1;
  }

  else
  {
    v28 = 0;
  }

  [request setIncludeRecents:v28];
  [request setIncludeDirectoryServers:{-[EKAutocompleter useACDirectorySearch](self, "useACDirectorySearch")}];
  [request setFetchContext:contextCopy];
  [request setShouldIncludeGroupResults:{-[EKAutocompleter findGroups](self, "findGroups")}];
  [request setIncludeCalendarServers:0];
  [(EKAutocompleter *)self setAutocompleteRunning:1];
  autocompleteStore = [(EKAutocompleter *)self autocompleteStore];
  v30 = [autocompleteStore scheduleFetchRequest:request];
  [(EKAutocompleter *)self setAutocompletionSearchRequest:v30];

  if ([(EKAutocompleter *)self isRunning])
  {
    allResults = 0;
  }

  else
  {
    allResults = [(EKAutocompleter *)self allResults];
  }

LABEL_27:

  return allResults;
}

- (void)clearLastResults
{
  v3 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKAutocompleter *)v3 clearLastResults];
  }

  contactResults = [(EKAutocompleter *)self contactResults];
  [contactResults removeAllObjects];

  directorySearchQueue = [(EKAutocompleter *)self directorySearchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EKAutocompleter_clearLastResults__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(directorySearchQueue, block);
}

void __35__EKAutocompleter_clearLastResults__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) directorySearchResults];
  [v1 removeAllObjects];
}

- (void)cancelSearch
{
  v8 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  prefix = [a2 prefix];
  v6 = 138412290;
  v7 = prefix;
  _os_log_debug_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_DEBUG, "[EKAutocomplete] Cancel search for %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRunning
{
  if ([(EKAutocompleter *)self autocompleteRunning])
  {
    return 1;
  }

  directorySearchOperation = [(EKAutocompleter *)self directorySearchOperation];
  isExecuting = [directorySearchOperation isExecuting];

  return isExecuting;
}

- (id)allResults
{
  contactResults = [(EKAutocompleter *)self contactResults];
  v4 = [(EKAutocompleter *)self removeIgnoredAddressesFromResults:contactResults];

  return v4;
}

- (id)cnResults
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA0];
  contactResults = [(EKAutocompleter *)self contactResults];
  v5 = [v3 orderedSetWithArray:contactResults];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  contactResults2 = [(EKAutocompleter *)self contactResults];
  v7 = [contactResults2 copy];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        value = [v12 value];
        address = [value address];

        if (address)
        {
          addressesToIgnore = [(EKAutocompleter *)self addressesToIgnore];
          v16 = [addressesToIgnore containsObject:address];

          if (v16)
          {
            [v5 removeObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  array = [v5 array];

  v18 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)setIgnoredAddresses:(id)addresses ignoredAddressesFromParticipants:(id)participants
{
  v26 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  participantsCopy = participants;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(participantsCopy, "count") + objc_msgSend(addressesCopy, "count")}];
  if ([addressesCopy count])
  {
    [v8 addObjectsFromArray:addressesCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = participantsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        emailAddress = [v14 emailAddress];
        v16 = [v14 URL];
        absoluteString = [v16 absoluteString];

        if (![absoluteString hasMailto])
        {
          stringRemovingMailto = 0;
          if (!emailAddress)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v8 addObject:emailAddress];
          goto LABEL_13;
        }

        stringRemovingMailto = [absoluteString stringRemovingMailto];
        if (emailAddress)
        {
          goto LABEL_12;
        }

LABEL_13:
        if (stringRemovingMailto)
        {
          [v8 addObject:stringRemovingMailto];
        }

        if (absoluteString)
        {
          [v8 addObject:absoluteString];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];
  [(EKAutocompleter *)self setIgnoredAddresses:allObjects];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setIgnoredAddresses:(id)addresses
{
  v35[1] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  if (addressesCopy)
  {
    v5 = addressesCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DFA8] setWithArray:v5];
  if ([addressesCopy count])
  {
    selfCopy = self;
    defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
    v35[0] = *MEMORY[0x1E695C208];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v24 = addressesCopy;
    v9 = [defaultProvider unifiedContactsForHandleStrings:addressesCopy keysToFetch:v8];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          emailAddresses = [v15 emailAddresses];
          v17 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(emailAddresses);
                }

                value = [*(*(&v25 + 1) + 8 * j) value];
                [v6 addObject:value];
              }

              v18 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v18);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    self = selfCopy;
    addressesCopy = v24;
  }

  [(EKAutocompleter *)self setAddressesToIgnore:v6];

  v22 = *MEMORY[0x1E69E9840];
}

- (id)removeIgnoredAddressesFromResults:(id)results
{
  resultsCopy = results;
  addressesToIgnore = [(EKAutocompleter *)self addressesToIgnore];
  if ([addressesToIgnore count])
  {
  }

  else
  {
    isEmpty = [(CalBlockList *)self->_blockList isEmpty];

    if (isEmpty)
    {
      v7 = resultsCopy;
      goto LABEL_6;
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__EKAutocompleter_removeIgnoredAddressesFromResults___block_invoke;
  v10[3] = &unk_1E77FD8A0;
  v10[4] = self;
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:v10];
  v7 = [resultsCopy filteredArrayUsingPredicate:v8];

LABEL_6:

  return v7;
}

uint64_t __53__EKAutocompleter_removeIgnoredAddressesFromResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 addressType];

  if (v5 == 1)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [v3 value];
    v8 = [v7 address];
    v9 = [v6 isBlockedWithEmail:v8];
  }

  else
  {
    v10 = [v3 value];
    v11 = [v10 addressType];

    if (v11 != 2)
    {
LABEL_7:
      v15 = [*(a1 + 32) addressesToIgnore];
      v16 = [v3 value];
      v17 = [v16 address];
      v14 = [v15 containsObject:v17] ^ 1;

      goto LABEL_8;
    }

    v12 = *(*(a1 + 32) + 8);
    v7 = [v3 value];
    v8 = [v7 address];
    v9 = [v12 isBlockedWithPhoneNumber:v8];
  }

  v13 = v9;

  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  v44 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  resultsCopy = results;
  selfCopy = self;
  v9 = resultsCopy;
  autocompletionSearchRequest = [(EKAutocompleter *)self autocompletionSearchRequest];

  if (autocompletionSearchRequest == fetchCopy)
  {
    v31 = fetchCopy;
    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      prefix = [(EKAutocompleter *)self prefix];
      *buf = 138412546;
      v41 = prefix;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_INFO, ":: :: CNAutocomplete Update %@ with %@", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v9;
    obj = v9;
    v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v34)
    {
      v33 = *v36;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          value = [v15 value];
          address = [value address];

          resultType = [v15 resultType];
          resultType2 = [v15 resultType];
          [(EKAutocompleter *)selfCopy addressesToIgnore];
          v21 = v20 = selfCopy;
          value2 = [v15 value];
          address2 = [value2 address];
          v24 = [v21 containsObject:address2];

          selfCopy = v20;
          if (address)
          {
            v25 = 1;
          }

          else
          {
            v25 = resultType2 == 3;
          }

          v26 = v25 || resultType == 1;
          if (v26 && (v24 & 1) == 0)
          {
            contactResults = [(EKAutocompleter *)v20 contactResults];
            [contactResults addObject:v15];
          }
        }

        v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v34);
    }

    v9 = v30;
    fetchCopy = v31;
  }

  delegate = [(EKAutocompleter *)selfCopy delegate];
  [delegate autocompleterUpdated:selfCopy];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    prefix = [(EKAutocompleter *)self prefix];
    v11 = 138412546;
    v12 = prefix;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_INFO, ":: :: CNAutocomplete Failed %@ with error %@", &v11, 0x16u);
  }

  [(EKAutocompleter *)self setAutocompleteRunning:0];
  delegate = [(EKAutocompleter *)self delegate];
  [delegate autocompleter:self finishedWithError:errorCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    prefix = [(EKAutocompleter *)self prefix];
    *buf = 138412290;
    v10 = prefix;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_INFO, ":: :: CNAutocomplete Finished %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKAutocompleter_autocompleteFetchDidFinish___block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = *MEMORY[0x1E69E9840];
}

void __46__EKAutocompleter_autocompleteFetchDidFinish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAutocompleteRunning:0];
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleter:*(a1 + 32) finishedWithError:0];
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity
{
  v14 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    prefix = [(EKAutocompleter *)self prefix];
    *buf = 138412290;
    v13 = prefix;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, ":: :: CNAutocomplete Began network activity for %@", buf, 0xCu);
  }

  delegate = [(EKAutocompleter *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__EKAutocompleter_autocompleteFetchDidBeginNetworkActivity___block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __60__EKAutocompleter_autocompleteFetchDidBeginNetworkActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleterDidBeginNetworkActivity:*(a1 + 32)];
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)activity
{
  v14 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    prefix = [(EKAutocompleter *)self prefix];
    *buf = 138412290;
    v13 = prefix;
    _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_INFO, ":: :: CNAutocomplete finished network activity for %@", buf, 0xCu);
  }

  delegate = [(EKAutocompleter *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EKAutocompleter_autocompleteFetchDidEndNetworkActivity___block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58__EKAutocompleter_autocompleteFetchDidEndNetworkActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 autocompleterDidFinishNetworkActivity:*(a1 + 32)];
}

- (id)autocompleteResultsFromDirectoryRecords:(id)records withType:(int64_t)type
{
  v48 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v26 = objc_opt_new();
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = recordsCopy;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v47 count:16];
  if (v6)
  {
    v30 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        preferredAddress = [v8 preferredAddress];
        stringRemovingMailto = [preferredAddress stringRemovingMailto];

        if (stringRemovingMailto)
        {
          preferredAddress2 = stringRemovingMailto;
        }

        else
        {
          preferredAddress2 = [v8 preferredAddress];
          if (!preferredAddress2)
          {
            preferredAddress2 = [v8 displayName];
            if (!preferredAddress2)
            {
              goto LABEL_23;
            }
          }
        }

        if (([v5 containsObject:preferredAddress2] & 1) == 0)
        {
          [v5 addObject:preferredAddress2];
          if (type)
          {
            v12 = 0;
          }

          else
          {
            v41 = 0;
            v42 = &v41;
            v43 = 0x2050000000;
            v13 = getCNAutocompleteNameComponentsClass_softClass;
            v44 = getCNAutocompleteNameComponentsClass_softClass;
            if (!getCNAutocompleteNameComponentsClass_softClass)
            {
              v36 = MEMORY[0x1E69E9820];
              v37 = 3221225472;
              v38 = __getCNAutocompleteNameComponentsClass_block_invoke;
              v39 = &unk_1E77FCFD8;
              v40 = &v41;
              __getCNAutocompleteNameComponentsClass_block_invoke(&v36);
              v13 = v42[3];
            }

            v14 = v13;
            _Block_object_dispose(&v41, 8);
            firstName = [v8 firstName];
            lastName = [v8 lastName];
            v12 = [v13 nameComponentsWithFirstName:firstName lastName:lastName nickname:0 nameSuffix:0];
          }

          principalPath = [v8 principalPath];

          if (principalPath)
          {
            v45 = EKDirectoryRecordPrincipalPathKey;
            principalPath2 = [v8 principalPath];
            v46 = principalPath2;
            principalPath = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__EKAutocompleter_autocompleteResultsFromDirectoryRecords_withType___block_invoke;
          aBlock[3] = &unk_1E77FD8F0;
          aBlock[4] = self;
          aBlock[5] = v8;
          v19 = _Block_copy(aBlock);
          v41 = 0;
          v42 = &v41;
          v43 = 0x2050000000;
          v20 = getCNAutocompleteResultClass_softClass;
          v44 = getCNAutocompleteResultClass_softClass;
          if (!getCNAutocompleteResultClass_softClass)
          {
            v36 = MEMORY[0x1E69E9820];
            v37 = 3221225472;
            v38 = __getCNAutocompleteResultClass_block_invoke;
            v39 = &unk_1E77FCFD8;
            v40 = &v41;
            __getCNAutocompleteResultClass_block_invoke(&v36);
            v20 = v42[3];
          }

          v21 = v20;
          _Block_object_dispose(&v41, 8);
          displayName = [v8 displayName];
          v23 = [v20 calDAVResultWithAddress:stringRemovingMailto displayName:displayName nameComponents:v12 resultType:type groupMembersProvider:v19 userInfo:principalPath];

          if (v23)
          {
            [v26 addObject:v23];
          }
        }

LABEL_23:
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v47 count:16];
    }

    while (v6);
  }

  [v26 sortUsingComparator:&__block_literal_global_13];
  v24 = *MEMORY[0x1E69E9840];

  return v26;
}

id __68__EKAutocompleter_autocompleteResultsFromDirectoryRecords_withType___block_invoke(uint64_t a1, void *a2)
{
  v4 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = objc_opt_new();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__EKAutocompleter_autocompleteResultsFromDirectoryRecords_withType___block_invoke_64;
  aBlock[3] = &unk_1E77FD8C8;
  v21 = &v23;
  v22 = &v33;
  v5 = *(a1 + 32);
  v20 = &v29;
  aBlock[4] = v5;
  v6 = v4;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [EKGroupExpansionOperation alloc];
  v9 = [*(a1 + 32) source];
  v10 = [(EKGroupExpansionOperation *)v8 initWithSource:v9 group:*(a1 + 40) completionBlock:v7];

  [(EKGroupExpansionOperation *)v10 start];
  v11 = dispatch_time(0, 30000000000);
  v12 = dispatch_semaphore_wait(v6, v11);
  v30[3] = v12;
  if (v12 || v24[5])
  {
    if (a2)
    {
      v13 = v24[5];
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = [v15 initWithDomain:*MEMORY[0x1E6999880] code:7 userInfo:0];
      }

      *a2 = v14;
    }

    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [v34[5] copy];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v16;
}

void __68__EKAutocompleter_autocompleteResultsFromDirectoryRecords_withType___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = v5;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    if (v5)
    {
      v7 = *(*(a1 + 56) + 8);
      v8 = v5;
      v9 = *(v7 + 40);
      *(v7 + 40) = v8;
    }

    else
    {
      v10 = *(*(*(a1 + 64) + 8) + 40);
      v11 = *(a1 + 32);
      v12 = [v21 locations];
      v13 = [v11 autocompleteResultsFromDirectoryRecords:v12 withType:2];
      [v10 addObjectsFromArray:v13];

      v14 = *(*(*(a1 + 64) + 8) + 40);
      v15 = *(a1 + 32);
      v16 = [v21 resources];
      v17 = [v15 autocompleteResultsFromDirectoryRecords:v16 withType:3];
      [v14 addObjectsFromArray:v17];

      v18 = *(*(*(a1 + 64) + 8) + 40);
      v19 = *(a1 + 32);
      v9 = [v21 people];
      v20 = [v19 autocompleteResultsFromDirectoryRecords:v9 withType:0];
      [v18 addObjectsFromArray:v20];
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

uint64_t __68__EKAutocompleter_autocompleteResultsFromDirectoryRecords_withType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)directorySearchWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(EKAutocompleter *)self useDirectorySearch])
  {
    source = [(EKAutocompleter *)self source];
    if ([source sourceType] == 2 || objc_msgSend(source, "sourceType") == 3 || objc_msgSend(source, "sourceType") == 1)
    {
      directorySearchOperation = [(EKAutocompleter *)self directorySearchOperation];
      [directorySearchOperation cancel];

      directorySearchQueue = [(EKAutocompleter *)self directorySearchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__EKAutocompleter_directorySearchWithCompletion___block_invoke;
      block[3] = &unk_1E77FD418;
      block[4] = self;
      dispatch_sync(directorySearchQueue, block);

      v8 = objc_opt_new();
      prefix = [(EKAutocompleter *)self prefix];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v11 = [prefix componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
      [v8 setTerms:v12];

      [v8 setFindUsers:{-[EKAutocompleter findPeople](self, "findPeople")}];
      [v8 setFindGroups:{-[EKAutocompleter findGroups](self, "findGroups")}];
      [v8 setFindLocations:{-[EKAutocompleter findRooms](self, "findRooms")}];
      [v8 setFindResources:{-[EKAutocompleter findResources](self, "findResources")}];
      objc_initWeak(&location, self);
      directorySearchOperation2 = [(EKAutocompleter *)self directorySearchOperation];
      objc_initWeak(&from, directorySearchOperation2);

      v14 = [EKDirectorySearchOperation alloc];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_2;
      v24[3] = &unk_1E77FD938;
      objc_copyWeak(&v25, &location);
      v15 = [(EKDirectorySearchOperation *)v14 initWithSource:source query:v8 resultsBlock:v24];
      [(EKAutocompleter *)self setDirectorySearchOperation:v15];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_4;
      v20[3] = &unk_1E77FD988;
      objc_copyWeak(&v22, &location);
      v21 = completionCopy;
      objc_copyWeak(&v23, &from);
      directorySearchOperation3 = [(EKAutocompleter *)self directorySearchOperation];
      [directorySearchOperation3 setCompletionBlock:v20];

      directorySearchOperation4 = [(EKAutocompleter *)self directorySearchOperation];
      [directorySearchOperation4 start];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __49__EKAutocompleter_directorySearchWithCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) directorySearchResults];
  [v1 removeAllObjects];
}

void __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_opt_new();
    v6 = [v3 locations];
    v7 = [WeakRetained autocompleteResultsFromDirectoryRecords:v6 withType:2];
    [v5 addObjectsFromArray:v7];

    v8 = [v3 resources];
    v9 = [WeakRetained autocompleteResultsFromDirectoryRecords:v8 withType:3];
    [v5 addObjectsFromArray:v9];

    v10 = [v3 people];
    v11 = [WeakRetained autocompleteResultsFromDirectoryRecords:v10 withType:0];
    [v5 addObjectsFromArray:v11];

    v12 = [v3 groups];
    v13 = [WeakRetained autocompleteResultsFromDirectoryRecords:v12 withType:1];
    [v5 addObjectsFromArray:v13];

    v14 = [WeakRetained directorySearchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_3;
    v16[3] = &unk_1E77FD580;
    v17 = WeakRetained;
    v18 = v5;
    v15 = v5;
    dispatch_async(v14, v16);
  }
}

void __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) directorySearchResults];
  [v2 addObjectsFromArray:*(a1 + 40)];
}

void __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained directorySearchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_5;
    block[3] = &unk_1E77FD960;
    v7 = a1[4];
    v6 = v3;
    objc_copyWeak(&v8, a1 + 6);
    dispatch_async(v4, block);

    objc_destroyWeak(&v8);
  }
}

void __49__EKAutocompleter_directorySearchWithCompletion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) directorySearchResults];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained error];
  (*(v2 + 16))(v2, v5, v4);
}

- (EKAutocompleterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchFor:(uint64_t)a1 onSource:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A805E000, a2, OS_LOG_TYPE_DEBUG, "[EKAutocomplete] Search for %@ invoked", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)searchFor:(uint64_t)a1 onSource:(void *)a2 withContext:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 allResults];
  v8 = 138412546;
  v9 = a1;
  v10 = 2048;
  v11 = [v6 count];
  _os_log_debug_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEBUG, "[EKAutocomplete] Same search (%@), ret %lu results.", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end