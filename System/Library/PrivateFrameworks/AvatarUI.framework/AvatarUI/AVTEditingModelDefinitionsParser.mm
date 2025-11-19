@interface AVTEditingModelDefinitionsParser
+ (id)dataFromAvatarKit;
+ (id)dataFromBundle;
+ (id)errorWithDescription:(id)a3 underlyingError:(id)a4;
+ (id)localizedString:(id)a3;
- (AVTEditingModelDefinitionsParser)initWithPlistData:(id)a3 forPlatform:(unint64_t)a4 logger:(id)a5;
- (BOOL)validateForCategoryWithEnumValue:(id)a3 pickers:(id)a4;
- (BOOL)validateForColorPicker:(id)a3 colorPaletteCategory:(id)a4 error:(id *)a5;
- (BOOL)validateForMulticolorPicker:(id)a3 subpickers:(id)a4 error:(id *)a5;
- (id)applyPlatformOverrideForDictionary:(id)a3;
- (id)coreModelCategoryFromCategoryDictionary:(id)a3 parsedPickerKeys:(id)a4;
- (id)coreModelColorsForColorDefinitions:(id)a3 paletteSettingKind:(id)a4;
- (id)coreModelColorsForPaletteSettingKind:(id)a3;
- (id)coreModelColorsRowForColorPickerDictionary:(id)a3 settingDestination:(int64_t)a4 inCategory:(int64_t)a5 defaultOptions:(id)a6;
- (id)coreModelGroupFromGroupDictionary:(id)a3;
- (id)coreModelMulticolorPickerForDictionary:(id)a3 groupPickerCategory:(int64_t)a4 defaultOptions:(id)a5 parsedPickerKeys:(id)a6 error:(id *)a7;
- (id)coreModelPresetsForCategory:(int64_t)a3;
- (id)coreModelRowFromRowDictionary:(id)a3 availableTags:(id)a4 usedTags:(id)a5 defaultOptions:(id)a6;
- (id)coreModelRowOptionsFromOptionsDictionary:(id)a3;
- (id)decodePropertyListObjects:(id)a3;
- (id)gatherAllTagsFromPresets:(id)a3;
- (id)initForPlatform:(unint64_t)a3 withLogger:(id)a4;
- (id)localizedSubtitlesForSubtitles:(id)a3 subpickerCount:(int64_t)a4;
- (id)multicolorAuxiliaryPickerForDictionary:(id)a3 error:(id *)a4;
- (id)neutralMemojiPresetIdentifierForCategory:(int64_t)a3;
- (id)pairingFromDictionary:(id)a3;
- (id)parseCoreModelFromGroupsDefinitions:(id)a3 colorDefaultsDefinitions:(id)a4;
- (id)symbolNamesFromGroupDictionary:(id)a3;
- (void)initalizeColorCacheIfNeeded;
- (void)parseWithCompletionHandler:(id)a3;
@end

@implementation AVTEditingModelDefinitionsParser

+ (id)errorWithDescription:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E696A578], a3, 0}];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:*MEMORY[0x1E696AA08] forKey:v5];
  }

  v8 = [MEMORY[0x1E698E338] errorWithCode:415 userInfo:v7];

  return v8;
}

+ (id)dataFromAvatarKit
{
  if (AVTPrereleaseCategoriesEnabled())
  {
    AVTPrereleaseEditorMetadata();
  }

  else
  {
    AVTEditorMetadata();
  }
  v2 = ;

  return v2;
}

+ (id)dataFromBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"editor" ofType:@"plist"];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"AVT_RESOURCES_BASE_PATH"];

    v3 = [v6 stringByAppendingPathComponent:@"editor.plist"];
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];

  return v7;
}

+ (id)localizedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = AVTLocalizedEditorString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)initForPlatform:(unint64_t)a3 withLogger:(id)a4
{
  v6 = a4;
  v7 = AVTUIUseLocalEditorModel_once();
  v8 = objc_opt_class();
  if (v7)
  {
    [v8 dataFromBundle];
  }

  else
  {
    [v8 dataFromAvatarKit];
  }
  v9 = ;
  v10 = [(AVTEditingModelDefinitionsParser *)self initWithPlistData:v9 forPlatform:a3 logger:v6];

  return v10;
}

- (AVTEditingModelDefinitionsParser)initWithPlistData:(id)a3 forPlatform:(unint64_t)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AVTEditingModelDefinitionsParser;
  v11 = [(AVTEditingModelDefinitionsParser *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_plistData, a3);
    v12->_platform = a4;
    v13 = [objc_opt_class() platformDictionaryKeyForPlatform:a4];
    platformDictionaryKey = v12->_platformDictionaryKey;
    v12->_platformDictionaryKey = v13;

    objc_storeStrong(&v12->_logger, a5);
  }

  return v12;
}

- (void)parseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(AVTEditingModelDefinitionsParser *)self plistData];
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:@"MissingPlistData" format:@"Unable to get data for the plist from AvatarKit"];
  }

  v6 = [(AVTEditingModelDefinitionsParser *)self decodePropertyListObjects:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:kAVTEditingModelDefinitionsGroupsKey];
    v9 = [v7 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorDefaultsKey];
    v10 = [v7 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickersKey];
    [(AVTEditingModelDefinitionsParser *)self setColorPickersDefinitions:v10];

    v11 = [v7 objectForKeyedSubscript:kAVTEditingModelDefinitionsPresetPickersKey];
    [(AVTEditingModelDefinitionsParser *)self setPresetPickersDefinitions:v11];

    v12 = [v7 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorPickersKey];
    [(AVTEditingModelDefinitionsParser *)self setMulticolorPickersDefinitions:v12];

    v14 = [(AVTEditingModelDefinitionsParser *)self parseCoreModelFromGroupsDefinitions:v8 colorDefaultsDefinitions:v9];
  }

  else
  {
    v14 = 0;
  }

  v13 = [(AVTEditingModelDefinitionsParser *)self error];
  v4[2](v4, v14, v13);
}

