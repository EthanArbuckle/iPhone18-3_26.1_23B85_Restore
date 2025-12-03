@interface ATXHeuristicCacheExpirationEntry
- (ATXHeuristicCacheExpirationEntry)initWithHeuristic:(id)heuristic cache:(id)cache;
- (ATXHeuristicResultCache)cache;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ATXHeuristicCacheExpirationEntry

- (unint64_t)hash
{
  v3 = [(NSString *)self->_heuristicName hash];
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v5 = [WeakRetained hash] - v3 + 32 * v3;

  return v5;
}

- (ATXHeuristicCacheExpirationEntry)initWithHeuristic:(id)heuristic cache:(id)cache
{
  heuristicCopy = heuristic;
  cacheCopy = cache;
  v9 = cacheCopy;
  if (heuristicCopy)
  {
    if (cacheCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXHeuristicCacheExpirationEntry initWithHeuristic:cache:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [ATXHeuristicCacheExpirationEntry initWithHeuristic:cache:];
LABEL_3:
  v13.receiver = self;
  v13.super_class = ATXHeuristicCacheExpirationEntry;
  v10 = [(ATXHeuristicCacheExpirationEntry *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_heuristicName, heuristic);
    objc_storeWeak(&v11->_cache, v9);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_heuristicName;
      v7 = v6;
      if (v6 == v5->_heuristicName)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_cache);
      v11 = objc_loadWeakRetained(&v5->_cache);
      if (WeakRetained == v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = [WeakRetained isEqual:v11];
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (ATXHeuristicResultCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

- (void)initWithHeuristic:cache:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_4();
  [v0 handleFailureInMethod:@"heuristicName" object:? file:? lineNumber:? description:?];
}

- (void)initWithHeuristic:cache:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_4();
  [v0 handleFailureInMethod:@"cache" object:? file:? lineNumber:? description:?];
}

@end