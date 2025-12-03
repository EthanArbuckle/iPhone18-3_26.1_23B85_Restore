@interface StocksAssistantStockSearch
- (void)performWithCompletion:(id)completion;
@end

@implementation StocksAssistantStockSearch

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSMutableArray array];
  stockReferences = [(StocksAssistantStockSearch *)self stockReferences];
  v7 = [stockReferences count];

  if (v7)
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v8 = +[StockManager sharedManager];
    stocksList = [v8 stocksList];

    obj = stocksList;
    v10 = [stocksList countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v32 = completionCopy;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          stockReferences2 = [(StocksAssistantStockSearch *)self stockReferences];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1558;
          v38[3] = &unk_4130;
          v38[4] = v14;
          v16 = [stockReferences2 indexesOfObjectsPassingTest:v38];

          if ([v16 count])
          {
            v17 = +[SAStockReference reference];
            companyName = [v14 companyName];
            [v17 setCompanyName:companyName];

            symbol = [v14 symbol];
            [v17 setSymbol:symbol];

            [v5 addObject:v17];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
      completionCopy = v32;
    }
  }

  else
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v20 = +[StockManager sharedManager];
    stocksList2 = [v20 stocksList];

    obj = stocksList2;
    v22 = [stocksList2 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          v27 = +[SAStockReference reference];
          companyName2 = [v26 companyName];
          [v27 setCompanyName:companyName2];

          symbol2 = [v26 symbol];
          [v27 setSymbol:symbol2];

          [v5 addObject:v27];
        }

        v23 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v23);
    }
  }

  v30 = +[SAStockSearchCompleted searchCompleted];
  [v30 setStockReferences:v5];
  dictionary = [v30 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end