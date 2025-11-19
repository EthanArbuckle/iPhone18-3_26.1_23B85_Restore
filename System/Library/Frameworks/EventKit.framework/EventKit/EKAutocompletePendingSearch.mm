@interface EKAutocompletePendingSearch
+ (id)_eventKitQueue;
+ (id)_queue;
- (BOOL)_shouldReturnResultForEvent:(id)a3 considerReadonlyEvents:(BOOL)a4;
- (EKAutocompletePendingSearch)initWithEventStore:(id)a3 searchString:(id)a4 maximumResultCount:(unint64_t)a5 ignoreScheduledEvents:(BOOL)a6 initialEvent:(id)a7 pasteboardItemProvider:(id)a8 completionHandler:(id)a9;
- (EKAutocompletePendingSearch)searchWithString:(id)a3 completionHandler:(id)a4;
- (id)firstNaturalLanguageResultWithSearchString:(id)a3;
- (void)cancel;
@end

@implementation EKAutocompletePendingSearch

- (EKAutocompletePendingSearch)initWithEventStore:(id)a3 searchString:(id)a4 maximumResultCount:(unint64_t)a5 ignoreScheduledEvents:(BOOL)a6 initialEvent:(id)a7 pasteboardItemProvider:(id)a8 completionHandler:(id)a9
{
  v23 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v24.receiver = self;
  v24.super_class = EKAutocompletePendingSearch;
  v19 = [(EKAutocompletePendingSearch *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_eventStore, a3);
    v20->_maximumResultCount = a5;
    v20->_ignoreScheduledEvents = a6;
    objc_storeStrong(&v20->_initialEvent, a7);
    objc_storeStrong(&v20->_pasteboardItemProvider, a8);
    [(EKAutocompletePendingSearch *)v20 searchWithString:v15 completionHandler:v18];
  }

  return v20;
}

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[EKAutocompletePendingSearch _queue];
  }

  v3 = _queue_queue;

  return v3;
}

uint64_t __37__EKAutocompletePendingSearch__queue__block_invoke()
{
  _queue_queue = dispatch_queue_create("com.apple.mobilecal.autocompletesearchcontroller.internalqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_eventKitQueue
{
  if (_eventKitQueue_onceToken != -1)
  {
    +[EKAutocompletePendingSearch _eventKitQueue];
  }

  v3 = _eventKitQueue_queue;

  return v3;
}

uint64_t __45__EKAutocompletePendingSearch__eventKitQueue__block_invoke()
{
  _eventKitQueue_queue = dispatch_queue_create("com.apple.mobilecal.autocompletesearchcontroller.eventkitqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)firstNaturalLanguageResultWithSearchString:(id)a3
{
  v4 = [(EKEventStore *)self->_eventStore predicateForNaturalLanguageSuggestedEventsWithSearchString:a3];
  v5 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:v4];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = objc_opt_new();
    v8 = [v6 uniqueID];
    [v7 setIdentifier:v8];

    v9 = [v6 title];
    [v7 setTitle:v9];

    [v7 setNaturalLanguageSuggestedEvent:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldReturnResultForEvent:(id)a3 considerReadonlyEvents:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = [v6 calendar];
    if ([v8 allowsContentModifications])
    {
    }

    else
    {
      v9 = [v7 calendar];
      v10 = [v9 isNaturalLanguageSuggestedEventCalendar];

      if (!v10)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_12;
      }
    }
  }

  if ([v7 hasAttendees] && self->_ignoreScheduledEvents)
  {
    goto LABEL_8;
  }

  initialEvent = self->_initialEvent;
  if (initialEvent)
  {
    v13 = [(EKObject *)initialEvent uniqueIdentifier];
    v14 = [v7 uniqueIdentifier];
    v15 = [v13 isEqualToString:v14];

    v11 = v15 ^ 1;
  }

  else
  {
    v11 = 1;
  }

LABEL_12:

  return v11 & 1;
}

- (EKAutocompletePendingSearch)searchWithString:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_pendingSearch)
  {
    [EKAutocompletePendingSearch searchWithString:a2 completionHandler:self];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  v26 = 0;
  v9 = [objc_opt_class() _eventKitQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke;
  block[3] = &unk_1E77FD688;
  v24 = v25;
  block[4] = self;
  v10 = v7;
  v23 = v10;
  dispatch_async(v9, block);

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKAutocompletePendingSearch searchWithString:completionHandler:];
  }

  v11 = *MEMORY[0x1E6993188];
  v12 = MEMORY[0x1E6993050];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_20;
  v18[3] = &unk_1E77FDB90;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v14 = v8;
  v20 = v14;
  v21 = v25;
  v15 = [v12 searchWithString:v13 clientBundleID:v11 completionHandler:v18];
  pendingSearch = self->_pendingSearch;
  self->_pendingSearch = v15;

  _Block_object_dispose(v25, 8);
  return result;
}

