@interface PFHistoryAnalyzerContext
- (BOOL)finishProcessing:(id *)processing;
- (BOOL)processChange:(id)change error:(id *)error;
- (BOOL)processTransaction:(id)transaction error:(id *)error;
- (BOOL)reset:(id *)reset;
- (PFHistoryAnalyzerContext)initWithOptions:(id)options;
- (id)newAnalyzerStateForChange:(id)change error:(id *)error;
- (void)dealloc;
@end

@implementation PFHistoryAnalyzerContext

- (PFHistoryAnalyzerContext)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = PFHistoryAnalyzerContext;
  v4 = [(PFHistoryAnalyzerContext *)&v6 init];
  if (v4)
  {
    v4->_objectIDToState = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_processedTransactionIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_options = options;
    v4->_accumulatedChangeBytes = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->_sortedStates = 0;

  self->_finalHistoryToken = 0;
  v3.receiver = self;
  v3.super_class = PFHistoryAnalyzerContext;
  [(PFHistoryAnalyzerContext *)&v3 dealloc];
}

- (BOOL)reset:(id *)reset
{
  self->_objectIDToState = objc_alloc_init(MEMORY[0x1E695DF90]);

  self->_processedTransactionIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
  self->_sortedStates = 0;
  self->_isFinished = 0;

  self->_finalHistoryToken = 0;
  return 1;
}

- (BOOL)processTransaction:(id)transaction error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(transaction, "transactionNumber")}];
  if ([(NSMutableSet *)self->_processedTransactionIDs containsObject:v8])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid attempt to process transaction '%@' twice.", v8, v26];
    goto LABEL_24;
  }

  if (self->_isFinished)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v24 = MEMORY[0x1E696AEC0];
    v25 = NSStringFromSelector(a2);
    v23 = [v24 stringWithFormat:@"Invalid invocation of '%@', cannot be called after '%@'", v25, NSStringFromSelector(sel_finishProcessing_)];
LABEL_24:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:0]);
  }

  [(NSMutableSet *)self->_processedTransactionIDs addObject:v8];
  changes = [transaction changes];
  v10 = [changes count];
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (v10)
  {
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    while (-[PFHistoryAnalyzerContext processChange:error:](self, "processChange:error:", [changes objectAtIndexedSubscript:v13], &v28))
    {
      if (!(v12 + 1000 * (v13 / 0x3E8)))
      {

        v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      }

      ++v13;
      --v12;
      if (!--v10)
      {
        v14 = 1;
        goto LABEL_12;
      }
    }

    v15 = v28;
    v14 = 0;
LABEL_12:
    error = errorCopy;
  }

  else
  {
    v14 = 1;
  }

  self->_finalHistoryToken = [transaction token];
  if (!v14)
  {
    v16 = v28;
    if (v16)
    {
      if (error)
      {
        *error = v16;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzerContext.m";
        v31 = 1024;
        v32 = 99;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzerContext.m";
        v31 = 1024;
        v32 = 99;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)processChange:(id)change error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v7 = -[PFHistoryAnalyzerContext analyzerStateForChangedObjectID:error:](self, "analyzerStateForChangedObjectID:error:", [change changedObjectID], &v18);
  if (!v7)
  {
    v14 = v18;
    if (v18)
    {
      goto LABEL_6;
    }

    v15 = [(PFHistoryAnalyzerContext *)self newAnalyzerStateForChange:change error:&v18];
    if (v15)
    {
      v8 = v15;
      v10 = [v15 estimatedSizeInBytes] + self->_accumulatedChangeBytes + 50;
      goto LABEL_3;
    }

    v14 = v18;
    if (v18)
    {
LABEL_6:
      if (error)
      {
        v11 = 0;
        v8 = 0;
        *error = v14;
        goto LABEL_4;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzerContext.m";
        v21 = 1024;
        v22 = 136;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzerContext.m";
        v21 = 1024;
        v22 = 136;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v11 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v8 = v7;
  estimatedSizeInBytes = [v7 estimatedSizeInBytes];
  [v8 updateWithChange:change];
  self->_accumulatedChangeBytes -= estimatedSizeInBytes;
  v10 = self->_accumulatedChangeBytes + [v8 estimatedSizeInBytes];
LABEL_3:
  self->_accumulatedChangeBytes = v10;
  v11 = 1;
LABEL_4:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)newAnalyzerStateForChange:(id)change error:(id *)error
{
  v6 = [[PFHistoryAnalyzerDefaultObjectState alloc] initWithOriginalChange:change];
  -[NSMutableDictionary setObject:forKey:](self->_objectIDToState, "setObject:forKey:", v6, [change changedObjectID]);
  return v6;
}

- (BOOL)finishProcessing:(id *)processing
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [-[NSMutableDictionary allValues](self->_objectIDToState "allValues")];
  if ([v5 count] < 2)
  {
    if ([v5 count] == 1)
    {
      lastObject = [v5 lastObject];
      options = self->_options;
      if (options)
      {
        if (options->_automaticallyPruneTransientRecords)
        {
          v8 = lastObject;
          if (![lastObject originalChangeType] && objc_msgSend(v8, "finalChangeType") == 2)
          {
            [v5 removeAllObjects];
          }
        }
      }
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__PFHistoryAnalyzerContext_finishProcessing___block_invoke;
    v12[3] = &unk_1E6EC5878;
    v12[4] = self;
    v12[5] = v4;
    [v5 sortUsingComparator:v12];
    [v5 removeObjectsInArray:v4];
  }

  v9 = [v5 copy];
  self->_sortedStates = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PFHistoryAnalyzerContext_finishProcessing___block_invoke_2;
  v11[3] = &unk_1E6EC58A0;
  v11[4] = self;
  [(NSArray *)v9 enumerateObjectsUsingBlock:v11];

  self->_isFinished = 1;
  return 1;
}

uint64_t __45__PFHistoryAnalyzerContext_finishProcessing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = *(v5 + 16);
    if (v7 && *(v7 + 8) == 1 && ![a2 originalChangeType] && objc_msgSend(a2, "finalChangeType") == 2)
    {
      [*(a1 + 40) addObject:a2];
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        if (*(v9 + 8) == 1 && ![a3 originalChangeType] && objc_msgSend(a3, "finalChangeType") == 2)
        {
          [*(a1 + 40) addObject:a3];
        }
      }
    }
  }

  v10 = [a2 finalTransactionNumber];
  v11 = [a3 finalTransactionNumber];

  return [v10 compare:v11];
}

void __45__PFHistoryAnalyzerContext_finishProcessing___block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

@end