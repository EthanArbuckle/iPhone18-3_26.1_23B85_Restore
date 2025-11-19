@interface AVTAvatarAttributeEditorModelBuilder
+ (id)buildDataSourceCategoriesFromCoreModel:(id)a3 selectingFromAvatarConfiguration:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 stickerRenderer:(id)a7 modelManager:(id)a8 withSelectedCategory:(id)a9 atIndex:(unint64_t)a10;
+ (id)filterPresets:(id)a3 forRowRepresentingTags:(id)a4 currentTagSelection:(id)a5 fixedTags:(id)a6 availableTags:(id)a7 sortingOption:(unint64_t)a8;
+ (id)filterPresets:(id)a3 matchingTagValues:(id)a4 sortedUsing:(unint64_t)a5;
+ (id)firstColorSectionInSections:(id)a3;
+ (id)framingModeForRow:(id)a3 selectedPreset:(id)a4;
+ (id)multicolorSectionProviderForCoreMulticolorPicker:(id)a3 platform:(unint64_t)a4 configuration:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 editingColors:(id)a8 colorDefaultsProvider:(id)a9 modelManager:(id)a10 previousSectionMap:(id)a11 pairingPickers:(id)a12;
+ (id)previewModeForCoreModelGroup:(id)a3;
+ (id)sectionColorItemsForColors:(id)a3 selectedPreset:(id)a4 configuration:(id)a5 modelManager:(id)a6 additionalUpdateKind:(id)a7 imageProvider:(id)a8 colorLayerProvider:(id)a9 pairedCategory:(int64_t)a10 editingColors:(id)a11;
+ (id)sectionForModelColorsRow:(id)a3 configuration:(id)a4 modelManager:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 pairedCategory:(int64_t)a8 destination:(int64_t)a9 editingColors:(id)a10 displaysTitle:(BOOL)a11;
+ (id)sectionForModelColorsRow:(id)a3 selectedColorPreset:(id)a4 configuration:(id)a5 modelManager:(id)a6 additionalAvatarUpdateKind:(id)a7 imageProvider:(id)a8 colorLayerProvider:(id)a9 pairedCategory:(int64_t)a10 destination:(int64_t)a11 editingColors:(id)a12 displaysTitle:(BOOL)a13;
+ (id)sectionForModelRow:(id)a3 fromModelPresets:(id)a4 selectedModelPreset:(id)a5 tagSelection:(id)a6 fixedTags:(id)a7 availableTags:(id)a8 category:(int64_t)a9 imageProvider:(id)a10 stickerRenderer:(id)a11 configuration:(id)a12 previousSection:(id)a13 pairedCategory:(int64_t)a14;
+ (id)sectionOptionFromModelOptions:(id)a3;
+ (id)sectionProvidersForCoreModelCategory:(id)a3 platform:(unint64_t)a4 modelManager:(id)a5 pairingPickers:(id)a6 editingColors:(id)a7 colorDefaultsProvider:(id)a8 previousSectionMap:(id)a9 imageProvider:(id)a10 colorLayerProvider:(id)a11 stickerRenderer:(id)a12 configuration:(id)a13 displayConditionEvaluator:(id)a14;
+ (id)selectedModelPresetForSelectedPreset:(id)a3 inPresetsList:(id)a4;
+ (id)selectedPresetForCoreModelColorsPicker:(id)a3 isEnabled:(BOOL)a4 fallbackToColorsPicker:(id)a5 colorDefaultsProvider:(id)a6 modelManager:(id)a7;
+ (id)subtitleFromSubtitles:(id)a3 forIndex:(int64_t)a4 enabledIndex:(int64_t)a5;
+ (id)tagCombinationsForTagNames:(id)a3 availableTags:(id)a4;
+ (id)tagSetByRemovingTagNames:(id)a3 fromTagSet:(id)a4;
+ (id)tagSetForTagNames:(id)a3 inTagSet:(id)a4;
+ (int)scoreForTags:(id)a3 forCombination:(id)a4 currentSelection:(id)a5;
+ (unint64_t)destinationForPresetCategory:(int64_t)a3 isPaired:(BOOL)a4;
+ (void)addTags:(id)a3 toMutableTagSet:(id)a4;
+ (void)insertPreset:(id)a3 intoList:(id)a4 forSortingOption:(unint64_t)a5;
+ (void)setTags:(id)a3 onMutableTagSet:(id)a4;
@end

@implementation AVTAvatarAttributeEditorModelBuilder

+ (unint64_t)destinationForPresetCategory:(int64_t)a3 isPaired:(BOOL)a4
{
  result = 0;
  if (a3 > 29)
  {
    if (a3 == 31)
    {
LABEL_10:
      if (a4)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    if (a3 != 30)
    {
      return result;
    }
  }

  else if (a3 != 25)
  {
    if (a3 != 26)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (a4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

+ (id)buildDataSourceCategoriesFromCoreModel:(id)a3 selectingFromAvatarConfiguration:(id)a4 imageProvider:(id)a5 colorLayerProvider:(id)a6 stickerRenderer:(id)a7 modelManager:(id)a8 withSelectedCategory:(id)a9 atIndex:(unint64_t)a10
{
  v79 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v58 = a4;
  v57 = a5;
  v56 = a6;
  v55 = a7;
  v16 = a8;
  v17 = a9;
  v48 = [MEMORY[0x1E695DF70] array];
  v52 = [v15 platform];
  v59 = [MEMORY[0x1E695DF90] dictionary];
  v45 = v17;
  if (v17)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v18 = [v17 sections];
    v19 = [v18 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v73;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          v24 = [v23 identifier];
          [v59 setObject:v23 forKeyedSubscript:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v20);
    }
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __203__AVTAvatarAttributeEditorModelBuilder_buildDataSourceCategoriesFromCoreModel_selectingFromAvatarConfiguration_imageProvider_colorLayerProvider_stickerRenderer_modelManager_withSelectedCategory_atIndex___block_invoke;
  v69[3] = &unk_1E7F3CF80;
  v54 = v16;
  v70 = v54;
  v71 = a10;
  v53 = MEMORY[0x1BFB0DE80](v69);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [v15 groups];
  v49 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v49)
  {
    v47 = *v66;
    do
    {
      v25 = 0;
      do
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v25;
        v26 = *(*(&v65 + 1) + 8 * v25);
        v27 = [MEMORY[0x1E695DF70] array];
        v28 = [MEMORY[0x1E695DF90] dictionary];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v50 = v26;
        v29 = [v26 categories];
        v30 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v62;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v62 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v61 + 1) + 8 * j);
              v35 = [v15 colors];
              v36 = [v15 colorDefaultsProvider];
              v37 = [a1 sectionProvidersForCoreModelCategory:v34 platform:v52 modelManager:v54 pairingPickers:v28 editingColors:v35 colorDefaultsProvider:v36 previousSectionMap:v59 imageProvider:v57 colorLayerProvider:v56 stickerRenderer:v55 configuration:v58 displayConditionEvaluator:v53];

              if (v37)
              {
                [v27 addObjectsFromArray:v37];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v61 objects:v76 count:16];
          }

          while (v31);
        }

        v38 = [a1 previewModeForCoreModelGroup:v50];
        v39 = [AVTAvatarAttributeEditorCategory alloc];
        v40 = [v50 name];
        v41 = [v50 symbolNames];
        v42 = [(AVTAvatarAttributeEditorCategory *)v39 initWithSectionProviders:v27 localizedName:v40 previewMode:v38 modelGroup:v50 symbolNames:v41];

        [v48 addObject:v42];
        v25 = v51 + 1;
      }

      while (v51 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v49);
  }

  v43 = [v48 copy];

  return v43;
}