uint64_t __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstNaturalLanguageResultWithSearchString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() _queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2;
  v14[3] = &unk_1E77FDB68;
  v9 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v5;
  v16 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v18 = v10;
  v19 = v11;
  v17 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v8, v14);
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_1();
  }

  if (*(*(a1 + 32) + 48))
  {
    if (*(a1 + 40))
    {
      v2 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_2(a1, (a1 + 40), v2);
      }

      v3 = *(a1 + 32);
      v4 = *(v3 + 48);
      *(v3 + 48) = 0;

      v5 = *(a1 + 40);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v6 = [objc_opt_class() _eventKitQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21;
      block[3] = &unk_1E77FDB40;
      v16 = *(a1 + 72);
      *&v7 = *(a1 + 56);
      *(&v7 + 1) = *(a1 + 32);
      v11 = v7;
      v8 = *(a1 + 48);
      v15 = *(a1 + 64);
      v9 = *(a1 + 40);
      *&v10 = v8;
      *(&v10 + 1) = v9;
      v13 = v11;
      v14 = v10;
      dispatch_async(v6, block);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_3();
  }
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_1();
  }

  v41 = objc_opt_new();
  v45 = objc_opt_new();
  v44 = [MEMORY[0x1E695DF00] date];
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2)
  {
    [*(a1 + 32) insertObject:v2 atIndex:0];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v3)
  {
    v4 = 0;
    v43 = *v60;
LABEL_7:
    v5 = 0;
    while (1)
    {
      if (*v60 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v59 + 1) + 8 * v5);
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v7 = *(a1 + 40);
      v8 = [objc_opt_class() _queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_25;
      block[3] = &unk_1E77FD530;
      block[4] = *(a1 + 40);
      block[5] = &v55;
      dispatch_sync(v8, block);

      if (*(v56 + 24) == 1)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_3();
        }

        _Block_object_dispose(&v55, 8);

        goto LABEL_56;
      }

      v9 = [MEMORY[0x1E695DF00] date];
      [v9 timeIntervalSinceDate:v44];
      if (v10 >= 0.5)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_2();
        }

        _Block_object_dispose(&v55, 8);
        goto LABEL_37;
      }

      v11 = [v6 title];
      v12 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v13 = [v11 stringByTrimmingCharactersInSet:v12];
      v14 = [v13 lowercaseString];

      v15 = [v45 objectForKey:v14];
      if (!v4 || v15 != 0)
      {
        break;
      }

      v4 = 1;
