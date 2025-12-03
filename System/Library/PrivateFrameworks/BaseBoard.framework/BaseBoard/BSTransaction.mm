@interface BSTransaction
+ (id)_defaultTransactionLog;
- (BOOL)_isRootTransaction;
- (BOOL)_removeMilestones:(char)milestones ignoringAuditHistory:;
- (BOOL)hasChildTransactionsOfClass:(Class)class;
- (BOOL)hasStarted;
- (BOOL)isComplete;
- (BOOL)isFinishedWorking;
- (BOOL)isInterrupted;
- (BOOL)isInterruptible;
- (BOOL)isRunning;
- (BOOL)isWaitingForMilestone:(id)milestone;
- (BOOL)removeMilestone:(id)milestone;
- (BOOL)removeMilestones:(id)milestones;
- (BSTransaction)init;
- (NSArray)allErrors;
- (NSArray)childTransactions;
- (NSSet)milestones;
- (id)_buildGraphEdgeDescriptionWithType:(uint64_t)type fromTransaction:(id)transaction toTransaction:(void *)toTransaction;
- (id)_childTransactionsWithSchedulingPolicy:(uint64_t)policy;
- (id)_createErrorWithCode:(uint64_t)code reason:(uint64_t)reason description:(uint64_t)description precipitatingError:;
- (id)_descriptionForDebugging:(uint64_t)debugging indentLevel:(int)level;
- (id)_descriptionForDebugging:(uint64_t)debugging indentLevel:(void *)level visited:;
- (id)_graphNodeDebugName;
- (id)_graphNodeIdentifier;
- (id)_loggingProem;
- (id)_stringForMilestones:(id)milestones;
- (id)childTransactionsOfClass:(Class)class;
- (id)completionBlock;
- (uint64_t)_areConcurrentChildTransactionsFinishedWorking;
- (uint64_t)_beginIfPossible;
- (uint64_t)_evaluateParentTransactionsWithSchedulingPolicy:(uint64_t)policy evaluator:;
- (uint64_t)_terminateNow;
- (void)_addAuditHistoryItem:(id)item;
- (void)_addDebugLogCategory:(id)category;
- (void)_checkAndReportIfCompleted;
- (void)_childRelationshipForTransaction:(uint64_t)transaction;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_evaluateCompletion;
- (void)_failForTimeoutWithDescription:(id)description;
- (void)_failWithError:(uint64_t)error;
- (void)_failWithReason:(id)reason description:(id)description precipitatingError:(id)error;
- (void)_inFinishedWorkingState;
- (void)_initializeAuditHistoryIfNecessary;
- (void)_interruptWithReason:(char)reason force:;
- (void)_isDoingWork;
- (void)_noteCompleted;
- (void)_parentRelationshipForTransaction:(void *)transaction;
- (void)_populateGraphIntoNodes:(void *)nodes edges:;
- (void)_preventTransactionCompletionForReason:(char)reason ignoringAuditHistory:(uint64_t)history andExecuteBlock:;
- (void)_removeChildTransactionRelationship:(id *)relationship;
- (void)_removeDebugLogCategory:(id)category;
- (void)_removeParentTransaction:(uint64_t)transaction;
- (void)_setState:(uint64_t)state;
- (void)_unsafe_enumerateChildTransactionsWithBlock:(uint64_t)block;
- (void)_unsafe_enumerateParentTransactionsWithBlock:(uint64_t)block;
- (void)addChildTransaction:(id)transaction withSchedulingPolicy:(unint64_t)policy;
- (void)addMilestone:(id)milestone;
- (void)addMilestones:(id)milestones;
- (void)addObserver:(id)observer;
- (void)begin;
- (void)dealloc;
- (void)evaluateMilestone:(id)milestone withEvaluator:(id)evaluator;
- (void)failWithReason:(id)reason;
- (void)interruptWithReason:(id)reason;
- (void)listenForSatisfiedMilestone:(id)milestone withBlock:(id)block;
- (void)registerBlockObserver:(id)observer;
- (void)removeAllChildTransactions;
- (void)removeAllChildTransactionsOfClass:(Class)class;
- (void)removeAllMilestones;
- (void)removeChildTransaction:(id)transaction;
- (void)removeObserver:(id)observer;
- (void)setAuditHistoryEnabled:(BOOL)enabled;
- (void)setCompletionBlock:(id)block;
@end

@implementation BSTransaction

- (BSTransaction)init
{
  v25.receiver = self;
  v25.super_class = BSTransaction;
  v2 = [(BSTransaction *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    blockObservers = v3->_blockObservers;
    v3->_blockObservers = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    milestones = v3->_milestones;
    v3->_milestones = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parentTransactionRelationships = v3->_parentTransactionRelationships;
    v3->_parentTransactionRelationships = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    childTransactionRelationships = v3->_childTransactionRelationships;
    v3->_childTransactionRelationships = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    milestonesToHandlers = v3->_milestonesToHandlers;
    v3->_milestonesToHandlers = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lifeAssertions = v3->_lifeAssertions;
    v3->_lifeAssertions = v16;

    v18 = [BSDescriptionBuilder descriptionForObject:v3];
    cachedDescriptionProem = v3->_cachedDescriptionProem;
    v3->_cachedDescriptionProem = v18;

    objc_opt_self();
    if (qword_1ED44FD70 != -1)
    {
      dispatch_once(&qword_1ED44FD70, &__block_literal_global_8);
    }

    v20 = _MergedGlobals_8;
    v3->_cachedDefaultBasedAuditHistoryEnabled = [v20 isAuditHistoryEnabled];

    v21 = +[BSTransaction _defaultTransactionLog];
    auditHistoryLog = v3->_auditHistoryLog;
    v3->_auditHistoryLog = v21;

    v23 = +[BSTransaction _defaultTransactionLog];
    [(BSTransaction *)v3 _addDebugLogCategory:v23];
  }

  return v3;
}

+ (id)_defaultTransactionLog
{
  objc_opt_self();
  if (qword_1ED44FD80 != -1)
  {
    dispatch_once(&qword_1ED44FD80, &__block_literal_global_118);
  }

  v0 = qword_1ED44FD78;

  return v0;
}

- (void)_initializeAuditHistoryIfNecessary
{
  if (self && !self[10] && [self isAuditHistoryEnabled])
  {
    v2 = objc_alloc_init(BSAuditHistory);
    v3 = self[10];
    self[10] = v2;
  }
}

- (NSArray)childTransactions
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_childTransactionRelationships, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__BSTransaction_childTransactions__block_invoke;
  v7[3] = &unk_1E72CB060;
  v5 = v4;
  v8 = v5;
  [(BSTransaction *)self _unsafe_enumerateChildTransactionsWithBlock:v7];

  return v5;
}

uint64_t __22__BSTransaction_begin__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _willBegin];
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __22__BSTransaction_begin__block_invoke_2;
  v14[3] = &unk_1E72CB088;
  v14[4] = v2;
  [v2 _enumerateObserversWithBlock:v14];
  [(BSTransaction *)*(a1 + 32) _setState:?];
  *(*(a1 + 32) + 26) = 1;
  [*(a1 + 32) _begin];
  *(*(a1 + 32) + 26) = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(BSTransaction *)*(a1 + 32) _childTransactionsWithSchedulingPolicy:?];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(BSTransaction *)*(*(&v10 + 1) + 8 * v6++) _beginIfPossible];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _didBegin];
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __22__BSTransaction_begin__block_invoke_3;
  v9[3] = &unk_1E72CB088;
  v9[4] = v7;
  return [v7 _enumerateObserversWithBlock:v9];
}

- (BOOL)isComplete
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  return self->_state == 3 || self->_failed || self->_aborted;
}

- (uint64_t)_beginIfPossible
{
  if (result)
  {
    v1 = result;
    if (!*(result + 72))
    {
      result = [(BSTransaction *)result _evaluateParentTransactionsWithSchedulingPolicy:&__block_literal_global_320 evaluator:?];
      if (result)
      {
        result = [(BSTransaction *)v1 _evaluateParentTransactionsWithSchedulingPolicy:&__block_literal_global_322 evaluator:?];
        if (result)
        {

          return [v1 begin];
        }
      }
    }
  }

  return result;
}

- (void)_isDoingWork
{
  if (result)
  {
    v1 = result;
    queue = [result queue];
    BSDispatchQueueAssert(queue);

    return (v1[9] == 1);
  }

  return result;
}

