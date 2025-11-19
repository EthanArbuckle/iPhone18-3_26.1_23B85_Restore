@interface ATXAppIntentDuetEvent
- (ATXAppIntentDuetEvent)initWithBundleId:(id)a3 actionType:(id)a4 parameterHashes:(id)a5 slotSetHashes:(id)a6 paramCount:(id)a7 startDate:(id)a8 endDate:(id)a9 alogId:(id)a10;
- (ATXAppIntentDuetEvent)initWithCoder:(id)a3;
- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues;
- (id)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppIntentDuetEvent

- (ATXAppIntentDuetEvent)initWithBundleId:(id)a3 actionType:(id)a4 parameterHashes:(id)a5 slotSetHashes:(id)a6 paramCount:(id)a7 startDate:(id)a8 endDate:(id)a9 alogId:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  obj = a7;
  v36 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if ([v16 length])
  {
    v23 = [v17 length];
    v24 = 0;
    if (v18)
    {
      if (v23)
      {
        v25 = [v18 count];
        v24 = 0;
        if (v19)
        {
          if (v25)
          {
            v26 = [v19 count];
            v24 = 0;
            if (v20)
            {
              if (v26)
              {
                v37.receiver = self;
                v37.super_class = ATXAppIntentDuetEvent;
                v27 = [(ATXDuetEvent *)&v37 initWithStartDate:v20 endDate:v21];
                if (v27)
                {
                  v28 = [v16 copy];
                  bundleId = v27->_bundleId;
                  v27->_bundleId = v28;

                  v30 = [v17 copy];
                  actionType = v27->_actionType;
                  v27->_actionType = v30;

                  v32 = [v18 copy];
                  parameterHashes = v27->_parameterHashes;
                  v27->_parameterHashes = v32;

                  objc_storeStrong(&v27->_slotSetHashes, a6);
                  objc_storeStrong(&v27->_paramCount, obj);
                  objc_storeStrong(&v27->_alogId, a10);
                }

                self = v27;
                v24 = self;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (ATXAppIntentDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v28 = __atxlog_handle_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    goto LABEL_22;
  }

  v6 = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v7 = [v3 objectForKeyedSubscript:v6];
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

  v9 = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v10 = [v5 objectForKeyedSubscript:v9];
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
    v27 = 0;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
  v13 = [v5 objectForKeyedSubscript:v12];
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

  v17 = [MEMORY[0x277CFE338] intentClassKey];
  v18 = [v5 objectForKeyedSubscript:v17];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [MEMORY[0x277CFE338] intentClassKey];
    v21 = [v5 objectForKeyedSubscript:v20];
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

    v25 = [MEMORY[0x277CBEAA8] date];
    v26 = [(ATXAppIntentDuetEvent *)self initWithBundleId:v16 actionType:v24 parameterHashes:&unk_283A588C8 slotSetHashes:&unk_283A588E0 paramCount:&unk_283A56B10 startDate:v25 endDate:v25];

    self = v26;
    v27 = self;
  }

  else
  {
    v35 = __atxlog_handle_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentDuetEvent initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'intentClassKey' in ContextStore's 'keyPathForIntentsDataDictionary' is not an NSString."];
    v27 = 0;
  }

LABEL_23:
  return v27;
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
      v10 = [v7 longLongValue];
      if (v8 <= v6)
      {
        v11 = @"%lld";
      }

      else
      {
        v11 = @"%lld,";
      }

      v12 = [v9 initWithFormat:v11, v10];
      [v3 appendString:v12];

      ++v6;
    }

    while ([(NSArray *)self->_parameterHashes count]> v6);
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(ATXDuetEvent *)self startDate];
  [v6 encodeObject:v4 forKey:@"codingKeyForDuetEventStartDate"];

  v5 = [(ATXDuetEvent *)self endDate];
  [v6 encodeObject:v5 forKey:@"codingKeyForDuetEventEndDate"];

  [v6 encodeObject:self->_bundleId forKey:@"codingKeyForBundleId"];
  [v6 encodeObject:self->_actionType forKey:@"codingKeyForActionType"];
  [v6 encodeObject:self->_parameterHashes forKey:@"codingKeyForParamHashes"];
  [v6 encodeObject:self->_slotSetHashes forKey:@"codingKeyForSlotSetHashes"];
  [v6 encodeObject:self->_paramCount forKey:@"codingKeyForParamCount"];
  [v6 encodeObject:self->_alogId forKey:@"codingKeyForALogId"];
}

- (ATXAppIntentDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDuetEventStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForDuetEventEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x277D42620];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_anchor();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v18];

      if (v19 && ([v4 error], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
      {
        v21 = MEMORY[0x277D42620];
        v22 = objc_opt_class();
        v23 = __atxlog_handle_anchor();
        v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForActionType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v23];

        if (v24 && ([v4 error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v53 = MEMORY[0x277D42620];
          v26 = objc_autoreleasePoolPush();
          v27 = objc_alloc(MEMORY[0x277CBEB98]);
          v28 = objc_opt_class();
          v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v26);
          v30 = __atxlog_handle_anchor();
          v31 = [v53 robustDecodeObjectOfClasses:v29 forKey:@"codingKeyForParamHashes" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v30];

          if (v31 && ([v4 error], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
          {
            v54 = v31;
            v33 = MEMORY[0x277D42620];
            contexta = objc_autoreleasePoolPush();
            v34 = objc_alloc(MEMORY[0x277CBEB98]);
            v35 = objc_opt_class();
            v36 = [v34 initWithObjects:{v35, objc_opt_class(), 0}];
            objc_autoreleasePoolPop(contexta);
            v37 = __atxlog_handle_anchor();
            v38 = [v33 robustDecodeObjectOfClasses:v36 forKey:@"codingKeyForSlotSetHashes" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v37];

            if (v38 && ([v4 error], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
            {
              context = v38;
              v40 = MEMORY[0x277D42620];
              v41 = objc_opt_class();
              v42 = __atxlog_handle_anchor();
              v43 = [v40 robustDecodeObjectOfClass:v41 forKey:@"codingKeyForParamCount" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v42];

              if (v43 && ([v4 error], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
              {
                v45 = MEMORY[0x277D42620];
                v46 = objc_opt_class();
                v47 = __atxlog_handle_anchor();
                v48 = [v45 robustDecodeObjectOfClass:v46 forKey:@"codingKeyForALogId" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v47];

                if (v48 && ([v4 error], v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
                {
                  self = [(ATXAppIntentDuetEvent *)self initWithBundleId:v19 actionType:v24 parameterHashes:v54 slotSetHashes:context paramCount:v43 startDate:v8 endDate:v14 alogId:v48];
                  v10 = self;
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = 0;
              }

              v38 = context;
            }

            else
            {
              v10 = 0;
            }

            v31 = v54;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end