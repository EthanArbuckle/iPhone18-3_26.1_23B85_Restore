@interface ATXSuggestedPagesWidgetAggregator
- (ATXSuggestedPagesWidgetAggregator)init;
- (ATXSuggestedPagesWidgetAggregator)initWithSources:(id)a3;
- (id)provideWidgetsForPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesWidgetAggregator

- (ATXSuggestedPagesWidgetAggregator)init
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11[0] = v3;
  v4 = objc_opt_new();
  v11[1] = v4;
  v5 = objc_opt_new();
  v11[2] = v5;
  v6 = objc_opt_new();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [(ATXSuggestedPagesWidgetAggregator *)self initWithSources:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (ATXSuggestedPagesWidgetAggregator)initWithSources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXSuggestedPagesWidgetAggregator;
  v5 = [(ATXSuggestedPagesWidgetAggregator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sources = v5->_sources;
    v5->_sources = v6;
  }

  return v5;
}

- (id)provideWidgetsForPageType:(int64_t)a3 environment:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = self->_sources;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v47 + 1) + 8 * i) provideWidgetsForPageType:a3 environment:v6];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }

        [v7 addObjectsFromArray:v16];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * j);
        v24 = [v23 intent];
        if (v24)
        {
          [v17 setObject:v24 forKey:v23];
          [v23 setIntent:0];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v20);
  }

  v38 = v18;
  v25 = [MEMORY[0x277CBEB98] setWithArray:v18];
  v26 = [v25 allObjects];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v39 + 1) + 8 * k);
        v33 = [MEMORY[0x277CCAD78] UUID];
        v34 = [v33 UUIDString];
        [v32 setWidgetUniqueId:v34];

        v35 = [v17 objectForKey:v32];
        [v32 setIntent:v35];
      }

      v29 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v29);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v27;
}

@end