@interface AVTAvatarAttributeEditorModelBuilder
+ (id)buildDataSourceCategoriesFromCoreModel:(id)model selectingFromAvatarConfiguration:(id)configuration imageProvider:(id)provider colorLayerProvider:(id)layerProvider stickerRenderer:(id)renderer modelManager:(id)manager withSelectedCategory:(id)category atIndex:(unint64_t)self0;
+ (id)filterPresets:(id)presets forRowRepresentingTags:(id)tags currentTagSelection:(id)selection fixedTags:(id)fixedTags availableTags:(id)availableTags sortingOption:(unint64_t)option;
+ (id)filterPresets:(id)presets matchingTagValues:(id)values sortedUsing:(unint64_t)using;
+ (id)firstColorSectionInSections:(id)sections;
+ (id)framingModeForRow:(id)row selectedPreset:(id)preset;
+ (id)multicolorSectionProviderForCoreMulticolorPicker:(id)picker platform:(unint64_t)platform configuration:(id)configuration imageProvider:(id)provider colorLayerProvider:(id)layerProvider editingColors:(id)colors colorDefaultsProvider:(id)defaultsProvider modelManager:(id)self0 previousSectionMap:(id)self1 pairingPickers:(id)self2;
+ (id)previewModeForCoreModelGroup:(id)group;
+ (id)sectionColorItemsForColors:(id)colors selectedPreset:(id)preset configuration:(id)configuration modelManager:(id)manager additionalUpdateKind:(id)kind imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)self0 editingColors:(id)self1;
+ (id)sectionForModelColorsRow:(id)row configuration:(id)configuration modelManager:(id)manager imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)category destination:(int64_t)destination editingColors:(id)self0 displaysTitle:(BOOL)self1;
+ (id)sectionForModelColorsRow:(id)row selectedColorPreset:(id)preset configuration:(id)configuration modelManager:(id)manager additionalAvatarUpdateKind:(id)kind imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)self0 destination:(int64_t)self1 editingColors:(id)self2 displaysTitle:(BOOL)self3;
+ (id)sectionForModelRow:(id)row fromModelPresets:(id)presets selectedModelPreset:(id)preset tagSelection:(id)selection fixedTags:(id)tags availableTags:(id)availableTags category:(int64_t)category imageProvider:(id)self0 stickerRenderer:(id)self1 configuration:(id)self2 previousSection:(id)self3 pairedCategory:(int64_t)self4;
+ (id)sectionOptionFromModelOptions:(id)options;
+ (id)sectionProvidersForCoreModelCategory:(id)category platform:(unint64_t)platform modelManager:(id)manager pairingPickers:(id)pickers editingColors:(id)colors colorDefaultsProvider:(id)provider previousSectionMap:(id)map imageProvider:(id)self0 colorLayerProvider:(id)self1 stickerRenderer:(id)self2 configuration:(id)self3 displayConditionEvaluator:(id)self4;
+ (id)selectedModelPresetForSelectedPreset:(id)preset inPresetsList:(id)list;
+ (id)selectedPresetForCoreModelColorsPicker:(id)picker isEnabled:(BOOL)enabled fallbackToColorsPicker:(id)colorsPicker colorDefaultsProvider:(id)provider modelManager:(id)manager;
+ (id)subtitleFromSubtitles:(id)subtitles forIndex:(int64_t)index enabledIndex:(int64_t)enabledIndex;
+ (id)tagCombinationsForTagNames:(id)names availableTags:(id)tags;
+ (id)tagSetByRemovingTagNames:(id)names fromTagSet:(id)set;
+ (id)tagSetForTagNames:(id)names inTagSet:(id)set;
+ (int)scoreForTags:(id)tags forCombination:(id)combination currentSelection:(id)selection;
+ (unint64_t)destinationForPresetCategory:(int64_t)category isPaired:(BOOL)paired;
+ (void)addTags:(id)tags toMutableTagSet:(id)set;
+ (void)insertPreset:(id)preset intoList:(id)list forSortingOption:(unint64_t)option;
+ (void)setTags:(id)tags onMutableTagSet:(id)set;
@end

@implementation AVTAvatarAttributeEditorModelBuilder

+ (unint64_t)destinationForPresetCategory:(int64_t)category isPaired:(BOOL)paired
{
  result = 0;
  if (category > 29)
  {
    if (category == 31)
    {
LABEL_10:
      if (paired)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    if (category != 30)
    {
      return result;
    }
  }

  else if (category != 25)
  {
    if (category != 26)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (paired)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

+ (id)buildDataSourceCategoriesFromCoreModel:(id)model selectingFromAvatarConfiguration:(id)configuration imageProvider:(id)provider colorLayerProvider:(id)layerProvider stickerRenderer:(id)renderer modelManager:(id)manager withSelectedCategory:(id)category atIndex:(unint64_t)self0
{
  v79 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  configurationCopy = configuration;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  rendererCopy = renderer;
  managerCopy = manager;
  categoryCopy = category;
  array = [MEMORY[0x1E695DF70] array];
  platform = [modelCopy platform];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v45 = categoryCopy;
  if (categoryCopy)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    sections = [categoryCopy sections];
    v19 = [sections countByEnumeratingWithState:&v72 objects:v78 count:16];
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
            objc_enumerationMutation(sections);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          identifier = [v23 identifier];
          [dictionary setObject:v23 forKeyedSubscript:identifier];
        }

        v20 = [sections countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v20);
    }
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __203__AVTAvatarAttributeEditorModelBuilder_buildDataSourceCategoriesFromCoreModel_selectingFromAvatarConfiguration_imageProvider_colorLayerProvider_stickerRenderer_modelManager_withSelectedCategory_atIndex___block_invoke;
  v69[3] = &unk_1E7F3CF80;
  v54 = managerCopy;
  v70 = v54;
  indexCopy = index;
  v53 = MEMORY[0x1BFB0DE80](v69);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [modelCopy groups];
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
        array2 = [MEMORY[0x1E695DF70] array];
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v50 = v26;
        categories = [v26 categories];
        v30 = [categories countByEnumeratingWithState:&v61 objects:v76 count:16];
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
                objc_enumerationMutation(categories);
              }

              v34 = *(*(&v61 + 1) + 8 * j);
              colors = [modelCopy colors];
              colorDefaultsProvider = [modelCopy colorDefaultsProvider];
              v37 = [self sectionProvidersForCoreModelCategory:v34 platform:platform modelManager:v54 pairingPickers:dictionary2 editingColors:colors colorDefaultsProvider:colorDefaultsProvider previousSectionMap:dictionary imageProvider:providerCopy colorLayerProvider:layerProviderCopy stickerRenderer:rendererCopy configuration:configurationCopy displayConditionEvaluator:v53];

              if (v37)
              {
                [array2 addObjectsFromArray:v37];
              }
            }

            v31 = [categories countByEnumeratingWithState:&v61 objects:v76 count:16];
          }

          while (v31);
        }

        v38 = [self previewModeForCoreModelGroup:v50];
        v39 = [AVTAvatarAttributeEditorCategory alloc];
        name = [v50 name];
        symbolNames = [v50 symbolNames];
        v42 = [(AVTAvatarAttributeEditorCategory *)v39 initWithSectionProviders:array2 localizedName:name previewMode:v38 modelGroup:v50 symbolNames:symbolNames];

        [array addObject:v42];
        v25 = v51 + 1;
      }

      while (v51 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v49);
  }

  v43 = [array copy];

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

