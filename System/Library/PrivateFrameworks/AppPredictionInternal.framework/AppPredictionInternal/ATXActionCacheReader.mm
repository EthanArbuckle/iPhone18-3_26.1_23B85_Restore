@interface ATXActionCacheReader
+ (unordered_map<NSString)getActionKeyToPredictionItemMapFromChunk:()ATXNSStringHash;
+ (void)_getActionKeyToPredictionItemMapFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
+ (void)_getExtraPredictionsFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
+ (void)_getIndexToPredictionItemMapWithChunk:(id)chunk withPredictionCount:(int64_t)count map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version;
- (ATXActionCacheReader)initWithChunks:(id)chunks;
- (ATXActionCacheReader)initWithData:(id)data;
- (ATXPredictionItem)predictionItemForAction:(SEL)action;
- (id).cxx_construct;
- (unordered_map<ATXAction)_getActionToIndexMap;
- (void)enumerateExtraPredictionItemsWithBlock:(id)block;
- (void)failAndLog:(id)log;
@end

@implementation ATXActionCacheReader

- (ATXActionCacheReader)initWithChunks:(id)chunks
{
  v15 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v13.receiver = self;
  v13.super_class = ATXActionCacheReader;
  v5 = [(ATXActionCacheClientReader *)&v13 initWithChunks:chunksCopy];
  if (v5)
  {
    v6 = [chunksCopy count];
    if (v6 == [(ATXActionCacheClientReader *)v5 chunkCount])
    {
      v7 = objc_autoreleasePoolPush();
      [(ATXActionCacheReader *)v5 _getActionToIndexMap];
      std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__move_assign(&v5->_actionToIndexMap, buf);
      std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::~__hash_table(buf);
      v8 = [chunksCopy objectAtIndexedSubscript:2];
      [ATXActionCacheReader _getIndexToPredictionItemMapWithChunk:v8 withPredictionCount:v5->_actionToIndexMap.__table_.__size_ map:&v5->_predictionItems abGroup:&v5->_abGroup assetVersion:&v5->_assetVersion];

      v9 = [chunksCopy objectAtIndexedSubscript:3];
      [ATXActionCacheReader _getExtraPredictionsFromChunk:v9 map:&v5->_extraPredictionItems abGroup:0 assetVersion:0];

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        -[ATXActionCacheReader initWithChunks:].cold.1(buf, [chunksCopy count], -[ATXActionCacheClientReader chunkCount](v5, "chunkCount"), v10);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ATXActionCacheReader)initWithData:(id)data
{
  v4 = ATXCacheFileSplitChunks();
  v5 = [(ATXActionCacheReader *)self initWithChunks:v4];

  return v5;
}

- (ATXPredictionItem)predictionItemForAction:(SEL)action
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = a4;
  v6 = std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::find<ATXAction * {__strong}>(&self->_actionToIndexMap.__table_.__bucket_list_.__ptr_, &v21);
  if (v6)
  {
    v7 = *(v6 + 6);
    begin = self->_predictionItems.__begin_;
    if (0x13A524387AC82261 * ((self->_predictionItems.__end_ - begin) >> 3) <= v7)
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [(ATXActionCacheReader *)v15 predictionItemForAction:buf, v13];
      }

      v16.i32[1] = -1059153344;
      *v16.i32 = -31337.0;
      retstr->key = 0;
      retstr->score = -31337.0;
      *&retstr->isMediumConfidenceForBlendingLayer = 0;
      v17 = vdupq_lane_s32(v16, 0);
      for (i = 16; i != 3328; i += 16)
      {
        *(&retstr->key + i) = v17;
      }
    }

    else
    {
      p_key = &begin[v7].key;
      retstr->key = *p_key;
      memcpy(&retstr->actionHash, p_key + 1, 0xCFEuLL);
    }
  }

  else
  {
    [(ATXActionCacheReader *)self failAndLog:v21];
    v10.i32[1] = -1059153344;
    *v10.i32 = -31337.0;
    retstr->key = 0;
    retstr->score = -31337.0;
    *&retstr->isMediumConfidenceForBlendingLayer = 0;
    v11 = vdupq_lane_s32(v10, 0);
    for (j = 16; j != 3328; j += 16)
    {
      *(&retstr->key + j) = v11;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)failAndLog:(id)log
{
  v62 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v47 = logCopy;
  if ([logCopy isEqualToAction:logCopy])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v40 = v5;
  v6 = [logCopy hash];
  if (v6 == [logCopy hash])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v41 = v7;
  bundleId = [logCopy bundleId];
  intent = [logCopy intent];
  _className = [intent _className];
  v10 = _className;
  v11 = @"No intent name";
  if (_className)
  {
    v11 = _className;
  }

  v43 = v11;

  userActivity = [logCopy userActivity];
  activityType = [userActivity activityType];
  v14 = activityType;
  v15 = @"No activity type";
  if (activityType)
  {
    v15 = activityType;
  }

  v44 = v15;

  next = self->_actionToIndexMap.__table_.__first_node_.__next_;
  if (next)
  {
    v17 = @"NO";
    do
    {
      if (!next[2])
      {
        v17 = @"YES";
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v17 = @"NO";
  }

  size = self->_actionToIndexMap.__table_.__size_;
  v18 = [(ATXActionCacheClientReader *)self actionsWithConsumerSubType:22 limit:0x7FFFFFFFLL];
  v38 = [v18 count];

  v19 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:1];
  v37 = [v19 count];

  v20 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:0];
  v36 = [v20 count];

  for (i = self->_actionToIndexMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(i + 6);
      bundleId2 = [*(i + 2) bundleId];
      intent2 = [logCopy intent];
      _className2 = [intent2 _className];
      v25 = _className2;
      if (_className2)
      {
        v26 = _className2;
      }

      else
      {
        v26 = @"No intent name";
      }

      userActivity2 = [logCopy userActivity];
      activityType2 = [userActivity2 activityType];
      v29 = activityType2;
      if (activityType2)
      {
        v30 = activityType2;
      }

      else
      {
        v30 = @"No activity type";
      }

      v31 = [*(i + 2) isEqual:v47];
      v32 = [*(i + 2) hash];
      *buf = 67110402;
      *v49 = v23;
      *&v49[4] = 2112;
      *&v49[6] = bundleId2;
      *&v49[14] = 2112;
      *&v49[16] = v26;
      *&v49[24] = 2112;
      *&v49[26] = v30;
      *&v49[34] = 1024;
      *&v49[36] = v31;
      *v50 = 2048;
      *&v50[2] = v32;
      _os_log_error_impl(&dword_2263AA000, v22, OS_LOG_TYPE_ERROR, "Action %d in _actionToIndexMap: bundleID: %@, Intent name: %@, activity type: %@, equal to action: %{BOOL}d, hash: %lu", buf, 0x36u);

      logCopy = v47;
    }
  }

  v33 = __atxlog_handle_default();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    v35 = [logCopy hash];
    *buf = 138414850;
    *v49 = v40;
    *&v49[8] = 2112;
    *&v49[10] = v41;
    *&v49[18] = 2112;
    *&v49[20] = bundleId;
    *&v49[28] = 2112;
    *&v49[30] = v43;
    *&v49[38] = 2112;
    *v50 = v44;
    *&v50[8] = 2048;
    v51 = v35;
    v52 = 2048;
    v53 = size;
    v54 = 2112;
    v55 = v17;
    v56 = 2048;
    v57 = v38;
    v58 = 2048;
    v59 = v37;
    v60 = 2048;
    v61 = v36;
    _os_log_fault_impl(&dword_2263AA000, v33, OS_LOG_TYPE_FAULT, "Failed to find action in _secondStage. Self-equality, hash-equality: %@, %@, bundleID: %@, Intent name: %@, activity type: %@, hash: %lu, map items: %lu, nil in map: %@. lock, filtered, unfiltered: %lu %lu %lu", buf, 0x70u);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExtraPredictionItemsWithBlock:(id)block
{
  blockCopy = block;
  p_extraPredictionItems = &self->_extraPredictionItems;
  begin = self->_extraPredictionItems.__begin_;
  for (i = p_extraPredictionItems->__end_; begin != i; ++begin)
  {
    v7 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, begin);
    objc_autoreleasePoolPop(v7);
  }
}

