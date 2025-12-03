@interface ATXBiomeStreamCacheUpdateContext
- (ATXBiomeStreamCacheUpdateContext)init;
- (ATXBiomeStreamCacheUpdateContext)initWithCoder:(id)coder;
- (ATXBiomeStreamCacheUpdateContext)initWithCurrentClientModelCacheCreationDates:(id)dates previousClientModelCacheAges:(id)ages currentBlendingModelCacheCreationDates:(id)creationDates previousBlendingModelCacheAges:(id)cacheAges;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBiomeStreamCacheUpdateContext:(id)context;
- (id)cacheAgeForPreviousClientModelCacheWithClientModelId:(id)id;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithBlendingUICacheUpdate:(id)update;
- (void)updateWithClientModelCacheUpdate:(id)update;
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

- (ATXBiomeStreamCacheUpdateContext)initWithCurrentClientModelCacheCreationDates:(id)dates previousClientModelCacheAges:(id)ages currentBlendingModelCacheCreationDates:(id)creationDates previousBlendingModelCacheAges:(id)cacheAges
{
  datesCopy = dates;
  agesCopy = ages;
  creationDatesCopy = creationDates;
  cacheAgesCopy = cacheAges;
  v18.receiver = self;
  v18.super_class = ATXBiomeStreamCacheUpdateContext;
  v15 = [(ATXBiomeStreamCacheUpdateContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_currentClientModelCacheCreationDatesByClientModelId, dates);
    objc_storeStrong(&v16->_previousClientModelCacheAgesByClientModelId, ages);
    objc_storeStrong(&v16->_currentBlendingModelCacheCreationDatesByConsumerSubType, creationDates);
    objc_storeStrong(&v16->_previousBlendingModelCacheAgesByConsumerSubType, cacheAges);
  }

  return v16;
}

- (id)cacheAgeForPreviousClientModelCacheWithClientModelId:(id)id
{
  if (id)
  {
    v4 = [(NSMutableDictionary *)self->_previousClientModelCacheAgesByClientModelId valueForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateWithClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  clientModelId = [updateCopy clientModelId];
  currentClientModelCacheCreationDatesByClientModelId = self->_currentClientModelCacheCreationDatesByClientModelId;
  if (clientModelId)
  {
    v6 = [(NSMutableDictionary *)currentClientModelCacheCreationDatesByClientModelId objectForKey:clientModelId];
    cacheCreationDate = [updateCopy cacheCreationDate];
    v8 = cacheCreationDate;
    if (v6)
    {
      [cacheCreationDate timeIntervalSinceDate:v6];
      previousClientModelCacheAgesByClientModelId = self->_previousClientModelCacheAgesByClientModelId;
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [(NSMutableDictionary *)previousClientModelCacheAgesByClientModelId setValue:v10 forKey:clientModelId];
    }

    [(NSMutableDictionary *)self->_currentClientModelCacheCreationDatesByClientModelId setValue:v8 forKey:clientModelId];
  }

  else
  {
    [(NSMutableDictionary *)currentClientModelCacheCreationDatesByClientModelId removeAllObjects];
    [(NSMutableDictionary *)self->_previousClientModelCacheAgesByClientModelId removeAllObjects];
  }
}

- (void)updateWithBlendingUICacheUpdate:(id)update
{
  v4 = MEMORY[0x277CEBCF0];
  updateCopy = update;
  v10 = [v4 stringForConsumerSubtype:{objc_msgSend(updateCopy, "consumerSubType")}];
  v6 = [(NSMutableDictionary *)self->_currentBlendingModelCacheCreationDatesByConsumerSubType objectForKey:?];
  cacheCreationDate = [updateCopy cacheCreationDate];

  if (v6)
  {
    [cacheCreationDate timeIntervalSinceDate:v6];
    previousBlendingModelCacheAgesByConsumerSubType = self->_previousBlendingModelCacheAgesByConsumerSubType;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [(NSMutableDictionary *)previousBlendingModelCacheAgesByConsumerSubType setValue:v9 forKey:v10];
  }

  [(NSMutableDictionary *)self->_currentBlendingModelCacheCreationDatesByConsumerSubType setValue:cacheCreationDate forKey:v10];
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
  currentClientModelCacheCreationDatesByClientModelId = self->_currentClientModelCacheCreationDatesByClientModelId;
  coderCopy = coder;
  [coderCopy encodeObject:currentClientModelCacheCreationDatesByClientModelId forKey:@"codingKeyForClientModelCacheCreationDate"];
  [coderCopy encodeObject:self->_previousClientModelCacheAgesByClientModelId forKey:@"codingKeyForPreviousClientModelCacheAge"];
  [coderCopy encodeObject:self->_currentBlendingModelCacheCreationDatesByConsumerSubType forKey:@"codingKeyForBlendingModelCacheCreationDate"];
  [coderCopy encodeObject:self->_previousBlendingModelCacheAgesByConsumerSubType forKey:@"codingKeyForPreviousBlendingModelCacheAge"];
}

- (ATXBiomeStreamCacheUpdateContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"codingKeyForClientModelCacheCreationDate"];
  if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v10 key:@"codingKeyForClientModelCacheCreationDate" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
  {
    selfCopy = 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 initWithObjects:{v14, v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"codingKeyForPreviousClientModelCacheAge"];
    if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v17 key:@"codingKeyForPreviousClientModelCacheAge" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
    {
      selfCopy = 0;
    }

    else
    {
      v18 = [coderCopy decodeObjectOfClasses:v9 forKey:@"codingKeyForBlendingModelCacheCreationDate"];
      if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v18 key:@"codingKeyForBlendingModelCacheCreationDate" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
      {
        selfCopy = 0;
      }

      else
      {
        v19 = [coderCopy decodeObjectOfClasses:v16 forKey:@"codingKeyForPreviousBlendingModelCacheAge"];
        if ([(ATXBiomeStreamCacheUpdateContext *)self checkAndReportDecodingFailureIfNeededForid:v19 key:@"codingKeyForPreviousBlendingModelCacheAge" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXBiomeStreamCacheUpdateContext" errorCode:-1])
        {
          selfCopy = 0;
        }

        else
        {
          self = [(ATXBiomeStreamCacheUpdateContext *)self initWithCurrentClientModelCacheCreationDates:v10 previousClientModelCacheAges:v17 currentBlendingModelCacheCreationDates:v18 previousBlendingModelCacheAges:v19];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBiomeStreamCacheUpdateContext *)self isEqualToATXBiomeStreamCacheUpdateContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBiomeStreamCacheUpdateContext:(id)context
{
  contextCopy = context;
  v5 = self->_currentClientModelCacheCreationDatesByClientModelId;
  v6 = v5;
  if (v5 == contextCopy[1])
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
  if (v8 == contextCopy[2])
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
  if (v11 == contextCopy[3])
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
  if (v15 == contextCopy[4])
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