- (void)begin
{
  v48 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy->_failed)
  {
    if ([(BSTransaction *)selfCopy _debugLoggingEnabled])
    {
      context = objc_autoreleasePoolPush();
      _descriptionProem = [v6 _descriptionProem];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      _debugLogCategories = [v6 _debugLogCategories];
      v9 = [_debugLogCategories countByEnumeratingWithState:&v36 objects:v47 count:16];
      if (v9)
      {
        v10 = *v37;
        do
        {
          v11 = 0;
          do
          {
            if (*v37 != v10)
            {
              objc_enumerationMutation(_debugLogCategories);
            }

            v12 = *(*(&v36 + 1) + 8 * v11);
            if (_descriptionProem && os_log_type_enabled(*(*(&v36 + 1) + 8 * v11), OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = _descriptionProem;
              _os_log_debug_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
            }

            v13 = v12;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v14 = objc_opt_class();
              localizedDescription = [*(v6 + 144) localizedDescription];
              *buf = 138543874;
              v42 = v14;
              v43 = 2048;
              v44 = v6;
              v45 = 2114;
              v46 = localizedDescription;
              _os_log_debug_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Unable to begin transaction, because the transaction failed prior to starting with error: %{public}@", buf, 0x20u);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [_debugLogCategories countByEnumeratingWithState:&v36 objects:v47 count:16];
        }

        while (v9);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    if (selfCopy->_state)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"BSTransaction.m" lineNumber:386 description:@"Cannot begin a transaction that has already begun or completed."];
    }

    if (([(BSTransaction *)v6 _evaluateParentTransactionsWithSchedulingPolicy:&__block_literal_global_322 evaluator:?]& 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"BSTransaction.m" lineNumber:387 description:@"Cannot begin a serial child transaction if all parents are not finished doing work."];
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v17 = *(v6 + 32);
    *(v6 + 32) = v16;

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __22__BSTransaction_begin__block_invoke;
    v35[3] = &unk_1E72CADE8;
    v35[4] = v6;
    [(BSTransaction *)v6 _preventTransactionCompletionForReason:0 ignoringAuditHistory:v35 andExecuteBlock:?];
    if ([v6 _isRootTransaction] && (objc_msgSend(v6, "isComplete") & 1) == 0 && objc_msgSend(v6, "_debugLoggingEnabled"))
    {
      contexta = objc_autoreleasePoolPush();
      _descriptionProem2 = [v6 _descriptionProem];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      _debugLogCategories2 = [v6 _debugLogCategories];
      v20 = [_debugLogCategories2 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v20)
      {
        v21 = *v32;
        do
        {
          v22 = 0;
          do
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(_debugLogCategories2);
            }

            v23 = *(*(&v31 + 1) + 8 * v22);
            if (_descriptionProem2 && os_log_type_enabled(*(*(&v31 + 1) + 8 * v22), OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = _descriptionProem2;
              _os_log_debug_impl(&dword_18FEF6000, v23, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
            }

            v24 = v23;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = objc_opt_class();
              *buf = 138543874;
              v42 = v25;
              v43 = 2048;
              v44 = v6;
              v45 = 2114;
              v46 = v6;
              v26 = v25;
              _os_log_debug_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Transaction started: %{public}@", buf, 0x20u);
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [_debugLogCategories2 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v20);
      }

      objc_autoreleasePoolPop(contexta);
    }
  }
}

uint64_t __22__BSTransaction_begin__block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 transactionWillBegin:v5];
  }

  return result;
}

- (void)_inFinishedWorkingState
{
  if (result)
  {
    v1 = result;
    queue = [result queue];
    BSDispatchQueueAssert(queue);

    return (v1[9] == 2);
  }

  return result;
}

- (BOOL)isFinishedWorking
{
  if (([(BSTransaction *)self _inFinishedWorkingState]& 1) != 0)
  {
    return 1;
  }

  return [(BSTransaction *)self isComplete];
}

- (id)completionBlock
{
  v2 = MEMORY[0x193AE5AC0](self->_completionBlock, a2);

  return v2;
}

- (BOOL)isRunning
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (([(BSTransaction *)self _isDoingWork]& 1) != 0)
  {
    return 1;
  }

  return [(BSTransaction *)self _inFinishedWorkingState];
}

- (void)_checkAndReportIfCompleted
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [self[2] count];
    v3 = [self[7] count];
    if ([self isRunning])
    {
      isComplete = [self isComplete];
      _areConcurrentChildTransactionsFinishedWorking = [(BSTransaction *)self _areConcurrentChildTransactionsFinishedWorking];
      if ((isComplete & 1) == 0)
      {
        v6 = _areConcurrentChildTransactionsFinishedWorking;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v49) = 1;
        *v50 = MEMORY[0x1E69E9820];
        *&v50[8] = 3221225472;
        *&v50[16] = __46__BSTransaction__areChildTransactionsComplete__block_invoke;
        v51 = &unk_1E72CB0B0;
        selfCopy = buf;
        [(BSTransaction *)self _unsafe_enumerateChildTransactionsWithBlock:v50];
        v7 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (v2)
        {
          v8 = 0;
        }

        else
        {
          v8 = (v3 == 0) & v6;
        }

        if (((v3 == 0) & v6) == 1)
        {
          v34 = v8;
          if (([self isFinishedWorking] & 1) == 0)
          {
            [(BSTransaction *)self _setState:?];
            [self _didFinishWork];
            *v50 = MEMORY[0x1E69E9820];
            *&v50[8] = 3221225472;
            *&v50[16] = __47__BSTransaction__notifyObserversOfFinishedWork__block_invoke;
            v51 = &unk_1E72CB088;
            selfCopy = self;
            [self _enumerateObserversWithBlock:v50];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            array = [MEMORY[0x1E695DF70] array];
            *v50 = MEMORY[0x1E69E9820];
            *&v50[8] = 3221225472;
            *&v50[16] = __57__BSTransaction__parentTransactionsWithSchedulingPolicy___block_invoke;
            v51 = &unk_1E72CB190;
            v53 = 0;
            v10 = array;
            selfCopy = v10;
            [(BSTransaction *)self _unsafe_enumerateParentTransactionsWithBlock:v50];

            v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v11)
            {
              v12 = *v44;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v44 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v43 + 1) + 8 * i);
                  if (v14)
                  {
                    queue = [*(*(&v43 + 1) + 8 * i) queue];
                    BSDispatchQueueAssert(queue);

                    if (os_log_type_enabled(v14[11], OS_LOG_TYPE_INFO) || [v14 isAuditHistoryEnabled])
                    {
                      _descriptionProem = [self _descriptionProem];
                      if ([v14 isAuditHistoryEnabled])
                      {
                        [v14 _addAuditHistoryItem:{@"Child transaction finished work: %@", _descriptionProem}];
                      }

                      v17 = v14[11];
                      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                      {
                        v18 = objc_opt_class();
                        *buf = 138543874;
                        *&buf[4] = v18;
                        *&buf[12] = 2048;
                        *&buf[14] = v14;
                        *&buf[22] = 2114;
                        v49 = _descriptionProem;
                        v19 = v18;
                        _os_log_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_INFO, "<%{public}@:%p> Child transaction finished work: %{public}@", buf, 0x20u);
                      }
                    }

                    [v14 _childTransactionDidFinishWork:self];
                    [(BSTransaction *)v14 _checkAndReportIfCompleted];
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
              }

              while (v11);
            }

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v20 = [(BSTransaction *)self _childTransactionsWithSchedulingPolicy:?];
            v21 = [v20 countByEnumeratingWithState:&v39 objects:buf count:16];
            if (v21)
            {
              v22 = *v40;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v40 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  [(BSTransaction *)*(*(&v39 + 1) + 8 * j) _beginIfPossible];
                }

                v21 = [v20 countByEnumeratingWithState:&v39 objects:buf count:16];
              }

              while (v21);
            }
          }

          v8 = v34;
        }

        if ((v8 & v7) != 0)
        {
          if ([self _shouldComplete])
          {
            [self _willComplete];

            [(BSTransaction *)self _noteCompleted];
          }

          else if ([self _debugLoggingEnabled])
          {
            v24 = objc_autoreleasePoolPush();
            _descriptionProem2 = [self _descriptionProem];
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            _debugLogCategories = [self _debugLogCategories];
            v27 = [_debugLogCategories countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v27)
            {
              v28 = *v36;
              do
              {
                v29 = 0;
                do
                {
                  if (*v36 != v28)
                  {
                    objc_enumerationMutation(_debugLogCategories);
                  }

                  v30 = *(*(&v35 + 1) + 8 * v29);
                  if (_descriptionProem2 && os_log_type_enabled(*(*(&v35 + 1) + 8 * v29), OS_LOG_TYPE_DEBUG))
                  {
                    *v50 = 138412290;
                    *&v50[4] = _descriptionProem2;
                    _os_log_debug_impl(&dword_18FEF6000, v30, OS_LOG_TYPE_DEBUG, "%@:", v50, 0xCu);
                  }

                  v31 = v30;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = objc_opt_class();
                    *v50 = 138543618;
                    *&v50[4] = v32;
                    *&v50[12] = 2048;
                    *&v50[14] = self;
                    v33 = v32;
                    _os_log_debug_impl(&dword_18FEF6000, v31, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Transaction wishes to extend its life beyond its normal completion", v50, 0x16u);
                  }

                  ++v29;
                }

                while (v27 != v29);
                v27 = [_debugLogCategories countByEnumeratingWithState:&v35 objects:v47 count:16];
              }

              while (v27);
            }

            objc_autoreleasePoolPop(v24);
          }
        }
      }
    }

    else
    {

      [(BSTransaction *)self _areConcurrentChildTransactionsFinishedWorking];
    }
  }
}

- (uint64_t)_areConcurrentChildTransactionsFinishedWorking
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__BSTransaction__areConcurrentChildTransactionsFinishedWorking__block_invoke;
  v3[3] = &unk_1E72CB0B0;
  v3[4] = &v4;
  [(BSTransaction *)self _unsafe_enumerateChildTransactionsWithBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (BOOL)_isRootTransaction
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  return [(NSMutableArray *)self->_parentTransactionRelationships count]== 0;
}

