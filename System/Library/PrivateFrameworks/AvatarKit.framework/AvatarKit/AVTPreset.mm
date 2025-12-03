@interface AVTPreset
+ (AVTPreset)presetWithCategory:(int64_t)category identifier:(id)identifier;
+ (id)availablePresetsForCategory:(int64_t)category;
+ (unint64_t)editableColorCountForCategory:(int64_t)category;
- (id)cache;
- (id)description;
- (id)newComponent;
- (void)enumerateAssetSpecificVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)enumeratePresetDependencies:(id)dependencies;
- (void)enumeratePresetSpecificPresetDependencies:(id)dependencies;
- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)enumerateVisibilityDependencies:(id)dependencies;
- (void)rebuildSpecializationSettings;
@end

@implementation AVTPreset

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = AVTPresetCategoryToString(self->_category);
  v6 = [v3 stringWithFormat:@"<%@ %p | category:%@ identifier:%@>", v4, self, v5, self->_identifier];

  return v6;
}

+ (id)availablePresetsForCategory:(int64_t)category
{
  if (AVTPresetLoadPresetsIfNeeded_onceToken != -1)
  {
    +[AVTPreset availablePresetsForCategory:];
  }

  v4 = gPresets[category];

  return v4;
}

+ (AVTPreset)presetWithCategory:(int64_t)category identifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [self availablePresetsForCategory:category];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)newComponent
{
  v3 = AVTPresetCategoryToComponentType(self->_category);
  if (![(NSArray *)self->_assets count]&& !self->_morphVariant && !self->_imageVariant && !self->_materialVariant)
  {
    return 0;
  }

  v4 = [AVTComponent alloc];
  assets = self->_assets;
  morphVariant = self->_morphVariant;
  imageVariant = self->_imageVariant;
  materialVariant = self->_materialVariant;
  *&v9 = self->_morphVariantIntensity;
  *&v10 = self->_bodyPoseVariantIntensity;
  *&v11 = self->_textureAssetPresence;

  return [(AVTComponent *)v4 initWithType:v3 assets:assets morphVariant:morphVariant imageVariant:imageVariant materialVariant:materialVariant morphVariantIntensity:v9 bodyPoseVariantIntensity:v10 textureAssetPresence:v11];
}

- (void)enumeratePresetDependencies:(id)dependencies
{
  v18 = *MEMORY[0x1E69E9840];
  dependenciesCopy = dependencies;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_dependencies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 && *(v10 + 24))
        {
          (*(dependenciesCopy + 2))(dependenciesCopy, *(v10 + 16), *(v10 + 24));
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)enumerateVisibilityDependencies:(id)dependencies
{
  v18 = *MEMORY[0x1E69E9840];
  dependenciesCopy = dependencies;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_dependencies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10 && *(v10 + 56))
        {
          (*(dependenciesCopy + 2))(dependenciesCopy, *(v10 + 16), *(v10 + 56));
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_dependencies;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        switch(kind)
        {
          case 2uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
          case 1uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
          case 0uLL:
            [(AVTPreset *)v12 enumerateVariantDependenciesOfKind:blockCopy block:?];
            break;
        }

        ++v11;
      }

      while (v9 != v11);
      v13 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)enumeratePresetSpecificPresetDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  presetSpecificPresetDependencies = self->_presetSpecificPresetDependencies;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke;
  v7[3] = &unk_1E7F482F8;
  v8 = dependenciesCopy;
  v6 = dependenciesCopy;
  [(NSDictionary *)presetSpecificPresetDependencies enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTPresetCategoryFromString(a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke_2;
  v7[3] = &unk_1E7F482D0;
  v9 = v6;
  v8 = *(a1 + 32);
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__AVTPreset_enumeratePresetSpecificPresetDependencies___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [AVTPreset presetWithCategory:v5 identifier:a3];
  v7 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateAssetSpecificVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  v26[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v26[0] = self->_assetSpecificMorphVariantDependencies;
  v26[1] = self->_assetSpecificImageVariantDependencies;
  v26[2] = self->_assetSpecificMaterialVariantDependencies;
  v7 = v26[kind];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke;
  v23[3] = &unk_1E7F482F8;
  v8 = blockCopy;
  v24 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_assets;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke_3;
        v17[3] = &unk_1E7F49748;
        v18 = v8;
        [v14 enumerateVariantDependenciesOfKind:kind block:v17];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  for (j = 2; j != -1; --j)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTComponentTypeFromString(a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AVTPreset_enumerateAssetSpecificVariantDependenciesOfKind_block___block_invoke_2;
  v7[3] = &unk_1E7F482D0;
  v8 = *(a1 + 32);
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

+ (unint64_t)editableColorCountForCategory:(int64_t)category
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [self availablePresetsForCategory:category];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        editableColorCount = [*(*(&v12 + 1) + 8 * i) editableColorCount];
        if (v6 <= editableColorCount)
        {
          v6 = editableColorCount;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_assets)
  {
    null = objc_alloc_init(AVTAssetResourceCache);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_assets;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(AVTAssetResourceCache *)null resourceForAsset:*(*(&v11 + 1) + 8 * v8), v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9 = *MEMORY[0x1E69E9840];
  return null;
}

- (void)rebuildSpecializationSettings
{
  v19 = *MEMORY[0x1E69E9840];
  specializationSettings = self->_specializationSettings;
  self->_specializationSettings = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_assets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = self->_specializationSettings;
        specializationSettings = [*(*(&v14 + 1) + 8 * v8) specializationSettings];
        v11 = AVTMergeSpecializationSettings(v9, specializationSettings);
        v12 = self->_specializationSettings;
        self->_specializationSettings = v11;

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)enumerateVariantDependenciesOfKind:(uint64_t)a3 block:.cold.1(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result)
  {
    if (*(result + 48))
    {
      v3 = *(result + 16);
      v4 = *(result + 48);
      v5 = OUTLINED_FUNCTION_0_8(result, a2, a3);
      return v6(v5);
    }
  }

  return result;
}

- (uint64_t)enumerateVariantDependenciesOfKind:(uint64_t)a3 block:.cold.2(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result)
  {
    if (*(result + 40))
    {
      v3 = *(result + 16);
      v4 = *(result + 40);
      v5 = OUTLINED_FUNCTION_0_8(result, a2, a3);
      return v6(v5);
    }
  }

  return result;
}

- (void)enumerateVariantDependenciesOfKind:(uint64_t)a1 block:(void *)(a2 .cold.3(uint64_t a1, void (**a2)(uint64_t, uint64_t, id, __n128), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      v8.n128_u32[0] = *(a1 + 8);
      (*a2)(a3, v6, v7, v8);
    }
  }
}

@end