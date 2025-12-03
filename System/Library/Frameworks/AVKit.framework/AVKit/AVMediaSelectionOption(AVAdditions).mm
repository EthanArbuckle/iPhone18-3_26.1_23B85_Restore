@interface AVMediaSelectionOption(AVAdditions)
+ (id)avkit_autoOption;
+ (id)avkit_offOption;
- (__CFString)avkit_title;
- (id)avkit_displayName;
- (id)localizedDisplayName;
- (id)mediaRemoteIdentifier;
@end

@implementation AVMediaSelectionOption(AVAdditions)

- (__CFString)avkit_title
{
  v1 = MEMORY[0x1E6987FE0];
  commonMetadata = [self commonMetadata];
  v3 = [v1 metadataItemsFromArray:commonMetadata filteredByIdentifier:*MEMORY[0x1E6987668]];
  firstObject = [v3 firstObject];
  stringValue = [firstObject stringValue];
  v6 = [stringValue copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1EFED57D8;
  }

  v9 = v8;

  return v8;
}

- (id)mediaRemoteIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  avkit_title = [self avkit_title];
  v4 = avkit_title;
  if (avkit_title)
  {
    v5 = avkit_title;
  }

  else
  {
    v5 = &stru_1EFED57D8;
  }

  extendedLanguageTag = [self extendedLanguageTag];
  v7 = extendedLanguageTag;
  if (extendedLanguageTag)
  {
    v8 = extendedLanguageTag;
  }

  else
  {
    v8 = &stru_1EFED57D8;
  }

  localizedDisplayName = [self localizedDisplayName];
  v10 = localizedDisplayName;
  if (localizedDisplayName)
  {
    v11 = localizedDisplayName;
  }

  else
  {
    v11 = &stru_1EFED57D8;
  }

  v12 = [v2 stringWithFormat:@"%@-%@-%@", v5, v8, v11];

  return v12;
}

- (id)localizedDisplayName
{
  avkit_displayName = [self avkit_displayName];
  if (!avkit_displayName)
  {
    avkit_displayName = [self displayName];
  }

  return avkit_displayName;
}

- (id)avkit_displayName
{
  avkit_offOption = [MEMORY[0x1E6987FD8] avkit_offOption];

  if (avkit_offOption == self)
  {
    v5 = @"MEDIA_SELECTION_OPTION_OFF_TITLE";
  }

  else
  {
    avkit_autoOption = [MEMORY[0x1E6987FD8] avkit_autoOption];

    if (avkit_autoOption != self)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v5 = @"MEDIA_SELECTION_OPTION_AUTO_TITLE";
  }

  v4 = AVLocalizedString(v5);
LABEL_7:

  return v4;
}

+ (id)avkit_autoOption
{
  if (avkit_autoOption_onceToken != -1)
  {
    dispatch_once(&avkit_autoOption_onceToken, &__block_literal_global_2_34772);
  }

  v1 = avkit_autoOption_mediaSelectionAutoOption;

  return v1;
}

+ (id)avkit_offOption
{
  if (avkit_offOption_onceToken != -1)
  {
    dispatch_once(&avkit_offOption_onceToken, &__block_literal_global_34774);
  }

  v1 = avkit_offOption_mediaSelectionOffOption;

  return v1;
}

@end