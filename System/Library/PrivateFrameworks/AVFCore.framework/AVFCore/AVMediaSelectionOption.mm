@interface AVMediaSelectionOption
+ (BOOL)_plistHasOptionIdentifier:(id)identifier;
+ (id)mediaSelectionNilOptionForGroup:(id)group;
+ (id)mediaSelectionOptionForAsset:(id)asset group:(id)group dictionary:(id)dictionary hasUnderlyingTrack:(BOOL)track;
- (AVMediaSelectionOption)associatedMediaSelectionOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (AVMediaSelectionOption)initWithGroup:(id)group;
- (BOOL)_isAuxiliaryContent;
- (BOOL)_isDesignatedDefault;
- (BOOL)_updateDisplayNameWithLocale:(id)locale fallingBackToMatchingUndeterminedAndMultilingual:(BOOL)multilingual context:(int64_t)context;
- (BOOL)displaysNonForcedSubtitles;
- (BOOL)hasMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)_audioCompositionPresetIndexesForFallbackIDs;
- (NSArray)mediaSubTypes;
- (NSNumber)_audioCompositionPresetIndex;
- (NSString)displayNameWithLocale:(NSLocale *)locale;
- (NSString)extendedLanguageTag;
- (NSString)unicodeLanguageCode;
- (NSString)unicodeLanguageIdentifier;
- (id)_ancillaryDescription;
- (id)_displayNameWithLocale:(id)locale fallingBackToMatchingUndeterminedAndMultilingual:(BOOL)multilingual;
- (id)_languageDisplayNameFromMetadataAccordingToPreferredLanguages:(id)languages fallingBackToMatchingEmptyLocale:(BOOL)locale;
- (id)_matchingOptionWithEnhancedSpeechIntelligibility;
- (id)_preferredLocalizationLanguage;
- (id)_preferredMetadataTitleAccordingToPreferredLanguages:(id)languages fallingBackToMatchingEmptyLocale:(BOOL)locale excludeM3U8Metadata:(BOOL)metadata;
- (id)_taggedMediaCharacteristics;
- (id)_title;
- (id)associatedExtendedLanguageTag;
- (id)associatedPersistentIDs;
- (id)associatedUnicodeLanguageIdentifier;
- (id)description;
- (id)fallbackIDs;
- (id)languageCode;
- (id)mediaCharacteristics;
- (id)optionID;
- (id)outOfBandIdentifier;
- (id)outOfBandSource;
- (id)propertyList;
- (void)dealloc;
@end

@implementation AVMediaSelectionOption

+ (BOOL)_plistHasOptionIdentifier:(id)identifier
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([identifier objectForKey:*MEMORY[0x1E69737D8]] || objc_msgSend(identifier, "objectForKey:", *MEMORY[0x1E6973788]))
  {
    return 1;
  }

  return [identifier objectForKey:*MEMORY[0x1E69737F0]] != 0;
}

+ (id)mediaSelectionOptionForAsset:(id)asset group:(id)group dictionary:(id)dictionary hasUnderlyingTrack:(BOOL)track
{
  v6 = off_1E745C950;
  if (!track)
  {
    v6 = off_1E745C940;
  }

  v7 = [objc_alloc(*v6) initWithAsset:asset group:group dictionary:dictionary];

  return v7;
}

+ (id)mediaSelectionNilOptionForGroup:(id)group
{
  v3 = [[AVMediaSelectionNilOption alloc] initWithGroup:group];

  return v3;
}

