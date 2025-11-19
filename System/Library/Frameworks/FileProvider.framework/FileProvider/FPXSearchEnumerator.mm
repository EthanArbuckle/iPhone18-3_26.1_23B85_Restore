@interface FPXSearchEnumerator
- (FPXSearchEnumerator)initWithDomainContext:(id)a3 vendorEnumerator:(id)a4 queue:(id)a5 maximumNumberOfResultsPerPage:(int64_t)a6;
- (void)_invalidateSync;
- (void)dealloc;
- (void)enumerateSearchResultsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)invalidate;
- (void)invalidateVendorEnumeration;
@end

@implementation FPXSearchEnumerator

- (FPXSearchEnumerator)initWithDomainContext:(id)a3 vendorEnumerator:(id)a4 queue:(id)a5 maximumNumberOfResultsPerPage:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FPXSearchEnumerator;
  v14 = [(FPXSearchEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_domainContext, a3);
    objc_storeStrong(&v15->_vendorEnumerator, a4);
    objc_storeStrong(&v15->_queue, a5);
    v15->_maximumNumberOfResultsPerPage = a6;
  }

  return v15;
}

- (void)dealloc
{
  p_domainContext = &self->_domainContext;
  v4 = [(FPXDomainContext *)self->_domainContext domain];
  v5 = [v4 personaIdentifier];
  v6 = [MEMORY[0x1E69DF068] sharedManager];
  v7 = [v6 currentPersona];
  v8 = [v7 userPersonaUniqueString];
  if ([v5 isEqualToString:v8])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v9 = v15 = v4;
    v10 = [v9 currentPersona];
    v14 = [v10 userPersonaUniqueString];
    v11 = [(FPXDomainContext *)*p_domainContext domain];
    v12 = [v11 personaIdentifier];

    if (v14 != v12)
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

  v5 = [(FPXDomainContext *)self->_domainContext domain];
  v6 = [v5 personaIdentifier];
  v7 = [MEMORY[0x1E69DF068] sharedManager];
  v8 = [v7 currentPersona];
  v9 = [v8 userPersonaUniqueString];
  if ([v6 isEqualToString:v9])
  {
  }

  else
  {
    [MEMORY[0x1E69DF068] sharedManager];
    v10 = v17 = v5;
    v11 = [v10 currentPersona];
    v16 = [v11 userPersonaUniqueString];
    v12 = [(FPXDomainContext *)self->_domainContext domain];
    v13 = [v12 personaIdentifier];

    if (v16 != v13)
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(FPXSearchEnumerator *)self _invalidateSync];
      }

      exit(1);
    }
  }

  v14 = [(FPXDomainContext *)self->_domainContext extensionContext];
  [v14 searchEnumeratorWasInvalidated:self];

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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_vendorEnumerator)
  {
    section = __fp_create_section();
    v8 = section;
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      vendorEnumerator = v2->_vendorEnumerator;
      *buf = 134218498;
      v10 = section;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = vendorEnumerator;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: invalidating vendor enumeration: %@", buf, 0x20u);
    }

    [(NSFileProviderSearchEnumerator *)v2->_vendorEnumerator invalidate];
    v5 = v2->_vendorEnumerator;
    v2->_vendorEnumerator = 0;

    __fp_leave_section_Debug(&v8);
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSearchResultsForObserver:(id)a3 startingAtPage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FPXWrappedSearchEnumeratorObserver alloc];
  v9 = [(FPXDomainContext *)self->_domainContext providerDomain];
  v10 = [v9 providerID];
  v11 = [(FPXDomainContext *)self->_domainContext domain];
  v12 = [v11 identifier];
  v13 = [(FPXWrappedSearchEnumeratorObserver *)v8 initWithTarget:v7 providerID:v10 domainIdentifier:v12 maximumNumberOfResultsPerPage:self->_maximumNumberOfResultsPerPage];

  [(NSFileProviderSearchEnumerator *)self->_vendorEnumerator enumerateSearchResultsForObserver:v13 startingAtPage:v6];
}

@end