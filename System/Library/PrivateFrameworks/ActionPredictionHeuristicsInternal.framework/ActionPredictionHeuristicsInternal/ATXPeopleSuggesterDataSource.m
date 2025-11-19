@interface ATXPeopleSuggesterDataSource
- (ATXPeopleSuggesterDataSource)initWithDevice:(id)a3;
- (void)peopleSuggestionsWithCallback:(id)a3;
@end

@implementation ATXPeopleSuggesterDataSource

- (ATXPeopleSuggesterDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXPeopleSuggesterDataSource;
  v6 = [(ATXPeopleSuggesterDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)peopleSuggestionsWithCallback:(id)a3
{
  v3 = a3;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA3C8))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CFE0E0] peopleSuggester];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ATXPeopleSuggesterDataSource_peopleSuggestionsWithCallback___block_invoke;
    v6[3] = &unk_278C3D570;
    v7 = v3;
    [v5 suggestPeopleWithCompletionHandler:v6];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    (*(v3 + 2))(v3, MEMORY[0x277CBEBF8], 0);
  }
}

void __62__ATXPeopleSuggesterDataSource_peopleSuggestionsWithCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v29 = a1;
    v6 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v31 + 1) + 8 * v11) contact];
          v13 = MEMORY[0x277CBEB38];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "type")}];
          v15 = [v13 dictionaryWithObject:v14 forKey:@"type"];

          v16 = [v12 identifier];
          v17 = [v16 length];

          if (v17)
          {
            v18 = [v12 identifier];
            [v15 setObject:v18 forKeyedSubscript:@"identifier"];
          }

          v19 = [v12 handle];
          v20 = [v19 length];

          if (v20)
          {
            v21 = [v12 handle];
            [v15 setObject:v21 forKeyedSubscript:@"handle"];
          }

          v22 = [v12 personId];
          v23 = [v22 length];

          if (v23)
          {
            v24 = [v12 personId];
            [v15 setObject:v24 forKeyedSubscript:@"personID"];
          }

          v25 = [v12 displayName];
          v26 = [v25 length];

          if (v26)
          {
            v27 = [v12 displayName];
            [v15 setObject:v27 forKeyedSubscript:@"displayName"];
          }

          [v6 addObject:v15];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    (*(*(v29 + 32) + 16))();
    v5 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end