@interface AVTAvatarConfiguration
+ (id)configurationColorPresetWithColorPreset:(id)a3 settingKind:(id)a4 coreModel:(id)a5;
+ (id)configurationForRecord:(id)a3 coreModel:(id)a4;
+ (id)configurationFromAvatar:(id)a3;
+ (id)configurationFromAvatar:(id)a3 coreModel:(id)a4;
+ (id)configurationPresetWithPreset:(id)a3 settingKind:(id)a4;
- (AVTAvatarConfiguration)initWithPresets:(id)a3 colorPresets:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)colorConfigurationPresets;
- (id)colorPresetForSettingKind:(id)a3;
- (id)colorPresets;
- (id)configurationPresetForSettingKind:(id)a3;
- (id)configurationPresets;
- (id)copyWithZone:(_NSZone *)a3;
- (id)persistentIdentifierForScope:(id)a3;
- (id)presetConfigurationPresets;
- (id)presetForCategory:(int64_t)a3;
- (id)presetForSettingKind:(id)a3 storage:(id)a4;
- (id)presets;
- (id)presetsForStorage:(id)a3;
- (id)volatileIdentifierForScope:(id)a3;
- (unint64_t)hash;
- (void)addColorPreset:(id)a3;
- (void)addConfigurationColorPreset:(id)a3;
- (void)addConfigurationPreset:(id)a3;
- (void)addPreset:(id)a3;
- (void)applyToAvatar:(id)a3 animated:(BOOL)a4;
- (void)removeColorPresetsForSettingKind:(id)a3;
- (void)removePresetsForCategory:(int64_t)a3;
- (void)removePresetsForSettingKind:(id)a3 storage:(id)a4;
@end

@implementation AVTAvatarConfiguration

- (id)volatileIdentifierForScope:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [(AVTAvatarConfiguration *)self presets];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_7];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [v11 preset];
        v13 = [v12 category];
        v14 = [v11 preset];
        v15 = [v14 identifier];
        [v4 appendFormat:@"%ld_%@_", v13, v15];
      }

      v8 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v16 = [(AVTAvatarConfiguration *)self colorPresets];
  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_3];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = v17;
  v18 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v38);
        }

        v22 = *(*(&v40 + 1) + 8 * j);
        v23 = [v22 color];
        v24 = [v23 settingKind];
        v26 = AVTAvatarSettingKindIdentifier(v24, v25);
        v27 = [v22 color];
        v28 = [v27 identifier];
        [v4 appendFormat:@"%@_%@", v26, v28];

        v29 = [v22 colorPreset];
        [v29 variation];
        v31 = v30;

        if (v31 != 0.0)
        {
          v32 = [v22 colorPreset];
          [v32 variation];
          [v4 appendFormat:@"_%.2f", v33];
        }

        [v4 appendString:@"_"];
      }

      v19 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  [v4 appendFormat:@"AK%lu", AVTAvatarKitSnapshotVersionNumber()];
  if (v37)
  {
    v34 = [v37 cacheableResourceAssociatedIdentifier];
    [v4 appendString:v34];
  }

  v35 = [v4 copy];

  return v35;
}

- (id)persistentIdentifierForScope:(id)a3
{
  v3 = [(AVTAvatarConfiguration *)self volatileIdentifierForScope:a3];
  v4 = [v3 avt_MD5String];

  return v4;
}

+ (id)configurationPresetWithPreset:(id)a3 settingKind:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v6 = a3;
  v7 = [AVTConfigurationPreset alloc];
  v8 = v7;
  if (v6)
  {
    v9 = [[AVTCoreModelPreset alloc] initWithPreset:v6];
    v10 = [(AVTConfigurationPreset *)v8 initWithPreset:v9 settingKind:var0, var1];
  }

  else
  {
    v10 = [(AVTConfigurationPreset *)v7 initWithDefaultPresetForSettingKind:var0, var1];
  }

  return v10;
}

+ (id)configurationColorPresetWithColorPreset:(id)a3 settingKind:(id)a4 coreModel:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  if (v8)
  {
    v9 = [a5 colors];
    v10 = [v8 name];
    v11 = [v9 colorForSettingKind:var0 identifier:{var1, v10}];

    if (!v11)
    {
      v12 = [AVTCoreModelColor alloc];
      v11 = [(AVTCoreModelColor *)v12 initWithColorPreset:v8 settingKind:var0 order:var1 derivedColorsByCategories:0x7FFFFFFFFFFFFFFFLL, MEMORY[0x1E695E0F8]];
    }

    v13 = [[AVTCoreModelColorVariation alloc] initWithColor:v11 colorPreset:v8];
    v14 = [[AVTConfigurationPreset alloc] initWithPreset:v13 settingKind:var0, var1];
  }

  else
  {
    v14 = [[AVTConfigurationPreset alloc] initWithDefaultPresetForSettingKind:var0, var1];
  }

  return v14;
}

