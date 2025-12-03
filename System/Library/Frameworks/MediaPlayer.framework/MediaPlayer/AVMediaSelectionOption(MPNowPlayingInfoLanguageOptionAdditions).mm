@interface AVMediaSelectionOption(MPNowPlayingInfoLanguageOptionAdditions)
- (MPNowPlayingInfoLanguageOption)makeNowPlayingInfoLanguageOption;
- (id)_languageOptionIdentifier;
@end

@implementation AVMediaSelectionOption(MPNowPlayingInfoLanguageOptionAdditions)

- (id)_languageOptionIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  extendedLanguageTag = [self extendedLanguageTag];
  v4 = extendedLanguageTag;
  v5 = @"NULL";
  if (extendedLanguageTag)
  {
    v6 = extendedLanguageTag;
  }

  else
  {
    v6 = @"NULL";
  }

  mediaType = [self mediaType];
  v8 = mediaType;
  if (mediaType)
  {
    v5 = mediaType;
  }

  displayName = [self displayName];
  v10 = displayName;
  v11 = @"?";
  if (displayName)
  {
    v11 = displayName;
  }

  v12 = [v2 stringWithFormat:@"MediaRemoteLanguageOption/%@/%@ %@", v6, v5, v11];

  return v12;
}

- (MPNowPlayingInfoLanguageOption)makeNowPlayingInfoLanguageOption
{
  if ([self hasMediaCharacteristic:*MEMORY[0x1E69874F8]])
  {
    v2 = 0;
  }

  else
  {
    if (![self hasMediaCharacteristic:*MEMORY[0x1E6987578]])
    {
      v18 = 0;
      goto LABEL_32;
    }

    v2 = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    mediaCharacteristics = [self mediaCharacteristics];
  }

  else
  {
    mediaCharacteristics = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *MEMORY[0x1E6987558];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987558]])
    {
      [mediaCharacteristics addObject:v4];
    }

    v5 = *MEMORY[0x1E6987550];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987550]])
    {
      [mediaCharacteristics addObject:v5];
    }

    v6 = *MEMORY[0x1E6987518];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987518]])
    {
      [mediaCharacteristics addObject:v6];
    }

    v7 = *MEMORY[0x1E6987588];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987588]])
    {
      [mediaCharacteristics addObject:v7];
    }

    v8 = *MEMORY[0x1E6987528];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987528]])
    {
      [mediaCharacteristics addObject:v8];
    }

    v9 = *MEMORY[0x1E6987530];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987530]])
    {
      [mediaCharacteristics addObject:v9];
    }

    v10 = *MEMORY[0x1E6987540];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987540]])
    {
      [mediaCharacteristics addObject:v10];
    }

    v11 = *MEMORY[0x1E6987570];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987570]])
    {
      [mediaCharacteristics addObject:v11];
    }

    v12 = *MEMORY[0x1E6987538];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987538]])
    {
      [mediaCharacteristics addObject:v12];
    }

    v13 = *MEMORY[0x1E6987598];
    if ([self hasMediaCharacteristic:*MEMORY[0x1E6987598]])
    {
      [mediaCharacteristics addObject:v13];
    }
  }

  if (mediaCharacteristics && ![mediaCharacteristics count])
  {

    mediaCharacteristics = 0;
  }

  v14 = [MPNowPlayingInfoLanguageOption alloc];
  extendedLanguageTag = [self extendedLanguageTag];
  displayName = [self displayName];
  _languageOptionIdentifier = [self _languageOptionIdentifier];
  v18 = [(MPNowPlayingInfoLanguageOption *)v14 initWithType:v2 languageTag:extendedLanguageTag characteristics:mediaCharacteristics displayName:displayName identifier:_languageOptionIdentifier];

LABEL_32:

  return v18;
}

@end