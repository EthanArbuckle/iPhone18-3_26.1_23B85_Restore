@interface AMSMetricsFigaroEventModifier
- (AMSMetricsFigaroEventModifier)initWithMetricsDictionary:(id)dictionary overrideDictionary:(id)overrideDictionary;
- (BOOL)_shouldSampleEvent:(id)event;
- (BOOL)fieldFiltersMatchEvent:(id)event;
- (BOOL)shouldDropEvent:(id)event;
- (BOOL)shouldSkipEvent:(id)event;
- (double)flushInterval;
- (id)_createSampleSessionKey;
- (id)_fieldFiltersFromOverrides:(id)overrides;
- (id)_overridePropertyForKey:(id)key;
- (id)preparedEventWithEvent:(id)event;
- (id)reportingURLForEvent:(id)event;
@end

@implementation AMSMetricsFigaroEventModifier

- (id)_createSampleSessionKey
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  selfCopy = self;
  fieldFilters = [(AMSMetricsFigaroEventModifier *)self fieldFilters];
  allKeys = [fieldFilters allKeys];
  v6 = [allKeys sortedArrayUsingSelector:?];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v32)
  {
    firstObject2 = 0;
    firstObject = 0;
    v30 = *v40;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        [v3 appendFormat:@"%@:", v8];
        fieldFilters2 = [(AMSMetricsFigaroEventModifier *)selfCopy fieldFilters];
        v10 = [fieldFilters2 objectForKeyedSubscript:v8];

        allObjects = [v10 allObjects];
        v12 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

        if (!firstObject)
        {
          if ([v8 isEqualToString:@"topic"])
          {
            firstObject = [v12 firstObject];
          }

          else
          {
            firstObject = 0;
          }
        }

        if (!firstObject2)
        {
          if ([v8 isEqualToString:@"eventType"])
          {
            firstObject2 = [v12 firstObject];
          }

          else
          {
            firstObject2 = 0;
          }
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          v17 = 1;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v35 + 1) + 8 * j);
              if ((v17 & 1) == 0)
              {
                [v3 appendString:{@", "}];
              }

              [v3 appendString:v19];
              v17 = 0;
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
            v17 = 0;
          }

          while (v15);
        }

        [v3 appendString:@";"];
      }

      v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v32);
  }

  else
  {
    firstObject2 = 0;
    firstObject = 0;
  }

  v20 = [v3 dataUsingEncoding:4];
  ams_SHA1 = [v20 ams_SHA1];
  v22 = [ams_SHA1 base64EncodedStringWithOptions:0];
  if ([v22 hasSuffix:@"="])
  {
    do
    {
      v23 = [v22 substringToIndex:{objc_msgSend(v22, "length") - 1}];

      v22 = v23;
    }

    while (([v23 hasSuffix:@"="] & 1) != 0);
  }

  else
  {
    v23 = v22;
  }

  if (firstObject)
  {
    v24 = firstObject;
  }

  else
  {
    v24 = firstObject2;
  }

  v25 = v24;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = @"Figaro";
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v26, v23];

  return v27;
}

- (double)flushInterval
{
  v3 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"postFrequency"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"postFrequency"];
    [v4 doubleValue];
    v6 = v5;

    if (v6 != 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  metricsDictionary = [(AMSMetricsFigaroEventModifier *)self metricsDictionary];
  v8 = [metricsDictionary objectForKeyedSubscript:@"postFrequency"];
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    metricsDictionary2 = [(AMSMetricsFigaroEventModifier *)self metricsDictionary];
    v10 = [metricsDictionary2 objectForKeyedSubscript:@"postFrequency"];
    [v10 doubleValue];
    v6 = v11;
  }

