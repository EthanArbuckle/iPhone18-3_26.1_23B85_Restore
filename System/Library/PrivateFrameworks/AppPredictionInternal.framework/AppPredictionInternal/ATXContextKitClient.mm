@interface ATXContextKitClient
- (id)ckClient;
- (id)level1TopicIdsForURL:(id)l;
@end

@implementation ATXContextKitClient

- (id)ckClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ckClient = selfCopy->_ckClient;
  if (!ckClient)
  {
    v4 = [MEMORY[0x277CFC738] clientWithDefaultRequestType:18];
    v5 = selfCopy->_ckClient;
    selfCopy->_ckClient = v4;

    ckClient = selfCopy->_ckClient;
  }

  v6 = ckClient;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)level1TopicIdsForURL:(id)l
{
  lCopy = l;
  v5 = objc_autoreleasePoolPush();
  ckClient = [(ATXContextKitClient *)self ckClient];
  v7 = ckClient;
  if (ckClient)
  {
    newRequest = [ckClient newRequest];
    absoluteString = [lCopy absoluteString];
    [newRequest setUrl:absoluteString];

    [newRequest setIncludeHigherLevelTopics:1];
    execute = [newRequest execute];
    error = [execute error];

    if (error)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextKitClient *)self level1TopicIdsForURL:execute, v12];
      }

      v13 = objc_opt_new();
    }

    else
    {
      level1Topics = [execute level1Topics];
      v16 = level1Topics;
      if (level1Topics)
      {
        v17 = [level1Topics _pas_mappedArrayWithTransform:&__block_literal_global_243];
      }

      else
      {
        v17 = objc_opt_new();
      }

      v13 = v17;
    }
  }

  else
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXContextKitClient *)self level1TopicIdsForURL:v14];
    }

    v13 = objc_opt_new();
  }

  objc_autoreleasePoolPop(v5);

  return v13;
}

- (void)level1TopicIdsForURL:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 error];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Error from ContextKit: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)level1TopicIdsForURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - could not initialize CKContextClient", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end