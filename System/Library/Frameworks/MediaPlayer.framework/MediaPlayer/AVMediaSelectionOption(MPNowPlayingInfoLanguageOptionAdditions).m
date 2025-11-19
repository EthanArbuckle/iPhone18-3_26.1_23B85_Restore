@interface AVMediaSelectionOption(MPNowPlayingInfoLanguageOptionAdditions)
- (MPNowPlayingInfoLanguageOption)makeNowPlayingInfoLanguageOption;
- (id)_languageOptionIdentifier;
@end

@implementation AVMediaSelectionOption(MPNowPlayingInfoLanguageOptionAdditions)

- (id)_languageOptionIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 extendedLanguageTag];
  v4 = v3;
  v5 = @"NULL";
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"NULL";
  }

  v7 = [a1 mediaType];
  v8 = v7;
  if (v7)
  {
    v5 = v7;
  }

  v9 = [a1 displayName];
  v10 = v9;
  v11 = @"?";
  if (v9)
  {
    v11 = v9;
  }

  v12 = [v2 stringWithFormat:@"MediaRemoteLanguageOption/%@/%@ %@", v6, v5, v11];

  return v12;
}

- (MPNowPlayingInfoLanguageOption)makeNowPlayingInfoLanguageOption
{
  if ([a1 hasMediaCharacteristic:*MEMORY[0x1E69874F8]])
  {
    v2 = 0;
  }

  else
  {
    if (![a1 hasMediaCharacteristic:*MEMORY[0x1E6987578]])
    {
      v18 = 0;
      goto LABEL_32;
    }

    v2 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [a1 mediaCharacteristics];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *MEMORY[0x1E6987558];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987558]])
    {
      [v3 addObject:v4];
    }

    v5 = *MEMORY[0x1E6987550];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987550]])
    {
      [v3 addObject:v5];
    }

    v6 = *MEMORY[0x1E6987518];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987518]])
    {
      [v3 addObject:v6];
    }

    v7 = *MEMORY[0x1E6987588];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987588]])
    {
      [v3 addObject:v7];
    }

    v8 = *MEMORY[0x1E6987528];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987528]])
    {
      [v3 addObject:v8];
    }

    v9 = *MEMORY[0x1E6987530];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987530]])
    {
      [v3 addObject:v9];
    }

    v10 = *MEMORY[0x1E6987540];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987540]])
    {
      [v3 addObject:v10];
    }

    v11 = *MEMORY[0x1E6987570];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987570]])
    {
      [v3 addObject:v11];
    }

    v12 = *MEMORY[0x1E6987538];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987538]])
    {
      [v3 addObject:v12];
    }

    v13 = *MEMORY[0x1E6987598];
    if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987598]])
    {
      [v3 addObject:v13];
    }
  }

  if (v3 && ![v3 count])
  {

    v3 = 0;
  }

  v14 = [MPNowPlayingInfoLanguageOption alloc];
  v15 = [a1 extendedLanguageTag];
  v16 = [a1 displayName];
  v17 = [a1 _languageOptionIdentifier];
  v18 = [(MPNowPlayingInfoLanguageOption *)v14 initWithType:v2 languageTag:v15 characteristics:v3 displayName:v16 identifier:v17];

LABEL_32:

  return v18;
}

@end