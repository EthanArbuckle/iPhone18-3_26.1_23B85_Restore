@interface ATXProactiveSuggestionShadowLoggingResult
- (ATXProactiveSuggestionShadowLoggingResult)initWithCoder:(id)coder;
- (ATXProactiveSuggestionShadowLoggingResult)initWithShadowEvent:(id)event shadowEventDate:(id)date clientModelCacheUpdate:(id)update context:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingResult:(id)result;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionShadowLoggingResult

- (ATXProactiveSuggestionShadowLoggingResult)initWithShadowEvent:(id)event shadowEventDate:(id)date clientModelCacheUpdate:(id)update context:(id)context
{
  eventCopy = event;
  dateCopy = date;
  updateCopy = update;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = ATXProactiveSuggestionShadowLoggingResult;
  v15 = [(ATXProactiveSuggestionShadowLoggingResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shadowEvent, event);
    objc_storeStrong(&v16->_shadowEventDate, date);
    objc_storeStrong(&v16->_clientModelCacheUpdate, update);
    objc_storeStrong(&v16->_context, context);
  }

  return v16;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionShadowLoggingResult *)self isEqualToATXProactiveSuggestionShadowLoggingResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingResult:(id)result
{
  resultCopy = result;
  v5 = self->_shadowEvent;
  v6 = v5;
  if (v5 == resultCopy[1])
  {
  }

  else
  {
    v7 = [(BMStoreData *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_shadowEventDate;
  v9 = v8;
  if (v8 == resultCopy[2])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_clientModelCacheUpdate;
  v12 = v11;
  if (v11 == resultCopy[3])
  {
  }

  else
  {
    v13 = [(ATXClientModelCacheUpdate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_context;
  v16 = v15;
  if (v15 == resultCopy[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(ATXPredictionContext *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(BMStoreData *)self->_shadowEvent hash];
  v4 = [(NSDate *)self->_shadowEventDate hash]- v3 + 32 * v3;
  v5 = [(ATXClientModelCacheUpdate *)self->_clientModelCacheUpdate hash]- v4 + 32 * v4;
  return [(ATXPredictionContext *)self->_context hash]- v5 + 32 * v5;
}

- (void)encodeWithCoder:(id)coder
{
  shadowEvent = self->_shadowEvent;
  coderCopy = coder;
  serialize = [(BMStoreData *)shadowEvent serialize];
  [coderCopy encodeObject:serialize forKey:@"shadowEvent"];

  v6 = self->_shadowEvent;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [coderCopy encodeObject:v8 forKey:@"shadowEventClassName"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMStoreData dataVersion](self->_shadowEvent, "dataVersion")}];
  [coderCopy encodeObject:v9 forKey:@"shadowEventDataVersion"];

  [coderCopy encodeObject:self->_shadowEventDate forKey:@"shadowEventDate"];
  [coderCopy encodeObject:self->_clientModelCacheUpdate forKey:@"clientCache"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
}

- (ATXProactiveSuggestionShadowLoggingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"shadowEvent" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_blending_ecosystem();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"shadowEventClassName" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_blending_ecosystem();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"shadowEventDataVersion" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v15];

      if (v16 && (v17 = NSClassFromString(v12)) != 0)
      {
        v18 = -[objc_class eventWithData:dataVersion:](v17, "eventWithData:dataVersion:", v8, [v16 unsignedIntValue]);
        if (v18)
        {
          v19 = MEMORY[0x277D42620];
          v20 = objc_opt_class();
          v21 = __atxlog_handle_blending_ecosystem();
          v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"shadowEventDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v21];

          if (v22)
          {
            v33 = v22;
            v23 = MEMORY[0x277D42620];
            v24 = objc_opt_class();
            v25 = __atxlog_handle_blending_ecosystem();
            v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"clientCache" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v25];

            if (v26)
            {
              v27 = MEMORY[0x277D42620];
              v28 = objc_opt_class();
              v29 = __atxlog_handle_blending_ecosystem();
              v30 = [v27 robustDecodeObjectOfClass:v28 forKey:@"context" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v29];

              if (v30)
              {
                v22 = v33;
                self = [(ATXProactiveSuggestionShadowLoggingResult *)self initWithShadowEvent:v18 shadowEventDate:v33 clientModelCacheUpdate:v26 context:v30];
                selfCopy = self;
              }

              else
              {
                selfCopy = 0;
                v22 = v33;
              }
            }

            else
            {
              selfCopy = 0;
              v22 = v33;
            }
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end