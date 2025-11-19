@interface AVTComponentInstance
- ($4B578F37DB41A5FD644731DB2D8E0587)uvRemappingInfo;
- (AVTComponentInstance)initWithComponent:(id)a3 assetResourceCache:(id)a4;
- (NSString)assetImage;
- (id)assetImageForAsset:(id)a3;
- (void)_initializeVariantSkinnerPairsIfNeeded;
- (void)setImageVariant:(id)a3;
- (void)setMaterialVariant:(id)a3;
- (void)setSkinnerVariantIntensity:(float)a3 skeleton:(id)a4;
- (void)setVisibilityRules:(id)a3 dictatedByCategory:(int64_t)a4;
- (void)updateMaterialsWithComponent:(id)a3;
@end

@implementation AVTComponentInstance

- ($4B578F37DB41A5FD644731DB2D8E0587)uvRemappingInfo
{
  v3 = v2;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_assets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 is2DAsset])
        {
          if (v9)
          {
            [v9 uvRemappingInfo];
          }

          else
          {
            *v3 = 0u;
            *(v3 + 16) = 0u;
          }

          goto LABEL_14;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  *v3 = 0;
  *(v3 + 8) = 1065353216;
  *(v3 + 16) = 0x3F80000000000000;
  *(v3 + 24) = 0;
LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (AVTComponentInstance)initWithComponent:(id)a3 assetResourceCache:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = AVTComponentInstance;
  v8 = [(AVTComponentInstance *)&v41 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v10 = [v6 assets];
  assets = v8->_assets;
  v8->_assets = v10;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v8->_assets;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = *v38;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      v18 = [v17 layers];
      layers = v8->_layers;
      v8->_layers = v18;

      if ([v17 is3DAsset])
      {
        v20 = [v7 resourceForAsset:v17];
        if (v20)
        {
          assetImage = v20;
          [v9 addObject:v20];
        }

        else
        {
          assetImage = avt_default_log();
          if (os_log_type_enabled(assetImage, OS_LOG_TYPE_ERROR))
          {
            [(AVTComponentInstance *)v43 initWithComponent:assetImage assetResourceCache:?];
          }
        }
      }

      else
      {
        if (![v17 is2DAsset])
        {
          continue;
        }

        v22 = [v7 resourceForAsset:v17];
        assetImage = v8->_assetImage;
        v8->_assetImage = v22;
      }
    }

    v14 = [(NSArray *)v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v14);
LABEL_17:

  if ([v9 count] == 1)
  {
    v23 = [v9 objectAtIndexedSubscript:0];
    goto LABEL_28;
  }

  v23 = [v9 count];
  if (v23)
  {
    v24 = [MEMORY[0x1E69DF330] node];
    assetNode = v8->_assetNode;
    v8->_assetNode = v24;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v9;
    v27 = [(VFXNode *)v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(VFXNode *)v8->_assetNode addChildNode:*(*(&v33 + 1) + 8 * j), v33];
        }

        v28 = [(VFXNode *)v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v28);
    }
  }

  else
  {
LABEL_28:
    v26 = v8->_assetNode;
    v8->_assetNode = v23;
  }

LABEL_30:
  v31 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)updateMaterialsWithComponent:(id)a3
{
  v4 = a3;
  assetNode = self->_assetNode;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke;
  v7[3] = &unk_1E7F47B10;
  v8 = v4;
  v6 = v4;
  [(VFXNode *)assetNode enumerateHierarchyUsingBlock:v7];
}

