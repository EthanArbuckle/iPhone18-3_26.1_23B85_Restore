@interface AMSEngagementAppEventFilterModel
+ (BOOL)matchEvent:(id)event toFilter:(id)filter withCache:(id)cache;
+ (BOOL)shouldCacheRegularExpressions;
+ (NSMutableDictionary)sharedRegexCache;
+ (id)_safeValueForKeyPath:(id)path inObject:(id)object;
+ (id)_valuesForCustomKeyPath:(id)path inObject:(id)object;
+ (id)regexForPattern:(id)pattern fromCache:(id)cache;
+ (id)stringFromValue:(id)value;
- (AMSEngagementAppEventFilterModel)initWithCacheObject:(id)object;
- (AMSEngagementAppEventFilterModel)initWithDefinition:(id)definition;
- (BOOL)allowsResponse;
- (BOOL)matchesEvent:(id)event;
- (id)exportObject;
- (unint64_t)components;
@end

@implementation AMSEngagementAppEventFilterModel

- (unint64_t)components
{
  definition = [(AMSEngagementAppEventFilterModel *)self definition];
  v4 = [definition objectForKeyedSubscript:@"components"];
  if (objc_opt_respondsToSelector())
  {
    definition2 = [(AMSEngagementAppEventFilterModel *)self definition];
    v6 = [definition2 objectForKeyedSubscript:@"components"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  return unsignedIntegerValue;
}

- (BOOL)allowsResponse
{
  definition = [(AMSEngagementAppEventFilterModel *)self definition];
  v3 = [definition objectForKeyedSubscript:@"allowsResponse"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (NSMutableDictionary)sharedRegexCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AMSEngagementAppEventFilterModel_sharedRegexCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_105 != -1)
  {
    dispatch_once(&_MergedGlobals_105, block);
  }

  v2 = qword_1ED6E2968;

  return v2;
}

uint64_t __52__AMSEngagementAppEventFilterModel_sharedRegexCache__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldCacheRegularExpressions])
  {
    v1 = objc_opt_new();
  }

  else
  {
    v1 = 0;
  }

  qword_1ED6E2968 = v1;

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)shouldCacheRegularExpressions
{
  currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
  isDaemon = [currentProcess isDaemon];

  return isDaemon ^ 1;
}

- (AMSEngagementAppEventFilterModel)initWithCacheObject:(id)object
{
  v4 = [object objectForKeyedSubscript:@"definition"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AMSEngagementAppEventFilterModel *)self initWithDefinition:v5];
  return v6;
}

- (AMSEngagementAppEventFilterModel)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v9.receiver = self;
  v9.super_class = AMSEngagementAppEventFilterModel;
  v6 = [(AMSEngagementAppEventFilterModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_definition, definition);
  }

  return v7;
}

