@interface EKGroupExpansionOperation
- (EKGroupExpansionOperation)initWithSource:(id)a3 group:(id)a4 completionBlock:(id)a5;
- (id)_processResults:(id)a3 class:(Class)a4;
- (void)_finishWithError:(id)a3;
- (void)_processResults:(id)a3;
- (void)main;
- (void)start;
@end

@implementation EKGroupExpansionOperation

- (EKGroupExpansionOperation)initWithSource:(id)a3 group:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = EKGroupExpansionOperation;
  v11 = [(EKGroupExpansionOperation *)&v17 init];
  if (v11)
  {
    v12 = [v8 externalID];
    accountID = v11->_accountID;
    v11->_accountID = v12;

    objc_storeStrong(&v11->_group, a4);
    v14 = [v10 copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;
  }

  return v11;
}

- (void)start
{
  if (([(EKGroupExpansionOperation *)self isCancelled]& 1) == 0 && ![(EKGroupExpansionOperation *)self isExecuting]&& ![(EKGroupExpansionOperation *)self isFinished])
  {

    [(EKGroupExpansionOperation *)self main];
  }
}

- (void)main
{
  [(EKGroupExpansionOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(EKGroupExpansionOperation *)self didChangeValueForKey:@"isExecuting"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__EKGroupExpansionOperation_main__block_invoke;
  aBlock[3] = &unk_1E77FEF78;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [MEMORY[0x1E69998A8] sharedConnection];
  accountID = self->_accountID;
  v6 = [(EKDirectoryRecord *)self->_group principalPath];
  [v4 performGroupExpansionWithAccountID:accountID principalPath:v6 completionBlock:v3];
}

void __33__EKGroupExpansionOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) _processResults:v6];
  }

  [*(a1 + 32) _finishWithError:v5];
}

- (void)_processResults:(id)a3
{
  if (self->_completionBlock)
  {
    v4 = a3;
    v5 = objc_alloc_init(EKDirectorySearchResultSet);
    resultsSet = self->_resultsSet;
    self->_resultsSet = v5;

    v7 = [v4 objectForKey:*MEMORY[0x1E6999860]];
    v8 = [(EKGroupExpansionOperation *)self _processResults:v7 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)self->_resultsSet setGroups:v8];

    v9 = [v4 objectForKey:*MEMORY[0x1E6999868]];
    v10 = [(EKGroupExpansionOperation *)self _processResults:v9 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)self->_resultsSet setLocations:v10];

    v11 = [v4 objectForKey:*MEMORY[0x1E6999870]];
    v12 = [(EKGroupExpansionOperation *)self _processResults:v11 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)self->_resultsSet setResources:v12];

    v14 = [v4 objectForKey:*MEMORY[0x1E6999878]];

    v13 = [(EKGroupExpansionOperation *)self _processResults:v14 class:objc_opt_class()];
    [(EKDirectorySearchResultSet *)self->_resultsSet setPeople:v13];
  }
}

- (id)_processResults:(id)a3 class:(Class)a4
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__EKGroupExpansionOperation__processResults_class___block_invoke;
    v10[3] = &unk_1E77FE2C8;
    v12 = a4;
    v8 = v7;
    v11 = v8;
    [v5 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__EKGroupExpansionOperation__processResults_class___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) recordFromSearchResult:a2];
  [*(a1 + 32) addObject:v3];
}

- (void)_finishWithError:(id)a3
{
  v5 = a3;
  if (([(EKGroupExpansionOperation *)self isCancelled]& 1) == 0)
  {
    resultsSet = self->_resultsSet;
    (*(self->_completionBlock + 2))();
  }

  [(EKGroupExpansionOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 0;
  [(EKGroupExpansionOperation *)self didChangeValueForKey:@"isExecuting"];
  [(EKGroupExpansionOperation *)self willChangeValueForKey:@"isFinished"];
  self->_isFinished = 1;
  [(EKGroupExpansionOperation *)self didChangeValueForKey:@"isFinished"];
}

@end