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
  v1 = objc_getAssociatedObject(a1, _BestChoiceForRecentLanguageKey);
  objc_opt_class();
  v2 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v1)
  {
    v2 = [v1 BOOLValue];
  }

  return v2;
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

  objc_setAssociatedObject(a1, _BestChoiceForRecentLanguageKey, v3, 1);
}

- (uint64_t)avkit_preferredSortIndex
{
  v1 = objc_getAssociatedObject(a1, _PreferredSortIndexKey);
  objc_opt_class();
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v1)
  {
    v2 = [v1 integerValue];
  }

  return v2;
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
  v8 = [a1 _cachedDisplayNameForOption:v6];
  v9 = [v7 _cachedDisplayNameForOption:v6];

  v10 = [v8 localizedCaseInsensitiveCompare:v9];
  return v10;
}

- (uint64_t)languageCompare:()AVPlayerController displayNameCache:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 extendedLanguageTag];
  v9 = [a1 extendedLanguageTag];
  v10 = [v6 avkit_preferredSortIndex];
  v11 = [a1 avkit_preferredSortIndex];
  if ([v9 isEqualToString:v8])
  {
    v12 = 0;
    goto LABEL_19;
  }

  if ([a1 isOriginal] && !objc_msgSend(v6, "isOriginal"))
  {
    v12 = -1;
    goto LABEL_19;
  }

  if ([v6 isOriginal] && !objc_msgSend(a1, "isOriginal"))
  {
    goto LABEL_17;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [a1 avkit_isBestChoiceForRecentLanguage];
      if (v13 != [v6 avkit_isBestChoiceForRecentLanguage])
      {
        if ([a1 avkit_isBestChoiceForRecentLanguage])
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
      v12 = [a1 cachedLocalizedCaseInsensitiveCompare:v6 cache:v7];
      goto LABEL_19;
    }

LABEL_17:
    v12 = 1;
    goto LABEL_19;
  }

  v12 = -1;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 <= v11)
  {
    if (v10 == v11)
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
  v5 = [a1 isOriginal];
  v6 = [v4 isOriginal];
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    v7 = [a1 languageCompare:v4 displayNameCache:0];
    if (!v7)
    {
      v8 = *MEMORY[0x1E6987550];
      if ([a1 hasMediaCharacteristic:*MEMORY[0x1E6987550]])
      {
        v9 = v4;
        v10 = v8;
LABEL_8:
        v7 = [v9 hasMediaCharacteristic:v10] ^ 1;
        goto LABEL_15;
      }

      v11 = *MEMORY[0x1E6987530];
      v12 = [a1 hasMediaCharacteristic:*MEMORY[0x1E6987530]];
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
  if ([a1 isAudio])
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
  v1 = [a1 mediaType];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69875A0]];

  return v2;
}

- (uint64_t)isCC
{
  v1 = [a1 mediaType];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69875B8]];

  return v2;
}

- (uint64_t)isSDH
{
  result = [a1 hasMediaCharacteristic:*MEMORY[0x1E6987588]];
  if (result)
  {
    v3 = *MEMORY[0x1E6987528];

    return [a1 hasMediaCharacteristic:v3];
  }

  return result;
}

- (uint64_t)isMain
{
  if ([a1 isEasyReader])
  {
    return 0;
  }

  else
  {
    return [a1 isAuxiliary] ^ 1;
  }
}

- (uint64_t)isAC3Only
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 mediaSubTypes];
  v3 = [v2 count];

  if (!v3)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a1 mediaSubTypes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) unsignedIntValue];
        if (v9 != 1885430579 && v9 != 1633889587)
        {
          v11 = 0;
          goto LABEL_16;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = 1;
LABEL_16:

  return v11;
}

- (void)avkit_persistentIdentifier
{
  v2 = [a1 propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 propertyList];
    v5 = [v4 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
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
    v9 = [a1 displayName];
    goto LABEL_11;
  }

  v5 = [a1 avkit_persistentIdentifier];
  v6 = v5;
  if (!v5 || ([v5 isEqualToNumber:&unk_1EFF12728] & 1) != 0)
  {
    v7 = 1;
LABEL_5:
    v8 = [a1 displayName];
    v9 = v8;
    if ((v7 & 1) == 0 && v8)
    {
      [v4 setObject:v8 forKey:v6];
    }

    goto LABEL_10;
  }

  v9 = [v4 objectForKey:v6];
  if (!v9)
  {
    v7 = 0;
    goto LABEL_5;
  }

LABEL_10:

LABEL_11:

  return v9;
}

+ (uint64_t)avkit_subtitleAutomaticallyEnabledState
{
  v0 = +[AVKitGlobalSettings shared];
  v1 = [v0 subtitleAutomaticallyEnabledState];

  return v1;
}

+ (id)avkit_recentLegibleLanguageCode
{
  v0 = +[AVKitGlobalSettings shared];
  v1 = [v0 mostRecentLegibleLanguageCode];

  return v1;
}

+ (id)avkit_recentAudioLanguageCode
{
  v0 = +[AVKitGlobalSettings shared];
  v1 = [v0 mostRecentAudioLanguageCode];

  return v1;
}

@end