uint64_t __63__BSTransaction__areConcurrentChildTransactionsFinishedWorking__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = result;
    result = [a2 isFinishedWorking];
    if ((result & 1) == 0)
    {
      *(*(*(v5 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __46__BSTransaction__areChildTransactionsComplete__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isComplete];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasStarted
{
  if ([(BSTransaction *)self isRunning])
  {
    return 1;
  }

  return [(BSTransaction *)self isComplete];
}

uint64_t __22__BSTransaction_begin__block_invoke_3(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 transactionDidBegin:v5];
  }

  return result;
}

- (void)_noteCompleted
{
  v59 = *MEMORY[0x1E69E9840];
  if (self[9] != 3)
  {
    selfCopy = self;
    [(BSTransaction *)selfCopy _setState:?];
    [selfCopy[4] timeIntervalSinceNow];
    v3 = -v2;
    if ([selfCopy isAuditHistoryEnabled])
    {
      [selfCopy _addAuditHistoryItem:{@"Completed after %.2fs.", *&v3}];
    }

    v4 = selfCopy[11];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      *&buf[22] = 2050;
      v57 = v3;
      v5 = *&buf[4];
      _os_log_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_INFO, "<%{public}@:%p> Completed after %{public}.2fs.", buf, 0x20u);
    }

    [selfCopy _didComplete];
    v6 = selfCopy[16];
    if (v6)
    {
      (*(v6 + 16))(v6, [selfCopy isFailed] ^ 1);
      v7 = selfCopy[16];
      selfCopy[16] = 0;
    }

    [selfCopy[5] removeAllObjects];
    v8 = selfCopy[5];
    selfCopy[5] = 0;

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __45__BSTransaction__notifyObserversOfCompletion__block_invoke;
    v53[3] = &unk_1E72CB088;
    v53[4] = selfCopy;
    [selfCopy _enumerateObserversWithBlock:v53];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = selfCopy[15];
    v10 = [v9 countByEnumeratingWithState:&v49 objects:buf count:16];
    if (v10)
    {
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [selfCopy[8] removeObject:*(*(&v49 + 1) + 8 * i)];
        }

        v10 = [v9 countByEnumeratingWithState:&v49 objects:buf count:16];
      }

      while (v10);
    }

    [selfCopy[15] removeAllObjects];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"BSTransactionCompletedNotification" object:selfCopy];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    array = [MEMORY[0x1E695DF70] array];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __36__BSTransaction__parentTransactions__block_invoke;
    v57 = COERCE_DOUBLE(&unk_1E72CB060);
    v15 = array;
    v58 = v15;
    [(BSTransaction *)selfCopy _unsafe_enumerateParentTransactionsWithBlock:buf];

    v16 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v16)
    {
      v17 = *v46;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v45 + 1) + 8 * j);
          if (v19)
          {
            queue = [*(*(&v45 + 1) + 8 * j) queue];
            BSDispatchQueueAssert(queue);

            if ([selfCopy isFailed])
            {
              v21 = [v19 _shouldFailForChildTransaction:selfCopy];
            }

            else
            {
              v21 = 0;
            }

            if (os_log_type_enabled(v19[11], OS_LOG_TYPE_INFO) || [v19 isAuditHistoryEnabled])
            {
              _descriptionProem = [selfCopy _descriptionProem];
              if ([v19 isAuditHistoryEnabled])
              {
                [v19 _addAuditHistoryItem:{@"Child transaction completed: %@", _descriptionProem}];
              }

              v23 = v19[11];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v24;
                *&buf[12] = 2048;
                *&buf[14] = v19;
                *&buf[22] = 2114;
                v57 = *&_descriptionProem;
                v25 = v24;
                _os_log_impl(&dword_18FEF6000, v23, OS_LOG_TYPE_INFO, "<%{public}@:%p> Child transaction completed: %{public}@", buf, 0x20u);
              }
            }

            [v19 _childTransactionDidComplete:selfCopy];
            if (v21)
            {
              v26 = MEMORY[0x1E696AEC0];
              _descriptionProem2 = [selfCopy _descriptionProem];
              v28 = [v26 stringWithFormat:@"Child transaction failed: %@", _descriptionProem2];

              error = [selfCopy error];
              v30 = [(BSTransaction *)v19 _createErrorWithCode:@"child transaction" reason:v28 description:error precipitatingError:?];

              [(BSTransaction *)v19 _failWithError:v30];
            }

            [(BSTransaction *)v19 _checkAndReportIfCompleted];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v16);
    }

    if ([selfCopy _isRootTransaction] && objc_msgSend(selfCopy, "_debugLoggingEnabled"))
    {
      context = objc_autoreleasePoolPush();
      _descriptionProem3 = [selfCopy _descriptionProem];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      _debugLogCategories = [selfCopy _debugLogCategories];
      v33 = [_debugLogCategories countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v33)
      {
        v34 = *v42;
        do
        {
          v35 = 0;
          do
          {
            if (*v42 != v34)
            {
              objc_enumerationMutation(_debugLogCategories);
            }

            v36 = *(*(&v41 + 1) + 8 * v35);
            if (_descriptionProem3 && os_log_type_enabled(*(*(&v41 + 1) + 8 * v35), OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = _descriptionProem3;
              _os_log_debug_impl(&dword_18FEF6000, v36, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
            }

            v37 = v36;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = objc_opt_class();
              *buf = 138543874;
              *&buf[4] = v38;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy;
              *&buf[22] = 2114;
              v57 = *&selfCopy;
              v39 = v38;
              _os_log_debug_impl(&dword_18FEF6000, v37, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Transaction completed: %{public}@", buf, 0x20u);
            }

            ++v35;
          }

          while (v33 != v35);
          v33 = [_debugLogCategories countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v33);
      }

      objc_autoreleasePoolPop(context);
    }
  }
}

uint64_t __47__BSTransaction__notifyObserversOfFinishedWork__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 transactionDidFinishWork:v5];
  }

  return result;
}

uint64_t __45__BSTransaction__notifyObserversOfCompletion__block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 transactionDidComplete:v5];
  }

  return result;
}

- (BOOL)isInterrupted
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  return self->_interrupted;
}

- (void)dealloc
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(BSTransaction *)self _debugLoggingEnabled])
  {
    context = objc_autoreleasePoolPush();
    _descriptionProem = [(BSTransaction *)self _descriptionProem];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    _debugLogCategories = [(BSTransaction *)self _debugLogCategories];
    v5 = [_debugLogCategories countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(_debugLogCategories);
          }

          v8 = *(*(&v24 + 1) + 8 * v7);
          if (_descriptionProem && os_log_type_enabled(*(*(&v24 + 1) + 8 * v7), OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = _descriptionProem;
            _os_log_debug_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
          }

          v9 = v8;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = objc_opt_class();
            *buf = 138543618;
            v30 = v10;
            v31 = 2048;
            selfCopy = self;
            v11 = v10;
            _os_log_debug_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Dealloc", buf, 0x16u);
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [_debugLogCategories countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v5);
    }

    objc_autoreleasePoolPop(context);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(NSMutableArray *)self->_childTransactionRelationships copy];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (v16)
        {
          v16 = v16[1];
        }

        v17 = v16;
        [(BSTransaction *)v17 _removeParentTransaction:?];
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v19.receiver = self;
  v19.super_class = BSTransaction;
  [(BSTransaction *)&v19 dealloc];
}

- (void)_removeParentTransaction:(uint64_t)transaction
{
  if (transaction)
  {
    v3 = [(BSTransaction *)*(transaction + 8) _parentRelationshipForTransaction:a2];
    v5 = v3;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeParentTransaction_ object:transaction file:@"BSTransaction.m" lineNumber:1099 description:@"Cannot remove a parent transaction that is not actually a parent."];

      v3 = 0;
    }

    [*(transaction + 8) removeObject:v3];
    if ([*(transaction + 8) count] && !*(transaction + 72))
    {
      [(BSTransaction *)transaction _beginIfPossible];
    }
  }
}

- (NSSet)milestones
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  milestones = self->_milestones;

  return milestones;
}

