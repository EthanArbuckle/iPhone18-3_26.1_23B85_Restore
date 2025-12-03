@interface FPXItemsObserver
- (FPXItemsObserver)initWithObservedItemID:(id)d domainContext:(id)context nsFileProviderRequest:(id)request;
- (void)didEnumerateItems:(id)items;
- (void)finishEnumeratingUpToPage:(id)page;
- (void)finishEnumeratingWithError:(id)error;
@end

@implementation FPXItemsObserver

- (FPXItemsObserver)initWithObservedItemID:(id)d domainContext:(id)context nsFileProviderRequest:(id)request
{
  v9.receiver = self;
  v9.super_class = FPXItemsObserver;
  v5 = [(FPXObserver *)&v9 initWithObservedItemID:d domainContext:context nsFileProviderRequest:request];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v5->_items;
    v5->_items = v6;

    v5->_suggestedPageSize = 200;
  }

  return v5;
}

- (void)didEnumerateItems:(id)items
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [(FPXDomainContext *)self->super._domainContext log];
  v6 = fpfs_adopt_log(v5);

  domain = [(FPXDomainContext *)self->super._domainContext domain];
  personaIdentifier = [domain personaIdentifier];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  if ([personaIdentifier isEqualToString:userPersonaUniqueString])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v12 = v28 = itemsCopy;
    currentPersona2 = [v12 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)self->super._domainContext domain];
    [domain2 personaIdentifier];
    v15 = v27 = domain;

    itemsCopy = v28;
    if (userPersonaUniqueString2 != v15)
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
    [(FPXItemsObserver *)self didEnumerateItems:itemsCopy, v16];
  }

  v17 = [(NSMutableArray *)self->_items count];
  if (([itemsCopy count] + v17) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = itemsCopy;
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

- (void)finishEnumeratingUpToPage:(id)page
{
  v30 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v5 = [(FPXDomainContext *)self->super._domainContext log];
  v6 = fpfs_adopt_log(v5);

  domain = [(FPXDomainContext *)self->super._domainContext domain];
  personaIdentifier = [domain personaIdentifier];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  if ([personaIdentifier isEqualToString:userPersonaUniqueString])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v12 = v27 = pageCopy;
    currentPersona2 = [v12 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)self->super._domainContext domain];
    [domain2 personaIdentifier];
    v15 = v26 = domain;

    pageCopy = v27;
    if (userPersonaUniqueString2 != v15)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(FPXItemsObserver *)self finishEnumeratingUpToPage:v24];
      }

      exit(1);
    }
  }

  [(FPXObserver *)self verifyVendorToken:pageCopy];
  finishedBlock = [(FPXItemsObserver *)self finishedBlock];

  if (!finishedBlock)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x1E696AEC0] fp_hashForToken:pageCopy];
    *buf = 138543362;
    v29 = v18;
    _os_log_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_INFO, "[INFO] page enumeration returned page token %{public}@", buf, 0xCu);
  }

  finishedBlock2 = [(FPXItemsObserver *)self finishedBlock];
  if (finishedBlock2)
  {
    items = self->_items;
    syncAnchor = [(FPXItemsObserver *)self syncAnchor];
    v22 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (finishedBlock2)[2](finishedBlock2, items, pageCopy, syncAnchor, v22, 0);

    [(FPXItemsObserver *)self setFinishedBlock:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingWithError:(id)error
{
  errorCopy = error;
  v4 = [(FPXDomainContext *)self->super._domainContext log];
  v5 = fpfs_adopt_log(v4);

  domain = [(FPXDomainContext *)self->super._domainContext domain];
  personaIdentifier = [domain personaIdentifier];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  if ([personaIdentifier isEqualToString:userPersonaUniqueString])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v11 = v20 = domain;
    currentPersona2 = [v11 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)self->super._domainContext domain];
    personaIdentifier2 = [domain2 personaIdentifier];

    if (userPersonaUniqueString2 != personaIdentifier2)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(FPXItemsObserver *)self finishEnumeratingWithError:v18];
      }

      exit(1);
    }
  }

  finishedBlock = [(FPXItemsObserver *)self finishedBlock];

  if (!finishedBlock)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  finishedBlock2 = [(FPXItemsObserver *)self finishedBlock];
  if (finishedBlock2)
  {
    v17 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (finishedBlock2)[2](finishedBlock2, MEMORY[0x1E695E0F0], 0, 0, v17, errorCopy);

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