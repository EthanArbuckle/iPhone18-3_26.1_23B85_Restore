@interface AVTAvatarUpdaterFactory
+ (id)updaterForAggregatingUpdaters:(id)updaters;
+ (id)updaterForClearingColorsForCategory:(int64_t)category destination:(int64_t)destination;
+ (id)updaterForColor:(id)color variationOverride:(id)override colorsState:(id)state pairedColors:(id)colors additionalColor:(id)additionalColor saveToColorsState:(BOOL)colorsState;
+ (id)updaterForPairingCategory:(id)category colorsState:(id)state;
+ (id)updaterForPreset:(id)preset pairedPreset:(id)pairedPreset;
@end

@implementation AVTAvatarUpdaterFactory

+ (id)updaterForPreset:(id)preset pairedPreset:(id)pairedPreset
{
  presetCopy = preset;
  pairedPresetCopy = pairedPreset;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AVTAvatarUpdaterFactory_updaterForPreset_pairedPreset___block_invoke;
  v11[3] = &unk_1E7F3C888;
  v12 = presetCopy;
  v13 = pairedPresetCopy;
  v7 = pairedPresetCopy;
  v8 = presetCopy;
  v9 = [v11 copy];

  return v9;
}

void __57__AVTAvatarUpdaterFactory_updaterForPreset_pairedPreset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addPreset:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v3 addPreset:?];
  }
}

+ (id)updaterForColor:(id)color variationOverride:(id)override colorsState:(id)state pairedColors:(id)colors additionalColor:(id)additionalColor saveToColorsState:(BOOL)colorsState
{
  colorCopy = color;
  overrideCopy = override;
  stateCopy = state;
  colorsCopy = colors;
  additionalColorCopy = additionalColor;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __120__AVTAvatarUpdaterFactory_updaterForColor_variationOverride_colorsState_pairedColors_additionalColor_saveToColorsState___block_invoke;
  v25[3] = &unk_1E7F3C8D8;
  v26 = overrideCopy;
  v27 = colorCopy;
  colorsStateCopy = colorsState;
  v28 = stateCopy;
  v29 = colorsCopy;
  v30 = additionalColorCopy;
  v18 = additionalColorCopy;
  v19 = colorsCopy;
  v20 = stateCopy;
  v21 = colorCopy;
  v22 = overrideCopy;
  v23 = [v25 copy];

  return v23;
}

void __120__AVTAvatarUpdaterFactory_updaterForColor_variationOverride_colorsState_pairedColors_additionalColor_saveToColorsState___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) baseColorPreset];
    [*(a1 + 32) floatValue];
    v5 = [v4 colorPresetWithVariation:?];

    v6 = [[AVTCoreModelColorVariation alloc] initWithColor:*(a1 + 40) colorPreset:v5];
  }

  else
  {
    v5 = [*(a1 + 48) variationStore];
    v6 = [v5 colorVariationFromColor:*(a1 + 40)];
  }

  v7 = v6;

  [v3 addColorPreset:v7];
  if (*(a1 + 72) == 1)
  {
    v8 = *(a1 + 48);
    v9 = [(AVTCoreModelColorVariation *)v7 colorPreset];
    [v8 setSelectedColorPreset:v9 forCoreModelColor:*(a1 + 40)];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 56);
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        if (v14)
        {
          v15 = v3;
          v16 = [*(*(&v37 + 1) + 8 * v13) baseColorPreset];
          v17 = v7;
          [(AVTCoreModelColorVariation *)v7 colorPreset];
          v19 = v18 = a1;
          [v19 variation];
          v20 = [v16 colorPresetWithVariation:?];

          a1 = v18;
          if (*(v18 + 72) == 1)
          {
            [*(v18 + 48) setSelectedColorPreset:v20 forCoreModelColor:v14];
          }

          v21 = [[AVTCoreModelColorVariation alloc] initWithColor:v14 colorPreset:v20];
          v3 = v15;
          [v15 addColorPreset:v21];

          v7 = v17;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v11);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    v23 = [v22 baseColorPreset];
    v24 = [(AVTCoreModelColorVariation *)v7 colorPreset];
    [v24 variation];
    v25 = [v23 colorPresetWithVariation:?];

    v26 = [[AVTCoreModelColorVariation alloc] initWithColor:*(a1 + 64) colorPreset:v25];
    [v3 addColorPreset:v26];
  }

  v27 = [*(a1 + 40) derivedColorsByCategories];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __120__AVTAvatarUpdaterFactory_updaterForColor_variationOverride_colorsState_pairedColors_additionalColor_saveToColorsState___block_invoke_2;
  v31[3] = &unk_1E7F3C8B0;
  v32 = *(a1 + 40);
  v33 = v7;
  v36 = *(a1 + 72);
  v34 = *(a1 + 48);
  v35 = v3;
  v28 = v3;
  v29 = v7;
  [v27 enumerateKeysAndObjectsUsingBlock:v31];
}

