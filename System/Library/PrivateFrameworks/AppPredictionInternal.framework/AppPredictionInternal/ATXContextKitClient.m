@interface ATXContextKitClient
- (id)ckClient;
- (id)level1TopicIdsForURL:(id)a3;
@end

@implementation ATXContextKitClient

- (id)ckClient
{
  v2 = self;
  objc_sync_enter(v2);
  ckClient = v2->_ckClient;
  if (!ckClient)
  {
    v4 = [MEMORY[0x277CFC738] clientWithDefaultRequestType:18];
    v5 = v2->_ckClient;
    v2->_ckClient = v4;

    ckClient = v2->_ckClient;
  }

  v6 = ckClient;
  objc_sync_exit(v2);

  return v6;
}

- (id)level1TopicIdsForURL:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ATXContextKitClient *)self ckClient];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 newRequest];
    v9 = [v4 absoluteString];
    [v8 setUrl:v9];

    [v8 setIncludeHigherLevelTopics:1];
    v10 = [v8 execute];
    v11 = [v10 error];

    if (v11)
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextKitClient *)self level1TopicIdsForURL:v10, v12];
      }

      v13 = objc_opt_new();
    }

    else
    {
      v15 = [v10 level1Topics];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_243];
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