+ (id)sectionProvidersForCoreModelCategory:(id)category platform:(unint64_t)platform modelManager:(id)manager pairingPickers:(id)pickers editingColors:(id)colors colorDefaultsProvider:(id)provider previousSectionMap:(id)map imageProvider:(id)self0 colorLayerProvider:(id)self1 stickerRenderer:(id)self2 configuration:(id)self3 displayConditionEvaluator:(id)self4
{
  v109 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  managerCopy = manager;
  pickersCopy = pickers;
  colorsCopy = colors;
  providerCopy = provider;
  v20 = managerCopy;
  mapCopy = map;
  imageProviderCopy = imageProvider;
  layerProviderCopy = layerProvider;
  rendererCopy = renderer;
  configurationCopy = configuration;
  evaluatorCopy = evaluator;
  v81 = categoryCopy;
  if (!managerCopy)
  {
    goto LABEL_5;
  }

  if (![managerCopy shouldDisplaySectionForCategory:{objc_msgSend(categoryCopy, "presetCategory")}])
  {
    v35 = 0;
    goto LABEL_60;
  }

  editorState = [managerCopy editorState];
  pairing = [categoryCopy pairing];
  v25 = [editorState isCategoryPaired:{objc_msgSend(pairing, "pairedCategory")}];

  if (v25)
  {
    pairing2 = [categoryCopy pairing];
    pairedCategory = [pairing2 pairedCategory];

    v90 = 1;
  }

  else
  {
LABEL_5:
    v90 = 0;
    pairedCategory = 40;
  }

  selfCopy4 = self;
  pairing3 = [categoryCopy pairing];

  if (pairing3)
  {
    colorsState = [v20 colorsState];
    v30 = [AVTAvatarUpdaterFactory updaterForPairingCategory:categoryCopy colorsState:colorsState];

    v31 = [AVTAvatarAttributeEditorSectionSupplementalPicker pickerForPairableModelCategory:categoryCopy isPaired:v90 avatarUpdaterOnPair:v30];
    v32 = MEMORY[0x1E696AD98];
    pairing4 = [v81 pairing];
    v34 = [v32 numberWithInteger:{objc_msgSend(pairing4, "pairedCategory")}];
    v97 = v31;
    [pickersCopy setObject:v31 forKeyedSubscript:v34];

    categoryCopy = v81;
  }

  else
  {
    v97 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v36 = [configurationCopy presetForCategory:{objc_msgSend(categoryCopy, "presetCategory")}];
  preset = [v36 preset];

  presets = [categoryCopy presets];
  v75 = preset;
  v39 = [self selectedModelPresetForSelectedPreset:preset inPresetsList:presets];

  v79 = v39;
  tags = [v39 tags];
  v83 = [tags copy];

  tags2 = [categoryCopy tags];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [categoryCopy pickers];
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
    v77 = configurationCopy;
    v96 = evaluatorCopy;
    do
    {
      for (i = 0; i != v102; ++i)
      {
        if (*v105 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v104 + 1) + 8 * i);
        if (evaluatorCopy)
        {
          options = [*(*(&v104 + 1) + 8 * i) options];
          displayCondition = [options displayCondition];
          v45 = evaluatorCopy[2](evaluatorCopy, displayCondition);

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
          v48 = [selfCopy4 multicolorSectionProviderForCoreMulticolorPicker:v47 platform:platform configuration:configurationCopy imageProvider:imageProviderCopy colorLayerProvider:layerProviderCopy editingColors:colorsCopy colorDefaultsProvider:providerCopy modelManager:v20 previousSectionMap:mapCopy pairingPickers:pickersCopy];
          if (v48)
          {
            [array addObject:v48];
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
          v51 = [selfCopy4 sectionForModelColorsRow:v50 configuration:configurationCopy modelManager:v20 imageProvider:imageProviderCopy colorLayerProvider:layerProviderCopy pairedCategory:pairedCategory destination:AVTAvatarSettingDestinationForColorPickerIndex(v103) editingColors:colorsCopy displaysTitle:v74];
          if (v97)
          {
            pairing5 = [v42 pairing];
            if (!pairing5)
            {
              goto LABEL_44;
            }

            v53 = pairing5;
            pairing6 = [v42 pairing];
            v55 = pairing6;
            if (v90)
            {
              [pairing6 localizedUnpairTitle];
            }

            else
            {
              [pairing6 localizedPairTitle];
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

            selfCopy4 = self;
            if (v90)
            {
              pairing7 = [v42 pairing];
              localizedPairedTitle = [pairing7 localizedPairedTitle];
              if (localizedPairedTitle)
              {
                [v51 setLocalizedName:localizedPairedTitle];
              }

              else
              {
                pairing8 = [v81 pairing];
                localizedPairedTitle2 = [pairing8 localizedPairedTitle];
                [v51 setLocalizedName:localizedPairedTitle2];

                v20 = v84;
              }

              selfCopy4 = self;
            }
          }

          if (v51)
          {
            [array addObject:v51];
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
            identifier = [v42 identifier];
            v58 = [mapCopy objectForKeyedSubscript:identifier];

            presets2 = [v81 presets];
            v86 = v58;
            v60 = [selfCopy4 sectionForModelRow:v42 fromModelPresets:presets2 selectedModelPreset:v79 tagSelection:v83 fixedTags:dictionary availableTags:tags2 category:objc_msgSend(v81 imageProvider:"presetCategory") stickerRenderer:imageProviderCopy configuration:rendererCopy previousSection:configurationCopy pairedCategory:{v58, pairedCategory}];

            if (v60)
            {
              representedTags = [v51 representedTags];
              v62 = [self tagSetForTagNames:representedTags inTagSet:v83];

              [self setTags:v62 onMutableTagSet:dictionary];
              options2 = [v60 options];
              displayMode = [options2 displayMode];

              if (displayMode == 1)
              {
                v65 = [self firstColorSectionInSections:array2];
                if (v65)
                {
                  v66 = [AVTAvatarAttributeEditorSectionSupplementalPicker pickerFromEditorSection:v60];
                  [v65 setSupplementalPicker:v66];
                }
              }

              else
              {
                [array addObject:v60];
              }

              v20 = v84;
            }

            selfCopy4 = self;
            configurationCopy = v77;
            v47 = v85;
          }
        }

        evaluatorCopy = v96;
      }

      v102 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
    }

    while (v102);
  }

  v35 = [array copy];

LABEL_60:

  return v35;
}

+ (id)previewModeForCoreModelGroup:(id)group
{
  groupCopy = group;
  v4 = [AVTAvatarAttributeEditorPreviewModeOptions alloc];
  previewMode = [groupCopy previewMode];
  options = [previewMode options];
  framingMode = [options framingMode];
  previewMode2 = [groupCopy previewMode];
  options2 = [previewMode2 options];
  bodyPosePack = [options2 bodyPosePack];
  v11 = [(AVTAvatarAttributeEditorPreviewModeOptions *)v4 initWithFramingMode:framingMode bodyPosePack:bodyPosePack];

  previewMode3 = [groupCopy previewMode];

  v13 = +[AVTAvatarAttributeEditorPreviewMode attributeEditorPreviewModeTypeForEditingPreviewModeType:](AVTAvatarAttributeEditorPreviewMode, "attributeEditorPreviewModeTypeForEditingPreviewModeType:", [previewMode3 type]);
  v14 = [[AVTAvatarAttributeEditorPreviewMode alloc] initWithType:v13 options:v11];

  return v14;
}

+ (id)selectedModelPresetForSelectedPreset:(id)preset inPresetsList:(id)list
{
  v20 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(listCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        identifier2 = [presetCopy identifier];
        v13 = [identifier isEqualToString:identifier2];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)sectionForModelColorsRow:(id)row configuration:(id)configuration modelManager:(id)manager imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)category destination:(int64_t)destination editingColors:(id)self0 displaysTitle:(BOOL)self1
{
  rowCopy = row;
  configurationCopy = configuration;
  managerCopy = manager;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  colorsCopy = colors;
  if (rowCopy && ([rowCopy isEmpty] & 1) == 0)
  {
    [managerCopy colorsState];
    v23 = v29 = category;
    v24 = [v23 selectedColorPresetForCategory:objc_msgSend(rowCopy destinationIndex:{"colorCategory"), destination}];

    v25 = AVTColorSettingKind(40, 0);
    LOBYTE(v28) = title;
    v22 = [self sectionForModelColorsRow:rowCopy selectedColorPreset:v24 configuration:configurationCopy modelManager:managerCopy additionalAvatarUpdateKind:v25 imageProvider:v26 colorLayerProvider:providerCopy pairedCategory:layerProviderCopy destination:v29 editingColors:destination displaysTitle:{colorsCopy, v28}];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)sectionForModelColorsRow:(id)row selectedColorPreset:(id)preset configuration:(id)configuration modelManager:(id)manager additionalAvatarUpdateKind:(id)kind imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)self0 destination:(int64_t)self1 editingColors:(id)self2 displaysTitle:(BOOL)self3
{
  var1 = kind.var1;
  var0 = kind.var0;
  rowCopy = row;
  presetCopy = preset;
  configurationCopy = configuration;
  managerCopy = manager;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  colorsCopy = colors;
  v53 = colorsCopy;
  v54 = managerCopy;
  v52 = layerProviderCopy;
  if (!rowCopy || (v25 = colorsCopy, ([rowCopy isEmpty] & 1) != 0))
  {
    v26 = providerCopy;
    v27 = 0;
    goto LABEL_19;
  }

  v48 = presetCopy;
  primaryColors = [rowCopy primaryColors];

  if (primaryColors)
  {
    primaryColors2 = [rowCopy primaryColors];
    v46 = [self sectionColorItemsForColors:primaryColors2 selectedPreset:v48 configuration:configurationCopy modelManager:managerCopy additionalUpdateKind:var0 imageProvider:var1 colorLayerProvider:providerCopy pairedCategory:layerProviderCopy editingColors:{category, v25}];
  }

  else
  {
    v46 = 0;
  }

  extendedColors = [rowCopy extendedColors];

  if (extendedColors)
  {
    extendedColors2 = [rowCopy extendedColors];
    v45 = [self sectionColorItemsForColors:extendedColors2 selectedPreset:v48 configuration:configurationCopy modelManager:managerCopy additionalUpdateKind:var0 imageProvider:var1 colorLayerProvider:providerCopy pairedCategory:layerProviderCopy editingColors:{category, v25}];
  }

  else
  {
    v45 = 0;
  }

  v47 = configurationCopy;
  if (category == 40)
  {
    v32 = 0;
    if (title)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  pairing = [rowCopy pairing];
  v32 = pairing != 0;

  if (!title)
  {
LABEL_16:
    v26 = providerCopy;
    title = 0;
    goto LABEL_18;
  }

  pairing2 = [rowCopy pairing];
  if (!pairing2)
  {
LABEL_17:
    v26 = providerCopy;
    title = [rowCopy title];
    goto LABEL_18;
  }

  v35 = pairing2;
  v26 = providerCopy;
  pairing3 = [rowCopy pairing];
  title = [pairing3 localizedPairedTitle];

LABEL_18:
  options = [rowCopy options];
  v38 = [self sectionOptionFromModelOptions:options];

  v51 = [objc_opt_class() destinationForPresetCategory:objc_msgSend(rowCopy isPaired:{"colorCategory"), v32}];
  v39 = [AVTAvatarAttributeEditorColorSection alloc];
  colorsState = [v54 colorsState];
  variationStore = [colorsState variationStore];
  identifier = [rowCopy identifier];
  LOBYTE(v44) = [rowCopy alwaysShowExtended];
  v27 = [(AVTAvatarAttributeEditorColorSection *)v39 initWithPrimaryItems:v46 extendedItems:v45 colorVariationStore:variationStore localizedName:title identifier:identifier intendedDestination:v51 alwaysShowExtended:v44 options:v38];

  configurationCopy = v47;
  presetCopy = v48;
LABEL_19:

  return v27;
}

+ (id)multicolorSectionProviderForCoreMulticolorPicker:(id)picker platform:(unint64_t)platform configuration:(id)configuration imageProvider:(id)provider colorLayerProvider:(id)layerProvider editingColors:(id)colors colorDefaultsProvider:(id)defaultsProvider modelManager:(id)self0 previousSectionMap:(id)self1 pairingPickers:(id)self2
{
  v193 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  configurationCopy = configuration;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  colorsCopy = colors;
  v17 = pickerCopy;
  defaultsProviderCopy = defaultsProvider;
  managerCopy = manager;
  mapCopy = map;
  pickersCopy = pickers;
  v19 = MEMORY[0x1E695DF70];
  subpickers = [v17 subpickers];
  v140 = [v19 arrayWithCapacity:{objc_msgSend(subpickers, "count")}];

  v21 = MEMORY[0x1E695DF70];
  subpickers2 = [v17 subpickers];
  v136 = [v21 arrayWithCapacity:{objc_msgSend(subpickers2, "count")}];

  v23 = MEMORY[0x1E695DF70];
  subpickers3 = [v17 subpickers];
  v25 = [v23 arrayWithCapacity:{objc_msgSend(subpickers3, "count")}];

  v148 = v25;
  v139 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
  editorState = [managerCopy editorState];
  identifier = [v17 identifier];
  v137 = [editorState selectedMulticolorSubpickersIndexForMulticolorPickerIdentifier:identifier];

  editorState2 = [managerCopy editorState];
  identifier2 = [v17 identifier];
  v30 = [editorState2 enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:identifier2];

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = [v17 subpickers];
  v141 = v17;
  v161 = managerCopy;
  v154 = [obj countByEnumeratingWithState:&v186 objects:v192 count:16];
  if (!v154)
  {
    v138 = 0;
    selfCopy5 = self;
    goto LABEL_77;
  }

  v138 = 0;
  v31 = 0;
  v152 = *v187;
  v153 = v30 + 1;
  selfCopy5 = self;
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
        subpickers4 = [v17 subpickers];
        v36 = [subpickers4 objectAtIndexedSubscript:v31 - 1];
      }

      v164 = v36;
      v171 = [selfCopy5 selectedPresetForCoreModelColorsPicker:v34 isEnabled:v31 <= v30 fallbackToColorsPicker:v36 colorDefaultsProvider:defaultsProviderCopy modelManager:managerCopy];
      destination = AVTColorSettingKind(40, 0);
      colorCategory = v38;
      v41 = [v34 colorCategory] == 1 && objc_msgSend(v34, "destination") == 1 && v30 == 0;
      v43 = [v34 colorCategory] == 2 && objc_msgSend(v34, "destination") == 1 && v30 == 0;
      v168 = v31;
      if (v41 || v43)
      {
        v44 = v31 + 1;
        subpickers5 = [v17 subpickers];
        if (v44 < [subpickers5 count])
        {
          subpickers6 = [v17 subpickers];
          v47 = [subpickers6 objectAtIndexedSubscript:v44];

          v30 = v163;
          if (!v47)
          {
            goto LABEL_30;
          }

          destination = [v47 destination];
          colorCategory = [v47 colorCategory];
          subpickers5 = v47;
        }
      }

LABEL_30:
      LOBYTE(v135) = 0;
      v48 = [selfCopy5 sectionForModelColorsRow:v34 selectedColorPreset:v171 configuration:configurationCopy modelManager:managerCopy additionalAvatarUpdateKind:destination imageProvider:colorCategory colorLayerProvider:providerCopy pairedCategory:layerProviderCopy destination:40 editingColors:objc_msgSend(v34 displaysTitle:{"destination"), colorsCopy, v135}];
      if (!v48)
      {
        v31 = v168;
        v63 = v164;
        goto LABEL_73;
      }

      [v148 addObject:v48];
      v31 = v168;
      v150 = v168 > v30;
      sectionItems = [v48 sectionItems];
      v50 = [sectionItems indexOfObjectPassingTest:&__block_literal_global_29];

      if (v50 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      sectionItems2 = [v48 sectionItems];
      v155 = [sectionItems2 objectAtIndexedSubscript:v51];

      if (v168 >= 1)
      {
        if ([v34 destination] == 1)
        {
          colorsState = [managerCopy colorsState];
          variationStore = [colorsState variationStore];
          color = [v138 color];
          v56 = [variationStore colorPresetFromColor:color];

          color2 = [v138 color];
          v58 = [color2 copyForPairedCategory:{objc_msgSend(v34, "colorCategory")}];
          v59 = MEMORY[0x1E696AD98];
          [v56 variation];
          v60 = [v59 numberWithFloat:?];
          colorsState2 = [managerCopy colorsState];
          v62 = [AVTAvatarUpdaterFactory updaterForColor:v58 variationOverride:v60 colorsState:colorsState2 pairedColors:0 additionalColor:0 saveToColorsState:0];

          managerCopy = v161;
        }

        else
        {
          v62 = +[AVTAvatarUpdaterFactory updaterForClearingColorsForCategory:destination:](AVTAvatarUpdaterFactory, "updaterForClearingColorsForCategory:destination:", [v34 colorCategory], objc_msgSend(v34, "destination"));
        }

        v65 = [v62 copy];
        v66 = MEMORY[0x1BFB0DE80]();
        [v140 addObject:v66];

        colorsState3 = [managerCopy colorsState];
        v68 = [colorsState3 selectedColorForCategory:objc_msgSend(v34 destinationIndex:{"colorCategory"), objc_msgSend(v34, "destination")}];

        if (defaultsProviderCopy && !v68)
        {
          v69 = [defaultsProviderCopy defaultColorForCategory:objc_msgSend(v34 destination:"colorCategory") withConfiguration:{AVTAvatarSettingColorIndexForColorDestination(objc_msgSend(v34, "destination")), configurationCopy}];
          v68 = v69;
          if (v69)
          {
            v70 = v69;
          }
        }

        if (!v68)
        {
          subpickers7 = [v17 subpickers];
          v72 = [subpickers7 objectAtIndexedSubscript:v168 - 1];

          colorsState4 = [managerCopy colorsState];
          v74 = [colorsState4 selectedColorForCategory:objc_msgSend(v72 destinationIndex:{"colorCategory"), objc_msgSend(v72, "destination")}];

          v68 = [v74 copyForCategory:objc_msgSend(v34 destination:{"colorCategory"), objc_msgSend(v34, "destination")}];
        }

        colorsState5 = [managerCopy colorsState];
        v76 = [AVTAvatarUpdaterFactory updaterForColor:v68 colorsState:colorsState5 pairedColors:0 additionalColor:0 saveToColorsState:0];

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

        selfCopy5 = self;
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
        allowsRemoval = [v17 allowsRemoval];
        if (v31 > 0)
        {
          v80 = allowsRemoval;
        }

        else
        {
          v80 = 0;
        }

        subtitles = [v17 subtitles];
        [selfCopy5 subtitleFromSubtitles:subtitles forIndex:v31 enabledIndex:v163];
        v82 = v17;
        v84 = v83 = v31;

        v85 = v163;
        title = v84;
        v87 = v82;
        v144 = title;
        if (!title)
        {
          if (v83 <= v163)
          {
            title = [v34 title];
          }

          else
          {
            v88 = MEMORY[0x1E696AEC0];
            v89 = AVTAvatarUIBundle();
            v90 = [v89 localizedStringForKey:@"ADD_MULTICOLOR_FORMAT" value:&stru_1F39618F0 table:@"Localized"];
            title2 = [v34 title];
            title = [v88 stringWithFormat:v90, title2];

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
        identifier3 = [v151 identifier];
        colorVariationStore = [v151 colorVariationStore];
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
        v99 = [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)v96 initWithIdentifier:identifier3 localizedName:title isPlaceholder:v143 isRemovable:v94 colorItem:v155 variationStore:colorVariationStore avatarUpdater:v149 editorStateUpdater:v181 removalUpdater:v95];

        [(AVTAvatarAttributeEditorMulticolorPickerSectionItem *)v99 setSelected:v83 == v137];
        [v139 addObject:v99];
        v100 = v83;
        if (!v83)
        {
          v101 = [v148 objectAtIndexedSubscript:0];
          sectionItems3 = [v101 sectionItems];
          v103 = [sectionItems3 indexOfObjectPassingTest:&__block_literal_global_24];

          if (v103 != 0x7FFFFFFFFFFFFFFFLL)
          {
            sectionItems4 = [v151 sectionItems];
            v105 = [sectionItems4 objectAtIndexedSubscript:v103];

            v138 = v105;
          }
        }

        v17 = v141;
        selfCopy5 = self;
        v30 = v163;
        v64 = v149;
        v31 = v100 + 1;

        v63 = v164;
        v48 = v151;
      }

      managerCopy = v161;
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
    nestedPresetPickers = [v17 nestedPresetPickers];
    v170 = [v107 dictionaryWithCapacity:{objc_msgSend(nestedPresetPickers, "count")}];

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
          v114 = [selfCopy5 sectionProvidersForCoreModelCategory:v113 platform:platform modelManager:managerCopy pairingPickers:pickersCopy editingColors:colorsCopy colorDefaultsProvider:defaultsProviderCopy previousSectionMap:mapCopy imageProvider:providerCopy colorLayerProvider:layerProviderCopy stickerRenderer:0 configuration:configurationCopy displayConditionEvaluator:0];
          array = [MEMORY[0x1E695DF70] array];
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

                sections = [*(*(&v173 + 1) + 8 * k) sections];
                [array addObjectsFromArray:sections];
              }

              v118 = [v116 countByEnumeratingWithState:&v173 objects:v190 count:16];
            }

            while (v118);
          }

          [v170 setObject:array forKeyedSubscript:v112];
          managerCopy = v161;
          selfCopy5 = self;
        }

        v110 = [v172 countByEnumeratingWithState:&v177 objects:v191 count:16];
      }

      while (v110);
    }

    editorState3 = [managerCopy editorState];
    v17 = v141;
    identifier4 = [v141 identifier];
    v124 = [editorState3 enabledMulticolorSubpickersIndexForMulticolorPickerIdentifier:identifier4] > 0;

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
    identifier5 = [v141 identifier];
    title3 = [v141 title];
    v133 = v139;
    v166 = [(AVTAvatarAttributeEditorMulticolorSectionProvider *)v130 initWithIdentifier:identifier5 localizedName:title3 subpickers:v148 subpickerRemovalUpdaters:v140 nestedPresetPickers:v170 supplementalPicker:v128 pickerItems:v139 editorState:editorState3];
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

