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
- (id)transactionForCallSource:(id)source;
- (id)transactionForProviderSource:(id)source;
- (id)transactionForServiceClient:(id)client;
- (void)addAction:(id)action forCallSource:(id)source;
- (void)addAction:(id)action forProviderSource:(id)source;
- (void)addAction:(id)action forServiceClient:(id)client;
@end

@implementation CXTransactionGroup

- (NSArray)callSources
{
  mutableCallSources = [(CXTransactionGroup *)self mutableCallSources];
  v3 = [mutableCallSources copy];

  return v3;
}

- (CXTransactionGroup)init
{
  v16.receiver = self;
  v16.super_class = CXTransactionGroup;
  v2 = [(CXTransactionGroup *)&v16 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    callSourceIdentifierToTransaction = v2->_callSourceIdentifierToTransaction;
    v2->_callSourceIdentifierToTransaction = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    mutableCallSources = v2->_mutableCallSources;
    v2->_mutableCallSources = array;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    providerSourceIdentifierToTransaction = v2->_providerSourceIdentifierToTransaction;
    v2->_providerSourceIdentifierToTransaction = dictionary2;

    array2 = [MEMORY[0x1E695DF70] array];
    mutableProviderSources = v2->_mutableProviderSources;
    v2->_mutableProviderSources = array2;

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
  callSourceIdentifierToTransaction = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  v3 = [callSourceIdentifierToTransaction description];

  return v3;
}

- (BOOL)isComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  transactions = [(CXTransactionGroup *)self transactions];
  v3 = [transactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(transactions);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [transactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  callSourceIdentifierToTransaction = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  allValues = [callSourceIdentifierToTransaction allValues];
  v5 = [allValues count];

  if (v5)
  {
    [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  }

  else
  {
    [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
  }
  v6 = ;
  allValues2 = [v6 allValues];

  return allValues2;
}

- (NSArray)allActions
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  transactions = [(CXTransactionGroup *)self transactions];
  v5 = [transactions countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(transactions);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        actions = [v9 actions];
        v11 = [actions countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(actions);
              }

              [array addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [actions countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [transactions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)transactionForCallSource:(id)source
{
  sourceCopy = source;
  callSourceIdentifierToTransaction = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
  identifier = [sourceCopy identifier];

  v7 = [callSourceIdentifierToTransaction objectForKeyedSubscript:identifier];

  return v7;
}

- (void)addAction:(id)action forCallSource:(id)source
{
  actionCopy = action;
  sourceCopy = source;
  v7 = [(CXTransactionGroup *)self transactionForCallSource:sourceCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    callSourceIdentifierToTransaction = [(CXTransactionGroup *)self callSourceIdentifierToTransaction];
    identifier = [sourceCopy identifier];
    [callSourceIdentifierToTransaction setObject:v7 forKeyedSubscript:identifier];

    mutableCallSources = [(CXTransactionGroup *)self mutableCallSources];
    [mutableCallSources addObject:sourceCopy];
  }

  [(CXTransaction *)v7 addAction:actionCopy];
}

- (NSArray)providerSources
{
  mutableProviderSources = [(CXTransactionGroup *)self mutableProviderSources];
  v3 = [mutableProviderSources copy];

  return v3;
}

- (void)addAction:(id)action forProviderSource:(id)source
{
  actionCopy = action;
  sourceCopy = source;
  v7 = [(CXTransactionGroup *)self transactionForProviderSource:sourceCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    providerSourceIdentifierToTransaction = [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
    identifier = [sourceCopy identifier];
    [providerSourceIdentifierToTransaction setObject:v7 forKeyedSubscript:identifier];

    mutableProviderSources = [(CXTransactionGroup *)self mutableProviderSources];
    [mutableProviderSources addObject:sourceCopy];
  }

  [(CXTransaction *)v7 addAction:actionCopy];
}

- (id)transactionForProviderSource:(id)source
{
  sourceCopy = source;
  providerSourceIdentifierToTransaction = [(CXTransactionGroup *)self providerSourceIdentifierToTransaction];
  identifier = [sourceCopy identifier];

  v7 = [providerSourceIdentifierToTransaction objectForKeyedSubscript:identifier];

  return v7;
}

- (BOOL)isServiceClientGroupComplete
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  serviceClientTransactions = [(CXTransactionGroup *)self serviceClientTransactions];
  v3 = [serviceClientTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(serviceClientTransactions);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [serviceClientTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  serviceClientTransactions = [(CXTransactionGroup *)self serviceClientTransactions];
  v5 = [serviceClientTransactions countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(serviceClientTransactions);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        actions = [v9 actions];
        v11 = [actions countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(actions);
              }

              [array addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [actions countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [serviceClientTransactions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSArray)serviceClientTransactions
{
  serviceClientIdentifierToTransaction = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
  allValues = [serviceClientIdentifierToTransaction allValues];

  return allValues;
}

- (NSArray)serviceClients
{
  mutableServiceClients = [(CXTransactionGroup *)self mutableServiceClients];
  v3 = [mutableServiceClients copy];

  return v3;
}

- (void)addAction:(id)action forServiceClient:(id)client
{
  actionCopy = action;
  clientCopy = client;
  v7 = [(CXTransactionGroup *)self transactionForServiceClient:clientCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(CXTransaction);
    serviceClientIdentifierToTransaction = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
    identifier = [clientCopy identifier];
    [serviceClientIdentifierToTransaction setObject:v7 forKeyedSubscript:identifier];

    mutableServiceClients = [(CXTransactionGroup *)self mutableServiceClients];
    [mutableServiceClients addObject:clientCopy];
  }

  [(CXTransaction *)v7 addAction:actionCopy];
}

- (id)transactionForServiceClient:(id)client
{
  clientCopy = client;
  serviceClientIdentifierToTransaction = [(CXTransactionGroup *)self serviceClientIdentifierToTransaction];
  identifier = [clientCopy identifier];

  v7 = [serviceClientIdentifierToTransaction objectForKeyedSubscript:identifier];

  return v7;
}

@end