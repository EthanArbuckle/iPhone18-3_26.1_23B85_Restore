@interface ATXProactiveSuggestionShadowLoggingResult
- (ATXProactiveSuggestionShadowLoggingResult)initWithCoder:(id)a3;
- (ATXProactiveSuggestionShadowLoggingResult)initWithShadowEvent:(id)a3 shadowEventDate:(id)a4 clientModelCacheUpdate:(id)a5 context:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingResult:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionShadowLoggingResult

- (ATXProactiveSuggestionShadowLoggingResult)initWithShadowEvent:(id)a3 shadowEventDate:(id)a4 clientModelCacheUpdate:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXProactiveSuggestionShadowLoggingResult;
  v15 = [(ATXProactiveSuggestionShadowLoggingResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shadowEvent, a3);
    objc_storeStrong(&v16->_shadowEventDate, a4);
    objc_storeStrong(&v16->_clientModelCacheUpdate, a5);
    objc_storeStrong(&v16->_context, a6);
  }

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionShadowLoggingResult *)self isEqualToATXProactiveSuggestionShadowLoggingResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionShadowLoggingResult:(id)a3
{
  v4 = a3;
  v5 = self->_shadowEvent;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v15 == v4[4])
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

- (void)encodeWithCoder:(id)a3
{
  shadowEvent = self->_shadowEvent;
  v10 = a3;
  v5 = [(BMStoreData *)shadowEvent serialize];
  [v10 encodeObject:v5 forKey:@"shadowEvent"];

  v6 = self->_shadowEvent;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v10 encodeObject:v8 forKey:@"shadowEventClassName"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMStoreData dataVersion](self->_shadowEvent, "dataVersion")}];
  [v10 encodeObject:v9 forKey:@"shadowEventDataVersion"];

  [v10 encodeObject:self->_shadowEventDate forKey:@"shadowEventDate"];
  [v10 encodeObject:self->_clientModelCacheUpdate forKey:@"clientCache"];
  [v10 encodeObject:self->_context forKey:@"context"];
}

- (ATXProactiveSuggestionShadowLoggingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"shadowEvent" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_blending_ecosystem();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"shadowEventClassName" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_blending_ecosystem();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"shadowEventDataVersion" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v15];

      if (v16 && (v17 = NSClassFromString(v12)) != 0)
      {
        v18 = -[objc_class eventWithData:dataVersion:](v17, "eventWithData:dataVersion:", v8, [v16 unsignedIntValue]);
        if (v18)
        {
          v19 = MEMORY[0x277D42620];
          v20 = objc_opt_class();
          v21 = __atxlog_handle_blending_ecosystem();
          v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"shadowEventDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v21];

          if (v22)
          {
            v33 = v22;
            v23 = MEMORY[0x277D42620];
            v24 = objc_opt_class();
            v25 = __atxlog_handle_blending_ecosystem();
            v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"clientCache" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v25];

            if (v26)
            {
              v27 = MEMORY[0x277D42620];
              v28 = objc_opt_class();
              v29 = __atxlog_handle_blending_ecosystem();
              v30 = [v27 robustDecodeObjectOfClass:v28 forKey:@"context" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXProactiveSuggestionShadowLoggingResult" errorCode:-1 logHandle:v29];

              if (v30)
              {
                v22 = v33;
                self = [(ATXProactiveSuggestionShadowLoggingResult *)self initWithShadowEvent:v18 shadowEventDate:v33 clientModelCacheUpdate:v26 context:v30];
                v31 = self;
              }

              else
              {
                v31 = 0;
                v22 = v33;
              }
            }

            else
            {
              v31 = 0;
              v22 = v33;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end