- (id)decodePropertyListObjects:(id)a3
{
  v12 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v12];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = v12;
    v8 = [(AVTEditingModelDefinitionsParser *)self logger];
    v9 = [v7 localizedDescription];
    [v8 logParsingMetadataDefinitionsError:v9];

    v10 = [objc_opt_class() errorWithDescription:@"Error deserializing plist" underlyingError:v7];

    [(AVTEditingModelDefinitionsParser *)self setError:v10];
  }

  return v5;
}

- (void)initalizeColorCacheIfNeeded
{
  v3 = [(AVTEditingModelDefinitionsParser *)self colorCache];

  if (!v3)
  {
    v4 = +[AVTEditingModelColors buildAllColors];
    [(AVTEditingModelDefinitionsParser *)self setColorCache:v4];
  }
}

- (id)parseCoreModelFromGroupsDefinitions:(id)a3 colorDefaultsDefinitions:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(AVTEditingModelDefinitionsParser *)self initalizeColorCacheIfNeeded];
    v29 = v7;
    if (v7 && ([v7 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorDefaultsMappingKey], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(v7, "objectForKeyedSubscript:", kAVTEditingModelDefinitionsColorDefaultsDefinitionsKey), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = [AVTAvatarEditorColorDefaultsProvider alloc];
      v12 = [(AVTEditingModelDefinitionsParser *)self colorCache];
      v28 = [(AVTAvatarEditorColorDefaultsProvider *)v11 initWithColorDefaultsDictionary:v7 editingColors:v12];
    }

    else
    {
      v28 = 0;
    }

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v6;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(AVTEditingModelDefinitionsParser *)self coreModelGroupFromGroupDictionary:*(*(&v31 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [(AVTEditingModelDefinitionsParser *)self logger];
            v21 = [(AVTEditingModelDefinitionsParser *)self error];
            v22 = [v21 description];
            [v20 logParsingMetadataDefinitionsError:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    v23 = [AVTCoreModel alloc];
    v24 = [(AVTEditingModelDefinitionsParser *)self colorCache];
    v25 = [(AVTCoreModel *)v23 initWithGroups:v13 colors:v24 colorDefaultsProvider:v28 forPlatform:[(AVTEditingModelDefinitionsParser *)self platform]];

    v7 = v29;
    v6 = v30;
  }

  else
  {
    v26 = [objc_opt_class() errorWithDescription:@"Definitions must contain at least one group" underlyingError:0];
    [(AVTEditingModelDefinitionsParser *)self setError:v26];

    v25 = 0;
  }

  return v25;
}

- (id)coreModelGroupFromGroupDictionary:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = [(AVTEditingModelDefinitionsParser *)self applyPlatformOverrideForDictionary:a3];
  v5 = objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsGroupNameKey];
  v7 = [v5 localizedString:v6];

  if (v7 && [v7 length])
  {
    v8 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsCategoriesKey];
    if (AVTPrereleaseCategoriesEnabled())
    {
      v9 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPrereleaseCategoriesKey];
      v10 = v9;
      if (v9 && [v9 count])
      {
        v11 = v10;

        v8 = v11;
      }
    }

    if (v8 && [v8 count])
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v39;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [(AVTEditingModelDefinitionsParser *)self coreModelCategoryFromCategoryDictionary:*(*(&v38 + 1) + 8 * i)];
            if (!v18)
            {
              v34 = 0;
              goto LABEL_27;
            }

            v19 = v18;
            [v12 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v13 = [(AVTEditingModelDefinitionsParser *)self symbolNamesFromGroupDictionary:v4];
      v20 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPreviewModeKey];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:kAVTEditingModelDefinitionsPreviewModeTypeKey];
        v23 = [AVTEditingPreviewMode previewModeTypeForString:v22];

        v24 = [v21 objectForKeyedSubscript:kAVTEditingModelDefinitionsPreviewModeOptionsKey];
        v37 = v24;
        v25 = [v24 objectForKeyedSubscript:kAVTEditingModelDefinitionsPreviewModeOptionsCameraKey];
        v26 = v25;
        v27 = *MEMORY[0x1E698E230];
        if (v25)
        {
          v27 = v25;
        }

        v28 = v27;

        v29 = [v24 objectForKeyedSubscript:kAVTEditingModelDefinitionsPreviewModeOptionsBodyPosePackKey];
        v30 = v21;
        v31 = [[AVTEditingPreviewModeOptions alloc] initWithFramingMode:v28 bodyPosePack:v29];

        v32 = [[AVTEditingPreviewMode alloc] initWithType:v23 options:v31];
        v21 = v30;
      }

      else
      {
        v32 = +[AVTEditingPreviewMode defaultPreviewMode];
      }

      v34 = [[AVTCoreModelGroup alloc] initWithName:v7 symbolNames:v13 previewMode:v32 categories:v12];

