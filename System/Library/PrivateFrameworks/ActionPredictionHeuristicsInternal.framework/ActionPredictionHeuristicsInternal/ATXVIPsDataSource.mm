@interface ATXVIPsDataSource
- (ATXVIPsDataSource)initWithDevice:(id)a3;
- (void)vipsWithCallback:(id)a3;
@end

@implementation ATXVIPsDataSource

- (ATXVIPsDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXVIPsDataSource;
  v6 = [(ATXVIPsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)vipsWithCallback:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA3E0))
  {
    v21 = v3;
    v4 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = objc_opt_new();
    v6 = [v5 allVIPs];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * v10);
          v12 = objc_opt_new();
          v13 = [v11 identifier];
          [v12 setObject:v13 forKeyedSubscript:@"identifier"];

          v14 = [v11 name];
          [v12 setObject:v14 forKeyedSubscript:@"name"];

          v15 = [v11 displayName];
          [v12 setObject:v15 forKeyedSubscript:@"displayName"];

          v16 = [v11 emailAddresses];
          v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
          v27 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
          v19 = [v16 sortedArrayUsingDescriptors:v18];
          [v12 setObject:v19 forKeyedSubscript:@"emailAddresses"];

          [v4 addObject:v12];
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v3 = v21;
    (*(v21 + 2))(v21, v4, 0);
  }

  else
  {
    (*(v3 + 2))(v3, MEMORY[0x277CBEBF8], 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end