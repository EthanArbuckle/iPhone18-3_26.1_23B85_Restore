@interface SFAnalyticsMatchingRule
- (BOOL)isSubsetMatch:(id)a3 target:(id)a4;
- (BOOL)matchAttributes:(id)a3 eventClass:(int64_t)a4 processName:(id)a5 logger:(id)a6;
- (BOOL)valueMatch:(id)a3 target:(id)a4;
- (SFAnalyticsMatchingRule)initWithSFARule:(id)a3 logger:(id)a4;
- (id)armKey;
- (id)cachedMatchDictionary;
- (id)description;
- (id)lastMatchTimeKey;
- (unsigned)doAction:(id)a3 attributes:(id)a4 logger:(id)a5;
@end

@implementation SFAnalyticsMatchingRule

- (unsigned)doAction:(id)a3 attributes:(id)a4 logger:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SFAnalyticsMatchingRule *)self rule];
  v12 = [v11 action];

  if (v12)
  {
    if ([v12 hasTtr])
    {
      v13 = [v8 shouldRatelimit:v10 rule:self];
      v14 = getOSLog();
      v15 = v14;
      if (!v13)
      {
        v48 = v10;
        v49 = v9;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(SFAnalyticsMatchingRule *)self rule];
          v27 = [v26 eventType];
          v28 = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
          *buf = 138412546;
          v51 = v27;
          v52 = 2112;
          v53 = v28;
          _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger ttr: %@: %@", buf, 0x16u);
        }

        v15 = [v12 ttr];
        v29 = [v15 alert];
        v30 = [v15 description];
        v31 = [v12 radarnumber];
        v32 = [v15 componentName];
        v33 = [v15 componentVersion];
        v34 = [v15 componentID];
        v9 = v49;
        [v8 tapToRadar:v29 description:v30 radar:v31 componentName:v32 componentVersion:v33 componentID:v34 attributes:v49];

        v18 = 0;
        v10 = v48;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = [(SFAnalyticsMatchingRule *)self rule];
        v17 = [v16 eventType];
        *buf = 138412290;
        v51 = v17;
        _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_INFO, "SFACollection ratelimit ttr: %@", buf, 0xCu);
      }

LABEL_30:
      v18 = 0;
LABEL_31:

      goto LABEL_32;
    }

    if ([v12 hasAbc])
    {
      v19 = [v8 shouldRatelimit:v10 rule:self];
      v20 = getOSLog();
      v15 = v20;
      if (!v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(SFAnalyticsMatchingRule *)self rule];
          v41 = [v40 eventType];
          v42 = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
          *buf = 138412546;
          v51 = v41;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger abc: %@ %@", buf, 0x16u);
        }

        v15 = [v12 abc];
        v43 = [v15 domain];
        if (v43)
        {
        }

        else
        {
          v44 = [v15 type];

          if (!v44)
          {
            goto LABEL_30;
          }
        }

        v21 = [v15 type];
        v22 = [v15 subtype];
        v45 = [v15 domain];
        [v8 autoBugCaptureWithType:v21 subType:v22 domain:v45];

LABEL_29:
        goto LABEL_30;
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v21 = [(SFAnalyticsMatchingRule *)self rule];
      v22 = [v21 eventType];
      *buf = 138412290;
      v51 = v22;
      v23 = "SFACollection ratelimit abc: %@";
      v24 = v15;
      v25 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v35 = [v12 hasDrop];
      v15 = getOSLog();
      v36 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v36)
        {
          v37 = [(SFAnalyticsMatchingRule *)self rule];
          v38 = [v37 eventType];
          *buf = 138412290;
          v51 = v38;
          _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SFACollection action trigger drop: %@", buf, 0xCu);
        }

        v15 = [v12 drop];
        v39 = [v15 excludeEvent];
        if ([v15 excludeCount])
        {
          v18 = v39 | 2;
        }

        else
        {
          v18 = v39;
        }

        goto LABEL_31;
      }

      if (!v36)
      {
        goto LABEL_30;
      }

      v21 = [(SFAnalyticsMatchingRule *)self rule];
      v22 = [v21 eventType];
      *buf = 138412290;
      v51 = v22;
      v23 = "SFACollection unknown action: %@";
      v24 = v15;
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

