@interface ATXUpcomingMediaQuery
+ (id)getUpcomingMediaForBundle:(id)a3 isInternalApplication:(BOOL)a4;
+ (void)getUpcomingMediaForBundle:(id)a3 isInternalApplication:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation ATXUpcomingMediaQuery

+ (id)getUpcomingMediaForBundle:(id)a3 isInternalApplication:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__24;
  v20 = __Block_byref_object_dispose__24;
  v21 = objc_opt_new();
  v7 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication___block_invoke;
  v13[3] = &unk_1E80C6A40;
  v15 = &v16;
  v8 = v7;
  v14 = v8;
  [a1 getUpcomingMediaForBundle:v6 isInternalApplication:v4 completionHandler:v13];
  v9 = v8;
  v10 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v9, v10);

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __73__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)getUpcomingMediaForBundle:(id)a3 isInternalApplication:(BOOL)a4 completionHandler:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [v9 initWithFormat:@"(domainIdentifier == '%@')", *MEMORY[0x1E696E700]];
  v11 = objc_opt_new();
  [v11 setInternal:1];
  if (v7)
  {
    v33[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [v11 setBundleIDs:v12];
  }

  v32 = *MEMORY[0x1E696A388];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v11 setProtectionClasses:v13];

  v31[0] = *MEMORY[0x1E696E5C0];
  v31[1] = @"kMDItemRankingHint";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v11 setFetchAttributes:v14];

  v15 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v10 queryContext:v11];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__24;
  v29[4] = __Block_byref_object_dispose__24;
  v30 = objc_opt_new();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke;
  v26[3] = &unk_1E80C3D48;
  v28 = v29;
  v16 = v7;
  v27 = v16;
  [v15 setFoundItemsHandler:v26];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19;
  v20[3] = &unk_1E80C6A68;
  v17 = v10;
  v21 = v17;
  v18 = v8;
  v23 = v18;
  v24 = v29;
  v25 = a4;
  v19 = v16;
  v22 = v19;
  [v15 setCompletionHandler:v20];
  [v15 start];

  _Block_object_dispose(v29, 8);
}

void __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    v6 = *MEMORY[0x1E696E5C0];
    v7 = 0x1E696A000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 attributeSet];
        v12 = [v11 attributeForKey:v6];

        if (v12)
        {
          v13 = *(v7 + 3280);
          v14 = objc_opt_class();
          v26 = 0;
          v15 = [v13 unarchivedObjectOfClass:v14 fromData:v12 error:&v26];
          v25 = v26;
          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = *(*(*(a1 + 40) + 8) + 40);
              v16 = [v9 attributeSet];
              [v16 rankingHint];
              v17 = v4;
              v18 = v6;
              v19 = v5;
              v21 = v20 = v2;
              [v24 addUpcomingMediaIntent:v15 withRank:v21];

              v2 = v20;
              v5 = v19;
              v6 = v18;
              v4 = v17;
              v7 = 0x1E696A000;
              goto LABEL_12;
            }
          }

          else
          {
            v16 = __atxlog_handle_default();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v25;
              _os_log_error_impl(&dword_1BF549000, v16, OS_LOG_TYPE_ERROR, "Could not unarchive intent: %@", buf, 0xCu);
            }

LABEL_12:
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v4);
  }

  v22 = __atxlog_handle_default();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_cold_1(v2, a1, v22);
  }
}

void __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19_cold_1(a1, v3, v4);
    }
  }

  else
  {
    [*(*(*(a1 + 56) + 8) + 40) setIsInternalApplication:*(a1 + 64)];
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19_cold_2(a1, v4);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 count];
  v6 = *(a2 + 32);
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "Found %lu upcoming media items for %@ in Spotlight.", &v7, 0x16u);
}

void __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ERROR in completion handler for CSSearchQuery: %@ - ERROR:%@", &v4, 0x16u);
}

void __91__ATXUpcomingMediaQuery_getUpcomingMediaForBundle_isInternalApplication_completionHandler___block_invoke_19_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Completed recovery of upcoming media items for %@ from Spotlight.", &v3, 0xCu);
}

@end