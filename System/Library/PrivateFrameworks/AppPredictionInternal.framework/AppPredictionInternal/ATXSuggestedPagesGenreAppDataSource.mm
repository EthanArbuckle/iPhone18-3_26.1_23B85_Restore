@interface ATXSuggestedPagesGenreAppDataSource
- (BOOL)_appLaunchDataPassesThreshold:(id)a3 forPageType:(int64_t)a4 bundleId:(id)a5;
- (BOOL)_pageType:(int64_t)a3 matchesGenreId:(unint64_t)a4 forBundleId:(id)a5;
- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesGenreAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v6 = +[_ATXAppIconState sharedInstance];
  v7 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [v6 allAppsKnownToSpringBoard];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if (-[ATXSuggestedPagesGenreAppDataSource _pageType:matchesGenreId:forBundleId:](self, "_pageType:matchesGenreId:forBundleId:", a3, [MEMORY[0x277CEB3B8] genreIdForBundle:v13], v13))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v28 = v6;
    v14 = objc_alloc(MEMORY[0x277CBEBD0]);
    v15 = [v14 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v16 = [v15 BOOLForKey:*MEMORY[0x277CEBB78]];

    v30 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v7;
    obj = v7;
    v17 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v32 + 1) + 8 * j);
          v22 = [v31 appLaunchCounts];
          v23 = [v22 objectForKeyedSubscript:v21];

          if ((v16 & 1) != 0 || [(ATXSuggestedPagesGenreAppDataSource *)self _appLaunchDataPassesThreshold:v23 forPageType:a3 bundleId:v21])
          {
            v24 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:v21 predictionSource:@"App Category" score:objc_msgSend(v23 uniqueDaysLaunched:"uniqueDaysLaunched") rawLaunchCount:{objc_msgSend(v23, "rawLaunchCount"), 0.0}];
            [v30 addObject:v24];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v18);
    }

    v7 = v27;
    v6 = v28;
  }

  else
  {
    v30 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)_appLaunchDataPassesThreshold:(id)a3 forPageType:(int64_t)a4 bundleId:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 <= 6)
  {
    if (a4 == 5)
    {
      goto LABEL_9;
    }

    if (a4 != 6)
    {
      v9 = 0;
      goto LABEL_14;
    }

    if ([MEMORY[0x277CEB3B8] genreIdForBundle:v8] != 6011)
    {
      goto LABEL_9;
    }

    v10 = [v7 uniqueDaysLaunched] > 6;
  }

  else
  {
    if ((a4 - 7) >= 2)
    {
      if (a4 != 9)
      {
        v9 = a4 == 10;
        goto LABEL_14;
      }

LABEL_9:
      v9 = [v7 rawLaunchCount] != 0;
      goto LABEL_14;
    }

    v10 = [v7 uniqueDaysLaunched] > 1;
  }

  v9 = v10;
LABEL_14:

  return v9;
}

- (BOOL)_pageType:(int64_t)a3 matchesGenreId:(unint64_t)a4 forBundleId:(id)a5
{
  v7 = a5;
  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v14 = 6010;
    }

    else
    {
      if (a3 != 6)
      {
        v9 = a4 == 6000 || a4 == 6007;
        v10 = a3 == 7 && v9;
        goto LABEL_30;
      }

      if (a4 == 6011 && ([MEMORY[0x277CEB3B8] isBackgroundAudioSupportedForBundle:v7] & 1) != 0)
      {
        v10 = 1;
        goto LABEL_30;
      }

      v14 = 6013;
    }

    v10 = a4 == v14;
    goto LABEL_30;
  }

  v11 = 0x1091u >> (a4 - 116);
  if (a4 - 6004 >= 0xD)
  {
    LOBYTE(v11) = 0;
  }

  v12 = 0x1201u >> (a4 - 121);
  if (a4 - 6009 >= 0xD)
  {
    LOBYTE(v12) = 0;
  }

  v13 = a4 == 6014;
  if (a3 != 10)
  {
    v13 = 0;
  }

  if (a3 != 9)
  {
    LOBYTE(v12) = v13;
  }

  if (a3 == 8)
  {
    v10 = v11;
  }

  else
  {
    v10 = v12;
  }

LABEL_30:

  return v10;
}

@end