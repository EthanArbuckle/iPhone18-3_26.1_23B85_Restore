@interface FPXChangesObserver
- (FPXChangesObserver)initWithObservedItemID:(id)d domainContext:(id)context previousChangeToken:(id)token nsFileProviderRequest:(id)request;
- (void)didDeleteItemsWithIdentifiers:(id)identifiers;
- (void)didUpdateItems:(id)items;
- (void)finishEnumeratingChangesUpToSyncAnchor:(id)anchor moreComing:(BOOL)coming;
- (void)finishEnumeratingWithError:(id)error;
@end

@implementation FPXChangesObserver

- (FPXChangesObserver)initWithObservedItemID:(id)d domainContext:(id)context previousChangeToken:(id)token nsFileProviderRequest:(id)request
{
  tokenCopy = token;
  v18.receiver = self;
  v18.super_class = FPXChangesObserver;
  v12 = [(FPXObserver *)&v18 initWithObservedItemID:d domainContext:context nsFileProviderRequest:request];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    changedItems = v12->_changedItems;
    v12->_changedItems = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedItemIDs = v12->_deletedItemIDs;
    v12->_deletedItemIDs = v15;

    objc_storeStrong(&v12->_originalSyncAnchor, token);
    v12->_suggestedBatchSize = 200;
  }

  return v12;
}

- (void)didDeleteItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
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
        [(FPXChangesObserver *)self didDeleteItemsWithIdentifiers:v18];
      }

      exit(1);
    }
  }

  v15 = [(NSMutableArray *)self->_deletedItemIDs count];
  if (([identifiersCopy count] + v15) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  deletedItemIDs = self->_deletedItemIDs;
  v17 = [(FPXDomainContext *)self->super._domainContext itemIDsFromVendorItemIDs:identifiersCopy];
  [(NSMutableArray *)deletedItemIDs addObjectsFromArray:v17];
}

- (void)didUpdateItems:(id)items
{
  v37 = *MEMORY[0x1E69E9840];
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
    v12 = v31 = itemsCopy;
    currentPersona2 = [v12 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)self->super._domainContext domain];
    [domain2 personaIdentifier];
    v15 = v30 = domain;

    itemsCopy = v31;
    if (userPersonaUniqueString2 != v15)
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
  if (([itemsCopy count] + v16) >= 0x4E21)
  {
    __FILEPROVIDER_OBSERVER_TOO_MANY_ITEMS__(self->super._observedItemID);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = itemsCopy;
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
          itemIdentifier = [v22 itemIdentifier];
          if (itemIdentifier)
          {
            deletedItemIDs = self->_deletedItemIDs;
            v26 = [(FPXDomainContext *)self->super._domainContext itemIDFromVendorItemID:itemIdentifier];
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

- (void)finishEnumeratingChangesUpToSyncAnchor:(id)anchor moreComing:(BOOL)coming
{
  comingCopy = coming;
  v37 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  p_domainContext = &self->super._domainContext;
  v7 = [(FPXDomainContext *)self->super._domainContext log];
  v8 = fpfs_adopt_log(v7);

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
    v14 = v31 = domain;
    [v14 currentPersona];
    v15 = v32 = a2;
    userPersonaUniqueString2 = [v15 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)*p_domainContext domain];
    personaIdentifier2 = [domain2 personaIdentifier];

    a2 = v32;
    if (userPersonaUniqueString2 != personaIdentifier2)
    {
      v29 = fp_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(FPXChangesObserver *)self finishEnumeratingChangesUpToSyncAnchor:v29 moreComing:?];
      }

      exit(1);
    }
  }

  usesFPFS = [(FPXDomainContext *)*p_domainContext usesFPFS];
  if (!anchorCopy && usesFPFS)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPXEnumerator.m" lineNumber:243 description:{@"%@ returned a nil anchor", v20}];
  }

  [(FPXObserver *)self verifyVendorToken:anchorCopy];
  finishedBlock = [(FPXChangesObserver *)self finishedBlock];

  if (!finishedBlock)
  {
    __FILEPROVIDER_OBSERVER_FINISHED_MORE_THAN_ONCE__(self->super._observedItemID);
  }

  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [MEMORY[0x1E696AEC0] fp_hashForToken:anchorCopy];
    *buf = 138543362;
    v36 = v23;
    _os_log_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_INFO, "[INFO] change enumeration returned change token %{public}@", buf, 0xCu);
  }

  finishedBlock2 = [(FPXChangesObserver *)self finishedBlock];
  if (finishedBlock2)
  {
    v25 = [(NSMutableArray *)self->_changedItems copy];
    v26 = [(NSMutableArray *)self->_deletedItemIDs copy];
    v27 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (finishedBlock2)[2](finishedBlock2, v25, v26, comingCopy, anchorCopy, v27, 0);

    [(FPXChangesObserver *)self setFinishedBlock:0];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)finishEnumeratingWithError:(id)error
{
  errorCopy = error;
  p_domainContext = &self->super._domainContext;
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
    v12 = v22 = domain;
    currentPersona2 = [v12 currentPersona];
    [currentPersona2 userPersonaUniqueString];
    v14 = v23 = self;
    domain2 = [(FPXDomainContext *)*p_domainContext domain];
    personaIdentifier2 = [domain2 personaIdentifier];

    v17 = v14 == personaIdentifier2;
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

  finishedBlock = [(FPXChangesObserver *)self finishedBlock];
  if (finishedBlock)
  {
    v19 = [(FPXDomainContext *)self->super._domainContext currentResponseWithRequest:self->super._nsFileProviderRequest];
    (finishedBlock)[2](finishedBlock, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0, 0, v19, errorCopy);

    [(FPXChangesObserver *)self setFinishedBlock:0];
  }
}

@end