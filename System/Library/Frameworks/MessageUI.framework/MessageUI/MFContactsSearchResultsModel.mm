@interface MFContactsSearchResultsModel
- (BOOL)_shouldProcessResultsAfterFinishingType:(unint64_t)type;
- (MFContactsSearchResultsModel)initWithResultTypeSortOrderComparator:(void *)comparator resultTypePriorityComparator:(void *)priorityComparator favorMobileNumbers:(BOOL)numbers;
- (id)_bestRecipientForAddress:(id)address fallback:(id)fallback;
- (id)_dictionaryForResultType:(unint64_t)type;
- (void)_addBestRecipientsForRecipients:(id)recipients excluding:(id)excluding toArray:(id)array;
- (void)_addResults:(id)results ofType:(unint64_t)type;
- (void)_appendSortedResultsOfType:(unint64_t)type excluding:(id)excluding toResults:(id)results;
- (void)_enumerateSearchResultTypesInSortOrderUsingBlock:(id)block;
- (void)addResults:(id)results ofType:(unint64_t)type;
- (void)dealloc;
- (void)processAddedResultsOfType:(unint64_t)type completion:(id)completion;
- (void)reset;
@end

@implementation MFContactsSearchResultsModel

- (MFContactsSearchResultsModel)initWithResultTypeSortOrderComparator:(void *)comparator resultTypePriorityComparator:(void *)priorityComparator favorMobileNumbers:(BOOL)numbers
{
  v25.receiver = self;
  v25.super_class = MFContactsSearchResultsModel;
  v8 = [(MFContactsSearchResultsModel *)&v25 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v8->_queue;
    v8->_queue = v9;

    [(NSOperationQueue *)v8->_queue setMaxConcurrentOperationCount:1];
    v8->_favorMobileNumbers = numbers;
    v8->_resultTypesSortOrder = _CopySortedArrayWithValues(comparator, 1, v11, v12, v13, v14, v15, v16, 2);
    v8->_resultTypesPriorityOrder = _CopySortedArrayWithValues(priorityComparator, 2, v17, v18, v19, v20, v21, v22, 1);
    Count = CFArrayGetCount(v8->_resultTypesSortOrder);
    v8->_finishedResultTypes = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, 0);
    v8->_preferredType = CFArrayGetValueAtIndex(v8->_resultTypesPriorityOrder, 0);
  }

  return v8;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  [(NSOperationQueue *)self->_queue waitUntilAllOperationsAreFinished];
  resultTypesSortOrder = self->_resultTypesSortOrder;
  if (resultTypesSortOrder)
  {
    CFRelease(resultTypesSortOrder);
  }

  resultTypesPriorityOrder = self->_resultTypesPriorityOrder;
  if (resultTypesPriorityOrder)
  {
    CFRelease(resultTypesPriorityOrder);
  }

  finishedResultTypes = self->_finishedResultTypes;
  if (finishedResultTypes)
  {
    CFRelease(finishedResultTypes);
  }

  v6.receiver = self;
  v6.super_class = MFContactsSearchResultsModel;
  [(MFContactsSearchResultsModel *)&v6 dealloc];
}

- (void)reset
{
  atomic_fetch_add(&self->_resetCount, 1u);
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__MFContactsSearchResultsModel_reset__block_invoke;
  v3[3] = &unk_1E806C570;
  v3[4] = self;
  [(NSOperationQueue *)queue addOperationWithBlock:v3];
}

void __37__MFContactsSearchResultsModel_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  CFSetRemoveAllValues(*(*(a1 + 32) + 72));
  atomic_fetch_add((*(a1 + 32) + 92), 0xFFFFFFFF);
}

- (void)_addResults:(id)results ofType:(unint64_t)type
{
  resultsCopy = results;
  v19 = resultsCopy;
  if (type > 3)
  {
    if (type != 4)
    {
      if (type != 8)
      {
        goto LABEL_19;
      }

      serverSearchResultsByAddress = self->_serverSearchResultsByAddress;
      if (!serverSearchResultsByAddress)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_serverSearchResultsByAddress;
        self->_serverSearchResultsByAddress = v9;

        serverSearchResultsByAddress = self->_serverSearchResultsByAddress;
        resultsCopy = v19;
      }

      localSearchResultsByAddress = self->_localSearchResultsByAddress;
      goto LABEL_18;
    }

    v11 = _filterOutExistingRecipientsFromResults(resultsCopy, self->_enteredRecipients);

    objc_storeStrong(&self->_infrequentRecentSearchResults, v11);
    recentRecipientsByAddress = self->_recentRecipientsByAddress;
    if (!recentRecipientsByAddress)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = self->_recentRecipientsByAddress;
      self->_recentRecipientsByAddress = v15;

      recentRecipientsByAddress = self->_recentRecipientsByAddress;
    }

