@interface SHMediaTimeline
+ (double)countdownForMatchedMediaItem:(id)a3;
+ (double)nextEventForRange:(id)a3 atMatchOffset:(double)a4;
+ (id)blankMediaItemWhenNothingIsInScope:(id)a3;
- (BOOL)finished;
- (NSArray)inScopeMediaItems;
- (NSNumber)timeToNextMediaItemScopeChange;
- (SHMediaTimeline)initWithMatch:(id)a3;
- (SHMediaTimelineDelegate)delegate;
- (id)earliestInscopeRangeForMatchedMediaItem:(id)a3;
- (id)sortMediaItems:(id)a3;
- (void)cancelTimerSource;
- (void)dealloc;
- (void)startTimerForNextEvent;
@end

@implementation SHMediaTimeline

- (void)dealloc
{
  [(SHMediaTimeline *)self stopGenerating];
  v3.receiver = self;
  v3.super_class = SHMediaTimeline;
  [(SHMediaTimeline *)&v3 dealloc];
}

- (SHMediaTimeline)initWithMatch:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SHMediaTimeline;
  v5 = [(SHMediaTimeline *)&v19 init];
  if (v5)
  {
    v6 = [v4 mediaItems];
    mediaItems = v5->_mediaItems;
    v5->_mediaItems = v6;

    v8 = [SHSignature alloc];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v4 querySignature];
    v11 = [v10 spectralPeaksData];
    v12 = [v4 querySignature];
    v13 = [v12 musicalFeaturesData];
    v14 = [v4 querySignature];
    v15 = [v14 time];
    v16 = [(SHSignature *)v8 initWithID:v9 spectralPeaksData:v11 musicalFeaturesData:v13 startTime:v15 error:0];
    querySignature = v5->_querySignature;
    v5->_querySignature = v16;
  }

  return v5;
}

- (BOOL)finished
{
  v2 = [(SHMediaTimeline *)self timeToNextMediaItemScopeChange];
  v3 = v2 == 0;

  return v3;
}

- (void)startTimerForNextEvent
{
  [(SHMediaTimeline *)self cancelTimerSource];
  v3 = [(SHMediaTimeline *)self timeToNextMediaItemScopeChange];
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(SHMediaTimeline *)self setTimerDispatchSource:v5];

    [v3 doubleValue];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    objc_initWeak(&location, self);
    v8 = [(SHMediaTimeline *)self timerDispatchSource];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __41__SHMediaTimeline_startTimerForNextEvent__block_invoke;
    v14 = &unk_2788F7F40;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v8, &v11);

    v9 = [(SHMediaTimeline *)self timerDispatchSource:v11];
    dispatch_source_set_timer(v9, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    v10 = [(SHMediaTimeline *)self timerDispatchSource];
    dispatch_activate(v10);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __41__SHMediaTimeline_startTimerForNextEvent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = [WeakRetained inScopeMediaItems];
  [v1 mediaTimeline:WeakRetained hasUpdatedInScopeMediaItems:v2];

  [WeakRetained startTimerForNextEvent];
}

- (void)cancelTimerSource
{
  v3 = [(SHMediaTimeline *)self timerDispatchSource];

  if (v3)
  {
    v4 = [(SHMediaTimeline *)self timerDispatchSource];
    dispatch_source_cancel(v4);
  }
}

- (NSNumber)timeToNextMediaItemScopeChange
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(SHMediaTimeline *)self mediaItems];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [objc_opt_class() countdownForMatchedMediaItem:*(*(&v14 + 1) + 8 * i)];
        if (v8 > 0.0)
        {
          v9 = v8;
          if (!v5 || ([v5 doubleValue], v9 < v10))
          {
            v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];

            v5 = v11;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)inScopeMediaItems
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(SHMediaTimeline *)self mediaItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(SHMediaTimeline *)self mediaItems];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        [v11 predictedCurrentMatchOffset];
        if ([v11 describesOffset:?])
        {
          [v11 frequencySkew];
          if ([v11 describesFrequencySkew:v12])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v13 = objc_opt_class();
    v14 = [(SHMediaTimeline *)self mediaItems];
    v15 = [v13 blankMediaItemWhenNothingIsInScope:v14];
    [v5 addObject:v15];
  }

  v16 = [v5 copy];
  v17 = [(SHMediaTimeline *)self sortMediaItems:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)sortMediaItems:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SHMediaTimeline_sortMediaItems___block_invoke;
  v5[3] = &unk_2788F7F68;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __34__SHMediaTimeline_sortMediaItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 timeRanges];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [v6 timeRanges];
    v9 = [v8 count];

    if (!v9)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  v10 = [v5 timeRanges];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [*(a1 + 32) earliestInscopeRangeForMatchedMediaItem:v5];
    v13 = [*(a1 + 32) earliestInscopeRangeForMatchedMediaItem:v6];
    v14 = [v12 compare:v13];
  }

  else
  {
    v14 = 1;
  }

LABEL_8:

  return v14;
}

- (id)earliestInscopeRangeForMatchedMediaItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 lowerBound];
        if (v11 < v8)
        {
          [v3 predictedCurrentMatchOffset];
          if ([v10 contains:?])
          {
            [v10 lowerBound];
            v8 = v12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.79769313e308;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)blankMediaItemWhenNothingIsInScope:(id)a3
{
  v17[5] = *MEMORY[0x277D85DE8];
  v3 = [a3 firstObject];
  v16[0] = @"sh_matchOffset";
  v4 = MEMORY[0x277CCABB0];
  [v3 matchOffset];
  v5 = [v4 numberWithDouble:?];
  v17[0] = v5;
  v16[1] = @"sh_speedSkew";
  v6 = MEMORY[0x277CCABB0];
  [v3 speedSkew];
  v7 = [v6 numberWithFloat:?];
  v17[1] = v7;
  v16[2] = @"sh_frequencySkew";
  v8 = MEMORY[0x277CCABB0];
  [v3 frequencySkew];
  v9 = [v8 numberWithFloat:?];
  v17[2] = v9;
  v16[3] = @"sh_score";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "matchScore")}];
  v17[3] = v10;
  v16[4] = @"sh_audioStartDate";
  v11 = [v3 audioStartDate];
  v17[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v13 = [[SHMatchedMediaItem alloc] initWithMatchedMediaItemDictionary:v12];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (double)countdownForMatchedMediaItem:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 predictedCurrentMatchOffset];
  v6 = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v4 timeRanges];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [a1 nextEventForRange:*(*(&v25 + 1) + 8 * i) atMatchOffset:v6];
        if (v13 > 0.0)
        {
          v14 = v13;
          if (!v10 || ([v10 doubleValue], v14 < v15))
          {
            v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];

            v10 = v16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);

    if (v10)
    {
      [v10 doubleValue];
      v18 = v17;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [v4 timeRanges];
  v19 = [v10 lastObject];
  if (v19)
  {
    v20 = [v4 timeRanges];
    v21 = [v20 lastObject];
    [v21 upperBound];
    v18 = v22 - v6;
  }

  else
  {
    v18 = 0.0;
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (double)nextEventForRange:(id)a3 atMatchOffset:(double)a4
{
  v5 = a3;
  [v5 lowerBound];
  v7 = v6 - a4;
  [v5 upperBound];
  v9 = v8;

  result = v9 - a4;
  if (v7 >= 0.0)
  {
    return v7;
  }

  return result;
}

- (SHMediaTimelineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end