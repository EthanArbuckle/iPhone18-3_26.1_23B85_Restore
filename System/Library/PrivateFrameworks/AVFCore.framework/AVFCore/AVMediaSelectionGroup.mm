@interface AVMediaSelectionGroup
+ (AVMediaSelectionGroup)mediaSelectionGroupWithAsset:(id)asset dictionary:(id)dictionary;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages:(NSArray *)preferredLanguages;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withLocale:(NSLocale *)locale;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withMediaCharacteristics:(NSArray *)mediaCharacteristics;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withoutMediaCharacteristics:(NSArray *)mediaCharacteristics;
+ (NSArray)playableMediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions;
+ (id)mediaSelectionOptionsFromArray:(id)array withAnyMediaCharacteristicFromArray:(id)fromArray;
- (AVMediaSelectionGroup)init;
- (BOOL)_matchesGroupID:(id)d mediaType:(id)type;
- (BOOL)allowsEmptySelection;
- (NSArray)mediaSelectionOptionsWithEnhancedIntelligibilityOfSpeech;
- (id)_groupID;
- (id)_groupMediaCharacteristics;
- (id)_groupMediaType;
- (id)_primaryMediaCharacteristic;
- (id)description;
- (id)mediaSelectionOptionComplementaryToOption:(id)option forMediaCharacteristic:(id)characteristic;
- (void)dealloc;
- (void)setCurrentBundleIdentifier:(id)identifier;
@end

@implementation AVMediaSelectionGroup

+ (AVMediaSelectionGroup)mediaSelectionGroupWithAsset:(id)asset dictionary:(id)dictionary
{
  v4 = [[AVAssetMediaSelectionGroup alloc] initWithAsset:asset dictionary:dictionary];

  return v4;
}

- (AVMediaSelectionGroup)init
{
  v5.receiver = self;
  v5.super_class = AVMediaSelectionGroup;
  v2 = [(AVMediaSelectionGroup *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVMediaSelectionGroupInternal);
    v2->_mediaSelectionGroup = v3;
    if (v3)
    {
      CFRetain(v3);
      v2->_mediaSelectionGroup->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2];
      v2->_mediaSelectionGroup->currentBundleIdentifier = 0;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  mediaSelectionGroup = self->_mediaSelectionGroup;
  if (mediaSelectionGroup)
  {

    CFRelease(self->_mediaSelectionGroup);
  }

  v4.receiver = self;
  v4.super_class = AVMediaSelectionGroup;
  [(AVMediaSelectionGroup *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  options = [(AVMediaSelectionGroup *)self options];
  allowsEmptySelection = [(AVMediaSelectionGroup *)self allowsEmptySelection];
  v8 = @"NO";
  if (allowsEmptySelection)
  {
    v8 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p, options = %@, allowsEmptySelection = %@>", v5, self, options, v8];
}

- (BOOL)allowsEmptySelection
{
  dictionary = [(AVMediaSelectionGroup *)self dictionary];
  v3 = [dictionary objectForKey:*MEMORY[0x1E6973738]];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

- (id)_groupID
{
  dictionary = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973740];

  return [dictionary objectForKey:v3];
}

- (id)_groupMediaType
{
  dictionary = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973750];

  return [dictionary objectForKey:v3];
}

- (id)_groupMediaCharacteristics
{
  dictionary = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973748];

  return [dictionary objectForKey:v3];
}

- (id)_primaryMediaCharacteristic
{
  _groupMediaCharacteristics = [(AVMediaSelectionGroup *)self _groupMediaCharacteristics];
  v3 = @"AVMediaCharacteristicAudible";
  if ([_groupMediaCharacteristics containsObject:@"AVMediaCharacteristicAudible"])
  {
    return v3;
  }

  v3 = @"AVMediaCharacteristicLegible";
  if ([_groupMediaCharacteristics containsObject:@"AVMediaCharacteristicLegible"])
  {
    return v3;
  }

  v3 = @"AVMediaCharacteristicVisual";
  if ([_groupMediaCharacteristics containsObject:@"AVMediaCharacteristicVisual"])
  {
    return v3;
  }

  return [_groupMediaCharacteristics firstObject];
}

- (BOOL)_matchesGroupID:(id)d mediaType:(id)type
{
  _groupID = [(AVMediaSelectionGroup *)self _groupID];
  _groupMediaType = [(AVMediaSelectionGroup *)self _groupMediaType];
  if (_groupID == d || (v9 = [_groupID isEqual:d]) != 0)
  {
    if (_groupMediaType == type)
    {
      LOBYTE(v9) = 1;
    }

    else
    {

      LOBYTE(v9) = [_groupMediaType isEqualToString:type];
    }
  }

  return v9;
}

+ (NSArray)playableMediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions
{
  v4 = [(NSArray *)mediaSelectionOptions indexesOfObjectsPassingTest:&__block_literal_global_26];

  return [(NSArray *)mediaSelectionOptions objectsAtIndexes:v4];
}

uint64_t __64__AVMediaSelectionGroup_playableMediaSelectionOptionsFromArray___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a2 isPlayable];
}

+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withLocale:(NSLocale *)locale
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSLocale *)locale localeIdentifier];
  return [self mediaSelectionOptionsFromArray:mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
}