void __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = [a2 model];
  v3 = [v2 materials];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 hasPrefix:@"color"];

        if (v10)
        {
          v11 = [v8 name];
          v12 = [v11 rangeOfString:@"_variant_"];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL || (v12 = [v11 rangeOfString:@"_alias_"], v12 != 0x7FFFFFFFFFFFFFFFLL))
          {
            v13 = [v11 substringToIndex:v12];

            v11 = v13;
          }

          v14 = [v11 substringFromIndex:5];
          v15 = [v14 intValue];

          if (v15)
          {
            v16 = v15 - 1;
            v17 = [*(a1 + 32) materialAtIndex:v16];
            if (!v17)
            {
              v18 = avt_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v43, &v44, v18);
              }
            }

            [v17 applyToVFXMaterial:v8];
            v19 = [v8 customMaterialAttributeNames];
            v20 = v19;
            if (v15 != 1)
            {
              if ([v19 containsObject:@"primary_color"])
              {
                v21 = [*(a1 + 32) materialAtIndex:0];
                if (!v21)
                {
                  v22 = avt_default_log();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v41, &v42, v22);
                  }
                }

                v23 = [v21 baseColor];
                [v8 setValue:v23 forKey:@"primary_color"];
              }

              if (v16 == 1)
              {
                goto LABEL_43;
              }
            }

            if ([v20 containsObject:@"secondary_color"])
            {
              v24 = [*(a1 + 32) materialAtIndex:1];
              if (!v24)
              {
                v25 = avt_default_log();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v39, &v40, v25);
                }
              }

              v26 = [v24 baseColor];
              [v8 setValue:v26 forKey:@"secondary_color"];
            }

            if (v16 != 2)
            {
LABEL_43:
              if ([v20 containsObject:@"tertiary_color"])
              {
                v27 = [*(a1 + 32) materialAtIndex:2];
                if (!v27)
                {
                  v28 = avt_default_log();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(v37, &v38, v28);
                  }
                }

                v29 = [v27 baseColor];
                [v8 setValue:v29 forKey:@"tertiary_color"];
              }
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v5);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (NSString)assetImage
{
  assetImageVariant = self->_assetImageVariant;
  if (!assetImageVariant)
  {
    assetImageVariant = self->_assetImage;
  }

  return assetImageVariant;
}

- (void)setImageVariant:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(NSString *)self->_assetImage stringByDeletingLastPathComponent];
    v7 = [v6 stringByAppendingPathComponent:v5];
  }

  else
  {
    v7 = 0;
  }

  assetImageVariant = self->_assetImageVariant;
  self->_assetImageVariant = v7;
}

- (void)setMaterialVariant:(id)a3
{
  v5 = a3;
  if (self->_assetNode)
  {
    materialVariant = self->_materialVariant;
    if (v5 | materialVariant)
    {
      if (![(NSString *)materialVariant isEqualToString:v5])
      {
        objc_storeStrong(&self->_materialVariant, a3);
        assetNode = self->_assetNode;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __43__AVTComponentInstance_setMaterialVariant___block_invoke;
        v8[3] = &unk_1E7F47B10;
        v9 = v5;
        [(VFXNode *)assetNode enumerateHierarchyUsingBlock:v8];
      }
    }
  }
}

void __43__AVTComponentInstance_setMaterialVariant___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [a2 model];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 materials];
    if ([v5 count] != 1)
    {
      v22 = v4;
      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v21 = v5;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v28;
        v23 = a1;
        do
        {
          v11 = 0;
          do
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v27 + 1) + 8 * v11);
            v13 = [v12 name];
            v14 = [v13 componentsSeparatedByString:@"_variant_"];

            v15 = [v14 firstObject];
            if ([v14 count] >= 2 && (objc_msgSend(v14, "lastObject"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v17 = v16;
              if ([v16 isEqualToString:*(a1 + 32)])
              {
                [v24 insertObject:v12 atIndex:v9++];
                a1 = v23;
              }

              else
              {
                [v24 addObject:v12];
              }
            }

            else
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_variant_%@", v15, *(a1 + 32)];
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __43__AVTComponentInstance_setMaterialVariant___block_invoke_2;
              v25[3] = &unk_1E7F48B40;
              v26 = v18;
              v17 = v18;
              if ([v6 indexOfObjectPassingTest:v25] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v24 insertObject:v12 atIndex:v9++];
                a1 = v23;
              }

              else
              {
                [v24 addObject:v12];
              }
            }

            ++v11;
          }

          while (v8 != v11);
          v19 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
          v8 = v19;
        }

        while (v19);
      }

      v4 = v22;
      [v22 setMaterials:v24];

      v5 = v21;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AVTComponentInstance_setMaterialVariant___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_initializeVariantSkinnerPairsIfNeeded
{
  if (!self->_didInitializeVariantSkinnerPairs)
  {
    v3 = self->_variantSkinnerPairs;
    objc_sync_enter(v3);
    if (!self->_didInitializeVariantSkinnerPairs)
    {
      assetNode = self->_assetNode;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke;
      v5[3] = &unk_1E7F47B10;
      v5[4] = self;
      [(VFXNode *)assetNode enumerateHierarchyUsingBlock:v5];
      self->_didInitializeVariantSkinnerPairs = 1;
    }

    objc_sync_exit(v3);
  }
}

