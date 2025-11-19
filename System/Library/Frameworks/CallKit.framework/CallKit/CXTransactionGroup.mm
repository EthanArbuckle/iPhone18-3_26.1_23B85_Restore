@interface CXTransactionGroup
- (BOOL)isComplete;
- (BOOL)isServiceClientGroupComplete;
- (CXTransactionGroup)init;
- (NSArray)allActions;
- (NSArray)callSources;
- (NSArray)providerSources;
- (NSArray)serviceClientActions;
- (NSArray)serviceClientTransactions;
- (NSArray)serviceClients;
- (NSArray)transactions;
- (id)description;
- (id)transactionForCallSource:(id)a3;
- (id)transactionForProviderSource:(id)a3;
- (id)transactionForServiceClient:(id)a3;
- (void)addAction:(id)a3 forCallSource:(id)a4;
- (void)addAction:(id)a3 forProviderSource:(id)a4;
- (void)addAction:(id)a3 forServiceClient:(id)a4;
@end

@implementation CXTransactionGroup

- (NSArray)callSources
{
  v2 = [(CXTransactionGroup *)self mutableCallSources];
  v3 = [v2 copy];

  return v3;
}

- (CXTransactionGroup)init
{
  v16.receiver = self;
  v16.super_class = CXTransactionGroup;
  v2 = [(CXTransactionGroup *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    callSourceIdentifierToTransaction = v2->_callSourceIdentifierToTransaction;
    v2->_callSourceIdentifierToTransaction = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    mutableCallSources = v2->_mutableCallSources;
    v2->_mutableCallSources = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    providerSourceIdentifierToTransaction = v2->_providerSourceIdentifierToTransaction;
    v2->_providerSourceIdentifierToTransaction = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    mutableProviderSources = v2->_mutableProviderSources;
    v2->_mutableProviderSources = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serviceClientIdentifierToTransaction = v2->_serviceClientIdentifierToTransaction;
    v2->_serviceClientIdentifierToTransaction = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableServiceClients = v2->_mutableServiceClients;
    v2->_mutableServiceClients = v13;
  }

  return v2;
}

- (id)description
{
  v2 = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CXTransactionGroup *)self transactions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)transactions
{
  v3 = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  v4 = [v3 allValues];
  v5 = [v4 count];

  if (v5)
  {
    [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  }

  else
  {
    [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
  }
  v6 = ;
  v7 = [v6 allValues];

  return v7;
}

- (NSArray)allActions
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(CXTransactionGroup *)self transactions];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 actions];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)transactionForCallSource:(id)a3
{
  v4 = a3;
  v5 = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)addAction:(id)a3 forCallSource:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CXTransactionGroup *)self transactionForCallSource:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    v8 = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
    v9 = [v6 identifier];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = [(CXTransactionGroup *)self mutableCallSources];
    [v10 addObject:v6];
  }

  [(CXTransaction *)v7 addAction:v11];
}

- (NSArray)providerSources
{
  v2 = [(CXTransactionGroup *)self mutableProviderSources];
  v3 = [v2 copy];

  return v3;
}

- (void)addAction:(id)a3 forProviderSource:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CXTransactionGroup *)self transactionForProviderSource:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    v8 = [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
    v9 = [v6 identifier];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = [(CXTransactionGroup *)self mutableProviderSources];
    [v10 addObject:v6];
  }

  [(CXTransaction *)v7 addAction:v11];
}

- (id)transactionForProviderSource:(id)a3
{
  v4 = a3;
  v5 = [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (BOOL)isServiceClientGroupComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CXTransactionGroup *)self serviceClientTransactions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)serviceClientActions
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(CXTransactionGroup *)self serviceClientTransactions];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 actions];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSArray)serviceClientTransactions
{
  v2 = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)serviceClients
{
  v2 = [(CXTransactionGroup *)self mutableServiceClients];
  v3 = [v2 copy];

  return v3;
}

- (void)addAction:(id)a3 forServiceClient:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CXTransactionGroup *)self transactionForServiceClient:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    v8 = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
    v9 = [v6 identifier];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = [(CXTransactionGroup *)self mutableServiceClients];
    [v10 addObject:v6];
  }

  [(CXTransaction *)v7 addAction:v11];
}

- (id)transactionForServiceClient:(id)a3
{
  v4 = a3;
  v5 = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

@end