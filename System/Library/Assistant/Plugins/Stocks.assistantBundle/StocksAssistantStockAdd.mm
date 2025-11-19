@interface StocksAssistantStockAdd
- (id)addStocks;
- (id)validateCommandArguments;
- (void)performWithCompletion:(id)a3;
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
        v9 = [v8 symbol];
        v10 = [v9 length];

        if (!v10)
        {
          [v3 addObject:@"SAStockAdd.stocksToAdd.symbol Missing Stock symbol."];
        }

        v11 = [v8 name];
        v12 = [v11 length];

        if (!v12)
        {
          [v3 addObject:@"SAStockAdd.stocksToAdd.companyName Missing Stock companyName."];
        }

        v13 = +[StockManager sharedManager];
        v14 = [v8 symbol];
        v15 = [v13 stockWithSymbol:v14];

        if (!v15)
        {
          v16 = [v8 symbol];
          v17 = [v8 name];
          v18 = [NSDictionary dictionaryWithObjectsAndKeys:v16, v32, v17, v31, 0];

          v19 = [[Stock alloc] initWithDictionary:v18];
          if (v19)
          {
            v20 = [(StocksAssistantStockAdd *)self createdStocks];

            if (!v20)
            {
              v21 = +[NSMutableArray array];
              [(StocksAssistantStockAdd *)self setCreatedStocks:v21];
            }

            v22 = [(StocksAssistantStockAdd *)self createdStocks];
            [v22 addObject:v19];
          }

          else
          {
            v22 = [v8 name];
            v23 = [v8 symbol];
            v24 = [NSString stringWithFormat:@"SAStockAdd.stocksToAdd.stockCreation Failed to create stock object for: %@ (%@)", v22, v23];
            [v3 addObject:v24];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  v25 = [(StocksAssistantStockAdd *)self createdStocks];
  v26 = [v25 count];

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
  v4 = [(StocksAssistantStockAdd *)self createdStocks];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[StockManager sharedManager];
        [v10 addStock:v9];

        v11 = +[SAStockObject object];
        v12 = [v9 companyName];
        [v11 setName:v12];

        v13 = [v9 symbol];
        [v11 setSymbol:v13];

        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = +[SAStockAddCompleted addCompleted];
  [v14 setStocks:v3];

  return v14;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(StocksAssistantStockAdd *)self validateCommandArguments];
  if (!v5)
  {
    v5 = [(StocksAssistantStockAdd *)self addStocks];
  }

  v7 = v5;
  v6 = [v5 dictionary];
  v4[2](v4, v6);
}

@end