@interface NSSQLiteIndexStatisticsResult
- (NSSQLiteIndexStatisticsResult)initWithResult:(id)result;
- (NSSQLiteIndexStatisticsResult)initWithSubresults:(id)subresults;
- (void)dealloc;
@end

@implementation NSSQLiteIndexStatisticsResult

- (NSSQLiteIndexStatisticsResult)initWithResult:(id)result
{
  v6.receiver = self;
  v6.super_class = NSSQLiteIndexStatisticsResult;
  v4 = [(NSSQLiteIndexStatisticsResult *)&v6 init];
  if (v4)
  {
    v4->_result = result;
  }

  return v4;
}

- (NSSQLiteIndexStatisticsResult)initWithSubresults:(id)subresults
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NSSQLiteIndexStatisticsResult;
  v4 = [(NSSQLiteIndexStatisticsResult *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [subresults countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(subresults);
          }

          [v5 addObjectsFromArray:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "result")}];
        }

        while (v7 != v9);
        v7 = [subresults countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    v4->_result = [v5 copy];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLiteIndexStatisticsResult;
  [(NSSQLiteIndexStatisticsResult *)&v3 dealloc];
}

@end