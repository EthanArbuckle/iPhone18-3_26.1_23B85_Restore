@interface ATXHeroAndClipDebugSampler
- (ATXHeroAndClipDebugSampler)initWithSampleIndices:(id)a3;
- (id)sampleEvents:(id)a3 numToSample:(unint64_t)a4;
@end

@implementation ATXHeroAndClipDebugSampler

- (ATXHeroAndClipDebugSampler)initWithSampleIndices:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeroAndClipDebugSampler;
  v6 = [(ATXHeroAndClipDebugSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indicesToSample, a3);
  }

  return v7;
}

- (id)sampleEvents:(id)a3 numToSample:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
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

        v14 = [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue];
        if (v14 < [v6 count] && v11 < a4)
        {
          v16 = [v6 objectAtIndexedSubscript:v14];
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