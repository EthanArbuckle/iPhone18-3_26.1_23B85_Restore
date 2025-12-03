@interface SFAnalyticsMatchingRule
- (BOOL)isSubsetMatch:(id)match target:(id)target;
- (BOOL)matchAttributes:(id)attributes eventClass:(int64_t)class processName:(id)name logger:(id)logger;
- (BOOL)valueMatch:(id)match target:(id)target;
- (SFAnalyticsMatchingRule)initWithSFARule:(id)rule logger:(id)logger;
- (id)armKey;
- (id)cachedMatchDictionary;
- (id)description;
- (id)lastMatchTimeKey;
- (unsigned)doAction:(id)action attributes:(id)attributes logger:(id)logger;
@end

@implementation SFAnalyticsMatchingRule

- (unsigned)doAction:(id)action attributes:(id)attributes logger:(id)logger
{
  v54 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  attributesCopy = attributes;
  loggerCopy = logger;
  rule = [(SFAnalyticsMatchingRule *)self rule];
  action = [rule action];

  if (action)
  {
    if ([action hasTtr])
    {
      v13 = [actionCopy shouldRatelimit:loggerCopy rule:self];
      v14 = getOSLog();
      drop = v14;
      if (!v13)
      {
        v48 = loggerCopy;
        v49 = attributesCopy;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          rule2 = [(SFAnalyticsMatchingRule *)self rule];
          eventType = [rule2 eventType];
          cachedMatchDictionary = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
          *buf = 138412546;
          v51 = eventType;
          v52 = 2112;
          v53 = cachedMatchDictionary;
          _os_log_impl(&dword_1887D2000, drop, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger ttr: %@: %@", buf, 0x16u);
        }

        drop = [action ttr];
        alert = [drop alert];
        v30 = [drop description];
        radarnumber = [action radarnumber];
        componentName = [drop componentName];
        componentVersion = [drop componentVersion];
        componentID = [drop componentID];
        attributesCopy = v49;
        [actionCopy tapToRadar:alert description:v30 radar:radarnumber componentName:componentName componentVersion:componentVersion componentID:componentID attributes:v49];

        v18 = 0;
        loggerCopy = v48;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        rule3 = [(SFAnalyticsMatchingRule *)self rule];
        eventType2 = [rule3 eventType];
        *buf = 138412290;
        v51 = eventType2;
        _os_log_impl(&dword_1887D2000, drop, OS_LOG_TYPE_INFO, "SFACollection ratelimit ttr: %@", buf, 0xCu);
      }

LABEL_30:
      v18 = 0;
LABEL_31:

      goto LABEL_32;
    }

    if ([action hasAbc])
    {
      v19 = [actionCopy shouldRatelimit:loggerCopy rule:self];
      v20 = getOSLog();
      drop = v20;
      if (!v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          rule4 = [(SFAnalyticsMatchingRule *)self rule];
          eventType3 = [rule4 eventType];
          cachedMatchDictionary2 = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
          *buf = 138412546;
          v51 = eventType3;
          v52 = 2112;
          v53 = cachedMatchDictionary2;
          _os_log_impl(&dword_1887D2000, drop, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger abc: %@ %@", buf, 0x16u);
        }

        drop = [action abc];
        domain = [drop domain];
        if (domain)
        {
        }

        else
        {
          type = [drop type];

          if (!type)
          {
            goto LABEL_30;
          }
        }

        type2 = [drop type];
        subtype = [drop subtype];
        domain2 = [drop domain];
        [actionCopy autoBugCaptureWithType:type2 subType:subtype domain:domain2];

LABEL_29:
        goto LABEL_30;
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      type2 = [(SFAnalyticsMatchingRule *)self rule];
      subtype = [type2 eventType];
      *buf = 138412290;
      v51 = subtype;
      v23 = "SFACollection ratelimit abc: %@";
      v24 = drop;
      v25 = OS_LOG_TYPE_INFO;
    }

    else
    {
      hasDrop = [action hasDrop];
      drop = getOSLog();
      v36 = os_log_type_enabled(drop, OS_LOG_TYPE_DEFAULT);
      if (hasDrop)
      {
        if (v36)
        {
          rule5 = [(SFAnalyticsMatchingRule *)self rule];
          eventType4 = [rule5 eventType];
          *buf = 138412290;
          v51 = eventType4;
          _os_log_impl(&dword_1887D2000, drop, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger drop: %@", buf, 0xCu);
        }

        drop = [action drop];
        excludeEvent = [drop excludeEvent];
        if ([drop excludeCount])
        {
          v18 = excludeEvent | 2;
        }

        else
        {
          v18 = excludeEvent;
        }

        goto LABEL_31;
      }

      if (!v36)
      {
        goto LABEL_30;
      }

      type2 = [(SFAnalyticsMatchingRule *)self rule];
      subtype = [type2 eventType];
      *buf = 138412290;
      v51 = subtype;
      v23 = "SFACollection unknown action: %@";
      v24 = drop;
      v25 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1887D2000, v24, v25, v23, buf, 0xCu);
    goto LABEL_29;
  }

  v18 = 0;
LABEL_32:

  v46 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)matchAttributes:(id)attributes eventClass:(int64_t)class processName:(id)name logger:(id)logger
{
  attributesCopy = attributes;
  nameCopy = name;
  loggerCopy = logger;
  rule = [(SFAnalyticsMatchingRule *)self rule];
  processName = [rule processName];

  if (processName)
  {
    rule2 = [(SFAnalyticsMatchingRule *)self rule];
    processName2 = [rule2 processName];
    v17 = [nameCopy isEqual:processName2];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  rule3 = [(SFAnalyticsMatchingRule *)self rule];
  matchOnFirstFailure = [rule3 matchOnFirstFailure];

  if (!class && matchOnFirstFailure && ![(SFAnalyticsMatchingRule *)self firstMatchArmed])
  {
    armKey = [(SFAnalyticsMatchingRule *)self armKey];
    [loggerCopy setNumberProperty:MEMORY[0x1E695E118] forKey:armKey];

    [(SFAnalyticsMatchingRule *)self setFirstMatchArmed:1];
  }

  rule4 = [(SFAnalyticsMatchingRule *)self rule];
  hasMatch = [rule4 hasMatch];

  if (hasMatch)
  {
    cachedMatchDictionary = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
    if (!cachedMatchDictionary)
    {
      goto LABEL_25;
    }

    v24 = cachedMatchDictionary;
    v25 = [(SFAnalyticsMatchingRule *)self isSubsetMatch:cachedMatchDictionary target:attributesCopy];

    if (!v25)
    {
      goto LABEL_25;
    }
  }

  rule5 = [(SFAnalyticsMatchingRule *)self rule];
  matchOnFirstFailure2 = [rule5 matchOnFirstFailure];

  if ((class - 1) <= 1 && matchOnFirstFailure2)
  {
    armKey2 = [(SFAnalyticsMatchingRule *)self armKey];
    if (![(SFAnalyticsMatchingRule *)self firstMatchArmed])
    {

      goto LABEL_25;
    }

    [loggerCopy setNumberProperty:0 forKey:armKey2];
    [(SFAnalyticsMatchingRule *)self setFirstMatchArmed:0];
  }

  rule6 = [(SFAnalyticsMatchingRule *)self rule];
  eventClass = [rule6 eventClass];

  v31 = 0;
  if (eventClass > 10)
  {
    if (eventClass <= 12)
    {
      if (eventClass == 11)
      {
        if (class == 1)
        {
          goto LABEL_36;
        }
      }

      else if (class == 2)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (eventClass != 13)
    {
      if (eventClass != 14)
      {
        goto LABEL_26;
      }

      if (class == 4)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (class == 3)
    {
LABEL_36:
      v31 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  switch(eventClass)
  {
    case 0:
      if ((class - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    case 1:
      goto LABEL_36;
    case 10:
      if (!class)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
  }

LABEL_26:

  return v31;
}

- (id)armKey
{
  v3 = objc_opt_class();
  eventName = [(SFAnalyticsMatchingRule *)self eventName];
  v5 = [v3 armKeyForEventName:eventName];

  return v5;
}

- (id)cachedMatchDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  matchingDictionary = [(SFAnalyticsMatchingRule *)selfCopy matchingDictionary];

  if (matchingDictionary)
  {
    goto LABEL_2;
  }

  v5 = MEMORY[0x1E696AE40];
  rule = [(SFAnalyticsMatchingRule *)selfCopy rule];
  match = [rule match];
  v16 = 0;
  v8 = [v5 propertyListWithData:match options:0 format:0 error:&v16];
  v9 = v16;

  if (!v8 || v9)
  {
    v10 = getOSLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v18 = v9;
    v11 = "SFAnalyticsMatchingRule match dictionary wrong: %@";
    v12 = v10;
    v13 = 12;
LABEL_15:
    _os_log_error_impl(&dword_1887D2000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFAnalyticsMatchingRule *)selfCopy setMatchingDictionary:v8];

LABEL_2:
    objc_sync_exit(selfCopy);

    matchingDictionary2 = [(SFAnalyticsMatchingRule *)selfCopy matchingDictionary];
    goto LABEL_11;
  }

  v10 = getOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v11 = "SFAnalyticsMatchingRule match not dictionary";
    v12 = v10;
    v13 = 2;
    goto LABEL_15;
  }

LABEL_10:

  objc_sync_exit(selfCopy);
  matchingDictionary2 = 0;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];

  return matchingDictionary2;
}

- (id)lastMatchTimeKey
{
  v2 = MEMORY[0x1E696AEC0];
  rule = [(SFAnalyticsMatchingRule *)self rule];
  eventType = [rule eventType];
  v5 = [v2 stringWithFormat:@"SFA-LastMatchRule-%@-", eventType];

  return v5;
}

- (BOOL)isSubsetMatch:(id)match target:(id)target
{
  v26 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  targetCopy = target;
  v8 = [matchCopy count];
  if (v8 <= [targetCopy count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = matchCopy;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [targetCopy objectForKeyedSubscript:{v15, v21}];
          v17 = [v10 objectForKeyedSubscript:v15];
          v18 = [(SFAnalyticsMatchingRule *)self valueMatch:v17 target:v16];

          if (!v18)
          {
            v9 = 0;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)valueMatch:(id)match target:(id)target
{
  v35 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  targetCopy = target;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [matchCopy isEqual:targetCopy];
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SFAnalyticsMatchingRule *)self isSubsetMatch:matchCopy target:targetCopy];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = matchCopy;
    v24 = targetCopy;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v12;
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v24;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (!v16)
          {

LABEL_28:
            v9 = 0;
            goto LABEL_29;
          }

          v17 = v16;
          v18 = 0;
          v19 = *v26;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v18 |= [(SFAnalyticsMatchingRule *)self valueMatch:v14 target:*(*(&v25 + 1) + 8 * j)];
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);

          if ((v18 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v9 = 1;
        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_29:
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  eventName = [(SFAnalyticsMatchingRule *)self eventName];
  cachedMatchDictionary = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
  lastMatch = [(SFAnalyticsMatchingRule *)self lastMatch];
  v7 = [v3 stringWithFormat:@"<SFAnalyticsMatchingRule: %@ match: %@ %@>", eventName, cachedMatchDictionary, lastMatch];

  return v7;
}

- (SFAnalyticsMatchingRule)initWithSFARule:(id)rule logger:(id)logger
{
  ruleCopy = rule;
  loggerCopy = logger;
  v16.receiver = self;
  v16.super_class = SFAnalyticsMatchingRule;
  v8 = [(SFAnalyticsMatchingRule *)&v16 init];
  if (v8)
  {
    eventType = [ruleCopy eventType];
    [(SFAnalyticsMatchingRule *)v8 setEventName:eventType];

    [(SFAnalyticsMatchingRule *)v8 setRule:ruleCopy];
    lastMatchTimeKey = [(SFAnalyticsMatchingRule *)v8 lastMatchTimeKey];
    v11 = [loggerCopy datePropertyForKey:lastMatchTimeKey];
    [(SFAnalyticsMatchingRule *)v8 setLastMatch:v11];

    armKey = [(SFAnalyticsMatchingRule *)v8 armKey];
    v13 = [loggerCopy numberPropertyForKey:armKey];

    if (v13)
    {
      [(SFAnalyticsMatchingRule *)v8 setFirstMatchArmed:1];
    }

    v14 = v8;
  }

  return v8;
}

@end