uint64_t __203__AVTAvatarAttributeEditorModelBuilder_buildDataSourceCategoriesFromCoreModel_selectingFromAvatarConfiguration_imageProvider_colorLayerProvider_stickerRenderer_modelManager_withSelectedCategory_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) shouldDisplaySectionWithDisplayCondition:a2 inCategoryAtIndex:*(a1 + 40)];
  }

  else
  {
    return 1;
  }
}

+ (id)sectionProvidersForCoreModelCategory:(id)a3 platform:(unint64_t)a4 modelManager:(id)a5 pairingPickers:(id)a6 editingColors:(id)a7 colorDefaultsProvider:(id)a8 previousSectionMap:(id)a9 imageProvider:(id)a10 colorLayerProvider:(id)a11 stickerRenderer:(id)a12 configuration:(id)a13 displayConditionEvaluator:(id)a14
{
  v109 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  v89 = a6;
  v99 = a7;
  v88 = a8;
  v20 = v19;
  v94 = a9;
  v101 = a10;
  v98 = a11;
  v80 = a12;
  v21 = a13;
  v22 = a14;
  v81 = v18;
  if (!v19)
  {
    goto LABEL_5;
  }

  if (![v19 shouldDisplaySectionForCategory:{objc_msgSend(v18, "presetCategory")}])
  {
    v35 = 0;
    goto LABEL_60;
  }

  v23 = [v19 editorState];
  v24 = [v18 pairing];
  v25 = [v23 isCategoryPaired:{objc_msgSend(v24, "pairedCategory")}];

  if (v25)
  {
    v26 = [v18 pairing];
    v93 = [v26 pairedCategory];

    v90 = 1;
  }

  else
  {
LABEL_5:
    v90 = 0;
    v93 = 40;
  }

  v27 = a1;
  v28 = [v18 pairing];

  if (v28)
  {
    v29 = [v20 colorsState];
    v30 = [AVTAvatarUpdaterFactory updaterForPairingCategory:v18 colorsState:v29];

    v31 = [AVTAvatarAttributeEditorSectionSupplementalPicker pickerForPairableModelCategory:v18 isPaired:v90 avatarUpdaterOnPair:v30];
    v32 = MEMORY[0x1E696AD98];
    v33 = [v81 pairing];
    v34 = [v32 numberWithInteger:{objc_msgSend(v33, "pairedCategory")}];
    v97 = v31;
    [v89 setObject:v31 forKeyedSubscript:v34];

    v18 = v81;
  }

  else
  {
    v97 = 0;
  }

  v92 = [MEMORY[0x1E695DF70] array];
  v76 = [MEMORY[0x1E695DF70] array];
  v36 = [v21 presetForCategory:{objc_msgSend(v18, "presetCategory")}];
  v37 = [v36 preset];

  v38 = [v18 presets];
  v75 = v37;
  v39 = [a1 selectedModelPresetForSelectedPreset:v37 inPresetsList:v38];

  v79 = v39;
  v40 = [v39 tags];
  v83 = [v40 copy];

  v78 = [v18 tags];
  v82 = [MEMORY[0x1E695DF90] dictionary];
  [v18 pickers];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v107 = 0u;
  v102 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v102)
  {
    v103 = 0;
    v100 = *v105;
    v84 = v20;
    v77 = v21;
    v96 = v22;
    do
    {
      for (i = 0; i != v102; ++i)
      {
        if (*v105 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v104 + 1) + 8 * i);
        if (v22)
        {
          v43 = [*(*(&v104 + 1) + 8 * i) options];
          v44 = [v43 displayCondition];
          v45 = v22[2](v22, v44);

          if (!v45)
          {
            continue;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = v42;
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;
        if (v47)
        {
          v48 = [v27 multicolorSectionProviderForCoreMulticolorPicker:v47 platform:a4 configuration:v21 imageProvider:v101 colorLayerProvider:v98 editingColors:v99 colorDefaultsProvider:v88 modelManager:v20 previousSectionMap:v94 pairingPickers:v89];
          if (v48)
          {
            [v92 addObject:v48];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v42;
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        if (v50)
        {
          LOBYTE(v74) = 1;
          v51 = [v27 sectionForModelColorsRow:v50 configuration:v21 modelManager:v20 imageProvider:v101 colorLayerProvider:v98 pairedCategory:v93 destination:AVTAvatarSettingDestinationForColorPickerIndex(v103) editingColors:v99 displaysTitle:v74];
          if (v97)
          {
            v52 = [v42 pairing];
            if (!v52)
            {
              goto LABEL_44;
            }

            v53 = v52;
            v54 = [v42 pairing];
            v55 = v54;
            if (v90)
            {
              [v54 localizedUnpairTitle];
            }

            else
            {
              [v54 localizedPairTitle];
            }
            v67 = ;

            v20 = v84;
            if (v67)
            {
              v68 = [v97 copyWithLocalizedTitle:v67];
              [v51 setSupplementalPicker:v68];
            }

            else
            {
LABEL_44:
              [v51 setSupplementalPicker:v97];
            }

            v27 = a1;
            if (v90)
            {
              v69 = [v42 pairing];
              v70 = [v69 localizedPairedTitle];
              if (v70)
              {
                [v51 setLocalizedName:v70];
              }

              else
              {
                v71 = [v81 pairing];
                v72 = [v71 localizedPairedTitle];
                [v51 setLocalizedName:v72];

                v20 = v84;
              }

              v27 = a1;
            }
          }

          if (v51)
          {
            [v92 addObject:v51];
          }

          ++v103;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v42;
          }

          else
          {
            v56 = 0;
          }

          v51 = v56;
          if (v51)
          {
            v85 = v47;
            v57 = [v42 identifier];
            v58 = [v94 objectForKeyedSubscript:v57];

            v59 = [v81 presets];
            v86 = v58;
            v60 = [v27 sectionForModelRow:v42 fromModelPresets:v59 selectedModelPreset:v79 tagSelection:v83 fixedTags:v82 availableTags:v78 category:objc_msgSend(v81 imageProvider:"presetCategory") stickerRenderer:v101 configuration:v80 previousSection:v21 pairedCategory:{v58, v93}];

            if (v60)
            {
              v61 = [v51 representedTags];
              v62 = [a1 tagSetForTagNames:v61 inTagSet:v83];

              [a1 setTags:v62 onMutableTagSet:v82];
              v63 = [v60 options];
              v64 = [v63 displayMode];

              if (v64 == 1)
              {
                v65 = [a1 firstColorSectionInSections:v76];
                if (v65)
                {
                  v66 = [AVTAvatarAttributeEditorSectionSupplementalPicker pickerFromEditorSection:v60];
                  [v65 setSupplementalPicker:v66];
                }
              }

              else
              {
                [v92 addObject:v60];
              }

              v20 = v84;
            }

            v27 = a1;
            v21 = v77;
            v47 = v85;
          }
        }

        v22 = v96;
      }

      v102 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
    }

    while (v102);
  }

  v35 = [v92 copy];

LABEL_60:

  return v35;
}

+ (id)previewModeForCoreModelGroup:(id)a3
{
  v3 = a3;
  v4 = [AVTAvatarAttributeEditorPreviewModeOptions alloc];
  v5 = [v3 previewMode];
  v6 = [v5 options];
  v7 = [v6 framingMode];
  v8 = [v3 previewMode];
  v9 = [v8 options];
  v10 = [v9 bodyPosePack];
  v11 = [(AVTAvatarAttributeEditorPreviewModeOptions *)v4 initWithFramingMode:v7 bodyPosePack:v10];

  v12 = [v3 previewMode];

  v13 = +[AVTAvatarAttributeEditorPreviewMode attributeEditorPreviewModeTypeForEditingPreviewModeType:](AVTAvatarAttributeEditorPreviewMode, "attributeEditorPreviewModeTypeForEditingPreviewModeType:", [v12 type]);
  v14 = [[AVTAvatarAttributeEditorPreviewMode alloc] initWithType:v13 options:v11];

  return v14;
}

+ (id)selectedModelPresetForSelectedPreset:(id)a3 inPresetsList:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v5 identifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)sectionForModelColorsRow:(id)a3 configuration:(id)a4 modelManager:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 pairedCategory:(int64_t)a8 destination:(int64_t)a9 editingColors:(id)a10 displaysTitle:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  if (v16 && ([v16 isEmpty] & 1) == 0)
  {
    [v18 colorsState];
    v23 = v29 = a8;
    v24 = [v23 selectedColorPresetForCategory:objc_msgSend(v16 destinationIndex:{"colorCategory"), a9}];

    v25 = AVTColorSettingKind(40, 0);
    LOBYTE(v28) = a11;
    v22 = [a1 sectionForModelColorsRow:v16 selectedColorPreset:v24 configuration:v17 modelManager:v18 additionalAvatarUpdateKind:v25 imageProvider:v26 colorLayerProvider:v19 pairedCategory:v20 destination:v29 editingColors:a9 displaysTitle:{v21, v28}];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)sectionForModelColorsRow:(id)a3 selectedColorPreset:(id)a4 configuration:(id)a5 modelManager:(id)a6 additionalAvatarUpdateKind:(id)a7 imageProvider:(id)a8 colorLayerProvider:(id)a9 pairedCategory:(int64_t)a10 destination:(int64_t)a11 editingColors:(id)a12 displaysTitle:(BOOL)a13
{
  var1 = a7.var1;
  var0 = a7.var0;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v53 = v24;
  v54 = v21;
  v52 = v23;
  if (!v18 || (v25 = v24, ([v18 isEmpty] & 1) != 0))
  {
    v26 = v22;
    v27 = 0;
    goto LABEL_19;
  }

  v48 = v19;
  v28 = [v18 primaryColors];

  if (v28)
  {
    v29 = [v18 primaryColors];
    v46 = [a1 sectionColorItemsForColors:v29 selectedPreset:v48 configuration:v20 modelManager:v21 additionalUpdateKind:var0 imageProvider:var1 colorLayerProvider:v22 pairedCategory:v23 editingColors:{a10, v25}];
  }

  else
  {
    v46 = 0;
  }

  v30 = [v18 extendedColors];

  if (v30)
  {
    v31 = [v18 extendedColors];
    v45 = [a1 sectionColorItemsForColors:v31 selectedPreset:v48 configuration:v20 modelManager:v21 additionalUpdateKind:var0 imageProvider:var1 colorLayerProvider:v22 pairedCategory:v23 editingColors:{a10, v25}];
  }

  else
  {
    v45 = 0;
  }

  v47 = v20;
  if (a10 == 40)
  {
    v32 = 0;
    if (a13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v33 = [v18 pairing];
  v32 = v33 != 0;

  if (!a13)
  {
LABEL_16:
    v26 = v22;
    v49 = 0;
    goto LABEL_18;
  }

  v34 = [v18 pairing];
  if (!v34)
  {
LABEL_17:
    v26 = v22;
    v49 = [v18 title];
    goto LABEL_18;
  }

  v35 = v34;
  v26 = v22;
  v36 = [v18 pairing];
  v49 = [v36 localizedPairedTitle];

LABEL_18:
  v37 = [v18 options];
  v38 = [a1 sectionOptionFromModelOptions:v37];

  v51 = [objc_opt_class() destinationForPresetCategory:objc_msgSend(v18 isPaired:{"colorCategory"), v32}];
  v39 = [AVTAvatarAttributeEditorColorSection alloc];
  v40 = [v54 colorsState];
  v41 = [v40 variationStore];
  v42 = [v18 identifier];
  LOBYTE(v44) = [v18 alwaysShowExtended];
  v27 = [(AVTAvatarAttributeEditorColorSection *)v39 initWithPrimaryItems:v46 extendedItems:v45 colorVariationStore:v41 localizedName:v49 identifier:v42 intendedDestination:v51 alwaysShowExtended:v44 options:v38];

  v20 = v47;
  v19 = v48;
LABEL_19:

  return v27;
}

+ (id)multicolorSectionProviderForCoreMulticolorPicker:(id)a3 platform:(unint64_t)a4 configuration:(id)a5 imageProvider:(id)a6 colorLayerProvider:(id)a7 editingColors:(id)a8 colorDefaultsProvider:(id)a9 modelManager:(id)a10 previousSectionMap:(id)a11 pairingPickers:(id)a12
{
  v193 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v162 = a5;
  v160 = a6;
  v159 = a7;
  v158 = a8;
  v17 = v16;
  v167 = a9;
  v18 = a10;
  v147 = a11;
  v146 = a12;
  v19 = MEMORY[0x1E695DF70];
  v20 = [v17 subpickers];
  v140 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

  v21 = MEMORY[0x1E695DF70];
  v22 = [v17 subpickers];
  v136 = [v21 arrayWithCapacity:{objc_msgSend(v22, "count")}];

  v23 = MEMORY[0x1E695DF70];
  v24 = [v17 subpickers];
  v25 = [v23 arrayWithCapacity:{objc_msgSend(v24, "count")}];

  v148 = v25;
  v139 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
  v26 = [v18 editorState];
  v27 = [v17 identifier];
  v137 = [v26 selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:v27];

  v28 = [v18 editorState];
  v29 = [v17 identifier];
  v30 = [v28 enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:v29];

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = [v17 subpickers];
  v141 = v17;
  v161 = v18;
  v154 = [obj countByEnumeratingWithState:&v186 objects:v192 count:16];
  if (!v154)
  {
    v138 = 0;
    v32 = a1;
    goto LABEL_77;
  }

  v138 = 0;
  v31 = 0;
  v152 = *v187;
  v153 = v30 + 1;
  v32 = a1;
  v163 = v30;
  do
  {
    for (i = 0; i != v154; ++i)
    {
      if (*v187 != v152)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v186 + 1) + 8 * i);
      if (v31 < 1)
      {
        v36 = 0;
      }

      else
      {
        v35 = [v17 subpickers];
        v36 = [v35 objectAtIndexedSubscript:v31 - 1];
      }

      v164 = v36;
      v171 = [v32 selectedPresetForCoreModelColorsPicker:v34 isEnabled:v31 <= v30 fallbackToColorsPicker:v36 colorDefaultsProvider:v167 modelManager:v18];
      v37 = AVTColorSettingKind(40, 0);
      v39 = v38;
      v41 = [v34 colorCategory] == 1 && objc_msgSend(v34, "destination") == 1 && v30 == 0;
      v43 = [v34 colorCategory] == 2 && objc_msgSend(v34, "destination") == 1 && v30 == 0;
      v168 = v31;
      if (v41 || v43)
      {
        v44 = v31 + 1;
        v45 = [v17 subpickers];
        if (v44 < [v45 count])
        {
          v46 = [v17 subpickers];
          v47 = [v46 objectAtIndexedSubscript:v44];

          v30 = v163;
          if (!v47)
          {
            goto LABEL_30;
          }

          v37 = [v47 destination];
          v39 = [v47 colorCategory];
          v45 = v47;
        }
      }

LABEL_30:
      LOBYTE(v135) = 0;
      v48 = [v32 sectionForModelColorsRow:v34 selectedColorPreset:v171 configuration:v162 modelManager:v18 additionalAvatarUpdateKind:v37 imageProvider:v39 colorLayerProvider:v160 pairedCategory:v159 destination:40 editingColors:objc_msgSend(v34 displaysTitle:{"destination"), v158, v135}];
      if (!v48)
      {
        v31 = v168;
        v63 = v164;
        goto LABEL_73;
      }

      [v148 addObject:v48];
      v31 = v168;
      v150 = v168 > v30;
      v49 = [v48 sectionItems];
      v50 = [v49 indexOfObjectPassingTest:&__block_literal_global_29];

      if (v50 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      v52 = [v48 sectionItems];
      v155 = [v52 objectAtIndexedSubscript:v51];

      if (v168 >= 1)
      {
        if ([v34 destination] == 1)
        {
          v53 = [v18 colorsState];
          v54 = [v53 variationStore];
          v55 = [v138 color];
          v56 = [v54 colorPresetFromColor:v55];

          v57 = [v138 color];
          v58 = [v57 copyForPairedCategory:{objc_msgSend(v34, "colorCategory")}];
          v59 = MEMORY[0x1E696AD98];
          [v56 variation];
          v60 = [v59 numberWithFloat:?];
          v61 = [v18 colorsState];
          v62 = [AVTAvatarUpdaterFactory updaterForColor:v58 variationOverride:v60 colorsState:v61 pairedColors:0 additionalColor:0 saveToColorsState:0];

          v18 = v161;
        }

        else
        {
          v62 = +[AVTAvatarUpdaterFactory updaterForClearingColorsForCategory:destination:](AVTAvatarUpdaterFactory, "updaterForClearingColorsForCategory:destination:", [v34 colorCategory], objc_msgSend(v34, "destination"));
        }

        v65 = [v62 copy];
        v66 = MEMORY[0x1BFB0DE80]();
        [v140 addObject:v66];

        v67 = [v18 colorsState];
        v68 = [v67 selectedColorForCategory:objc_msgSend(v34 destinationIndex:{"colorCategory"), objc_msgSend(v34, "destination")}];

        if (v167 && !v68)
        {
          v69 = [v167 defaultColorForCategory:objc_msgSend(v34 destination:"colorCategory") withConfiguration:{AVTAvatarSettingColorIndexForColorDestination(objc_msgSend(v34, "destination")), v162}];
          v68 = v69;
          if (v69)
          {
            v70 = v69;
          }
        }

        if (!v68)
        {
          v71 = [v17 subpickers];
          v72 = [v71 objectAtIndexedSubscript:v168 - 1];

          v73 = [v18 colorsState];
          v74 = [v73 selectedColorForCategory:objc_msgSend(v72 destinationIndex:{"colorCategory"), objc_msgSend(v72, "destination")}];

          v68 = [v74 copyForCategory:objc_msgSend(v34 destination:{"colorCategory"), objc_msgSend(v34, "destination")}];
        }

        v75 = [v18 colorsState];
        v76 = [AVTAvatarUpdaterFactory updaterForColor:v68 colorsState:v75 pairedColors:0 additionalColor:0 saveToColorsState:0];

        v64 = 0;
        if (v168 > v153)
        {
          v30 = v163;
          if (v76)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v30 = v163;
          if (v168 > v163)
          {
            v64 = MEMORY[0x1BFB0DE80](v76);
          }

          if (v76)
          {
LABEL_51:
            v77 = [v76 copy];
            v78 = MEMORY[0x1BFB0DE80]();
            [v136 addObject:v78];

            v30 = v163;
          }
        }

        v32 = a1;
        v31 = v168;
        goto LABEL_53;
      }

      v64 = 0;
      v62 = 0;
LABEL_53:
      v157 = v62;
      if (v31 > v153)
      {
        v63 = v164;
        v92 = v155;
      }

      else
      {
        v151 = v48;
        v149 = v64;
        v79 = [v17 allowsRemoval];
        if (v31 > 0)
        {
          v80 = v79;
        }

        else
        {
          v80 = 0;
        }

        v81 = [v17 subtitles];
        [v32 subtitleFromSubtitles:v81 forIndex:v31 enabledIndex:v163];
        v82 = v17;
        v84 = v83 = v31;

        v85 = v163;
        v86 = v84;
        v87 = v82;
        v144 = v86;
        if (!v86)
        {
          if (v83 <= v163)
          {
            v86 = [v34 title];
          }

          else
          {
            v88 = MEMORY[0x1E696AEC0];
            v89 = AVTAvatarUIBundle();
            v90 = [v89 localizedStringForKey:@"ADD_MULTICOLOR_FORMAT" value:&stru_1F39618F0 table:@"Localized"];
            v91 = [v34 title];
            v86 = [v88 stringWithFormat:v90, v91];

            v85 = v163;
          }

          v87 = v141;
          v83 = v168;
        }

        v143 = v83 > v85;
        if (v80)
        {
          v93 = v157;
        }

        else
        {
          v93 = 0;
        }

        v94 = v80;
        v95 = MEMORY[0x1BFB0DE80](v93);
        v96 = [AVTAvatarAttributeEditorMulticolorPickerSectionItem alloc];
        v97 = [v151 identifier];
        v98 = [v151 colorVariationStore];
        v181[0] = MEMORY[0x1E69E9820];
        v181[1] = 3221225472;
        v181[2] = __228__AVTAvatarAttributeEditorModelBuilder_multicolorSectionProviderForCoreMulticolorPicker_platform_configuration_imageProvider_colorLayerProvider_editingColors_colorDefaultsProvider_modelManager_previousSectionMap_pairingPickers___block_invoke_2;
        v181[3] = &unk_1E7F3CFA8;
        v185 = v150;
        v182 = v161;
        v184 = v83;
        v183 = v87;
        v169 = v95;
        v92 = v155;
        v99 = [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)v96 initWithIdentifier:v97 localizedName:v86 isPlaceholder:v143 isRemovable:v94 colorItem:v155 variationStore:v98 avatarUpdater:v149 editorStateUpdater:v181 removalUpdater:v95];

        [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)v99 setSelected:v83 == v137];
        [v139 addObject:v99];
        v100 = v83;
        if (!v83)
        {
          v101 = [v148 objectAtIndexedSubscript:0];
          v102 = [v101 sectionItems];
          v103 = [v102 indexOfObjectPassingTest:&__block_literal_global_24];

          if (v103 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v104 = [v151 sectionItems];
            v105 = [v104 objectAtIndexedSubscript:v103];

            v138 = v105;
          }
        }

        v17 = v141;
        v32 = a1;
        v30 = v163;
        v64 = v149;
        v31 = v100 + 1;

        v63 = v164;
        v48 = v151;
      }

      v18 = v161;
LABEL_73:
    }

    v154 = [obj countByEnumeratingWithState:&v186 objects:v192 count:16];
  }

  while (v154);