void __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForUndefinedKey:@"skinnerVariant"];
  if ([v4 count])
  {
    if (!*(*(a1 + 32) + 56))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:0];
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke_2;
    v10[3] = &unk_1E7F48B68;
    v8 = v3;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (void)setSkinnerVariantIntensity:(float)a3 skeleton:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_assetNode && self->_skinnerVariantIntensity != a3)
  {
    self->_skinnerVariantIntensity = a3;
    [(AVTComponentInstance *)self _initializeVariantSkinnerPairsIfNeeded];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_variantSkinnerPairs;
    v7 = [(NSMapTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = [(NSMapTable *)self->_variantSkinnerPairs objectForKey:v11];
          v14 = v12;
          v15 = MEMORY[0x1E69DF368];
          if (v12)
          {
            v16 = *(v12 + 8);
            v17 = v14[2];
          }

          else
          {
            v16 = 0;
            v17 = 0;
          }

          *&v13 = a3;
          v18 = [v15 avt_skinnerByInterpolatingFromSkinner:v16 toSkinner:v17 factor:v6 skeleton:v13];

          [v11 setSkinner:v18];
          ++v10;
        }

        while (v8 != v10);
        v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v8 = v19;
      }

      while (v19);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setVisibilityRules:(id)a3 dictatedByCategory:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_assetNode)
  {
    v14 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)self->_visibilityRules objectForKeyedSubscript:v8];
    if (v9 != v14)
    {
      AVTEvaluateNameMatchingRules(v9, self->_assetNode, &__block_literal_global_12);
      visibilityRules = self->_visibilityRules;
      v11 = v14;
      if (v14)
      {
        if (!visibilityRules)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
          v13 = self->_visibilityRules;
          self->_visibilityRules = v12;

          v11 = v14;
          visibilityRules = self->_visibilityRules;
        }

        [(NSMutableDictionary *)visibilityRules setObject:v11 forKeyedSubscript:v8];
        AVTEvaluateNameMatchingRules(v14, self->_assetNode, &__block_literal_global_62_0);
      }

      else
      {
        [(NSMutableDictionary *)visibilityRules removeObjectForKey:v8];
      }
    }

    v7 = v14;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)assetImageForAsset:(id)a3
{
  assets = self->_assets;
  v4 = a3;
  v5 = [(NSArray *)assets firstObject];
  v6 = [v5 assetImageForAsset:v4];

  return v6;
}

void __62__AVTComponentInstance__initializeVariantSkinnerPairsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 childNodeWithName:a2 recursively:1];
  if (!v7)
  {
    v8 = avt_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "nodeWithSkinnerVariant";
    }
  }

  v9 = [v7 skinner];
  if (!v9)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "originalSkinner";
    }
  }

  v11 = MEMORY[0x1E69DF368];
  v12 = [v9 baseMesh];
  v13 = [v6 bones];
  v14 = [v6 boneInverseBindTransforms];
  v15 = [v6 boneWeights];
  v16 = [v6 boneIndices];
  v17 = [v11 skinnerWithBaseMesh:v12 bones:v13 boneInverseBindTransforms:v14 boneWeights:v15 boneIndices:v16];

  [v6 baseMeshBindTransform];
  v26 = v19;
  v27 = v18;
  v24 = v21;
  v25 = v20;

  [v17 setBaseMeshBindTransform:{v27, v26, v25, v24}];
  v22 = objc_alloc_init(AVTSkinnerVariantPair);
  [(AVTSkinnerVariantPair *)v22 setOriginalSkinner:v9];
  [(AVTPhysicsRig *)v22 setRig:v17];
  [*(*(a1 + 40) + 56) setObject:v22 forKey:v7];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)initWithComponent:(NSObject *)a3 assetResourceCache:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "node";
}

void __53__AVTComponentInstance_updateMaterialsWithComponent___block_invoke_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "avtMaterial";
}

@end