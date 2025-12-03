@interface CNCDAccountFetcher
+ (id)accountsForPredicate:(id)predicate inPersistenceStack:(id)stack error:(id *)error;
- (CNCDAccountFetcher)init;
- (CNCDAccountFetcher)initWithPredicate:(id)predicate persistenceContext:(id)context;
- (id)fetchAccounts:(id *)accounts;
@end

@implementation CNCDAccountFetcher

+ (id)accountsForPredicate:(id)predicate inPersistenceStack:(id)stack error:(id *)error
{
  predicateCopy = predicate;
  stackCopy = stack;
  v9 = MEMORY[0x1E69966C0];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __68__CNCDAccountFetcher_accountsForPredicate_inPersistenceStack_error___block_invoke;
  v21 = &unk_1E7413B78;
  v10 = stackCopy;
  v22 = v10;
  v11 = predicateCopy;
  v23 = v11;
  v12 = [v9 eitherWithBlock:&v18];
  if ((*(*MEMORY[0x1E6996490] + 16))(*MEMORY[0x1E6996490], v12, v13, v14))
  {
    left = [v12 left];
  }

  else
  {
    right = [v12 right];
    if (error)
    {
      right = right;
      *error = right;
    }

    left = 0;
  }

  return left;
}

id __68__CNCDAccountFetcher_accountsForPredicate_inPersistenceStack_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) makePersistenceContext];
  v5 = [[CNCDAccountFetcher alloc] initWithPredicate:*(a1 + 40) persistenceContext:v4];
  v6 = [(CNCDAccountFetcher *)v5 fetchAccounts:a2];

  return v6;
}

- (CNCDAccountFetcher)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNCDAccountFetcher)initWithPredicate:(id)predicate persistenceContext:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = CNCDAccountFetcher;
  v9 = [(CNCDAccountFetcher *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, predicate);
    objc_storeStrong(&v10->_persistenceContext, context);
    v11 = v10;
  }

  return v10;
}

- (id)fetchAccounts:(id *)accounts
{
  predicate = [(CNCDAccountFetcher *)self predicate];

  persistenceContext = [(CNCDAccountFetcher *)self persistenceContext];
  allContainers = [persistenceContext allContainers];
  v7 = allContainers;
  if (predicate)
  {
    predicate2 = [(CNCDAccountFetcher *)self predicate];
    v9 = [v7 filteredArrayUsingPredicate:predicate2];
    v10 = [v9 _cn_map:sABCDContainerToCNAccount];
  }

  else
  {
    v10 = [allContainers _cn_map:sABCDContainerToCNAccount];
  }

  return v10;
}

@end