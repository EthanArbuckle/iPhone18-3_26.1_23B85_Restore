@interface AVPlayerItem(MPNowPlayingInfoLanguageOptionAdditions)
- (id)createLanguageOptions;
@end

@implementation AVPlayerItem(MPNowPlayingInfoLanguageOptionAdditions)

- (id)createLanguageOptions
{
  v19 = *MEMORY[0x1E69E9840];
  asset = [self asset];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  availableMediaCharacteristicsWithMediaSelectionOptions = [asset availableMediaCharacteristicsWithMediaSelectionOptions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(availableMediaCharacteristicsWithMediaSelectionOptions);
        }

        v9 = [asset mediaSelectionGroupForMediaCharacteristic:*(*(&v14 + 1) + 8 * i)];
        v10 = [self selectedMediaOptionInMediaSelectionGroup:v9];
        v11 = v10;
        if (v10)
        {
          makeNowPlayingInfoLanguageOption = [v10 makeNowPlayingInfoLanguageOption];
          [v3 addObject:makeNowPlayingInfoLanguageOption];
        }
      }

      v6 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

@end