+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages:(NSArray *)preferredLanguages
{
  v34 = *MEMORY[0x1E69E9840];
  AVAllAvailableNSBundleCompatibleLanguageTagsForObjects(mediaSelectionOptions);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](preferredLanguages, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(NSArray *)preferredLanguages countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v11 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v28 + 1) + 8 * i)];
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSArray *)preferredLanguages countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v12 = FigCopyRankedLanguagesAccordingToPreferredLanguages();
  array = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __103__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke;
        v23[3] = &unk_1E7461B68;
        v23[4] = v19;
        v20 = [(NSArray *)mediaSelectionOptions indexesOfObjectsPassingTest:v23];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __103__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke_2;
        v22[3] = &unk_1E7461B90;
        v22[4] = indexSet;
        v22[5] = array;
        v22[6] = mediaSelectionOptions;
        [(NSIndexSet *)v20 enumerateIndexesUsingBlock:v22];
        [indexSet addIndexes:v20];
      }

      v16 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  return array;
}

uint64_t __103__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [a2 unicodeLanguageIdentifier];
  if (!v4)
  {
    v4 = [a2 unicodeLanguageCode];
    if (!v4)
    {
      return 0;
    }
  }

  v5 = v4;
  v6 = *(a1 + 32);

  return [v6 isEqualToString:v5];
}

uint64_t __103__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndex:a2];

    return [v5 addObject:v6];
  }

  return result;
}

+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withMediaCharacteristics:(NSArray *)mediaCharacteristics
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withMediaCharacteristics___block_invoke;
  v5[3] = &unk_1E7461B68;
  v5[4] = mediaCharacteristics;
  return [(NSArray *)mediaSelectionOptions objectsAtIndexes:[(NSArray *)mediaSelectionOptions indexesOfObjectsPassingTest:v5]];
}

uint64_t __81__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withMediaCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *v11;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v11 != v7)
    {
      objc_enumerationMutation(v4);
    }

    result = [a2 hasMediaCharacteristic:*(*(&v10 + 1) + 8 * v8)];
    if (!result)
    {
      return result;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      result = 1;
      if (v6)
      {
        goto LABEL_4;
      }

      return result;
    }
  }
}

+ (id)mediaSelectionOptionsFromArray:(id)array withAnyMediaCharacteristicFromArray:(id)fromArray
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withAnyMediaCharacteristicFromArray___block_invoke;
  v5[3] = &unk_1E7461B68;
  v5[4] = fromArray;
  return [array objectsAtIndexes:{objc_msgSend(array, "indexesOfObjectsPassingTest:", v5)}];
}

+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withoutMediaCharacteristics:(NSArray *)mediaCharacteristics
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withoutMediaCharacteristics___block_invoke;
  v5[3] = &unk_1E7461B68;
  v5[4] = mediaCharacteristics;
  return [(NSArray *)mediaSelectionOptions objectsAtIndexes:[(NSArray *)mediaSelectionOptions indexesOfObjectsPassingTest:v5]];
}

uint64_t __84__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withoutMediaCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([a2 hasMediaCharacteristic:*(*(&v10 + 1) + 8 * v8)])
      {
        return 0;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        result = 1;
        if (v6)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  return 1;
}

- (id)mediaSelectionOptionComplementaryToOption:(id)option forMediaCharacteristic:(id)characteristic
{
  v20[1] = *MEMORY[0x1E69E9840];
  extendedLanguageTag = [option extendedLanguageTag];
  v8 = [extendedLanguageTag isEqualToString:@"und"];
  options = [(AVMediaSelectionGroup *)self options];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__AVMediaSelectionGroup_mediaSelectionOptionComplementaryToOption_forMediaCharacteristic___block_invoke;
  v17[3] = &unk_1E7465118;
  v17[4] = extendedLanguageTag;
  v18 = v8;
  v10 = [(NSArray *)[(AVMediaSelectionGroup *)self options] objectsAtIndexes:[(NSArray *)options indexesOfObjectsPassingTest:v17]];
  v11 = [objc_msgSend(option "mediaCharacteristics")];
  [v11 removeObject:characteristic];
  v12 = [&unk_1F0AD3978 objectForKey:characteristic];
  if (v12)
  {
    [v11 removeObjectsInArray:v12];
  }

  v13 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v10 withMediaCharacteristics:v11];
  if (![option hasMediaCharacteristic:characteristic])
  {
    characteristicCopy = characteristic;
    v15 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withMediaCharacteristics:", v13, [MEMORY[0x1E695DEC8] arrayWithObjects:&characteristicCopy count:1]);
LABEL_10:
    v14 = v15;
    return [(NSArray *)v14 firstObject];
  }

  if (v12)
  {
    v14 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v13 withAnyMediaCharacteristicFromArray:v12];
  }

  else
  {
    v14 = 0;
  }

  if (![(NSArray *)v14 count])
  {
    v20[0] = characteristic;
    v15 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withoutMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withoutMediaCharacteristics:", v13, [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1]);
    goto LABEL_10;
  }

  return [(NSArray *)v14 firstObject];
}

uint64_t __90__AVMediaSelectionGroup_mediaSelectionOptionComplementaryToOption_forMediaCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 extendedLanguageTag];
  if (FigCFEqual())
  {
    return 1;
  }

  if (*(a1 + 40) == 1)
  {
    return v3 == 0;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  return [v3 isEqualToString:@"und"];
}

- (void)setCurrentBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];

  self->_mediaSelectionGroup->currentBundleIdentifier = v4;
}

- (NSArray)mediaSelectionOptionsWithEnhancedIntelligibilityOfSpeech
{
  options = [(AVMediaSelectionGroup *)self options];
  TaggedMediaCharacteristicsForEnhancedSpeechIntelligibility = FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility();

  return [AVMediaSelectionGroup mediaSelectionOptionsFromArray:options withAnyMediaCharacteristicFromArray:TaggedMediaCharacteristicsForEnhancedSpeechIntelligibility];
}

@end