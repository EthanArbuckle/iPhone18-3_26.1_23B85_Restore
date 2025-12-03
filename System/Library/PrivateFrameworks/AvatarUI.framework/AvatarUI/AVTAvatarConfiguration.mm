@interface AVTAvatarConfiguration
+ (id)configurationColorPresetWithColorPreset:(id)preset settingKind:(id)kind coreModel:(id)model;
+ (id)configurationForRecord:(id)record coreModel:(id)model;
+ (id)configurationFromAvatar:(id)avatar;
+ (id)configurationFromAvatar:(id)avatar coreModel:(id)model;
+ (id)configurationPresetWithPreset:(id)preset settingKind:(id)kind;
- (AVTAvatarConfiguration)initWithPresets:(id)presets colorPresets:(id)colorPresets;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)colorConfigurationPresets;
- (id)colorPresetForSettingKind:(id)kind;
- (id)colorPresets;
- (id)configurationPresetForSettingKind:(id)kind;
- (id)configurationPresets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)persistentIdentifierForScope:(id)scope;
- (id)presetConfigurationPresets;
- (id)presetForCategory:(int64_t)category;
- (id)presetForSettingKind:(id)kind storage:(id)storage;
- (id)presets;
- (id)presetsForStorage:(id)storage;
- (id)volatileIdentifierForScope:(id)scope;
- (unint64_t)hash;
- (void)addColorPreset:(id)preset;
- (void)addConfigurationColorPreset:(id)preset;
- (void)addConfigurationPreset:(id)preset;
- (void)addPreset:(id)preset;
- (void)applyToAvatar:(id)avatar animated:(BOOL)animated;
- (void)removeColorPresetsForSettingKind:(id)kind;
- (void)removePresetsForCategory:(int64_t)category;
- (void)removePresetsForSettingKind:(id)kind storage:(id)storage;
@end

@implementation AVTAvatarConfiguration

- (id)volatileIdentifierForScope:(id)scope
{
  v50 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  string = [MEMORY[0x1E696AD60] string];
  presets = [(AVTAvatarConfiguration *)self presets];
  v6 = [presets sortedArrayUsingComparator:&__block_literal_global_7];

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
        preset = [v11 preset];
        category = [preset category];
        preset2 = [v11 preset];
        identifier = [preset2 identifier];
        [string appendFormat:@"%ld_%@_", category, identifier];
      }

      v8 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  colorPresets = [(AVTAvatarConfiguration *)self colorPresets];
  v17 = [colorPresets sortedArrayUsingComparator:&__block_literal_global_3];

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
        color = [v22 color];
        settingKind = [color settingKind];
        v26 = AVTAvatarSettingKindIdentifier(settingKind, v25);
        color2 = [v22 color];
        identifier2 = [color2 identifier];
        [string appendFormat:@"%@_%@", v26, identifier2];

        colorPreset = [v22 colorPreset];
        [colorPreset variation];
        v31 = v30;

        if (v31 != 0.0)
        {
          colorPreset2 = [v22 colorPreset];
          [colorPreset2 variation];
          [string appendFormat:@"_%.2f", v33];
        }

        [string appendString:@"_"];
      }

      v19 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  [string appendFormat:@"AK%lu", AVTAvatarKitSnapshotVersionNumber()];
  if (scopeCopy)
  {
    cacheableResourceAssociatedIdentifier = [scopeCopy cacheableResourceAssociatedIdentifier];
    [string appendString:cacheableResourceAssociatedIdentifier];
  }

  v35 = [string copy];

  return v35;
}

- (id)persistentIdentifierForScope:(id)scope
{
  v3 = [(AVTAvatarConfiguration *)self volatileIdentifierForScope:scope];
  avt_MD5String = [v3 avt_MD5String];

  return avt_MD5String;
}

+ (id)configurationPresetWithPreset:(id)preset settingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  presetCopy = preset;
  v7 = [AVTConfigurationPreset alloc];
  v8 = v7;
  if (presetCopy)
  {
    v9 = [[AVTCoreModelPreset alloc] initWithPreset:presetCopy];
    var1 = [(AVTConfigurationPreset *)v8 initWithPreset:v9 settingKind:var0, var1];
  }

  else
  {
    var1 = [(AVTConfigurationPreset *)v7 initWithDefaultPresetForSettingKind:var0, var1];
  }

  return var1;
}