- (BOOL)matchAttributes:(id)a3 eventClass:(int64_t)a4 processName:(id)a5 logger:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SFAnalyticsMatchingRule *)self rule];
  v14 = [v13 processName];

  if (v14)
  {
    v15 = [(SFAnalyticsMatchingRule *)self rule];
    v16 = [v15 processName];
    v17 = [v11 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  v18 = [(SFAnalyticsMatchingRule *)self rule];
  v19 = [v18 matchOnFirstFailure];

  if (!a4 && v19 && ![(SFAnalyticsMatchingRule *)self firstMatchArmed])
  {
    v20 = [(SFAnalyticsMatchingRule *)self armKey];
    [v12 setNumberProperty:MEMORY[0x1E695E118] forKey:v20];

    [(SFAnalyticsMatchingRule *)self setFirstMatchArmed:1];
  }

  v21 = [(SFAnalyticsMatchingRule *)self rule];
  v22 = [v21 hasMatch];

  if (v22)
  {
    v23 = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
    if (!v23)
    {
      goto LABEL_25;
    }

    v24 = v23;
    v25 = [(SFAnalyticsMatchingRule *)self isSubsetMatch:v23 target:v10];

    if (!v25)
    {
      goto LABEL_25;
    }
  }

  v26 = [(SFAnalyticsMatchingRule *)self rule];
  v27 = [v26 matchOnFirstFailure];

  if ((a4 - 1) <= 1 && v27)
  {
    v28 = [(SFAnalyticsMatchingRule *)self armKey];
    if (![(SFAnalyticsMatchingRule *)self firstMatchArmed])
    {

      goto LABEL_25;
    }

    [v12 setNumberProperty:0 forKey:v28];
    [(SFAnalyticsMatchingRule *)self setFirstMatchArmed:0];
  }

  v29 = [(SFAnalyticsMatchingRule *)self rule];
  v30 = [v29 eventClass];

  v31 = 0;
  if (v30 > 10)
  {
    if (v30 <= 12)
    {
      if (v30 == 11)
      {
        if (a4 == 1)
        {
          goto LABEL_36;
        }
      }

      else if (a4 == 2)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v30 != 13)
    {
      if (v30 != 14)
      {
        goto LABEL_26;
      }

      if (a4 == 4)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (a4 == 3)
    {
LABEL_36:
      v31 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  switch(v30)
  {
    case 0:
      if ((a4 - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    case 1:
      goto LABEL_36;
    case 10:
      if (!a4)
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
  v4 = [(SFAnalyticsMatchingRule *)self eventName];
  v5 = [v3 armKeyForEventName:v4];

  return v5;
}

- (id)cachedMatchDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SFAnalyticsMatchingRule *)v2 matchingDictionary];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = MEMORY[0x1E696AE40];
  v6 = [(SFAnalyticsMatchingRule *)v2 rule];
  v7 = [v6 match];
  v16 = 0;
  v8 = [v5 propertyListWithData:v7 options:0 format:0 error:&v16];
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
    [(SFAnalyticsMatchingRule *)v2 setMatchingDictionary:v8];

LABEL_2:
    objc_sync_exit(v2);

    v4 = [(SFAnalyticsMatchingRule *)v2 matchingDictionary];
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

  objc_sync_exit(v2);
  v4 = 0;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)lastMatchTimeKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SFAnalyticsMatchingRule *)self rule];
  v4 = [v3 eventType];
  v5 = [v2 stringWithFormat:@"SFA-LastMatchRule-%@-", v4];

  return v5;
}

- (BOOL)isSubsetMatch:(id)a3 target:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 <= [v7 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
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
          v16 = [v7 objectForKeyedSubscript:{v15, v21}];
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

- (BOOL)valueMatch:(id)a3 target:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v6 isEqual:v7];
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SFAnalyticsMatchingRule *)self isSubsetMatch:v6 target:v7];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v24 = v7;
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
  v4 = [(SFAnalyticsMatchingRule *)self eventName];
  v5 = [(SFAnalyticsMatchingRule *)self cachedMatchDictionary];
  v6 = [(SFAnalyticsMatchingRule *)self lastMatch];
  v7 = [v3 stringWithFormat:@"<SFAnalyticsMatchingRule: %@ match: %@ %@>", v4, v5, v6];

  return v7;
}

- (SFAnalyticsMatchingRule)initWithSFARule:(id)a3 logger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SFAnalyticsMatchingRule;
  v8 = [(SFAnalyticsMatchingRule *)&v16 init];
  if (v8)
  {
    v9 = [v6 eventType];
    [(SFAnalyticsMatchingRule *)v8 setEventName:v9];

    [(SFAnalyticsMatchingRule *)v8 setRule:v6];
    v10 = [(SFAnalyticsMatchingRule *)v8 lastMatchTimeKey];
    v11 = [v7 datePropertyForKey:v10];
    [(SFAnalyticsMatchingRule *)v8 setLastMatch:v11];

    v12 = [(SFAnalyticsMatchingRule *)v8 armKey];
    v13 = [v7 numberPropertyForKey:v12];

    if (v13)
    {
      [(SFAnalyticsMatchingRule *)v8 setFirstMatchArmed:1];
    }

    v14 = v8;
  }

  return v8;
}

@end