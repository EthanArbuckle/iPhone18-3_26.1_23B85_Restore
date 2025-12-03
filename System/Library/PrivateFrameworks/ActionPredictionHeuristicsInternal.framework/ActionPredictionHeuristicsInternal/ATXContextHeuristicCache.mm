@interface ATXContextHeuristicCache
- (ATXContextHeuristicCache)init;
- (id)allRelevantSuggestionsForDate:(id)date;
- (id)heuristicsCached;
- (id)nextChangeAfterDate:(id)date;
- (id)suggestionsForKey:(id)key;
- (void)dealloc;
- (void)evict:(id)evict;
- (void)evictAll;
- (void)evictBefore:(id)before;
- (void)setSuggestions:(id)suggestions forKey:(id)key;
@end

@implementation ATXContextHeuristicCache

- (ATXContextHeuristicCache)init
{
  v8.receiver = self;
  v8.super_class = ATXContextHeuristicCache;
  v2 = [(ATXContextHeuristicCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    criteriaTable = v2->_criteriaTable;
    v2->_criteriaTable = v5;

    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = ATXContextHeuristicCache;
  [(ATXContextHeuristicCache *)&v3 dealloc];
}

- (id)suggestionsForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (void)setSuggestions:(id)suggestions forKey:(id)key
{
  v41 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:suggestionsCopy forKeyedSubscript:keyCopy];
  v8 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = keyCopy;
    v34 = 2048;
    v35 = [suggestionsCopy count];
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "[Cache internal] Adding suggestions for key %@: %lu", buf, 0x16u);
  }

  v23 = keyCopy;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = suggestionsCopy;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v24 = *v29;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        atxActionCriteria = [v13 atxActionCriteria];
        v15 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          uiSpecification = [v13 uiSpecification];
          title = [uiSpecification title];
          uiSpecification2 = [v13 uiSpecification];
          reason = [uiSpecification2 reason];
          v19 = [reason hash];
          startDate = [atxActionCriteria startDate];
          endDate = [atxActionCriteria endDate];
          *buf = 138413058;
          v33 = title;
          v34 = 2048;
          v35 = v19;
          v36 = 2112;
          v37 = startDate;
          v38 = 2112;
          v39 = endDate;
          _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "[Cache internal] Adding criteria for suggestion %@, reason.hash %lu, start: %@ end: %@", buf, 0x2Au);

          v11 = v24;
          v10 = v25;
        }

        [(NSHashTable *)self->_criteriaTable addObject:atxActionCriteria];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v10);
  }

  pthread_mutex_unlock(&self->_lock);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)heuristicsCached
{
  pthread_mutex_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_cache allKeys];
  pthread_mutex_unlock(&self->_lock);
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:allKeys];

  return v4;
}

- (id)allRelevantSuggestionsForDate:(id)date
{
  v45 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  pthread_mutex_lock(&self->_lock);
  v27 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  obj = self->_cache;
  v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v25)
  {
    v23 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = [(NSMutableDictionary *)selfCopy->_cache objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v5)];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = v6;
        v7 = [v6 countByEnumeratingWithState:&v29 objects:v43 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v28);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              atxActionCriteria = [v11 atxActionCriteria];
              v13 = __atxlog_handle_context_heuristic();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                startDate = [atxActionCriteria startDate];
                endDate = [atxActionCriteria endDate];
                *buf = 138412802;
                v38 = dateCopy;
                v39 = 2112;
                v40 = startDate;
                v41 = 2112;
                v42 = endDate;
                _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "[Cache internal] Considering date: %@ for interval %@ - %@", buf, 0x20u);
              }

              dateInterval = [atxActionCriteria dateInterval];
              v17 = [dateInterval containsDate:dateCopy];

              if (v17)
              {
                [v27 addObject:v11];
              }

              else
              {
                v18 = __atxlog_handle_context_heuristic();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v38 = v11;
                  _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "[Cache internal] Suggestion is no longer relevant: %@", buf, 0xCu);
                }
              }
            }

            v8 = [v28 countByEnumeratingWithState:&v29 objects:v43 count:16];
          }

          while (v8);
        }

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v25);
  }

  pthread_mutex_unlock(&selfCopy->_lock);
  v19 = [v27 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)nextChangeAfterDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  pthread_mutex_lock(&self->_lock);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_criteriaTable;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v34;
  do
  {
    v10 = 0;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      startDate = [v11 startDate];
      if (startDate)
      {
      }

      else
      {
        endDate = [v11 endDate];

        if (!endDate)
        {
          goto LABEL_18;
        }
      }

      startDate2 = [v11 startDate];

      if (startDate2)
      {
        [dateCopy timeIntervalSinceReferenceDate];
        v16 = v15;
        startDate3 = [v11 startDate];
        [startDate3 timeIntervalSinceReferenceDate];
        v19 = v18;

        if (v16 < v19)
        {
          startDate4 = [v11 startDate];
          v21 = [v8 earlierDate:startDate4];
          if (v21)
          {
            goto LABEL_16;
          }

          startDate5 = [v11 startDate];
          goto LABEL_17;
        }
      }

      endDate2 = [v11 endDate];

      if (endDate2)
      {
        [dateCopy timeIntervalSinceReferenceDate];
        v25 = v24;
        endDate3 = [v11 endDate];
        [endDate3 timeIntervalSinceReferenceDate];
        v28 = v27;

        if (v25 < v28)
        {
          startDate4 = [v11 endDate];
          v21 = [v8 earlierDate:startDate4];
          if (v21)
          {
LABEL_16:
            startDate5 = v21;
            v21 = startDate5;
          }

          else
          {
            startDate5 = [v11 endDate];
          }

LABEL_17:
          v29 = startDate5;

          v8 = v29;
        }
      }

LABEL_18:
      ++v10;
    }

    while (v7 != v10);
    v30 = [(NSHashTable *)v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v7 = v30;
  }

  while (v30);
LABEL_24:

  pthread_mutex_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)evictBefore:(id)before
{
  v21 = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v9];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __40__ATXContextHeuristicCache_evictBefore___block_invoke;
        v14[3] = &unk_278C3CD80;
        v15 = beforeCopy;
        v11 = [v10 _pas_filteredArrayWithTest:v14];
        [(NSMutableDictionary *)self->_cache setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  pthread_mutex_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __40__ATXContextHeuristicCache_evictBefore___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 atxActionCriteria];
  v5 = [v4 endDate];

  if (v5 && ([*(a1 + 32) timeIntervalSinceReferenceDate], v7 = v6, objc_msgSend(v4, "endDate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v10 = v9, v8, v7 >= v10))
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "[Cache internal] Removing suggestion: %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)evict:(id)evict
{
  v9 = *MEMORY[0x277D85DE8];
  evictCopy = evict;
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = evictCopy;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "[Cache internal] Removing %@", &v7, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:evictCopy];
  pthread_mutex_unlock(&self->_lock);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)evictAll
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    heuristicsCached = [(ATXContextHeuristicCache *)self heuristicsCached];
    v8 = 138412290;
    v9 = heuristicsCached;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "[Cache internal] Removing all heuristics %@", &v8, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  v5 = objc_opt_new();
  cache = self->_cache;
  self->_cache = v5;

  pthread_mutex_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

@end