LABEL_8:
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [AMSMetrics timeIntervalFromServerTime:v12];
  if (v13 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

- (AMSMetricsFigaroEventModifier)initWithMetricsDictionary:(id)dictionary overrideDictionary:(id)overrideDictionary
{
  dictionaryCopy = dictionary;
  overrideDictionaryCopy = overrideDictionary;
  v18.receiver = self;
  v18.super_class = AMSMetricsFigaroEventModifier;
  v8 = [(AMSMetricsFigaroEventModifier *)&v18 init];
  if (v8)
  {
    v9 = [overrideDictionaryCopy copy];
    overrideDictionary = v8->_overrideDictionary;
    v8->_overrideDictionary = v9;

    v11 = [dictionaryCopy copy];
    metricsDictionary = v8->_metricsDictionary;
    v8->_metricsDictionary = v11;

    v13 = [(AMSMetricsFigaroEventModifier *)v8 _fieldFiltersFromOverrides:overrideDictionaryCopy];
    fieldFilters = v8->_fieldFilters;
    v8->_fieldFilters = v13;

    if ([(NSDictionary *)v8->_fieldFilters count])
    {
      _createSampleSessionKey = [(AMSMetricsFigaroEventModifier *)v8 _createSampleSessionKey];
      sampleSessionKey = v8->_sampleSessionKey;
      v8->_sampleSessionKey = _createSampleSessionKey;
    }
  }

  return v8;
}

- (BOOL)fieldFiltersMatchEvent:(id)event
{
  eventCopy = event;
  fieldFilters = [(AMSMetricsFigaroEventModifier *)self fieldFilters];
  v6 = [fieldFilters count];

  if (v6)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    fieldFilters2 = [(AMSMetricsFigaroEventModifier *)self fieldFilters];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__AMSMetricsFigaroEventModifier_fieldFiltersMatchEvent___block_invoke;
    v10[3] = &unk_1E73B9A00;
    v11 = eventCopy;
    v12 = &v13;
    [fieldFilters2 enumerateKeysAndObjectsUsingBlock:v10];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __56__AMSMetricsFigaroEventModifier_fieldFiltersMatchEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [*(a1 + 32) propertyForBodyKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  }

  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) &= [v10 containsObject:v8];
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a4 = 1;
LABEL_8:
}

- (id)preparedEventWithEvent:(id)event
{
  eventCopy = event;
  metricsDictionary = [(AMSMetricsFigaroEventModifier *)self metricsDictionary];
  if (metricsDictionary)
  {
    v6 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"blacklistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if ([v7 count])
    {
      [eventCopy removePropertiesForKeys:v7];
    }

    v8 = [metricsDictionary objectForKeyedSubscript:@"blacklistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if ([v9 count])
    {
      [eventCopy removePropertiesForKeys:v9];
    }
  }

  return eventCopy;
}

- (id)reportingURLForEvent:(id)event
{
  eventCopy = event;
  topic = [eventCopy topic];

  if (!topic)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"metricsUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  metricsDictionary = [(AMSMetricsFigaroEventModifier *)self metricsDictionary];
  v10 = [metricsDictionary objectForKeyedSubscript:@"metricsUrl"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    absoluteString = 0;
    goto LABEL_12;
  }

  v7 = v10;

  if (!v7)
  {
LABEL_13:
    absoluteString = 0;
    goto LABEL_14;
  }

LABEL_9:
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 URLByAppendingPathComponent:@"2"];

  topic2 = [eventCopy topic];
  v10 = [v13 URLByAppendingPathComponent:topic2];

  absoluteString = [v10 absoluteString];
LABEL_12:

LABEL_14:
  v8 = absoluteString;

LABEL_15:

  return v8;
}