+ (id)subtitleFromSubtitles:(id)subtitles forIndex:(int64_t)index enabledIndex:(int64_t)enabledIndex
{
  subtitlesCopy = subtitles;
  v8 = subtitlesCopy;
  if (subtitlesCopy && [subtitlesCopy count])
  {
    v9 = [v8 objectAtIndexedSubscript:enabledIndex];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)selectedPresetForCoreModelColorsPicker:(id)picker isEnabled:(BOOL)enabled fallbackToColorsPicker:(id)colorsPicker colorDefaultsProvider:(id)provider modelManager:(id)manager
{
  enabledCopy = enabled;
  pickerCopy = picker;
  colorsPickerCopy = colorsPicker;
  providerCopy = provider;
  managerCopy = manager;
  colorsState = [managerCopy colorsState];
  colorPreset3 = [colorsState selectedColorPresetForCategory:objc_msgSend(pickerCopy destinationIndex:{"colorCategory"), objc_msgSend(pickerCopy, "destination")}];

  colorsState2 = [managerCopy colorsState];
  v18 = [colorsState2 selectedColorPresetForCategory:objc_msgSend(colorsPickerCopy destinationIndex:{"colorCategory"), objc_msgSend(colorsPickerCopy, "destination")}];

  if (!colorPreset3 && enabledCopy)
  {
    v40 = providerCopy;
    destination = [pickerCopy destination];
    colorCategory = [pickerCopy colorCategory];
    avatarConfiguration = [managerCopy avatarConfiguration];
    v22 = [avatarConfiguration colorPresetForSettingKind:{destination, colorCategory}];

    name = [v18 name];
    colorPreset = [v22 colorPreset];
    name2 = [colorPreset name];
    if ([name isEqual:name2])
    {
      [v18 variation];
      v27 = v26;
      colorPreset2 = [v22 colorPreset];
      [colorPreset2 variation];
      v30 = v29;

      if (v27 == v30)
      {
        colorPreset3 = 0;
LABEL_8:
        providerCopy = v40;

        goto LABEL_9;
      }
    }

    else
    {
    }

    colorPreset3 = [v22 colorPreset];
    goto LABEL_8;
  }

LABEL_9:
  if (!colorPreset3 && enabledCopy)
  {
    colorCategory2 = [pickerCopy colorCategory];
    v32 = AVTAvatarSettingColorIndexForColorDestination([pickerCopy destination]);
    avatarConfiguration2 = [managerCopy avatarConfiguration];
    colorPreset3 = [providerCopy defaultColorPresetForCategory:colorCategory2 destination:v32 withConfiguration:avatarConfiguration2];
  }

  if (colorsPickerCopy && !colorPreset3)
  {
    colorsState3 = [managerCopy colorsState];
    v35 = [colorsState3 selectedColorPresetForCategory:objc_msgSend(colorsPickerCopy destinationIndex:{"colorCategory"), objc_msgSend(colorsPickerCopy, "destination")}];

    v36 = MEMORY[0x1E698E290];
    name3 = [v35 name];
    colorCategory3 = [pickerCopy colorCategory];
    [v35 variation];
    colorPreset3 = [v36 colorPresetWithName:name3 category:colorCategory3 variation:?];
  }

  return colorPreset3;
}

+ (id)sectionColorItemsForColors:(id)colors selectedPreset:(id)preset configuration:(id)configuration modelManager:(id)manager additionalUpdateKind:(id)kind imageProvider:(id)provider colorLayerProvider:(id)layerProvider pairedCategory:(int64_t)self0 editingColors:(id)self1
{
  var1 = kind.var1;
  var0 = kind.var0;
  v53 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  presetCopy = preset;
  configurationCopy = configuration;
  managerCopy = manager;
  providerCopy = provider;
  layerProviderCopy = layerProvider;
  editingColorsCopy = editingColors;
  array = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = colorsCopy;
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
        colorsState = [managerCopy colorsState];
        variationStore = [colorsState variationStore];
        v19 = [variationStore colorPresetFromColor:v16];

        v20 = AVTColorSettingKind(0, 0);
        v22 = [configurationCopy colorPresetForSettingKind:{v20, v21}];
        colorPreset = [v22 colorPreset];
        v45 = [v19 isEqual:presetCopy];
        v24 = 0;
        if (category != 40)
        {
          v25 = [v16 copyForPairedCategory:category];
          v51 = v25;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        }

        if (var1 == 40)
        {
          v26 = 0;
          v27 = editingColorsCopy;
        }

        else
        {
          name = [v19 name];
          v27 = editingColorsCopy;
          v26 = [editingColorsCopy colorForSettingKind:var0 identifier:{var1, name}];
        }

        colorsState2 = [managerCopy colorsState];
        v30 = [AVTAvatarUpdaterFactory updaterForColor:v16 colorsState:colorsState2 pairedColors:v24 additionalColor:v26];

        LOBYTE(v33) = v45;
        v31 = -[AVTAvatarAttributeEditorSectionColorItem initWithColor:skinColor:imageProvider:colorLayerProvider:avatarUpdater:derivedColorDependent:selected:]([AVTAvatarAttributeEditorSectionColorItem alloc], "initWithColor:skinColor:imageProvider:colorLayerProvider:avatarUpdater:derivedColorDependent:selected:", v16, colorPreset, providerCopy, layerProviderCopy, v30, [v27 colorHasDerivedColorDependency:v16], v33);
        [array addObject:v31];
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v44);
  }

  return array;
}

