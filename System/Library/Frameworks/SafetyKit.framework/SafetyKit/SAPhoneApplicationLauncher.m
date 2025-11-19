@interface SAPhoneApplicationLauncher
- (SAPhoneApplicationLauncher)init;
- (void)cleanupInvalidAssertions;
- (void)openApplicationInBackgroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5;
@end

@implementation SAPhoneApplicationLauncher

- (SAPhoneApplicationLauncher)init
{
  v6.receiver = self;
  v6.super_class = SAPhoneApplicationLauncher;
  v2 = [(SAPhoneApplicationLauncher *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assertionMap = v2->_assertionMap;
    v2->_assertionMap = v3;
  }

  return v2;
}

- (void)openApplicationInBackgroundWithBundleId:(id)a3 withReason:(int64_t)a4 completion:(id)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v21 = a4;
  v9 = [SABundleManager reasonToAttributeName:a4];
  v10 = v7;
  v23 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:v7];
  v11 = [MEMORY[0x277D46EB0] contextWithIdentity:?];
  v12 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.SafetyKit" name:v9];
  v35[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v11 setAttributes:v13];

  [v11 setExplanation:v9];
  v14 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v11];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  LOBYTE(v7) = [v14 execute:&v26 assertion:&v25 error:&v24];
  v15 = v26;
  v16 = v25;
  v17 = v24;
  v18 = sa_default_log();
  v19 = v18;
  if (v7)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v28 = "[SAPhoneApplicationLauncher openApplicationInBackgroundWithBundleId:withReason:completion:]";
      v29 = 2112;
      v30 = v10;
      v31 = 2048;
      v32 = v21;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_DEFAULT, "%s - Successfully launched bundle, bundleId: %@, reason: %lu, process: %@", buf, 0x2Au);
    }

    -[SAPhoneApplicationLauncher addAssertion:forProcessId:](self, "addAssertion:forProcessId:", v16, [v15 pid]);
    if (v8)
    {
      v8[2](v8, 1, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v28 = "[SAPhoneApplicationLauncher openApplicationInBackgroundWithBundleId:withReason:completion:]";
      v29 = 2112;
      v30 = v10;
      v31 = 2048;
      v32 = v21;
      v33 = 2112;
      v34 = v17;
      _os_log_error_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_ERROR, "%s - Unable to launch bundle, bundleId: %@, reason: %lu, error: %@", buf, 0x2Au);
    }

    if (v8)
    {
      (v8)[2](v8, 0, v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cleanupInvalidAssertions
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(NSMutableDictionary *)self->_assertionMap allKeys];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)self->_assertionMap objectForKeyedSubscript:v6];
        v8 = objc_opt_new();
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isValid])
              {
                [v8 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        v15 = [v8 count];
        assertionMap = self->_assertionMap;
        if (v15)
        {
          [(NSMutableDictionary *)assertionMap setObject:v8 forKeyedSubscript:v6];
        }

        else
        {
          [(NSMutableDictionary *)assertionMap removeObjectForKey:v6];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end