+ (id)configurationColorPresetWithColorPreset:(id)preset settingKind:(id)kind coreModel:(id)model
{
  var1 = kind.var1;
  var0 = kind.var0;
  presetCopy = preset;
  if (presetCopy)
  {
    colors = [model colors];
    name = [presetCopy name];
    v11 = [colors colorForSettingKind:var0 identifier:{var1, name}];

    if (!v11)
    {
      v12 = [AVTCoreModelColor alloc];
      v11 = [(AVTCoreModelColor *)v12 initWithColorPreset:presetCopy settingKind:var0 order:var1 derivedColorsByCategories:0x7FFFFFFFFFFFFFFFLL, MEMORY[0x1E695E0F8]];
    }

    v13 = [[AVTCoreModelColorVariation alloc] initWithColor:v11 colorPreset:presetCopy];
    var1 = [[AVTConfigurationPreset alloc] initWithPreset:v13 settingKind:var0, var1];
  }

  else
  {
    var1 = [[AVTConfigurationPreset alloc] initWithDefaultPresetForSettingKind:var0, var1];
  }

  return var1;
}

+ (id)configurationFromAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  editorCoreModel = [v5 editorCoreModel];

  v7 = [self configurationFromAvatar:avatarCopy coreModel:editorCoreModel];

  return v7;
}

+ (id)configurationFromAvatar:(id)avatar coreModel:(id)model
{
  v92 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  modelCopy = model;
  v8 = objc_alloc_init(self);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [modelCopy groups];
  v55 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v55)
  {
    v54 = *v84;
    v66 = avatarCopy;
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
        categories = [v10 categories];
        v59 = [categories countByEnumeratingWithState:&v79 objects:v90 count:16];
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
                objc_enumerationMutation(categories);
              }

              v60 = v11;
              v12 = *(*(&v79 + 1) + 8 * v11);
              presetCategory = [v12 presetCategory];
              if ((AVTPrereleaseCategoriesEnabled() & 1) != 0 || (AVTPresetCategoryIsPrerelease() & 1) == 0)
              {
                v14 = [avatarCopy presetForCategory:presetCategory];
                v15 = AVTPresetSettingKind();
                v17 = [self configurationPresetWithPreset:v14 settingKind:{v15, v16}];
                [v8 addConfigurationPreset:v17];

                for (i = 0; i != 3; ++i)
                {
                  v19 = [avatarCopy colorPresetForCategory:presetCategory colorIndex:i];
                  v20 = AVTColorSettingKind(presetCategory, i);
                  v22 = [self configurationColorPresetWithColorPreset:v19 settingKind:v20 coreModel:{v21, modelCopy}];
                  [v8 addConfigurationColorPreset:v22];

                  avatarCopy = v66;
                }

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                pickers = [v12 pickers];
                v23 = [pickers countByEnumeratingWithState:&v75 objects:v89 count:16];
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
                        objc_enumerationMutation(pickers);
                      }

                      v27 = *(*(&v75 + 1) + 8 * v26);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v64 = v26;
                        v28 = modelCopy;
                        v29 = v27;
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v74 = 0u;
                        v65 = v29;
                        subpickers = [v29 subpickers];
                        v31 = [subpickers countByEnumeratingWithState:&v71 objects:v88 count:16];
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
                                objc_enumerationMutation(subpickers);
                              }

                              v35 = *(*(&v71 + 1) + 8 * j);
                              colorCategory = [v35 colorCategory];
                              v37 = [v35 destination] - 1;
                              v38 = [avatarCopy colorPresetForCategory:colorCategory colorIndex:v37];
                              v39 = AVTColorSettingKind(colorCategory, v37);
                              v41 = [self configurationColorPresetWithColorPreset:v38 settingKind:v39 coreModel:{v40, v28}];
                              [v8 addConfigurationColorPreset:v41];

                              avatarCopy = v66;
                            }

                            v32 = [subpickers countByEnumeratingWithState:&v71 objects:v88 count:16];
                          }

                          while (v32);
                        }

                        v69 = 0u;
                        v70 = 0u;
                        v67 = 0u;
                        v68 = 0u;
                        nestedPresetPickers = [v65 nestedPresetPickers];
                        allValues = [nestedPresetPickers allValues];

                        v44 = [allValues countByEnumeratingWithState:&v67 objects:v87 count:16];
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
                                objc_enumerationMutation(allValues);
                              }

                              v48 = [avatarCopy presetForCategory:{objc_msgSend(*(*(&v67 + 1) + 8 * k), "presetCategory")}];
                              v49 = AVTPresetSettingKind();
                              v51 = [self configurationPresetWithPreset:v48 settingKind:{v49, v50}];
                              [v8 addConfigurationPreset:v51];
                            }

                            v45 = [allValues countByEnumeratingWithState:&v67 objects:v87 count:16];
                          }

                          while (v45);
                        }

                        modelCopy = v28;
                        v25 = v61;
                        v24 = v62;
                        v26 = v64;
                      }

                      ++v26;
                    }

                    while (v26 != v24);
                    v24 = [pickers countByEnumeratingWithState:&v75 objects:v89 count:16];
                  }

                  while (v24);
                }
              }

              v11 = v60 + 1;
            }

            while (v60 + 1 != v59);
            v59 = [categories countByEnumeratingWithState:&v79 objects:v90 count:16];
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