LABEL_27:
    }

    else
    {
      v35 = [objc_opt_class() errorWithDescription:@"Group definitions must contain at least one category" underlyingError:0];
      [(AVTEditingModelDefinitionsParser *)self setError:v35];

      v34 = 0;
    }
  }

  else
  {
    v33 = [objc_opt_class() errorWithDescription:@"Group definitions must contain a non-empty name" underlyingError:0];
    [(AVTEditingModelDefinitionsParser *)self setError:v33];

    v34 = 0;
  }

  return v34;
}

- (id)symbolNamesFromGroupDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:kAVTEditingModelDefinitionsGroupSymbolKey];
  if (v4)
  {
    v5 = MEMORY[0x1E695DF90];
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v7 = [v5 dictionaryWithObject:v4 forKey:v6];

    v8 = [v3 objectForKeyedSubscript:kAVTEditingModelDefinitionsGroupSymbolDarkKey];
    if (v8)
    {
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
      [v7 setObject:v8 forKey:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)coreModelCategoryFromCategoryDictionary:(id)a3 parsedPickerKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:kAVTEditingModelDefinitionsCategoryNameKey];
  v9 = [AVTEditingModelMappings presetCategoryFromCategoryName:v8];
  v30 = [v9 integerValue];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__9;
  v52 = __Block_byref_object_dispose__9;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__9;
  v46 = __Block_byref_object_dispose__9;
  v47 = 0;
  v10 = [MEMORY[0x1E695DFA0] orderedSet];
  v11 = [(AVTEditingModelDefinitionsParser *)self applyPlatformOverrideForDictionary:v6];
  v12 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsCategoryPickersKey];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F0];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
  v29 = v8;
  if ([(AVTEditingModelDefinitionsParser *)self validateForCategoryWithEnumValue:v9 pickers:v15])
  {
    v27 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
    v28 = v7;
    v17 = [(AVTEditingModelDefinitionsParser *)self coreModelRowOptionsFromOptionsDictionary:v27];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __93__AVTEditingModelDefinitionsParser_coreModelCategoryFromCategoryDictionary_parsedPickerKeys___block_invoke;
    v31[3] = &unk_1E7F3BC08;
    v31[4] = self;
    v32 = v7;
    v40 = v30;
    v26 = v17;
    v33 = v26;
    v37 = v41;
    v34 = v9;
    v38 = &v48;
    v39 = &v42;
    v18 = v10;
    v35 = v10;
    v19 = v16;
    v36 = v19;
    [v15 enumerateObjectsUsingBlock:v31];
    v20 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairingKey];
    v21 = [(AVTEditingModelDefinitionsParser *)self pairingFromDictionary:v20];

    if (!v21)
    {
      v21 = [(AVTEditingModelDefinitionsParser *)self pairingFromDictionary:v11, v26];
    }

    v22 = [objc_opt_class() sortedModelRows:v19 forPlatform:{-[AVTEditingModelDefinitionsParser platform](self, "platform")}];
    v23 = [AVTCoreModelCategory alloc];
    v24 = [(AVTCoreModelCategory *)v23 initWithPresetCategory:v30 presets:v49[5] tags:v43[5] rows:v22 pairing:v21];

    _Block_object_dispose(v41, 8);
    v7 = v28;
  }

  else
  {
    v18 = v10;
    v24 = 0;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v24;
}

