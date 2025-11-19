@interface PreflightCacheAssertion
- (PreflightCache)cache;
- (PreflightCacheAssertion)initWithReason:(id)a3 cache:(id)a4;
- (id)description;
- (void)dealloc;
- (void)drop;
@end

@implementation PreflightCacheAssertion

- (PreflightCacheAssertion)initWithReason:(id)a3 cache:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PreflightCacheAssertion;
  v9 = [(PreflightCacheAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, a3);
    objc_storeWeak(&v10->_cache, v8);
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
  v6 = [(PreflightCacheAssertion *)self reason];
  v7 = [v3 stringWithFormat:@"<%@ %p: %@>", v5, self, v6];

  return v7;
}

- (void)drop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LA_LOG_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "Dropped %@", &v6, 0xCu);
  }

  v4 = [(PreflightCacheAssertion *)self cache];
  [v4 dropAssertion:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (PreflightCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end