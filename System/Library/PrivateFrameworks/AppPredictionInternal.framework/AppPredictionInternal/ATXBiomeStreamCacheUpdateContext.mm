@interface ATXBiomeStreamCacheUpdateContext
- (ATXBiomeStreamCacheUpdateContext)init;
- (ATXBiomeStreamCacheUpdateContext)initWithCoder:(id)a3;
- (ATXBiomeStreamCacheUpdateContext)initWithCurrentClientModelCacheCreationDates:(id)a3 previousClientModelCacheAges:(id)a4 currentBlendingModelCacheCreationDates:(id)a5 previousBlendingModelCacheAges:(id)a6;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBiomeStreamCacheUpdateContext:(id)a3;
- (id)cacheAgeForPreviousClientModelCacheWithClientModelId:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBlendingUICacheUpdate:(id)a3;
- (void)updateWithClientModelCacheUpdate:(id)a3;
@end

@implementation ATXBiomeStreamCacheUpdateContext

- (ATXBiomeStreamCacheUpdateContext)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXBiomeStreamCacheUpdateContext *)self initWithCurrentClientModelCacheCreationDates:v3 previousClientModelCacheAges:v4 currentBlendingModelCacheCreationDates:v5 previousBlendingModelCacheAges:v6];

  return v7;
}

- (ATXBiomeStreamCacheUpdateContext)initWithCurrentClientModelCacheCreationDates:(id)a3 previousClientModelCacheAges:(id)a4 currentBlendingModelCacheCreationDates:(id)a5 previousBlendingModelCacheAges:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXBiomeStreamCacheUpdateContext;
  v15 = [(ATXBiomeStreamCacheUpdateContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_currentClientModelCacheCreationDatesByClientModelId, a3);
    objc_storeStrong(&v16->_previousClientModelCacheAgesByClientModelId, a4);
    objc_storeStrong(&v16->_currentBlendingModelCacheCreationDatesByConsumerSubType, a5);
    objc_storeStrong(&v16->_previousBlendingModelCacheAgesByConsumerSubType, a6);
  }

  return v16;
}

- (id)cacheAgeForPreviousClientModelCacheWithClientModelId:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_previousClientModelCacheAgesByClientModelId valueForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateWithClientModelCacheUpdate:(id)a3
{
  v11 = a3;
  v4 = [v11 clientModelId];
  currentClientModelCacheCreationDatesByClientModelId = self->_currentClientModelCacheCreationDatesByClientModelId;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)currentClientModelCacheCreationDatesByClientModelId objectForKey:v4];
    v7 = [v11 cacheCreationDate];
    v8 = v7;
    if (v6)
    {
      [v7 timeIntervalSinceDate:v6];
      previousClientModelCacheAgesByClientModelId = self->_previousClientModelCacheAgesByClientModelId;
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [(NSMutableDictionary *)previousClientModelCacheAgesByClientModelId setValue:v10 forKey:v4];
    }

    [(NSMutableDictionary *)self->_currentClientModelCacheCreationDatesByClientModelId setValue:v8 forKey:v4];
  }

  else
  {
    [(NSMutableDictionary *)currentClientModelCacheCreationDatesByClientModelId removeAllObjects];
    [(NSMutableDictionary *)self->_previousClientModelCacheAgesByClientModelId removeAllObjects];
  }
}

- (void)updateWithBlendingUICacheUpdate:(id)a3
{
  v4 = MEMORY[0x277CEBCF0];
  v5 = a3;
  v10 = [v4 stringForConsumerSubtype:{objc_msgSend(v5, "consumerSubType")}];
  v6 = [(NSMutableDictionary *)self->_currentBlendingModelCacheCreationDatesByConsumerSubType objectForKey:?];
  v7 = [v5 cacheCreationDate];

  if (v6)
  {
    [v7 timeIntervalSinceDate:v6];
    previousBlendingModelCacheAgesByConsumerSubType = self->_previousBlendingModelCacheAgesByConsumerSubType;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [(NSMutableDictionary *)previousBlendingModelCacheAgesByConsumerSubType setValue:v9 forKey:v10];
  }

  [(NSMutableDictionary *)self->_currentBlendingModelCacheCreationDatesByConsumerSubType setValue:v7 forKey:v10];
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
  currentClientModelCacheCreationDatesByClientModelId = self->_currentClientModelCacheCreationDatesByClientModelId;
  v5 = a3;
  [v5 encodeObject:currentClientModelCacheCreationDatesByClientModelId forKey:@"codingKeyForClientModelCacheCreationDate"];
  [v5 encodeObject:self->_previousClientModelCacheAgesByClientModelId forKey:@"codingKeyForPreviousClientModelCacheAge"];
  [v5 encodeObject:self->_currentBlendingModelCacheCreationDatesByConsumerSubType forKey:@"codingKeyForBlendingModelCacheCreationDate"];
  [v5 encodeObject:self->_previousBlendingModelCacheAgesByConsumerSubType forKey:@"codingKeyForPreviousBlendingModelCacheAge"];
}

- (ATXBiomeStreamCacheUpdateContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"codingKeyForClientModelCacheCreationDate"];
  if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v10 key:@"codingKeyForClientModelCacheCreationDate" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 initWithObjects:{v14, v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"codingKeyForPreviousClientModelCacheAge"];
    if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v17 key:@"codingKeyForPreviousClientModelCacheAge" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
    {
      v11 = 0;
    }

    else
    {
      v18 = [v4 decodeObjectOfClasses:v9 forKey:@"codingKeyForBlendingModelCacheCreationDate"];
      if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v18 key:@"codingKeyForBlendingModelCacheCreationDate" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
      {
        v11 = 0;
      }

      else
      {
        v19 = [v4 decodeObjectOfClasses:v16 forKey:@"codingKeyForPreviousBlendingModelCacheAge"];
        if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v19 key:@"codingKeyForPreviousBlendingModelCacheAge" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
        {
          v11 = 0;
        }

        else
        {
          self = [(ATXBiomeStreamCacheUpdateContext *)self initWithCurrentClientModelCacheCreationDates:v10 previousClientModelCacheAges:v17 currentBlendingModelCacheCreationDates:v18 previousBlendingModelCacheAges:v19];
          v11 = self;
        }
      }
    }
  }

  return v11;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBiomeStreamCacheUpdateContext *)self isEqualToATXBiomeStreamCacheUpdateContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBiomeStreamCacheUpdateContext:(id)a3
{
  v4 = a3;
  v5 = self->_currentClientModelCacheCreationDatesByClientModelId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSMutableDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_previousClientModelCacheAgesByClientModelId;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSMutableDictionary *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_currentBlendingModelCacheCreationDatesByConsumerSubType;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSMutableDictionary *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_previousBlendingModelCacheAgesByConsumerSubType;
  v16 = v15;
  if (v15 == v4[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSMutableDictionary *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  v2 = self->_previousClientModelCacheAgesByClientModelId - self->_currentClientModelCacheCreationDatesByClientModelId + 32 * self->_currentClientModelCacheCreationDatesByClientModelId;
  v3 = &self->_currentBlendingModelCacheCreationDatesByConsumerSubType[4 * v2] - v2;
  return self->_previousBlendingModelCacheAgesByConsumerSubType - v3 + 32 * v3;
}

@end