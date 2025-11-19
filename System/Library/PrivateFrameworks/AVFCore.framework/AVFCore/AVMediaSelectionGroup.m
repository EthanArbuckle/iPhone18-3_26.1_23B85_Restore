@interface AVMediaSelectionGroup
+ (AVMediaSelectionGroup)mediaSelectionGroupWithAsset:(id)a3 dictionary:(id)a4;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages:(NSArray *)preferredLanguages;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withLocale:(NSLocale *)locale;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withMediaCharacteristics:(NSArray *)mediaCharacteristics;
+ (NSArray)mediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions withoutMediaCharacteristics:(NSArray *)mediaCharacteristics;
+ (NSArray)playableMediaSelectionOptionsFromArray:(NSArray *)mediaSelectionOptions;
+ (id)mediaSelectionOptionsFromArray:(id)a3 withAnyMediaCharacteristicFromArray:(id)a4;
- (AVMediaSelectionGroup)init;
- (BOOL)_matchesGroupID:(id)a3 mediaType:(id)a4;
- (BOOL)allowsEmptySelection;
- (NSArray)mediaSelectionOptionsWithEnhancedIntelligibilityOfSpeech;
- (id)_groupID;
- (id)_groupMediaCharacteristics;
- (id)_groupMediaType;
- (id)_primaryMediaCharacteristic;
- (id)description;
- (id)mediaSelectionOptionComplementaryToOption:(id)a3 forMediaCharacteristic:(id)a4;
- (void)dealloc;
- (void)setCurrentBundleIdentifier:(id)a3;
@end

@implementation AVMediaSelectionGroup

+ (AVMediaSelectionGroup)mediaSelectionGroupWithAsset:(id)a3 dictionary:(id)a4
{
  v4 = [[AVAssetMediaSelectionGroup alloc] initWithAsset:a3 dictionary:a4];

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
  v6 = [(AVMediaSelectionGroup *)self options];
  v7 = [(AVMediaSelectionGroup *)self allowsEmptySelection];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p, options = %@, allowsEmptySelection = %@>", v5, self, v6, v8];
}

- (BOOL)allowsEmptySelection
{
  v2 = [(AVMediaSelectionGroup *)self dictionary];
  v3 = [v2 objectForKey:*MEMORY[0x1E6973738]];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

- (id)_groupID
{
  v2 = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973740];

  return [v2 objectForKey:v3];
}

- (id)_groupMediaType
{
  v2 = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973750];

  return [v2 objectForKey:v3];
}

- (id)_groupMediaCharacteristics
{
  v2 = [(AVMediaSelectionGroup *)self dictionary];
  v3 = *MEMORY[0x1E6973748];

  return [v2 objectForKey:v3];
}

- (id)_primaryMediaCharacteristic
{
  v2 = [(AVMediaSelectionGroup *)self _groupMediaCharacteristics];
  v3 = @"AVMediaCharacteristicAudible";
  if ([v2 containsObject:@"AVMediaCharacteristicAudible"])
  {
    return v3;
  }

  v3 = @"AVMediaCharacteristicLegible";
  if ([v2 containsObject:@"AVMediaCharacteristicLegible"])
  {
    return v3;
  }

  v3 = @"AVMediaCharacteristicVisual";
  if ([v2 containsObject:@"AVMediaCharacteristicVisual"])
  {
    return v3;
  }

  return [v2 firstObject];
}

- (BOOL)_matchesGroupID:(id)a3 mediaType:(id)a4
{
  v7 = [(AVMediaSelectionGroup *)self _groupID];
  v8 = [(AVMediaSelectionGroup *)self _groupMediaType];
  if (v7 == a3 || (v9 = [v7 isEqual:a3]) != 0)
  {
    if (v8 == a4)
    {
      LOBYTE(v9) = 1;
    }

    else
    {

      LOBYTE(v9) = [v8 isEqualToString:a4];
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
  return [a1 mediaSelectionOptionsFromArray:mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
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
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E696AD50] indexSet];
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
        v22[4] = v14;
        v22[5] = v13;
        v22[6] = mediaSelectionOptions;
        [(NSIndexSet *)v20 enumerateIndexesUsingBlock:v22];
        [v14 addIndexes:v20];
      }

      v16 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  return v13;
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

+ (id)mediaSelectionOptionsFromArray:(id)a3 withAnyMediaCharacteristicFromArray:(id)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__AVMediaSelectionGroup_mediaSelectionOptionsFromArray_withAnyMediaCharacteristicFromArray___block_invoke;
  v5[3] = &unk_1E7461B68;
  v5[4] = a4;
  return [a3 objectsAtIndexes:{objc_msgSend(a3, "indexesOfObjectsPassingTest:", v5)}];
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

- (id)mediaSelectionOptionComplementaryToOption:(id)a3 forMediaCharacteristic:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 extendedLanguageTag];
  v8 = [v7 isEqualToString:@"und"];
  v9 = [(AVMediaSelectionGroup *)self options];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__AVMediaSelectionGroup_mediaSelectionOptionComplementaryToOption_forMediaCharacteristic___block_invoke;
  v17[3] = &unk_1E7465118;
  v17[4] = v7;
  v18 = v8;
  v10 = [(NSArray *)[(AVMediaSelectionGroup *)self options] objectsAtIndexes:[(NSArray *)v9 indexesOfObjectsPassingTest:v17]];
  v11 = [objc_msgSend(a3 "mediaCharacteristics")];
  [v11 removeObject:a4];
  v12 = [&unk_1F0AD3978 objectForKey:a4];
  if (v12)
  {
    [v11 removeObjectsInArray:v12];
  }

  v13 = [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v10 withMediaCharacteristics:v11];
  if (![a3 hasMediaCharacteristic:a4])
  {
    v19 = a4;
    v15 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withMediaCharacteristics:", v13, [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
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
    v20[0] = a4;
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

- (void)setCurrentBundleIdentifier:(id)a3
{
  v4 = [a3 copy];

  self->_mediaSelectionGroup->currentBundleIdentifier = v4;
}

- (NSArray)mediaSelectionOptionsWithEnhancedIntelligibilityOfSpeech
{
  v2 = [(AVMediaSelectionGroup *)self options];
  TaggedMediaCharacteristicsForEnhancedSpeechIntelligibility = FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility();

  return [AVMediaSelectionGroup mediaSelectionOptionsFromArray:v2 withAnyMediaCharacteristicFromArray:TaggedMediaCharacteristicsForEnhancedSpeechIntelligibility];
}

@end