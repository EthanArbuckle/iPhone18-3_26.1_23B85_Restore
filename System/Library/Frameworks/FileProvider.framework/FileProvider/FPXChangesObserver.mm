@interface FPXChangesObserver
- (FPXChangesObserver)initWithObservedItemID:(id)a3 domainContext:(id)a4 previousChangeToken:(id)a5 nsFileProviderRequest:(id)a6;
- (void)didDeleteItemsWithIdentifiers:(id)a3;
- (void)didUpdateItems:(id)a3;
- (void)finishEnumeratingChangesUpToSyncAnchor:(id)a3 moreComing:(BOOL)a4;
- (void)finishEnumeratingWithError:(id)a3;
@end

@implementation FPXChangesObserver

- (FPXChangesObserver)initWithObservedItemID:(id)a3 domainContext:(id)a4 previousChangeToken:(id)a5 nsFileProviderRequest:(id)a6
{
  v11 = a5;
  v18.receiver = self;
  v18.super_class = FPXChangesObserver;
  v12 = [(FPXObserver *)&v18 initWithObservedItemID:a3 domainContext:a4 nsFileProviderRequest:a6];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    changedItems = v12->_changedItems;
    v12->_changedItems = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedItemIDs = v12->_deletedItemIDs;
    v12->_deletedItemIDs = v15;

    objc_storeStrong(&v12->_originalSyncAnchor, a5);
    v12->_suggestedBatchSize = 200;
  }

  return v12;
}

- (void)didDeleteItemsWithIdentifiers:(id)a3
{
  v21 = a3;
  v4 = [(FPXDomainContext *)self->super._domainContext log];
  v5 = fpfs_adopt_log(v4);

  v6 = [(FPXDomainContext *)self->super._domainContext domain];
  v7 = [v6 personaIdentifier];
  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];
  v10 = [v9 userPersonaUniqueString];
  if ([v7 isEqualToString:v10])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v11 = v20 = v6;
    v12 = [v11 currentPersona];
    v19 = [v12 userPersonaUniqueString];
    v13 = [(FPXDomainContext *)self->super._domainContext domain];
    v14 = [v13 personaIdentifier];

    if (v19 != v14)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(FPXChangesObserver *)self didDeleteItemsWithIdentifiers:v18];
      }

      exit(1);
    }
  }

  v15 = [(NSMutableArray *)self->_deletedItemIDs count];
  if (([v21 count] + v15) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  deletedItemIDs = self->_deletedItemIDs;
  v17 = [(FPXDomainContext *)self->super._domainContext itemIDsFromVendorItemIDs:v21];
  [(NSMutableArray *)deletedItemIDs addObjectsFromArray:v17];
}

- (void)didUpdateItems:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FPXDomainContext *)self->super._domainContext log];
  v6 = fpfs_adopt_log(v5);

  v7 = [(FPXDomainContext *)self->super._domainContext domain];
  v8 = [v7 personaIdentifier];
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 currentPersona];
  v11 = [v10 userPersonaUniqueString];
  if ([v8 isEqualToString:v11])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v12 = v31 = v4;
    v13 = [v12 currentPersona];
    v29 = [v13 userPersonaUniqueString];
    v14 = [(FPXDomainContext *)self->super._domainContext domain];
    [v14 personaIdentifier];
    v15 = v30 = v7;

    v4 = v31;
    if (v29 != v15)
    {
      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(FPXChangesObserver *)self didUpdateItems:v28];
      }

      exit(1);
    }
  }

  v16 = [(NSMutableArray *)self->_changedItems count];
  if (([v4 count] + v16) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v23 = [(FPXObserver *)self updateForProviderItem:v22];
        if (v23)
        {
          [(NSMutableArray *)self->_changedItems addObject:v23];
        }

        else
        {
          v24 = [v22 itemIdentifier];
          if (v24)
          {
            deletedItemIDs = self->_deletedItemIDs;
            v26 = [(FPXDomainContext *)self->super._domainContext itemIDFromVendorItemID:v24];
            [(NSMutableArray *)deletedItemIDs addObject:v26];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingChangesUpToSyncAnchor:(id)a3 moreComing:(BOOL)a4
{
  v33 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v34 = a3;
  p_domainContext = &self->super._domainContext;
  v7 = [(FPXDomainContext *)self->super._domainContext log];
  v8 = fpfs_adopt_log(v7);

  v9 = [(FPXDomainContext *)self->super._domainContext domain];
  v10 = [v9 personaIdentifier];
  v11 = [MEMORY[0x1E69DF068] sharedManager];
  v12 = [v11 currentPersona];
  v13 = [v12 userPersonaUniqueString];
  if ([v10 isEqualToString:v13])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v14 = v31 = v9;
    [v14 currentPersona];
    v15 = v32 = a2;
    v30 = [v15 userPersonaUniqueString];
    v16 = [(FPXDomainContext *)*p_domainContext domain];
    v17 = [v16 personaIdentifier];

    a2 = v32;
    if (v30 != v17)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(FPXChangesObserver *)self finishEnumeratingChangesUpToSyncAnchor:v29 moreComing:?];
      }

      exit(1);
    }
  }

  v18 = [(FPXDomainContext *)*p_domainContext usesFPFS];
  if (!v34 && v18)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = NSStringFromSelector(a2);
    [v19 handleFailureInMethod:a2 object:self file:@"FPXEnumerator.m" lineNumber:243 description:{@"%@ returned a nil anchor", v20}];
  }

  [(FPXObserver *)self verifyVendorToken:v34];
  v21 = [(FPXChangesObserver *)self finishedBlock];

  if (!v21)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [MEMORY[0x1E696AEC0] fp_hashForToken:v34];
    *buf = 138543362;
    v36 = v23;
    _os_log_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_INFO, "[INFO] change enumeration returned change token %{public}@", buf, 0xCu);
  }

  v24 = [(FPXChangesObserver *)self finishedBlock];
  if (v24)
  {
    v25 = [(NSMutableArray *)self->_changedItems copy];
    v26 = [(NSMutableArray *)self->_deletedItemIDs copy];
    v27 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (v24)[2](v24, v25, v26, v33, v34, v27, 0);

    [(FPXChangesObserver *)self setFinishedBlock:0];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingWithError:(id)a3
{
  v24 = a3;
  p_domainContext = &self->super._domainContext;
  v5 = [(FPXDomainContext *)self->super._domainContext log];
  v6 = fpfs_adopt_log(v5);

  v7 = [(FPXDomainContext *)self->super._domainContext domain];
  v8 = [v7 personaIdentifier];
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 currentPersona];
  v11 = [v10 userPersonaUniqueString];
  if ([v8 isEqualToString:v11])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v12 = v22 = v7;
    v13 = [v12 currentPersona];
    [v13 userPersonaUniqueString];
    v14 = v23 = self;
    v15 = [(FPXDomainContext *)*p_domainContext domain];
    v16 = [v15 personaIdentifier];

    v17 = v14 == v16;
    self = v23;
    if (!v17)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(FPXChangesObserver *)v23 finishEnumeratingWithError:v20];
      }

      exit(1);
    }
  }

  v18 = [(FPXChangesObserver *)self finishedBlock];
  if (v18)
  {
    v19 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (v18)[2](v18, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0, 0, v19, v24);

    [(FPXChangesObserver *)self setFinishedBlock:0];
  }
}

@end