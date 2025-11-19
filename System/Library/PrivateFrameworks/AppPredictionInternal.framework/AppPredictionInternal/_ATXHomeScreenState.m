@interface _ATXHomeScreenState
- (BOOL)containsSuggestedWidgetForApp:(id)a3;
- (BOOL)containsWidgetForIntent:(id)a3;
- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)a3 appsOnDock:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7;
@end

@implementation _ATXHomeScreenState

- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)a3 appsOnDock:(id)a4 stackStateTracker:(id)a5 suggestionDeduplicator:(id)a6 hyperParameters:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36.receiver = self;
  v36.super_class = _ATXHomeScreenState;
  v17 = [(_ATXHomeScreenState *)&v36 init];
  if (v17)
  {
    v28 = a4;
    v29 = v13;
    v18 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v12;
    obj = v12;
    v19 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        v22 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = [[_ATXHomeScreenPageState alloc] initWithHomeScreenState:v17 pageConfig:*(*(&v32 + 1) + 8 * v22) stackStateTracker:v14 suggestionDeduplicator:v15 hyperParameters:v16, v28];
          [(NSArray *)v18 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v20);
    }

    sortedPagesByUserLastVisit = v17->_sortedPagesByUserLastVisit;
    v17->_sortedPagesByUserLastVisit = v18;
    v25 = v18;

    objc_storeStrong(&v17->_appsOnDock, v28);
    v13 = v29;
    v12 = v30;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)containsWidgetForIntent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sortedPagesByUserLastVisit;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsWidgetForIntent:{v4, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)containsSuggestedWidgetForApp:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sortedPagesByUserLastVisit;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsSuggestedWidgetForApp:{v4, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end