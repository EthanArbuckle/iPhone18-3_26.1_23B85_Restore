@interface ATXHeuristicResultCacheEntry
- (ATXHeuristicResultCacheEntry)initWithHeuristic:(id)heuristic cache:(id)cache;
- (void)dealloc;
- (void)setActions:(id)actions expirers:(id)expirers;
@end

@implementation ATXHeuristicResultCacheEntry

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_expirers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        heuristicName = self->_heuristicName;
        WeakRetained = objc_loadWeakRetained(&self->_cache);
        [v8 stopExpiring:heuristicName cache:WeakRetained];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = ATXHeuristicResultCacheEntry;
  [(ATXHeuristicResultCacheEntry *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (ATXHeuristicResultCacheEntry)initWithHeuristic:(id)heuristic cache:(id)cache
{
  heuristicCopy = heuristic;
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = ATXHeuristicResultCacheEntry;
  v9 = [(ATXHeuristicResultCacheEntry *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heuristicName, heuristic);
    objc_storeWeak(&v10->_cache, cacheCopy);
    actions = v10->_actions;
    v10->_actions = MEMORY[0x277CBEBF8];

    v12 = objc_opt_new();
    expirers = v10->_expirers;
    v10->_expirers = v12;
  }

  return v10;
}

- (void)setActions:(id)actions expirers:(id)expirers
{
  v39 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  expirersCopy = expirers;
  objc_storeStrong(&self->_actions, actions);
  v9 = [(NSSet *)self->_expirers mutableCopy];
  [v9 minusSet:expirersCopy];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        heuristicName = self->_heuristicName;
        WeakRetained = objc_loadWeakRetained(&self->_cache);
        [v15 stopExpiring:heuristicName cache:WeakRetained];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v18 = [(NSSet *)expirersCopy mutableCopy];
  [v18 minusSet:self->_expirers];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        v25 = self->_heuristicName;
        v26 = objc_loadWeakRetained(&self->_cache);
        [v24 startExpiring:v25 cache:{v26, v29}];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  expirers = self->_expirers;
  self->_expirers = expirersCopy;

  v28 = *MEMORY[0x277D85DE8];
}

@end