LABEL_77:

  v106 = v148;
  if ([v148 count])
  {
    v107 = MEMORY[0x1E695DF90];
    v108 = [v17 nestedPresetPickers];
    v170 = [v107 dictionaryWithCapacity:{objc_msgSend(v108, "count")}];

    [v17 nestedPresetPickers];
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v172 = v180 = 0u;
    v109 = [v172 countByEnumeratingWithState:&v177 objects:v191 count:16];
    if (v109)
    {
      v110 = v109;
      v165 = *v178;
      do
      {
        for (j = 0; j != v110; ++j)
        {
          if (*v178 != v165)
          {
            objc_enumerationMutation(v172);
          }

          v112 = *(*(&v177 + 1) + 8 * j);
          v113 = [v172 objectForKeyedSubscript:v112];
          v114 = [v32 sectionProvidersForCoreModelCategory:v113 platform:a4 modelManager:v18 pairingPickers:v146 editingColors:v158 colorDefaultsProvider:v167 previousSectionMap:v147 imageProvider:v160 colorLayerProvider:v159 stickerRenderer:0 configuration:v162 displayConditionEvaluator:0];
          v115 = [MEMORY[0x1E695DF70] array];
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v116 = v114;
          v117 = [v116 countByEnumeratingWithState:&v173 objects:v190 count:16];
          if (v117)
          {
            v118 = v117;
            v119 = *v174;
            do
            {
              for (k = 0; k != v118; ++k)
              {
                if (*v174 != v119)
                {
                  objc_enumerationMutation(v116);
                }

                v121 = [*(*(&v173 + 1) + 8 * k) sections];
                [v115 addObjectsFromArray:v121];
              }

              v118 = [v116 countByEnumeratingWithState:&v173 objects:v190 count:16];
            }

            while (v118);
          }

          [v170 setObject:v115 forKeyedSubscript:v112];
          v18 = v161;
          v32 = a1;
        }

        v110 = [v172 countByEnumeratingWithState:&v177 objects:v191 count:16];
      }

      while (v110);
    }

    v122 = [v18 editorState];
    v17 = v141;
    v123 = [v141 identifier];
    v124 = [v122 enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:v123] > 0;

    v125 = v140;
    v126 = [AVTAvatarUpdaterFactory updaterForAggregatingUpdaters:v140];
    v127 = [AVTAvatarUpdaterFactory updaterForAggregatingUpdaters:v136];
    v128 = [AVTAvatarAttributeEditorSectionSupplementalPicker pickerForMulticolorPicker:v141 isMultipleSelected:v124 switchToSingleColorAvatarUpdater:v126 switchToMultipleColorAvatarUpdater:v127];
    v106 = v148;
    if (v128)
    {
      v129 = [v148 objectAtIndexedSubscript:0];
      [v129 setSupplementalPicker:v128];
    }

    v130 = [AVTAvatarAttributeEditorMulticolorSectionProvider alloc];
    v131 = [v141 identifier];
    v132 = [v141 title];
    v133 = v139;
    v166 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)v130 initWithIdentifier:v131 localizedName:v132 subpickers:v148 subpickerRemovalUpdaters:v140 nestedPresetPickers:v170 supplementalPicker:v128 pickerItems:v139 editorState:v122];
  }

  else
  {
    v166 = 0;
    v133 = v139;
    v125 = v140;
  }

  return v166;
}

