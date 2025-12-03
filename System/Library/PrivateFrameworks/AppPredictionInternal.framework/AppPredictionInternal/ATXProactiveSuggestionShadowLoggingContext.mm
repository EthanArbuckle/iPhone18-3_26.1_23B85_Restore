@interface ATXProactiveSuggestionShadowLoggingContext
- (ATXProactiveSuggestionShadowLoggingContext)init;
- (ATXProactiveSuggestionShadowLoggingContext)initWithClientModelCacheUpdates:(id)updates context:(id)context;
- (ATXProactiveSuggestionShadowLoggingContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContext:(id)context;
- (NSDictionary)clientModelCacheUpdates;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithClientModelCacheUpdate:(id)update;
- (void)updateWithContext:(id)context;
@end

@implementation ATXProactiveSuggestionShadowLoggingContext

- (ATXProactiveSuggestionShadowLoggingContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXProactiveSuggestionShadowLoggingContext *)self initWithClientModelCacheUpdates:v3 context:0];

  return v4;
}

- (ATXProactiveSuggestionShadowLoggingContext)initWithClientModelCacheUpdates:(id)updates context:(id)context
{
  updatesCopy = updates;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ATXProactiveSuggestionShadowLoggingContext;
  v8 = [(ATXProactiveSuggestionShadowLoggingContext *)&v12 init];
  if (v8)
  {
    v9 = [updatesCopy mutableCopy];
    clientModelCacheUpdates = v8->_clientModelCacheUpdates;
    v8->_clientModelCacheUpdates = v9;

    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

- (NSDictionary)clientModelCacheUpdates
{
  v2 = [(NSMutableDictionary *)self->_clientModelCacheUpdates copy];

  return v2;
}

- (void)updateWithClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  clientModelCacheUpdates = self->_clientModelCacheUpdates;
  clientModelId = [updateCopy clientModelId];
  [(NSMutableDictionary *)clientModelCacheUpdates setObject:updateCopy forKey:clientModelId];

  v7 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXProactiveSuggestionShadowLoggingContext updateWithClientModelCacheUpdate:];
  }
}

- (void)updateWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
  v6 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXProactiveSuggestionShadowLoggingContext updateWithContext:];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionShadowLoggingContext *)self isEqualToATXProactiveSuggestionShadowLoggingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingContext:(id)context
{
  contextCopy = context;
  v5 = self->_clientModelCacheUpdates;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(NSMutableDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_context;
  v10 = v9;
  if (v9 == contextCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ATXPredictionContext *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  clientModelCacheUpdates = self->_clientModelCacheUpdates;
  coderCopy = coder;
  [coderCopy encodeObject:clientModelCacheUpdates forKey:@"clientCaches"];
  [coderCopy encodeObject:self->_context forKey:@"predictionContext"];
}

- (ATXProactiveSuggestionShadowLoggingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277D42620];
  v11 = __atxlog_handle_blending_ecosystem();
  v12 = [v10 robustDecodeObjectOfClasses:v9 forKey:@"clientCaches" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContext" errorCode:-1 logHandle:v11];

  if (v12)
  {
    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = __atxlog_handle_blending_ecosystem();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"predictionContext" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingContext" errorCode:-1 logHandle:v15];

    self = [(ATXProactiveSuggestionShadowLoggingContext *)self initWithClientModelCacheUpdates:v12 context:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateWithClientModelCacheUpdate:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated with new client model cache: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithContext:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - updated with new context: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end