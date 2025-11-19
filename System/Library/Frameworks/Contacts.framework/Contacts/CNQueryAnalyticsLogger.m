@interface CNQueryAnalyticsLogger
- (CNPair)processIdentity;
- (CNQueryAnalyticsLogger)initWithAuditToken:(id)a3 assumedIdentity:(id)a4;
- (void)recordQueryWithFetchRequest:(id)a3;
@end

@implementation CNQueryAnalyticsLogger

- (CNPair)processIdentity
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __41__CNQueryAnalyticsLogger_processIdentity__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    v4 = [v2 auditToken];
    if (v4)
    {
      v5 = [MEMORY[0x1E6996640] bundleIdentifierForAuditToken:v4];
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x1E69967A8] pairWithFirst:v5 second:@"b"];
      }

      else
      {
        v10 = [MEMORY[0x1E6996640] processNameForAuditToken:v4];
        if (v10)
        {
          v11 = @"p";
          v12 = v10;
        }

        else
        {
          v12 = &stru_1F094DAB0;
          v11 = @"u";
        }

        v7 = [MEMORY[0x1E69967A8] pairWithFirst:v12 second:v11];

        v6 = 0;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69967A8];
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v9 = [v6 processName];
      v7 = [v8 pairWithFirst:v9 second:@"p"];
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    *(v13 + 8) = v7;

    v3 = *(*(a1 + 32) + 8);
  }

  return v3;
}

- (CNQueryAnalyticsLogger)initWithAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CNQueryAnalyticsLogger;
  v9 = [(CNQueryAnalyticsLogger *)&v18 init];
  if (v9 && ([MEMORY[0x1E69966E8] currentEnvironment], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "featureFlags"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isFeatureEnabled:", 4), v11, v10, v12))
  {
    objc_storeStrong(&v9->_auditToken, a3);
    objc_storeStrong(&v9->_assumedIdentity, a4);
    v13 = [MEMORY[0x1E69966E8] currentEnvironment];
    v14 = [v13 keyboardStateMonitor];
    keyboardStateMonitor = v9->_keyboardStateMonitor;
    v9->_keyboardStateMonitor = v14;

    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)recordQueryWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 predicate];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [v4 keyboardState];
    if (v7)
    {
      v8 = [v4 keyboardState];
      [v8 integerValue];
    }

    else
    {
      v8 = [(CNQueryAnalyticsLogger *)self keyboardStateMonitor];
      [v8 keyboardState];
    }

    v9 = [(CNQueryAnalyticsLogger *)self assumedIdentity];
    if (v9)
    {
      v10 = [(CNQueryAnalyticsLogger *)self assumedIdentity];
      v11 = tcc_object_copy_description();
    }

    else
    {
      v11 = &stru_1F094DAB0;
    }

    v12 = [(CNQueryAnalyticsLogger *)self processIdentity];
    v13 = [v12 first];
    v14 = [v12 second];
    v21 = v11;
    v19 = v6;
    v20 = v13;
    v15 = v11;
    v16 = v14;
    v17 = v13;
    v18 = v6;
    AnalyticsSendEventLazy();
  }
}

id __54__CNQueryAnalyticsLogger_recordQueryWithFetchRequest___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = @"keyboardState";
  v2 = *(a1 + 64);
  if (v2 > 3)
  {
    v3 = @"INVALID";
  }

  else
  {
    v3 = *(&off_1E7413220 + v2);
  }

  v11[0] = v3;
  v10[1] = @"hasHighSpecificity";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cn_hasHighSpecificity")}];
  v11[1] = v4;
  v10[2] = @"predicateClass";
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
  }

  else
  {
    v7 = @"(Null)";
  }

  v11[2] = v7;
  v12 = *(a1 + 40);
  v10[3] = @"processIdentity";
  v10[4] = @"processIdentityType";
  v10[5] = @"assumedIdentity";
  v13 = *(a1 + 56);
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
  if (v5)
  {
  }

  return v8;
}

@end