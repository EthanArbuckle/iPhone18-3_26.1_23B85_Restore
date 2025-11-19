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
  v2 = [a1 commonMetadata];
  v3 = [v1 metadataItemsFromArray:v2 filteredByIdentifier:*MEMORY[0x1E6987668]];
  v4 = [v3 firstObject];
  v5 = [v4 stringValue];
  v6 = [v5 copy];
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
  v3 = [a1 avkit_title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1EFED57D8;
  }

  v6 = [a1 extendedLanguageTag];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1EFED57D8;
  }

  v9 = [a1 localizedDisplayName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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
  v2 = [a1 avkit_displayName];
  if (!v2)
  {
    v2 = [a1 displayName];
  }

  return v2;
}

- (id)avkit_displayName
{
  v2 = [MEMORY[0x1E6987FD8] avkit_offOption];

  if (v2 == a1)
  {
    v5 = @"MEDIA_SELECTION_OPTION_OFF_TITLE";
  }

  else
  {
    v3 = [MEMORY[0x1E6987FD8] avkit_autoOption];

    if (v3 != a1)
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