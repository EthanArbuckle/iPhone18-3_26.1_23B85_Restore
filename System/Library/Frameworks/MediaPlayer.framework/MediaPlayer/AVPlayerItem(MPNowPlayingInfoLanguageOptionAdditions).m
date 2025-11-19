@interface AVPlayerItem(MPNowPlayingInfoLanguageOptionAdditions)
- (id)createLanguageOptions;
@end

@implementation AVPlayerItem(MPNowPlayingInfoLanguageOptionAdditions)

- (id)createLanguageOptions
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 asset];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [v2 availableMediaCharacteristicsWithMediaSelectionOptions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v2 mediaSelectionGroupForMediaCharacteristic:*(*(&v14 + 1) + 8 * i)];
        v10 = [a1 selectedMediaOptionInMediaSelectionGroup:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 makeNowPlayingInfoLanguageOption];
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

@end