void __93__AVTEditingModelDefinitionsParser_coreModelCategoryFromCategoryDictionary_parsedPickerKeys___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) multicolorPickersDefinitions];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v12 = [*(a1 + 32) colorPickersDefinitions];
    v13 = [v12 objectForKeyedSubscript:v6];

    v14 = *(a1 + 32);
    if (!v13)
    {
      v33 = [v14 presetPickersDefinitions];
      v34 = [v33 objectForKeyedSubscript:v6];

      if (!v34)
      {
        goto LABEL_19;
      }

      if (!*(*(*(a1 + 88) + 8) + 40))
      {
        v35 = [*(a1 + 32) coreModelPresetsForCategory:*(a1 + 104)];
        v36 = *(*(a1 + 88) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        v38 = [*(a1 + 32) gatherAllTagsFromPresets:*(*(*(a1 + 88) + 8) + 40)];
        v39 = *(*(a1 + 96) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;
      }

      v41 = [*(a1 + 32) presetPickersDefinitions];
      v16 = [v41 objectForKeyedSubscript:v6];

      v25 = [*(a1 + 32) coreModelRowFromRowDictionary:v16 availableTags:*(*(*(a1 + 96) + 8) + 40) usedTags:*(a1 + 64) defaultOptions:*(a1 + 48)];
LABEL_17:

      if (v25)
      {
        [*(a1 + 72) addObject:v25];

        goto LABEL_26;
      }

LABEL_19:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Can't find a picker for identifier '%@'", v6}];
      goto LABEL_26;
    }

    v15 = [v14 colorPickersDefinitions];
    v16 = [v15 objectForKeyedSubscript:v6];

    v17 = AVTAvatarSettingDestinationForColorPickerIndex(*(*(*(a1 + 80) + 8) + 24));
    v18 = [v16 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickerPaletteKey];
    v19 = [AVTEditingModelMappings presetCategoryForColorPaletteName:v18];

    v20 = [*(a1 + 56) integerValue];
    v21 = *(a1 + 32);
    v42 = 0;
    v22 = [v21 validateForColorPicker:v16 colorPaletteCategory:v19 error:&v42];
    v23 = v42;
    v24 = v23;
    if (v22)
    {
      v25 = [*(a1 + 32) coreModelColorsRowForColorPickerDictionary:v16 settingDestination:v17 inCategory:v20 defaultOptions:*(a1 + 48)];
      ++*(*(*(a1 + 80) + 8) + 24);
      if (!v24)
      {
LABEL_12:

        goto LABEL_17;
      }

      [*(a1 + 32) setError:v24];
    }

    else
    {
      if (v23)
      {
        [*(a1 + 32) setError:v23];
      }

      *a4 = 1;
    }

    goto LABEL_25;
  }

  if (![*(a1 + 40) containsObject:v6])
  {
    v16 = [*(a1 + 40) arrayByAddingObject:v6];
    v26 = [*(a1 + 32) multicolorPickersDefinitions];
    v19 = [v26 objectForKeyedSubscript:v6];

    v27 = [*(a1 + 32) applyPlatformOverrideForDictionary:v19];
    v28 = *(a1 + 32);
    v29 = *(a1 + 104);
    v30 = *(a1 + 48);
    v43 = 0;
    v25 = [v28 coreModelMulticolorPickerForDictionary:v27 groupPickerCategory:v29 defaultOptions:v30 parsedPickerKeys:v16 error:&v43];
    v31 = v43;
    v32 = v31;
    if (!v25 && v31)
    {
      [*(a1 + 32) setError:v31];
      *a4 = 1;

LABEL_25:
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recursion found in multicolor picker definition"];
  v11 = [v9 errorWithDescription:v10 underlyingError:0];
  [*(a1 + 32) setError:v11];

  *a4 = 1;
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Recursion found in multicolor picker definition for identifier '%@'", v6}];
LABEL_26:
}

- (id)pairingFromDictionary:(id)a3
{
  if (a3)
  {
    v3 = kAVTEditingModelDefinitionsPairedCategoryKey;
    v4 = a3;
    v5 = [v4 objectForKeyedSubscript:v3];
    v6 = objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairedTitleKey];
    v8 = [v6 localizedString:v7];

    v9 = objc_opt_class();
    v10 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairTitleKey];
    v11 = [v9 localizedString:v10];

    v12 = objc_opt_class();
    v13 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsUnpairTitleKey];
    v14 = [v12 localizedString:v13];

    v15 = objc_opt_class();
    v16 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairedDescriptionKey];
    v17 = [v15 localizedString:v16];

    v18 = objc_opt_class();
    v19 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsUnpairedDescriptionKey];

    v20 = [v18 localizedString:v19];

    if (v5)
    {
      v21 = [AVTEditingModelMappings presetCategoryFromCategoryName:v5];
      v22 = [v21 integerValue];
    }

    else
    {
      v22 = 40;
      if (!v8 && !v11 && !v14)
      {
        v23 = 0;
        goto LABEL_5;
      }
    }

    v23 = [[AVTCoreModelPairing alloc] initWithPairedCategory:v22 pairedTitle:v8 pairTitle:v11 unpairTitle:v14 pairedDescription:v17 unpairedDescription:v20];
LABEL_5:

    goto LABEL_7;
  }

  v23 = 0;
LABEL_7:

  return v23;
}

- (id)coreModelColorsRowForColorPickerDictionary:(id)a3 settingDestination:(int64_t)a4 inCategory:(int64_t)a5 defaultOptions:(id)a6
{
  v10 = a6;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v29 = v10;
  v11 = [(AVTEditingModelDefinitionsParser *)self applyPlatformOverrideForDictionary:a3];
  v12 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickerPrimaryColorsKey];
  v13 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickerExtendedColorsKey];
  v14 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickerAlwaysExtendedKey];
  v28 = [v14 BOOLValue];

  v15 = objc_opt_class();
  v16 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsTitleKey];
  v17 = [v15 localizedString:v16];

  if (v12)
  {
    v18 = [(AVTEditingModelDefinitionsParser *)self coreModelColorsForColorDefinitions:v12 paletteSettingKind:a4, a5];
    if (!v13)
    {
LABEL_11:
      v20 = 0;
      if (!v18)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v13)
    {
      v18 = [(AVTEditingModelDefinitionsParser *)self coreModelColorsForPaletteSettingKind:a4, a5];
      goto LABEL_11;
    }

    v18 = 0;
  }

  v20 = [(AVTEditingModelDefinitionsParser *)self coreModelColorsForColorDefinitions:v13 paletteSettingKind:a4, a5];
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_12:
  if ([v18 count])
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v20 && [v20 count])
  {
LABEL_15:
    v27 = v12;
    v21 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairingKey];
    v22 = [(AVTEditingModelDefinitionsParser *)self pairingFromDictionary:v21];

    v23 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
    if (v23)
    {
      v24 = [(AVTEditingModelDefinitionsParser *)self coreModelRowOptionsFromOptionsDictionary:v23];
    }

    else
    {
      v24 = v29;
    }

    v25 = v24;
    v19 = [[AVTCoreModelColorsPicker alloc] initWithTitle:v17 primaryColors:v18 extendedColors:v20 alwaysShowExtended:v28 colorCategory:a5 destination:a4 pairing:v22 options:v24];

    v12 = v27;
    goto LABEL_20;
  }

  v19 = 0;
LABEL_20:

  v10 = v29;
