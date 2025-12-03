@interface ATXStackSystemSuggestTrackingContext
- (ATXStackSystemSuggestTrackingContext)init;
- (ATXStackSystemSuggestTrackingContext)initWithCoder:(id)coder;
- (ATXStackSystemSuggestTrackingContext)initWithRotationSessionManager:(id)manager systemSuggestBlendingCaches:(id)caches;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXStackSystemSuggestTrackingContext:(id)context;
- (id)blendingCacheWithUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXStackSystemSuggestTrackingContext

- (ATXStackSystemSuggestTrackingContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXStackSystemSuggestTrackingContext *)self initWithRotationSessionManager:v3 systemSuggestBlendingCaches:v4];

  return v5;
}

- (ATXStackSystemSuggestTrackingContext)initWithRotationSessionManager:(id)manager systemSuggestBlendingCaches:(id)caches
{
  managerCopy = manager;
  cachesCopy = caches;
  v12.receiver = self;
  v12.super_class = ATXStackSystemSuggestTrackingContext;
  v9 = [(ATXStackSystemSuggestTrackingContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionManager, manager);
    objc_storeStrong(&v10->_systemSuggestBlendingCaches, caches);
  }

  return v10;
}

- (id)blendingCacheWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    systemSuggestBlendingCaches = self->_systemSuggestBlendingCaches;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__ATXStackSystemSuggestTrackingContext_blendingCacheWithUUID___block_invoke;
    v10[3] = &unk_2785A0FC8;
    v11 = dCopy;
    v7 = [(NSMutableArray *)systemSuggestBlendingCaches _pas_filteredArrayWithTest:v10];
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __62__ATXStackSystemSuggestTrackingContext_blendingCacheWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackSystemSuggestTrackingContext *)self isEqualToATXStackSystemSuggestTrackingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackSystemSuggestTrackingContext:(id)context
{
  contextCopy = context;
  v5 = self->_sessionManager;
  v6 = v5;
  if (v5 == contextCopy[1])
  {
  }

  else
  {
    v7 = [(ATXStackRotationSessionManager *)v5 isEqual:?];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_systemSuggestBlendingCaches;
  v10 = v9;
  if (v9 == contextCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableArray *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  sessionManager = self->_sessionManager;
  coderCopy = coder;
  [coderCopy encodeObject:sessionManager forKey:@"sessionManager"];
  [coderCopy encodeObject:self->_systemSuggestBlendingCaches forKey:@"blendingCaches"];
}

- (ATXStackSystemSuggestTrackingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"sessionManager" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x277D42620];
    v16 = __atxlog_handle_metrics();
    v17 = [v15 robustDecodeObjectOfClasses:v14 forKey:@"blendingCaches" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v16];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXStackSystemSuggestTrackingContext *)self initWithRotationSessionManager:v8 systemSuggestBlendingCaches:v17];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end