+ (id)configurationForRecord:(id)record coreModel:(id)model
{
  v6 = MEMORY[0x1E698E328];
  modelCopy = model;
  v8 = [v6 memojiForRecord:record usageIntent:0];
  v9 = [self configurationFromAvatar:v8 coreModel:modelCopy];

  return v9;
}

- (AVTAvatarConfiguration)initWithPresets:(id)presets colorPresets:(id)colorPresets
{
  presetsCopy = presets;
  colorPresetsCopy = colorPresets;
  v14.receiver = self;
  v14.super_class = AVTAvatarConfiguration;
  v8 = [(AVTAvatarConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [presetsCopy mutableCopy];
    presetsStorage = v8->_presetsStorage;
    v8->_presetsStorage = v9;

    v11 = [colorPresetsCopy mutableCopy];
    colorPresetsStorage = v8->_colorPresetsStorage;
    v8->_colorPresetsStorage = v11;
  }

  return v8;
}

- (void)addPreset:(id)preset
{
  presetCopy = preset;
  v5 = [AVTConfigurationPreset alloc];
  preset = [presetCopy preset];
  [preset category];
  v6 = AVTPresetSettingKind();
  v8 = [(AVTConfigurationPreset *)v5 initWithPreset:presetCopy settingKind:v6, v7];

  [(AVTAvatarConfiguration *)self addConfigurationPreset:v8];
}

- (void)addConfigurationPreset:(id)preset
{
  presetCopy = preset;
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  settingKind = [presetCopy settingKind];
  v7 = [AVTAvatarConfiguration keyForSettingKind:settingKind, v6];
  [presetsStorage setObject:presetCopy forKey:v7];
}

- (void)addColorPreset:(id)preset
{
  presetCopy = preset;
  v5 = [AVTConfigurationPreset alloc];
  color = [presetCopy color];
  settingKind = [color settingKind];
  v8 = [(AVTConfigurationPreset *)v5 initWithPreset:presetCopy settingKind:settingKind, v7];

  [(AVTAvatarConfiguration *)self addConfigurationColorPreset:v8];
}

- (void)addConfigurationColorPreset:(id)preset
{
  presetCopy = preset;
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  settingKind = [presetCopy settingKind];
  v7 = [AVTAvatarConfiguration keyForSettingKind:settingKind, v6];
  [colorPresetsStorage setObject:presetCopy forKey:v7];
}

- (void)removePresetsForCategory:(int64_t)category
{
  v4 = AVTPresetSettingKind();
  v6 = v5;
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  [(AVTAvatarConfiguration *)self removePresetsForSettingKind:v4 storage:v6, presetsStorage];
}

- (void)removeColorPresetsForSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  [(AVTAvatarConfiguration *)self removePresetsForSettingKind:var0 storage:var1, colorPresetsStorage];
}

- (void)removePresetsForSettingKind:(id)kind storage:(id)storage
{
  var1 = kind.var1;
  var0 = kind.var0;
  v20 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AVTAvatarConfiguration_removePresetsForSettingKind_storage___block_invoke;
  v18[3] = &__block_descriptor_48_e49_B32__0__NSString_8__AVTConfigurationPreset_16_B24l;
  v18[4] = var0;
  v18[5] = var1;
  v7 = [storageCopy keysOfEntriesPassingTest:v18];
  var1 = [[AVTConfigurationPreset alloc] initWithDefaultPresetForSettingKind:var0, var1];
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

        [storageCopy setObject:var1 forKey:{*(*(&v14 + 1) + 8 * v13++), v14}];
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
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  v4 = [(AVTAvatarConfiguration *)self presetsForStorage:presetsStorage];

  return v4;
}

