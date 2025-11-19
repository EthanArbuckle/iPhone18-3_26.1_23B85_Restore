@interface ATXBlendingBiomeStreamLoggerContext
- (ATXBlendingBiomeStreamLoggerContext)init;
- (ATXBlendingBiomeStreamLoggerContext)initWithCoder:(id)a3;
- (ATXBlendingBiomeStreamLoggerContext)initWithSessionTrackingContext:(id)a3 cacheUpdateContext:(id)a4 stackSuggestTrackingContext:(id)a5 screenLogUnlockSessionContext:(id)a6;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContext:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBlendingUICacheUpdate:(id)a3;
- (void)updateWithClientModelCacheUpdate:(id)a3;
- (void)updateWithUIEvent:(id)a3;
@end

@implementation ATXBlendingBiomeStreamLoggerContext

- (ATXBlendingBiomeStreamLoggerContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXBlendingBiomeStreamLoggerContext *)self initWithSessionTrackingContext:v3 cacheUpdateContext:v4 stackSuggestTrackingContext:v5 screenLogUnlockSessionContext:v6];

  return v7;
}

- (ATXBlendingBiomeStreamLoggerContext)initWithSessionTrackingContext:(id)a3 cacheUpdateContext:(id)a4 stackSuggestTrackingContext:(id)a5 screenLogUnlockSessionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXBlendingBiomeStreamLoggerContext;
  v15 = [(ATXBlendingBiomeStreamLoggerContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionTrackingContext, a3);
    objc_storeStrong(&v16->_cacheUpdateContext, a4);
    objc_storeStrong(&v16->_stackSuggestTrackingContext, a5);
    objc_storeStrong(&v16->_screenLogUnlockSessionContext, a6);
  }

  return v16;
}

- (void)updateWithClientModelCacheUpdate:(id)a3
{
  sessionTrackingContext = self->_sessionTrackingContext;
  v5 = a3;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithClientModelCacheUpdate:v5];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithClientModelCacheUpdate:v5];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithClientModelCacheUpdate:v5];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithClientModelCacheUpdate:v5];
}

- (void)updateWithBlendingUICacheUpdate:(id)a3
{
  sessionTrackingContext = self->_sessionTrackingContext;
  v5 = a3;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithBlendingUICacheUpdate:v5];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithBlendingUICacheUpdate:v5];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithBlendingUICacheUpdate:v5];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithBlendingUICacheUpdate:v5];
}

- (void)updateWithUIEvent:(id)a3
{
  sessionTrackingContext = self->_sessionTrackingContext;
  v5 = a3;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithUIEvent:v5];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithUIEvent:v5];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithUIEvent:v5];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithUIEvent:v5];
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  sessionTrackingContext = self->_sessionTrackingContext;
  v5 = a3;
  [v5 encodeObject:sessionTrackingContext forKey:@"sessionTrackingContext"];
  [v5 encodeObject:self->_cacheUpdateContext forKey:@"cacheUpdateContext"];
  [v5 encodeObject:self->_stackSuggestTrackingContext forKey:@"systemSuggestContext"];
  [v5 encodeObject:self->_screenLogUnlockSessionContext forKey:@"screenLogUnlockContext"];
}

- (ATXBlendingBiomeStreamLoggerContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionTrackingContext"];
  if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"sessionTrackingContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheUpdateContext"];
    if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"cacheUpdateContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
    {
      v6 = 0;
    }

    else
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemSuggestContext"];
      if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v8 key:@"systemSuggestContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
      {
        v6 = 0;
      }

      else
      {
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenLogUnlockContext"];
        if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v9 key:@"screenLogUnlockContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
        {
          v6 = 0;
        }

        else
        {
          self = [(ATXBlendingBiomeStreamLoggerContext *)self initWithSessionTrackingContext:v5 cacheUpdateContext:v7 stackSuggestTrackingContext:v8 screenLogUnlockSessionContext:v9];
          v6 = self;
        }
      }
    }
  }

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBlendingBiomeStreamLoggerContext *)self isEqualToATXBlendingBiomeStreamLoggerContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContext:(id)a3
{
  v4 = a3;
  v5 = self->_sessionTrackingContext;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(ATXSingleSuggestionSessionTrackingContext *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_cacheUpdateContext;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(ATXBiomeStreamCacheUpdateContext *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_stackSuggestTrackingContext;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(ATXStackSystemSuggestTrackingContext *)v11 isEqual:?];

    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_screenLogUnlockSessionContext;
  v16 = v15;
  if (v15 == v4[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(ATXScreenLogUnlockSessionContext *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXSingleSuggestionSessionTrackingContext *)self->_sessionTrackingContext hash];
  v4 = [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext hash]- v3 + 32 * v3;
  v5 = [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext hash]- v4 + 32 * v4;
  return [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext hash]- v5 + 32 * v5;
}

@end