+ (id)configurationFromAvatar:(id)a3
{
  v4 = a3;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v5 editorCoreModel];

  v7 = [a1 configurationFromAvatar:v4 coreModel:v6];

  return v7;
}

+ (id)configurationFromAvatar:(id)a3 coreModel:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [v7 groups];
  v55 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v55)
  {
    v54 = *v84;
    v66 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v84 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v9;
        v10 = *(*(&v83 + 1) + 8 * v9);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v57 = [v10 categories];
        v59 = [v57 countByEnumeratingWithState:&v79 objects:v90 count:16];
        if (v59)
        {
          v58 = *v80;
          do
          {
            v11 = 0;
            do
            {
              if (*v80 != v58)
              {
                objc_enumerationMutation(v57);
              }

              v60 = v11;
              v12 = *(*(&v79 + 1) + 8 * v11);
              v13 = [v12 presetCategory];
              if ((AVTPrereleaseCategoriesEnabled() & 1) != 0 || (AVTPresetCategoryIsPrerelease() & 1) == 0)
              {
                v14 = [v6 presetForCategory:v13];
                v15 = AVTPresetSettingKind();
                v17 = [a1 configurationPresetWithPreset:v14 settingKind:{v15, v16}];
                [v8 addConfigurationPreset:v17];

                for (i = 0; i != 3; ++i)
                {
                  v19 = [v6 colorPresetForCategory:v13 colorIndex:i];
                  v20 = AVTColorSettingKind(v13, i);
                  v22 = [a1 configurationColorPresetWithColorPreset:v19 settingKind:v20 coreModel:{v21, v7}];
                  [v8 addConfigurationColorPreset:v22];

                  v6 = v66;
                }

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v63 = [v12 pickers];
                v23 = [v63 countByEnumeratingWithState:&v75 objects:v89 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v76;
                  v61 = *v76;
                  do
                  {
                    v26 = 0;
                    v62 = v24;
                    do
                    {
                      if (*v76 != v25)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v27 = *(*(&v75 + 1) + 8 * v26);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v64 = v26;
                        v28 = v7;
                        v29 = v27;
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v74 = 0u;
                        v65 = v29;
                        v30 = [v29 subpickers];
                        v31 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
                        if (v31)
                        {
                          v32 = v31;
                          v33 = *v72;
                          do
                          {
                            for (j = 0; j != v32; ++j)
                            {
                              if (*v72 != v33)
                              {
                                objc_enumerationMutation(v30);
                              }

                              v35 = *(*(&v71 + 1) + 8 * j);
                              v36 = [v35 colorCategory];
                              v37 = [v35 destination] - 1;
                              v38 = [v6 colorPresetForCategory:v36 colorIndex:v37];
                              v39 = AVTColorSettingKind(v36, v37);
                              v41 = [a1 configurationColorPresetWithColorPreset:v38 settingKind:v39 coreModel:{v40, v28}];
                              [v8 addConfigurationColorPreset:v41];

                              v6 = v66;
                            }

                            v32 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
                          }

                          while (v32);
                        }

                        v69 = 0u;
                        v70 = 0u;
                        v67 = 0u;
                        v68 = 0u;
                        v42 = [v65 nestedPresetPickers];
                        v43 = [v42 allValues];

                        v44 = [v43 countByEnumeratingWithState:&v67 objects:v87 count:16];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = *v68;
                          do
                          {
                            for (k = 0; k != v45; ++k)
                            {
                              if (*v68 != v46)
                              {
                                objc_enumerationMutation(v43);
                              }

                              v48 = [v6 presetForCategory:{objc_msgSend(*(*(&v67 + 1) + 8 * k), "presetCategory")}];
                              v49 = AVTPresetSettingKind();
                              v51 = [a1 configurationPresetWithPreset:v48 settingKind:{v49, v50}];
                              [v8 addConfigurationPreset:v51];
                            }

                            v45 = [v43 countByEnumeratingWithState:&v67 objects:v87 count:16];
                          }

                          while (v45);
                        }

                        v7 = v28;
                        v25 = v61;
                        v24 = v62;
                        v26 = v64;
                      }

                      ++v26;
                    }

                    while (v26 != v24);
                    v24 = [v63 countByEnumeratingWithState:&v75 objects:v89 count:16];
                  }

                  while (v24);
                }
              }

              v11 = v60 + 1;
            }

            while (v60 + 1 != v59);
            v59 = [v57 countByEnumeratingWithState:&v79 objects:v90 count:16];
          }

          while (v59);
        }

        v9 = v56 + 1;
      }

      while (v56 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v55);
  }

  return v8;
}

