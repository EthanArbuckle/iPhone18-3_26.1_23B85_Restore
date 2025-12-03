@interface AVAsset(MPNowPlayingInfoLanguageOptionGroupAdditions)
- (id)createLanguageOptionGroups;
@end

@implementation AVAsset(MPNowPlayingInfoLanguageOptionGroupAdditions)

- (id)createLanguageOptionGroups
{
  v20 = *MEMORY[0x1E69E9840];
  availableMediaCharacteristicsWithMediaSelectionOptions = [self availableMediaCharacteristicsWithMediaSelectionOptions];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = availableMediaCharacteristicsWithMediaSelectionOptions;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [self mediaSelectionGroupForMediaCharacteristic:{*(*(&v15 + 1) + 8 * i), v15}];
        v10 = v9;
        if (v9)
        {
          makeNowPlayingInfoLanguageOptionGroup = [v9 makeNowPlayingInfoLanguageOptionGroup];
          languageOptions = [makeNowPlayingInfoLanguageOptionGroup languageOptions];
          v13 = [languageOptions count];

          if (v13)
          {
            [v3 addObject:makeNowPlayingInfoLanguageOptionGroup];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

@end