@interface SASAcousticFeature(AudioAnalytics)
- (AFSpeechAcousticFeature)af_acousticFeature;
@end

@implementation SASAcousticFeature(AudioAnalytics)

- (AFSpeechAcousticFeature)af_acousticFeature
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [a1 acousticFeaturePerFrame];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 acousticFeaturePerFrame];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = [AFSpeechAcousticFeature alloc];
  v11 = [a1 frameDuration];
  [v11 doubleValue];
  v12 = [(AFSpeechAcousticFeature *)v10 initWithAcousticFeatureValue:v4 frameDuration:?];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end