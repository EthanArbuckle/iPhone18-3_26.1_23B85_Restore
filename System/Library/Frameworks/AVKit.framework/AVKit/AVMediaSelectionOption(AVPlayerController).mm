@interface AVMediaSelectionOption(AVPlayerController)
+ (id)avkit_recentAudioLanguageCode;
+ (id)avkit_recentLegibleLanguageCode;
+ (uint64_t)avkit_subtitleAutomaticallyEnabledState;
- (id)_cachedDisplayNameForOption:()AVPlayerController;
- (id)avkit_recentLanguageCode;
- (uint64_t)audioLanguageCompare:()AVPlayerController;
- (uint64_t)avkit_isBestChoiceForRecentLanguage;
- (uint64_t)avkit_preferredSortIndex;
- (uint64_t)cachedLocalizedCaseInsensitiveCompare:()AVPlayerController cache:;
- (uint64_t)isAC3Only;
- (uint64_t)isAudio;
- (uint64_t)isCC;
- (uint64_t)isMain;
- (uint64_t)isSDH;
- (uint64_t)languageCompare:()AVPlayerController displayNameCache:;
- (void)avkit_persistentIdentifier;
- (void)avkit_setBestChoiceForRecentLanguage:()AVPlayerController;
- (void)avkit_setPreferredSortIndex:()AVPlayerController;
@end

@implementation AVMediaSelectionOption(AVPlayerController)

- (uint64_t)avkit_isBestChoiceForRecentLanguage
{
  v1 = objc_getAssociatedObject(self, _BestChoiceForRecentLanguageKey);
  objc_opt_class();
  bOOLValue = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  return bOOLValue;
}

- (void)avkit_setBestChoiceForRecentLanguage:()AVPlayerController
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  objc_setAssociatedObject(self, _BestChoiceForRecentLanguageKey, v3, 1);
}

- (uint64_t)avkit_preferredSortIndex
{
  v1 = objc_getAssociatedObject(self, _PreferredSortIndexKey);
  objc_opt_class();
  integerValue = 0x7FFFFFFFFFFFFFFFLL;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v1)
  {
    integerValue = [v1 integerValue];
  }

  return integerValue;
}

- (void)avkit_setPreferredSortIndex:()AVPlayerController
{
  v4 = _PreferredSortIndexKey;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _PreferredSortIndexKey;

    objc_setAssociatedObject(object, v5, 0, 1);
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    objc_setAssociatedObject(object, v4, v6, 1);
  }
}

- (uint64_t)cachedLocalizedCaseInsensitiveCompare:()AVPlayerController cache:
{
  v6 = a4;
  v7 = a3;
  v8 = [self _cachedDisplayNameForOption:v6];
  v9 = [v7 _cachedDisplayNameForOption:v6];

  v10 = [v8 localizedCaseInsensitiveCompare:v9];
  return v10;
}