void __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke(uint64_t a1, unint64_t a2)
{
  v13[417] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v5 = *(*(a1 + 40) + 64);
  if (0x13A524387AC82261 * ((*(*(a1 + 40) + 72) - v5) >> 3) <= a2)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 0x13A524387AC82261 * ((*(*(a1 + 40) + 72) - *(*(a1 + 40) + 64)) >> 3);
      LODWORD(v13[0]) = 138412802;
      *(v13 + 4) = v11;
      WORD2(v13[1]) = 2048;
      *(&v13[1] + 6) = a2;
      HIWORD(v13[2]) = 2048;
      v13[3] = v12;
      _os_log_fault_impl(&dword_2263AA000, v7, OS_LOG_TYPE_FAULT, "%@ - lockscreen prediction index (%lu) is out of range of _predictionItems (%li)", v13, 0x20u);
    }
  }

  else
  {
    v6 = (v5 + 3336 * a2);
    v13[0] = *v6;
    memcpy(&v13[1], v6 + 1, 0xCFEuLL);
    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __89__ATXActionCacheReader_enumerateActionsAndPredictionItemsForConsumerSubtype_limit_block___block_invoke_29(uint64_t a1, void *a2, unint64_t a3)
{
  v15[417] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 64);
  if (0x13A524387AC82261 * ((*(*(a1 + 32) + 72) - v6) >> 3) <= a3)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 48)];
      v14 = 0x13A524387AC82261 * ((*(*(a1 + 32) + 72) - *(*(a1 + 32) + 64)) >> 3);
      LODWORD(v15[0]) = 138413058;
      *(v15 + 4) = v12;
      WORD2(v15[1]) = 2112;
      *(&v15[1] + 6) = v13;
      HIWORD(v15[2]) = 2048;
      v15[3] = a3;
      LOWORD(v15[4]) = 2048;
      *(&v15[4] + 2) = v14;
      _os_log_fault_impl(&dword_2263AA000, v8, OS_LOG_TYPE_FAULT, "%@ - %@ prediction index (%lu) is out of range of _predictionItems (%li)", v15, 0x2Au);
    }
  }

  else
  {
    v7 = (v6 + 3336 * a3);
    v15[0] = *v7;
    memcpy(&v15[1], v7 + 1, 0xCFEuLL);
    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_getExtraPredictionsFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  v10 = *map;
  for (i = *(map + 1); i != v10; *i)
  {
    i -= 417;
  }

  *(map + 1) = v10;
  v12 = [MEMORY[0x277CEB558] stringKeyWithData:chunkCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__ATXActionCacheReader__getExtraPredictionsFromChunk_map_abGroup_assetVersion___block_invoke;
  v15[3] = &__block_descriptor_40_e39_v52__0_B8__NSString_16Q24f32r_f36B44B48l;
  v15[4] = map;
  [v12 enumerateApps:v15];
  if (group)
  {
    abGroup = [v12 abGroup];
    v14 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v12 assetVersion];
  }
}