- (void)_unsafe_enumerateChildTransactionsWithBlock:(uint64_t)block
{
  v19 = *MEMORY[0x1E69E9840];
  if (block)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__unsafe_enumerateChildTransactionsWithBlock_ object:block file:@"BSTransaction.m" lineNumber:1229 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    v17 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(block + 48);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = *v14;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 8);
          v10 = *(v8 + 16);
        }

        else
        {
          v9 = 0;
          v10 = 0;
        }

        (*(a2 + 16))(a2, v9, v10, &v17);

        if (v17)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v11 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
          v5 = v11;
          if (v11)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (void)addChildTransaction:(id)transaction withSchedulingPolicy:(unint64_t)policy
{
  v76 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (policy == 1)
  {
    transactionCopy5 = transaction;
    if (transaction && *(transaction + 9))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BSTransaction.m" lineNumber:262 description:@"Cannot add a serial child transaction if the child has already begun."];

      transactionCopy5 = transaction;
    }

    [(BSTransaction *)self _inFinishedWorkingState];
LABEL_22:
    if ([(BSTransaction *)self isComplete])
    {
      if ([(BSTransaction *)self _debugLoggingEnabled])
      {
        contexta = objc_autoreleasePoolPush();
        _descriptionProem = [(BSTransaction *)self _descriptionProem];
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        _debugLogCategories = [(BSTransaction *)self _debugLogCategories];
        v21 = [_debugLogCategories countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v21)
        {
          v22 = *v57;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v57 != v22)
              {
                objc_enumerationMutation(_debugLogCategories);
              }

              v24 = *(*(&v56 + 1) + 8 * i);
              if (_descriptionProem && os_log_type_enabled(*(*(&v56 + 1) + 8 * i), OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = _descriptionProem;
                _os_log_debug_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
              }

              v25 = v24;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v26;
                *&buf[12] = 2048;
                *&buf[14] = self;
                v74 = 2114;
                transactionCopy6 = transaction;
                v27 = v26;
                _os_log_debug_impl(&dword_18FEF6000, v25, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Cannot add child transaction because we have already completed: %{public}@", buf, 0x20u);
              }
            }

            v21 = [_debugLogCategories countByEnumeratingWithState:&v56 objects:v68 count:16];
          }

          while (v21);
        }

        objc_autoreleasePoolPop(contexta);
      }

      return;
    }

    if (!transactionCopy5)
    {
      return;
    }

    if (self)
    {
      v28 = [(BSTransaction *)self _childRelationshipForTransaction:transactionCopy5];

      transactionCopy5 = transaction;
      if (v28)
      {
        return;
      }
    }

    v29 = [_BSTransactionChildRelationship alloc];
    if (v29 && (*buf = v29, *&buf[8] = _BSTransactionChildRelationship, (v30 = objc_msgSendSuper2(buf, sel_init)) != 0))
    {
      v55 = v30;
      objc_storeStrong(v30 + 1, transactionCopy5);
      v55[2] = policy;
      if (!self)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v55 = 0;
      if (!self)
      {
LABEL_82:

        return;
      }
    }

    if (v55)
    {
      v31 = v55[1];
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v33 = self->_debugLogCategories;
    v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v64 objects:buf count:16];
    if (v34)
    {
      v35 = *v65;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v65 != v35)
          {
            objc_enumerationMutation(v33);
          }

          [v32 _addDebugLogCategory:*(*(&v64 + 1) + 8 * j)];
        }

        v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v64 objects:buf count:16];
      }

      while (v34);
    }

    [v32 setAuditHistoryEnabled:self->_auditHistoryEnabled];
    [(BSTransaction *)self _willAddChildTransaction:v32];
    if (os_log_type_enabled(self->_auditHistoryLog, OS_LOG_TYPE_INFO) || [(BSTransaction *)self isAuditHistoryEnabled])
    {
      _descriptionProem2 = [v32 _descriptionProem];
      if ([(BSTransaction *)self isAuditHistoryEnabled])
      {
        [(BSTransaction *)self _addAuditHistoryItem:@"Adding child transaction: %@", _descriptionProem2];
      }

      v38 = self->_auditHistoryLog;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *v70 = 138543874;
        *&v70[4] = v39;
        *&v70[12] = 2048;
        *&v70[14] = self;
        v71 = 2114;
        v72 = _descriptionProem2;
        v40 = v39;
        _os_log_impl(&dword_18FEF6000, v38, OS_LOG_TYPE_INFO, "<%{public}@:%p> Adding child transaction: %{public}@", v70, 0x20u);
      }
    }

    if (v55)
    {
      v41 = v55[2];
    }

    else
    {
      v41 = 0;
    }

    [(NSMutableArray *)self->_childTransactionRelationships addObject:?];
    if (v32)
    {
      v42 = [(BSTransaction *)v32[1] _parentRelationshipForTransaction:?];

      if (v42)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__addParentTransaction_withSchedulingPolicy_ object:v32 file:@"BSTransaction.m" lineNumber:1090 description:@"Cannot add the same parent transaction twice."];
      }

      v43 = [_BSTransactionParentRelationship alloc];
      if (v43)
      {
        *v70 = v43;
        *&v70[8] = _BSTransactionParentRelationship;
        v44 = objc_msgSendSuper2(v70, sel_init);
        v45 = v44;
        if (v44)
        {
          *(v44 + 1) = self;
          *(v44 + 2) = v41;
        }
      }

      else
      {
        v45 = 0;
      }

      [v32[1] addObject:v45];
    }

    [(BSTransaction *)self _didAddChildTransaction:v32];
    if (!self->_inSubclassBegin)
    {
      _isDoingWork = [(BSTransaction *)self _isDoingWork];
      v47 = v41 ? 0 : _isDoingWork;
      if ((v47 & 1) != 0 || ((v48 = [(BSTransaction *)self _inFinishedWorkingState], v41 == 1) ? (v49 = v48) : (v49 = 0), v49 == 1))
      {
        [(BSTransaction *)v32 _beginIfPossible];
        [(BSTransaction *)&self->super.isa _checkAndReportIfCompleted];
      }
    }

    goto LABEL_82;
  }

  _inFinishedWorkingState = [(BSTransaction *)self _inFinishedWorkingState];
  transactionCopy5 = transaction;
  if (policy || !_inFinishedWorkingState)
  {
    goto LABEL_22;
  }

  if ([(BSTransaction *)self _debugLoggingEnabled])
  {
    context = objc_autoreleasePoolPush();
    _descriptionProem3 = [(BSTransaction *)self _descriptionProem];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    _debugLogCategories2 = [(BSTransaction *)self _debugLogCategories];
    v12 = [_debugLogCategories2 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v12)
    {
      v13 = *v61;
      do
      {
        for (k = 0; k != v12; ++k)
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(_debugLogCategories2);
          }

          v15 = *(*(&v60 + 1) + 8 * k);
          if (_descriptionProem3 && os_log_type_enabled(*(*(&v60 + 1) + 8 * k), OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = _descriptionProem3;
            _os_log_debug_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
          }

          v16 = v15;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v17;
            *&buf[12] = 2048;
            *&buf[14] = self;
            v74 = 2114;
            transactionCopy6 = transaction;
            v18 = v17;
            _os_log_debug_impl(&dword_18FEF6000, v16, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Cannot add concurrent child transaction because we have already finished doing work: %{public}@", buf, 0x20u);
          }
        }

        v12 = [_debugLogCategories2 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)hasChildTransactionsOfClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_childTransactionRelationships;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9)
        {
          v9 = v9[1];
        }

        v10 = v9;
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)childTransactionsOfClass:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_childTransactionRelationships;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v10)
        {
          v10 = v10[1];
        }

        v11 = v10;
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)removeAllChildTransactionsOfClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableArray *)self->_childTransactionRelationships copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(BSTransaction *)&self->super.isa _removeChildTransactionRelationship:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v13 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v13;
    }

    while (v13);
  }
}

- (void)_removeChildTransactionRelationship:(id *)relationship
{
  v15 = *MEMORY[0x1E69E9840];
  if (relationship)
  {
    if (a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    [relationship _willRemoveChildTransaction:v5];
    if (os_log_type_enabled(relationship[11], OS_LOG_TYPE_INFO) || [relationship isAuditHistoryEnabled])
    {
      _descriptionProem = [v5 _descriptionProem];
      if ([relationship isAuditHistoryEnabled])
      {
        [relationship _addAuditHistoryItem:{@"Removing child transaction: %@", _descriptionProem}];
      }

      v7 = relationship[11];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v10 = objc_opt_class();
        v11 = 2048;
        relationshipCopy = relationship;
        v13 = 2114;
        v14 = _descriptionProem;
        v8 = v10;
        _os_log_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_INFO, "<%{public}@:%p> Removing child transaction: %{public}@", buf, 0x20u);
      }
    }

    [(BSTransaction *)v5 _removeParentTransaction:relationship];
    [relationship[6] removeObject:a2];
    [relationship _didRemoveChildTransaction:v5];
    if ([relationship isRunning])
    {
      [(BSTransaction *)relationship _checkAndReportIfCompleted];
    }
  }
}

- (void)removeChildTransaction:(id)transaction
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (transaction)
  {
    v6 = [(BSTransaction *)self _childRelationshipForTransaction:transaction];
    if (v6)
    {
      [(BSTransaction *)&self->super.isa _removeChildTransactionRelationship:v6];
    }
  }
}

- (void)_childRelationshipForTransaction:(uint64_t)transaction
{
  v17 = *MEMORY[0x1E69E9840];
  if (transaction)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(transaction + 48);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * v6);
          if (v7)
          {
            v8 = v7[1];
          }

          else
          {
            v8 = 0;
          }

          if (v8 == a2)
          {
            v10 = v7;
            goto LABEL_16;
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v4 = v9;
      }

      while (v9);
    }

    v10 = 0;
LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeAllChildTransactions
{
  v13 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(NSMutableArray *)self->_childTransactionRelationships copy];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(BSTransaction *)&self->super.isa _removeChildTransactionRelationship:?];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSArray)allErrors
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childTransactions = [(BSTransaction *)self childTransactions];
  v5 = [childTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(childTransactions);
        }

        allErrors = [*(*(&v10 + 1) + 8 * i) allErrors];
        [array addObjectsFromArray:allErrors];
      }

      v5 = [childTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (self->_error)
  {
    [array addObject:?];
  }

  return array;
}