- (AVMediaSelectionOption)initWithGroup:(id)group
{
  v7.receiver = self;
  v7.super_class = AVMediaSelectionOption;
  v4 = [(AVMediaSelectionOption *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVMediaSelectionOptionInternal);
    v4->_mediaSelectionOption = v5;
    if (v5)
    {
      v4->_mediaSelectionOption->_groupMediaCharacteristics = [objc_msgSend(group "_groupMediaCharacteristics")];
      v4->_mediaSelectionOption->_synthesizeMediaCharacteristicsOnce = objc_alloc_init(AVDispatchOnce);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  mediaSelectionOption = self->_mediaSelectionOption;
  if (mediaSelectionOption)
  {
  }

  v4.receiver = self;
  v4.super_class = AVMediaSelectionOption;
  [(AVMediaSelectionOption *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, language = %@%@>", NSStringFromClass(v4), self, -[AVMediaSelectionOption extendedLanguageTag](self, "extendedLanguageTag"), -[AVMediaSelectionOption _ancillaryDescription](self, "_ancillaryDescription")];
}

- (id)_ancillaryDescription
{
  v54 = *MEMORY[0x1E69E9840];
  mediaType = [(AVMediaSelectionOption *)self mediaType];
  group = [(AVMediaSelectionOption *)self group];
  _title = [(AVMediaSelectionOption *)self _title];
  _taggedMediaCharacteristics = [(AVMediaSelectionOption *)self _taggedMediaCharacteristics];
  associatedExtendedLanguageTag = [(AVMediaSelectionOption *)self associatedExtendedLanguageTag];
  v7 = associatedExtendedLanguageTag;
  if (_title)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@", title = %@", _title];
    if (v7)
    {
LABEL_3:
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@", associated language = %@", v7];
      goto LABEL_6;
    }
  }

  else
  {
    v47 = &stru_1F0A8E470;
    if (associatedExtendedLanguageTag)
    {
      goto LABEL_3;
    }
  }

  v46 = &stru_1F0A8E470;
LABEL_6:
  if ([_taggedMediaCharacteristics count])
  {
    v8 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F0A8E470];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = [_taggedMediaCharacteristics countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(_taggedMediaCharacteristics);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          if (-v11 != i)
          {
            [v8 appendString:{@", "}];
          }

          [v8 appendString:v14];
        }

        v11 += v10;
        v10 = [_taggedMediaCharacteristics countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v10);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@", tagged media characteristics = {%@}", v8];
  }

  else
  {
    v15 = &stru_1F0A8E470;
  }

  _isDesignatedDefault = [(AVMediaSelectionOption *)self _isDesignatedDefault];
  _isAuxiliaryContent = [(AVMediaSelectionOption *)self _isAuxiliaryContent];
  fallbackIDs = [(AVMediaSelectionOption *)self fallbackIDs];
  if (fallbackIDs)
  {
    v19 = fallbackIDs;
    v44 = _isDesignatedDefault;
    v20 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F0A8E470];
    v21 = [v19 count];
    if (v21)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        if (j)
        {
          [v20 appendString:{@", "}];
        }

        [v20 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%ld", objc_msgSend(objc_msgSend(v19, "objectAtIndex:", j), "integerValue"))}];
      }
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@", fallback track or variant IDs = {%@}", v20];
    _isDesignatedDefault = v44;
  }

  else
  {
    v24 = &stru_1F0A8E470;
  }

  if ([(NSString *)mediaType isEqualToString:@"sbtl"]|| [(NSString *)mediaType isEqualToString:@"text"])
  {
    if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.subtitles.forced-only"])
    {
      v25 = @", forced subtitles only";
LABEL_41:
      v37 = v46;
      v38 = v47;
      goto LABEL_42;
    }

    if (group)
    {
      v26 = [(AVMediaSelectionOption *)self associatedMediaSelectionOptionInMediaSelectionGroup:?];
      if (v26)
      {
        v27 = v26;
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v25 = [v28 stringWithFormat:@", associated forced-only option = <%@: %p>", NSStringFromClass(v29), v27];
        goto LABEL_41;
      }
    }

LABEL_40:
    v25 = &stru_1F0A8E470;
    goto LABEL_41;
  }

  if (![(NSString *)mediaType isEqualToString:@"soun"])
  {
    goto LABEL_40;
  }

  mediaSubTypes = [(AVMediaSelectionOption *)self mediaSubTypes];
  v31 = [(NSArray *)mediaSubTypes count];
  if (v31)
  {
    v32 = v31;
    v43 = _isAuxiliaryContent;
    v45 = mediaType;
    v33 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F0A8E470];
    for (k = 0; k != v32; ++k)
    {
      valuePtr = 0;
      CFNumberGetValue([(NSArray *)mediaSubTypes objectAtIndex:k], kCFNumberSInt32Type, &valuePtr);
      v35 = valuePtr;
      if (k)
      {
        [v33 appendString:{@", "}];
      }

      v36 = bswap32(v35);
      [v33 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"'%c%c%c%c'", v36, (v36 >> 8), (v36 << 8 >> 24), (v36 >> 24))}];
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@", mediaSubTypes = {%@}", v33];
    mediaType = v45;
    v37 = v46;
    v38 = v47;
    _isAuxiliaryContent = v43;
  }

  else
  {
    v25 = &stru_1F0A8E470;
    v37 = v46;
    v38 = v47;
  }

LABEL_42:
  if (_isAuxiliaryContent)
  {
    v39 = @", auxiliary = YES";
  }

  else
  {
    v39 = &stru_1F0A8E470;
  }

  if (_isDesignatedDefault)
  {
    v40 = @", default = YES";
  }

  else
  {
    v40 = &stru_1F0A8E470;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@", mediaType = '%@'%@%@%@%@%@%@%@", mediaType, v25, v24, v15, v38, v40, v39, v37];
}

- (id)optionID
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737D8];

  return [dictionary objectForKey:v3];
}