+ (id)sectionForModelRow:(id)row fromModelPresets:(id)presets selectedModelPreset:(id)preset tagSelection:(id)selection fixedTags:(id)tags availableTags:(id)availableTags category:(int64_t)category imageProvider:(id)self0 stickerRenderer:(id)self1 configuration:(id)self2 previousSection:(id)self3 pairedCategory:(int64_t)self4
{
  v108 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  presetsCopy = presets;
  presetCopy = preset;
  selectionCopy = selection;
  tagsCopy = tags;
  availableTagsCopy = availableTags;
  providerCopy = provider;
  rendererCopy = renderer;
  configurationCopy = configuration;
  sectionCopy = section;
  array = [MEMORY[0x1E695DF70] array];
  representedTags = [rowCopy representedTags];
  options = [rowCopy options];
  v81 = selectionCopy;
  v82 = presetsCopy;
  v79 = availableTagsCopy;
  v80 = tagsCopy;
  v27 = [self filterPresets:presetsCopy forRowRepresentingTags:representedTags currentTagSelection:selectionCopy fixedTags:tagsCopy availableTags:availableTagsCopy sortingOption:{objc_msgSend(options, "sortingOption")}];

  v28 = MEMORY[0x1E695DF90];
  sectionItems = [sectionCopy sectionItems];
  v95 = [v28 dictionaryWithCapacity:{objc_msgSend(sectionItems, "count")}];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  sectionItems2 = [sectionCopy sectionItems];
  v31 = [sectionItems2 countByEnumeratingWithState:&v102 objects:v107 count:16];
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
          objc_enumerationMutation(sectionItems2);
        }

        v35 = *(*(&v102 + 1) + 8 * i);
        identifier = [v35 identifier];
        [v95 setObject:v35 forKeyedSubscript:identifier];
      }

      v32 = [sectionItems2 countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v32);
  }

  v84 = [objc_opt_class() framingModeForRow:rowCopy selectedPreset:presetCopy];
  pairedCategoryCopy2 = pairedCategory;
  v78 = sectionCopy;
  if (pairedCategory == 40)
  {
    v77 = 0;
  }

  else
  {
    pairing = [rowCopy pairing];
    v77 = pairing != 0;
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
    v89 = rowCopy;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v99 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v98 + 1) + 8 * j);
        identifier2 = [v40 identifier];
        v94 = [v95 objectForKeyedSubscript:identifier2];

        options2 = [rowCopy options];
        stickerConfiguration = [options2 stickerConfiguration];

        options3 = [rowCopy options];
        presetOverrides = [options3 presetOverrides];
        options4 = [rowCopy options];
        v47 = options4;
        if (stickerConfiguration)
        {
          stickerConfiguration2 = [options4 stickerConfiguration];
          v96 = [rendererCopy scheduledStickerResourceProviderForThumbnailForModelPreset:v40 presetOverrides:presetOverrides avatarConfiguration:configurationCopy stickerConfiguration:stickerConfiguration2 correctClipping:0];
          v49 = 0;
        }

        else
        {
          stickerConfiguration2 = [options4 poseOverride];
          v49 = [providerCopy providerForThumbnailForModelPreset:v40 presetOverrides:presetOverrides poseOverride:stickerConfiguration2 avatarConfiguration:configurationCopy framingMode:v84];
          v96 = 0;
        }

        identifier3 = [v40 identifier];
        identifier4 = [presetCopy identifier];
        v52 = [identifier3 isEqual:identifier4];

        options5 = [rowCopy options];
        framingMode = [options5 framingMode];
        [AVTRenderingScope thumbnailHeightRatioForFramingMode:framingMode];
        v56 = v55;

        if (pairedCategoryCopy2 == 40)
        {
          v57 = 0;
        }

        else
        {
          v57 = [v40 copyForPairedCategory:pairedCategoryCopy2];
        }

        v58 = [AVTAvatarUpdaterFactory updaterForPreset:v40 pairedPreset:v57];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __217__AVTAvatarAttributeEditorModelBuilder_sectionForModelRow_fromModelPresets_selectedModelPreset_tagSelection_fixedTags_availableTags_category_imageProvider_stickerRenderer_configuration_previousSection_pairedCategory___block_invoke;
        v97[3] = &unk_1E7F3CFD0;
        v97[4] = v40;
        v59 = MEMORY[0x1BFB0DE80](v97);
        if (pairedCategoryCopy2 == 40)
        {
          [v40 localizedName];
        }

        else
        {
          [v40 localizedPairedName];
        }
        v60 = ;
        v61 = [AVTAvatarAttributeEditorSectionItem alloc];
        identifier5 = [v40 identifier];
        v63 = [v59 copy];
        LOBYTE(v76) = v52;
        v64 = [(AVTAvatarAttributeEditorSectionItem *)v61 initWithIdentifier:identifier5 localizedName:v60 thumbnailProvider:v49 stickerResourceProvider:v96 presetResourcesProvider:v63 avatarUpdater:v58 heightRatio:v56 selected:v76];

        cachedThumbnail = [v94 cachedThumbnail];

        if (cachedThumbnail)
        {
          cachedThumbnail2 = [v94 cachedThumbnail];
          [(AVTAvatarAttributeEditorSectionItem *)v64 setCachedThumbnail:cachedThumbnail2];
        }

        [array addObject:v64];

        rowCopy = v89;
        pairedCategoryCopy2 = pairedCategory;
      }

      v93 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v93);
  }

  if (v77)
  {
    pairing2 = [rowCopy pairing];
    localizedPairedTitle = [pairing2 localizedPairedTitle];
  }

  else
  {
    localizedPairedTitle = [rowCopy title];
  }

  options6 = [rowCopy options];
  v70 = [self sectionOptionFromModelOptions:options6];

  if ([array count] < 2)
  {
    v74 = 0;
  }

  else
  {
    v71 = [objc_opt_class() destinationForPresetCategory:category isPaired:v77];
    v72 = [AVTAvatarAttributeEditorSection alloc];
    identifier6 = [rowCopy identifier];
    v74 = [(AVTAvatarAttributeEditorSection *)v72 initWithSectionItems:array localizedName:localizedPairedTitle identifier:identifier6 intendedDestination:v71 options:v70];
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

+ (id)framingModeForRow:(id)row selectedPreset:(id)preset
{
  v34 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  presetCopy = preset;
  options = [rowCopy options];
  framingMode = [options framingMode];

  options2 = [rowCopy options];
  framingModeOverrides = [options2 framingModeOverrides];

  if (framingModeOverrides)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    orderedTags = [framingModeOverrides orderedTags];
    v12 = [orderedTags countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v12)
    {
LABEL_13:

      goto LABEL_15;
    }

    v13 = v12;
    v24 = framingModeOverrides;
    v25 = framingMode;
    v26 = rowCopy;
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
          objc_enumerationMutation(orderedTags);
        }

        v20 = *(*(&v29 + 1) + 8 * v18);
        tags = [presetCopy tags];
        v22 = [self scoreForTags:v20 forCombination:v20 currentSelection:tags];

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
      v13 = [orderedTags countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);

    rowCopy = v26;
    if ((v17 & 0x8000000000000000) == 0)
    {
      framingModeOverrides = v24;
      orderedTags = [v24 orderedFramingModeOverrides];
      framingMode = [orderedTags objectAtIndexedSubscript:v17];

      goto LABEL_13;
    }

    framingModeOverrides = v24;
    framingMode = v25;
  }