- (void)registerBlockObserver:(id)observer
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (!observer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSTransaction.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"blockObserverCallback"}];
  }

  v7 = objc_alloc_init(BSTransactionBlockObserver);
  (*(observer + 2))(observer);
  [(NSMutableArray *)self->_blockObservers addObject:v7];
  [(BSTransaction *)self addObserver:v7];
}

- (void)addObserver:(id)observer
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (observer && ![(NSHashTable *)self->_observers containsObject:observer])
  {
    observers = self->_observers;

    [(NSHashTable *)observers addObject:observer];
  }
}

- (void)removeObserver:(id)observer
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (observer && [(NSHashTable *)self->_observers containsObject:observer])
  {
    [(NSHashTable *)self->_observers removeObject:observer];
    blockObservers = self->_blockObservers;

    [(NSMutableArray *)blockObservers removeObject:observer];
  }
}

- (void)_setState:(uint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (state)
  {
    v4 = *(state + 72);
    if (v4 != a2)
    {
      if (!os_log_type_enabled(*(state + 88), OS_LOG_TYPE_INFO))
      {
        if (![state isAuditHistoryEnabled])
        {
LABEL_11:
          *(state + 72) = a2;
          return;
        }

        v4 = *(state + 72);
      }

      v5 = NSStringFromBSTransactionState(v4);
      v6 = NSStringFromBSTransactionState(a2);
      if ([state isAuditHistoryEnabled])
      {
        [state _addAuditHistoryItem:{@"State changed from '%@' to '%@'", v5, v6}];
      }

      v7 = *(state + 88);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        v10 = objc_opt_class();
        v11 = 2048;
        stateCopy = state;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = v6;
        v8 = v10;
        _os_log_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_INFO, "<%{public}@:%p> State changed from '%{public}@' to '%{public}@'", buf, 0x2Au);
      }

      goto LABEL_11;
    }
  }
}

- (id)_childTransactionsWithSchedulingPolicy:(uint64_t)policy
{
  if (policy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__BSTransaction__childTransactionsWithSchedulingPolicy___block_invoke;
    v7[3] = &unk_1E72CB190;
    v9 = a2;
    v5 = array;
    v8 = v5;
    [(BSTransaction *)policy _unsafe_enumerateChildTransactionsWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_preventTransactionCompletionForReason:(char)reason ignoringAuditHistory:(uint64_t)history andExecuteBlock:
{
  v19 = *MEMORY[0x1E69E9840];
  if (self && history)
  {
    [*(self + 16) addObject:a2];
    if ((reason & 1) == 0)
    {
      if ([self isAuditHistoryEnabled])
      {
        [self _addAuditHistoryItem:{@"Life assertion taken for reason: %@", a2}];
      }

      v8 = *(self + 88);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v14 = objc_opt_class();
        v15 = 2048;
        selfCopy2 = self;
        v17 = 2114;
        v18 = a2;
        v9 = v14;
        _os_log_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_INFO, "<%{public}@:%p> Life assertion taken for reason: %{public}@", buf, 0x20u);
      }
    }

    (*(history + 16))(history);
    if (a2 && [*(self + 16) containsObject:a2])
    {
      if ((reason & 1) == 0)
      {
        if ([self isAuditHistoryEnabled])
        {
          [self _addAuditHistoryItem:{@"Life assertion removed for reason: %@", a2}];
        }

        v10 = *(self + 88);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          *buf = 138543874;
          v14 = v11;
          v15 = 2048;
          selfCopy2 = self;
          v17 = 2114;
          v18 = a2;
          v12 = v11;
          _os_log_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_INFO, "<%{public}@:%p> Life assertion removed for reason: %{public}@", buf, 0x20u);
        }
      }

      [*(self + 16) removeObject:a2];
      if (![*(self + 16) count])
      {
        if ((*(self + 137) & 1) != 0 || *(self + 24) == 1)
        {
          if ([self isRunning])
          {
            [(BSTransaction *)self _terminateNow];
          }
        }

        [(BSTransaction *)self _checkAndReportIfCompleted];
      }
    }
  }
}

- (BOOL)isInterruptible
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if ([(BSTransaction *)self _canBeInterrupted])
  {
    v4 = ![(BSTransaction *)self isComplete];
  }

  else
  {
    v4 = 0;
  }

  v11 = v4;
  if (*(v9 + 24) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__BSTransaction_isInterruptible__block_invoke;
    v7[3] = &unk_1E72CB0B0;
    v7[4] = &v8;
    [(BSTransaction *)self _unsafe_enumerateChildTransactionsWithBlock:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __32__BSTransaction_isInterruptible__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isComplete];
  if ((result & 1) == 0)
  {
    result = [a2 isInterruptible];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (void)setCompletionBlock:(id)block
{
  if (self->_completionBlock != block)
  {
    v5 = [block copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;
  }
}

- (void)interruptWithReason:(id)reason
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  [(BSTransaction *)self _interruptWithReason:reason force:0];
}

- (void)_interruptWithReason:(char)reason force:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v6 = selfCopy;
    if (reason & 1) != 0 || ([selfCopy isInterruptible])
    {
      if ([v6 isComplete])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__interruptWithReason_force_ object:v6 file:@"BSTransaction.m" lineNumber:1407 description:@"Cannot interrupt a completed transaction."];
      }

      if (([v6 isRunning] & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__interruptWithReason_force_ object:v6 file:@"BSTransaction.m" lineNumber:1408 description:@"Cannot interrupt a non-running transaction."];
      }

      if (*(v6 + 25))
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__interruptWithReason_force_ object:v6 file:@"BSTransaction.m" lineNumber:1409 description:@"Cannot interrupt an already interrupted transaction."];
      }

      if ([v6 isAuditHistoryEnabled])
      {
        [v6 _addAuditHistoryItem:{@"Interrupting for reason: %@", a2}];
      }

      v7 = *(v6 + 88);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v22 = objc_opt_class();
        v23 = 2048;
        v24 = v6;
        v25 = 2114;
        v26 = a2;
        v8 = v22;
        _os_log_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_INFO, "<%{public}@:%p> Interrupting for reason: %{public}@", buf, 0x20u);
      }

      if (!*(v6 + 144))
      {
        v9 = [(BSTransaction *)v6 _createErrorWithCode:a2 reason:0 description:0 precipitatingError:?];
        v10 = *(v6 + 144);
        *(v6 + 144) = v9;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __44__BSTransaction__interruptWithReason_force___block_invoke;
      v19[3] = &unk_1E72CB1B8;
      v19[4] = v6;
      v19[5] = a2;
      reasonCopy = reason;
      [(BSTransaction *)v6 _preventTransactionCompletionForReason:0 ignoringAuditHistory:v19 andExecuteBlock:?];
      if (([v6 isComplete] & 1) == 0)
      {
        v11 = *(v6 + 88);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          *buf = 138543618;
          v22 = v12;
          v23 = 2048;
          v24 = v6;
          v13 = v12;
          _os_log_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_INFO, "<%{public}@:%p> Interrupted but not yet done. Waiting.", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = *(v6 + 88);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v22 = objc_opt_class();
        v23 = 2048;
        v24 = v6;
        v25 = 2114;
        v26 = a2;
        v15 = v22;
        _os_log_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_INFO, "<%{public}@:%p> Cannot be interrupted for reason %{public}@. Ignoring.", buf, 0x20u);
      }
    }
  }
}

- (void)failWithReason:(id)reason
{
  v4 = [(BSTransaction *)self _createErrorWithCode:reason reason:0 description:0 precipitatingError:?];
  [(BSTransaction *)self _failWithError:v4];
}

- (id)_createErrorWithCode:(uint64_t)code reason:(uint64_t)reason description:(uint64_t)description precipitatingError:
{
  if (self)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transaction %@.", off_1E72CB220[a2 - 1]];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = dictionary;
    if (reason)
    {
      [dictionary setObject:reason forKey:@"error-description"];
      reason = [v10 stringByAppendingFormat:@" %@", reason];

      v10 = reason;
    }

    if (code)
    {
      [v12 setObject:code forKey:@"error-reason"];
      code = [v10 stringByAppendingFormat:@" (%@)", code];

      v10 = code;
    }

    if (description)
    {
      [v12 setObject:description forKey:@"precipitating-error"];
    }

    v15 = [BSDescriptionBuilder succinctDescriptionForObject:self];
    [v12 setObject:v15 forKey:@"transaction"];

    [v12 setObject:v10 forKey:*MEMORY[0x1E696A588]];
    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"BSTransactionError" code:a2 userInfo:v12];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_failWithError:(uint64_t)error
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    queue = [error queue];
    BSDispatchQueueAssert(queue);

    if ((*(error + 24) & 1) == 0 && (*(error + 137) & 1) == 0 && ([error isComplete] & 1) == 0)
    {
      v5 = *(error + 144);
      *(error + 137) = 1;
      if (!v5)
      {
        if (!v3)
        {
          v3 = [(BSTransaction *)error _createErrorWithCode:0 reason:0 description:0 precipitatingError:?];
        }

        objc_storeStrong((error + 144), v3);
      }

      userInfo = [v3 userInfo];
      v7 = [userInfo objectForKey:@"error-reason"];

      v8 = @"(unspecified)";
      if (v7)
      {
        v8 = v7;
      }

      v9 = v8;
      if ([error isAuditHistoryEnabled])
      {
        [error _addAuditHistoryItem:{@"Failing for reason: %@", v9}];
      }

      v10 = *(error + 88);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v13 = objc_opt_class();
        v14 = 2048;
        errorCopy = error;
        v16 = 2114;
        v17 = v9;
        v11 = v13;
        _os_log_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_INFO, "<%{public}@:%p> Failing for reason: %{public}@", buf, 0x20u);
      }

      if (![*(error + 16) count])
      {
        [(BSTransaction *)error _terminateNow];
      }
    }
  }
}