void __79__ATXActionCacheReader__getExtraPredictionsFromChunk_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, const void *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = *(a1 + 32);
  v12 = v10;
  memcpy(__dst, a6, sizeof(__dst));
  v14 = v11[1];
  v13 = v11[2];
  if (v14 >= v13)
  {
    v16 = 0x13A524387AC82261 * ((v14 - *v11) >> 3);
    if ((v16 + 1) > 0x13A524387AC822)
    {
      std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
    }

    v17 = 0x13A524387AC82261 * ((v13 - *v11) >> 3);
    v18 = 2 * v17;
    if (2 * v17 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x9D2921C3D6411)
    {
      v19 = 0x13A524387AC822;
    }

    else
    {
      v19 = v18;
    }

    v22[4] = v11;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(v11, v19);
    }

    v20 = 3336 * v16;
    v22[0] = 0;
    v22[1] = v20;
    v22[3] = 0;
    *v20 = v12;
    *(v20 + 8) = a5;
    memcpy((v20 + 16), __dst, 0xCF0uLL);
    *(v20 + 3328) = a2;
    *(v20 + 3332) = 0;
    v22[2] = v20 + 3336;
    std::vector<ATXPredictionItem>::__swap_out_circular_buffer(v11, v22);
    v15 = v11[1];
    std::__split_buffer<ATXPredictionItem>::~__split_buffer(v22);
  }

  else
  {
    *v14 = v12;
    *(v14 + 8) = a5;
    memcpy((v14 + 16), __dst, 0xCF0uLL);
    *(v14 + 3328) = a2;
    *(v14 + 3332) = 0;
    v15 = v14 + 3336;
  }

  v11[1] = v15;

  v21 = *MEMORY[0x277D85DE8];
}

+ (unordered_map<NSString)getActionKeyToPredictionItemMapFromChunk:()ATXNSStringHash
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  return [ATXActionCacheReader _getActionKeyToPredictionItemMapFromChunk:a4 map:retstr abGroup:0 assetVersion:0];
}

