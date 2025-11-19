@interface EKPredicateSearch
+ (id)searchWithEntityClass:(Class)a3 predicate:(id)a4 store:(id)a5;
+ (id)signpostHandle;
- (EKPredicateSearch)initWithEntityClass:(Class)a3 predicate:(id)a4 store:(id)a5;
- (id)_createOSActivity;
- (id)fetchObjectIDs;
- (id)runSynchronously;
- (id)startWithCompletion:(id)a3 queue:(id)a4;
- (void)_createOSActivity;
- (void)_startActivityWithCompletion:(id)a3 synchronous:(BOOL)a4 queue:(id)a5;
- (void)_startFetchObjectIDsActivityWithCompletion:(id)a3 synchronous:(BOOL)a4 queue:(id)a5;
- (void)cancel;
- (void)filterSkippedReminders:(id)a3;
- (void)signpostEndWithError:(int)a3 count:(unint64_t)a4;
- (void)signpostStart;
@end

@implementation EKPredicateSearch

- (id)runSynchronously
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKPredicateSearch_runSynchronously__block_invoke;
  v4[3] = &unk_1E77FE7A0;
  v4[4] = &v5;
  [(EKPredicateSearch *)self _startActivityWithCompletion:v4 synchronous:1 queue:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_createOSActivity
{
  p_predicate = &self->_predicate;
  predicate = self->_predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = "CADEventPredicate";
  }

  else
  {
    v5 = *p_predicate;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = "CADNotifiableEventsPredicate";
    }

    else
    {
      v6 = *p_predicate;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = "CADEventsForAssistantSearchPredicate";
      }

      else
      {
        v7 = *p_predicate;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = "CADNotificationCenterVisibleEventsPredicate";
        }

        else
        {
          v8 = *p_predicate;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = "CADUnacknowledgedEventsPredicate";
          }

          else
          {
            v9 = *p_predicate;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = "CADUnalertedEventsPredicate";
            }

            else
            {
              v10 = *p_predicate;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v4 = "CADRespondedEventsPredicate";
              }

              else
              {
                v11 = *p_predicate;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v4 = "CADUpcomingEventsPredicate";
                }

                else
                {
                  v12 = *p_predicate;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v4 = "EKMasterEventsPredicate";
                  }

                  else
                  {
                    v13 = *p_predicate;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v4 = "EKScheduleAgentClientEventsPredicate";
                    }

                    else
                    {
                      v14 = *p_predicate;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v4 = "CADTravelEventsPredicate";
                      }

                      else
                      {
                        v15 = *p_predicate;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v4 = "CADUpNextEventsPredicate";
                        }

                        else
                        {
                          v16 = *p_predicate;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v4 = "CADContactEventsPredicate";
                          }

                          else
                          {
                            v17 = *p_predicate;
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v4 = "CADEventCreatedFromSuggestionPredicate";
                            }

                            else
                            {
                              v18 = *p_predicate;
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v4 = "CADCalendarItemsWithExternalIdentifierPredicate";
                              }

                              else
                              {
                                v19 = *p_predicate;
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v4 = "CADPropertySearchPredicate";
                                }

                                else
                                {
                                  v20 = *p_predicate;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v4 = "CADEventTimeWindowPredicate";
                                  }

                                  else
                                  {
                                    v21 = *p_predicate;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v4 = "CADNaturalLanguageSuggestedEventsSearchPredicate";
                                    }

                                    else
                                    {
                                      v22 = *p_predicate;
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v4 = "CADEventsForConferenceURLPredicate";
                                      }

                                      else
                                      {
                                        v23 = EKLogHandle;
                                        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                                        {
                                          [(EKPredicateSearch *)p_predicate _createOSActivity];
                                        }

                                        v4 = "Unknown Predicate Search";
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v24 = _os_activity_create(&dword_1A805E000, v4, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v24;
}

- (void)signpostStart
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[EKPredicateSearch signpostHandle];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  predicate = self->_predicate;
  v6 = objc_opt_respondsToSelector();
  v7 = self->_predicate;
  if (v6)
  {
    v15 = +[EKPredicateSearch signpostHandle];
    [NSPredicate beginSignpostWithHandle:v7 signpostID:"beginSignpostWithHandle:signpostID:"];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = [(NSPredicate *)self->_predicate predicateFormat];
    v10 = +[EKPredicateSearch signpostHandle];
    v11 = v10;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = self->_predicate;
      *buf = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v9;
      v13 = v17;
      _os_signpost_emit_with_name_impl(&dword_1A805E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%@", buf, 0x16u);
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

+ (id)signpostHandle
{
  if (signpostHandle_onceToken != -1)
  {
    +[EKPredicateSearch signpostHandle];
  }

  v3 = signpostHandle_signpostHandle;

  return v3;
}

- (id)fetchObjectIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__EKPredicateSearch_fetchObjectIDs__block_invoke;
  v4[3] = &unk_1E77FE7A0;
  v4[4] = &v5;
  [(EKPredicateSearch *)self _startFetchObjectIDsActivityWithCompletion:v4 synchronous:1 queue:0];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)searchWithEntityClass:(Class)a3 predicate:(id)a4 store:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithEntityClass:a3 predicate:v9 store:v8];

  return v10;
}

uint64_t __35__EKPredicateSearch_signpostHandle__block_invoke()
{
  signpostHandle_signpostHandle = os_log_create(ekSubSystem, "EKPredicateSearch");

  return MEMORY[0x1EEE66BB8]();
}

- (EKPredicateSearch)initWithEntityClass:(Class)a3 predicate:(id)a4 store:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EKPredicateSearch;
  v11 = [(EKPredicateSearch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_entityClass = a3;
    objc_storeStrong(&v11->_predicate, a4);
    objc_storeStrong(&v12->_store, a5);
  }

  return v12;
}

- (void)signpostEndWithError:(int)a3 count:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = +[EKPredicateSearch signpostHandle];
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = +[EKPredicateSearch signpostHandle];
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12[0] = 67109376;
    v12[1] = a3;
    v13 = 2048;
    v14 = a4;
    _os_signpost_emit_with_name_impl(&dword_1A805E000, v10, OS_SIGNPOST_INTERVAL_END, v8, "EKPredicateSearch", "error=%i; foundItems=%lu", v12, 0x12u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_startActivityWithCompletion:(id)a3 synchronous:(BOOL)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EKPredicateSearch *)self _createOSActivity];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__EKPredicateSearch__startActivityWithCompletion_synchronous_queue___block_invoke;
  v13[3] = &unk_1E77FE6C0;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v13[4] = self;
  v11 = v9;
  v12 = v8;
  os_activity_apply(v10, v13);
}

