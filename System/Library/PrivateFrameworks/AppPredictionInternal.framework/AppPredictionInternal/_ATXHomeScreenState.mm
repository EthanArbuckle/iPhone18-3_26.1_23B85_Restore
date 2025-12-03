@interface _ATXHomeScreenState
- (BOOL)containsSuggestedWidgetForApp:(id)app;
- (BOOL)containsWidgetForIntent:(id)intent;
- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)visit appsOnDock:(id)dock stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
@end

@implementation _ATXHomeScreenState

- (_ATXHomeScreenState)initWithSortedHomeScreenPagesByUserLastVisit:(id)visit appsOnDock:(id)dock stackStateTracker:(id)tracker suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  v38 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  dockCopy = dock;
  trackerCopy = tracker;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v36.receiver = self;
  v36.super_class = _ATXHomeScreenState;
  v17 = [(_ATXHomeScreenState *)&v36 init];
  if (v17)
  {
    dockCopy2 = dock;
    v29 = dockCopy;
    v18 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = visitCopy;
    obj = visitCopy;
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

          dockCopy2 = [[_ATXHomeScreenPageState alloc] initWithHomeScreenState:v17 pageConfig:*(*(&v32 + 1) + 8 * v22) stackStateTracker:trackerCopy suggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy, dockCopy2];
          [(NSArray *)v18 addObject:dockCopy2];

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

    objc_storeStrong(&v17->_appsOnDock, dockCopy2);
    dockCopy = v29;
    visitCopy = v30;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)containsWidgetForIntent:(id)intent
{
  v16 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
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

        if ([*(*(&v11 + 1) + 8 * i) containsWidgetForIntent:{intentCopy, v11}])
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

- (BOOL)containsSuggestedWidgetForApp:(id)app
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
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

        if ([*(*(&v11 + 1) + 8 * i) containsSuggestedWidgetForApp:{appCopy, v11}])
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