LABEL_21:

  return v19;
}

- (id)coreModelMulticolorPickerForDictionary:(id)a3 groupPickerCategory:(int64_t)a4 defaultOptions:(id)a5 parsedPickerKeys:(id)a6 error:(id *)a7
{
  v100 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v73 = a5;
  v85 = a6;
  [(AVTEditingModelDefinitionsParser *)self initalizeColorCacheIfNeeded];
  v12 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorSubpickers];
  v97 = 0;
  v71 = v11;
  LOBYTE(a6) = [(AVTEditingModelDefinitionsParser *)self validateForMulticolorPicker:v11 subpickers:v12 error:&v97];
  v13 = v97;
  v14 = v13;
  if ((a6 & 1) == 0)
  {
    v48 = 0;
    if (a7 && v13)
    {
      v49 = v13;
      v48 = 0;
      *a7 = v14;
    }

    goto LABEL_66;
  }

  v74 = a7;
  v86 = self;
  v69 = v13;
  v84 = [MEMORY[0x1E695DF70] array];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v70 = v12;
  v15 = v12;
  v77 = [v15 countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v77)
  {
    v16 = 0;
    v75 = *v94;
    v17 = 0x1E7F39000uLL;
    obj = v15;
    while (2)
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v93 + 1) + 8 * i);
        v20 = [v19 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorPickerDestinationKey];
        v21 = v16;
        if (v20)
        {
          v21 = [v20 integerValue];
        }

        v81 = v16;
        v22 = AVTAvatarSettingDestinationForColorPickerIndex(v21);
        v23 = [v19 objectForKeyedSubscript:kAVTEditingModelDefinitionsCategoryNameKey];
        v24 = a4;
        if (v23)
        {
          v25 = [*(v17 + 3112) presetCategoryFromCategoryName:v23];
          v24 = [v25 integerValue];
        }

        v26 = *(v17 + 3112);
        v27 = [v19 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorPickerPaletteKey];
        v28 = [v26 presetCategoryForColorPaletteName:v27];

        v92 = 0;
        v29 = [(AVTEditingModelDefinitionsParser *)v86 validateForColorPicker:v19 colorPaletteCategory:v28 error:&v92];
        v30 = v92;
        v31 = v30;
        if (v29)
        {
          v32 = [(AVTEditingModelDefinitionsParser *)v86 coreModelColorsRowForColorPickerDictionary:v19 settingDestination:v22 inCategory:v24 defaultOptions:v73];
          [v84 addObject:v32];
          v16 = v81 + 1;
          v33 = v31 == 0;
        }

        else
        {
          v33 = 0;
          if (v74 && v30)
          {
            v34 = v30;
            v33 = 0;
            *v74 = v31;
          }

          v16 = v81;
        }

        if (!v33)
        {
          v48 = 0;
          v14 = v69;
          v12 = v70;
          goto LABEL_65;
        }

        v17 = 0x1E7F39000;
      }

      v15 = obj;
      v77 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
      if (v77)
      {
        continue;
      }

      break;
    }
  }

  v35 = v71;
  v36 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorNestedPresetPickers];
  obj = v36;
  if ([v36 count])
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v82 = v36;
    v37 = [v82 countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v37)
    {
      v38 = v37;
      v80 = 0;
      v39 = *v89;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v89 != v39)
          {
            objc_enumerationMutation(v82);
          }

          v41 = *(*(&v88 + 1) + 8 * j);
          v42 = [v41 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorNestedPresetPickersCategory];
          v43 = [(AVTEditingModelDefinitionsParser *)v86 coreModelCategoryFromCategoryDictionary:v42 parsedPickerKeys:v85];
          v44 = [v41 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorNestedPresetPickersIndex];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v44, "integerValue")}];

            v44 = v45;
          }

          if (v43)
          {
            v46 = v44 == 0;
          }

          else
          {
            v46 = 1;
          }

          if (!v46)
          {
            v47 = [v44 integerValue];
            if (v47 < [v84 count])
            {
              if (v80)
              {
                [v80 setObject:v43 forKeyedSubscript:v44];
              }

              else
              {
                v80 = [MEMORY[0x1E695DF90] dictionaryWithObject:v43 forKey:v44];
              }
            }
          }
        }

        v38 = [v82 countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v38);
    }

    else
    {
      v80 = 0;
    }

    v35 = v71;
  }

  else
  {
    v80 = 0;
  }

  v50 = [v35 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPicker];
  v14 = v69;
  v12 = v70;
  if (!v50)
  {
    v52 = 0;
    goto LABEL_50;
  }

  v87 = 0;
  v48 = [(AVTEditingModelDefinitionsParser *)v86 multicolorAuxiliaryPickerForDictionary:v50 error:&v87];
  v51 = v87;
  v52 = v51;
  if (v48)
  {

    v52 = v48;
LABEL_50:
    v53 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorPickerInitialState];
    v78 = v53;
    if (v53)
    {
      v76 = [v53 integerValue];
    }

    else
    {
      v76 = 0;
    }

    v54 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAllowsRemoval];
    v55 = v54;
    if (v54)
    {
      v56 = [v54 BOOLValue];
    }

    else
    {
      v56 = 1;
    }

    v57 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
    v83 = v50;
    if (v57)
    {
      v58 = v86;
      v59 = [(AVTEditingModelDefinitionsParser *)v86 coreModelRowOptionsFromOptionsDictionary:v57];
    }

    else
    {
      v59 = v73;
      v58 = v86;
    }

    v60 = objc_opt_class();
    v61 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsTitleKey];
    v62 = [v60 localizedString:v61];

    v63 = [v71 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorSubtitles];
    v64 = -[AVTEditingModelDefinitionsParser localizedSubtitlesForSubtitles:subpickerCount:](v58, "localizedSubtitlesForSubtitles:subpickerCount:", v63, [v84 count]);
    LOBYTE(v68) = v56;
    v65 = v80;
    v48 = [[AVTCoreModelMulticolorPicker alloc] initWithTitle:v62 subpickers:v84 subtitles:v64 nestedPresetPickers:v80 auxiliaryPicker:v52 initialState:v76 allowsRemoval:v68 options:v59];

    v14 = v69;
    v12 = v70;
    v50 = v83;
    goto LABEL_64;
  }

  if (v74 && v51)
  {
    v66 = v51;
    v48 = 0;
    *v74 = v52;
  }

  v65 = v80;