uint64_t __68__EKPredicateSearch__startActivityWithCompletion_synchronous_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signpostStart];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);

  return [v5 _startActualWithCompletion:v2 synchronous:v4 queue:v3];
}

- (void)_startFetchObjectIDsActivityWithCompletion:(id)a3 synchronous:(BOOL)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EKPredicateSearch *)self _createOSActivity];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__EKPredicateSearch__startFetchObjectIDsActivityWithCompletion_synchronous_queue___block_invoke;
  v13[3] = &unk_1E77FE6C0;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v13[4] = self;
  v11 = v9;
  v12 = v8;
  os_activity_apply(v10, v13);
}

uint64_t __82__EKPredicateSearch__startFetchObjectIDsActivityWithCompletion_synchronous_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signpostStart];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);

  return [v5 _fetchObjectIDsActualWithCompletion:v2 synchronous:v4 queue:v3];
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_1(a1, a2, v6);
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 52);
    *(v8 + 52) = v9 + 1;
    objc_sync_exit(v7);

    if (v9 < 2)
    {
      [*(a1 + 32) _startProcessingWithCompletion:*(a1 + 48) synchronous:*(a1 + 68) processor:*(a1 + 56) queue:*(a1 + 40)];
      goto LABEL_12;
    }

    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_2(v10);
    }
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_60;
  v17[3] = &unk_1E77FE6E8;
  v12 = v5;
  v13 = *(a1 + 32);
  v18 = v12;
  v19 = v13;
  v21 = *(a1 + 56);
  v14 = v11;
  v20 = v14;
  v23 = a2;
  v22 = *(a1 + 48);
  v24 = *(a1 + 64);
  v15 = _Block_copy(v17);
  v16 = v15;
  if (*(a1 + 68) == 1)
  {
    v15[2](v15);
  }

  else
  {
    dispatch_async(*(a1 + 40), v15);
  }

