@interface AVMediaSelectionGroup(MPNowPlayingInfoLanguageOptionAdditions)
- (MPNowPlayingInfoLanguageOptionGroup)makeNowPlayingInfoLanguageOptionGroup;
@end

@implementation AVMediaSelectionGroup(MPNowPlayingInfoLanguageOptionAdditions)

- (MPNowPlayingInfoLanguageOptionGroup)makeNowPlayingInfoLanguageOptionGroup
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 options];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) makeNowPlayingInfoLanguageOption];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = [a1 defaultOption];
  if (v9)
  {
    v10 = [a1 defaultOption];
    v11 = [v10 makeNowPlayingInfoLanguageOption];
  }

  else
  {
    v11 = 0;
  }

  v12 = -[MPNowPlayingInfoLanguageOptionGroup initWithLanguageOptions:defaultLanguageOption:allowEmptySelection:]([MPNowPlayingInfoLanguageOptionGroup alloc], "initWithLanguageOptions:defaultLanguageOption:allowEmptySelection:", v2, v11, [a1 allowsEmptySelection]);

  return v12;
}

@end