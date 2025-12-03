@interface EKPredicateMonitor
- (EKPredicateMonitor)initWithEventStore:(id)store predicate:(id)predicate filterChanges:(unint64_t)changes options:(unint64_t)options queue:(id)queue resultsBlock:(id)block;
- (void)_start;
- (void)_validatePredicateSupportsEfficientMonitoring;
- (void)disconnected;
- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished;
- (void)start;
- (void)stop;
- (void)updatePredicate:(id)predicate completion:(id)completion;
@end

@implementation EKPredicateMonitor

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  [(EKPredicateMonitor *)self _start];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_start
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_token)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Predicate monitor %p started multiple times", self}];
  }

  connection = [(EKEventStore *)self->_store connection];
  self->_token = [connection addCancellableRemoteOperation:self];
  connection2 = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection2 CADOperationProxy];
  predicate = self->_predicate;
  v7 = [EKPredicateMonitor convertPropertyFilter:self->_propertyFilter];
  v8 = [EKPredicateMonitor convertOptions:self->_options];
  token = self->_token;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__EKPredicateMonitor__start__block_invoke;
  v10[3] = &unk_1E77FFD10;
  v10[4] = self;
  [cADOperationProxy CADDatabaseMonitorResultsForPredicate:predicate propertyFilter:v7 options:v8 identifier:token reply:v10];
}

- (void)_validatePredicateSupportsEfficientMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1A805E000, a2, OS_LOG_TYPE_FAULT, "You are using a predicate monitor with a predicate %@ that doesn't support monitoring efficiently. If you need to monitor the results of this predicate, please file a radar and request that it be supported.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __28__EKPredicateMonitor__start__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v4 = +[EKLogSubsystem predicateMonitor];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __28__EKPredicateMonitor__start__block_invoke_cold_1(a1);
    }

    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __28__EKPredicateMonitor__start__block_invoke_10;
    v7[3] = &unk_1E77FD580;
    v7[4] = v5;
    v8 = v3;
    v6 = v3;
    [v5 performAsyncOnQueue:v7];
  }
}

- (EKPredicateMonitor)initWithEventStore:(id)store predicate:(id)predicate filterChanges:(unint64_t)changes options:(unint64_t)options queue:(id)queue resultsBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  predicateCopy = predicate;
  queueCopy = queue;
  blockCopy = block;
  [storeCopy _validateEventPredicate:predicateCopy];
  v34.receiver = self;
  v34.super_class = EKPredicateMonitor;
  v19 = [(EKPredicateMonitor *)&v34 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_store, store);
    objc_storeStrong(&v20->_predicate, predicate);
    v20->_propertyFilter = changes;
    v20->_options = options;
    if (queueCopy)
    {
      v21 = queueCopy;
      queue = v20->_queue;
      v20->_queue = v21;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_create("com.apple.eventkit.ekpredicatemonitor", queue);
      v24 = v20->_queue;
      v20->_queue = v23;
    }

    v25 = _Block_copy(blockCopy);
    block = v20->_block;
    v20->_block = v25;

    [(EKPredicateMonitor *)v20 _validatePredicateSupportsEfficientMonitoring];
    v27 = objc_opt_respondsToSelector();
    v28 = +[EKLogSubsystem predicateMonitor];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        concisePublicDescription = [predicateCopy concisePublicDescription];
        *buf = 134218242;
        v36 = v20;
        v37 = 2114;
        v38 = concisePublicDescription;
        v31 = "%p Created with predicate: %{public}@";
LABEL_10:
        _os_log_impl(&dword_1A805E000, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 0x16u);
      }
    }

    else if (v29)
    {
      concisePublicDescription = [predicateCopy predicateFormat];
      *buf = 134218242;
      v36 = v20;
      v37 = 2112;
      v38 = concisePublicDescription;
      v31 = "%p Created with predicate: %@";
      goto LABEL_10;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)updatePredicate:(id)predicate completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  completionCopy = completion;
  [(EKEventStore *)self->_store _validateEventPredicate:predicateCopy];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_predicate, predicate);
  v9 = (self->_predicateGeneration + 1);
  self->_predicateGeneration = v9;
  v10 = objc_opt_respondsToSelector();
  v11 = +[EKLogSubsystem predicateMonitor];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    concisePublicDescription = [predicateCopy concisePublicDescription];
    *buf = 134218498;
    selfCopy2 = self;
    v37 = 1024;
    v38 = v9;
    v39 = 2114;
    v40 = concisePublicDescription;
    v14 = "%p Updating predicate generation %i: %{public}@";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    concisePublicDescription = [predicateCopy predicateFormat];
    *buf = 134218498;
    selfCopy2 = self;
    v37 = 1024;
    v38 = v9;
    v39 = 2112;
    v40 = concisePublicDescription;
    v14 = "%p Updating predicate generation %i: %@";
  }

  _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x1Cu);

