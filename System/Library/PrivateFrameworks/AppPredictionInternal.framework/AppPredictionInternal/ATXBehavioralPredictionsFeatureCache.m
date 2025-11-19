@interface ATXBehavioralPredictionsFeatureCache
- (ATXBehavioralPredictionsFeatureCache)init;
- (ATXPredictionItem)itemForBundleId:(SEL)a3;
- (vector<ATXPredictionItem,)itemsForBundleIds:(ATXBehavioralPredictionsFeatureCache *)self;
- (void)addItem:(ATXPredictionItem *)a3 forBundleId:(id)a4;
@end

@implementation ATXBehavioralPredictionsFeatureCache

- (ATXBehavioralPredictionsFeatureCache)init
{
  v9.receiver = self;
  v9.super_class = ATXBehavioralPredictionsFeatureCache;
  v2 = [(ATXBehavioralPredictionsFeatureCache *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__move_assign(v3 + 8, v7);
    std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::~__hash_table(v7);
    v4 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v4;
  }

  return v2;
}

- (ATXPredictionItem)itemForBundleId:(SEL)a3
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0xD3812000000;
  v20 = __Block_byref_object_copy__38;
  v21 = __Block_byref_object_dispose__38;
  v22 = 256;
  v7.i32[1] = -1059153344;
  *v7.i32 = -31337.0;
  v23 = 0;
  v24 = -31337.0;
  v25 = 0;
  v8 = vdupq_lane_s32(v7, 0);
  for (i = 64; i != 3376; i += 16)
  {
    *(&v17 + i) = v8;
  }

  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke;
  v14[3] = &unk_27859AC70;
  v15 = v6;
  v16 = &v17;
  v11 = v6;
  [(_PASLock *)lock runWithLockAcquired:v14];
  v12 = v18;
  retstr->key = v18[6];
  memcpy(&retstr->actionHash, v12 + 7, 0xCFEuLL);

  _Block_object_dispose(&v17, 8);
  return result;
}

void __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(v3 + 1, (a1 + 32));
  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke_cold_1((a1 + 32), v5);
    }

    v6 = *(*(a1 + 40) + 8);
    objc_storeStrong((v6 + 48), v4[3]);
    memcpy((v6 + 56), v4 + 4, 0xCFEuLL);
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke_cold_2((a1 + 32), v7);
    }
  }
}

- (void)addItem:(ATXPredictionItem *)a3 forBundleId:(id)a4
{
  v6 = a4;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = __60__ATXBehavioralPredictionsFeatureCache_addItem_forBundleId___block_invoke;
  v9[3] = &unk_28398F0A0;
  v10 = v6;
  v11 = a3->key;
  memcpy(v12, &a3->actionHash, sizeof(v12));
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __60__ATXBehavioralPredictionsFeatureCache_addItem_forBundleId___block_invoke(id *a1, void *a2)
{
  v4 = a2;
  v5 = a1[4];
  v6 = a1[5];
  memcpy(v7, a1 + 6, sizeof(v7));
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},ATXPredictionItem>>(a2 + 1, &v5);
}

- (vector<ATXPredictionItem,)itemsForBundleIds:(ATXBehavioralPredictionsFeatureCache *)self
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXBehavioralPredictionsFeatureCache *)self itemForBundleId:*(*(&v15 + 1) + 8 * v10)];
        v11 = v14;
        if (v14)
        {
          std::vector<ATXPredictionItem>::push_back[abi:ne200100](retstr, &v14);
          v11 = v14;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXBehavioralPredictionsFeatureCache: Cache hit for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __56__ATXBehavioralPredictionsFeatureCache_itemForBundleId___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXBehavioralPredictionsFeatureCache: Cache miss for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end