void __228__AVTAvatarAttributeEditorModelBuilder_multicolorSectionProviderForCoreMulticolorPicker_platform_configuration_imageProvider_colorLayerProvider_editingColors_colorDefaultsProvider_modelManager_previousSectionMap_pairingPickers___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) editorState];
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) identifier];
    [v2 setEnabledMulticolorSubpickersIndex:v3 forMulticolorPickerIdentifier:v4];
  }

  v7 = [*(a1 + 32) editorState];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) identifier];
  [v7 setSelectedMulticolorSubpickersIndex:v5 forMulticolorPickerIdentifier:v6];
}

+ (id)subtitleFromSubtitles:(id)a3 forIndex:(int64_t)a4 enabledIndex:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = [v8 objectAtIndexedSubscript:a5];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)selectedPresetForCoreModelColorsPicker:(id)a3 isEnabled:(BOOL)a4 fallbackToColorsPicker:(id)a5 colorDefaultsProvider:(id)a6 modelManager:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v14 colorsState];
  v16 = [v15 selectedColorPresetForCategory:objc_msgSend(v11 destinationIndex:{"colorCategory"), objc_msgSend(v11, "destination")}];

  v17 = [v14 colorsState];
  v18 = [v17 selectedColorPresetForCategory:objc_msgSend(v12 destinationIndex:{"colorCategory"), objc_msgSend(v12, "destination")}];

  if (!v16 && v10)
  {
    v40 = v13;
    v19 = [v11 destination];
    v20 = [v11 colorCategory];
    v21 = [v14 avatarConfiguration];
    v22 = [v21 colorPresetForSettingKind:{v19, v20}];

    v23 = [v18 name];
    v24 = [v22 colorPreset];
    v25 = [v24 name];
    if ([v23 isEqual:v25])
    {
      [v18 variation];
      v27 = v26;
      v28 = [v22 colorPreset];
      [v28 variation];
      v30 = v29;

      if (v27 == v30)
      {
        v16 = 0;
LABEL_8:
        v13 = v40;

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = [v22 colorPreset];
    goto LABEL_8;
  }

LABEL_9:
  if (!v16 && v10)
  {
    v31 = [v11 colorCategory];
    v32 = AVTAvatarSettingColorIndexForColorDestination([v11 destination]);
    v33 = [v14 avatarConfiguration];
    v16 = [v13 defaultColorPresetForCategory:v31 destination:v32 withConfiguration:v33];
  }

  if (v12 && !v16)
  {
    v34 = [v14 colorsState];
    v35 = [v34 selectedColorPresetForCategory:objc_msgSend(v12 destinationIndex:{"colorCategory"), objc_msgSend(v12, "destination")}];

    v36 = MEMORY[0x1E698E290];
    v37 = [v35 name];
    v38 = [v11 colorCategory];
    [v35 variation];
    v16 = [v36 colorPresetWithName:v37 category:v38 variation:?];
  }

  return v16;
}

+ (id)sectionColorItemsForColors:(id)a3 selectedPreset:(id)a4 configuration:(id)a5 modelManager:(id)a6 additionalUpdateKind:(id)a7 imageProvider:(id)a8 colorLayerProvider:(id)a9 pairedCategory:(int64_t)a10 editingColors:(id)a11
{
  var1 = a7.var1;
  var0 = a7.var0;
  v53 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v43 = a4;
  v42 = a5;
  v46 = a6;
  v40 = a8;
  v39 = a9;
  v38 = a11;
  v41 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v14;
  v44 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v44)
  {
    v36 = *v48;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = [v46 colorsState];
        v18 = [v17 variationStore];
        v19 = [v18 colorPresetFromColor:v16];

        v20 = AVTColorSettingKind(0, 0);
        v22 = [v42 colorPresetForSettingKind:{v20, v21}];
        v23 = [v22 colorPreset];
        v45 = [v19 isEqual:v43];
        v24 = 0;
        if (a10 != 40)
        {
          v25 = [v16 copyForPairedCategory:a10];
          v51 = v25;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        }

        if (var1 == 40)
        {
          v26 = 0;
          v27 = v38;
        }

        else
        {
          v28 = [v19 name];
          v27 = v38;
          v26 = [v38 colorForSettingKind:var0 identifier:{var1, v28}];
        }

        v29 = [v46 colorsState];
        v30 = [AVTAvatarUpdaterFactory updaterForColor:v16 colorsState:v29 pairedColors:v24 additionalColor:v26];

        LOBYTE(v33) = v45;
        v31 = -[AVTAvatarAttributeEditorSectionColorItem initWithColor:skinColor:imageProvider:colorLayerProvider:avatarUpdater:derivedColorDependent:selected:]([AVTAvatarAttributeEditorSectionColorItem alloc], "initWithColor:skinColor:imageProvider:colorLayerProvider:avatarUpdater:derivedColorDependent:selected:", v16, v23, v40, v39, v30, [v27 colorHasDerivedColorDependency:v16], v33);
        [v41 addObject:v31];
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v44);
  }

  return v41;
}