LABEL_13:
    v19 = v11;
    addEntriesForRecipientsIfNotInDictionary(v11, 0, recentRecipientsByAddress);
    goto LABEL_19;
  }

  if (type == 1)
  {
    v11 = _filterOutExistingRecipientsFromResults(resultsCopy, self->_enteredRecipients);

    objc_storeStrong(&self->_recentSearchResults, v11);
    recentRecipientsByAddress = self->_recentRecipientsByAddress;
    if (!recentRecipientsByAddress)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = self->_recentRecipientsByAddress;
      self->_recentRecipientsByAddress = v13;

      recentRecipientsByAddress = self->_recentRecipientsByAddress;
    }

    goto LABEL_13;
  }

  if (type != 2)
  {
    goto LABEL_19;
  }

  serverSearchResultsByAddress = self->_localSearchResultsByAddress;
  if (serverSearchResultsByAddress)
  {
    localSearchResultsByAddress = 0;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = self->_localSearchResultsByAddress;
    self->_localSearchResultsByAddress = v17;

    localSearchResultsByAddress = 0;
    serverSearchResultsByAddress = self->_localSearchResultsByAddress;
    resultsCopy = v19;
  }

LABEL_18:
  addEntriesForRecipientsIfNotInDictionary(resultsCopy, localSearchResultsByAddress, serverSearchResultsByAddress);
LABEL_19:
}

- (void)addResults:(id)results ofType:(unint64_t)type
{
  v5 = [_MFSearchAddResultsOperation operationWithResults:results ofType:type consumer:self];
  [(NSOperationQueue *)self->_queue addOperation:?];
}

- (BOOL)_shouldProcessResultsAfterFinishingType:(unint64_t)type
{
  CFSetAddValue(self->_finishedResultTypes, type);
  if (!CFSetContainsValue(self->_finishedResultTypes, self->_preferredType))
  {
    return 0;
  }

  Count = CFArrayGetCount(self->_resultTypesSortOrder);
  ValueAtIndex = CFArrayGetValueAtIndex(self->_resultTypesSortOrder, 0);
  if (ValueAtIndex == type || Count < 1)
  {
    return 1;
  }

  v9 = ValueAtIndex;
  v10 = 1;
  do
  {
    v11 = CFSetContainsValue(self->_finishedResultTypes, v9);
    v8 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v9 = CFArrayGetValueAtIndex(self->_resultTypesSortOrder, v10);
  }

  while (v9 != type && v10++ < Count);
  return v8;
}

- (void)_enumerateSearchResultTypesInSortOrderUsingBlock:(id)block
{
  blockCopy = block;
  Count = CFArrayGetCount(self->_resultTypesSortOrder);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_resultTypesSortOrder, i);
      blockCopy[2](blockCopy, ValueAtIndex);
    }
  }
}

- (id)_bestRecipientForAddress:(id)address fallback:(id)fallback
{
  addressCopy = address;
  fallbackCopy = fallback;
  Count = CFArrayGetCount(self->_resultTypesPriorityOrder);
  v9 = fallbackCopy;
  if (Count >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(MFContactsSearchResultsModel *)self _dictionaryForResultType:CFArrayGetValueAtIndex(self->_resultTypesPriorityOrder, v10)];
      v12 = v11;
      if (v11)
      {
        v9 = [v11 objectForKey:addressCopy];
        if (v9)
        {
          break;
        }
      }

      if (Count == ++v10)
      {
        v9 = fallbackCopy;
        goto LABEL_8;
      }
    }
  }

LABEL_8:

  return v9;
}

