@interface ATXStackSystemSuggestTrackingContext
- (ATXStackSystemSuggestTrackingContext)init;
- (ATXStackSystemSuggestTrackingContext)initWithCoder:(id)a3;
- (ATXStackSystemSuggestTrackingContext)initWithRotationSessionManager:(id)a3 systemSuggestBlendingCaches:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXStackSystemSuggestTrackingContext:(id)a3;
- (id)blendingCacheWithUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXStackSystemSuggestTrackingContext

- (ATXStackSystemSuggestTrackingContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXStackSystemSuggestTrackingContext *)self initWithRotationSessionManager:v3 systemSuggestBlendingCaches:v4];

  return v5;
}

- (ATXStackSystemSuggestTrackingContext)initWithRotationSessionManager:(id)a3 systemSuggestBlendingCaches:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXStackSystemSuggestTrackingContext;
  v9 = [(ATXStackSystemSuggestTrackingContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionManager, a3);
    objc_storeStrong(&v10->_systemSuggestBlendingCaches, a4);
  }

  return v10;
}

- (id)blendingCacheWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    systemSuggestBlendingCaches = self->_systemSuggestBlendingCaches;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__ATXStackSystemSuggestTrackingContext_blendingCacheWithUUID___block_invoke;
    v10[3] = &unk_2785A0FC8;
    v11 = v4;
    v7 = [(NSMutableArray *)systemSuggestBlendingCaches _pas_filteredArrayWithTest:v10];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __62__ATXStackSystemSuggestTrackingContext_blendingCacheWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXStackSystemSuggestTrackingContext *)self isEqualToATXStackSystemSuggestTrackingContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXStackSystemSuggestTrackingContext:(id)a3
{
  v4 = a3;
  v5 = self->_sessionManager;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (void)encodeWithCoder:(id)a3
{
  sessionManager = self->_sessionManager;
  v5 = a3;
  [v5 encodeObject:sessionManager forKey:@"sessionManager"];
  [v5 encodeObject:self->_systemSuggestBlendingCaches forKey:@"blendingCaches"];
}

- (ATXStackSystemSuggestTrackingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"sessionManager" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x277D42620];
    v16 = __atxlog_handle_metrics();
    v17 = [v15 robustDecodeObjectOfClasses:v14 forKey:@"blendingCaches" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.StackRotationStatus" errorCode:-1 logHandle:v16];

    v18 = [v4 error];

    if (v18)
    {
      v10 = 0;
    }

    else
    {
      self = [(ATXStackSystemSuggestTrackingContext *)self initWithRotationSessionManager:v8 systemSuggestBlendingCaches:v17];
      v10 = self;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end