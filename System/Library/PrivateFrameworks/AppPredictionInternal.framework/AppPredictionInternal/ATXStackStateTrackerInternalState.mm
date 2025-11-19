@interface ATXStackStateTrackerInternalState
- (ATXStackStateTrackerInternalState)init;
- (ATXStackStateTrackerInternalState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateLastThreeUserVisitDatesIfNecessaryForPage:(id)a3 date:(id)a4;
@end

@implementation ATXStackStateTrackerInternalState

- (ATXStackStateTrackerInternalState)init
{
  v13.receiver = self;
  v13.super_class = ATXStackStateTrackerInternalState;
  v2 = [(ATXStackStateTrackerInternalState *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastThreeUserVisitDatesOfPages = v2->_lastThreeUserVisitDatesOfPages;
    v2->_lastThreeUserVisitDatesOfPages = v3;

    v5 = objc_opt_new();
    stackStateByStackId = v2->_stackStateByStackId;
    v2->_stackStateByStackId = v5;

    v7 = objc_opt_new();
    cachedStackLayoutsByBlendingUpdateUUID = v2->_cachedStackLayoutsByBlendingUpdateUUID;
    v2->_cachedStackLayoutsByBlendingUpdateUUID = v7;

    v9 = objc_opt_new();
    blendingCacheUpdateUUIDs = v2->_blendingCacheUpdateUUIDs;
    v2->_blendingCacheUpdateUUIDs = v9;

    bookmark = v2->_bookmark;
    v2->_bookmark = 0;
  }

  return v2;
}

- (void)updateLastThreeUserVisitDatesIfNecessaryForPage:(id)a3 date:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && v6)
  {
    v7 = [(NSMutableDictionary *)self->_lastThreeUserVisitDatesOfPages objectForKeyedSubscript:v9];
    if (v7)
    {
      v8 = v7;
      if (([v7 containsObject:v6] & 1) == 0)
      {
        [v8 addObject:v6];
        [v8 sortUsingComparator:&__block_literal_global_120];
        if ([v8 count] >= 4)
        {
          do
          {
            [v8 removeLastObject];
          }

          while ([v8 count] > 3);
        }
      }
    }

    else
    {
      v8 = objc_opt_new();
      [v8 addObject:v6];
      [(NSMutableDictionary *)self->_lastThreeUserVisitDatesOfPages setObject:v8 forKeyedSubscript:v9];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXStackStateTrackerInternalState *)self lastThreeUserVisitDatesOfPages];
  [v4 encodeObject:v5 forKey:@"codingKeyForLastThreeUserVisitDatesOfPages"];

  v6 = [(ATXStackStateTrackerInternalState *)self stackStateByStackId];
  [v4 encodeObject:v6 forKey:@"codingKeyForStackStateByStackId"];

  v7 = [(ATXStackStateTrackerInternalState *)self cachedStackLayoutsByBlendingUpdateUUID];
  [v4 encodeObject:v7 forKey:@"codingKeyForBlendingCacheUpdateByBlendingUpdateUUID"];

  v8 = [(ATXStackStateTrackerInternalState *)self blendingCacheUpdateUUIDs];
  [v4 encodeObject:v8 forKey:@"codingKeyForBlendingCacheUpdateUUIDs"];

  v9 = [(ATXStackStateTrackerInternalState *)self bookmark];
  v16 = 0;
  v10 = [v9 serializeBookmark:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_2263AA000, v12, OS_LOG_TYPE_ERROR, "%@ - bookmark serialization failed with err: %@, data: %@", buf, 0x20u);
    }
  }

  else
  {
    [v4 encodeObject:v10 forKey:@"codingKeyForBookmark"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (ATXStackStateTrackerInternalState)initWithCoder:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 initWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v12 = __atxlog_handle_blending();
  v13 = [v5 robustDecodeObjectOfClasses:v11 forKey:@"codingKeyForLastThreeUserVisitDatesOfPages" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v12];

  v14 = [v4 error];

  if (!v14)
  {
    v16 = MEMORY[0x277D42620];
    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    v22 = __atxlog_handle_blending();
    v23 = [v16 robustDecodeObjectOfClasses:v21 forKey:@"codingKeyForStackStateByStackId" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v22];

    v24 = [v4 error];

    if (v24)
    {
      v15 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_24:

      goto LABEL_25;
    }

    v25 = MEMORY[0x277D42620];
    v26 = objc_autoreleasePoolPush();
    v27 = objc_alloc(MEMORY[0x277CBEB98]);
    v28 = objc_opt_class();
    v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v26);
    v30 = __atxlog_handle_blending();
    v31 = [v25 robustDecodeObjectOfClasses:v29 forKey:@"codingKeyForBlendingCacheUpdateByBlendingUpdateUUID" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v30];

    v32 = [v4 error];

    if (v32)
    {
      v15 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_23:

      goto LABEL_24;
    }

    v33 = MEMORY[0x277D42620];
    v34 = objc_autoreleasePoolPush();
    v35 = objc_alloc(MEMORY[0x277CBEB98]);
    v36 = objc_opt_class();
    v37 = [v35 initWithObjects:{v36, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v34);
    v38 = __atxlog_handle_blending();
    v39 = [v33 robustDecodeObjectOfClasses:v37 forKey:@"codingKeyForBlendingCacheUpdateUUIDs" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v38];

    v40 = [v4 error];

    if (v40)
    {
      v15 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_22:

      goto LABEL_23;
    }

    v41 = MEMORY[0x277D42620];
    v42 = objc_opt_class();
    v43 = __atxlog_handle_blending();
    v44 = [v41 robustDecodeObjectOfClass:v42 forKey:@"codingKeyForBookmark" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXStackStateTracker" errorCode:-1 logHandle:v43];

    v45 = [v4 error];

    if (v45)
    {
      v46 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_11:
      v15 = v46;
LABEL_21:

      goto LABEL_22;
    }

    if (v44)
    {
      v47 = [MEMORY[0x277CEBBF8] bookmarkFromData:v44 bookmarkLocation:0 versionNumber:&unk_283A56A08];
      if (!v47)
      {
        v48 = __atxlog_handle_blending();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [ATXStackStateTrackerInternalState initWithCoder:];
        }

        v46 = [(ATXStackStateTrackerInternalState *)self init];
        goto LABEL_11;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = [(ATXStackStateTrackerInternalState *)self init];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __51__ATXStackStateTrackerInternalState_initWithCoder___block_invoke;
    v56[3] = &unk_27859D5C0;
    v15 = v49;
    v57 = v15;
    [v13 enumerateKeysAndObjectsUsingBlock:v56];
    v50 = [v23 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v15 setStackStateByStackId:v50];

    v51 = [v31 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v15 setCachedStackLayoutsByBlendingUpdateUUID:v51];

    v52 = [v39 mutableCopy];
    [(ATXStackStateTrackerInternalState *)v15 setBlendingCacheUpdateUUIDs:v52];

    [(ATXStackStateTrackerInternalState *)v15 setBookmark:v47];
    v53 = __atxlog_handle_blending();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[ATXStackStateTrackerInternalState initWithCoder:]";
      _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, "%s: Successfully deserialized ATXStackStateTrackerInternalState from disk", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v15 = [(ATXStackStateTrackerInternalState *)self init];
LABEL_25:

  v54 = *MEMORY[0x277D85DE8];
  return v15;
}

void __51__ATXStackStateTrackerInternalState_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 mutableCopy];
  v6 = [*(a1 + 32) lastThreeUserVisitDatesOfPages];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

- (void)initWithCoder:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end