+ (id)sectionForModelRow:(id)a3 fromModelPresets:(id)a4 selectedModelPreset:(id)a5 tagSelection:(id)a6 fixedTags:(id)a7 availableTags:(id)a8 category:(int64_t)a9 imageProvider:(id)a10 stickerRenderer:(id)a11 configuration:(id)a12 previousSection:(id)a13 pairedCategory:(int64_t)a14
{
  v108 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v92 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v85 = a10;
  v87 = a11;
  v91 = a12;
  v24 = a13;
  v90 = [MEMORY[0x1E695DF70] array];
  v25 = [v19 representedTags];
  v26 = [v19 options];
  v81 = v21;
  v82 = v20;
  v79 = v23;
  v80 = v22;
  v27 = [a1 filterPresets:v20 forRowRepresentingTags:v25 currentTagSelection:v21 fixedTags:v22 availableTags:v23 sortingOption:{objc_msgSend(v26, "sortingOption")}];

  v28 = MEMORY[0x1E695DF90];
  v29 = [v24 sectionItems];
  v95 = [v28 dictionaryWithCapacity:{objc_msgSend(v29, "count")}];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v30 = [v24 sectionItems];
  v31 = [v30 countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v103;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v103 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v102 + 1) + 8 * i);
        v36 = [v35 identifier];
        [v95 setObject:v35 forKeyedSubscript:v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v32);
  }

  v84 = [objc_opt_class() framingModeForRow:v19 selectedPreset:v92];
  v37 = a14;
  v78 = v24;
  if (a14 == 40)
  {
    v77 = 0;
  }

  else
  {
    v38 = [v19 pairing];
    v77 = v38 != 0;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v27;
  v93 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v93)
  {
    v88 = *v99;
    v89 = v19;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v99 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v98 + 1) + 8 * j);
        v41 = [v40 identifier];
        v94 = [v95 objectForKeyedSubscript:v41];

        v42 = [v19 options];
        v43 = [v42 stickerConfiguration];

        v44 = [v19 options];
        v45 = [v44 presetOverrides];
        v46 = [v19 options];
        v47 = v46;
        if (v43)
        {
          v48 = [v46 stickerConfiguration];
          v96 = [v87 scheduledStickerResourceProviderForThumbnailForModelPreset:v40 presetOverrides:v45 avatarConfiguration:v91 stickerConfiguration:v48 correctClipping:0];
          v49 = 0;
        }

        else
        {
          v48 = [v46 poseOverride];
          v49 = [v85 providerForThumbnailForModelPreset:v40 presetOverrides:v45 poseOverride:v48 avatarConfiguration:v91 framingMode:v84];
          v96 = 0;
        }

        v50 = [v40 identifier];
        v51 = [v92 identifier];
        v52 = [v50 isEqual:v51];

        v53 = [v19 options];
        v54 = [v53 framingMode];
        [AVTRenderingScope thumbnailHeightRatioForFramingMode:v54];
        v56 = v55;

        if (v37 == 40)
        {
          v57 = 0;
        }

        else
        {
          v57 = [v40 copyForPairedCategory:v37];
        }

        v58 = [AVTAvatarUpdaterFactory updaterForPreset:v40 pairedPreset:v57];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __217__AVTAvatarAttributeEditorModelBuilder_sectionForModelRow_fromModelPresets_selectedModelPreset_tagSelection_fixedTags_availableTags_category_imageProvider_stickerRenderer_configuration_previousSection_pairedCategory___block_invoke;
        v97[3] = &unk_1E7F3CFD0;
        v97[4] = v40;
        v59 = MEMORY[0x1BFB0DE80](v97);
        if (v37 == 40)
        {
          [v40 localizedName];
        }

        else
        {
          [v40 localizedPairedName];
        }
        v60 = ;
        v61 = [AVTAvatarAttributeEditorSectionItem alloc];
        v62 = [v40 identifier];
        v63 = [v59 copy];
        LOBYTE(v76) = v52;
        v64 = [(AVTAvatarAttributeEditorSectionItem *)v61 initWithIdentifier:v62 localizedName:v60 thumbnailProvider:v49 stickerResourceProvider:v96 presetResourcesProvider:v63 avatarUpdater:v58 heightRatio:v56 selected:v76];

        v65 = [v94 cachedThumbnail];

        if (v65)
        {
          v66 = [v94 cachedThumbnail];
          [(AVTAvatarAttributeEditorSectionItem *)v64 setCachedThumbnail:v66];
        }

        [v90 addObject:v64];

        v19 = v89;
        v37 = a14;
      }

      v93 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v93);
  }

  if (v77)
  {
    v67 = [v19 pairing];
    v68 = [v67 localizedPairedTitle];
  }

  else
  {
    v68 = [v19 title];
  }

  v69 = [v19 options];
  v70 = [a1 sectionOptionFromModelOptions:v69];

  if ([v90 count] < 2)
  {
    v74 = 0;
  }

  else
  {
    v71 = [objc_opt_class() destinationForPresetCategory:a9 isPaired:v77];
    v72 = [AVTAvatarAttributeEditorSection alloc];
    v73 = [v19 identifier];
    v74 = [(AVTAvatarAttributeEditorSection *)v72 initWithSectionItems:v90 localizedName:v68 identifier:v73 intendedDestination:v71 options:v70];
  }

  return v74;
}