- (uint64_t)languageCompare:()AVPlayerController displayNameCache:
{
  v6 = a3;
  v7 = a4;
  extendedLanguageTag = [v6 extendedLanguageTag];
  extendedLanguageTag2 = [self extendedLanguageTag];
  avkit_preferredSortIndex = [v6 avkit_preferredSortIndex];
  avkit_preferredSortIndex2 = [self avkit_preferredSortIndex];
  if ([extendedLanguageTag2 isEqualToString:extendedLanguageTag])
  {
    v12 = 0;
    goto LABEL_19;
  }

  if ([self isOriginal] && !objc_msgSend(v6, "isOriginal"))
  {
    v12 = -1;
    goto LABEL_19;
  }

  if ([v6 isOriginal] && !objc_msgSend(self, "isOriginal"))
  {
    goto LABEL_17;
  }

  if (avkit_preferredSortIndex2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (avkit_preferredSortIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      avkit_isBestChoiceForRecentLanguage = [self avkit_isBestChoiceForRecentLanguage];
      if (avkit_isBestChoiceForRecentLanguage != [v6 avkit_isBestChoiceForRecentLanguage])
      {
        if ([self avkit_isBestChoiceForRecentLanguage])
        {
          v12 = -1;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_19;
      }

LABEL_16:
      v12 = [self cachedLocalizedCaseInsensitiveCompare:v6 cache:v7];
      goto LABEL_19;
    }

LABEL_17:
    v12 = 1;
    goto LABEL_19;
  }

  v12 = -1;
  if (avkit_preferredSortIndex != 0x7FFFFFFFFFFFFFFFLL && avkit_preferredSortIndex <= avkit_preferredSortIndex2)
  {
    if (avkit_preferredSortIndex == avkit_preferredSortIndex2)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_19:

  return v12;
}

- (uint64_t)audioLanguageCompare:()AVPlayerController
{
  v4 = a3;
  isOriginal = [self isOriginal];
  isOriginal2 = [v4 isOriginal];
  if (isOriginal)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (isOriginal == isOriginal2)
  {
    v7 = [self languageCompare:v4 displayNameCache:0];
    if (!v7)
    {
      v8 = *MEMORY[0x1E6987550];
      if ([self hasMediaCharacteristic:*MEMORY[0x1E6987550]])
      {
        v9 = v4;
        v10 = v8;
LABEL_8:
        v7 = [v9 hasMediaCharacteristic:v10] ^ 1;
        goto LABEL_15;
      }

      v11 = *MEMORY[0x1E6987530];
      v12 = [self hasMediaCharacteristic:*MEMORY[0x1E6987530]];
      v13 = [v4 hasMediaCharacteristic:v8];
      if (v12)
      {
        if ((v13 & 1) == 0)
        {
          v9 = v4;
          v10 = v11;
          goto LABEL_8;
        }
      }

      else if ((v13 & 1) == 0 && ![v4 hasMediaCharacteristic:v11])
      {
        v7 = 0;
        goto LABEL_15;
      }

      v7 = -1;
    }
  }

LABEL_15:

  return v7;
}

- (id)avkit_recentLanguageCode
{
  if ([self isAudio])
  {
    [MEMORY[0x1E6987FD8] avkit_recentAudioLanguageCode];
  }

  else
  {
    [MEMORY[0x1E6987FD8] avkit_recentLegibleLanguageCode];
  }
  v1 = ;

  return v1;
}

- (uint64_t)isAudio
{
  mediaType = [self mediaType];
  v2 = [mediaType isEqualToString:*MEMORY[0x1E69875A0]];

  return v2;
}

- (uint64_t)isCC
{
  mediaType = [self mediaType];
  v2 = [mediaType isEqualToString:*MEMORY[0x1E69875B8]];

  return v2;
}

- (uint64_t)isSDH
{
  result = [self hasMediaCharacteristic:*MEMORY[0x1E6987588]];
  if (result)
  {
    v3 = *MEMORY[0x1E6987528];

    return [self hasMediaCharacteristic:v3];
  }

  return result;
}

- (uint64_t)isMain
{
  if ([self isEasyReader])
  {
    return 0;
  }

  else
  {
    return [self isAuxiliary] ^ 1;
  }
}

- (uint64_t)isAC3Only
{
  v18 = *MEMORY[0x1E69E9840];
  mediaSubTypes = [self mediaSubTypes];
  v3 = [mediaSubTypes count];

  if (!v3)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mediaSubTypes2 = [self mediaSubTypes];
  v5 = [mediaSubTypes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mediaSubTypes2);
        }

        unsignedIntValue = [*(*(&v13 + 1) + 8 * v8) unsignedIntValue];
        if (unsignedIntValue != 1885430579 && unsignedIntValue != 1633889587)
        {
          v11 = 0;
          goto LABEL_16;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [mediaSubTypes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (void)avkit_persistentIdentifier
{
  propertyList = [self propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    propertyList2 = [self propertyList];
    v5 = [propertyList2 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_1EFF12728;
  }

  v7 = v6;

  return v6;
}

- (id)_cachedDisplayNameForOption:()AVPlayerController
{
  v4 = a3;
  if (!v4)
  {
    displayName = [self displayName];
    goto LABEL_11;
  }

  avkit_persistentIdentifier = [self avkit_persistentIdentifier];
  v6 = avkit_persistentIdentifier;
  if (!avkit_persistentIdentifier || ([avkit_persistentIdentifier isEqualToNumber:&unk_1EFF12728] & 1) != 0)
  {
    v7 = 1;
LABEL_5:
    displayName2 = [self displayName];
    displayName = displayName2;
    if ((v7 & 1) == 0 && displayName2)
    {
      [v4 setObject:displayName2 forKey:v6];
    }

    goto LABEL_10;
  }

  displayName = [v4 objectForKey:v6];
  if (!displayName)
  {
    v7 = 0;
    goto LABEL_5;
  }

LABEL_10:

LABEL_11:

  return displayName;
}

+ (uint64_t)avkit_subtitleAutomaticallyEnabledState
{
  v0 = +[AVKitGlobalSettings shared];
  subtitleAutomaticallyEnabledState = [v0 subtitleAutomaticallyEnabledState];

  return subtitleAutomaticallyEnabledState;
}

+ (id)avkit_recentLegibleLanguageCode
{
  v0 = +[AVKitGlobalSettings shared];
  mostRecentLegibleLanguageCode = [v0 mostRecentLegibleLanguageCode];

  return mostRecentLegibleLanguageCode;
}

+ (id)avkit_recentAudioLanguageCode
{
  v0 = +[AVKitGlobalSettings shared];
  mostRecentAudioLanguageCode = [v0 mostRecentAudioLanguageCode];

  return mostRecentAudioLanguageCode;
}

@end