LABEL_64:

LABEL_65:
LABEL_66:

  return v48;
}

- (id)localizedSubtitlesForSubtitles:(id)a3 subpickerCount:(int64_t)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v7 = 0;
    v25 = *v33;
    v8 = 0x1E696A000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v9;
        v31 = *(*(&v32 + 1) + 8 * v9);
        v30 = [MEMORY[0x1E695DF90] dictionary];
        v10 = 0x1E696A000uLL;
        if (a4 >= 1)
        {
          v11 = 0;
          v28 = v7 - 1;
          do
          {
            v12 = [*(v8 + 3480) numberWithInteger:v11];
            v13 = [*(v10 + 3776) stringWithFormat:@"%ld", v11];
            v14 = [v31 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = [objc_opt_class() localizedString:v14];
              if (!v15)
              {
                goto LABEL_17;
              }
            }

            else
            {
              if (v7 < 1)
              {
                goto LABEL_17;
              }

              v16 = v7;
              v17 = a4;
              v18 = self;
              v19 = [v29 objectAtIndexedSubscript:v28];
              v20 = [v19 objectForKeyedSubscript:v13];
              if (v20)
              {
                v15 = [objc_opt_class() localizedString:v20];
              }

              else
              {
                v15 = 0;
              }

              self = v18;
              a4 = v17;
              v7 = v16;
              v8 = 0x1E696A000;
              v10 = 0x1E696A000;
              if (!v15)
              {
                goto LABEL_17;
              }
            }

            [v30 setObject:v15 forKeyedSubscript:v12];

LABEL_17:
            ++v11;
          }

          while (a4 != v11);
        }

        v21 = [v30 copy];
        [v29 addObject:v21];

        ++v7;
        v9 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }

  v22 = [v29 copy];

  return v22;
}

- (id)multicolorAuxiliaryPickerForDictionary:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItems];
  if ([v6 count])
  {
    v30 = a4;
    v32 = v5;
    v34 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      obj = v7;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItemIdentifier];
        v14 = objc_opt_class();
        v15 = [v12 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItemTitle];
        v16 = [v14 localizedString:v15];

        v17 = objc_opt_class();
        v18 = [v12 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItemMessage];
        v19 = [v17 localizedString:v18];

        if (!v13 || ![v13 length])
        {
          break;
        }

        if (!v16 || ![v16 length])
        {
          v20 = &kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItemTitle;
          goto LABEL_13;
        }

LABEL_14:
        v24 = [[AVTCoreModelMulticolorAuxilaryPickerItem alloc] initWithIdentifier:v13 title:v16 message:v19];
        [v34 addObject:v24];

        if (v9 == ++v11)
        {
          v7 = obj;
          v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      v20 = &kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerItemIdentifier;
LABEL_13:
      v21 = objc_opt_class();
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multicolor auxiliary picker items require a valid %@", *v20];
      v23 = [v21 errorWithDescription:v22 underlyingError:0];

      if (v23)
      {
        if (v30)
        {
          v28 = v23;
          *v30 = v23;
        }

        v27 = 0;
        v6 = v31;
        v5 = v32;
        v25 = obj;
        v26 = v34;
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_16:

    v5 = v32;
    v25 = [v32 objectForKeyedSubscript:kAVTEditingModelDefinitionsMulticolorAuxiliaryPickerType];
    v26 = v34;
    v27 = [[AVTCoreModelMulticolorAuxiliaryPicker alloc] initWithType:v25 items:v34];
    v6 = v31;
LABEL_20:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)validateForCategoryWithEnumValue:(id)a3 pickers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = @"Category definitions require a valid %@";
    v11 = &kAVTEditingModelDefinitionsCategoryNameKey;
    goto LABEL_7;
  }

  if (!v7 || ![v7 count])
  {
    v10 = @"Category definitions must contain at least one %@";
    v11 = &kAVTEditingModelDefinitionsCategoryPickersKey;
LABEL_7:
    v12 = objc_opt_class();
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, *v11];
    v14 = [v12 errorWithDescription:v13 underlyingError:0];
    [(AVTEditingModelDefinitionsParser *)self setError:v14];

    v9 = 0;
    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)validateForMulticolorPicker:(id)a3 subpickers:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 count])
  {
    LOBYTE(a5) = 1;
  }

  else if (a5)
  {
    v10 = objc_opt_class();
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multicolor definitions must contain at least one %@", kAVTEditingModelDefinitionsMulticolorSubpickers];
    *a5 = [v10 errorWithDescription:v11 underlyingError:0];

    LOBYTE(a5) = 0;
  }

  return a5;
}

