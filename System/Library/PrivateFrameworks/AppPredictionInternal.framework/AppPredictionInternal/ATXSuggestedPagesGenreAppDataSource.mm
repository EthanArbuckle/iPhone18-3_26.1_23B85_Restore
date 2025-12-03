@interface ATXSuggestedPagesGenreAppDataSource
- (BOOL)_appLaunchDataPassesThreshold:(id)threshold forPageType:(int64_t)type bundleId:(id)id;
- (BOOL)_pageType:(int64_t)type matchesGenreId:(unint64_t)id forBundleId:(id)bundleId;
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesGenreAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  v42 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v6 = +[_ATXAppIconState sharedInstance];
  v7 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allAppsKnownToSpringBoard = [v6 allAppsKnownToSpringBoard];
  v9 = [allAppsKnownToSpringBoard countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(allAppsKnownToSpringBoard);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if (-[ATXSuggestedPagesGenreAppDataSource _pageType:matchesGenreId:forBundleId:](self, "_pageType:matchesGenreId:forBundleId:", type, [MEMORY[0x277CEB3B8] genreIdForBundle:v13], v13))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [allAppsKnownToSpringBoard countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          appLaunchCounts = [environmentCopy appLaunchCounts];
          v23 = [appLaunchCounts objectForKeyedSubscript:v21];

          if ((v16 & 1) != 0 || [(ATXSuggestedPagesGenreAppDataSource *)self _appLaunchDataPassesThreshold:v23 forPageType:type bundleId:v21])
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

- (BOOL)_appLaunchDataPassesThreshold:(id)threshold forPageType:(int64_t)type bundleId:(id)id
{
  thresholdCopy = threshold;
  idCopy = id;
  if (type <= 6)
  {
    if (type == 5)
    {
      goto LABEL_9;
    }

    if (type != 6)
    {
      v9 = 0;
      goto LABEL_14;
    }

    if ([MEMORY[0x277CEB3B8] genreIdForBundle:idCopy] != 6011)
    {
      goto LABEL_9;
    }

    v10 = [thresholdCopy uniqueDaysLaunched] > 6;
  }

  else
  {
    if ((type - 7) >= 2)
    {
      if (type != 9)
      {
        v9 = type == 10;
        goto LABEL_14;
      }

LABEL_9:
      v9 = [thresholdCopy rawLaunchCount] != 0;
      goto LABEL_14;
    }

    v10 = [thresholdCopy uniqueDaysLaunched] > 1;
  }

  v9 = v10;
LABEL_14:

  return v9;
}

- (BOOL)_pageType:(int64_t)type matchesGenreId:(unint64_t)id forBundleId:(id)bundleId
{
  bundleIdCopy = bundleId;
  if (type <= 7)
  {
    if (type == 5)
    {
      v14 = 6010;
    }

    else
    {
      if (type != 6)
      {
        v9 = id == 6000 || id == 6007;
        v10 = type == 7 && v9;
        goto LABEL_30;
      }

      if (id == 6011 && ([MEMORY[0x277CEB3B8] isBackgroundAudioSupportedForBundle:bundleIdCopy] & 1) != 0)
      {
        v10 = 1;
        goto LABEL_30;
      }

      v14 = 6013;
    }

    v10 = id == v14;
    goto LABEL_30;
  }

  v11 = 0x1091u >> (id - 116);
  if (id - 6004 >= 0xD)
  {
    LOBYTE(v11) = 0;
  }

  v12 = 0x1201u >> (id - 121);
  if (id - 6009 >= 0xD)
  {
    LOBYTE(v12) = 0;
  }

  v13 = id == 6014;
  if (type != 10)
  {
    v13 = 0;
  }

  if (type != 9)
  {
    LOBYTE(v12) = v13;
  }

  if (type == 8)
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