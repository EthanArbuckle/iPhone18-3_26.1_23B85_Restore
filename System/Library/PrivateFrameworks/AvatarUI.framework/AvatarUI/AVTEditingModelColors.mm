@interface AVTEditingModelColors
+ (id)buildAllColors;
+ (void)createColorsForPaletteCategory:(int64_t)category inCache:(id)cache withDerivedPaletteCategories:(id)categories;
- (AVTEditingModelColors)init;
- (AVTEditingModelColors)initWithStorage:(id)storage variationStore:(id)store;
- (BOOL)colorHasDerivedColorDependency:(id)dependency;
- (id)colorForSettingKind:(id)kind identifier:(id)identifier;
- (id)colorsForSettingKind:(id)kind;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVTEditingModelColors

- (AVTEditingModelColors)init
{
  v3 = objc_alloc_init(AVTAvatarColorVariationStore);
  v4 = [(AVTEditingModelColors *)self initWithStorage:MEMORY[0x1E695E0F8] variationStore:v3];

  return v4;
}

- (AVTEditingModelColors)initWithStorage:(id)storage variationStore:(id)store
{
  storageCopy = storage;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = AVTEditingModelColors;
  v9 = [(AVTEditingModelColors *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    objc_storeStrong(&v10->_variationStore, store);
  }

  return v10;
}

- (id)colorForSettingKind:(id)kind identifier:(id)identifier
{
  var1 = kind.var1;
  var0 = kind.var0;
  identifierCopy = identifier;
  storage = [(AVTEditingModelColors *)self storage];
  v9 = AVTAvatarSettingKindIdentifier(var0, var1);
  v10 = [storage objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:identifierCopy];

  return v11;
}

- (id)colorsForSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  storage = [(AVTEditingModelColors *)self storage];
  v6 = AVTAvatarSettingKindIdentifier(var0, var1);
  v7 = [storage objectForKeyedSubscript:v6];
  allValues = [v7 allValues];
  v9 = [allValues sortedArrayUsingComparator:&__block_literal_global_32];
  v10 = [v9 copy];

  return v10;
}

uint64_t __46__AVTEditingModelColors_colorsForSettingKind___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "order")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 order];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTEditingModelColors alloc];
  storage = [(AVTEditingModelColors *)self storage];
  _avtui_deepCopy = [storage _avtui_deepCopy];
  variationStore = [(AVTEditingModelColors *)self variationStore];
  v8 = [(AVTEditingModelColors *)v4 initWithStorage:_avtui_deepCopy variationStore:variationStore];

  return v8;
}

+ (id)buildAllColors
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AVTMutableEditingModelColors);
  v4 = +[AVTEditingModelMappings paletteCategories];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self createColorsForPaletteCategory:objc_msgSend(*(*(&v11 + 1) + 8 * i) inCache:"integerValue") withDerivedPaletteCategories:{v3, v4}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(AVTMutableEditingModelColors *)v3 copy];

  return v9;
}

+ (void)createColorsForPaletteCategory:(int64_t)category inCache:(id)cache withDerivedPaletteCategories:(id)categories
{
  cacheCopy = cache;
  categoriesCopy = categories;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __93__AVTEditingModelColors_createColorsForPaletteCategory_inCache_withDerivedPaletteCategories___block_invoke;
  v20 = &unk_1E7F3D568;
  v10 = cacheCopy;
  v21 = v10;
  v11 = categoriesCopy;
  v22 = v11;
  selfCopy = self;
  categoryCopy = category;
  v12 = MEMORY[0x1BFB0DE80](&v17);
  for (i = 0; i != 3; ++i)
  {
    v14 = [MEMORY[0x1E698E2A8] colorPresetsForCategory:category colorIndex:{i, v17, v18, v19, v20}];
    v15 = AVTColorSettingKind(category, i);
    (v12)[2](v12, v14, v15, v16);
  }
}