- (void)addMilestone:(id)milestone
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:milestone];
  [(BSTransaction *)self addMilestones:?];
}

- (void)addMilestones:(id)milestones
{
  v31 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if ([milestones count])
  {
    if ([(BSTransaction *)self isFinishedWorking])
    {
      if ([(BSTransaction *)self _debugLoggingEnabled])
      {
        context = objc_autoreleasePoolPush();
        _descriptionProem = [(BSTransaction *)self _descriptionProem];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        _debugLogCategories = [(BSTransaction *)self _debugLogCategories];
        v7 = [_debugLogCategories countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v7)
        {
          v8 = *v21;
          do
          {
            v9 = 0;
            do
            {
              if (*v21 != v8)
              {
                objc_enumerationMutation(_debugLogCategories);
              }

              v10 = *(*(&v20 + 1) + 8 * v9);
              if (_descriptionProem && os_log_type_enabled(*(*(&v20 + 1) + 8 * v9), OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v25 = _descriptionProem;
                _os_log_debug_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
              }

              v11 = v10;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v12 = objc_opt_class();
                v13 = [(BSTransaction *)self _stringForMilestones:milestones];
                *buf = 138543874;
                v25 = v12;
                v26 = 2048;
                selfCopy2 = self;
                v28 = 2114;
                v29 = v13;
                _os_log_debug_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Cannot add milestones because we have already finished working: %{public}@", buf, 0x20u);
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [_debugLogCategories countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v7);
        }

        objc_autoreleasePoolPop(context);
      }
    }

    else
    {
      if (os_log_type_enabled(self->_auditHistoryLog, OS_LOG_TYPE_INFO) || [(BSTransaction *)self isAuditHistoryEnabled])
      {
        if ([(BSTransaction *)self isAuditHistoryEnabled])
        {
          v14 = [(BSTransaction *)self _stringForMilestones:milestones];
          [(BSTransaction *)self _addAuditHistoryItem:@"Milestones added: %@", v14];
        }

        v15 = self->_auditHistoryLog;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = [(BSTransaction *)self _stringForMilestones:milestones];
          *buf = 138543874;
          v25 = v16;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_INFO, "<%{public}@:%p> Milestones added: %{public}@", buf, 0x20u);
        }
      }

      [(NSMutableSet *)self->_milestones unionSet:milestones];
    }
  }
}

- (BOOL)removeMilestone:(id)milestone
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:milestone];
  LOBYTE(self) = [(BSTransaction *)self removeMilestones:v4];

  return self;
}

- (BOOL)removeMilestones:(id)milestones
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  return [(BSTransaction *)&self->super.isa _removeMilestones:milestones ignoringAuditHistory:0];
}

- (BOOL)_removeMilestones:(char)milestones ignoringAuditHistory:
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if ([self isComplete])
  {
    if ([self _debugLoggingEnabled])
    {
      context = objc_autoreleasePoolPush();
      _descriptionProem = [self _descriptionProem];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      _debugLogCategories = [self _debugLogCategories];
      v7 = [_debugLogCategories countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v7)
      {
        v8 = *v24;
        do
        {
          v9 = 0;
          do
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(_debugLogCategories);
            }

            v10 = *(*(&v23 + 1) + 8 * v9);
            if (_descriptionProem && os_log_type_enabled(*(*(&v23 + 1) + 8 * v9), OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v28 = _descriptionProem;
              _os_log_debug_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_DEBUG, "%@:", buf, 0xCu);
            }

            v11 = v10;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = objc_opt_class();
              v13 = [self _stringForMilestones:a2];
              *buf = 138543874;
              v28 = v12;
              v29 = 2048;
              selfCopy2 = self;
              v31 = 2114;
              v32 = v13;
              _os_log_debug_impl(&dword_18FEF6000, v11, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Attempt to remove milestones once completed: %{public}@", buf, 0x20u);
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [_debugLogCategories countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v7);
      }

      objc_autoreleasePoolPop(context);
    }

    return 0;
  }

  v14 = [a2 count];
  v15 = v14 != 0;
  if (v14 && (milestones & 1) == 0)
  {
    if (os_log_type_enabled(self[11], OS_LOG_TYPE_INFO) || [self isAuditHistoryEnabled])
    {
      if ([self isAuditHistoryEnabled])
      {
        v16 = [self _stringForMilestones:a2];
        [self _addAuditHistoryItem:{@"Removed milestones: %@", v16}];
      }

      v17 = self[11];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = [self _stringForMilestones:a2];
        *buf = 138543874;
        v28 = v18;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = v19;
        _os_log_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_INFO, "<%{public}@:%p> Removed milestones: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

  if (!v14)
  {
    return 0;
  }

LABEL_27:
  [self[7] minusSet:a2];
  [(BSTransaction *)self _checkAndReportIfCompleted];
  return v15;
}

- (void)removeAllMilestones
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  milestones = self->_milestones;

  [(BSTransaction *)self removeMilestones:milestones];
}

- (BOOL)isWaitingForMilestone:(id)milestone
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  milestones = self->_milestones;

  return [(NSMutableSet *)milestones containsObject:milestone];
}

- (void)evaluateMilestone:(id)milestone withEvaluator:(id)evaluator
{
  v18 = *MEMORY[0x1E69E9840];
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (evaluator && ![(BSTransaction *)self isComplete]&& [(BSTransaction *)self isWaitingForMilestone:milestone]&& (*(evaluator + 2))(evaluator))
  {
    milestone = [MEMORY[0x1E696AEC0] stringWithFormat:@"Milestone satisfied: %@", milestone];
    [(BSTransaction *)self _addAuditHistoryItem:@"%@", milestone];
    v9 = self->_auditHistoryLog;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v13 = objc_opt_class();
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      milestoneCopy = milestone;
      v10 = v13;
      _os_log_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_INFO, "<%{public}@:%p> Milestone satisfied: %{public}@", buf, 0x20u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__BSTransaction_evaluateMilestone_withEvaluator___block_invoke;
    v11[3] = &unk_1E72CACC0;
    v11[4] = self;
    v11[5] = milestone;
    [(BSTransaction *)self _preventTransactionCompletionForReason:milestone ignoringAuditHistory:1 andExecuteBlock:v11];
  }
}

void __49__BSTransaction_evaluateMilestone_withEvaluator___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  [*(*v2 + 40) removeObjectForKey:v2[1]];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
  [(BSTransaction *)v4 _removeMilestones:v5 ignoringAuditHistory:1];

  [*(a1 + 32) _didSatisfyMilestone:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)listenForSatisfiedMilestone:(id)milestone withBlock:(id)block
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (milestone && block)
  {
    v9 = [(NSMutableDictionary *)self->_milestonesToHandlers objectForKey:milestone];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }

    v7 = [block copy];
    [v9 addObject:v7];
  }
}

- (id)_descriptionForDebugging:(uint64_t)debugging indentLevel:(int)level
{
  if (debugging)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = [(BSTransaction *)debugging _descriptionForDebugging:level indentLevel:0 visited:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateObserversWithBlock:(id)block
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  if (block)
  {
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects count];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [allObjects objectAtIndex:i];
        (*(block + 2))(block, v7);
      }
    }
  }
}

- (void)_evaluateCompletion
{
  queue = [(BSTransaction *)self queue];
  BSDispatchQueueAssert(queue);

  [(BSTransaction *)&self->super.isa _checkAndReportIfCompleted];
}

- (void)_failForTimeoutWithDescription:(id)description
{
  v4 = [(BSTransaction *)self _createErrorWithCode:@"timeout" reason:description description:0 precipitatingError:?];
  [(BSTransaction *)self _failWithError:v4];
}

- (void)_failWithReason:(id)reason description:(id)description precipitatingError:(id)error
{
  v6 = [(BSTransaction *)self _createErrorWithCode:reason reason:description description:error precipitatingError:?];
  [(BSTransaction *)self _failWithError:v6];
}

void __39__BSTransaction__defaultTransactionLog__block_invoke()
{
  v0 = os_log_create("com.apple.BaseBoard", "Transaction");
  v1 = qword_1ED44FD78;
  qword_1ED44FD78 = v0;
}

- (id)_graphNodeIdentifier
{
  selfCopy = self;
  if (self)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    selfCopy = [v2 stringWithFormat:@"%@-%p", v4, selfCopy];
  }

  return selfCopy;
}

