@interface _ATXAppLaunchCategoricalHistogram
+ (id)stringForPruningMethod:(int64_t)a3;
- (BOOL)_tryGetCategoryIdforCategory:(id)a3 createIfMissing:(BOOL)a4 categoryIdOut:(unsigned __int16 *)a5;
- (BOOL)_tryGetEventIdforBundleId:(id)a3 createIfMissing:(BOOL)a4 eventIdOut:(unsigned __int16 *)a5;
- (BOOL)bundleHasBeenLaunched:(id)a3;
- (BOOL)removeHistoryForBundleId:(id)a3;
- (BOOL)removeHistoryForCategory:(id)a3;
- (_ATXAppLaunchCategoricalHistogram)initWithCoder:(id)a3;
- (double)entropy;
- (double)entropyForBundleId:(id)a3;
- (double)entropyForCategory:(id)a3;
- (double)launchPopularityWithBundleId:(id)a3 category:(id)a4;
- (double)overallLaunchPopularityForBundleId:(id)a3;
- (double)overallLaunchPopularityForBundleId:(id)a3 category:(id)a4;
- (double)overallLaunchPopularityForCategory:(id)a3;
- (double)relativeLaunchPopularityWithBundleId:(id)a3 category:(id)a4;
- (double)totalLaunches;
- (double)totalLaunchesForBundleId:(id)a3;
- (double)totalLaunchesForBundleId:(id)a3 category:(id)a4;
- (double)totalLaunchesForCategory:(id)a3;
- (id)description;
- (id)lastDate;
- (id)launchCountsForEachCategoryForBundleId:(id)a3;
- (int)removeHistoryForBundleIds:(id)a3;
- (unint64_t)bundleIDCountForCategory:(id)a3;
- (unsigned)_categoryIdforCategory:(id)a3;
- (unsigned)_eventIdforBundleId:(id)a3;
- (unsigned)categoryCount;
- (void)_garbageCollectCategoryIds;
- (void)_reduceCategoryCountTo:(unsigned __int16)a3;
- (void)_removeMappingForCategory:(id)a3;
- (void)_setMaxCategoryCount:(unsigned __int16)a3 pruningMethod:(int64_t)a4;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5 weight:(float)a6;
- (void)decayByFactor:(double)a3;
- (void)decayWithHalfLifeInDays:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)purgeUnusedCategories;
- (void)resetData;
- (void)resetHistogram:(id)a3;
- (void)verifyDataIntegrity;
@end

@implementation _ATXAppLaunchCategoricalHistogram

- (void)purgeUnusedCategories
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:580 description:{@"Trying to remove a category '%@' that has no categoryId -- inconsistent dictionary state", a3}];
}