LABEL_15:

  return framingMode;
}

+ (id)filterPresets:(id)presets forRowRepresentingTags:(id)tags currentTagSelection:(id)selection fixedTags:(id)fixedTags availableTags:(id)availableTags sortingOption:(unint64_t)option
{
  v63 = *MEMORY[0x1E69E9840];
  presetsCopy = presets;
  tagsCopy = tags;
  selectionCopy = selection;
  fixedTagsCopy = fixedTags;
  availableTagsCopy = availableTags;
  if (tagsCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = tagsCopy;
    v39 = availableTagsCopy;
    v19 = [self tagCombinationsForTagNames:tagsCopy availableTags:availableTagsCopy];
    v40 = selectionCopy;
    if (selectionCopy)
    {
      v20 = selectionCopy;
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
      optionCopy = option;
      v46 = fixedTagsCopy;
      v47 = presetsCopy;
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
          [self setTags:fixedTagsCopy onMutableTagSet:v23];
          v49 = v23;
          v24 = [self filterPresets:presetsCopy matchingTagValues:v23 sortedUsing:option];
          firstObject = [v24 firstObject];
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
                tags = [v31 tags];
                selfCopy = self;
                v34 = [self scoreForTags:tags forCombination:v22 currentSelection:v52];

                if (v34 > v28)
                {
                  v35 = v31;

                  v28 = v34;
                  firstObject = v35;
                }

                self = selfCopy;
              }

              v27 = [v51 countByEnumeratingWithState:&v53 objects:v61 count:16];
            }

            while (v27);
          }

          if (firstObject && ([array containsObject:firstObject] & 1) == 0)
          {
            [array addObject:firstObject];
            tags2 = [firstObject tags];
            [self addTags:tags2 toMutableTagSet:v52];
          }

          v21 = v50 + 1;
          presetsCopy = v47;
          option = optionCopy;
          fixedTagsCopy = v46;
        }

        while (v50 + 1 != v48);
        v48 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v48);
    }

    v37 = [array copy];
    selectionCopy = v40;
    tagsCopy = v41;
    availableTagsCopy = v39;
  }

  else
  {
    v37 = [self filterPresets:presetsCopy matchingTagValues:fixedTagsCopy sortedUsing:option];
  }

  return v37;
}