- (NSArray)mediaSubTypes
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v5 = [dictionary objectForKey:*MEMORY[0x1E69737C0]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = array;
          v12 = v10;
LABEL_11:
          [(NSArray *)v11 addObject:v12];
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:AVOSTypeForString(v10)];
          if (v13)
          {
            v12 = v13;
            v11 = array;
            goto LABEL_11;
          }
        }

LABEL_12:
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)_isAuxiliaryContent
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = [dictionary objectForKey:*MEMORY[0x1E69737A8]];

  return [v3 BOOLValue];
}

- (id)_taggedMediaCharacteristics
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737E8];

  return [dictionary objectForKey:v3];
}

- (BOOL)hasMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  mediaCharacteristics = [(AVMediaSelectionOption *)self mediaCharacteristics];

  return [mediaCharacteristics containsObject:mediaCharacteristic];
}

- (id)mediaCharacteristics
{
  synthesizeMediaCharacteristicsOnce = self->_mediaSelectionOption->_synthesizeMediaCharacteristicsOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVMediaSelectionOption_mediaCharacteristics__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)synthesizeMediaCharacteristicsOnce runBlockOnce:v5];
  return self->_mediaSelectionOption->_optionMediaCharacteristics;
}

id __46__AVMediaSelectionOption_mediaCharacteristics__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _groupMediaCharacteristics])
  {
    v2 = [MEMORY[0x1E695DFA8] setWithArray:?];
  }

  else
  {
    v2 = [MEMORY[0x1E695DFA8] set];
  }

  v3 = v2;
  v4 = [+[AVAssetTrack mediaCharacteristicsForMediaTypes](AVAssetTrack "mediaCharacteristicsForMediaTypes")];
  if (v4)
  {
    [v3 addObjectsFromArray:v4];
  }

  v5 = [objc_msgSend(*(a1 + 32) "_track")];
  if (v5)
  {
    [v3 addObjectsFromArray:v5];
  }

  v6 = [*(a1 + 32) _taggedMediaCharacteristics];
  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  if ([objc_msgSend(*(a1 + 32) "mediaType")] && (objc_msgSend(*(a1 + 32), "displaysNonForcedSubtitles") & 1) == 0)
  {
    [v3 addObject:@"public.subtitles.forced-only"];
  }

  v7 = [*(a1 + 32) _isAuxiliaryContent];
  v8 = &AVMediaCharacteristicIsAuxiliaryContent;
  if (!v7)
  {
    v8 = &AVMediaCharacteristicIsMainProgramContent;
  }

  [v3 addObject:*v8];
  result = [v3 allObjects];
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

- (BOOL)_isDesignatedDefault
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = [dictionary objectForKey:*MEMORY[0x1E69737B0]];

  return [v3 BOOLValue];
}

- (NSString)extendedLanguageTag
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973798];

  return [dictionary objectForKey:v3];
}

- (NSString)unicodeLanguageIdentifier
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973800];

  return [dictionary objectForKey:v3];
}

- (id)associatedExtendedLanguageTag
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973760];

  return [dictionary objectForKey:v3];
}

- (id)associatedUnicodeLanguageIdentifier
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973770];

  return [dictionary objectForKey:v3];
}

- (id)languageCode
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737B8];

  return [dictionary objectForKey:v3];
}

- (NSString)unicodeLanguageCode
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737F8];

  return [dictionary objectForKey:v3];
}

- (id)associatedPersistentIDs
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973768];

  return [dictionary objectForKey:v3];
}

- (id)fallbackIDs
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737A0];

  return [dictionary objectForKey:v3];
}

- (BOOL)displaysNonForcedSubtitles
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = [dictionary objectForKey:*MEMORY[0x1E6973790]];

  return [v3 BOOLValue];
}

- (NSNumber)_audioCompositionPresetIndex
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973778];

  return [dictionary objectForKey:v3];
}

- (NSArray)_audioCompositionPresetIndexesForFallbackIDs
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973780];

  return [dictionary objectForKey:v3];
}

- (id)_matchingOptionWithEnhancedSpeechIntelligibility
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  result = [dictionary objectForKey:*MEMORY[0x1E69737E0]];
  if (result)
  {
    v5 = result;
    group = [(AVMediaSelectionOption *)self group];

    return [group _optionWithID:v5 displaysNonForcedSubtitles:0 audioCompositionPresetIndex:0];
  }

  return result;
}

- (id)_preferredLocalizationLanguage
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v4 = [v2 preferredLocalizationsFromArray:v3 forPreferences:{objc_msgSend(MEMORY[0x1E695DF58], "preferredLanguages")}];
  if ([v4 count])
  {
    result = [v4 firstObject];
  }

  else
  {
    result = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  }

  if (!result)
  {
    return @"en";
  }

  return result;
}