- (void)_garbageCollectCategoryIds
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ATXHistogramData *)self->_histogramData bSet];
  v4 = objc_opt_new();
  categoryToCategoryId = self->_categoryToCategoryId;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63___ATXAppLaunchCategoricalHistogram__garbageCollectCategoryIds__block_invoke;
  v18[3] = &unk_2785A0888;
  v6 = v3;
  v19 = v6;
  v7 = v4;
  v20 = v7;
  [(NSMutableDictionary *)categoryToCategoryId enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_ATXAppLaunchCategoricalHistogram *)self _removeMappingForCategory:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)stringForPruningMethod:(int64_t)a3
{
  if (a3 >= 3)
  {
    [(_ATXAppLaunchCategoricalHistogram *)a2 stringForPruningMethod:a1];
  }

  if (a3 < 4)
  {
    return off_2785A08D0[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[_ATXAppLaunchCategoricalHistogram stringForPruningMethod:];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForPruningMethod called with invalid _ATXAppLaunchCategoricalHistogramPruningMethod value of %lu", a3}];
  return @"Error";
}

- (void)_setMaxCategoryCount:(unsigned __int16)a3 pruningMethod:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = 0;
      v14 = 2048;
      v15 = 30;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "maxCategoryCount of %lu -- using default of %lu", &v12, 0x16u);
    }

    a3 = 30;
  }

  self->_maxCategoryCount = a3;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:v7 pruningMethod:?];
  }

  if ((a4 - 1) >= 2)
  {
    v8 = __atxlog_handle_default();
    v9 = v8;
    if (a4 < 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 134218240;
        v13 = a4;
        v14 = 2048;
        v15 = 1;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "_pruningMethod of %lu -- using default of %lu", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:pruningMethod:];
    }

    a4 = 1;
  }

  self->_pruningMethod = a4;
  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:? pruningMethod:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_tryGetEventIdforBundleId:(id)a3 createIfMissing:(BOOL)a4 eventIdOut:(unsigned __int16 *)a5
{
  v6 = a4;
  v9 = a3;
  if (!a5)
  {
    [_ATXAppLaunchCategoricalHistogram _tryGetEventIdforBundleId:a2 createIfMissing:self eventIdOut:?];
  }

  v10 = +[ATXHistogramBundleIdTable sharedInstance];
  v11 = v10;
  if (v6)
  {
    *a5 = [v10 intern:v9];
  }

  else
  {
    v12 = [v10 lookup:v9 into:a5];

    if ((v12 & 1) == 0)
    {
      v13 = 0;
      *a5 = -1;
      goto LABEL_8;
    }
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)_tryGetCategoryIdforCategory:(id)a3 createIfMissing:(BOOL)a4 categoryIdOut:(unsigned __int16 *)a5
{
  v6 = a4;
  v9 = a3;
  if (!a5)
  {
    [_ATXAppLaunchCategoricalHistogram _tryGetCategoryIdforCategory:a2 createIfMissing:self categoryIdOut:?];
  }

  v10 = self;
  objc_sync_enter(v10);
  prevCategory = v10->_prevCategory;
  if (prevCategory == v9 || [(NSString *)prevCategory isEqualToString:v9])
  {
    *a5 = v10->_prevCategoryId;
  }

  else
  {
    v12 = [(NSMutableDictionary *)v10->_categoryToCategoryId objectForKeyedSubscript:v9];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)v10->_categoryToCategoryId objectForKeyedSubscript:v9];
      v14 = [v13 unsignedIntegerValue];
      v10->_prevCategoryId = v14;
      *a5 = v14;
    }

    else
    {
      if (!v6)
      {
        *a5 = -1;
        goto LABEL_11;
      }

      maxCategoryId = v10->_maxCategoryId;
      v10->_maxCategoryId = maxCategoryId + 1;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maxCategoryId];
      [(NSMutableDictionary *)v10->_categoryToCategoryId setObject:v16 forKeyedSubscript:v9];

      v10->_prevCategoryId = maxCategoryId;
      *a5 = maxCategoryId;
    }
  }

  LOBYTE(v6) = 1;
LABEL_11:
  objc_sync_exit(v10);

  return v6;
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5 weight:(float)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      v15 = self;
      objc_sync_enter(v15);
      v20 = 0;
      [(_ATXAppLaunchCategoricalHistogram *)v15 _tryGetEventIdforBundleId:v11 createIfMissing:1 eventIdOut:&v20];
      v19 = 0;
      [(_ATXAppLaunchCategoricalHistogram *)v15 _tryGetCategoryIdforCategory:v14 createIfMissing:1 categoryIdOut:&v19];
      *&v16 = a6;
      [(ATXHistogramData *)v15->_histogramData add:v20 a:v19 b:v16];
      lastDates = v15->_lastDates;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v19];
      [(NSMutableDictionary *)lastDates setObject:v12 forKeyedSubscript:v18];

      [(_ATXAppLaunchCategoricalHistogram *)v15 _reduceCategoryCountTo:v15->_maxCategoryCount];
      objc_sync_exit(v15);
    }

    else
    {
      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }
}

- (void)resetHistogram:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  histogramData = obj->_histogramData;
  obj->_histogramData = v4;

  objc_sync_exit(obj);
}