void __120__AVTAvatarUpdaterFactory_updaterForColor_variationOverride_colorsState_pairedColors_additionalColor_saveToColorsState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  [a2 integerValue];
  [*(a1 + 32) settingKind];
  v5 = [v9 baseColorPreset];
  v6 = [*(a1 + 40) colorPreset];
  [v6 variation];
  v7 = [v5 colorPresetWithVariation:?];

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 48) setSelectedColorPreset:v7 forCoreModelColor:v9];
  }

  v8 = [[AVTCoreModelColorVariation alloc] initWithColor:v9 colorPreset:v7];
  [*(a1 + 56) addColorPreset:v8];
}

+ (id)updaterForPairingCategory:(id)category colorsState:(id)state
{
  categoryCopy = category;
  stateCopy = state;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__AVTAvatarUpdaterFactory_updaterForPairingCategory_colorsState___block_invoke;
  v12[3] = &unk_1E7F3C900;
  v14 = stateCopy;
  selfCopy = self;
  v13 = categoryCopy;
  v8 = stateCopy;
  v9 = categoryCopy;
  v10 = [v12 copy];

  return v10;
}

void __65__AVTAvatarUpdaterFactory_updaterForPairingCategory_colorsState___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) pairing];
  if (v4)
  {
    v22 = v4;
    v5 = [v4 pairedCategory];
    v6 = [v3 presetForCategory:{objc_msgSend(*(a1 + 32), "presetCategory")}];
    v20 = [v6 copyForPairedCategory:v5];
    v21 = v6;
    v7 = [*(a1 + 48) updaterForPreset:v6 pairedPreset:?];
    (v7)[2](v7, v3);

    for (i = 0; i != 3; ++i)
    {
      v9 = AVTColorSettingKind([*(a1 + 32) presetCategory], i);
      v11 = [v3 colorPresetForSettingKind:{v9, v10}];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 color];
        v14 = [v13 copyForPairedCategory:v5];

        v15 = *(a1 + 48);
        v16 = [v12 color];
        v17 = *(a1 + 40);
        v23[0] = v14;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
        v19 = [v15 updaterForColor:v16 colorsState:v17 pairedColors:v18 additionalColor:0];
        (v19)[2](v19, v3);
      }
    }

    v4 = v22;
  }
}

+ (id)updaterForClearingColorsForCategory:(int64_t)category destination:(int64_t)destination
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AVTAvatarUpdaterFactory_updaterForClearingColorsForCategory_destination___block_invoke;
  v6[3] = &__block_descriptor_48_e32_v16__0__AVTAvatarConfiguration_8l;
  v6[4] = category;
  v6[5] = destination;
  v4 = [v6 copy];

  return v4;
}

+ (id)updaterForAggregatingUpdaters:(id)updaters
{
  updatersCopy = updaters;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AVTAvatarUpdaterFactory_updaterForAggregatingUpdaters___block_invoke;
  v7[3] = &unk_1E7F3C948;
  v8 = updatersCopy;
  v4 = updatersCopy;
  v5 = [v7 copy];

  return v5;
}

void __57__AVTAvatarUpdaterFactory_updaterForAggregatingUpdaters___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end