AVTPresetResources *__217__AVTAvatarAttributeEditorModelBuilder_sectionForModelRow_fromModelPresets_selectedModelPreset_tagSelection_fixedTags_availableTags_category_imageProvider_stickerRenderer_configuration_previousSection_pairedCategory___block_invoke(uint64_t a1)
{
  v2 = [AVTPresetResources alloc];
  v3 = [*(a1 + 32) preset];
  v4 = [(AVTPresetResources *)v2 initWithPreset:v3];

  return v4;
}

+ (id)framingModeForRow:(id)a3 selectedPreset:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v7 = [v6 options];
  v8 = [v7 framingMode];

  v9 = [v6 options];
  v10 = [v9 framingModeOverrides];

  if (v10)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10 orderedTags];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v12)
    {
LABEL_13:

      goto LABEL_15;
    }

    v13 = v12;
    v24 = v10;
    v25 = v8;
    v26 = v6;
    v14 = 0;
    v15 = *v30;
    v16 = 1;
    v17 = -1;
    do
    {
      v18 = 0;
      v27 = v14;
      v19 = v14;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v29 + 1) + 8 * v18);
        v21 = [v28 tags];
        v22 = [a1 scoreForTags:v20 forCombination:v20 currentSelection:v21];

        if (v22 > v16)
        {
          v17 = v19;
          v16 = v22;
        }

        ++v19;
        ++v18;
      }

      while (v13 != v18);
      v14 = v27 + v13;
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);

    v6 = v26;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v10 = v24;
      v11 = [v24 orderedFramingModeOverrides];
      v8 = [v11 objectAtIndexedSubscript:v17];

      goto LABEL_13;
    }

    v10 = v24;
    v8 = v25;
  }