- (BOOL)shouldDropEvent:(id)event
{
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topic = [eventCopy topic];
  v6 = [topic length];

  v7 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"disabled"];
  if (!v6 || (objc_opt_respondsToSelector() & 1) != 0 && [v7 BOOLValue])
  {
    eventType = [eventCopy eventType];
LABEL_16:
    LOBYTE(v19) = 1;
    goto LABEL_17;
  }

  v9 = [(AMSMetricsFigaroEventModifier *)self _shouldSampleEvent:eventCopy];
  eventType2 = [eventCopy eventType];
  eventType = eventType2;
  if (!v9)
  {
    goto LABEL_16;
  }

  if ([eventType2 length])
  {
    v11 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"blacklistedEvents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if ([v12 containsObject:eventType])
    {
      v13 = +[AMSLogConfig sharedMetricsConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = AMSLogKey();
        topic2 = [eventCopy topic];
        *buf = 138544130;
        v31 = v15;
        v32 = 2114;
        v33 = v17;
        v34 = 2114;
        v35 = eventType;
        v36 = 2114;
        v37 = topic2;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Override blacklisted eventType: %{public}@ (topic: %{public}@)", buf, 0x2Au);
      }

      goto LABEL_16;
    }
  }

  if ([eventType length])
  {
    metricsDictionary = [(AMSMetricsFigaroEventModifier *)self metricsDictionary];
    v22 = [metricsDictionary objectForKeyedSubscript:@"blacklistedEvents"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v19 = [v23 containsObject:eventType];
    if (v19)
    {
      v24 = +[AMSLogConfig sharedMetricsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v29 = v26;
        v27 = AMSLogKey();
        topic3 = [eventCopy topic];
        *buf = 138544130;
        v31 = v26;
        v32 = 2114;
        v33 = v27;
        v34 = 2114;
        v35 = eventType;
        v36 = 2114;
        v37 = topic3;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Blacklisted eventType: %{public}@ (topic: %{public}@)", buf, 0x2Au);
      }
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

LABEL_17:

  return v19;
}

- (BOOL)shouldSkipEvent:(id)event
{
  v3 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"sendDisabled"];
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue] & 1) != 0;

  return v4;
}

- (id)_overridePropertyForKey:(id)key
{
  keyCopy = key;
  overrideDictionary = [(AMSMetricsFigaroEventModifier *)self overrideDictionary];
  v6 = [overrideDictionary objectForKeyedSubscript:@"properties"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:keyCopy];

  return v8;
}

- (BOOL)_shouldSampleEvent:(id)event
{
  if (([event preventSampling] & 1) == 0)
  {
    v5 = [(AMSMetricsFigaroEventModifier *)self _overridePropertyForKey:@"sampling"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;

      if (!v6)
      {
        v4 = 1;
        goto LABEL_12;
      }

      v5 = [v6 objectForKeyedSubscript:@"percentage"];
      v7 = [v6 objectForKeyedSubscript:@"duration"];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [v5 doubleValue];
        v9 = v8;
        [v7 doubleValue];
        v11 = v10;
        sampleSessionKey = [(AMSMetricsFigaroEventModifier *)self sampleSessionKey];
        v4 = [AMSDefaults shouldSampleWithPercentage:sampleSessionKey sessionDuration:v9 identifier:v11];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 0;
      v4 = 1;
    }

LABEL_12:
    return v4;
  }

  return 1;
}

- (id)_fieldFiltersFromOverrides:(id)overrides
{
  if (overrides)
  {
    v3 = MEMORY[0x1E695DFD8];
    overridesCopy = overrides;
    v5 = [v3 setWithArray:&unk_1F0779C10];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [overridesCopy objectForKeyedSubscript:@"fieldFilters"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__AMSMetricsFigaroEventModifier__fieldFiltersFromOverrides___block_invoke;
    v14[3] = &unk_1E73B9A28;
    v15 = v5;
    v10 = v6;
    v16 = v10;
    v11 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = v16;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__AMSMetricsFigaroEventModifier__fieldFiltersFromOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__AMSMetricsFigaroEventModifier__fieldFiltersFromOverrides___block_invoke_2;
    aBlock[3] = &unk_1E73B2E78;
    v8 = v7;
    v20 = v8;
    v9 = _Block_copy(aBlock);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v9[2](v9, *(*(&v15 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v12);
      }
    }

    else
    {
      (v9)[2](v9, v6);
    }

    [*(a1 + 40) setObject:v8 forKeyedSubscript:{v5, v15}];
  }
}

void __60__AMSMetricsFigaroEventModifier__fieldFiltersFromOverrides___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 32);
      v4 = [v6 stringValue];
      v5 = v3;
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
      v5 = *(a1 + 32);
    }

    [v5 addObject:v4];
  }
}

@end