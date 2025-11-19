@interface ATXHeroPoiManager
- (id)cachedPoiCategory;
- (id)currentPoiCategory;
- (id)mostRecentHighestRankedPoiCategory:(id)a3;
- (id)poiCategoryEventsWithStreamPublisher:(id)a3;
- (id)poiCategoryPublisherBookmark;
- (id)poiCategoryStream;
- (id)poiCategoryStreamPublisher;
- (void)donateHeroPoiPredictions:(id)a3;
- (void)donatePoiCategoryToBiome:(id)a3 rank:(unint64_t)a4 date:(id)a5;
- (void)logCompletion:(id)a3;
@end

@implementation ATXHeroPoiManager

- (id)currentPoiCategory
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ATXHeroPoiManager *)self poiCategoryStreamPublisher];
  v4 = [(ATXHeroPoiManager *)self poiCategoryEventsWithStreamPublisher:v3];
  v5 = [(ATXHeroPoiManager *)self cachedPoiCategory];
  if ([v4 count])
  {
    v6 = [(ATXHeroPoiManager *)self mostRecentHighestRankedPoiCategory:v4];

    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = [v7 initWithSuiteName:*MEMORY[0x277D41CF0]];
    [v8 setObject:v6 forKey:@"currentPoiCategory"];
    v9 = v6;
  }

  else
  {
    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      v14 = 14400;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "No new POI category received from poiCategory stream since the last saved bookmark within the past %lu seconds, returning cached POI category: %@", &v13, 0x16u);
    }

    v9 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)poiCategoryStreamPublisher
{
  v3 = CFAbsoluteTimeGetCurrent() + -14400.0;
  v4 = [(ATXHeroPoiManager *)self poiCategoryStream];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v6 = [v4 atx_publisherFromStartTime:v5];

  return v6;
}

- (id)poiCategoryStream
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_poiCategoryStream && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v3 = BiomeLibrary();
    v4 = [v3 Location];
    v5 = [v4 PointOfInterest];
    v6 = [v5 Category];
    poiCategoryStream = v2->_poiCategoryStream;
    v2->_poiCategoryStream = v6;
  }

  v8 = v2->_poiCategoryStream;
  objc_sync_exit(v2);

  return v8;
}

- (id)poiCategoryPublisherBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"poiCategoryPublisherBookmarkURL"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = MEMORY[0x277CEBBF8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v7 = [v5 bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:v6];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEBBF8]);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v7 = [v8 initWithURLPath:v4 versionNumber:v9 bookmark:0 metadata:0];
  }

  return v7;
}

- (id)cachedPoiCategory
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  v4 = [v3 objectForKey:@"currentPoiCategory"];
  if (!v4)
  {
    v5 = +[ATXHeroAndClipConstants sharedInstance];
    v4 = [v5 defaultHeroPOICategory];
  }

  return v4;
}

