@interface ATXAppIntentDuetEvent
- (ATXAppIntentDuetEvent)initWithBundleId:(id)id actionType:(id)type parameterHashes:(id)hashes slotSetHashes:(id)setHashes paramCount:(id)count startDate:(id)date endDate:(id)endDate alogId:(id)self0;
- (ATXAppIntentDuetEvent)initWithCoder:(id)coder;
- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppIntentDuetEvent

- (ATXAppIntentDuetEvent)initWithBundleId:(id)id actionType:(id)type parameterHashes:(id)hashes slotSetHashes:(id)setHashes paramCount:(id)count startDate:(id)date endDate:(id)endDate alogId:(id)self0
{
  idCopy = id;
  typeCopy = type;
  hashesCopy = hashes;
  setHashesCopy = setHashes;
  obj = count;
  countCopy = count;
  dateCopy = date;
  endDateCopy = endDate;
  alogIdCopy = alogId;
  if ([idCopy length])
  {
    v23 = [typeCopy length];
    selfCopy = 0;
    if (hashesCopy)
    {
      if (v23)
      {
        v25 = [hashesCopy count];
        selfCopy = 0;
        if (setHashesCopy)
        {
          if (v25)
          {
            v26 = [setHashesCopy count];
            selfCopy = 0;
            if (dateCopy)
            {
              if (v26)
              {
                v37.receiver = self;
                v37.super_class = ATXAppIntentDuetEvent;
                v27 = [(ATXDuetEvent *)&v37 initWithStartDate:dateCopy endDate:endDateCopy];
                if (v27)
                {
                  v28 = [idCopy copy];
                  bundleId = v27->_bundleId;
                  v27->_bundleId = v28;

                  v30 = [typeCopy copy];
                  actionType = v27->_actionType;
                  v27->_actionType = v30;

                  v32 = [hashesCopy copy];
                  parameterHashes = v27->_parameterHashes;
                  v27->_parameterHashes = v32;

                  objc_storeStrong(&v27->_slotSetHashes, setHashes);
                  objc_storeStrong(&v27->_paramCount, obj);
                  objc_storeStrong(&v27->_alogId, alogId);
                }

                self = v27;
                selfCopy = self;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForIntentsDataDictionary = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForIntentsDataDictionary];

  if (!v5)
  {
    v28 = __atxlog_handle_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_22;
  }

  keyPathForIntentsDataDictionary2 = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v7 = [userContext objectForKeyedSubscript:keyPathForIntentsDataDictionary2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v29 = __atxlog_handle_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    v30 = MEMORY[0x277CBEAD8];
    v31 = *MEMORY[0x277CBE658];
    v32 = @"ContextStore's 'keyPathForIntentsDataDictionary' is not an NSDictionary.";
    goto LABEL_21;
  }

  intentSourceBundleIDKey = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v10 = [v5 objectForKeyedSubscript:intentSourceBundleIDKey];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if ((v11 & 1) == 0)
  {
    v33 = __atxlog_handle_default();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    v30 = MEMORY[0x277CBEAD8];
    v31 = *MEMORY[0x277CBE658];
    v32 = @"Value for 'intentSourceBundleIDKey' in ContextStore's 'keyPathForIntentsDataDictionary' is not an NSString.";
LABEL_21:
    [v30 raise:v31 format:v32];
LABEL_22:
    selfCopy = 0;
    goto LABEL_23;
  }

  intentSourceBundleIDKey2 = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v13 = [v5 objectForKeyedSubscript:intentSourceBundleIDKey2];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2839A6058;
  }

  v16 = v15;

  intentClassKey = [MEMORY[0x277CFE338] intentClassKey];
  v18 = [v5 objectForKeyedSubscript:intentClassKey];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    intentClassKey2 = [MEMORY[0x277CFE338] intentClassKey];
    v21 = [v5 objectForKeyedSubscript:intentClassKey2];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_2839A6058;
    }

    v24 = v23;

    date = [MEMORY[0x277CBEAA8] date];
    v26 = [(ATXAppIntentDuetEvent *)self initWithBundleId:v16 actionType:v24 parameterHashes:&unk_283A588C8 slotSetHashes:&unk_283A588E0 paramCount:&unk_283A56B10 startDate:date endDate:date];

    self = v26;
    selfCopy = self;
  }

  else
  {
    v35 = __atxlog_handle_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'intentClassKey' in ContextStore's 'keyPathForIntentsDataDictionary' is not an NSString."];
    selfCopy = 0;
  }

LABEL_23:
  return selfCopy;
}

- (id)identifier
{
  v3 = objc_opt_new();
  bundleId = self->_bundleId;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:", bundleId, self->_actionType];
  [v3 appendString:v5];

  if ([(NSArray *)self->_parameterHashes count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_parameterHashes objectAtIndexedSubscript:v6];
      v8 = [(NSArray *)self->_parameterHashes count]- 1;
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      longLongValue = [v7 longLongValue];
      if (v8 <= v6)
      {
        v11 = @"%lld";
      }

      else
      {
        v11 = @"%lld,";
      }

      v12 = [v9 initWithFormat:v11, longLongValue];
      [v3 appendString:v12];

      ++v6;
    }

    while ([(NSArray *)self->_parameterHashes count]> v6);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForDuetEventStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForDuetEventEndDate"];

  [coderCopy encodeObject:self->_bundleId forKey:@"codingKeyForBundleId"];
  [coderCopy encodeObject:self->_actionType forKey:@"codingKeyForActionType"];
  [coderCopy encodeObject:self->_parameterHashes forKey:@"codingKeyForParamHashes"];
  [coderCopy encodeObject:self->_slotSetHashes forKey:@"codingKeyForSlotSetHashes"];
  [coderCopy encodeObject:self->_paramCount forKey:@"codingKeyForParamCount"];
  [coderCopy encodeObject:self->_alogId forKey:@"codingKeyForALogId"];
}

- (ATXAppIntentDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDuetEventStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForDuetEventEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v18];

      if (v19 && ([coderCopy error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForActionType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v23];

        if (v24 && ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v53 = MEMORY[0x277D42620];
          v26 = objc_autoreleasePoolPush();
          v27 = objc_alloc(MEMORY[0x277CBEB98]);
          v28 = objc_opt_class();
          v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v26);
          v30 = __atxlog_handle_anchor();
          v31 = [v53 robustDecodeObjectOfClasses:v29 forKey:@"codingKeyForParamHashes" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v30];

          if (v31 && ([coderCopy error], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
          {
            v54 = v31;
            v33 = MEMORY[0x277D42620];
            contexta = objc_autoreleasePoolPush();
            v34 = objc_alloc(MEMORY[0x277CBEB98]);
            v35 = objc_opt_class();
            v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
            objc_autoreleasePoolPop(contexta);
            v37 = __atxlog_handle_anchor();
            v38 = [v33 robustDecodeObjectOfClasses:v36 forKey:@"codingKeyForSlotSetHashes" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v37];

            if (v38 && ([coderCopy error], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
            {
              context = v38;
              v40 = MEMORY[0x277D42620];
              v41 = objc_opt_class();
              v42 = __atxlog_handle_anchor();
              v43 = [v40 robustDecodeObjectOfClass:v41 forKey:@"codingKeyForParamCount" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v42];

              if (v43 && ([coderCopy error], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
              {
                v45 = MEMORY[0x277D42620];
                v46 = objc_opt_class();
                v47 = __atxlog_handle_anchor();
                v48 = [v45 robustDecodeObjectOfClass:v46 forKey:@"codingKeyForALogId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v47];

                if (v48 && ([coderCopy error], v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
                {
                  self = [(ATXAppIntentDuetEvent *)self initWithBundleId:v19 actionType:v24 parameterHashes:v54 slotSetHashes:context paramCount:v43 startDate:v8 endDate:v14 alogId:v48];
                  selfCopy = self;
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

              v38 = context;
            }

            else
            {
              selfCopy = 0;
            }

            v31 = v54;
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