+ (id)configurationForRecord:(id)a3 coreModel:(id)a4
{
  v6 = MEMORY[0x1E698E328];
  v7 = a4;
  v8 = [v6 memojiForRecord:a3 usageIntent:0];
  v9 = [a1 configurationFromAvatar:v8 coreModel:v7];

  return v9;
}

- (AVTAvatarConfiguration)initWithPresets:(id)a3 colorPresets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AVTAvatarConfiguration;
  v8 = [(AVTAvatarConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    presetsStorage = v8->_presetsStorage;
    v8->_presetsStorage = v9;

    v11 = [v7 mutableCopy];
    colorPresetsStorage = v8->_colorPresetsStorage;
    v8->_colorPresetsStorage = v11;
  }

  return v8;
}

- (void)addPreset:(id)a3
{
  v4 = a3;
  v5 = [AVTConfigurationPreset alloc];
  v9 = [v4 preset];
  [v9 category];
  v6 = AVTPresetSettingKind();
  v8 = [(AVTConfigurationPreset *)v5 initWithPreset:v4 settingKind:v6, v7];

  [(AVTAvatarConfiguration *)self addConfigurationPreset:v8];
}

- (void)addConfigurationPreset:(id)a3
{
  v4 = a3;
  v8 = [(AVTAvatarConfiguration *)self presetsStorage];
  v5 = [v4 settingKind];
  v7 = [AVTAvatarConfiguration keyForSettingKind:v5, v6];
  [v8 setObject:v4 forKey:v7];
}

- (void)addColorPreset:(id)a3
{
  v4 = a3;
  v5 = [AVTConfigurationPreset alloc];
  v9 = [v4 color];
  v6 = [v9 settingKind];
  v8 = [(AVTConfigurationPreset *)v5 initWithPreset:v4 settingKind:v6, v7];

  [(AVTAvatarConfiguration *)self addConfigurationColorPreset:v8];
}

- (void)addConfigurationColorPreset:(id)a3
{
  v4 = a3;
  v8 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v5 = [v4 settingKind];
  v7 = [AVTAvatarConfiguration keyForSettingKind:v5, v6];
  [v8 setObject:v4 forKey:v7];
}

- (void)removePresetsForCategory:(int64_t)a3
{
  v4 = AVTPresetSettingKind();
  v6 = v5;
  v7 = [(AVTAvatarConfiguration *)self presetsStorage];
  [(AVTAvatarConfiguration *)self removePresetsForSettingKind:v4 storage:v6, v7];
}

- (void)removeColorPresetsForSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  [(AVTAvatarConfiguration *)self removePresetsForSettingKind:var0 storage:var1, v6];
}

- (void)removePresetsForSettingKind:(id)a3 storage:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AVTAvatarConfiguration_removePresetsForSettingKind_storage___block_invoke;
  v18[3] = &__block_descriptor_48_e49_B32__0__NSString_8__AVTConfigurationPreset_16_B24l;
  v18[4] = var0;
  v18[5] = var1;
  v7 = [v6 keysOfEntriesPassingTest:v18];
  v8 = [[AVTConfigurationPreset alloc] initWithDefaultPresetForSettingKind:var0, var1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v6 setObject:v8 forKey:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

BOOL __62__AVTAvatarConfiguration_removePresetsForSettingKind_storage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 settingKind];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return AVTAvatarSettingKindEqual(v4, v5, v6, v7);
}

- (id)presets
{
  v3 = [(AVTAvatarConfiguration *)self presetsStorage];
  v4 = [(AVTAvatarConfiguration *)self presetsForStorage:v3];

  return v4;
}

- (id)colorPresets
{
  v3 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v4 = [(AVTAvatarConfiguration *)self presetsForStorage:v3];

  return v4;
}

- (id)presetsForStorage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isDefaultPreset] & 1) == 0)
        {
          v11 = [v10 preset];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)presetForCategory:(int64_t)a3
{
  v4 = AVTPresetSettingKind();
  v6 = v5;
  v7 = [(AVTAvatarConfiguration *)self presetsStorage];
  v8 = [(AVTAvatarConfiguration *)self presetForSettingKind:v4 storage:v6, v7];
  v9 = [v8 preset];

  return v9;
}