+ (id)tagCombinationsForTagNames:(id)names availableTags:(id)tags
{
  v46 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  tagsCopy = tags;
  if ([namesCopy count])
  {
    firstObject = [namesCopy firstObject];
    v33 = [tagsCopy objectForKeyedSubscript:firstObject];
    array = [MEMORY[0x1E695DF70] array];
    v30 = namesCopy;
    v10 = [namesCopy mutableCopy];
    [v10 removeObjectsInRange:{0, 1}];
    v28 = v10;
    v11 = [v10 copy];
    v29 = tagsCopy;
    v12 = [self tagCombinationsForTagNames:v11 availableTags:tagsCopy];

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
                [v21 setObject:v22 forKeyedSubscript:firstObject];

                [array addObject:v21];
                if ([v14 count])
                {
                  v23 = MEMORY[0x1E695DF20];
                  v24 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v20];
                  v25 = [v23 dictionaryWithObject:v24 forKey:firstObject];

                  [array addObject:v25];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v17);
          }

          if ([v14 count])
          {
            [array addObject:v14];
          }

          v13 = v35 + 1;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v34);
    }

    v26 = [array copy];
    tagsCopy = v29;
    namesCopy = v30;
  }

  else
  {
    v26 = &unk_1F39A5D78;
  }

  return v26;
}