LABEL_28:

      _Block_object_dispose(&v55, 8);
      if (v3 == ++v5)
      {
        v3 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v3)
        {
          goto LABEL_7;
        }

        goto LABEL_37;
      }
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = [v6 identifier];
    v18 = [v16 eventWithUniqueId:v17];

    if (([*(a1 + 40) _shouldReturnResultForEvent:v18 considerReadonlyEvents:0] & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }

    if (v15)
    {
      if ([(EKAutocompleteSearchResult *)v15 source]== 2)
      {
LABEL_24:
        if (*(*(a1 + 40) + 16))
        {
          v4 = [v41 count] >= *(*(a1 + 40) + 16);
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v19 = [v6 isNaturalLanguageSuggestedEvent];
      v20 = [EKAutocompleteSearchResult alloc];
      if (v19)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

      v15 = [(EKAutocompleteSearchResult *)v20 initWithSource:v21, v41];
      [v45 setObject:v15 forKey:v14];
      [v41 addObject:v15];
      -[EKAutocompleteSearchResult setAllDay:](v15, "setAllDay:", [v18 isAllDay]);
    }

    [(EKAutocompleteSearchResult *)v15 updateSelfFromEvent:v18, v41];
    goto LABEL_24;
  }

LABEL_37:

  v22 = *(*(a1 + 40) + 40);
  if (v22)
  {
    v23 = [v22 eventsFromPasteboard];
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v25 = v23;
    v26 = 0;
    v27 = [v25 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v27)
    {
      v28 = *v51;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v50 + 1) + 8 * i);
          if ([*(a1 + 40) _shouldReturnResultForEvent:v30 considerReadonlyEvents:{1, v41}])
          {
            if ([*(a1 + 48) length])
            {
              v31 = [v30 title];
              v32 = [v31 containsCaseAndDiacriticInsensitive:*(a1 + 48)];

              v26 |= v32;
            }

            else
            {
              v26 = 1;
            }

            v33 = [[EKAutocompleteSearchResult alloc] initWithSource:3];
            -[EKAutocompleteSearchResult setAllDay:](v33, "setAllDay:", [v30 isAllDay]);
            [v30 travelTime];
            [(EKAutocompleteSearchResult *)v33 setTravelTime:?];
            v34 = [v30 travelStartLocation];
            [(EKAutocompleteSearchResult *)v33 setTravelStartLocation:v34];

            [(EKAutocompleteSearchResult *)v33 updateSelfFromEvent:v30];
            -[EKAutocompleteSearchResult setCalendarColor:](v33, "setCalendarColor:", [*(*(a1 + 40) + 40) colorOfCalendarToPasteTo]);
            [v24 addObject:v33];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v27);
    }

    if ((([v24 count] != 0) & v26) == 1)
    {
      v35 = [[EKAutocompleteSearchResult alloc] initWithSource:4];
      [(EKAutocompleteSearchResult *)v35 setPasteboardResults:v24];
      v36 = [v41 firstObject];
      v37 = [v36 source] == 2;

      [v41 insertObject:v35 atIndex:v37];
    }
  }

  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_21_cold_4();
  }

  v38 = *(a1 + 40);
  v39 = [objc_opt_class() _queue];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28;
  v46[3] = &unk_1E77FDB18;
  v46[4] = *(a1 + 40);
  v49 = *(a1 + 64);
  v47 = v41;
  v48 = *(a1 + 56);
  dispatch_async(v39, v46);

LABEL_56:
  v40 = *MEMORY[0x1E69E9840];
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28(void *a1)
{
  v2 = *(a1[4] + 48);
  v3 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28_cold_1();
    }

    v4 = a1[4];
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v6 = a1[6];
    v7 = a1[5];
    (*(a1[7] + 16))();
  }

  else if (v3)
  {
    __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_28_cold_2();
  }
}

- (void)cancel
{
  v3 = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKAutocompletePendingSearch_cancel__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __37__EKAutocompletePendingSearch_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

- (void)searchWithString:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKAutocompleteSearch.m" lineNumber:129 description:@"searchWithString:completionHandler: called multiple times"];
}

void __66__EKAutocompletePendingSearch_searchWithString_completionHandler___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Spotlight query controller returned an error when searching for string (%@), error: %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end