- (void)_addBestRecipientsForRecipients:(id)recipients excluding:(id)excluding toArray:(id)array
{
  v23 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  excludingCopy = excluding;
  arrayCopy = array;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = recipientsCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 isGroup])
        {
          [v15 address];
        }

        else
        {
          [v15 normalizedAddress];
        }
        v16 = ;
        if (([excludingCopy containsObject:v16] & 1) == 0)
        {
          v17 = [(MFContactsSearchResultsModel *)self _bestRecipientForAddress:v16 fallback:v15];
          [arrayCopy addObject:v17];
          [excludingCopy addObject:v16];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)_appendSortedResultsOfType:(unint64_t)type excluding:(id)excluding toResults:(id)results
{
  excludingCopy = excluding;
  resultsCopy = results;
  if (type == 4)
  {
    infrequentRecentSearchResults = self->_infrequentRecentSearchResults;
LABEL_5:
    v11 = infrequentRecentSearchResults;
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
    infrequentRecentSearchResults = self->_recentSearchResults;
    goto LABEL_5;
  }

  v12 = [(MFContactsSearchResultsModel *)self _dictionaryForResultType:type];
  allValues = [v12 allValues];

  SortOrdering = ABPersonGetSortOrdering();
  favorMobileNumbers = self->_favorMobileNumbers;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__MFContactsSearchResultsModel__appendSortedResultsOfType_excluding_toResults___block_invoke;
  v16[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v17 = SortOrdering;
  v18 = favorMobileNumbers;
  v11 = [allValues sortedArrayWithOptions:1 usingComparator:v16];

  if (v11)
  {
LABEL_8:
    [(MFContactsSearchResultsModel *)self _addBestRecipientsForRecipients:v11 excluding:excludingCopy toArray:resultsCopy];
  }

LABEL_9:
}

uint64_t __79__MFContactsSearchResultsModel__appendSortedResultsOfType_excluding_toResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [v7 property];
  v10 = [v8 property];
  v11 = v10;
  if (v9 != v10)
  {
    if (*MEMORY[0x1E698A548] == v9)
    {
      v12 = -1;
      goto LABEL_37;
    }

    if (*MEMORY[0x1E698A548] == v10)
    {
      v12 = 1;
      goto LABEL_37;
    }
  }

  v13 = [v7 record];
  v14 = [v8 record];
  if (!v13 || !v14)
  {
    __assert_rtn("compareComposeRecipients", "MFContactsSearchResultsModel.m", 335, "false");
  }

  v15 = ABPersonComparePeopleByName(v13, v14, *(a1 + 32));
  v12 = v15;
  if (v9 == v11 && *(a1 + 36) && v15 == kCFCompareEqualTo)
  {
    if (v9 != *MEMORY[0x1E698A548])
    {
      v12 = 0;
      goto LABEL_37;
    }

    v16 = [v7 unlocalizedLabel];
    v17 = [v8 unlocalizedLabel];
    v18 = v17;
    if (v16)
    {
      if (([(__CFString *)v16 isEqualToString:v17]& 1) == 0)
      {
        v19 = *MEMORY[0x1E698A520];
        if (CFStringCompare(*MEMORY[0x1E698A520], v16, 0) == kCFCompareEqualTo)
        {
          v12 = -1;
          goto LABEL_36;
        }

        if (!v18)
        {
          v20 = 1;
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

    else if (v17)
    {
      v19 = *MEMORY[0x1E698A520];
LABEL_20:
      if (CFStringCompare(v19, v18, 0))
      {
        if (!v16)
        {
          v21 = *MEMORY[0x1E698A530];
LABEL_35:
          v12 = CFStringCompare(v21, v18, 0) == kCFCompareEqualTo;
          goto LABEL_36;
        }

        v20 = 0;
LABEL_23:
        v21 = *MEMORY[0x1E698A530];
        v22 = CFStringCompare(*MEMORY[0x1E698A530], v16, 0);
        if (v22)
        {
          v23 = v20;
        }

        else
        {
          v23 = 1;
        }

        if (v22)
        {
          v12 = 0;
        }

        else
        {
          v12 = -1;
        }

        if (v23)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v12 = 1;
LABEL_36:

      goto LABEL_37;
    }

    v12 = 0;
    goto LABEL_36;
  }

LABEL_37:

  return v12;
}

- (void)processAddedResultsOfType:(unint64_t)type completion:(id)completion
{
  v5 = [_MFSearchProcessResultsOperation operationWithResultsOfType:type completion:completion consumer:self];
  [(NSOperationQueue *)self->_queue addOperation:?];
}

- (id)_dictionaryForResultType:(unint64_t)type
{
  v4 = type - 1;
  if (type - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = *(&self->super.isa + qword_1BE9857B0[v4]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end