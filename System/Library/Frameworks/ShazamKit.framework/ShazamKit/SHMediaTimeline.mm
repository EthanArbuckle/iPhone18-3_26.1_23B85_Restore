@interface SHMediaTimeline
+ (double)countdownForMatchedMediaItem:(id)item;
+ (double)nextEventForRange:(id)range atMatchOffset:(double)offset;
+ (id)blankMediaItemWhenNothingIsInScope:(id)scope;
- (BOOL)finished;
- (NSArray)inScopeMediaItems;
- (NSNumber)timeToNextMediaItemScopeChange;
- (SHMediaTimeline)initWithMatch:(id)match;
- (SHMediaTimelineDelegate)delegate;
- (id)earliestInscopeRangeForMatchedMediaItem:(id)item;
- (id)sortMediaItems:(id)items;
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

- (SHMediaTimeline)initWithMatch:(id)match
{
  matchCopy = match;
  v19.receiver = self;
  v19.super_class = SHMediaTimeline;
  v5 = [(SHMediaTimeline *)&v19 init];
  if (v5)
  {
    mediaItems = [matchCopy mediaItems];
    mediaItems = v5->_mediaItems;
    v5->_mediaItems = mediaItems;

    v8 = [SHSignature alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    querySignature = [matchCopy querySignature];
    spectralPeaksData = [querySignature spectralPeaksData];
    querySignature2 = [matchCopy querySignature];
    musicalFeaturesData = [querySignature2 musicalFeaturesData];
    querySignature3 = [matchCopy querySignature];
    time = [querySignature3 time];
    v16 = [(SHSignature *)v8 initWithID:uUID spectralPeaksData:spectralPeaksData musicalFeaturesData:musicalFeaturesData startTime:time error:0];
    querySignature = v5->_querySignature;
    v5->_querySignature = v16;
  }

  return v5;
}

- (BOOL)finished
{
  timeToNextMediaItemScopeChange = [(SHMediaTimeline *)self timeToNextMediaItemScopeChange];
  v3 = timeToNextMediaItemScopeChange == 0;

  return v3;
}

- (void)startTimerForNextEvent
{
  [(SHMediaTimeline *)self cancelTimerSource];
  timeToNextMediaItemScopeChange = [(SHMediaTimeline *)self timeToNextMediaItemScopeChange];
  if (timeToNextMediaItemScopeChange)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    [(SHMediaTimeline *)self setTimerDispatchSource:v5];

    [timeToNextMediaItemScopeChange doubleValue];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    objc_initWeak(&location, self);
    timerDispatchSource = [(SHMediaTimeline *)self timerDispatchSource];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __41__SHMediaTimeline_startTimerForNextEvent__block_invoke;
    v14 = &unk_2788F7F40;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(timerDispatchSource, &v11);

    v9 = [(SHMediaTimeline *)self timerDispatchSource:v11];
    dispatch_source_set_timer(v9, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

    timerDispatchSource2 = [(SHMediaTimeline *)self timerDispatchSource];
    dispatch_activate(timerDispatchSource2);

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
  timerDispatchSource = [(SHMediaTimeline *)self timerDispatchSource];

  if (timerDispatchSource)
  {
    timerDispatchSource2 = [(SHMediaTimeline *)self timerDispatchSource];
    dispatch_source_cancel(timerDispatchSource2);
  }
}

- (NSNumber)timeToNextMediaItemScopeChange
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mediaItems = [(SHMediaTimeline *)self mediaItems];
  v3 = [mediaItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(mediaItems);
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

      v4 = [mediaItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  mediaItems = [(SHMediaTimeline *)self mediaItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(mediaItems, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mediaItems2 = [(SHMediaTimeline *)self mediaItems];
  v7 = [mediaItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(mediaItems2);
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

      v8 = [mediaItems2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v13 = objc_opt_class();
    mediaItems3 = [(SHMediaTimeline *)self mediaItems];
    v15 = [v13 blankMediaItemWhenNothingIsInScope:mediaItems3];
    [v5 addObject:v15];
  }

  v16 = [v5 copy];
  v17 = [(SHMediaTimeline *)self sortMediaItems:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)sortMediaItems:(id)items
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SHMediaTimeline_sortMediaItems___block_invoke;
  v5[3] = &unk_2788F7F68;
  v5[4] = self;
  v3 = [items sortedArrayUsingComparator:v5];

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

- (id)earliestInscopeRangeForMatchedMediaItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  timeRanges = [itemCopy timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 lowerBound];
        if (v11 < v8)
        {
          [itemCopy predictedCurrentMatchOffset];
          if ([v10 contains:?])
          {
            [v10 lowerBound];
            v8 = v12;
          }
        }
      }

      v6 = [timeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)blankMediaItemWhenNothingIsInScope:(id)scope
{
  v17[5] = *MEMORY[0x277D85DE8];
  firstObject = [scope firstObject];
  v16[0] = @"sh_matchOffset";
  v4 = MEMORY[0x277CCABB0];
  [firstObject matchOffset];
  v5 = [v4 numberWithDouble:?];
  v17[0] = v5;
  v16[1] = @"sh_speedSkew";
  v6 = MEMORY[0x277CCABB0];
  [firstObject speedSkew];
  v7 = [v6 numberWithFloat:?];
  v17[1] = v7;
  v16[2] = @"sh_frequencySkew";
  v8 = MEMORY[0x277CCABB0];
  [firstObject frequencySkew];
  v9 = [v8 numberWithFloat:?];
  v17[2] = v9;
  v16[3] = @"sh_score";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(firstObject, "matchScore")}];
  v17[3] = v10;
  v16[4] = @"sh_audioStartDate";
  audioStartDate = [firstObject audioStartDate];
  v17[4] = audioStartDate;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v13 = [[SHMatchedMediaItem alloc] initWithMatchedMediaItemDictionary:v12];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (double)countdownForMatchedMediaItem:(id)item
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [itemCopy predictedCurrentMatchOffset];
  v6 = v5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  timeRanges = [itemCopy timeRanges];
  v8 = [timeRanges countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    timeRanges2 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(timeRanges);
        }

        [self nextEventForRange:*(*(&v25 + 1) + 8 * i) atMatchOffset:v6];
        if (v13 > 0.0)
        {
          v14 = v13;
          if (!timeRanges2 || ([timeRanges2 doubleValue], v14 < v15))
          {
            v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];

            timeRanges2 = v16;
          }
        }
      }

      v9 = [timeRanges countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);

    if (timeRanges2)
    {
      [timeRanges2 doubleValue];
      v18 = v17;
      goto LABEL_19;
    }
  }

  else
  {
  }

  timeRanges2 = [itemCopy timeRanges];
  lastObject = [timeRanges2 lastObject];
  if (lastObject)
  {
    timeRanges3 = [itemCopy timeRanges];
    lastObject2 = [timeRanges3 lastObject];
    [lastObject2 upperBound];
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

+ (double)nextEventForRange:(id)range atMatchOffset:(double)offset
{
  rangeCopy = range;
  [rangeCopy lowerBound];
  v7 = v6 - offset;
  [rangeCopy upperBound];
  v9 = v8;

  result = v9 - offset;
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