- (BOOL)removeHistoryForBundleId:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v9 = 0;
    v7 = [(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetEventIdforBundleId:v5 createIfMissing:0 eventIdOut:&v9];
    if (v7)
    {
      [(ATXHistogramData *)v6->_histogramData deleteWhereA:v9 b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)v6 _garbageCollectCategoryIds];
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)removeHistoryForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v9 = 0;
    v7 = [(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetCategoryIdforCategory:v5 createIfMissing:0 categoryIdOut:&v9];
    if (v7)
    {
      [(ATXHistogramData *)v6->_histogramData deleteWhereA:0xFFFFLL b:v9];
      [(_ATXAppLaunchCategoricalHistogram *)v6 _removeMappingForCategory:v5];
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)bundleIDCountForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v9 = 0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetCategoryIdforCategory:v5 createIfMissing:0 categoryIdOut:&v9])
    {
      v7 = [(ATXHistogramData *)v6->_histogramData countWhereA:0xFFFFLL b:v9];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (int)removeHistoryForBundleIds:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v14 = 0;
        if ([(_ATXAppLaunchCategoricalHistogram *)v5 _tryGetEventIdforBundleId:v11 createIfMissing:0 eventIdOut:&v14])
        {
          [(ATXHistogramData *)v5->_histogramData deleteWhereA:v14 b:0xFFFFLL];
          ++v7;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(_ATXAppLaunchCategoricalHistogram *)v5 _garbageCollectCategoryIds];
  objc_sync_exit(v5);

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_removeMappingForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(NSMutableDictionary *)v6->_categoryToCategoryId objectForKeyedSubscript:v5];
    v8 = [v7 unsignedShortValue];

    maxCategoryId = v6->_maxCategoryId;
    if (v8 + 1 == maxCategoryId)
    {
      v6->_maxCategoryId = maxCategoryId - 1;
    }

    [(NSMutableDictionary *)v6->_categoryToCategoryId removeObjectForKey:v5];
    lastDates = v6->_lastDates;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
    [(NSMutableDictionary *)lastDates removeObjectForKey:v11];

    if (v8 == v6->_prevCategoryId)
    {
      prevCategory = v6->_prevCategory;
      v6->_prevCategory = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }
}

