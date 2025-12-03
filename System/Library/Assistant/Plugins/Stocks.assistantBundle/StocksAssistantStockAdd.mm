@interface StocksAssistantStockAdd
- (id)addStocks;
- (id)validateCommandArguments;
- (void)performWithCompletion:(id)completion;
@end

@implementation StocksAssistantStockAdd

- (id)validateCommandArguments
{
  v3 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(StocksAssistantStockAdd *)self stocks];
  v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v31 = StockCompanyNameKey;
    v32 = StockSymbolKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        symbol = [v8 symbol];
        v10 = [symbol length];

        if (!v10)
        {
          [v3 addObject:@"SAStockAdd.stocksToAdd.symbol Missing Stock symbol."];
        }

        name = [v8 name];
        v12 = [name length];

        if (!v12)
        {
          [v3 addObject:@"SAStockAdd.stocksToAdd.companyName Missing Stock companyName."];
        }

        v13 = +[StockManager sharedManager];
        symbol2 = [v8 symbol];
        v15 = [v13 stockWithSymbol:symbol2];

        if (!v15)
        {
          symbol3 = [v8 symbol];
          name2 = [v8 name];
          v18 = [NSDictionary dictionaryWithObjectsAndKeys:symbol3, v32, name2, v31, 0];

          v19 = [[Stock alloc] initWithDictionary:v18];
          if (v19)
          {
            createdStocks = [(StocksAssistantStockAdd *)self createdStocks];

            if (!createdStocks)
            {
              v21 = +[NSMutableArray array];
              [(StocksAssistantStockAdd *)self setCreatedStocks:v21];
            }

            createdStocks2 = [(StocksAssistantStockAdd *)self createdStocks];
            [createdStocks2 addObject:v19];
          }

          else
          {
            createdStocks2 = [v8 name];
            symbol4 = [v8 symbol];
            v24 = [NSString stringWithFormat:@"SAStockAdd.stocksToAdd.stockCreation Failed to create stock object for: %@ (%@)", createdStocks2, symbol4];
            [v3 addObject:v24];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  createdStocks3 = [(StocksAssistantStockAdd *)self createdStocks];
  v26 = [createdStocks3 count];

  if (!v26)
  {
    [v3 addObject:@"SAStockAdd.stocksToAdd.noStocksAdded The list contained no stocks that were not already in the list."];
  }

  if ([v3 count])
  {
    v27 = [SACommandFailed alloc];
    v28 = [v3 componentsJoinedByString:@"\n\n"];
    v29 = [v27 initWithErrorCode:v28];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)addStocks
{
  v3 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  createdStocks = [(StocksAssistantStockAdd *)self createdStocks];
  v5 = [createdStocks countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(createdStocks);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[StockManager sharedManager];
        [v10 addStock:v9];

        v11 = +[SAStockObject object];
        companyName = [v9 companyName];
        [v11 setName:companyName];

        symbol = [v9 symbol];
        [v11 setSymbol:symbol];

        [v3 addObject:v11];
      }

      v6 = [createdStocks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = +[SAStockAddCompleted addCompleted];
  [v14 setStocks:v3];

  return v14;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  validateCommandArguments = [(StocksAssistantStockAdd *)self validateCommandArguments];
  if (!validateCommandArguments)
  {
    validateCommandArguments = [(StocksAssistantStockAdd *)self addStocks];
  }

  v7 = validateCommandArguments;
  dictionary = [validateCommandArguments dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end