LABEL_12:
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_60(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (*(*(a1 + 40) + 49))
      {
        break;
      }

      v7 = *(*(&v21 + 1) + 8 * v6);
      v8 = *(a1 + 48);
      (*(*(a1 + 56) + 16))(*(a1 + 56));
      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = [*(*(a1 + 40) + 32) eventAccessLevel];
  v10 = [MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E60901FFFFFFFFLL];
  v11 = v9 != 2 || v10 == 0;
  if (!v11 && [*(*(a1 + 40) + 24) conformsToProtocol:&unk_1F1B9F2B8])
  {
    v12 = *(a1 + 40);
    v13 = *(v12 + 32);
    v14 = *(v12 + 24);
    v15 = [v13 objectsPendingCommit];
    v16 = [*(*(a1 + 40) + 32) deletedObjectIDsPendingCommit];
    [v14 expandWithObjectsPendingCommit:v15 deletedObjectIDs:v16 andResultArray:*(a1 + 48)];
  }

  [*(a1 + 40) filterSkippedReminders:*(a1 + 48)];
  [*(a1 + 40) signpostEndWithError:*(a1 + 72) count:{objc_msgSend(*(a1 + 48), "count")}];
  v17 = *(a1 + 40);
  if ((*(v17 + 49) & 1) == 0)
  {
    v18 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
    v17 = *(a1 + 40);
  }

  v19 = [*(v17 + 32) connection];
  [v19 removeCancellableRemoteOperation:*(a1 + 76)];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)filterSkippedReminders:(id)a3
{
  v6 = a3;
  predicate = self->_predicate;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(NSPredicate *)self->_predicate excludeSkippedReminders]&& [(EKEventStore *)self->_store showsIntegrations])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_72];
    [v6 filterUsingPredicate:v5];
  }
}

BOOL __44__EKPredicateSearch_filterSkippedReminders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ![v2 isReminderIntegrationEvent] || objc_msgSend(v2, "reminderOccurrenceType") != 1;

  return v3;
}

void __75__EKPredicateSearch__fetchObjectIDsActualWithCompletion_synchronous_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectID];
  v6 = [EKObjectID objectIDWithCADObjectID:v5];

  [v4 addObject:v6];
}

void __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 loadedValues];
  v8 = [v5 objectID];
  v9 = [EKObjectID objectIDWithCADObjectID:v8];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = a1 + 32;
  v13 = [*(v11 + 32) registerFetchedObjectWithID:v9 withDefaultLoadedPropertyKeys:v10 values:v7];
  if (v13)
  {
    if ([v9 entityType] == 2)
    {
      v14 = v5;
      v15 = [(EKReminder *)v14 occurrenceDate];
      v16 = [[EKEvent alloc] initWithPersistentObject:v13 occurrenceDate:v15];
      if (v16)
      {
        v17 = [(EKReminder *)v14 nextReminderOccurrenceDate];
        if (v17)
        {
          [(EKEvent *)v16 _setNextCachedReminderOccurrenceDate:v17];
        }

        [v6 addObject:v16];
      }

LABEL_13:
      goto LABEL_14;
    }

    if ([v9 entityType] == 3)
    {
      v14 = [[EKReminder alloc] initWithPersistentObject:v13];
      if (v14)
      {
        [v6 addObject:v14];
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke_cold_1(v12, v18, v9);
    }
  }

LABEL_14:
}

- (id)startWithCompletion:(id)a3 queue:(id)a4
{
  if (self->_isCancelled)
  {
    v5 = 0;
  }

  else
  {
    store = self->_store;
    v10 = a4;
    v11 = a3;
    v12 = [(EKEventStore *)store connection];
    v13 = [v12 addCancellableRemoteOperation:self];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    cancellationToken = self->_cancellationToken;
    self->_cancellationToken = v14;

    self->_retryCount = 0;
    [(EKPredicateSearch *)self _startActivityWithCompletion:v11 synchronous:0 queue:v10];

    v5 = [[EKEventFetchRequestToken alloc] initWithEventStore:self->_store token:v13];
  }

  return v5;
}

- (void)cancel
{
  self->_isCancelled = 1;
  v3 = [(EKEventStore *)self->_store connection];
  v4 = [v3 CADOperationProxy];
  [v4 CADDatabaseCancelFetchRequestWithIdentifier:{objc_msgSend(self->_cancellationToken, "unsignedIntValue")}];

  cancellationToken = self->_cancellationToken;
  self->_cancellationToken = 0;
}

- (void)_createOSActivity
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v6 = 138412290;
  v7 = objc_opt_class();
  v4 = v7;
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Unexpected predicate class: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __80__EKPredicateSearch__startProcessingWithCompletion_synchronous_processor_queue___block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 52) + 1;
  v5[0] = 67109632;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = 3;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Error (%d) in reply block for CADDatabaseFetchCalendarItemsWithPredicate attempt %d/%d", v5, 0x14u);
  v4 = *MEMORY[0x1E69E9840];
}

void __66__EKPredicateSearch__startActualWithCompletion_synchronous_queue___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 24);
  v5 = a2;
  v8 = 138412546;
  v9 = objc_opt_class();
  v10 = 2112;
  v11 = a3;
  v6 = v9;
  _os_log_error_impl(&dword_1A805E000, v5, OS_LOG_TYPE_ERROR, "%@: failed to register result object with objectID: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end