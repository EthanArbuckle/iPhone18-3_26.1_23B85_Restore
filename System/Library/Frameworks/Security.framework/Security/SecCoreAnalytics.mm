@interface SecCoreAnalytics
+ (id)appNameFromPath:(id)a3;
+ (void)sendEvent:(id)a3 event:(id)a4;
+ (void)sendEventLazy:(id)a3 builder:(id)a4;
@end

@implementation SecCoreAnalytics

+ (id)appNameFromPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:v3];
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E695E480];
    v12 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
    v13 = v12;
    if (v12)
    {
      v14 = CFBundleCopyBundleURL(v12);

      if (v14)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v14];

        if (v5)
        {
LABEL_3:
          v6 = [v5 infoDictionary];
          v7 = [v6 objectForKey:@"CFBundleVisibleComponentName"];
          if (!v7)
          {
            v15 = [v6 objectForKey:@"CFBundleDisplayName"];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = [v6 objectForKey:@"CFBundleName"];
            }

            v8 = v17;

            goto LABEL_14;
          }

          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v10 = 0;
    }
  }

LABEL_23:
  v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  v5 = v21;
  if (!v21)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  v22 = CFBundleCopyInfoDictionaryForURL(v21);
  v6 = v22;
  if (v22)
  {
    v23 = [(__CFDictionary *)v22 objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
    if (v23 || ([v6 objectForKeyedSubscript:@"CFBundleDisplayName"], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v23;
      goto LABEL_15;
    }

    v8 = [v6 objectForKeyedSubscript:@"CFBundleName"];
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v25 = 0;
  v24 = [v5 getResourceValue:&v25 forKey:*MEMORY[0x1E695DC30] error:0];
  v7 = v25;
  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_14;
  }

LABEL_4:
  v8 = v7;
LABEL_14:

LABEL_15:
  if (!v8 || [&unk_1EFAAC5F8 indexOfObject:v8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [v3 lastPathComponent];
    v19 = [v18 stringByDeletingPathExtension];

    v8 = v19;
  }

  return v8;
}

+ (void)sendEventLazy:(id)a3 builder:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gSecCoreAnalyticsEnabled)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = secLogObjForScope("seccoreanalytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping sending event %@ due to process configuration", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)sendEvent:(id)a3 event:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gSecCoreAnalyticsEnabled)
  {
    AnalyticsSendEvent();
  }

  else
  {
    v5 = secLogObjForScope("seccoreanalytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping sending event %@ due to process configuration", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end