- (id)colorPresetForSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v7 = [(AVTAvatarConfiguration *)self presetForSettingKind:var0 storage:var1, v6];
  v8 = [v7 preset];

  return v8;
}

- (id)presetForSettingKind:(id)a3 storage:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = a4;
  v7 = [objc_opt_class() keyForSettingKind:{var0, var1}];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)colorConfigurationPresets
{
  v2 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v3 = [v2 allValues];

  return v3;
}

- (id)presetConfigurationPresets
{
  v2 = [(AVTAvatarConfiguration *)self presetsStorage];
  v3 = [v2 allValues];

  return v3;
}

- (id)configurationPresets
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVTAvatarConfiguration *)self presetConfigurationPresets];
  [v3 addObjectsFromArray:v4];

  v5 = [(AVTAvatarConfiguration *)self colorConfigurationPresets];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)configurationPresetForSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (a3.var0)
  {
    [(AVTAvatarConfiguration *)self colorPresetsStorage];
  }

  else
  {
    [(AVTAvatarConfiguration *)self presetsStorage];
  }
  v6 = ;
  v7 = [(AVTAvatarConfiguration *)self presetForSettingKind:var0 storage:var1, v6];

  return v7;
}

- (void)applyToAvatar:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(AVTAvatarConfiguration *)self presetsStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke;
  v13[3] = &unk_1E7F3C130;
  v8 = v6;
  v14 = v8;
  v15 = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v9 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke_2;
  v11[3] = &unk_1E7F3C158;
  v12 = v8;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if ([v11 isDefaultPreset])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v11 preset];
    v4 = [v5 preset];
  }

  v6 = *(a1 + 32);
  [v11 settingKind];
  v8 = [v6 presetForCategory:v7];
  if (v8 != v4)
  {
    v9 = *(a1 + 32);
    [v11 settingKind];
    [v9 setPreset:v4 forCategory:v10 animated:*(a1 + 40)];
  }
}

void __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  if ([v19 isDefaultPreset])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v19 preset];
    v4 = [v5 colorPreset];
  }

  v6 = AVTAvatarSettingColorIndexForColorDestination([v19 settingKind]);
  v7 = *(a1 + 32);
  [v19 settingKind];
  v9 = [v7 colorPresetForCategory:v8 colorIndex:v6];
  v10 = v9;
  if (v9 | v4)
  {
    v11 = [v9 name];
    v12 = [v4 name];
    if ([v11 isEqualToString:v12])
    {
      [v10 variation];
      v14 = v13;
      [v4 variation];
      v16 = v15;

      if (v14 == v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v17 = *(a1 + 32);
    [v19 settingKind];
    [v17 setColorPreset:v4 forCategory:v18 colorIndex:v6];
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(AVTAvatarConfiguration *)self presetsStorage];
  v6 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v7 = [v4 initWithPresets:v5 colorPresets:v6];

  return v7;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTAvatarConfiguration;
  v3 = [(AVTAvatarConfiguration *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarConfiguration *)self presetsStorage];
  [v4 appendFormat:@" presets: %@", v5];

  v6 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  [v4 appendFormat:@" colorPresets: %@", v6];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTAvatarConfiguration *)self presetsStorage];
      if (!v6)
      {
        v3 = [(AVTAvatarConfiguration *)v5 presetsStorage];
        if (!v3)
        {
LABEL_7:
          v10 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
          if (v10 || ([(AVTAvatarConfiguration *)v5 colorPresetsStorage], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v11 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
            v12 = [(AVTAvatarConfiguration *)v5 colorPresetsStorage];
            v13 = [v11 isEqual:v12];

            if (v10)
            {
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v13 = 1;
          }

          goto LABEL_16;
        }
      }

      v7 = [(AVTAvatarConfiguration *)self presetsStorage];
      v8 = [(AVTAvatarConfiguration *)v5 presetsStorage];
      v9 = [v7 isEqual:v8];

      if (v6)
      {

        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_7;
        }
      }
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(AVTAvatarConfiguration *)self presetsStorage];
  v4 = [v3 hash];
  v5 = [(AVTAvatarConfiguration *)self presetsStorage];
  *(&v6 + 1) = v4;
  *&v6 = [v5 hash];
  v7 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v8 = [v7 hash];

  return v8 ^ (v6 >> 32);
}

@end