LABEL_7:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EKPredicateMonitor_updatePredicate_completion___block_invoke;
  aBlock[3] = &unk_1E7800598;
  selfCopy3 = self;
  v34 = v9;
  v15 = completionCopy;
  v32 = v15;
  v16 = _Block_copy(aBlock);
  if (!self->_predicateUpdateCompletionCallbackBlocks)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    predicateUpdateCompletionCallbackBlocks = self->_predicateUpdateCompletionCallbackBlocks;
    self->_predicateUpdateCompletionCallbackBlocks = v17;
  }

  v19 = _Block_copy(v16);
  v20 = self->_predicateUpdateCompletionCallbackBlocks;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];

  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection CADOperationProxy];
  predicate = self->_predicate;
  v25 = [EKPredicateMonitor convertPropertyFilter:self->_propertyFilter];
  v26 = [EKPredicateMonitor convertOptions:self->_options];
  token = self->_token;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16;
  v29[3] = &unk_1E78005C0;
  v29[4] = self;
  v30 = v9;
  [cADOperationProxy CADDatabaseMonitorUpdatePredicate:predicate propertyFilter:v25 options:v26 identifier:token generation:v9 reply:v29];

  [(EKPredicateMonitor *)self _validatePredicateSupportsEfficientMonitoring];
  os_unfair_lock_unlock(&self->_lock);

  v28 = *MEMORY[0x1E69E9840];
}

void __49__EKPredicateMonitor_updatePredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EKLogSubsystem predicateMonitor];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = 134218240;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEFAULT, "%p Generation %i complete", &v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    v4 = +[EKLogSubsystem predicateMonitor];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16_cold_1(a1);
    }

    [*(a1 + 32) generation:*(a1 + 40) completedWithError:v3];
  }
}

- (void)stop
{
  os_unfair_lock_lock(&self->_lock);
  token = self->_token;
  self->_token = 0;
  os_unfair_lock_unlock(&self->_lock);
  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxy = [connection CADOperationProxy];
  [cADOperationProxy CADDatabaseStopMonitoringPredicate:token];

  [connection removeCancellableRemoteOperation:token];
}

