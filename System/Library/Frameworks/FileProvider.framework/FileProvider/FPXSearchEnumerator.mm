@interface FPXSearchEnumerator
- (FPXSearchEnumerator)initWithDomainContext:(id)context vendorEnumerator:(id)enumerator queue:(id)queue maximumNumberOfResultsPerPage:(int64_t)page;
- (void)_invalidateSync;
- (void)dealloc;
- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page;
- (void)invalidate;
- (void)invalidateVendorEnumeration;
@end

@implementation FPXSearchEnumerator

- (FPXSearchEnumerator)initWithDomainContext:(id)context vendorEnumerator:(id)enumerator queue:(id)queue maximumNumberOfResultsPerPage:(int64_t)page
{
  contextCopy = context;
  enumeratorCopy = enumerator;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = FPXSearchEnumerator;
  v14 = [(FPXSearchEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_domainContext, context);
    objc_storeStrong(&v15->_vendorEnumerator, enumerator);
    objc_storeStrong(&v15->_queue, queue);
    v15->_maximumNumberOfResultsPerPage = page;
  }

  return v15;
}

- (void)dealloc
{
  p_domainContext = &self->_domainContext;
  domain = [(FPXDomainContext *)self->_domainContext domain];
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
    v9 = v15 = domain;
    currentPersona2 = [v9 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)*p_domainContext domain];
    personaIdentifier2 = [domain2 personaIdentifier];

    if (userPersonaUniqueString2 != personaIdentifier2)
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(FPXSearchEnumerator *)self dealloc];
      }

      exit(1);
    }
  }

  [(FPXSearchEnumerator *)self invalidateVendorEnumeration];
  v16.receiver = self;
  v16.super_class = FPXSearchEnumerator;
  [(FPXSearchEnumerator *)&v16 dealloc];
}

- (void)_invalidateSync
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(FPXDomainContext *)self->_domainContext log];
  v4 = fpfs_adopt_log(v3);

  domain = [(FPXDomainContext *)self->_domainContext domain];
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
    v10 = v17 = domain;
    currentPersona2 = [v10 currentPersona];
    userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];
    domain2 = [(FPXDomainContext *)self->_domainContext domain];
    personaIdentifier2 = [domain2 personaIdentifier];

    if (userPersonaUniqueString2 != personaIdentifier2)
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(FPXSearchEnumerator *)self _invalidateSync];
      }

      exit(1);
    }
  }

  extensionContext = [(FPXDomainContext *)self->_domainContext extensionContext];
  [extensionContext searchEnumeratorWasInvalidated:self];

  [(FPXSearchEnumerator *)self invalidateVendorEnumeration];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPXSearchEnumerator_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidateVendorEnumeration
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_vendorEnumerator)
  {
    section = __fp_create_section();
    v8 = section;
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      vendorEnumerator = selfCopy->_vendorEnumerator;
      *buf = 134218498;
      v10 = section;
      v11 = 2112;
      v12 = selfCopy;
      v13 = 2112;
      v14 = vendorEnumerator;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: invalidating vendor enumeration: %@", buf, 0x20u);
    }

    [(NSFileProviderSearchEnumerator *)selfCopy->_vendorEnumerator invalidate];
    v5 = selfCopy->_vendorEnumerator;
    selfCopy->_vendorEnumerator = 0;

    __fp_leave_section_Debug(&v8);
  }

  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page
{
  pageCopy = page;
  observerCopy = observer;
  v8 = [FPXWrappedSearchEnumeratorObserver alloc];
  providerDomain = [(FPXDomainContext *)self->_domainContext providerDomain];
  providerID = [providerDomain providerID];
  domain = [(FPXDomainContext *)self->_domainContext domain];
  identifier = [domain identifier];
  v13 = [(FPXWrappedSearchEnumeratorObserver *)v8 initWithTarget:observerCopy providerID:providerID domainIdentifier:identifier maximumNumberOfResultsPerPage:self->_maximumNumberOfResultsPerPage];

  [(NSFileProviderSearchEnumerator *)self->_vendorEnumerator enumerateSearchResultsForObserver:v13 startingAtPage:pageCopy];
}

@end