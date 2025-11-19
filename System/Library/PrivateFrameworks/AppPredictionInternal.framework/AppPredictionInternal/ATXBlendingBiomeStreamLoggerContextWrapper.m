@interface ATXBlendingBiomeStreamLoggerContextWrapper
- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithCoder:(id)a3;
- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithEvent:(id)a3 loggerContext:(id)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContextWrapper:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXBlendingBiomeStreamLoggerContextWrapper

- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithEvent:(id)a3 loggerContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXBlendingBiomeStreamLoggerContextWrapper;
  v9 = [(ATXBlendingBiomeStreamLoggerContextWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    objc_storeStrong(&v10->_loggerContext, a4);
  }

  return v10;
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
  event = self->_event;
  v5 = a3;
  [v5 encodeObject:event forKey:@"codingKeyForBiomeEvent"];
  [v5 encodeObject:self->_loggerContext forKey:@"codingKeyForLoggerContext"];
}

- (ATXBlendingBiomeStreamLoggerContextWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForBiomeEvent"];
  if ([(ATXBlendingBiomeStreamLoggerContextWrapper *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForBiomeEvent" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContextWrapper" errorCode:-1])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForLoggerContext"];
    if ([(ATXBlendingBiomeStreamLoggerContextWrapper *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"codingKeyForLoggerContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBlendingBiomeStreamLoggerContextWrapper" errorCode:-1])
    {
      v6 = 0;
    }

    else
    {
      self = [(ATXBlendingBiomeStreamLoggerContextWrapper *)self initWithEvent:v5 loggerContext:v7];
      v6 = self;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBlendingBiomeStreamLoggerContextWrapper *)self isEqualToATXBlendingBiomeStreamLoggerContextWrapper:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBlendingBiomeStreamLoggerContextWrapper:(id)a3
{
  v4 = a3;
  v5 = self->_event;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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