- (BOOL)validateForColorPicker:(id)a3 colorPaletteCategory:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (v5 && a5)
  {
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"colorPicker, %@ doesn't match a valid category", kAVTEditingModelDefinitionsColorPickerPaletteKey];
    *a5 = [v8 errorWithDescription:v9 underlyingError:0];
  }

  return v6;
}

- (id)neutralMemojiPresetIdentifierForCategory:(int64_t)a3
{
  v5 = [(AVTEditingModelDefinitionsParser *)self neutralMemojiPresetsIdentifierPerCategory];

  if (!v5)
  {
    v6 = [MEMORY[0x1E698E2A0] neutralMemojiPresetsIdentifiersPerCategory];
    [(AVTEditingModelDefinitionsParser *)self setNeutralMemojiPresetsIdentifierPerCategory:v6];
  }

  v7 = [(AVTEditingModelDefinitionsParser *)self neutralMemojiPresetsIdentifierPerCategory];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (id)coreModelPresetsForCategory:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(AVTEditingModelDefinitionsParser *)self neutralMemojiPresetIdentifierForCategory:a3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [MEMORY[0x1E698E2A8] availablePresetsForCategory:{a3, 0}];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (v6)
        {
          v13 = [*(*(&v18 + 1) + 8 * i) identifier];
          v14 = [v13 isEqualToString:v6];
        }

        else
        {
          v14 = 0;
        }

        v15 = [[AVTCoreModelPreset alloc] initWithPreset:v12 isDefaultPreset:v14];
        [v5 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v5 copy];

  return v16;
}

- (id)coreModelColorsForPaletteSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(AVTEditingModelDefinitionsParser *)self colorCache];
  v6 = [v5 colorsForSettingKind:{var0, var1}];

  return v6;
}

- (id)coreModelColorsForColorDefinitions:(id)a3 paletteSettingKind:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = [v7 array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__AVTEditingModelDefinitionsParser_coreModelColorsForColorDefinitions_paletteSettingKind___block_invoke;
  v14[3] = &unk_1E7F3BC30;
  v14[4] = self;
  v16 = var0;
  v17 = var1;
  v10 = v9;
  v15 = v10;
  [v8 enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __90__AVTEditingModelDefinitionsParser_coreModelColorsForColorDefinitions_paletteSettingKind___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorNameKey];
  v4 = [v22 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorShowSliderKey];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) colorCache];
  v7 = [v6 colorForSettingKind:*(a1 + 48) identifier:{*(a1 + 56), v3}];

  if (!v7)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = AVTAvatarSettingKindDescription(*(a1 + 48));
    [v8 raise:v9 format:{@"Can't find matching color for name '%@' in color kind and category '%@'\nIs it missing from AvatarKit's palette plist?", v3, v10}];

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_5:
    v11 = [v22 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorRangeKey];
    v14 = v11;
    if (v11)
    {
      v15 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorRangeMinKey];
      [v15 floatValue];
      v17 = v16;

      v18 = [v14 objectForKeyedSubscript:kAVTEditingModelDefinitionsColorRangeMaxKey];
      [v18 floatValue];
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
      v17 = -1.0;
    }

    *&v12 = v17;
    *&v13 = v20;
    v21 = [v7 copyWithRangeMin:1 rangeMax:v12 showSlider:v13];

    v7 = v21;
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_9:
  [*(a1 + 40) addObject:v7];
}

- (id)gatherAllTagsFromPresets:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) tags];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __61__AVTEditingModelDefinitionsParser_gatherAllTagsFromPresets___block_invoke;
        v13[3] = &unk_1E7F3BC58;
        v14 = v4;
        [v10 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

void __61__AVTEditingModelDefinitionsParser_gatherAllTagsFromPresets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSet];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 unionOrderedSet:v5];
}

