@interface AVTStickerShaderModifier
+ (id)encapsulateShaderData:(id)a3;
+ (id)entryPointForModifierName:(id)a3;
+ (id)shaderModifierCache;
+ (id)shaderModifierFromDictionary:(id)a3 assetsPath:(id)a4;
- (AVTStickerShaderModifier)initWithEntryPoint:(id)a3 nodeNames:(id)a4 data:(id)a5 properties:(id)a6 forceDoubleSided:(BOOL)a7;
- (id)cloneWithProperties:(id)a3;
- (id)description;
- (id)dictionaryWithTargetPath:(id)a3;
- (void)applyToAllMaterialsOfNode:(id)a3 options:(id)a4 reversionContext:(id)a5;
- (void)applyToMatchedMaterialsOfAvatar:(id)a3 inHierarchy:(id)a4 options:(id)a5 reversionContext:(id)a6;
- (void)applyToMaterial:(id)a3 options:(id)a4 reversionContext:(id)a5;
@end

@implementation AVTStickerShaderModifier

+ (id)shaderModifierCache
{
  if (shaderModifierCache_onceToken != -1)
  {
    +[AVTStickerShaderModifier shaderModifierCache];
  }

  v3 = shaderModifierCache_kCache;

  return v3;
}

uint64_t __47__AVTStickerShaderModifier_shaderModifierCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = shaderModifierCache_kCache;
  shaderModifierCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shaderModifierFromDictionary:(id)a3 assetsPath:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"modifier"];
  v43 = [a1 entryPointForModifierName:v8];
  v9 = [v6 objectForKeyedSubscript:@"node"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"geometry"];
  }

  v12 = v11;

  v13 = v12;
  objc_opt_class();
  v45 = v13;
  if (objc_opt_isKindOfClass())
  {
    v45 = [v13 componentsJoinedByString:@"|"];
  }

  v14 = [v6 objectForKey:@"forceDoubleSided"];
  v42 = v14;
  if (v14)
  {
    v38 = [v14 BOOLValue];
  }

  else
  {
    v38 = 0;
  }

  v15 = [a1 shaderModifierCache];
  v16 = [v6 objectForKey:@"file"];
  v17 = [v7 stringByAppendingPathComponent:v16];
  v18 = MEMORY[0x1E696AEC0];
  v44 = v17;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  v20 = [v19 standardizedURL];
  v21 = [v20 absoluteString];
  v22 = [v18 stringWithFormat:@"%@.%@.%@", v21, v8, v45];

  v41 = v16;
  if (!v16)
  {
    v24 = 0;
    goto LABEL_28;
  }

  v23 = [v15 objectForKey:v22];
  if (v23)
  {
    v40 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v44 encoding:4 error:0];
    if (!v40)
    {
      v24 = 0;
      goto LABEL_28;
    }
  }

  v39 = v22;
  v36 = v13;
  v37 = v8;
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [v6 objectForKey:@"properties"];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [AVTStickerShaderModifierProperty shaderModifierPropertyFromDictionary:*(*(&v46 + 1) + 8 * i) assetsPath:v7];
        if (v31)
        {
          [v25 addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v28);
  }

  v32 = v23;
  if (v23)
  {
    v24 = v32;
    v13 = v36;
    v16 = v41;
    if ([v25 count])
    {
      v24 = [(AVTStickerShaderModifier *)v32 cloneWithProperties:v25];
    }
  }

  else
  {
    v13 = v36;
    v24 = [[AVTStickerShaderModifier alloc] initWithEntryPoint:v43 nodeNames:v36 data:v40 properties:v25 forceDoubleSided:v38];
    [(AVTStickerShaderModifier *)v24 setDictionary:v6];
    [v15 setObject:v24 forKey:v39];
    v16 = v41;
  }

  v33 = [v16 lastPathComponent];
  v24->_isCropShaderModifier = [v33 isEqualToString:@"crop_at_worldPosY.metal"];

  v8 = v37;
  v22 = v39;
