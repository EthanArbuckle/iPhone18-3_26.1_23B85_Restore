@interface ATXBlendingBiomeStreamLoggerContext
- (ATXBlendingBiomeStreamLoggerContext)init;
- (ATXBlendingBiomeStreamLoggerContext)initWithCoder:(id)coder;
- (ATXBlendingBiomeStreamLoggerContext)initWithSessionTrackingContext:(id)context cacheUpdateContext:(id)updateContext stackSuggestTrackingContext:(id)trackingContext screenLogUnlockSessionContext:(id)sessionContext;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContext:(id)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithBlendingUICacheUpdate:(id)update;
- (void)updateWithClientModelCacheUpdate:(id)update;
- (void)updateWithUIEvent:(id)event;
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

- (ATXBlendingBiomeStreamLoggerContext)initWithSessionTrackingContext:(id)context cacheUpdateContext:(id)updateContext stackSuggestTrackingContext:(id)trackingContext screenLogUnlockSessionContext:(id)sessionContext
{
  contextCopy = context;
  updateContextCopy = updateContext;
  trackingContextCopy = trackingContext;
  sessionContextCopy = sessionContext;
  v18.receiver = self;
  v18.super_class = ATXBlendingBiomeStreamLoggerContext;
  v15 = [(ATXBlendingBiomeStreamLoggerContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionTrackingContext, context);
    objc_storeStrong(&v16->_cacheUpdateContext, updateContext);
    objc_storeStrong(&v16->_stackSuggestTrackingContext, trackingContext);
    objc_storeStrong(&v16->_screenLogUnlockSessionContext, sessionContext);
  }

  return v16;
}

- (void)updateWithClientModelCacheUpdate:(id)update
{
  sessionTrackingContext = self->_sessionTrackingContext;
  updateCopy = update;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithClientModelCacheUpdate:updateCopy];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithClientModelCacheUpdate:updateCopy];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithClientModelCacheUpdate:updateCopy];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithClientModelCacheUpdate:updateCopy];
}

- (void)updateWithBlendingUICacheUpdate:(id)update
{
  sessionTrackingContext = self->_sessionTrackingContext;
  updateCopy = update;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithBlendingUICacheUpdate:updateCopy];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithBlendingUICacheUpdate:updateCopy];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithBlendingUICacheUpdate:updateCopy];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithBlendingUICacheUpdate:updateCopy];
}

- (void)updateWithUIEvent:(id)event
{
  sessionTrackingContext = self->_sessionTrackingContext;
  eventCopy = event;
  [(ATXSingleSuggestionSessionTrackingContext *)sessionTrackingContext updateWithUIEvent:eventCopy];
  [(ATXBiomeStreamCacheUpdateContext *)self->_cacheUpdateContext updateWithUIEvent:eventCopy];
  [(ATXStackSystemSuggestTrackingContext *)self->_stackSuggestTrackingContext updateWithUIEvent:eventCopy];
  [(ATXScreenLogUnlockSessionContext *)self->_screenLogUnlockSessionContext updateWithUIEvent:eventCopy];
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  sessionTrackingContext = self->_sessionTrackingContext;
  coderCopy = coder;
  [coderCopy encodeObject:sessionTrackingContext forKey:@"sessionTrackingContext"];
  [coderCopy encodeObject:self->_cacheUpdateContext forKey:@"cacheUpdateContext"];
  [coderCopy encodeObject:self->_stackSuggestTrackingContext forKey:@"systemSuggestContext"];
  [coderCopy encodeObject:self->_screenLogUnlockSessionContext forKey:@"screenLogUnlockContext"];
}

- (ATXBlendingBiomeStreamLoggerContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionTrackingContext"];
  if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"sessionTrackingContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheUpdateContext"];
    if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"cacheUpdateContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
    {
      selfCopy = 0;
    }

    else
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemSuggestContext"];
      if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v8 key:@"systemSuggestContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
      {
        selfCopy = 0;
      }

      else
      {
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenLogUnlockContext"];
        if ([(ATXBlendingBiomeStreamLoggerContext *)self checkAndReportDecodingFailureIfNeededForid:v9 key:@"screenLogUnlockContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContext" errorCode:-1])
        {
          selfCopy = 0;
        }

        else
        {
          self = [(ATXBlendingBiomeStreamLoggerContext *)self initWithSessionTrackingContext:v5 cacheUpdateContext:v7 stackSuggestTrackingContext:v8 screenLogUnlockSessionContext:v9];
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBlendingBiomeStreamLoggerContext *)self isEqualToATXBlendingBiomeStreamLoggerContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContext:(id)context
{
  contextCopy = context;
  v5 = self->_sessionTrackingContext;
  v6 = v5;
  if (v5 == contextCopy[1])
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
  if (v8 == contextCopy[2])
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
  if (v11 == contextCopy[3])
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
  if (v15 == contextCopy[4])
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