- (void)donateHeroPoiPredictions:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = COERCE_DOUBLE([v4 count]);
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Received %lu Hero POI predictions.", &v23, 0xCu);
  }

  v6 = objc_opt_new();
  if ([v4 count])
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [MEMORY[0x277D41BF8] sharedInstance];
    v9 = [v8 getCurrentPreciseLocation];

    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceNow];
      v23 = 134217984;
      v24 = -v11;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", &v23, 0xCu);
    }

    if (v9)
    {
      v12 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v4 currentLocation:v9];

      v4 = __atxlog_handle_hero();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v12 count];
        v23 = 134217984;
        v24 = *&v13;
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Left with %lu hero poi predictions after removing predictions based on gps location.", &v23, 0xCu);
      }
    }

    else
    {
      v14 = __atxlog_handle_hero();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroAppManager donateHeroAppPredictions:v14];
      }

      v12 = objc_opt_new();
    }

    v4 = v12;
  }

  if ([v4 count])
  {
    if ([v4 count])
    {
      v15 = 0;
      do
      {
        v16 = [v4 objectAtIndexedSubscript:v15];
        v17 = [v16 poiCategory];

        if ([v17 length])
        {
          [(ATXHeroPoiManager *)self donatePoiCategoryToBiome:v17 rank:v15 date:v6];
        }

        else
        {
          v18 = __atxlog_handle_hero();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(ATXHeroPoiManager *)&v23 donateHeroPoiPredictions:v18];
          }
        }

        ++v15;
      }

      while (v15 < [v4 count]);
    }
  }

  else
  {
    v19 = __atxlog_handle_hero();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Hero POI predictions count is zero. Donating ATXDefaultHeroPOICategory to Biome", &v23, 2u);
    }

    v20 = +[ATXHeroAndClipConstants sharedInstance];
    v21 = [v20 defaultHeroPOICategory];
    [(ATXHeroPoiManager *)self donatePoiCategoryToBiome:v21 rank:0 date:v6];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)donatePoiCategoryToBiome:(id)a3 rank:(unint64_t)a4 date:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF12C0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = [v11 initWithPoiCategory:v10 rank:v12 timestamp:v9];

  v14 = __atxlog_handle_hero();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Sending event to Biome: %@.", &v18, 0xCu);
  }

  v15 = [(ATXHeroPoiManager *)self poiCategoryStream];
  v16 = [v15 source];
  [v16 sendEvent:v13];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logCompletion:(id)a3
{
  v3 = a3;
  if ([v3 state])
  {
    v4 = __atxlog_handle_hero();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroPoiManager *)v3 logCompletion:v4];
    }
  }
}

- (id)mostRecentHighestRankedPoiCategory:(id)a3
{
  v3 = a3;
  v4 = [v3 lastObject];
  v5 = [v4 eventBody];
  v6 = [v5 timestamp];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = +[ATXHeroAndClipConstants sharedInstance];
  v10 = [v9 defaultHeroPOICategory];

  v11 = [v3 count];
  if (v11 >= 1)
  {
    v12 = v11 + 1;
    while (1)
    {
      v13 = [v3 objectAtIndex:v12 - 2];
      v14 = [v13 eventBody];
      v15 = [v14 timestamp];
      [v15 timeIntervalSinceReferenceDate];
      v17 = v16;

      if (v17 < v8)
      {
        break;
      }

      v18 = [v13 eventBody];
      v19 = [v18 rank];

      if (!v19)
      {
        v20 = [v13 eventBody];
        v21 = [v20 poiCategory];

        v10 = v21;
        break;
      }

      if (--v12 <= 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return v10;
}

- (id)poiCategoryEventsWithStreamPublisher:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__84;
  v22 = __Block_byref_object_dispose__84;
  v23 = [(ATXHeroPoiManager *)self poiCategoryPublisherBookmark];
  v5 = objc_opt_new();
  v6 = [v19[5] bookmark];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke;
  v17[3] = &unk_27859FB30;
  v17[4] = self;
  v17[5] = &v18;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke_2;
  v15[3] = &unk_278596F60;
  v7 = v5;
  v16 = v7;
  v8 = [v4 sinkWithBookmark:v6 completion:v17 receiveInput:v15];

  v9 = v19[5];
  v14 = 0;
  [v9 saveBookmarkWithError:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = __atxlog_handle_hero();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroPoiManager *)v10 poiCategoryEventsWithStreamPublisher:v11];
    }
  }

  v12 = v7;

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __58__ATXHeroPoiManager_poiCategoryEventsWithStreamPublisher___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 logCompletion:a2];
  [*(*(*(a1 + 40) + 8) + 40) setBookmark:v6];
}

- (void)donateHeroPoiPredictions:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "NIL POI category received in Hero POI Manager", buf, 2u);
}

- (void)logCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error in receiving events from POI category stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)poiCategoryEventsWithStreamPublisher:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unable to save POI category bookmark due to : %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end