- (void)_reduceCategoryCountTo:(unsigned __int16)a3
{
  LODWORD(v3) = a3;
  v40 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_categoryToCategoryId count]> a3)
  {
    v6 = [(NSMutableDictionary *)self->_categoryToCategoryId allKeys];
    v7 = objc_opt_new();
    if ((self->_pruningMethod - 1) > 1)
    {
      v26 = __atxlog_handle_default();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchCategoricalHistogram _reduceCategoryCountTo:v26];
      }

      [MEMORY[0x277D42578] simulateCrashWithDescription:@"Invalid value for _ATXAppLaunchCategoricalHistogramPruningMethod"];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v30 = a2;
      v33 = 0u;
      v34 = 0u;
      v31 = v6;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            v12 = v7;
            if (*v34 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v33 + 1) + 8 * i);
            v14 = [(NSMutableDictionary *)self->_categoryToCategoryId objectForKeyedSubscript:v13, v30];

            if (!v14)
            {
              [(_ATXAppLaunchCategoricalHistogram *)v30 _reduceCategoryCountTo:v13];
            }

            v15 = objc_opt_new();
            objc_storeStrong((v15 + 8), v13);
            lastDates = self->_lastDates;
            v17 = [(NSMutableDictionary *)self->_categoryToCategoryId objectForKeyedSubscript:v13];
            v18 = [(NSMutableDictionary *)lastDates objectForKeyedSubscript:v17];
            v19 = *(v15 + 16);
            *(v15 + 16) = v18;

            [(_ATXAppLaunchCategoricalHistogram *)self totalLaunchesForCategory:v13];
            *(v15 + 24) = v20;
            v7 = v12;
            [v12 addObject:v15];
          }

          v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v9);
      }

      v21 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastDate" ascending:0];
      v22 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"launchCount" ascending:0];
      v23 = v22;
      if (self->_pruningMethod == 1)
      {
        v38 = v21;
        v24 = &v38;
        v25 = v22;
      }

      else
      {
        v37 = v22;
        v24 = &v37;
        v25 = v21;
      }

      v3 = v3;
      v6 = v31;
      v24[1] = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:?];
      [v7 sortUsingDescriptors:v27];

      while ([v7 count] > v3)
      {
        v28 = [v7 objectAtIndexedSubscript:v3];
        [(_ATXAppLaunchCategoricalHistogram *)self removeHistoryForCategory:v28[1]];

        ++v3;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (double)totalLaunchesForBundleId:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = self;
      objc_sync_enter(v10);
      v14 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetEventIdforBundleId:v7 createIfMissing:0 eventIdOut:&v14 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v14])
      {
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:HIWORD(v14) b:v14];
        v11 = v12;
      }

      objc_sync_exit(v10);
    }

    else
    {
      v10 = __atxlog_handle_default();
      v11 = 0.0;
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    v11 = 0.0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)launchPopularityWithBundleId:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = self;
      objc_sync_enter(v10);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetEventIdforBundleId:v7 createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:HIWORD(v17) b:0xFFFFLL];
        [(_ATXAppLaunchCategoricalHistogram *)v10 ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(v10);
    }

    else
    {
      v10 = __atxlog_handle_default();
      v11 = 0.0;
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    v11 = 0.0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)relativeLaunchPopularityWithBundleId:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = self;
      objc_sync_enter(v10);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetEventIdforBundleId:v7 createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:0xFFFFLL b:v17];
        [(_ATXAppLaunchCategoricalHistogram *)v10 ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(v10);
    }

    else
    {
      v10 = __atxlog_handle_default();
      v11 = 0.0;
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    v11 = 0.0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)totalLaunchesForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetCategoryIdforCategory:v5 createIfMissing:0 categoryIdOut:&v10])
    {
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:0xFFFFLL b:v10];
      v7 = v8;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)totalLaunchesForBundleId:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetEventIdforBundleId:v5 createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:v10 b:0xFFFFLL];
      v7 = v8;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForBundleId:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v13 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetEventIdforBundleId:v5 createIfMissing:0 eventIdOut:&v13])
    {
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:v13 b:0xFFFFLL];
      v9 = v8;
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)v6 ratio:v9 over:v10];
      v7 = v11;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v13 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetCategoryIdforCategory:v5 createIfMissing:0 categoryIdOut:&v13])
    {
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:0xFFFFLL b:v13];
      v9 = v8;
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)v6 ratio:v9 over:v10];
      v7 = v11;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForBundleId:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = self;
      objc_sync_enter(v10);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetEventIdforBundleId:v7 createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)v10 _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)v10->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
        [(_ATXAppLaunchCategoricalHistogram *)v10 ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(v10);
    }

    else
    {
      v10 = __atxlog_handle_default();
      v11 = 0.0;
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    v11 = 0.0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)totalLaunches
{
  v2 = self;
  objc_sync_enter(v2);
  [(ATXHistogramData *)v2->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (double)entropyForBundleId:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetEventIdforBundleId:v5 createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)v6->_histogramData entropyWhereA:v10 b:0xFFFFLL];
      v7 = v8;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)entropyForCategory:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetCategoryIdforCategory:v5 createIfMissing:0 categoryIdOut:&v10])
    {
      [(ATXHistogramData *)v6->_histogramData entropyWhereA:0xFFFFLL b:v10];
      v7 = v8;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    v7 = 0.0;
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)entropy
{
  v2 = self;
  objc_sync_enter(v2);
  [(ATXHistogramData *)v2->_histogramData entropyWhereA:0xFFFFLL b:0xFFFFLL];
  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (id)launchCountsForEachCategoryForBundleId:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0;
  v6 = objc_opt_new();
  if ([(_ATXAppLaunchCategoricalHistogram *)v5 _tryGetEventIdforBundleId:v4 createIfMissing:0 eventIdOut:&v13])
  {
    histogramData = v5->_histogramData;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76___ATXAppLaunchCategoricalHistogram_launchCountsForEachCategoryForBundleId___block_invoke;
    v10[3] = &unk_2785A08B0;
    v12 = v13;
    v11 = v6;
    [(ATXHistogramData *)histogramData enumerate:v10];
    v8 = v11;
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppLaunchCategoricalHistogram launchCountsForEachCategoryForBundleId:];
    }
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)lastDate
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableDictionary *)v2->_lastDates objectEnumerator];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (!v4 || [v4 compare:*(*(&v13 + 1) + 8 * i)] == -1)
        {
          v9 = v8;

          v4 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v4 copy];
  objc_sync_exit(v2);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)bundleHasBeenLaunched:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v10 = 0;
    if ([(_ATXAppLaunchCategoricalHistogram *)v6 _tryGetEventIdforBundleId:v5 createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)v6->_histogramData lookupUnsmoothedA:v10 b:0xFFFFLL];
      v8 = v7 > 0.0;
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)decayByFactor:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  *&v4 = a3;
  [(ATXHistogramData *)obj->_histogramData decayByFactor:v4];
  objc_sync_exit(obj);
}