- (id)_graphNodeDebugName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_populateGraphIntoNodes:(void *)nodes edges:
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    _customizedDescriptionProperties = [self _customizedDescriptionProperties];
    v8 = _customizedDescriptionProperties;
    if (_customizedDescriptionProperties)
    {
      v9 = [_customizedDescriptionProperties bs_filter:&__block_literal_global_143];
    }

    else
    {
      v9 = 0;
    }

    [dictionary addEntriesFromDictionary:v9];
    _graphNodeIdentifier = [(BSTransaction *)self _graphNodeIdentifier];
    [dictionary setObject:_graphNodeIdentifier forKey:@"id"];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
    [dictionary setObject:v11 forKey:@"pointer"];

    _graphNodeDebugName = [self _graphNodeDebugName];
    [dictionary setObject:_graphNodeDebugName forKey:@"name"];

    v13 = NSStringFromBSTransactionState(*(self + 72));
    [dictionary setObject:v13 forKey:@"state"];

    if (*(self + 25) == 1)
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKey:@"interrupted"];
    }

    if (*(self + 24) == 1)
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKey:@"aborted"];
    }

    if (*(self + 137) == 1)
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKey:@"failed"];
    }

    v14 = *(self + 144);
    if (v14)
    {
      v15 = [v14 description];
      [dictionary setObject:v15 forKey:@"error"];
    }

    if ([*(self + 56) count])
    {
      v16 = [self _stringForMilestones:*(self + 56)];
      [dictionary setObject:v16 forKey:@"milestonesRemaining"];
    }

    [a2 addObject:dictionary];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = *(self + 48);
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          if (!v21)
          {
            v23 = 0;
LABEL_26:
            v25 = [BSTransaction _buildGraphEdgeDescriptionWithType:self fromTransaction:v23 toTransaction:?];
            goto LABEL_27;
          }

          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          if (!v24)
          {
            goto LABEL_26;
          }

          if (v24 != 1)
          {
            v26 = 0;
            goto LABEL_28;
          }

          v25 = [BSTransaction _buildGraphEdgeDescriptionWithType:self fromTransaction:v23 toTransaction:?];
LABEL_27:
          v26 = v25;
LABEL_28:
          [nodes addObject:v26];
          [(BSTransaction *)v23 _populateGraphIntoNodes:a2 edges:nodes];

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }
  }
}

uint64_t __54__BSTransaction__sanitizedCustomDescriptionProperties__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 bs_isPlistableType];
  if (result)
  {

    return [a3 bs_isPlistableType];
  }

  return result;
}

- (id)_buildGraphEdgeDescriptionWithType:(uint64_t)type fromTransaction:(id)transaction toTransaction:(void *)toTransaction
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = type;
  v8[0] = @"type";
  v8[1] = @"from";
  _graphNodeIdentifier = [(BSTransaction *)transaction _graphNodeIdentifier];
  v9[1] = _graphNodeIdentifier;
  v8[2] = @"to";
  _graphNodeIdentifier2 = [(BSTransaction *)toTransaction _graphNodeIdentifier];
  v9[2] = _graphNodeIdentifier2;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_descriptionForDebugging:(uint64_t)debugging indentLevel:(void *)level visited:
{
  v80[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v54 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = debugging; debugging; --debugging)
    {
      [v54 appendString:@"    "];
    }

    v52 = [v54 mutableCopy];
    [v52 appendString:@"    "];
    v6 = [v52 mutableCopy];
    [v6 appendString:@"    "];
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    _descriptionProem = [selfCopy _descriptionProem];
    v9 = _descriptionProem;
    v10 = &stru_1F03A1A98;
    if (!i)
    {
      v10 = @"\n";
    }

    [v7 appendFormat:@"%@%@%@\n", v10, v54, _descriptionProem];

    if (([level containsObject:selfCopy] & 1) == 0)
    {
      [level addObject:selfCopy];
      if (*(selfCopy + 72) == 3)
      {
        v11 = @"YES\n";
      }

      else
      {
        v11 = @"NO\n";
      }

      [v7 appendFormat:@"%@Completed: %@", v52, v11];
      _customizedDescriptionProperties = [selfCopy _customizedDescriptionProperties];
      v12 = [_customizedDescriptionProperties count];
      if (_customizedDescriptionProperties)
      {
        v13 = v12;
        if (v12)
        {
          v76 = 0;
          v77 = &v76;
          v78 = 0x2020000000;
          v79 = 0;
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke;
          v69[3] = &unk_1E72CB140;
          v14 = v7;
          v70 = v14;
          v71 = v52;
          v72 = v6;
          v73 = &v76;
          v74 = v13;
          [_customizedDescriptionProperties enumerateKeysAndObjectsUsingBlock:v69];
          [v14 appendString:@"\n"];

          _Block_object_dispose(&v76, 8);
        }
      }

      if (([selfCopy isComplete] & 1) == 0)
      {
        if ([selfCopy isInterruptible])
        {
          v15 = @"YES\n";
        }

        else
        {
          v15 = @"NO\n";
        }

        [v7 appendFormat:@"%@Interruptible? %@", v52, v15];
      }

      if (*(selfCopy + 25) == 1)
      {
        [v7 appendFormat:@"%@Interrupted: %@", v52, @"YES\n"];
      }

      if (*(selfCopy + 137) == 1)
      {
        [v7 appendFormat:@"%@Failed: %@", v52, @"YES\n"];
      }

      if (*(selfCopy + 24) == 1)
      {
        [v7 appendFormat:@"%@Aborted: %@", v52, @"YES\n"];
      }

      v16 = *(selfCopy + 144);
      if (v16)
      {
        domain = [v16 domain];
        [v7 appendFormat:@"%@Error domain: %@; Code: %d\n", v52, domain, objc_msgSend(*(selfCopy + 144), "code")];

        localizedDescription = [*(selfCopy + 144) localizedDescription];
        [v7 appendFormat:@"%@Error description: %@\n", v52, localizedDescription];
      }

      v19 = [*(selfCopy + 56) count];
      if (v19)
      {
        v20 = @"\n";
      }

      else
      {
        v20 = @"(none)\n";
      }

      [v7 appendFormat:@"%@Milestones pending: %@", v52, v20];
      if (v19)
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v47 = selfCopy;
        v21 = *(selfCopy + 56);
        v22 = [v21 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v22)
        {
          v23 = 0;
          v24 = *v66;
          do
          {
            v25 = 0;
            v26 = v23 + 1;
            v53 = v22 + v23;
            do
            {
              if (*v66 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [v7 appendFormat:@"%@%@", v6, *(*(&v65 + 1) + 8 * v25)];
              if (v26 < v19)
              {
                [v7 appendString:@"\n"];
              }

              ++v25;
              ++v26;
            }

            while (v22 != v25);
            v22 = [v21 countByEnumeratingWithState:&v65 objects:v75 count:16];
            v23 = v53;
          }

          while (v22);
        }

        selfCopy = v47;
        [v7 appendString:@"\n"];
      }

      v27 = *(selfCopy + 80);
      if (v27)
      {
        items = [v27 items];
        v29 = [items count];
        if (v29)
        {
          v30 = @"\n";
        }

        else
        {
          v30 = @"(none)\n";
        }

        [v7 appendFormat:@"%@Audit history: %@", v52, v30];
        if (v29)
        {
          v31 = 0;
          do
          {
            v32 = [items objectAtIndex:v31];
            [v7 appendFormat:@"%@%@", v6, v32];

            if (++v31 < v29)
            {
              [v7 appendString:@"\n"];
            }
          }

          while (v29 != v31);
          [v7 appendString:@"\n"];
        }
      }

      v33 = [(BSTransaction *)selfCopy _childTransactionsWithSchedulingPolicy:?];
      v34 = [(BSTransaction *)selfCopy _childTransactionsWithSchedulingPolicy:?];
      if ([v34 count])
      {
        v35 = @"\n";
      }

      else
      {
        v35 = @"(none)\n";
      }

      [v7 appendFormat:@"%@Concurrent child transactions: %@", v52, v35];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_3;
      v60[3] = &unk_1E72CB168;
      v36 = v7;
      v64 = a2;
      levelCopy = level;
      v63 = i;
      v61 = v36;
      [v34 enumerateObjectsUsingBlock:v60];
      if ([v33 count])
      {
        v37 = @"\n";
      }

      else
      {
        v37 = @"(none)\n";
      }

      [v36 appendFormat:@"%@Serial child transactions: %@", v52, v37];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_4;
      v55[3] = &unk_1E72CB168;
      v38 = v36;
      v59 = a2;
      levelCopy2 = level;
      v58 = i;
      v56 = v38;
      [v33 enumerateObjectsUsingBlock:v55];
      if (!i && a2)
      {
        v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(BSTransaction *)selfCopy _populateGraphIntoNodes:v39 edges:v40];
        v80[0] = @"nodes";
        v80[1] = @"edges";
        v76 = v39;
        v77 = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:v80 count:2];

        v76 = 0;
        v42 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v41 options:0 error:&v76];
        v43 = v76;
        v44 = [v42 base64EncodedStringWithOptions:32];

        [v38 appendFormat:@"graph-base64-encoded: %@", v44];
        [v38 appendString:@"\n"];
      }

      v45 = v38;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v7)
  {
    v11 = a3;
    v12 = [(__CFString *)v11 count];
    v13 = @"\n";
    if (!v12)
    {
      v13 = @"(none)\n";
    }

    [*(a1 + 32) appendFormat:@"%@%@: %@", *(a1 + 40), a2, v13];
    if (v12)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v23 = v11;
      v14 = v11;
      v15 = [(__CFString *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v15)
      {
        v16 = 0;
        v17 = *v31;
        do
        {
          v18 = 0;
          v19 = v16 + 1;
          v16 += v15;
          do
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(a1 + 32) appendFormat:@"%@%@", *(a1 + 48), *(*(&v30 + 1) + 8 * v18)];
            if (v19 < v12)
            {
              [*(a1 + 32) appendString:@"\n"];
            }

            ++v18;
            ++v19;
          }

          while (v15 != v18);
          v15 = [(__CFString *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      v11 = v23;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = a3;
      v9 = [(__CFString *)v8 count];
      v10 = @"\n";
      if (!v9)
      {
        v10 = @"(none)\n";
      }

      [*(a1 + 32) appendFormat:@"%@%@: %@", *(a1 + 40), a2, v10];
      if (v9)
      {
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2020000000;
        v29[3] = 0;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_2;
        v24[3] = &unk_1E72CB118;
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        v27 = v29;
        v28 = v9;
        [(__CFString *)v8 enumerateKeysAndObjectsUsingBlock:v24];

        _Block_object_dispose(v29, 8);
      }
    }

    else
    {
      v20 = @"(none)\n";
      if (a3)
      {
        v20 = a3;
      }

      [*(a1 + 32) appendFormat:@"%@%@: %@", *(a1 + 40), a2, v20];
    }
  }

  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 24) + 1;
  if (v22 < *(a1 + 64))
  {
    [*(a1 + 32) appendString:@"\n"];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 24) + 1;
  }

  *(v21 + 24) = v22;
}

