@interface BCSAppRanker
+ (id)bundleIdentifierOfLastUsedAppForURL:(id)a3;
+ (id)orderApps:(id)a3 forLastUsedApp:(id)a4;
+ (void)setLastUsedApp:(id)a3 forURL:(id)a4;
@end

@implementation BCSAppRanker

+ (id)orderApps:(id)a3 forLastUsedApp:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] <= 1 || !v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSAppRanker: Found last used app for scanned URL", buf, 2u);
  }

  v7 = [v5 firstObject];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 isEqualToString:v8];

  if (!v9)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __41__BCSAppRanker_orderApps_forLastUsedApp___block_invoke;
    v16 = &unk_278CFEC20;
    v17 = v6;
    v18 = buf;
    v12 = [v5 indexOfObjectPassingTest:&v13];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v5;
    }

    else
    {
      v10 = [v5 mutableCopy];
      [v10 removeObjectAtIndex:v12];
      [v10 insertObject:*(v20 + 5) atIndex:0];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
LABEL_6:
    v10 = v5;
  }

  return v10;
}

uint64_t __41__BCSAppRanker_orderApps_forLastUsedApp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [v7 bundleIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  return v10;
}

+ (void)setLastUsedApp:(id)a3 forURL:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 host];
  if ([v5 _bcs_isUPIURL])
  {
    v7 = [v5 scheme];

    v8 = @"schemesToLastUsedApps";
    v6 = v7;
  }

  else
  {
    v8 = @"hostsToLastUsedApps";
  }

  if ([v6 length])
  {
    v9 = [MEMORY[0x277CBEBD0] bcs_barcodeSupportDefaults];
    v10 = [v9 valueForKey:v8];
    v11 = [v10 objectForKeyedSubscript:v6];
    if (v11 != v14 && ([v11 isEqualToString:v14] & 1) == 0)
    {
      if (v10)
      {
        v12 = [v10 mutableCopy];
      }

      else
      {
        v12 = [MEMORY[0x277CBEB38] dictionary];
      }

      v13 = v12;
      if (v14)
      {
        [v12 setObject:v14 forKeyedSubscript:v6];
      }

      else
      {
        [v12 removeObjectForKey:v6];
      }

      [v9 setObject:v13 forKey:v8];
      [v9 synchronize];
    }
  }
}

+ (id)bundleIdentifierOfLastUsedAppForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if ([v3 _bcs_isUPIURL])
  {
    v5 = [v3 scheme];

    v6 = @"schemesToLastUsedApps";
    v4 = v5;
  }

  else
  {
    v6 = @"hostsToLastUsedApps";
  }

  v7 = [MEMORY[0x277CBEBD0] bcs_barcodeSupportDefaults];
  v8 = [v7 valueForKey:v6];

  if (v8 && [v4 length])
  {
    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end