@interface ATXHeuristicCacheContextStoreExpirer
- (ATXHeuristicCacheContextStoreExpirer)initWithCDContextualKeyPath:(id)path;
- (ATXHeuristicCacheContextStoreExpirer)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicCacheContextStoreExpirer

- (void)_stop
{
  if (self->_registration)
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    [userContext deregisterCallback:self->_registration];

    registration = self->_registration;
    self->_registration = 0;
  }
}

- (ATXHeuristicCacheContextStoreExpirer)initWithCDContextualKeyPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = ATXHeuristicCacheContextStoreExpirer;
  v6 = [(ATXHeuristicCacheExpirer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextKeyPath, path);
    v8 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:pathCopy];
    predicate = v7->_predicate;
    v7->_predicate = v8;
  }

  return v7;
}

- (void)_start
{
  if (!self->_registration)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__ATXHeuristicCacheContextStoreExpirer__start__block_invoke;
    v10[3] = &unk_278C3CF90;
    objc_copyWeak(&v11, &location);
    v3 = MEMORY[0x23EF0A350](v10);
    v4 = MEMORY[0x277CCACA8];
    v5 = [(_CDContextualKeyPath *)self->_contextKeyPath key];
    v6 = [v4 stringWithFormat:@"com.apple.duetexpertd.heuristics.contextchange-%@", v5];

    v7 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:v6 contextualPredicate:self->_predicate clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v3];
    registration = self->_registration;
    self->_registration = v7;

    userContext = [MEMORY[0x277CFE318] userContext];
    [userContext registerCallback:self->_registration];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__ATXHeuristicCacheContextStoreExpirer__start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277CBEBD0]);
    v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [WeakRetained[10] key];
    [v3 setObject:v4 forKey:v5];

    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = WeakRetained[10];
      v9 = 134218242;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "ATXHeuristicCacheContextStoreExpirer (%p): Context changed at keypath %@. Triggering heuristics refresh.", &v9, 0x16u);
    }

    [WeakRetained expire];
  }

  else
  {
    v3 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__ATXHeuristicCacheContextStoreExpirer__start__block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contextKeyPath = self->_contextKeyPath;
      if (contextKeyPath == v5->_contextKeyPath || [(_CDContextualKeyPath *)contextKeyPath isEqual:?])
      {
        predicate = self->_predicate;
        if (predicate == v5->_predicate)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(_CDContextualPredicate *)predicate isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_CDContextualKeyPath *)self->_contextKeyPath key];
  v5 = [v3 initWithFormat:@"ATXHeuristicCacheContextStoreExpirer for %@", v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXHeuristicCacheContextStoreExpirer;
  coderCopy = coder;
  [(ATXHeuristicCacheExpirer *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contextKeyPath forKey:{@"contextKeyPath", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
}

- (ATXHeuristicCacheContextStoreExpirer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ATXHeuristicCacheContextStoreExpirer;
  v5 = [(ATXHeuristicCacheExpirer *)&v15 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_3;
  }

  error = [coderCopy error];

  if (error)
  {
    goto LABEL_3;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextKeyPath"];
  contextKeyPath = v5->_contextKeyPath;
  v5->_contextKeyPath = v9;

  if (!v5->_contextKeyPath)
  {
    goto LABEL_3;
  }

  error2 = [coderCopy error];

  if (error2)
  {
    goto LABEL_3;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
  predicate = v5->_predicate;
  v5->_predicate = v12;

  if (!v5->_predicate || ([coderCopy error], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
LABEL_3:
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end