- (id)colorPresets
{
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v4 = [(AVTAvatarConfiguration *)self presetsForStorage:colorPresetsStorage];

  return v4;
}

- (id)presetsForStorage:(id)storage
{
  v19 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [storageCopy allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isDefaultPreset] & 1) == 0)
        {
          preset = [v10 preset];
          [array addObject:preset];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [array copy];

  return v12;
}

- (id)presetForCategory:(int64_t)category
{
  v4 = AVTPresetSettingKind();
  v6 = v5;
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  v8 = [(AVTAvatarConfiguration *)self presetForSettingKind:v4 storage:v6, presetsStorage];
  preset = [v8 preset];

  return preset;
}

- (id)colorPresetForSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v7 = [(AVTAvatarConfiguration *)self presetForSettingKind:var0 storage:var1, colorPresetsStorage];
  preset = [v7 preset];

  return preset;
}

- (id)presetForSettingKind:(id)kind storage:(id)storage
{
  var1 = kind.var1;
  var0 = kind.var0;
  storageCopy = storage;
  v7 = [objc_opt_class() keyForSettingKind:{var0, var1}];
  v8 = [storageCopy objectForKeyedSubscript:v7];

  return v8;
}

- (id)colorConfigurationPresets
{
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  allValues = [colorPresetsStorage allValues];

  return allValues;
}

- (id)presetConfigurationPresets
{
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  allValues = [presetsStorage allValues];

  return allValues;
}

- (id)configurationPresets
{
  array = [MEMORY[0x1E695DF70] array];
  presetConfigurationPresets = [(AVTAvatarConfiguration *)self presetConfigurationPresets];
  [array addObjectsFromArray:presetConfigurationPresets];

  colorConfigurationPresets = [(AVTAvatarConfiguration *)self colorConfigurationPresets];
  [array addObjectsFromArray:colorConfigurationPresets];

  v6 = [array copy];

  return v6;
}

- (id)configurationPresetForSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  if (kind.var0)
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

- (void)applyToAvatar:(id)avatar animated:(BOOL)animated
{
  avatarCopy = avatar;
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke;
  v13[3] = &unk_1E7F3C130;
  v8 = avatarCopy;
  v14 = v8;
  animatedCopy = animated;
  [presetsStorage enumerateKeysAndObjectsUsingBlock:v13];

  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AVTAvatarConfiguration_applyToAvatar_animated___block_invoke_2;
  v11[3] = &unk_1E7F3C158;
  v12 = v8;
  v10 = v8;
  [colorPresetsStorage enumerateKeysAndObjectsUsingBlock:v11];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v7 = [v4 initWithPresets:presetsStorage colorPresets:colorPresetsStorage];

  return v7;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTAvatarConfiguration;
  v3 = [(AVTAvatarConfiguration *)&v9 description];
  v4 = [v3 mutableCopy];

  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  [v4 appendFormat:@" presets: %@", presetsStorage];

  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  [v4 appendFormat:@" colorPresets: %@", colorPresetsStorage];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
      if (!presetsStorage)
      {
        presetsStorage2 = [(AVTAvatarConfiguration *)equalCopy presetsStorage];
        if (!presetsStorage2)
        {
LABEL_7:
          colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
          if (colorPresetsStorage || ([(AVTAvatarConfiguration *)equalCopy colorPresetsStorage], (presetsStorage2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            colorPresetsStorage2 = [(AVTAvatarConfiguration *)self colorPresetsStorage];
            colorPresetsStorage3 = [(AVTAvatarConfiguration *)equalCopy colorPresetsStorage];
            v13 = [colorPresetsStorage2 isEqual:colorPresetsStorage3];

            if (colorPresetsStorage)
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

      presetsStorage3 = [(AVTAvatarConfiguration *)self presetsStorage];
      presetsStorage4 = [(AVTAvatarConfiguration *)equalCopy presetsStorage];
      v9 = [presetsStorage3 isEqual:presetsStorage4];

      if (presetsStorage)
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
  presetsStorage = [(AVTAvatarConfiguration *)self presetsStorage];
  v4 = [presetsStorage hash];
  presetsStorage2 = [(AVTAvatarConfiguration *)self presetsStorage];
  *(&v6 + 1) = v4;
  *&v6 = [presetsStorage2 hash];
  colorPresetsStorage = [(AVTAvatarConfiguration *)self colorPresetsStorage];
  v8 = [colorPresetsStorage hash];

  return v8 ^ (v6 >> 32);
}

@end