LABEL_28:

  v34 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)entryPointForModifierName:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"fragment"];
  v5 = MEMORY[0x1E69DF3B0];
  if ((v4 & 1) == 0)
  {
    if ([v3 isEqualToString:@"surface"])
    {
      v5 = MEMORY[0x1E69DF3C0];
    }

    else if ([v3 isEqualToString:@"vertex"])
    {
      v5 = MEMORY[0x1E69DF3C8];
    }

    else if ([v3 isEqualToString:@"lightingModel"])
    {
      v5 = MEMORY[0x1E69DF3B8];
    }
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

+ (id)encapsulateShaderData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (([v3 containsString:@"// ==== STICKER SHADER MODIFIER START ===="] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@\n%@\n", @"// ==== STICKER SHADER MODIFIER START ====", v3, @"// ==== STICKER SHADER MODIFIER END ===="];
  }

  return v4;
}

- (AVTStickerShaderModifier)initWithEntryPoint:(id)a3 nodeNames:(id)a4 data:(id)a5 properties:(id)a6 forceDoubleSided:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = AVTStickerShaderModifier;
  v17 = [(AVTStickerShaderModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entryPoint, a3);
    objc_storeStrong(&v18->_nodeNames, a4);
    objc_storeStrong(&v18->_data, a5);
    objc_storeStrong(&v18->_properties, a6);
    v18->_forceDoubleSided = a7;
  }

  return v18;
}

- (id)cloneWithProperties:(id)a3
{
  v4 = a3;
  v5 = [AVTStickerShaderModifier alloc];
  v6 = [(AVTStickerShaderModifier *)self entryPoint];
  v7 = [(AVTStickerShaderModifier *)self nodeNames];
  v8 = [(AVTStickerShaderModifier *)self data];
  v9 = [(AVTStickerShaderModifier *)v5 initWithEntryPoint:v6 nodeNames:v7 data:v8 properties:v4 forceDoubleSided:[(AVTStickerShaderModifier *)self forceDoubleSided]];

  return v9;
}

- (void)applyToMaterial:(id)a3 options:(id)a4 reversionContext:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_isCropShaderModifier || [v9 useLegacyCorrectClippingImplementation])
  {
    v11 = [v8 shaderModifiers];
    v12 = [v11 objectForKeyedSubscript:self->_entryPoint];
    if (([v12 containsString:self->_data] & 1) == 0)
    {
      v13 = AVTMergeShaderModifiersForEntryPoint(v12, 0, self->_data, 0);
      if (v13)
      {
        [v10 saveShaderModifiers:v11 forMaterial:v8];
        if ([v11 count])
        {
          v14 = [v11 mutableCopy];
          [v14 setObject:v13 forKeyedSubscript:self->_entryPoint];
        }

        else
        {
          entryPoint = self->_entryPoint;
          v32[0] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&entryPoint count:1];
        }

        [v8 setShaderModifiers:v14];
      }
    }

    v25 = v9;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [(AVTStickerShaderModifier *)self properties];
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 name];
          [v10 saveCustomMaterialPropertyNamed:v21 forMaterial:v8];
          v22 = [v20 effectiveValue];
          [v8 setValue:v22 forKey:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    if (-[AVTStickerShaderModifier forceDoubleSided](self, "forceDoubleSided") && ([v8 isDoubleSided] & 1) == 0)
    {
      [v10 saveSingleSidedForMaterial:v8];
      [v8 setDoubleSided:1];
    }

    v9 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)applyToAllMaterialsOfNode:(id)a3 options:(id)a4 reversionContext:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a3 model];
  v11 = [v10 materials];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AVTStickerShaderModifier *)self applyToMaterial:*(*(&v17 + 1) + 8 * v15++) options:v8 reversionContext:v9];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)applyToMatchedMaterialsOfAvatar:(id)a3 inHierarchy:(id)a4 options:(id)a5 reversionContext:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [a3 nodesMatchingStickerPattern:self->_nodeNames inHierarchy:a4 options:2 includingDerivedNodes:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AVTStickerShaderModifier *)self applyToAllMaterialsOfNode:*(*(&v18 + 1) + 8 * v16++) options:v10 reversionContext:v11];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)a3
{
  v3 = [(AVTStickerShaderModifier *)self dictionary];
  v4 = [v3 mutableCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AVTStickerShaderModifier *)self nodeNames];
  v6 = [(AVTStickerShaderModifier *)self entryPoint];
  v7 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, v5, v6];

  return v7;
}

@end