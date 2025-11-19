@interface EKPredicateMonitor
- (EKPredicateMonitor)initWithEventStore:(id)a3 predicate:(id)a4 filterChanges:(unint64_t)a5 options:(unint64_t)a6 queue:(id)a7 resultsBlock:(id)a8;
- (void)_start;
- (void)_validatePredicateSupportsEfficientMonitoring;
- (void)disconnected;
- (void)receivedBatchResultsFromServer:(id)a3 finished:(BOOL)a4;
- (void)start;
- (void)stop;
- (void)updatePredicate:(id)a3 completion:(id)a4;
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

  v3 = [(EKEventStore *)self->_store connection];
  self->_token = [v3 addCancellableRemoteOperation:self];
  v4 = [(EKEventStore *)self->_store connection];
  v5 = [v4 CADOperationProxy];
  predicate = self->_predicate;
  v7 = [EKPredicateMonitor convertPropertyFilter:self->_propertyFilter];
  v8 = [EKPredicateMonitor convertOptions:self->_options];
  token = self->_token;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__EKPredicateMonitor__start__block_invoke;
  v10[3] = &unk_1E77FFD10;
  v10[4] = self;
  [v5 CADDatabaseMonitorResultsForPredicate:predicate propertyFilter:v7 options:v8 identifier:token reply:v10];
}

- (void)_validatePredicateSupportsEfficientMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
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

- (EKPredicateMonitor)initWithEventStore:(id)a3 predicate:(id)a4 filterChanges:(unint64_t)a5 options:(unint64_t)a6 queue:(id)a7 resultsBlock:(id)a8
{
  v39 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  [v15 _validateEventPredicate:v16];
  v34.receiver = self;
  v34.super_class = EKPredicateMonitor;
  v19 = [(EKPredicateMonitor *)&v34 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_store, a3);
    objc_storeStrong(&v20->_predicate, a4);
    v20->_propertyFilter = a5;
    v20->_options = a6;
    if (v17)
    {
      v21 = v17;
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

    v25 = _Block_copy(v18);
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
        v30 = [v16 concisePublicDescription];
        *buf = 134218242;
        v36 = v20;
        v37 = 2114;
        v38 = v30;
        v31 = "%p Created with predicate: %{public}@";
LABEL_10:
        _os_log_impl(&dword_1A805E000, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [v16 predicateFormat];
      *buf = 134218242;
      v36 = v20;
      v37 = 2112;
      v38 = v30;
      v31 = "%p Created with predicate: %@";
      goto LABEL_10;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)updatePredicate:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(EKEventStore *)self->_store _validateEventPredicate:v7];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_predicate, a3);
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

    v13 = [v7 concisePublicDescription];
    *buf = 134218498;
    v36 = self;
    v37 = 1024;
    v38 = v9;
    v39 = 2114;
    v40 = v13;
    v14 = "%p Updating predicate generation %i: %{public}@";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [v7 predicateFormat];
    *buf = 134218498;
    v36 = self;
    v37 = 1024;
    v38 = v9;
    v39 = 2112;
    v40 = v13;
    v14 = "%p Updating predicate generation %i: %@";
  }

  _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x1Cu);

LABEL_7:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EKPredicateMonitor_updatePredicate_completion___block_invoke;
  aBlock[3] = &unk_1E7800598;
  v33 = self;
  v34 = v9;
  v15 = v8;
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

  v22 = [(EKEventStore *)self->_store connection];
  v23 = [v22 CADOperationProxy];
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
  [v23 CADDatabaseMonitorUpdatePredicate:predicate propertyFilter:v25 options:v26 identifier:token generation:v9 reply:v29];

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
  v5 = [(EKEventStore *)self->_store connection];
  v4 = [v5 CADOperationProxy];
  [v4 CADDatabaseStopMonitoringPredicate:token];

  [v5 removeCancellableRemoteOperation:token];
}

- (void)disconnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_token)
  {
    if (self->_options)
    {
      v3 = [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks allValues];
      [(NSMutableDictionary *)self->_predicateUpdateCompletionCallbackBlocks removeAllObjects];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __34__EKPredicateMonitor_disconnected__block_invoke;
      v5[3] = &unk_1E77FD580;
      v5[4] = self;
      v6 = v3;
      v4 = v3;
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

- (void)receivedBatchResultsFromServer:(id)a3 finished:(BOOL)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"reset"];
  v7 = [v6 BOOLValue];

  v8 = [v5 objectForKeyedSubscript:@"new"];
  v59 = [v5 objectForKeyedSubscript:@"removed"];
  v9 = [v5 objectForKeyedSubscript:@"removalsByDB"];
  v10 = [v5 objectForKeyedSubscript:@"generation"];
  v11 = [v10 intValue];

  os_unfair_lock_lock(&self->_lock);
  v12 = self->_predicate;
  os_unfair_lock_unlock(&self->_lock);
  v63 = [(NSPredicate *)v12 defaultPropertiesToLoad];
  v64 = v9;
  v56 = v5;
  v57 = v12;
  v55 = __PAIR64__(v7, v11);
  if (v8)
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    if ([(EKEventStore *)self->_store showsIntegrations]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v67 = [(NSPredicate *)v12 excludeSkippedReminders];
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v67 = 0;
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
        v18 = [v17 loadedValues];
        v19 = [v17 objectID];
        v20 = [EKObjectID objectIDWithCADObjectID:v19];

        v21 = [(EKEventStore *)self->_store registerFetchedObjectWithID:v20 withDefaultLoadedPropertyKeys:v63 values:v18];
        if (v21)
        {
          v22 = [v17 occurrenceDate];
          v23 = [[EKEvent alloc] initWithPersistentObject:v21 occurrenceDate:v22];
          if (v23)
          {
            v24 = [v17 nextReminderOccurrenceDate];
            if (v24)
            {
              [(EKEvent *)v23 _setNextCachedReminderOccurrenceDate:v24];
            }

            if (!v67 || ![(EKEvent *)v23 isReminderIntegrationEvent]|| [(EKEvent *)v23 reminderOccurrenceType]!= 1)
            {
              [v58 addObject:v23];
            }
          }
        }

        else
        {
          v22 = +[EKLogSubsystem predicateMonitor];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138412546;
            v87 = v25;
            v88 = 2112;
            v89 = v20;
            v26 = v25;
            _os_log_error_impl(&dword_1A805E000, v22, OS_LOG_TYPE_ERROR, "%@: failed to register result object with objectID: %@", buf, 0x16u);
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
    v62 = self;
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
        v31 = [v30 intValue];
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
              v38 = [v37 rowID];
              v39 = [v37 removedDates];
              v27 += [v39 count];
              v40 = [EKObjectID objectIDWithEntityType:2 rowID:v38 databaseID:v31];
              v41 = [[EKEventOccurrences alloc] initWithObjectID:v40 dates:v39];
              [v28 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v74 objects:v94 count:16];
          }

          while (v34);
        }

        v29 = v68 + 1;
        self = v62;
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
      v87 = self;
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
      v87 = self;
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