void __93__AVTEditingModelColors_createColorsForPaletteCategory_inCache_withDerivedPaletteCategories___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = a2;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v54;
    v44 = *MEMORY[0x1E695D930];
    v46 = a1;
    v38 = *v54;
    v39 = a4;
    do
    {
      v11 = 0;
      v40 = v8;
      do
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * v11);
        v13 = a1[4];
        v14 = [v12 name];
        v15 = [v13 colorForSettingKind:a3 identifier:{a4, v14}];

        if (!v15)
        {
          v42 = v11;
          v43 = v9;
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v17 = a1[5];
          v18 = v12;
          v48 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v48)
          {
            v47 = *v50;
            v45 = v16;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v50 != v47)
                {
                  objc_enumerationMutation(v17);
                }

                v20 = *(*(&v49 + 1) + 8 * i);
                v21 = [v20 integerValue];
                v22 = [v18 derivedColorNameForPresetCategory:v21];
                if ([v22 length])
                {
                  v23 = [a1[4] colorForSettingKind:a3 identifier:{v21, v22}];

                  if (!v23)
                  {
                    [a1[6] createColorsForPaletteCategory:v21 inCache:a1[4] withDerivedPaletteCategories:a1[5]];
                  }

                  v24 = [a1[4] colorForSettingKind:a3 identifier:{v21, v22}];
                  if (!v24)
                  {
                    v25 = v17;
                    v26 = v18;
                    v27 = a3;
                    v28 = MEMORY[0x1E695DF30];
                    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
                    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v46[7]];
                    v31 = v28;
                    a3 = v27;
                    v18 = v26;
                    v17 = v25;
                    [v31 raise:v44 format:{@"Couldn't create the derived color for name %@ in palette category %@ parent category %@", v22, v29, v30}];

                    v16 = v45;
                    a1 = v46;
                  }

                  [v16 setObject:v24 forKeyedSubscript:v20];
                }
              }

              v48 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v48);
          }

          v32 = [AVTCoreModelColor alloc];
          v33 = v18;
          a4 = v39;
          v34 = [(AVTCoreModelColor *)v32 initWithColorPreset:v33 settingKind:a3 order:v39 derivedColorsByCategories:v43, v16];
          v35 = v16;
          v36 = v46[4];
          v37 = [(AVTCoreModelColor *)v34 identifier];
          [v36 setColor:v34 forSettingKind:a3 identifier:{v39, v37}];

          v9 = v43 + 1;
          a1 = v46;
          v10 = v38;
          v8 = v40;
          v11 = v42;
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v8);
  }
}

- (BOOL)colorHasDerivedColorDependency:(id)dependency
{
  v58 = *MEMORY[0x1E69E9840];
  dependencyCopy = dependency;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  storage = [(AVTEditingModelColors *)self storage];
  allKeys = [storage allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v7)
  {
    v8 = *v52;
    v39 = allKeys;
    selfCopy = self;
    v34 = *v52;
    do
    {
      v9 = 0;
      v35 = v7;
      do
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v40 = v9;
        v10 = *(*(&v51 + 1) + 8 * v9);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        storage2 = [(AVTEditingModelColors *)self storage];
        v12 = [storage2 objectForKeyedSubscript:v10];
        allKeys2 = [v12 allKeys];

        v41 = [allKeys2 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v41)
        {
          v14 = *v48;
          v37 = *v48;
          v38 = v10;
          v42 = allKeys2;
          do
          {
            v15 = 0;
            do
            {
              if (*v48 != v14)
              {
                objc_enumerationMutation(allKeys2);
              }

              v16 = *(*(&v47 + 1) + 8 * v15);
              storage3 = [(AVTEditingModelColors *)self storage];
              v18 = [storage3 objectForKeyedSubscript:v10];
              v19 = [v18 objectForKeyedSubscript:v16];

              v20 = objc_autoreleasePoolPush();
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              derivedColorsByCategories = [v19 derivedColorsByCategories];
              allValues = [derivedColorsByCategories allValues];

              v23 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v44;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v44 != v25)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v27 = *(*(&v43 + 1) + 8 * i);
                    [v27 settingKind];
                    v29 = v28;
                    [dependencyCopy settingKind];
                    if (v29 == v30)
                    {
                      settingKind = [v27 settingKind];
                      if (settingKind == [dependencyCopy settingKind])
                      {

                        objc_autoreleasePoolPop(v20);
                        v32 = 1;
                        allKeys = v39;
                        goto LABEL_27;
                      }
                    }
                  }

                  v24 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              objc_autoreleasePoolPop(v20);
              ++v15;
              allKeys2 = v42;
              self = selfCopy;
              v14 = v37;
              v10 = v38;
            }

            while (v15 != v41);
            allKeys = v39;
            v8 = v34;
            v41 = [v42 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v41);
        }

        v9 = v40 + 1;
      }

      while (v40 + 1 != v35);
      v7 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
      v32 = 0;
    }

    while (v7);
  }

  else
  {
    v32 = 0;
  }

LABEL_27:

  return v32;
}

@end