@interface PreflightCacheAssertion
- (PreflightCache)cache;
- (PreflightCacheAssertion)initWithReason:(id)reason cache:(id)cache;
- (id)description;
- (void)dealloc;
- (void)drop;
@end

@implementation PreflightCacheAssertion

- (PreflightCacheAssertion)initWithReason:(id)reason cache:(id)cache
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = PreflightCacheAssertion;
  v9 = [(PreflightCacheAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, reason);
    objc_storeWeak(&v10->_cache, cacheCopy);
  }

  v11 = LA_LOG_2();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_238B7F000, v11, OS_LOG_TYPE_DEFAULT, "Created %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  [(PreflightCacheAssertion *)self drop];
  v3.receiver = self;
  v3.super_class = PreflightCacheAssertion;
  [(PreflightCacheAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  reason = [(PreflightCacheAssertion *)self reason];
  v7 = [v3 stringWithFormat:@"<%@ %p: %@>", v5, self, reason];

  return v7;
}

- (void)drop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LA_LOG_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "Dropped %@", &v6, 0xCu);
  }

  cache = [(PreflightCacheAssertion *)self cache];
  [cache dropAssertion:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (PreflightCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end