LABEL_15:

  return v8;
}

+ (id)filterPresets:(id)a3 forRowRepresentingTags:(id)a4 currentTagSelection:(id)a5 fixedTags:(id)a6 availableTags:(id)a7 sortingOption:(unint64_t)a8
{
  v63 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v15)
  {
    v43 = [MEMORY[0x1E695DF70] array];
    v41 = v15;
    v39 = v18;
    v19 = [a1 tagCombinationsForTagNames:v15 availableTags:v18];
    v40 = v16;
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F8];
    }

    v52 = [v20 mutableCopy];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v19;
    v48 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v48)
    {
      v44 = *v58;
      v45 = a8;
      v46 = v17;
      v47 = v14;
      do
      {
        v21 = 0;
        do
        {
          if (*v58 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v21;
          v22 = *(*(&v57 + 1) + 8 * v21);
          v23 = [v22 mutableCopy];
          [a1 setTags:v17 onMutableTagSet:v23];
          v49 = v23;
          v24 = [a1 filterPresets:v14 matchingTagValues:v23 sortedUsing:a8];
          v25 = [v24 firstObject];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v51 = v24;
          v26 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v54;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v54 != v29)
                {
                  objc_enumerationMutation(v51);
                }

                v31 = *(*(&v53 + 1) + 8 * i);
                v32 = [v31 tags];
                v33 = a1;
                v34 = [a1 scoreForTags:v32 forCombination:v22 currentSelection:v52];

                if (v34 > v28)
                {
                  v35 = v31;

                  v28 = v34;
                  v25 = v35;
                }

                a1 = v33;
              }

              v27 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
            }

            while (v27);
          }

          if (v25 && ([v43 containsObject:v25] & 1) == 0)
          {
            [v43 addObject:v25];
            v36 = [v25 tags];
            [a1 addTags:v36 toMutableTagSet:v52];
          }

          v21 = v50 + 1;
          v14 = v47;
          a8 = v45;
          v17 = v46;
        }

        while (v50 + 1 != v48);
        v48 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v48);
    }

    v37 = [v43 copy];
    v16 = v40;
    v15 = v41;
    v18 = v39;
  }

  else
  {
    v37 = [a1 filterPresets:v14 matchingTagValues:v17 sortedUsing:a8];
  }

  return v37;
}