- (id)_title
{
  v2 = [AVMetadataItem metadataItemsFromArray:[(AVMediaSelectionOption *)self commonMetadata] withKey:@"title" keySpace:@"comn"];
  v3 = [(NSArray *)v2 count];
  if (v3)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v6 = +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:](AVMetadataItem, "metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:", v2, [v4 preferredLocalizationsFromArray:v5 forPreferences:{objc_msgSend(MEMORY[0x1E695DF58], "preferredLanguages")}]);
    if ([(NSArray *)v6 count])
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v3 = [(NSArray *)v7 objectAtIndex:0];
  }

  return [v3 stringValue];
}

- (AVMediaSelectionOption)associatedMediaSelectionOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v54 = *MEMORY[0x1E69E9840];
  group = [(AVMediaSelectionOption *)self group];
  if ((-[AVMediaSelectionGroup isEqual:](mediaSelectionGroup, "isEqual:", group) & 1) != 0 || ![-[AVMediaSelectionGroup asset](mediaSelectionGroup "asset")])
  {
    return 0;
  }

  associatedPersistentIDs = [(AVMediaSelectionOption *)self associatedPersistentIDs];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [associatedPersistentIDs countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    v32 = *v47;
    v33 = associatedPersistentIDs;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(associatedPersistentIDs);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        options = [(AVMediaSelectionGroup *)mediaSelectionGroup options];
        v13 = [(NSArray *)options countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v43;
LABEL_10:
          v16 = 0;
          while (1)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(options);
            }

            v17 = *(*(&v42 + 1) + 8 * v16);
            if ([v11 isEqual:{-[AVMediaSelectionOption optionID](v17, "optionID")}])
            {
              return v17;
            }

            if (v14 == ++v16)
            {
              v14 = [(NSArray *)options countByEnumeratingWithState:&v42 objects:v52 count:16];
              if (v14)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }

        v9 = v32;
        associatedPersistentIDs = v33;
      }

      v8 = [v33 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  locale = [(AVMediaSelectionOption *)self locale];
  if (!locale)
  {
    return 0;
  }

  v19 = locale;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  options2 = [(AVMediaSelectionGroup *)mediaSelectionGroup options];
  v21 = [(NSArray *)options2 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (!v21)
  {
LABEL_29:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    options3 = [(AVMediaSelectionGroup *)mediaSelectionGroup options];
    v26 = [(NSArray *)options3 countByEnumeratingWithState:&v34 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
LABEL_31:
      v29 = 0;
      while (1)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(options3);
        }

        v17 = *(*(&v34 + 1) + 8 * v29);
        associatedExtendedLanguageTag = [(AVMediaSelectionOption *)v17 associatedExtendedLanguageTag];
        if (associatedExtendedLanguageTag)
        {
          if ([(NSString *)[(AVMediaSelectionOption *)self extendedLanguageTag] isEqualToString:associatedExtendedLanguageTag]&& (![(AVMediaSelectionOption *)v17 hasMediaCharacteristic:@"AVMediaCharacteristicLegible"]|| [(AVMediaSelectionOption *)v17 hasMediaCharacteristic:@"public.subtitles.forced-only"]))
          {
            return v17;
          }
        }

        if (v27 == ++v29)
        {
          v27 = [(NSArray *)options3 countByEnumeratingWithState:&v34 objects:v50 count:16];
          v17 = 0;
          if (v27)
          {
            goto LABEL_31;
          }

          return v17;
        }
      }
    }

    return 0;
  }

  v22 = v21;
  v23 = *v39;
LABEL_21:
  v24 = 0;
  while (1)
  {
    if (*v39 != v23)
    {
      objc_enumerationMutation(options2);
    }

    v17 = *(*(&v38 + 1) + 8 * v24);
    if (AVNSLocalesMatchAccordingToRFC4647FilteringRules(v19, [(AVMediaSelectionOption *)v17 locale]))
    {
      if (![(AVMediaSelectionOption *)v17 hasMediaCharacteristic:@"AVMediaCharacteristicLegible"]|| [(AVMediaSelectionOption *)v17 hasMediaCharacteristic:@"public.subtitles.forced-only"])
      {
        return v17;
      }
    }

    if (v22 == ++v24)
    {
      v22 = [(NSArray *)options2 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v22)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }
  }
}

