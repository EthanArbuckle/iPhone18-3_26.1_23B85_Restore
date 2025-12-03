@interface AVMediaSelectionGroup(MPNowPlayingInfoLanguageOptionAdditions)
- (MPNowPlayingInfoLanguageOptionGroup)makeNowPlayingInfoLanguageOptionGroup;
@end

@implementation AVMediaSelectionGroup(MPNowPlayingInfoLanguageOptionAdditions)

- (MPNowPlayingInfoLanguageOptionGroup)makeNowPlayingInfoLanguageOptionGroup
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  options = [self options];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [options countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(options);
        }

        makeNowPlayingInfoLanguageOption = [*(*(&v14 + 1) + 8 * i) makeNowPlayingInfoLanguageOption];
        if (makeNowPlayingInfoLanguageOption)
        {
          [v2 addObject:makeNowPlayingInfoLanguageOption];
        }
      }

      v5 = [options countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  defaultOption = [self defaultOption];
  if (defaultOption)
  {
    defaultOption2 = [self defaultOption];
    makeNowPlayingInfoLanguageOption2 = [defaultOption2 makeNowPlayingInfoLanguageOption];
  }

  else
  {
    makeNowPlayingInfoLanguageOption2 = 0;
  }

  v12 = -[MPNowPlayingInfoLanguageOptionGroup initWithLanguageOptions:defaultLanguageOption:allowEmptySelection:]([MPNowPlayingInfoLanguageOptionGroup alloc], "initWithLanguageOptions:defaultLanguageOption:allowEmptySelection:", v2, makeNowPlayingInfoLanguageOption2, [self allowsEmptySelection]);

  return v12;
}

@end