- (void)decayWithHalfLifeInDays:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  *&v4 = a3;
  [(ATXHistogramData *)obj->_histogramData decayWithHalfLifeInDays:v4];
  objc_sync_exit(obj);
}

- (void)resetData
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxCategoryId = 0;
  v2 = objc_opt_new();
  categoryToCategoryId = obj->_categoryToCategoryId;
  obj->_categoryToCategoryId = v2;

  prevCategory = obj->_prevCategory;
  obj->_prevCategory = 0;

  [(ATXHistogramData *)obj->_histogramData clear];
  objc_sync_exit(obj);
}

- (void)verifyDataIntegrity
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(NSMutableDictionary *)obj->_categoryToCategoryId allValues];
  v3 = [v2 count];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v2];
  v5 = [v4 count];

  if (v3 > v5)
  {
    [(_ATXAppLaunchCategoricalHistogram *)obj resetData];
  }

  objc_sync_exit(obj);
}

- (_ATXAppLaunchCategoricalHistogram)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"histogram"];
  if (v4)
  {
    v5 = [[ATXHistogramData alloc] initWithCategoricalHistogram:v4];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v3 decodeObjectOfClasses:v9 forKey:@"bundleIdToEventId"];

    v11 = +[ATXHistogramBundleIdTable sharedInstance];
    v12 = [v11 permutationFrom:v10];
    [(ATXHistogramData *)v5 applyPermutationToA:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [v3 decodeObjectOfClasses:v16 forKey:@"categoryToCategoryId"];
    v18 = [v3 decodeInt32ForKey:@"maxCategoryId"];
    v19 = [v3 decodeInt32ForKey:@"maxCategoryCount"];
    v20 = [v4 getLastDatesByCategoryId];
    v21 = [v3 decodeIntegerForKey:@"pruningMethod"];
    v22 = v18;
    v23 = v19;
    v24 = self;
    v25 = v5;
    v26 = v17;
  }

  else
  {
    v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"histogramData"];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v10 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    v16 = [v3 decodeObjectOfClasses:v10 forKey:@"categoryToCategoryId"];
    v30 = [v3 decodeInt32ForKey:@"maxCategoryId"];
    v31 = [v3 decodeInt32ForKey:@"maxCategoryCount"];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v17 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v20 = [v3 decodeObjectOfClasses:v17 forKey:@"lastDates"];
    v21 = [v3 decodeIntegerForKey:@"pruningMethod"];
    v22 = v30;
    v23 = v31;
    v24 = self;
    v25 = v5;
    v26 = v16;
  }

  v35 = [(_ATXAppLaunchCategoricalHistogram *)v24 initWithHistogram:v25 categoryToCategoryId:v26 maxCategoryId:v22 maxCategoryCount:v23 lastDates:v20 pruningMethod:v21];

  return v35;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_histogramData forKey:@"histogramData"];
  [v5 encodeObject:v4->_categoryToCategoryId forKey:@"categoryToCategoryId"];
  [v5 encodeInt32:v4->_maxCategoryId forKey:@"maxCategoryId"];
  [v5 encodeObject:v4->_lastDates forKey:@"lastDates"];
  [v5 encodeInt32:v4->_maxCategoryCount forKey:@"maxCategoryCount"];
  [v5 encodeInteger:v4->_pruningMethod forKey:@"pruningMethod"];
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSMutableDictionary *)v4->_categoryToCategoryId description];
  v7 = [v5 stringWithFormat:@"categoryToCategoryId=%@\n", v6];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"maxCategorycount=%u\n", v4->_maxCategoryCount];
  [v3 appendString:v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = [objc_opt_class() stringForPruningMethod:v4->_pruningMethod];
  v11 = [v9 stringWithFormat:@"pruningMethod=%@\n", v10];
  [v3 appendString:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = [(ATXHistogramData *)v4->_histogramData description];
  v14 = [v12 stringWithFormat:@"categoricalHistogram=%@\n", v13];
  [v3 appendString:v14];

  objc_sync_exit(v4);

  return v3;
}

- (unsigned)categoryCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_categoryToCategoryId count];
  objc_sync_exit(v2);

  return v3;
}

