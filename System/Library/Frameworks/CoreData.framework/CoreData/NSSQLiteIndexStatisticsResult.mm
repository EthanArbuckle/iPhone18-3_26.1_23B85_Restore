@interface NSSQLiteIndexStatisticsResult
- (NSSQLiteIndexStatisticsResult)initWithResult:(id)a3;
- (NSSQLiteIndexStatisticsResult)initWithSubresults:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLiteIndexStatisticsResult

- (NSSQLiteIndexStatisticsResult)initWithResult:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSSQLiteIndexStatisticsResult;
  v4 = [(NSSQLiteIndexStatisticsResult *)&v6 init];
  if (v4)
  {
    v4->_result = a3;
  }

  return v4;
}

- (NSSQLiteIndexStatisticsResult)initWithSubresults:(id)a3
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
    v6 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(a3);
          }

          [v5 addObjectsFromArray:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "result")}];
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v12 objects:v17 count:16];
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