- (id)propertyList
{
  optionID = [(AVMediaSelectionOption *)self optionID];
  outOfBandIdentifier = [(AVMediaSelectionOption *)self outOfBandIdentifier];
  outOfBandSource = [(AVMediaSelectionOption *)self outOfBandSource];
  _audioCompositionPresetIndex = [(AVMediaSelectionOption *)self _audioCompositionPresetIndex];
  _audioCompositionPresetIndexesForFallbackIDs = [(AVMediaSelectionOption *)self _audioCompositionPresetIndexesForFallbackIDs];
  if (!optionID && !outOfBandIdentifier && !outOfBandSource)
  {
    goto LABEL_17;
  }

  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  [v8 setValue:optionID forKey:*MEMORY[0x1E69737D8]];
  [v8 setValue:outOfBandIdentifier forKey:*MEMORY[0x1E6973788]];
  [v8 setValue:outOfBandSource forKey:*MEMORY[0x1E69737F0]];
  [v8 setValue:_audioCompositionPresetIndex forKey:*MEMORY[0x1E6973778]];
  [v8 setValue:_audioCompositionPresetIndexesForFallbackIDs forKey:*MEMORY[0x1E6973780]];
  _groupID = [(AVMediaSelectionOption *)self _groupID];
  _groupMediaType = [(AVMediaSelectionOption *)self _groupMediaType];
  if (_groupID)
  {
    v11 = MEMORY[0x1E6973740];
    v12 = _groupID;
  }

  else
  {
    v12 = _groupMediaType;
    if (!_groupMediaType)
    {
      goto LABEL_9;
    }

    v11 = MEMORY[0x1E6973750];
  }

  [v8 setObject:v12 forKey:*v11];
LABEL_9:
  if (([(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"sbtl"]|| [(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"text"]) && [(AVMediaSelectionOption *)self displaysNonForcedSubtitles])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v13 forKey:*MEMORY[0x1E6973790]];
  }

  dictionary = [(AVMediaSelectionOption *)self dictionary];
  [v8 setValue:objc_msgSend(dictionary forKey:{"objectForKey:", *MEMORY[0x1E69737D0]), *MEMORY[0x1E69737D0]}];
  [v8 setValue:objc_msgSend(dictionary forKey:{"objectForKey:", *MEMORY[0x1E69737B8]), *MEMORY[0x1E69737B8]}];
  [v8 setValue:objc_msgSend(dictionary forKey:{"objectForKey:", *MEMORY[0x1E6973798]), *MEMORY[0x1E6973798]}];
  [v8 setValue:objc_msgSend(dictionary forKey:{"objectForKey:", *MEMORY[0x1E69737E8]), *MEMORY[0x1E69737E8]}];
  if (v8)
  {
    v15 = [v8 copy];

    return v15;
  }

LABEL_17:
  v17 = MEMORY[0x1E695DF20];

  return [v17 dictionary];
}

- (id)_preferredMetadataTitleAccordingToPreferredLanguages:(id)languages fallingBackToMatchingEmptyLocale:(BOOL)locale excludeM3U8Metadata:(BOOL)metadata
{
  metadataCopy = metadata;
  localeCopy = locale;
  v36 = *MEMORY[0x1E69E9840];
  commonMetadata = [(AVMediaSelectionOption *)self commonMetadata];
  if (![(AVMediaSelectionOption *)self _track]&& [(AVMediaSelectionOption *)self _isMainProgramContent]&& metadataCopy)
  {
    v10 = [(NSArray *)commonMetadata mutableCopy];
    [(NSArray *)v10 removeObjectsInArray:[AVMetadataItem metadataItemsFromArray:commonMetadata withKey:@"NAME" keySpace:@"m3u8"]];
    commonMetadata = v10;
  }

  v11 = [AVMetadataItem metadataItemsFromArray:commonMetadata withKey:@"title" keySpace:@"comn"];
  v12 = [AVMetadataItem metadataItemsFromArray:v11 filteredAndSortedAccordingToPreferredLanguages:languages];
  if (![(NSArray *)v12 count]&& [(NSArray *)v11 count]>= 2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([v18 extendedLanguageTag])
          {
            [array addObject:{objc_msgSend(v18, "extendedLanguageTag")}];
          }
        }

        v15 = [(NSArray *)v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v15);
    }

    v19 = FigCopyRankedLanguagesAccordingToPreferredLanguages2();
    if (CFArrayGetCount(v19) >= 1)
    {
      firstObject = [v19 firstObject];
      v12 = +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:](AVMetadataItem, "metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:", v11, [MEMORY[0x1E695DEC8] arrayWithObjects:&firstObject count:1]);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if ([(NSArray *)v12 count])
  {
    v20 = [(NSArray *)v12 objectAtIndex:0];
    return [v20 stringValue];
  }

  else
  {
    if (localeCopy)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      result = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (!result)
      {
        return result;
      }

      v22 = result;
      v23 = *v26;
LABEL_26:
      v24 = 0;
      while (1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v25 + 1) + 8 * v24);
        if (![v20 locale])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          result = 0;
          if (v22)
          {
            goto LABEL_26;
          }

          return result;
        }
      }

      if (([objc_msgSend(v20 "identifier")] & 1) == 0)
      {
        return [v20 stringValue];
      }
    }

    return 0;
  }
}

