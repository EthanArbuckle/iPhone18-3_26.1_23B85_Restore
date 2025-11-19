@interface CNCDAccountFetcher
+ (id)accountsForPredicate:(id)a3 inPersistenceStack:(id)a4 error:(id *)a5;
- (CNCDAccountFetcher)init;
- (CNCDAccountFetcher)initWithPredicate:(id)a3 persistenceContext:(id)a4;
- (id)fetchAccounts:(id *)a3;
@end

@implementation CNCDAccountFetcher

+ (id)accountsForPredicate:(id)a3 inPersistenceStack:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E69966C0];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __68__CNCDAccountFetcher_accountsForPredicate_inPersistenceStack_error___block_invoke;
  v21 = &unk_1E7413B78;
  v10 = v8;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  v12 = [v9 eitherWithBlock:&v18];
  if ((*(*MEMORY[0x1E6996490] + 16))(*MEMORY[0x1E6996490], v12, v13, v14))
  {
    v15 = [v12 left];
  }

  else
  {
    v16 = [v12 right];
    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }

    v15 = 0;
  }

  return v15;
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
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNCDAccountFetcher)initWithPredicate:(id)a3 persistenceContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNCDAccountFetcher;
  v9 = [(CNCDAccountFetcher *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, a3);
    objc_storeStrong(&v10->_persistenceContext, a4);
    v11 = v10;
  }

  return v10;
}

- (id)fetchAccounts:(id *)a3
{
  v4 = [(CNCDAccountFetcher *)self predicate];

  v5 = [(CNCDAccountFetcher *)self persistenceContext];
  v6 = [v5 allContainers];
  v7 = v6;
  if (v4)
  {
    v8 = [(CNCDAccountFetcher *)self predicate];
    v9 = [v7 filteredArrayUsingPredicate:v8];
    v10 = [v9 _cn_map:sABCDContainerToCNAccount];
  }

  else
  {
    v10 = [v6 _cn_map:sABCDContainerToCNAccount];
  }

  return v10;
}

@end