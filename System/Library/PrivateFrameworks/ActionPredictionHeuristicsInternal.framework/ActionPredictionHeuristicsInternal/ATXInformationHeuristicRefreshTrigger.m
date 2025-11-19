@interface ATXInformationHeuristicRefreshTrigger
- (ATXInformationHeuristicRefreshTrigger)init;
- (ATXInformationHeuristicRefreshTrigger)initWithCoder:(id)a3;
- (ATXInformationHeuristicRefreshTriggerDelegate)delegate;
- (NSSet)registeredHeuristics;
- (id)_safeDecodeObjectOfClass:(Class)a3 forKey:(id)a4 withCoder:(id)a5 nonNull:(BOOL)a6;
- (id)_safeDecodeObjectOfClasses:(id)a3 forKey:(id)a4 withCoder:(id)a5 nonNull:(BOOL)a6;
- (void)dealloc;
- (void)startTriggeringRefreshForHeuristicIfNotAlready:(id)a3;
- (void)stopTriggeringRefreshForAllHeuristics;
- (void)stopTriggeringRefreshForHeuristicIfAlready:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshTrigger

- (NSSet)registeredHeuristics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_registeredHeuristics copy];
  objc_sync_exit(v2);

  return v3;
}

- (ATXInformationHeuristicRefreshTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ATXInformationHeuristicRefreshTrigger)init
{
  v6.receiver = self;
  v6.super_class = ATXInformationHeuristicRefreshTrigger;
  v2 = [(ATXInformationHeuristicRefreshTrigger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registeredHeuristics = v2->_registeredHeuristics;
    v2->_registeredHeuristics = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  [(ATXInformationHeuristicRefreshTrigger *)v2 _stop];
  objc_sync_exit(v2);

  v3.receiver = v2;
  v3.super_class = ATXInformationHeuristicRefreshTrigger;
  [(ATXInformationHeuristicRefreshTrigger *)&v3 dealloc];
}

- (void)startTriggeringRefreshForHeuristicIfNotAlready:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_registeredHeuristics addObject:v5];
  [(ATXInformationHeuristicRefreshTrigger *)v4 _start];
  objc_sync_exit(v4);
}

- (void)stopTriggeringRefreshForHeuristicIfAlready:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_registeredHeuristics removeObject:v5];
  if (![(NSMutableSet *)v4->_registeredHeuristics count])
  {
    [(ATXInformationHeuristicRefreshTrigger *)v4 _stop];
  }

  objc_sync_exit(v4);
}

- (void)stopTriggeringRefreshForAllHeuristics
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableSet *)obj->_registeredHeuristics removeAllObjects];
  [(ATXInformationHeuristicRefreshTrigger *)obj _stop];
  objc_sync_exit(obj);
}

- (ATXInformationHeuristicRefreshTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ATXInformationHeuristicRefreshTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v14 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClasses:v8 forKey:@"registeredHeuristics" withCoder:v4 nonNull:1];

  if (v9)
  {
    v10 = [v4 error];

    if (!v10)
    {
      registeredHeuristics = v5->_registeredHeuristics;
      v5->_registeredHeuristics = v9;

LABEL_6:
      v11 = v5;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_safeDecodeObjectOfClass:(Class)a3 forKey:(id)a4 withCoder:(id)a5 nonNull:(BOOL)a6
{
  v6 = a6;
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [v10 decodeObjectOfClass:a3 forKey:v9];
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
LABEL_3:
      v12 = v11;
      goto LABEL_10;
    }

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", v9, *MEMORY[0x277CCA450]];
    v30 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = [v15 initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v17];
    [v10 failWithError:v18];

    v14 = __atxlog_handle_gi();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
    }
  }

  else
  {
    v13 = [v10 error];

    if (v13)
    {
      v14 = __atxlog_handle_gi();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_3;
      }

      v21 = [v10 containsValueForKey:v9];
      v22 = *MEMORY[0x277CCA450];
      if (v21)
      {
        v33 = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", v9];
        v34[0] = v23;
        v24 = MEMORY[0x277CBEAC0];
        v25 = v34;
        v26 = &v33;
      }

      else
      {
        v31 = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", v9];
        v32 = v23;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v32;
        v26 = &v31;
      }

      v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];

      v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v27];
      [v10 failWithError:v14];
      v28 = __atxlog_handle_gi();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }
  }

  v12 = 0;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_safeDecodeObjectOfClasses:(id)a3 forKey:(id)a4 withCoder:(id)a5 nonNull:(BOOL)a6
{
  v6 = a6;
  v45[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 decodeObjectOfClasses:v9 forKey:v10];
  if (v12)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v23 = v12;
            goto LABEL_25;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39 = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ maps to unexpected class", v10];
    v40 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = [v19 initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v21];
    [v11 failWithError:v22];

    v13 = __atxlog_handle_gi();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
    }
  }

  else
  {
    v24 = [v11 error];

    if (v24)
    {
      v13 = __atxlog_handle_gi();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }

    else
    {
      if (!v6)
      {
        v23 = 0;
        goto LABEL_26;
      }

      v25 = [v11 containsValueForKey:v10];
      v26 = *MEMORY[0x277CCA450];
      if (v25)
      {
        v44 = *MEMORY[0x277CCA450];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive contains illegal nil value for key %@", v10];
        v45[0] = v27;
        v28 = MEMORY[0x277CBEAC0];
        v29 = v45;
        v30 = &v44;
      }

      else
      {
        v42 = *MEMORY[0x277CCA450];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"key %@ not present", v10];
        v43 = v27;
        v28 = MEMORY[0x277CBEAC0];
        v29 = &v43;
        v30 = &v42;
      }

      v31 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];

      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXInformationHeuristicRefreshTrigger" code:-1 userInfo:v31];
      [v11 failWithError:v13];
      v32 = __atxlog_handle_gi();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:];
      }
    }
  }

  v23 = 0;
LABEL_25:

LABEL_26:
  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_safeDecodeObjectOfClass:forKey:withCoder:nonNull:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v4, v5, "ATXInformationHeuristicRefreshTrigger: error decoding %@ - %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end