+ (id)tagSetByRemovingTagNames:(id)names fromTagSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v6 = [set mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = namesCopy;
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

+ (id)filterPresets:(id)presets matchingTagValues:(id)values sortedUsing:(unint64_t)using
{
  v42 = *MEMORY[0x1E69E9840];
  presetsCopy = presets;
  valuesCopy = values;
  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = presetsCopy;
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
        allKeys = [valuesCopy allKeys];
        v9 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              tags = [v8 tags];
              v15 = [tags objectForKeyedSubscript:v13];
              if (v15)
              {
                v16 = v15;
                tags2 = [v8 tags];
                v18 = [tags2 objectForKeyedSubscript:v13];
                v19 = [valuesCopy objectForKeyedSubscript:v13];
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

            v10 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        [self insertPreset:v8 intoList:array forSortingOption:using];
LABEL_18:
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }

  v21 = [array copy];

  return v21;
}

+ (void)insertPreset:(id)preset intoList:(id)list forSortingOption:(unint64_t)option
{
  presetCopy = preset;
  listCopy = list;
  if (option == 1 || option == 2 && [presetCopy isDefaultPreset])
  {
    [listCopy insertObject:presetCopy atIndex:0];
  }

  else
  {
    [listCopy addObject:presetCopy];
  }
}

+ (int)scoreForTags:(id)tags forCombination:(id)combination currentSelection:(id)selection
{
  v35 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  selectionCopy = selection;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [combination allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
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
        objc_enumerationMutation(allKeys);
      }

      v14 = [tagsCopy objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
      v15 = v14 != 0;

      v11 |= v15;
    }

    v10 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
  }

  while (v10);

  if (v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [tagsCopy allKeys];
    v16 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          v21 = [tagsCopy objectForKeyedSubscript:v20];
          v22 = [v21 mutableCopy];

          v23 = [selectionCopy objectForKeyedSubscript:v20];
          [v22 intersectOrderedSet:v23];

          v10 = [v22 count] + v10;
        }

        v17 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
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

+ (void)addTags:(id)tags toMutableTagSet:(id)set
{
  setCopy = set;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTAvatarAttributeEditorModelBuilder_addTags_toMutableTagSet___block_invoke;
  v7[3] = &unk_1E7F3BC58;
  v8 = setCopy;
  v6 = setCopy;
  [tags enumerateKeysAndObjectsUsingBlock:v7];
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

+ (void)setTags:(id)tags onMutableTagSet:(id)set
{
  setCopy = set;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTAvatarAttributeEditorModelBuilder_setTags_onMutableTagSet___block_invoke;
  v7[3] = &unk_1E7F3BC58;
  v8 = setCopy;
  v6 = setCopy;
  [tags enumerateKeysAndObjectsUsingBlock:v7];
}

void __64__AVTAvatarAttributeEditorModelBuilder_setTags_onMutableTagSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)tagSetForTagNames:(id)names inTagSet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  setCopy = set;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = namesCopy;
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
        v14 = [setCopy objectForKeyedSubscript:{v13, v18}];
        v15 = [v14 mutableCopy];
        [dictionary setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [dictionary copy];

  return v16;
}

+ (id)firstColorSectionInSections:(id)sections
{
  sectionsCopy = sections;
  v4 = [sectionsCopy indexOfObjectPassingTest:&__block_literal_global_40];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [sectionsCopy objectAtIndex:v4];
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

+ (id)sectionOptionFromModelOptions:(id)options
{
  optionsCopy = options;
  v5 = [self sectionDisplayModeForCoreModelDisplayMode:{objc_msgSend(optionsCopy, "displayMode")}];
  v6 = [AVTAvatarAttributeEditorSectionOptions alloc];
  framingMode = [optionsCopy framingMode];
  poseOverride = [optionsCopy poseOverride];
  presetOverrides = [optionsCopy presetOverrides];
  stickerConfiguration = [optionsCopy stickerConfiguration];
  showsLabel = [optionsCopy showsLabel];

  v12 = [(AVTAvatarAttributeEditorSectionOptions *)v6 initWithFramingMode:framingMode poseOverride:poseOverride presetOverrides:presetOverrides displayMode:v5 stickerConfiguration:stickerConfiguration showsLabel:showsLabel];

  return v12;
}

@end