- (id)applyPlatformOverrideForDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"platformOverride"];
  if (v5 && (-[AVTEditingModelDefinitionsParser platformDictionaryKey](self, "platformDictionaryKey"), v6 = objc_claimAutoreleasedReturnValue(), [v5 objectForKey:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(AVTEditingModelDefinitionsParser *)self platformDictionaryKey];
    v9 = [v5 objectForKeyedSubscript:v8];
    v10 = [v9 mutableCopy];

    v11 = [v4 mutableCopy];
    v12 = [v11 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
      [v13 addEntriesFromDictionary:v14];

      [v11 setObject:v13 forKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
      [v10 removeObjectForKey:kAVTEditingModelDefinitionsOptionsKey];
    }

    [v11 addEntriesFromDictionary:v10];
    [v11 removeObjectForKey:@"platformOverride"];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (id)coreModelRowFromRowDictionary:(id)a3 availableTags:(id)a4 usedTags:(id)a5 defaultOptions:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AVTEditingModelDefinitionsParser *)self applyPlatformOverrideForDictionary:a3];
  v14 = objc_opt_class();
  v15 = [v13 objectForKeyedSubscript:kAVTEditingModelDefinitionsTitleKey];
  v16 = [v14 localizedString:v15];

  v17 = [v13 objectForKeyedSubscript:kAVTEditingModelDefinitionsTagsKey];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v17];
  }

  else if ([v11 count])
  {
    v19 = MEMORY[0x1E695DFA0];
    v20 = [v10 allKeys];
    v21 = [v19 orderedSetWithArray:v20];

    [v21 minusOrderedSet:v11];
    v18 = [v21 copy];
  }

  else
  {
    v18 = 0;
  }

  v22 = [v13 objectForKeyedSubscript:kAVTEditingModelDefinitionsOptionsKey];
  if (v22)
  {
    v23 = [(AVTEditingModelDefinitionsParser *)self coreModelRowOptionsFromOptionsDictionary:v22];
  }

  else
  {
    v23 = v12;
  }

  v24 = v23;
  if (v23)
  {
    v25 = [v13 objectForKeyedSubscript:kAVTEditingModelDefinitionsPairingKey];
    v26 = self;
    v27 = v18;
    v28 = v16;
    v29 = v11;
    v30 = v10;
    v31 = v25;
    [(AVTEditingModelDefinitionsParser *)v26 pairingFromDictionary:v25];
    v36 = v17;
    v33 = v32 = v12;

    v10 = v30;
    v11 = v29;
    v16 = v28;
    v18 = v27;
    v34 = [[AVTCoreModelPresetsPicker alloc] initWithTitle:v16 representedTags:v27 pairing:v33 options:v24];

    v12 = v32;
    v17 = v36;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)coreModelRowOptionsFromOptionsDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsSeparatorKey];
  v6 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsCameraKey];
  v7 = [AVTEditingModelMappings framingModeForCameraIdentifier:v6];

  v8 = [MEMORY[0x1E695DF70] array];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v9 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPresetOverridesKey];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __77__AVTEditingModelDefinitionsParser_coreModelRowOptionsFromOptionsDictionary___block_invoke;
  v44[3] = &unk_1E7F3BC80;
  v44[4] = self;
  v46 = &v47;
  v10 = v8;
  v45 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v44];
  if (v48[3])
  {
    v11 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsPoseOverrideKey];
    if ([v11 count])
    {
      v12 = [objc_alloc(MEMORY[0x1E698E288]) initWithDictionaryRepresentation:v11];
    }

    else
    {
      v12 = 0;
    }

    v14 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsCameraOverridesKey];
    v35 = v14;
    if (v14)
    {
      v36 = [[AVTCoreModelFramingModeOverrides alloc] initWithCameraOverrides:v14];
    }

    else
    {
      v36 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsDisplayModeKey];
    v34 = [AVTCoreModelPickerOptions displayModeFromString:v15];

    v16 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsDisplayConditionKey];
    if (v16)
    {
      v33 = [AVTCoreModelPickerDisplayCondition displayConditionFromDictionnary:v16];
    }

    else
    {
      v33 = 0;
    }

    v40 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsSortingKey];
    v17 = [objc_opt_class() defaultSortingOptionForPlatform:{-[AVTEditingModelDefinitionsParser platform](self, "platform")}];
    if (v40)
    {
      v17 = [AVTCoreModelPickerOptions sortingOptionFromString:?];
    }

    v18 = v17;
    v32 = v16;
    if (v5)
    {
      v19 = [v5 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v39 = v10;
    v20 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsStickerConfigurationKey];
    v21 = v12;
    v41 = [v20 objectForKeyedSubscript:kAVTEditingModelDefinitionsStickerConfigurationNameKey];
    v22 = [v20 objectForKeyedSubscript:kAVTEditingModelDefinitionsStickerConfigurationPackKey];
    v30 = v11;
    v37 = v22;
    v38 = v7;
    v31 = v5;
    v23 = 0;
    if (v41 && v22)
    {
      v24 = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v22];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __77__AVTEditingModelDefinitionsParser_coreModelRowOptionsFromOptionsDictionary___block_invoke_2;
      v42[3] = &unk_1E7F3BCA8;
      v43 = v41;
      v23 = [v24 avt_firstObjectPassingTest:v42];
    }

    v25 = [v4 objectForKeyedSubscript:kAVTEditingModelDefinitionsShowsLabelKey];
    if ((AVTUIEditorShowAssetsName_once() & 1) != 0 || v25 && [v25 BOOLValue])
    {
      v26 = v19;
      v27 = 1;
    }

    else
    {
      v26 = v19;
      v27 = 0;
    }

    LOBYTE(v29) = v27;
    v13 = [[AVTCoreModelPickerOptions alloc] initWithFramingMode:v38 separatorFlag:v26 presetOverrides:v39 poseOverride:v21 framingModeOverrides:v36 displayMode:v34 displayCondition:v33 sortingOption:v18 stickerConfiguration:v23 showsLabel:v29];

    v5 = v31;
    v7 = v38;
    v10 = v39;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v47, 8);

  return v13;
}

void __77__AVTEditingModelDefinitionsParser_coreModelRowOptionsFromOptionsDictionary___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = [AVTEditingModelMappings presetCategoryFromCategoryName:v16];
  v9 = [v8 integerValue];

  v10 = [MEMORY[0x1E698E2A8] presetWithCategory:v9 identifier:v7];
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [[AVTCoreModelPreset alloc] initWithPreset:v10];
    [v11 addObject:v12];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't find a preset override for category %@, identifier %@", v16, v7];
    v15 = [v13 errorWithDescription:v14 underlyingError:0];
    [*(a1 + 32) setError:v15];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __77__AVTEditingModelDefinitionsParser_coreModelRowOptionsFromOptionsDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

@end