- (id)_languageDisplayNameFromMetadataAccordingToPreferredLanguages:(id)languages fallingBackToMatchingEmptyLocale:(BOOL)locale
{
  localeCopy = locale;
  if (![(AVMediaSelectionOption *)self hasMediaCharacteristic:@"com.apple.has-language-display-name-as-name"])
  {
    return 0;
  }

  return [(AVMediaSelectionOption *)self _preferredMetadataTitleAccordingToPreferredLanguages:languages fallingBackToMatchingEmptyLocale:localeCopy excludeM3U8Metadata:0];
}

- (id)_displayNameWithLocale:(id)locale fallingBackToMatchingUndeterminedAndMultilingual:(BOOL)multilingual
{
  multilingualCopy = multilingual;
  if ([(AVMediaSelectionOption *)self _updateDisplayNameWithLocale:locale fallingBackToMatchingUndeterminedAndMultilingual:multilingual context:3])
  {

    self->_mediaSelectionOption->_displayName = 0;
    [(AVMediaSelectionOption *)self _updateDisplayNameWithLocale:locale fallingBackToMatchingUndeterminedAndMultilingual:multilingualCopy context:5];
  }

  return self->_mediaSelectionOption->_displayName;
}

- (BOOL)_updateDisplayNameWithLocale:(id)locale fallingBackToMatchingUndeterminedAndMultilingual:(BOOL)multilingual context:(int64_t)context
{
  multilingualCopy = multilingual;
  v77[3] = *MEMORY[0x1E69E9840];
  _preferredLocalizationLanguage = [(AVMediaSelectionOption *)self _preferredLocalizationLanguage];
  if (locale)
  {
    if ([_preferredLocalizationLanguage isEqualToString:{objc_msgSend(locale, "localeIdentifier")}])
    {
      localeCopy = 0;
    }

    else
    {
      localeCopy = locale;
    }
  }

  else
  {
    locale = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:_preferredLocalizationLanguage];
    localeCopy = 0;
  }

  if (!-[NSString isEqualToString:](self->_mediaSelectionOption->_displayNameLocaleIdentifier, "isEqualToString:", [locale localeIdentifier]))
  {

    self->_mediaSelectionOption->_displayNameLocaleIdentifier = [objc_msgSend(locale "localeIdentifier")];
    self->_mediaSelectionOption->_displayName = 0;
  }

  if (self->_mediaSelectionOption->_displayName)
  {
    LOBYTE(v11) = 0;
    return v11;
  }

  bundleID = [-[AVMediaSelectionOption group](self "group")];
  v12 = [locale objectForKey:*MEMORY[0x1E695D9A8]];
  if (multilingualCopy)
  {
    v77[0] = v12;
    v77[1] = @"mul";
    v77[2] = @"und";
    v13 = MEMORY[0x1E695DEC8];
    v14 = v77;
    v15 = 3;
  }

  else
  {
    v76 = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v76;
    v15 = 1;
  }

  v16 = [v13 arrayWithObjects:v14 count:v15];
  v17 = [(AVMediaSelectionOption *)self _preferredMetadataTitleAccordingToPreferredLanguages:v16 fallingBackToMatchingEmptyLocale:multilingualCopy excludeM3U8Metadata:1];
  extendedLanguageTag = [(AVMediaSelectionOption *)self extendedLanguageTag];
  if (!extendedLanguageTag)
  {
    outPropertyData = 0;
    v22 = 0;
    v25 = bundleID;
    goto LABEL_36;
  }

  v19 = extendedLanguageTag;
  v64 = localeCopy;
  v20 = AVLanguageCodeFromExtendedLanguageTag(extendedLanguageTag);
  if (AVIsSpecialSpokenExtendedLanguageTag(v19))
  {
    v21 = [locale displayNameForKey:*MEMORY[0x1E695D9B0] value:v20];
    if (v21)
    {
      v22 = v21;
      if (([v20 isEqualToString:@"no"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"nor") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", v19) & 1) == 0)
      {
        v23 = [locale localizedStringForLanguage:v19 context:context];
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_27;
    }

    v23 = -[AVMediaSelectionOption _languageDisplayNameFromMetadataAccordingToPreferredLanguages:fallingBackToMatchingEmptyLocale:](self, "_languageDisplayNameFromMetadataAccordingToPreferredLanguages:fallingBackToMatchingEmptyLocale:", [v16 arrayByAddingObject:v19], multilingualCopy);
    if (v23)
    {
      goto LABEL_26;
    }
  }

  v26 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:v19];
  if (!v26 || (v27 = v26, v22 = [locale displayNameForKey:*MEMORY[0x1E695D9B0] value:v26], v23 = objc_msgSend(locale, "localizedStringForLanguage:context:", v27, context), !v22))
  {
    v23 = -[AVMediaSelectionOption _languageDisplayNameFromMetadataAccordingToPreferredLanguages:fallingBackToMatchingEmptyLocale:](self, "_languageDisplayNameFromMetadataAccordingToPreferredLanguages:fallingBackToMatchingEmptyLocale:", [v16 arrayByAddingObject:v19], multilingualCopy);
LABEL_26:
    v22 = v23;
  }

LABEL_27:
  if (v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = v22;
  }

  if (!v22)
  {
    v22 = v20;
  }

  if (v28)
  {
    outPropertyData = v28;
  }

  else
  {
    outPropertyData = v19;
  }

  localeCopy = v64;
  v25 = bundleID;
LABEL_36:
  if (v17 && [-[__CFString stringByTrimmingCharactersInSet:](v17 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "length"}])
  {
    if (v22 && [(__CFString *)v17 rangeOfString:v22 options:1]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"SUBTITLE_TRACK_DISPLAY_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
      v11 = [(__CFString *)v29 hasPrefix:@"%2$@"]^ 1;
      *&inSpecifier[0] = 0;
      outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@%@" error:inSpecifier, v17, outPropertyData];
    }

    else
    {
      LOBYTE(v11) = 0;
      outPropertyData = v17;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  if ([(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"sbtl"]|| [(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"text"])
  {
    if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.accessibility.transcribes-spoken-dialog"]&& [(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.accessibility.describes-music-and-sound"])
    {
      v30 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"SDH_SUBTITLE_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
      v31 = v30;
      if (v11)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        v11 = [(__CFString *)v30 hasPrefix:@"%1$@"]^ 1;
      }

      v36 = &stru_1F0A8E470;
      if (outPropertyData)
      {
        v36 = outPropertyData;
      }

      *&inSpecifier[0] = 0;
      outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v31 validFormatSpecifiers:@"%@" error:inSpecifier, v36];
    }

    if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.subtitles.forced-only"])
    {
      v37 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"FORCEDONLY_SUBTITLE_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
      v38 = v37;
      if (v11)
      {
        LOBYTE(v11) = 1;
      }

      else
      {
        v11 = [(__CFString *)v37 hasPrefix:@"%1$@"]^ 1;
      }

      v39 = &stru_1F0A8E470;
      if (outPropertyData)
      {
        v39 = outPropertyData;
      }

      *&inSpecifier[0] = 0;
      outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:inSpecifier, v39];
    }

    if (![(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.easy-to-read"])
    {
      goto LABEL_75;
    }

    v40 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"EASYTOREAD_SUBTITLE_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
    v41 = v40;
    if (v11)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [(__CFString *)v40 hasPrefix:@"%1$@"]^ 1;
    }

    v42 = &stru_1F0A8E470;
    if (outPropertyData)
    {
      v42 = outPropertyData;
    }

    *&inSpecifier[0] = 0;
    v43 = MEMORY[0x1E696AEC0];
    goto LABEL_74;
  }

  if (![(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"clcp"])
  {
    if ([(NSString *)[(AVMediaSelectionOption *)self mediaType] isEqualToString:@"soun"])
    {
      if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.accessibility.describes-video"])
      {
        v34 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"DESCRIBESVIDEO_AUDIO_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
        v35 = v34;
        if (v11)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          v11 = [(__CFString *)v34 hasPrefix:@"%1$@"]^ 1;
        }

        v48 = &stru_1F0A8E470;
        if (outPropertyData)
        {
          v48 = outPropertyData;
        }

        *&inSpecifier[0] = 0;
        outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:inSpecifier, v48];
      }

      if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.translation.voice-over"])
      {
        v49 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"VOICEOVERTRANSLATION_AUDIO_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
        v50 = v49;
        if (v11)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          v11 = [(__CFString *)v49 hasPrefix:@"%1$@"]^ 1;
        }

        v51 = &stru_1F0A8E470;
        if (outPropertyData)
        {
          v51 = outPropertyData;
        }

        *&inSpecifier[0] = 0;
        outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v50 validFormatSpecifiers:@"%@" error:inSpecifier, v51];
      }

      if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.original-content"])
      {
        v52 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"ORIGINAL_AUDIO_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
        v53 = v52;
        if (v11)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          v11 = [(__CFString *)v52 hasPrefix:@"%1$@"]^ 1;
        }

        v54 = &stru_1F0A8E470;
        if (outPropertyData)
        {
          v54 = outPropertyData;
        }

        *&inSpecifier[0] = 0;
        outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v53 validFormatSpecifiers:@"%@" error:inSpecifier, v54];
      }

      mediaSubTypes = [(AVMediaSelectionOption *)self mediaSubTypes];
      if ([(NSArray *)mediaSubTypes count])
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v56 = [(NSArray *)mediaSubTypes countByEnumeratingWithState:&v70 objects:v75 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v71;
          while (2)
          {
            v59 = localeCopy;
            for (i = 0; i != v57; ++i)
            {
              if (*v71 != v58)
              {
                objc_enumerationMutation(mediaSubTypes);
              }

              if ([*(*(&v70 + 1) + 8 * i) intValue] != 1633889587)
              {
                localeCopy = v59;
                goto LABEL_123;
              }
            }

            v57 = [(NSArray *)mediaSubTypes countByEnumeratingWithState:&v70 objects:v75 count:16];
            localeCopy = v59;
            if (v57)
            {
              continue;
            }

            break;
          }
        }

        v68 = 0;
        outPropertyData = 0;
        memset(inSpecifier, 0, sizeof(inSpecifier));
        ioPropertyDataSize = 8;
        DWORD2(inSpecifier[0]) = 1633889587;
        AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
        if (outPropertyData)
        {
          v25 = bundleID;
          if ([(__CFString *)outPropertyData rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v61 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"AUDIOENCODING_AUDIO_FORMAT", @"AVMediaSelectionOption", localeCopy, bundleID);
            v62 = v61;
            if (v11)
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              v11 = [(__CFString *)v61 hasPrefix:@"%1$@"]^ 1;
            }

            v63 = &stru_1F0A8E470;
            if (outPropertyData)
            {
              v63 = outPropertyData;
            }

            v74 = 0;
            outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v62 validFormatSpecifiers:@"%@%@" error:&v74, v63, outPropertyData];
          }

          if (outPropertyData)
          {
            CFRelease(outPropertyData);
          }
        }

        else
        {
LABEL_123:
          v25 = bundleID;
        }
      }
    }

    goto LABEL_75;
  }

  v32 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"CC_SUBTITLE_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
  v33 = v32;
  if (v11)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = [(__CFString *)v32 hasPrefix:@"%1$@"]^ 1;
  }

  if (outPropertyData)
  {
    v46 = outPropertyData;
  }

  else
  {
    v46 = &stru_1F0A8E470;
  }

  *&inSpecifier[0] = 0;
  outPropertyData = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:inSpecifier, v46];
  if ([(AVMediaSelectionOption *)self hasMediaCharacteristic:@"public.easy-to-read"])
  {
    v47 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"EASYTOREAD_SUBTITLE_FORMAT", @"AVMediaSelectionOption", localeCopy, v25);
    v41 = v47;
    if (v11)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [(__CFString *)v47 hasPrefix:@"%1$@"]^ 1;
    }

    if (outPropertyData)
    {
      v42 = outPropertyData;
    }

    else
    {
      v42 = &stru_1F0A8E470;
    }

    *&inSpecifier[0] = 0;
    v43 = MEMORY[0x1E696AEC0];