- (void)disconnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_token)
  {
    if (self->_options)
    {
      allValues = [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks allValues];
      [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks removeAllObjects];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __34__EKPredicateMonitor_disconnected__block_invoke;
      v5[3] = &unk_1E77FD580;
      v5[4] = self;
      v6 = allValues;
      v4 = allValues;
      [(EKPredicateMonitor *)self performAsyncOnQueue:v5];
    }

    else
    {
      self->_token = 0;
      [(EKPredicateMonitor *)self _start];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __34__EKPredicateMonitor_disconnected__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(*(*(a1 + 32) + 16) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished
{
  v97 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v6 = [serverCopy objectForKeyedSubscript:@"reset"];
  bOOLValue = [v6 BOOLValue];

  v8 = [serverCopy objectForKeyedSubscript:@"new"];
  v59 = [serverCopy objectForKeyedSubscript:@"removed"];
  v9 = [serverCopy objectForKeyedSubscript:@"removalsByDB"];
  v10 = [serverCopy objectForKeyedSubscript:@"generation"];
  intValue = [v10 intValue];

  os_unfair_lock_lock(&self->_lock);
  v12 = self->_predicate;
  os_unfair_lock_unlock(&self->_lock);
  defaultPropertiesToLoad = [(NSPredicate *)v12 defaultPropertiesToLoad];
  v64 = v9;
  v56 = serverCopy;
  v57 = v12;
  v55 = __PAIR64__(bOOLValue, intValue);
  if (v8)
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    if ([(EKEventStore *)self->_store showsIntegrations]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      excludeSkippedReminders = [(NSPredicate *)v12 excludeSkippedReminders];
    }

    else
    {
      excludeSkippedReminders = 0;
    }
  }

  else
  {
    excludeSkippedReminders = 0;
    v58 = 0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v83;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v83 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v82 + 1) + 8 * i);
        loadedValues = [v17 loadedValues];
        objectID = [v17 objectID];
        v20 = [EKObjectID objectIDWithCADObjectID:objectID];

        v21 = [(EKEventStore *)self->_store registerFetchedObjectWithID:v20 withDefaultLoadedPropertyKeys:defaultPropertiesToLoad values:loadedValues];
        if (v21)
        {
          occurrenceDate = [v17 occurrenceDate];
          v23 = [[EKEvent alloc] initWithPersistentObject:v21 occurrenceDate:occurrenceDate];
          if (v23)
          {
            nextReminderOccurrenceDate = [v17 nextReminderOccurrenceDate];
            if (nextReminderOccurrenceDate)
            {
              [(EKEvent *)v23 _setNextCachedReminderOccurrenceDate:nextReminderOccurrenceDate];
            }

            if (!excludeSkippedReminders || ![(EKEvent *)v23 isReminderIntegrationEvent]|| [(EKEvent *)v23 reminderOccurrenceType]!= 1)
            {
              [v58 addObject:v23];
            }
          }
        }

        else
        {
          occurrenceDate = +[EKLogSubsystem predicateMonitor];
          if (os_log_type_enabled(occurrenceDate, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138412546;
            selfCopy3 = v25;
            v88 = 2112;
            v89 = v20;
            v26 = v25;
            _os_log_error_impl(&dword_1A805E000, occurrenceDate, OS_LOG_TYPE_ERROR, "%@: failed to register result object with objectID: %@", buf, 0x16u);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v82 objects:v96 count:16];
    }

    while (v14);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v64;
  v65 = [v66 countByEnumeratingWithState:&v78 objects:v95 count:16];
  v27 = 0;
  v28 = 0;
  if (v65)
  {
    v61 = *v79;
    selfCopy = self;
    do
    {
      v29 = 0;
      do
      {
        if (*v79 != v61)
        {
          objc_enumerationMutation(v66);
        }

        v68 = v29;
        v30 = *(*(&v78 + 1) + 8 * v29);
        intValue2 = [v30 intValue];
        if (!v28)
        {
          v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v59, "count")}];
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v32 = [v66 objectForKeyedSubscript:v30];
        v33 = [v32 countByEnumeratingWithState:&v74 objects:v94 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v75;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v75 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v74 + 1) + 8 * j);
              rowID = [v37 rowID];
              removedDates = [v37 removedDates];
              v27 += [removedDates count];
              v40 = [EKObjectID objectIDWithEntityType:2 rowID:rowID databaseID:intValue2];
              v41 = [[EKEventOccurrences alloc] initWithObjectID:v40 dates:removedDates];
              [v28 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v74 objects:v94 count:16];
          }

          while (v34);
        }

        v29 = v68 + 1;
        self = selfCopy;
      }

      while (v68 + 1 != v65);
      v65 = [v66 countByEnumeratingWithState:&v78 objects:v95 count:16];
    }

    while (v65);
  }

  v42 = +[EKLogSubsystem predicateMonitor];
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (HIDWORD(v55))
  {
    v44 = v56;
    v45 = v57;
    if (v43)
    {
      v46 = [v58 count];
      *buf = 134218240;
      selfCopy3 = self;
      v88 = 2048;
      v89 = v46;
      v47 = "%p Received reset with %lu new events";
      v48 = v42;
      v49 = 22;
LABEL_47:
      _os_log_impl(&dword_1A805E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
    }
  }

  else
  {
    v44 = v56;
    v45 = v57;
    if (v43)
    {
      v50 = [v58 count];
      v51 = [v28 count];
      *buf = 134218752;
      selfCopy3 = self;
      v88 = 2048;
      v89 = v50;
      v90 = 2048;
      v91 = v27;
      v92 = 2048;
      v93 = v51;
      v47 = "%p Received update with %lu new events and %lu removed occurrences of %lu events";
      v48 = v42;
      v49 = 42;
      goto LABEL_47;
    }
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __62__EKPredicateMonitor_receivedBatchResultsFromServer_finished___block_invoke;
  v69[3] = &unk_1E78005E8;
  v73 = BYTE4(v55);
  v69[4] = self;
  v70 = v58;
  v71 = v28;
  v72 = v55;
  v52 = v28;
  v53 = v58;
  [(EKPredicateMonitor *)self performAsyncOnQueue:v69];

  v54 = *MEMORY[0x1E69E9840];
}

void __62__EKPredicateMonitor_receivedBatchResultsFromServer_finished___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 60);
  v4 = *(a1 + 48);
  (*(*(*(a1 + 32) + 16) + 16))();
  v5 = *(a1 + 32);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (*(a1 + 56) > v8)
  {
    do
    {
      *v6 = v7 + 1;
      os_unfair_lock_lock((*(a1 + 32) + 56));
      v9 = *(a1 + 32);
      v10 = *(v9 + 48);
      v11 = [MEMORY[0x1E696AD98] numberWithInt:*(v9 + 40)];
      v12 = [v10 objectForKeyedSubscript:v11];

      v13 = *(a1 + 32);
      if (v12)
      {
        v14 = *(v13 + 48);
        v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v13 + 40)];
        [v14 setObject:0 forKeyedSubscript:v15];

        os_unfair_lock_unlock((*(a1 + 32) + 56));
        v12[2](v12, 0);
      }

      else
      {
        os_unfair_lock_unlock((v13 + 56));
      }

      v16 = *(a1 + 32);
      v17 = *(v16 + 40);
      v6 = (v16 + 40);
      v7 = v17;
    }

    while (*(a1 + 56) > v17);
  }
}

void __28__EKPredicateMonitor__start__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v2, v3, "%p Error starting predicate monitoring: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __49__EKPredicateMonitor_updatePredicate_completion___block_invoke_16_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v2, v3, "%p Error updating predicate monitoring: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end