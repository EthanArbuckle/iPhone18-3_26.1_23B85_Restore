@interface ATXBlendingBiomeStreamLoggerContextWrapper
- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithCoder:(id)coder;
- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithEvent:(id)event loggerContext:(id)context;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContextWrapper:(id)wrapper;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXBlendingBiomeStreamLoggerContextWrapper

- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithEvent:(id)event loggerContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = ATXBlendingBiomeStreamLoggerContextWrapper;
  v9 = [(ATXBlendingBiomeStreamLoggerContextWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    objc_storeStrong(&v10->_loggerContext, context);
  }

  return v10;
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
  event = self->_event;
  coderCopy = coder;
  [coderCopy encodeObject:event forKey:@"codingKeyForBiomeEvent"];
  [coderCopy encodeObject:self->_loggerContext forKey:@"codingKeyForLoggerContext"];
}

- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForBiomeEvent"];
  if ([(ATXBlendingBiomeStreamLoggerContextWrapper *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForBiomeEvent" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContextWrapper" errorCode:-1])
  {
    selfCopy = 0;
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForLoggerContext"];
    if ([(ATXBlendingBiomeStreamLoggerContextWrapper *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"codingKeyForLoggerContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContextWrapper" errorCode:-1])
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXBlendingBiomeStreamLoggerContextWrapper *)self initWithEvent:v5 loggerContext:v7];
      selfCopy = self;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBlendingBiomeStreamLoggerContextWrapper *)self isEqualToATXBlendingBiomeStreamLoggerContextWrapper:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContextWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = self->_event;
  v6 = v5;
  if (v5 == wrapperCopy[1])
  {
  }

  else
  {
    v7 = [(BMStoreEvent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_loggerContext;
  v10 = v9;
  if (v9 == wrapperCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(ATXBlendingBiomeStreamLoggerContext *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

@end