+ (void)_getActionKeyToPredictionItemMapFromChunk:(id)chunk map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::clear(map);
  v10 = [MEMORY[0x277CEB558] stringKeyWithData:chunkCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ATXActionCacheReader__getActionKeyToPredictionItemMapFromChunk_map_abGroup_assetVersion___block_invoke;
  v13[3] = &__block_descriptor_40_e39_v52__0_B8__NSString_16Q24f32r_f36B44B48l;
  v13[4] = map;
  [v10 enumerateApps:v13];
  if (group)
  {
    abGroup = [v10 abGroup];
    v12 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v10 assetVersion];
  }
}

void __91__ATXActionCacheReader__getActionKeyToPredictionItemMapFromChunk_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, const void *a6)
{
  v14 = a4;
  v9 = *(a1 + 32);
  v10 = v14;
  v12 = a2;
  v13 = 0;
  memcpy(v11, a6, sizeof(v11));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,ATXPredictionItem>(v9, &v14);
}

+ (void)_getIndexToPredictionItemMapWithChunk:(id)chunk withPredictionCount:(int64_t)count map:(void *)map abGroup:(id *)group assetVersion:(int64_t *)version
{
  chunkCopy = chunk;
  std::vector<ATXPredictionItem>::resize(map, count);
  v13 = [MEMORY[0x277CEB558] numberKeyWithData:chunkCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__ATXActionCacheReader__getIndexToPredictionItemMapWithChunk_withPredictionCount_map_abGroup_assetVersion___block_invoke;
  v16[3] = &__block_descriptor_56_e39_v52__0_B8__NSNumber_16Q24f32r_f36B44B48l;
  v16[4] = count;
  v16[5] = map;
  v16[6] = self;
  [v13 enumerateApps:v16];
  if (group)
  {
    abGroup = [v13 abGroup];
    v15 = *group;
    *group = abGroup;
  }

  if (version)
  {
    *version = [v13 assetVersion];
  }
}

void __107__ATXActionCacheReader__getIndexToPredictionItemMapWithChunk_withPredictionCount_map_abGroup_assetVersion___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, const void *a6, char a7, char a8)
{
  v25[415] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = [v14 integerValue];
  v16 = v15;
  if (v15 >= *(a1 + 32) || v15 >= 0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3))
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v22 = NSStringFromClass(*(a1 + 48));
      v23 = *(a1 + 32);
      v24 = 0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3);
      LODWORD(v25[0]) = 138413058;
      *(v25 + 4) = v22;
      WORD2(v25[1]) = 2048;
      *(&v25[1] + 6) = v23;
      HIWORD(v25[2]) = 2048;
      v25[3] = v16;
      LOWORD(v25[4]) = 2048;
      *(&v25[4] + 2) = v24;
      _os_log_fault_impl(&dword_2263AA000, v20, OS_LOG_TYPE_FAULT, "%@ - feedback data shouldn't have data which isn't included in the prediction set. (count: %li, index: %li, map size: %li)", v25, 0x2Au);
    }
  }

  else
  {
    memcpy(v25, a6, 0xCF0uLL);
    v17 = **(a1 + 40);
    if (0x13A524387AC82261 * ((*(*(a1 + 40) + 8) - v17) >> 3) <= v16)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v18 = v17 + 3336 * v16;
    v19 = *v18;
    *v18 = &stru_2839A6058;

    *(v18 + 8) = a5;
    memcpy((v18 + 16), v25, 0xCF0uLL);
    *(v18 + 3328) = a2;
    *(v18 + 3332) = a7;
    *(v18 + 3333) = a8;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unordered_map<ATXAction)_getActionToIndexMap
{
  v17 = *MEMORY[0x277D85DE8];
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ATXActionCacheClientReader *)self actionsWithLimit:0x7FFFFFFFLL shouldFilterRestrictedAppsAndRecentEngagements:0];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        predictedItem = [*(*(&v11 + 1) + 8 * v7) predictedItem];
        std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::__emplace_unique_key_args<ATXAction * {__strong},ATXAction * {__strong},long &>(retstr, &predictedItem);

        ++v15;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 14) = 1065353216;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

- (void)initWithChunks:(uint64_t)a3 .cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "We were passed data with %lu chunks but expected %lu", buf, 0x16u);
}

- (void)predictionItemForAction:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%@ - Index return from _actionToIndexMap is out of range of _secondStage.", buf, 0xCu);
}

@end