LABEL_74:
    outPropertyData = [v43 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:inSpecifier, v42];
  }

LABEL_75:
  v44 = -[__CFString stringByTrimmingCharactersInSet:](outPropertyData, "stringByTrimmingCharactersInSet:", [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet]);
  if (![(__CFString *)v44 length])
  {
    v44 = AVLocalizedStringFromTableWithLocaleWithBundleIdentifier(@"UNKNOWN_LANGUAGE", @"AVMediaSelectionOption", localeCopy, v25);
  }

  self->_mediaSelectionOption->_displayName = v44;
  return v11;
}

- (NSString)displayNameWithLocale:(NSLocale *)locale
{
  if (!locale)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"displayNameWithLocale requires an NSLocale", v3, v4, v5, v6, v7, v8), 0}];
    objc_exception_throw(v11);
  }

  return [AVMediaSelectionOption _displayNameWithLocale:"_displayNameWithLocale:fallingBackToMatchingUndeterminedAndMultilingual:" fallingBackToMatchingUndeterminedAndMultilingual:?];
}

- (id)outOfBandSource
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E69737F0];

  return [dictionary objectForKey:v3];
}

- (id)outOfBandIdentifier
{
  dictionary = [(AVMediaSelectionOption *)self dictionary];
  v3 = *MEMORY[0x1E6973788];

  return [dictionary objectForKey:v3];
}

@end