uint64_t __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) appendFormat:@"%@%@ = %@", *(a1 + 40), a2, a3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24) + 1;
  if (v6 < *(a1 + 56))
  {
    result = [*(a1 + 32) appendString:@"\n"];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24) + 1;
  }

  *(v5 + 24) = v6;
  return result;
}

void __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [(BSTransaction *)a2 _descriptionForDebugging:*(a1 + 48) + 2 indentLevel:*(a1 + 40) visited:?];
  [v2 appendFormat:@"%@", v3];
}

void __62__BSTransaction__descriptionForDebugging_indentLevel_visited___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [(BSTransaction *)a2 _descriptionForDebugging:*(a1 + 48) + 2 indentLevel:*(a1 + 40) visited:?];
  [v2 appendFormat:@"%@", v3];
}

- (void)_parentRelationshipForTransaction:(void *)transaction
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  transactionCopy = transaction;
  v4 = [transactionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(transactionCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7)
        {
          v8 = v7[1];
        }

        else
        {
          v8 = 0;
        }

        if (v8 == a2)
        {
          v10 = v7;
          goto LABEL_15;
        }

        ++v6;
      }

      while (v4 != v6);
      v9 = [transactionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v9;
    }

    while (v9);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)_unsafe_enumerateParentTransactionsWithBlock:(uint64_t)block
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__unsafe_enumerateParentTransactionsWithBlock_ object:block file:@"BSTransaction.m" lineNumber:1140 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(block + 8);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if (v8)
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      (*(a2 + 16))(a2, v9, v10, &v17);

      if (v17)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v11 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
        v5 = v11;
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

uint64_t __57__BSTransaction__parentTransactionsWithSchedulingPolicy___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40) == a3)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __56__BSTransaction__childTransactionsWithSchedulingPolicy___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40) == a3)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (uint64_t)_terminateNow
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(self + 137) == 1)
  {
    userInfo = [*(self + 144) userInfo];
    v3 = [userInfo objectForKey:@"error-reason"];
    [self _willFailWithReason:v3];
  }

  [self _willComplete];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  childTransactions = [self childTransactions];
  v5 = [childTransactions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(childTransactions);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (v8)
        {
          v9 = *(self + 144);
          queue = [*(*(&v18 + 1) + 8 * i) queue];
          BSDispatchQueueAssert(queue);

          if ((*(v8 + 24) & 1) == 0 && (*(v8 + 137) & 1) == 0 && ([v8 isComplete] & 1) == 0)
          {
            *(v8 + 24) = 1;
            if (!*(v8 + 144))
            {
              v11 = [(BSTransaction *)v8 _createErrorWithCode:@"parent transaction" reason:0 description:v9 precipitatingError:?];
              v12 = *(v8 + 144);
              *(v8 + 144) = v11;
            }

            if (os_log_type_enabled(*(v8 + 88), OS_LOG_TYPE_INFO) || [v8 isAuditHistoryEnabled])
            {
              if ([v8 isAuditHistoryEnabled])
              {
                v13 = [*(v8 + 144) description];
                [v8 _addAuditHistoryItem:{@"Aborting with error: %@", v13}];
              }

              v14 = *(v8 + 88);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = objc_opt_class();
                v16 = [*(v8 + 144) description];
                *buf = 138543874;
                v24 = v15;
                v25 = 2048;
                v26 = v8;
                v27 = 2114;
                v28 = v16;
                _os_log_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_INFO, "<%{public}@:%p> Aborting with error: %{public}@", buf, 0x20u);
              }
            }

            if (![*(v8 + 16) count])
            {
              [(BSTransaction *)v8 _terminateNow];
            }
          }
        }
      }

      v5 = [childTransactions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  return [(BSTransaction *)self _noteCompleted];
}

uint64_t __44__BSTransaction__interruptWithReason_force___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _willInterruptWithReason:*(a1 + 40)];
  *(*(a1 + 32) + 25) = 1;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) childTransactions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isRunning] && (objc_msgSend(v6, "isComplete") & 1) == 0 && (objc_msgSend(v6, "isInterrupted") & 1) == 0)
        {
          [(BSTransaction *)v6 _interruptWithReason:*(a1 + 48) force:?];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) _didInterruptWithReason:*(a1 + 40)];
  return [*(a1 + 32) removeAllMilestones];
}

- (uint64_t)_evaluateParentTransactionsWithSchedulingPolicy:(uint64_t)policy evaluator:
{
  selfCopy = self;
  if (self)
  {
    if (!policy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__evaluateParentTransactionsWithSchedulingPolicy_evaluator_ object:selfCopy file:@"BSTransaction.m" lineNumber:1515 description:{@"Invalid parameter not satisfying: %@", @"evaluator"}];
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__BSTransaction__evaluateParentTransactionsWithSchedulingPolicy_evaluator___block_invoke;
    v8[3] = &unk_1E72CB200;
    v8[5] = &v9;
    v8[6] = a2;
    v8[4] = policy;
    [(BSTransaction *)selfCopy _unsafe_enumerateParentTransactionsWithBlock:v8];
    LOBYTE(selfCopy) = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return selfCopy & 1;
}

void *__75__BSTransaction__evaluateParentTransactionsWithSchedulingPolicy_evaluator___block_invoke(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (result[6] == a3)
  {
    v5 = result;
    v6 = *(result[5] + 8);
    if (*(v6 + 24) == 1)
    {
      result = (*(result[4] + 16))();
      v6 = *(v5[5] + 8);
    }

    else
    {
      result = 0;
    }

    *(v6 + 24) = result;
    if ((*(*(v5[5] + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

- (void)setAuditHistoryEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_auditHistoryEnabled != enabled)
  {
    self->_auditHistoryEnabled = enabled;
    [(BSTransaction *)self _initializeAuditHistoryIfNecessary];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    childTransactions = [(BSTransaction *)self childTransactions];
    v5 = [childTransactions countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(childTransactions);
          }

          [*(*(&v8 + 1) + 8 * v7++) setAuditHistoryEnabled:self->_auditHistoryEnabled];
        }

        while (v5 != v7);
        v5 = [childTransactions countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_addAuditHistoryItem:(id)item
{
  if (self->_auditHistory)
  {
    if (self->_state != 3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:item arguments:&v7];
      auditHistory = self->_auditHistory;
      v6 = [BSAuditHistoryItem itemWithString:v4];
      [(BSAuditHistory *)auditHistory addItem:v6];
    }
  }
}

- (id)_stringForMilestones:(id)milestones
{
  if ([milestones count])
  {
    allObjects = [milestones allObjects];
    v5 = [allObjects componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"(none)";
  }

  return v5;
}

- (void)_addDebugLogCategory:(id)category
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_debugLogCategories)
  {
    if (!category)
    {
      return;
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    debugLogCategories = self->_debugLogCategories;
    self->_debugLogCategories = v5;

    if (!category)
    {
      return;
    }
  }

  [(NSMutableSet *)self->_debugLogCategories addObject:category];
  if (!self->_disableDebugLogCheckForUnitTesting && os_log_type_enabled(category, OS_LOG_TYPE_DEBUG))
  {
    self->_debugLoggingEnabled = 1;
    [(BSTransaction *)self _initializeAuditHistoryIfNecessary];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_childTransactionRelationships;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v11)
        {
          v11 = v11[1];
        }

        v12 = v11;
        [v12 _addDebugLogCategory:{category, v13}];
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_removeDebugLogCategory:(id)category
{
  if (category)
  {
    [(NSMutableSet *)self->_debugLogCategories removeObject:?];
  }
}

- (id)_loggingProem
{
  v2 = MEMORY[0x1E696AEC0];
  _descriptionProem = [(BSTransaction *)self _descriptionProem];
  v4 = [v2 stringWithFormat:@"%@: ", _descriptionProem];

  return v4;
}

@end