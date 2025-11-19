@interface FPXItemsObserver
- (FPXItemsObserver)initWithObservedItemID:(id)a3 domainContext:(id)a4 nsFileProviderRequest:(id)a5;
- (void)didEnumerateItems:(id)a3;
- (void)finishEnumeratingUpToPage:(id)a3;
- (void)finishEnumeratingWithError:(id)a3;
@end

@implementation FPXItemsObserver

- (FPXItemsObserver)initWithObservedItemID:(id)a3 domainContext:(id)a4 nsFileProviderRequest:(id)a5
{
  v9.receiver = self;
  v9.super_class = FPXItemsObserver;
  v5 = [(FPXObserver *)&v9 initWithObservedItemID:a3 domainContext:a4 nsFileProviderRequest:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v5->_items;
    v5->_items = v6;

    v5->_suggestedPageSize = 200;
  }

  return v5;
}

- (void)didEnumerateItems:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
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
    v12 = v28 = v4;
    v13 = [v12 currentPersona];
    v26 = [v13 userPersonaUniqueString];
    v14 = [(FPXDomainContext *)self->super._domainContext domain];
    [v14 personaIdentifier];
    v15 = v27 = v7;

    v4 = v28;
    if (v26 != v15)
    {
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(FPXItemsObserver *)self didEnumerateItems:v25];
      }

      exit(1);
    }
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(FPXItemsObserver *)self didEnumerateItems:v4, v16];
  }

  v17 = [(NSMutableArray *)self->_items count];
  if (([v4 count] + v17) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(FPXObserver *)self updateForProviderItem:*(*(&v29 + 1) + 8 * i)];
        if (v23)
        {
          [(NSMutableArray *)self->_items addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingUpToPage:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
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
    v12 = v27 = v4;
    v13 = [v12 currentPersona];
    v25 = [v13 userPersonaUniqueString];
    v14 = [(FPXDomainContext *)self->super._domainContext domain];
    [v14 personaIdentifier];
    v15 = v26 = v7;

    v4 = v27;
    if (v25 != v15)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(FPXItemsObserver *)self finishEnumeratingUpToPage:v24];
      }

      exit(1);
    }
  }

  [(FPXObserver *)self verifyVendorToken:v4];
  v16 = [(FPXItemsObserver *)self finishedBlock];

  if (!v16)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x1E696AEC0] fp_hashForToken:v4];
    *buf = 138543362;
    v29 = v18;
    _os_log_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_INFO, "[INFO] page enumeration returned page token %{public}@", buf, 0xCu);
  }

  v19 = [(FPXItemsObserver *)self finishedBlock];
  if (v19)
  {
    items = self->_items;
    v21 = [(FPXItemsObserver *)self syncAnchor];
    v22 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (v19)[2](v19, items, v4, v21, v22, 0);

    [(FPXItemsObserver *)self setFinishedBlock:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingWithError:(id)a3
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
        [(FPXItemsObserver *)self finishEnumeratingWithError:v18];
      }

      exit(1);
    }
  }

  v15 = [(FPXItemsObserver *)self finishedBlock];

  if (!v15)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  v16 = [(FPXItemsObserver *)self finishedBlock];
  if (v16)
  {
    v17 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (v16)[2](v16, MEMORY[0x1E695E0F0], 0, 0, v17, v21);

    [(FPXItemsObserver *)self setFinishedBlock:0];
  }
}

- (void)didEnumerateItems:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = [a2 count];
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: received %d items", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end