- (id)exportObject
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"definition";
  definition = [(AMSEngagementAppEventFilterModel *)self definition];
  v3 = definition;
  v4 = MEMORY[0x1E695E0F8];
  if (definition)
  {
    v4 = definition;
  }

  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (BOOL)matchesEvent:(id)event
{
  eventCopy = event;
  definition = [(AMSEngagementAppEventFilterModel *)self definition];
  v6 = [definition objectForKeyedSubscript:@"filter"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sharedRegexCache = [objc_opt_class() sharedRegexCache];
  v9 = [AMSEngagementAppEventFilterModel matchEvent:eventCopy toFilter:v7 withCache:sharedRegexCache];

  return v9;
}

+ (BOOL)matchEvent:(id)event toFilter:(id)filter withCache:(id)cache
{
  v43 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  filterCopy = filter;
  cacheCopy = cache;
  if ([filterCopy count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = filterCopy;
    v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v27)
    {
      v28 = *v38;
      v26 = filterCopy;
      while (1)
      {
        v9 = 0;
LABEL_5:
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [obj objectForKeyedSubscript:v10];
        v13 = [self stringFromValue:v12];

        v14 = [self regexForPattern:v13 fromCache:cacheCopy];
        if (!v14)
        {
          break;
        }

        v15 = v14;
        context = v11;
        v16 = [self _valuesForCustomKeyPath:v10 inObject:eventCopy];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (!v18)
        {
LABEL_22:

          v11 = context;
          break;
        }

        v19 = v18;
        v20 = *v34;
LABEL_10:
        v21 = 0;
        while (1)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [self stringFromValue:*(*(&v33 + 1) + 8 * v21)];
          v23 = v22;
          if (v22)
          {
            if ([v15 rangeOfFirstMatchInString:v22 options:0 range:{0, objc_msgSend(v22, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v19)
            {
              goto LABEL_10;
            }

            goto LABEL_22;
          }
        }

        objc_autoreleasePoolPop(context);
        if (++v9 != v27)
        {
          goto LABEL_5;
        }

        v24 = 1;
        filterCopy = v26;
        v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (!v27)
        {
          goto LABEL_25;
        }
      }

      objc_autoreleasePoolPop(v11);
      v24 = 0;
      filterCopy = v26;
    }

    else
    {
      v24 = 1;
    }

LABEL_25:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)regexForPattern:(id)pattern fromCache:(id)cache
{
  v26 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  cacheCopy = cache;
  v7 = [cacheCopy objectForKeyedSubscript:patternCopy];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v17 = 0;
    v9 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:patternCopy options:0 error:&v17];
    v10 = v17;
    if (v10)
    {
      v11 = +[AMSLogConfig sharedEngagementConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSLogableError(v10);
        *buf = 138544130;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
        v22 = 2114;
        v23 = patternCopy;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Regex failure. keyPath = %{public}@, error = %{public}@", buf, 0x2Au);
      }
    }

    [cacheCopy setObject:v9 forKeyedSubscript:patternCopy];
    v8 = v9;
  }

  return v8;
}

+ (id)stringFromValue:(id)value
{
  if (value)
  {
    v4 = [value description];
  }

  else
  {
    v4 = @"(null)";
  }

  return v4;
}

+ (id)_safeValueForKeyPath:(id)path inObject:(id)object
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  if (pathCopy && [pathCopy length])
  {
    v7 = [pathCopy componentsSeparatedByString:@"."];
    v8 = objectCopy;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        v13 = 0;
        v14 = v8;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v18 + 1) + 8 * v13);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          v8 = [v14 objectForKey:{v15, v18}];

          if (!v8)
          {
            v14 = 0;
LABEL_15:

            v16 = 0;
            goto LABEL_16;
          }

          ++v13;
          v14 = v8;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = v8;
    v16 = v14;
LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_valuesForCustomKeyPath:(id)path inObject:(id)object
{
  v47[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v8 = [pathCopy rangeOfString:@"["];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [self _safeValueForKeyPath:pathCopy inObject:objectCopy];
    v10 = v9;
    if (v9)
    {
      v47[0] = v9;
      array2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    }

    else
    {
      array2 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v12 = v8;
    v10 = [pathCopy substringToIndex:v8];
    if ([v10 length])
    {
      v13 = [self _safeValueForKeyPath:v10 inObject:objectCopy];
    }

    else
    {
      v13 = objectCopy;
    }

    v14 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      v16 = [pathCopy rangeOfString:@"]" options:0 range:{v12, objc_msgSend(pathCopy, "length") - v12}];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = +[AMSLogConfig sharedEngagementConfig];
        if (!v17)
        {
          v17 = +[AMSLogConfig sharedConfig];
        }

        v39 = v17;
        oSLogObject = [v17 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = pathCopy;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "Malformed key path with unclosed bracket: %{public}@", buf, 0xCu);
        }

        array2 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v19 = v16;
        v20 = [pathCopy substringWithRange:{v12 + 1, v16 + ~v12}];
        v21 = v19 + 1;
        if (v21 >= [pathCopy length])
        {
          oSLogObject = 0;
        }

        else
        {
          oSLogObject = [pathCopy substringFromIndex:v21];
        }

        if ([oSLogObject hasPrefix:@"."])
        {
          v22 = [oSLogObject substringFromIndex:1];

          oSLogObject = v22;
        }

        array = [MEMORY[0x1E695DF70] array];
        v38 = array;
        if ([v20 length])
        {
          integerValue = [v20 integerValue];
          if ((integerValue & 0x8000000000000000) == 0)
          {
            v25 = integerValue;
            if (integerValue < [v15 count])
            {
              v26 = [v15 objectAtIndexedSubscript:v25];
              [v38 addObject:v26];
            }
          }
        }

        else
        {
          [array addObjectsFromArray:v15];
        }

        v39 = v20;
        if (oSLogObject && [oSLogObject length])
        {
          v35 = v15;
          v36 = v14;
          v37 = objectCopy;
          array2 = [MEMORY[0x1E695DF70] array];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v27 = v38;
          v28 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v41;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v41 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = [self _valuesForCustomKeyPath:oSLogObject inObject:*(*(&v40 + 1) + 8 * i)];
                [array2 addObjectsFromArray:v32];
              }

              v29 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v29);
          }

          v14 = v36;
          objectCopy = v37;
          v15 = v35;
          v33 = v38;
        }

        else
        {
          v33 = v38;
          array2 = v38;
        }
      }
    }

    else
    {
      array2 = MEMORY[0x1E695E0F0];
    }
  }

  return array2;
}

@end