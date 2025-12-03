@interface EKDirectorySearchOperation
- (EKDirectorySearchOperation)init;
- (EKDirectorySearchOperation)initWithSource:(id)source query:(id)query resultsBlock:(id)block;
- (id)_processResults:(id)results class:(Class)class;
- (id)_recordTypes;
- (void)_finishWithError:(id)error;
- (void)_processResults:(id)results;
- (void)cancel;
- (void)main;
- (void)start;
@end

@implementation EKDirectorySearchOperation

- (EKDirectorySearchOperation)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Please use the appropriate designated initializer for this class." userInfo:0];
  objc_exception_throw(v2);
}

- (EKDirectorySearchOperation)initWithSource:(id)source query:(id)query resultsBlock:(id)block
{
  sourceCopy = source;
  queryCopy = query;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = EKDirectorySearchOperation;
  v11 = [(EKDirectorySearchOperation *)&v17 init];
  if (v11)
  {
    externalID = [sourceCopy externalID];
    accountID = v11->_accountID;
    v11->_accountID = externalID;

    objc_storeStrong(&v11->_query, query);
    v14 = [blockCopy copy];
    resultsBlock = v11->_resultsBlock;
    v11->_resultsBlock = v14;
  }

  return v11;
}

- (void)start
{
  if (([(EKDirectorySearchOperation *)self isCancelled]& 1) == 0 && ![(EKDirectorySearchOperation *)self isExecuting]&& ![(EKDirectorySearchOperation *)self isFinished])
  {

    [(EKDirectorySearchOperation *)self main];
  }
}

- (void)main
{
  [(EKDirectorySearchOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(EKDirectorySearchOperation *)self didChangeValueForKey:@"isExecuting"];
  _recordTypes = [(EKDirectorySearchOperation *)self _recordTypes];
  v4 = _recordTypes;
  if (_recordTypes && [_recordTypes count])
  {
    terms = [(EKDirectorySearchQuery *)self->_query terms];
    resultLimit = [(EKDirectorySearchQuery *)self->_query resultLimit];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__EKDirectorySearchOperation_main__block_invoke;
    aBlock[3] = &unk_1E77FE278;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__EKDirectorySearchOperation_main__block_invoke_2;
    v12[3] = &unk_1E77FE2A0;
    v12[4] = self;
    v8 = _Block_copy(v12);
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    v10 = [mEMORY[0x1E69998A8] performCalendarDirectorySearchWithAccountID:self->_accountID terms:terms recordTypes:v4 resultLimit:resultLimit resultsBlock:v7 completionBlock:v8];
    searchID = self->_searchID;
    self->_searchID = v10;
  }

  else
  {
    [(EKDirectorySearchOperation *)self _finishWithError:0];
  }
}

void __34__EKDirectorySearchOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) _processResults:v3];
  }
}

void __34__EKDirectorySearchOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setNumberOfMatchesExceededLimit:a3];
  [*(a1 + 32) _finishWithError:v6];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = EKDirectorySearchOperation;
  [(EKDirectorySearchOperation *)&v4 cancel];
  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  [mEMORY[0x1E69998A8] cancelCalendarDirectorySearchWithID:self->_searchID];
}

- (id)_recordTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([(EKDirectorySearchQuery *)self->_query findGroups])
  {
    [v3 addObject:*MEMORY[0x1E6999860]];
  }

  if ([(EKDirectorySearchQuery *)self->_query findLocations])
  {
    [v3 addObject:*MEMORY[0x1E6999868]];
  }

  if ([(EKDirectorySearchQuery *)self->_query findResources])
  {
    [v3 addObject:*MEMORY[0x1E6999870]];
  }

  if ([(EKDirectorySearchQuery *)self->_query findUsers])
  {
    [v3 addObject:*MEMORY[0x1E6999878]];
  }

  return v3;
}

- (void)_processResults:(id)results
{
  if (self->_resultsBlock)
  {
    resultsCopy = results;
    v13 = objc_alloc_init(EKDirectorySearchResultSet);
    v5 = [resultsCopy objectForKey:*MEMORY[0x1E6999860]];
    v6 = [(EKDirectorySearchOperation *)self _processResults:v5 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)v13 setGroups:v6];

    v7 = [resultsCopy objectForKey:*MEMORY[0x1E6999868]];
    v8 = [(EKDirectorySearchOperation *)self _processResults:v7 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)v13 setLocations:v8];

    v9 = [resultsCopy objectForKey:*MEMORY[0x1E6999870]];
    v10 = [(EKDirectorySearchOperation *)self _processResults:v9 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)v13 setResources:v10];

    v11 = [resultsCopy objectForKey:*MEMORY[0x1E6999878]];

    v12 = [(EKDirectorySearchOperation *)self _processResults:v11 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)v13 setPeople:v12];

    if (([(EKDirectorySearchOperation *)self isCancelled]& 1) == 0)
    {
      (*(self->_resultsBlock + 2))();
    }
  }
}

- (id)_processResults:(id)results class:(Class)class
{
  resultsCopy = results;
  v6 = [resultsCopy count];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__EKDirectorySearchOperation__processResults_class___block_invoke;
    v10[3] = &unk_1E77FE2C8;
    classCopy = class;
    v8 = v7;
    v11 = v8;
    [resultsCopy enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__EKDirectorySearchOperation__processResults_class___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) recordFromSearchResult:a2];
  [*(a1 + 32) addObject:v3];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (([(EKDirectorySearchOperation *)self isCancelled]& 1) == 0)
  {
    [(EKDirectorySearchOperation *)self setError:errorCopy];
  }

  [(EKDirectorySearchOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 0;
  [(EKDirectorySearchOperation *)self didChangeValueForKey:@"isExecuting"];
  [(EKDirectorySearchOperation *)self willChangeValueForKey:@"isFinished"];
  self->_isFinished = 1;
  [(EKDirectorySearchOperation *)self didChangeValueForKey:@"isFinished"];
}

@end