+ (id)tagCombinationsForTagNames:(id)a3 availableTags:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 firstObject];
    v33 = [v7 objectForKeyedSubscript:v8];
    v9 = [MEMORY[0x1E695DF70] array];
    v30 = v6;
    v10 = [v6 mutableCopy];
    [v10 removeObjectsInRange:{0, 1}];
    v28 = v10;
    v11 = [v10 copy];
    v29 = v7;
    v12 = [a1 tagCombinationsForTagNames:v11 availableTags:v7];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v12;
    v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v34)
    {
      v32 = *v41;
      do
      {
        v13 = 0;
        do
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v13;
          v14 = *(*(&v40 + 1) + 8 * v13);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v15 = v33;
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v36 + 1) + 8 * i);
                v21 = [v14 mutableCopy];
                v22 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v20];
                [v21 setObject:v22 forKeyedSubscript:v8];

                [v9 addObject:v21];
                if ([v14 count])
                {
                  v23 = MEMORY[0x1E695DF20];
                  v24 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v20];
                  v25 = [v23 dictionaryWithObject:v24 forKey:v8];

                  [v9 addObject:v25];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v17);
          }

          if ([v14 count])
          {
            [v9 addObject:v14];
          }

          v13 = v35 + 1;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v34);
    }

    v26 = [v9 copy];
    v7 = v29;
    v6 = v30;
  }

  else
  {
    v26 = &unk_1F39A5D78;
  }

  return v26;
}

+ (id)tagSetByRemovingTagNames:(id)a3 fromTagSet:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 removeObjectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [v6 copy];

  return v12;
}

+ (id)filterPresets:(id)a3 matchingTagValues:(id)a4 sortedUsing:(unint64_t)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = a4;
  v25 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v27 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v30 = [v31 allKeys];
        v9 = [v30 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v30);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              v14 = [v8 tags];
              v15 = [v14 objectForKeyedSubscript:v13];
              if (v15)
              {
                v16 = v15;
                v17 = [v8 tags];
                v18 = [v17 objectForKeyedSubscript:v13];
                v19 = [v31 objectForKeyedSubscript:v13];
                v20 = [v18 intersectsOrderedSet:v19];

                if (!v20)
                {

                  goto LABEL_18;
                }
              }

              else
              {
              }
            }

            v10 = [v30 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        [a1 insertPreset:v8 intoList:v25 forSortingOption:a5];
LABEL_18:
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }

  v21 = [v25 copy];

  return v21;
}

+ (void)insertPreset:(id)a3 intoList:(id)a4 forSortingOption:(unint64_t)a5
{
  v8 = a3;
  v7 = a4;
  if (a5 == 1 || a5 == 2 && [v8 isDefaultPreset])
  {
    [v7 insertObject:v8 atIndex:0];
  }

  else
  {
    [v7 addObject:v8];
  }
}

+ (int)scoreForTags:(id)a3 forCombination:(id)a4 currentSelection:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [a4 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v10)
  {
LABEL_19:

    goto LABEL_20;
  }

  v11 = 0;
  v12 = *v30;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [v7 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
      v15 = v14 != 0;

      v11 |= v15;
    }

    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  }

  while (v10);

  if (v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v7 allKeys];
    v16 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      LODWORD(v10) = 1;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          v21 = [v7 objectForKeyedSubscript:v20];
          v22 = [v21 mutableCopy];

          v23 = [v8 objectForKeyedSubscript:v20];
          [v22 intersectOrderedSet:v23];

          v10 = [v22 count] + v10;
        }

        v17 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v17);
    }

    else
    {
      LODWORD(v10) = 1;
    }

    goto LABEL_19;
  }

  LODWORD(v10) = 0;
LABEL_20:

  return v10;
}

+ (void)addTags:(id)a3 toMutableTagSet:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTAvatarAttributeEditorModelBuilder_addTags_toMutableTagSet___block_invoke;
  v7[3] = &unk_1E7F3BC58;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __64__AVTAvatarAttributeEditorModelBuilder_addTags_toMutableTagSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v6)
  {
    v7 = [v5 mutableCopy];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (void)setTags:(id)a3 onMutableTagSet:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTAvatarAttributeEditorModelBuilder_setTags_onMutableTagSet___block_invoke;
  v7[3] = &unk_1E7F3BC58;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __64__AVTAvatarAttributeEditorModelBuilder_setTags_onMutableTagSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)tagSetForTagNames:(id)a3 inTagSet:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v18}];
        v15 = [v14 mutableCopy];
        [v7 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

+ (id)firstColorSectionInSections:(id)a3
{
  v3 = a3;
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_40];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndex:v4];
  }

  return v5;
}

uint64_t __68__AVTAvatarAttributeEditorModelBuilder_firstColorSectionInSections___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)sectionOptionFromModelOptions:(id)a3
{
  v4 = a3;
  v5 = [a1 sectionDisplayModeForCoreModelDisplayMode:{objc_msgSend(v4, "displayMode")}];
  v6 = [AVTAvatarAttributeEditorSectionOptions alloc];
  v7 = [v4 framingMode];
  v8 = [v4 poseOverride];
  v9 = [v4 presetOverrides];
  v10 = [v4 stickerConfiguration];
  v11 = [v4 showsLabel];

  v12 = [(AVTAvatarAttributeEditorSectionOptions *)v6 initWithFramingMode:v7 poseOverride:v8 presetOverrides:v9 displayMode:v5 stickerConfiguration:v10 showsLabel:v11];

  return v12;
}

@end