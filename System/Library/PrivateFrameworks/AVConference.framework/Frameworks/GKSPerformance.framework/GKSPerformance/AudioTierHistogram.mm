@interface AudioTierHistogram
- (AudioTierHistogram)init;
- (id)newReport;
- (void)accumulateTime:(double)time forAudioTier:(id)tier;
- (void)dealloc;
- (void)end;
@end

@implementation AudioTierHistogram

- (AudioTierHistogram)init
{
  v5.receiver = self;
  v5.super_class = AudioTierHistogram;
  v2 = [(AudioTierHistogram *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->currentTier = 0;
    v2->startTime = 0.0;
    v2->histogram = v3;
    v2->awdAudioTierQueue = dispatch_queue_create("com.apple.avconference.AWDAudioTierQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  histogram = self->histogram;
  if (histogram)
  {
  }

  currentTier = self->currentTier;
  if (currentTier)
  {
  }

  awdAudioTierQueue = self->awdAudioTierQueue;
  if (awdAudioTierQueue)
  {
    dispatch_release(awdAudioTierQueue);
  }

  v6.receiver = self;
  v6.super_class = AudioTierHistogram;
  [(AudioTierHistogram *)&v6 dealloc];
}

- (void)accumulateTime:(double)time forAudioTier:(id)tier
{
  v7 = objc_autoreleasePoolPush();
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->histogram, "objectForKeyedSubscript:", [tier description]);
  if (v8)
  {
    tier = v8;
  }

  [tier duration];
  [tier setDuration:v9 + time];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->histogram, "setObject:forKeyedSubscript:", tier, [tier description]);

  objc_autoreleasePoolPop(v7);
}

void __87__AudioTierHistogram_newAudioTier_duplication_bundling_codecPayload_codecBitrate_mode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 16))
  {
    [v2 accumulateTime:v3 - *(v2 + 24) forAudioTier:?];
    *(*(a1 + 32) + 24) = *(a1 + 48);
  }

  else
  {
    *(v2 + 24) = v3;
  }

  *(*(a1 + 32) + 16) = *(a1 + 40);
}

- (void)end
{
  Current = CFAbsoluteTimeGetCurrent();
  if (self->currentTier)
  {
    [(AudioTierHistogram *)self accumulateTime:Current - self->startTime forAudioTier:?];
  }

  NSLog(&cfstr_S.isa, Current, "[AudioTierHistogram end]", self->histogram);
}

- (id)newReport
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSMutableDictionary *)self->histogram allValues];
  v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v18 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * v3);
        v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "tier")}];
        v6 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "mode")}];
        v7 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "duplication")}];
        v8 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "bundling")}];
        v9 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "codecPayload")}];
        v10 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:{objc_msgSend(v4, "codecBitrate")}];
        v11 = objc_alloc(MEMORY[0x277CCABA8]);
        [v4 duration];
        v13 = [v11 initWithUnsignedInt:v12];
        v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"AudioTierCounterTier", v6, @"AudioTierCounterMode", v7, @"AudioTierCounterDuplication", v8, @"AudioTierCounterBundling", v9, @"AudioTierCounterCodecPayload", v10, @"AudioTierCounterCodecBitrate", v13, @"AudioTierCounterCount", 0}];
        [v19 addObject:v14];

        ++v3;
      }

      while (v20 != v3);
      v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v19;
}

@end