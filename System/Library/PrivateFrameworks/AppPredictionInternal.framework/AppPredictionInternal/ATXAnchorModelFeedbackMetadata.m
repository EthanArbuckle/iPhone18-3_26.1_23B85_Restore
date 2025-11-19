@interface ATXAnchorModelFeedbackMetadata
+ (id)anchorFeedbackMetadataFromArchivedData:(id)a3;
+ (id)archivedDataForAnchorFeedbackMetadata:(id)a3;
- (ATXAnchorModelFeedbackMetadata)initWithAnchorSuggestionTuples:(id)a3;
- (ATXAnchorModelFeedbackMetadata)initWithCoder:(id)a3;
- (ATXAnchorModelFeedbackMetadata)initWithSuggestionUUIDToAnchorPredictionMapping:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAnchorModelFeedbackMetadata:(id)a3;
- (id)anchorModelPredictionForProactiveSuggestion:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXAnchorModelFeedbackMetadata

+ (id)archivedDataForAnchorFeedbackMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v6 = v10;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXAnchorModelFeedbackMetadata archivedDataForAnchorFeedbackMetadata:];
    }
  }

  return v5;
}

+ (id)anchorFeedbackMetadataFromArchivedData:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v6 = v10;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXAnchorModelFeedbackMetadata anchorFeedbackMetadataFromArchivedData:];
    }
  }

  return v5;
}

- (ATXAnchorModelFeedbackMetadata)initWithAnchorSuggestionTuples:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__ATXAnchorModelFeedbackMetadata_initWithAnchorSuggestionTuples___block_invoke;
  v9[3] = &unk_27859F750;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [(ATXAnchorModelFeedbackMetadata *)self initWithSuggestionUUIDToAnchorPredictionMapping:v6];
  return v7;
}

void __65__ATXAnchorModelFeedbackMetadata_initWithAnchorSuggestionTuples___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 first];
  v4 = [v3 second];

  v5 = [v4 uuid];

  [*(a1 + 32) setObject:v6 forKey:v5];
}

- (ATXAnchorModelFeedbackMetadata)initWithSuggestionUUIDToAnchorPredictionMapping:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXAnchorModelFeedbackMetadata;
  v6 = [(ATXAnchorModelFeedbackMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestionUUIDToAnchorPredictionMapping, a3);
  }

  return v7;
}

- (id)anchorModelPredictionForProactiveSuggestion:(id)a3
{
  if (a3)
  {
    v4 = [a3 uuid];
    v5 = [(NSMutableDictionary *)self->_suggestionUUIDToAnchorPredictionMapping objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ATXAnchorModelFeedbackMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277D42620];
  v11 = __atxlog_handle_anchor();
  v12 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"mapping" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXAnchorModelFeedbackMetadata" errorCode:-1 logHandle:v11];

  v13 = [(ATXAnchorModelFeedbackMetadata *)self initWithSuggestionUUIDToAnchorPredictionMapping:v12];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAnchorModelFeedbackMetadata *)self isEqualToATXAnchorModelFeedbackMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAnchorModelFeedbackMetadata:(id)a3
{
  v4 = self->_suggestionUUIDToAnchorPredictionMapping;
  v5 = v4;
  if (v4 == *(a3 + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)v4 isEqual:?];
  }

  return v6;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSMutableDictionary *)self->_suggestionUUIDToAnchorPredictionMapping allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 = [*(*(&v10 + 1) + 8 * i) hash] - v5 + 32 * v5;
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (void)archivedDataForAnchorFeedbackMetadata:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - could not archive metadata, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)anchorFeedbackMetadataFromArchivedData:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - could not unarchive metadata, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end