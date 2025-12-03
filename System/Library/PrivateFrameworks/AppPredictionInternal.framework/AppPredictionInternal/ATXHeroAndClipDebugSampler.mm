@interface ATXHeroAndClipDebugSampler
- (ATXHeroAndClipDebugSampler)initWithSampleIndices:(id)indices;
- (id)sampleEvents:(id)events numToSample:(unint64_t)sample;
@end

@implementation ATXHeroAndClipDebugSampler

- (ATXHeroAndClipDebugSampler)initWithSampleIndices:(id)indices
{
  indicesCopy = indices;
  v9.receiver = self;
  v9.super_class = ATXHeroAndClipDebugSampler;
  v6 = [(ATXHeroAndClipDebugSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indicesToSample, indices);
  }

  return v7;
}

- (id)sampleEvents:(id)events numToSample:(unint64_t)sample
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_indicesToSample;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntegerValue = [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue];
        if (unsignedIntegerValue < [eventsCopy count] && v11 < sample)
        {
          v16 = [eventsCopy objectAtIndexedSubscript:unsignedIntegerValue];
          [v7 addObject:v16];

          ++v11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

@end