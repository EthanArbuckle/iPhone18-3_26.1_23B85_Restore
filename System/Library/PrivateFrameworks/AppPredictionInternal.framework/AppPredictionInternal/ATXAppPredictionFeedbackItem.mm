@interface ATXAppPredictionFeedbackItem
+ (id)feedbackItemsForCacheFileData:(id)data;
+ (id)feedbackItemsForChunks:(id)chunks;
+ (id)feedbackItemsForFeedbackChunk:(id)chunk;
+ (id)feedbackItemsForResponse:(id)response;
+ (vector<ATXPredictionItem,)predictionItemsForFeedbackChunk:(id)chunk;
+ (vector<ATXPredictionItem,)predictionItemsInFeedbackChunkFromCacheChunks:(id)chunks;
+ (vector<ATXPredictionItem,)predictionItemsInFeedbackChunkFromCacheFileData:(id)data;
- (ATXAppPredictionFeedbackItem)initWithBundleId:(id)id totalScore:(float)score scoreInputs:(const float *)inputs;
- (id)description;
@end

@implementation ATXAppPredictionFeedbackItem

- (ATXAppPredictionFeedbackItem)initWithBundleId:(id)id totalScore:(float)score scoreInputs:(const float *)inputs
{
  idCopy = id;
  if (idCopy)
  {
    if (inputs)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppPredictionFeedbackItem.mm" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (inputs)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ATXAppPredictionFeedbackItem.mm" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"scoreInputs"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = ATXAppPredictionFeedbackItem;
  v10 = [(ATXAppPredictionFeedbackItem *)&v16 init];
  if (v10)
  {
    v11 = [idCopy copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;

    v10->_totalScore = score;
    memcpy(v10->_scoreInputs, inputs, sizeof(v10->_scoreInputs));
  }

  return v10;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
  for (i = 8; ; i += 4)
  {
    [v3 appendFormat:@" %f", *(&self->super.isa + i)];
    if (i == 3316)
    {
      break;
    }

    [v3 appendFormat:@", "];
  }

  [v3 appendString:@" ]"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\n  totalScore:  %f\n  scoreInputs: %@\n", self->_bundleId, self->_totalScore, v3];

  return v5;
}

+ (id)feedbackItemsForResponse:(id)response
{
  responseCopy = response;
  v4 = objc_opt_class();
  cacheFileData = [responseCopy cacheFileData];
  v6 = [v4 feedbackItemsForCacheFileData:cacheFileData];

  return v6;
}

+ (id)feedbackItemsForCacheFileData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = ATXCacheFileSplitChunks();
    v5 = [ATXAppPredictionFeedbackItem feedbackItemsForChunks:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (id)feedbackItemsForChunks:(id)chunks
{
  v10 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  if ([chunksCopy count] < 2)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[ATXAppPredictionFeedbackItem feedbackItemsForChunks:].cold.1(v9, [chunksCopy count], v6);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [chunksCopy objectAtIndexedSubscript:1];
    v5 = [ATXAppPredictionFeedbackItem feedbackItemsForFeedbackChunk:v4];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)feedbackItemsForFeedbackChunk:(id)chunk
{
  v3 = [MEMORY[0x277CEB558] stringKeyWithData:chunk];
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ATXAppPredictionFeedbackItem_feedbackItemsForFeedbackChunk___block_invoke;
  v7[3] = &unk_27859FB58;
  v5 = v4;
  v8 = v5;
  [v3 enumerateApps:v7];

  return v5;
}

void __62__ATXAppPredictionFeedbackItem_feedbackItemsForFeedbackChunk___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v9 = *(a1 + 32);
  v10 = [ATXAppPredictionFeedbackItem alloc];
  *&v11 = a2;
  v12 = [(ATXAppPredictionFeedbackItem *)v10 initWithBundleId:v13 totalScore:a6 scoreInputs:v11];
  [v9 addObject:v12];
}

+ (vector<ATXPredictionItem,)predictionItemsInFeedbackChunkFromCacheFileData:(id)data
{
  v5 = ATXCacheFileSplitChunks();
  [ATXAppPredictionFeedbackItem predictionItemsInFeedbackChunkFromCacheChunks:?];

  return result;
}

+ (vector<ATXPredictionItem,)predictionItemsInFeedbackChunkFromCacheChunks:(id)chunks
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if ([v5 count] < 2)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[ATXAppPredictionFeedbackItem predictionItemsInFeedbackChunkFromCacheChunks:].cold.1(buf, [v5 count], v7);
    }
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:1];
    [ATXAppPredictionFeedbackItem predictionItemsForFeedbackChunk:v6];
    std::vector<ATXPredictionItem>::__vdeallocate(retstr);
    *&retstr->__begin_ = *buf;
    retstr->__cap_ = v12;
    v12 = 0;
    v10 = buf;
    memset(buf, 0, sizeof(buf));
    std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (vector<ATXPredictionItem,)predictionItemsForFeedbackChunk:(id)chunk
{
  v5 = [MEMORY[0x277CEB558] stringKeyWithData:a4];
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = __Block_byref_object_copy__85;
  v13 = __Block_byref_object_dispose__85;
  v14 = &unk_226931DDF;
  memset(v15, 0, sizeof(v15));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ATXAppPredictionFeedbackItem_predictionItemsForFeedbackChunk___block_invoke;
  v8[3] = &unk_27859FB80;
  v8[4] = &v9;
  [v5 enumerateApps:v8];
  v6 = v10;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<ATXPredictionItem>::__init_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(retstr, v6[6], v6[7], 0x13A524387AC82261 * ((v6[7] - v6[6]) >> 3));
  _Block_object_dispose(&v9, 8);
  v16 = v15;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v16);

  return result;
}

void __64__ATXAppPredictionFeedbackItem_predictionItemsForFeedbackChunk___block_invoke(uint64_t a1, float a2, uint64_t a3, void *a4, void *a5, const void *a6, char a7, char a8)
{
  v16[0] = a4;
  v16[1] = a5;
  v18 = a2;
  v19 = a7;
  v20 = a8;
  memcpy(v17, a6, sizeof(v17));
  v14 = *(*(a1 + 32) + 8);
  v15 = v16[0];
  std::vector<ATXPredictionItem>::push_back[abi:ne200100]((v14 + 48), v16);
}

+ (void)feedbackItemsForChunks:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "feedbackItemsForChunks received only %lu chunks", buf, 0xCu);
}

+ (void)predictionItemsInFeedbackChunkFromCacheChunks:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "predictionItemsInFeedbackChunkFromCacheChunks received only %lu chunks", buf, 0xCu);
}

@end