- (unsigned)_eventIdforBundleId:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = 0;
  [(_ATXAppLaunchCategoricalHistogram *)v5 _tryGetEventIdforBundleId:v4 createIfMissing:0 eventIdOut:&v8];
  v6 = v8;
  objc_sync_exit(v5);

  return v6;
}

- (unsigned)_categoryIdforCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = 0;
  [(_ATXAppLaunchCategoricalHistogram *)v5 _tryGetCategoryIdforCategory:v4 createIfMissing:0 categoryIdOut:&v8];
  v6 = v8;
  objc_sync_exit(v5);

  return v6;
}

+ (void)stringForPruningMethod:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"pruningMethod >= 0 && pruningMethod < _ATXAppLaunchCategoricalHistogramPruningMethodMax"}];
}

+ (void)stringForPruningMethod:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "stringForPruningMethod called with invalid _ATXAppLaunchCategoricalHistogramPruningMethod value of %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setMaxCategoryCount:(unsigned __int16 *)a1 pruningMethod:(NSObject *)a2 .cold.1(unsigned __int16 *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "set _maxCategoryCount to %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setMaxCategoryCount:pruningMethod:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2048;
  v4 = 1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "invalid _pruningMethod of %lu -- using default of %lu", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_setMaxCategoryCount:(void *)a1 pruningMethod:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v8 = [objc_opt_class() stringForPruningMethod:*a1];
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.18(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.19(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.20(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.21(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.22(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.23(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.24(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.25(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.26(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.27(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.28(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.29(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.30(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.31(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.32(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.33(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.34(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.35(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.36(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.37(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.39(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.40(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tryGetEventIdforBundleId:(uint64_t)a1 createIfMissing:(uint64_t)a2 eventIdOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"eventId"}];
}

- (void)_tryGetCategoryIdforCategory:(uint64_t)a1 createIfMissing:(uint64_t)a2 categoryIdOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"categoryId"}];
}

- (void)addLaunchWithBundleId:(const char *)a1 date:category:weight:.cold.1(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  sel_getName(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addLaunchWithBundleId:(const char *)a1 date:category:weight:.cold.2(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  sel_getName(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_reduceCategoryCountTo:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:619 description:{@"Trying to remove a category '%@' that has no categoryId -- inconsistent dictionary state", a3}];
}

- (void)launchCountsForEachCategoryForBundleId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Unable to get EventId for BundleId for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end