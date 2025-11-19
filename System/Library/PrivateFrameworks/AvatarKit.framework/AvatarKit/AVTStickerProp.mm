@interface AVTStickerProp
+ (BOOL)getOrientToCameraInDictionary:(id)a3;
+ (BOOL)getRenderLastInDictionary:(id)a3;
+ (CGSize)getSizeInDictionary:(id)a3;
+ (__n128)getPositionInDictionary:(void *)a3;
+ (__n128)getRotationInDictionary:(void *)a3;
+ (__n128)getScaleInDictionary:(void *)a3;
+ (float)getOpacityInDictionary:(id)a3;
+ (id)adjustmentFromDictionary:(id)a3 presetCategory:(id)a4;
+ (id)cacheKeyForSize:(CGSize)a3 position:(id)a4 rotation:(id)a5 scale:palettesDescriptions:filePath:;
+ (id)propFromDictionary:(id)a3 assetsPath:(id)a4;
+ (id)stickerPropCache;
+ (void)applyPalettesForAvatar:(id)a3 toNode:(id)a4 palettesDescriptions:(id)a5;
- (AVTStickerProp)initWithSize:(CGSize)a3 scale:(BOOL)a4 position:(BOOL)a5 renderLast:(id)a6 orientToCamera:(id)a7 rotation:(id)a8 palettesDescriptions:shaderModifiers:adjustments:;
- (CGSize)size;
- (NSString)displayName;
- (NSString)identifier;
- (NSString)nodeName;
- (id)cloneWithShaderModifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryWithTargetPath:(id)a3;
- (void)applyCamera:(id)a3 toNode:(id)a4 distToHead:(double)a5;
- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)setNode:(id)a3;
@end

@implementation AVTStickerProp

+ (id)stickerPropCache
{
  if (stickerPropCache_onceToken != -1)
  {
    +[AVTStickerProp stickerPropCache];
  }

  v3 = stickerPropCache_kCache;

  return v3;
}

uint64_t __34__AVTStickerProp_stickerPropCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = stickerPropCache_kCache;
  stickerPropCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)cacheKeyForSize:(CGSize)a3 position:(id)a4 rotation:(id)a5 scale:palettesDescriptions:filePath:
{
  v21 = v6;
  v22 = v7;
  v20 = v5;
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = [a4 componentsJoinedByString:{@", "}];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];

  v14 = [v13 standardizedURL];
  v15 = [v14 absoluteString];

  v16 = MEMORY[0x1E696AEC0];
  v24.width = width;
  v24.height = height;
  v17 = NSStringFromCGSize(v24);
  v18 = [v16 stringWithFormat:@"%@.%@.%f%f%f.%f%f%f.%f%f%f.%@", v15, v17, *&v20, *(&v20 + 1), *(&v20 + 2), *&v21, *(&v21 + 1), *(&v21 + 2), *&v22, *(&v22 + 1), *(&v22 + 2), v12];

  return v18;
}

+ (BOOL)getOrientToCameraInDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"orientToCamera"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)getRenderLastInDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"renderLast"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (CGSize)getSizeInDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"size"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"width"];
    [v5 floatValue];
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:@"height"];
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v7;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (__n128)getPositionInDictionary:(void *)a3
{
  v3 = [a3 objectForKey:@"position"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:@"x"];
      [v4 floatValue];
      v15 = v5;
      v6 = [v3 objectForKeyedSubscript:@"y"];
      [v6 floatValue];
      v14 = v7;
      v8 = [v3 objectForKeyedSubscript:@"z"];
      [v8 floatValue];
      v9 = v15;
      DWORD1(v9) = v14;
      DWORD2(v9) = v10;
      v16 = v9;
    }

    else
    {
      [v3 floatValue];
      *&v11 = 0;
      *(&v11 + 1) = v12;
      v16 = v11;
    }
  }

  else
  {
    v16 = 0u;
  }

  return v16;
}

+ (__n128)getRotationInDictionary:(void *)a3
{
  v3 = [a3 objectForKey:@"rotation"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:@"x"];
      [v4 floatValue];
      v15 = v5;
      v6 = [v3 objectForKeyedSubscript:@"y"];
      [v6 floatValue];
      v14 = v7;
      v8 = [v3 objectForKeyedSubscript:@"z"];
      [v8 floatValue];
      v9 = v15;
      DWORD1(v9) = v14;
      DWORD2(v9) = v10;
      v16 = v9;
    }

    else
    {
      [v3 floatValue];
      *&v11 = 0;
      *(&v11 + 1) = v12;
      v16 = v11;
    }
  }

  else
  {
    v16 = 0u;
  }

  return v16;
}

+ (__n128)getScaleInDictionary:(void *)a3
{
  v3 = [a3 objectForKey:@"scale"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKeyedSubscript:@"x"];
      [v4 floatValue];
      v23 = v5;
      v6 = [v3 objectForKeyedSubscript:@"y"];
      [v6 floatValue];
      v21 = v7;
      v8 = [v3 objectForKeyedSubscript:@"z"];
      [v8 floatValue];
      v9 = v23;
      DWORD1(v9) = v21;
      DWORD2(v9) = v10;
      v24 = v9;
    }

    else
    {
      [v3 floatValue];
      v25 = v16;
      [v3 floatValue];
      v22 = v17;
      [v3 floatValue];
      v18 = v25;
      DWORD1(v18) = v22;
      DWORD2(v18) = v19;
      v24 = v18;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    v24 = _Q0;
  }

  return v24;
}

+ (id)adjustmentFromDictionary:(id)a3 presetCategory:(id)a4
{
  v6 = a3;
  v7 = AVTPresetCategoryFromString(a4);
  [a1 getPositionInDictionary:v6];
  v16 = v8;
  [a1 getRotationInDictionary:v6];
  v15 = v9;
  [a1 getScaleInDictionary:v6];
  v14 = v10;
  v11 = [v6 objectForKey:@"value"];

  v12 = [[AVTStickerPropAdjustTransformProperty alloc] initWithPresetCategory:v7 presetValue:v11 position:v16 rotation:v15 scale:v14];

  return v12;
}

+ (float)getOpacityInDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"opacity"];
  v4 = 1.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 floatValue];
      v4 = v5;
    }
  }

  return v4;
}

+ (id)propFromDictionary:(id)a3 assetsPath:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [a1 getSizeInDictionary:v6];
  v9 = v8;
  v11 = v10;
  [a1 getPositionInDictionary:v6];
  v61 = v12;
  [a1 getRotationInDictionary:v6];
  v60 = v13;
  [a1 getScaleInDictionary:v6];
  v59 = v14;
  [a1 getOpacityInDictionary:v6];
  v16 = v15;
  v57 = [a1 getOrientToCameraInDictionary:v6];
  v58 = [a1 getRenderLastInDictionary:v6];
  v62 = [v6 objectForKey:@"palettes"];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [v6 objectForKey:@"adjustments"];
  v19 = 0x1E695D000uLL;
  objc_opt_class();
  v63 = v18;
  v68 = v7;
  v64 = v6;
  if (objc_opt_isKindOfClass())
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v20 = v18;
    v69 = [v20 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v69)
    {
      v21 = *v80;
      v65 = *v80;
      v67 = v20;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v80 != v21)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v79 + 1) + 8 * i);
          v24 = [v20 objectForKey:v23];
          v25 = *(v19 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [a1 adjustmentFromDictionary:v24 presetCategory:v23];
            [v17 addObject:v26];
          }

          else
          {
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v26 = v24;
            v27 = [v26 countByEnumeratingWithState:&v75 objects:v84 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v76;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v76 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [a1 adjustmentFromDictionary:*(*(&v75 + 1) + 8 * j) presetCategory:v23];
                  [v17 addObject:v31];
                }

                v28 = [v26 countByEnumeratingWithState:&v75 objects:v84 count:16];
              }

              while (v28);
              v20 = v67;
              v7 = v68;
              v19 = 0x1E695D000;
              v21 = v65;
            }

            else
            {
              v7 = v68;
            }
          }
        }

        v69 = [v20 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v69);
    }

    v6 = v64;
  }

  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [v6 objectForKey:@"shaders"];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v72;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v72 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [AVTStickerShaderModifier shaderModifierFromDictionary:*(*(&v71 + 1) + 8 * k) assetsPath:v7];
        if (v38)
        {
          [v32 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v35);
  }

  v70 = [a1 stickerPropCache];
  v39 = v64;
  v40 = [v64 objectForKey:@"image"];
  if (v40)
  {
    v41 = [v68 stringByAppendingPathComponent:v40];
    v42 = [v41 stringByStandardizingPath];

    v43 = v62;
    v44 = [objc_opt_class() cacheKeyForSize:v62 position:v42 rotation:v9 scale:v11 palettesDescriptions:v61 filePath:{v60, v59}];
    v45 = [v70 objectForKey:v44];
    if (v45)
    {
      v46 = v45;
      v47 = v40;
      if (v32)
      {
        v48 = [(AVTStickerProp *)v45 cloneWithShaderModifiers:v32];

        v46 = v48;
      }

      v40 = v47;
      v43 = v62;
    }

    else
    {
      v46 = [[AVTStickerImageProp alloc] initWithImageAtPath:v42 size:v58 scale:v57 position:v62 renderLast:v32 orientToCamera:v17 rotation:v9 palettesDescriptions:v11 modifiers:v59 adjustments:v61, v60];
      [(AVTStickerProp *)v46 setOriginalName:v40];
      [(AVTStickerProp *)v46 setOpacity:v16];
      [v70 setObject:v46 forKey:v44];
    }

    goto LABEL_48;
  }

  v42 = [v64 objectForKey:@"scene"];
  v43 = v62;
  if (!v42)
  {
    v46 = 0;
    goto LABEL_49;
  }

  v49 = [v68 stringByAppendingPathComponent:v42];
  v44 = [v49 stringByStandardizingPath];

  v50 = [objc_opt_class() cacheKeyForSize:v62 position:v44 rotation:v9 scale:v11 palettesDescriptions:v61 filePath:{v60, v59}];
  v51 = [v70 objectForKey:v50];
  if (!v51)
  {
    v66 = [MEMORY[0x1E695DFF8] fileURLWithPath:v44 isDirectory:0];
    v53 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v46 = 0;
    if (v46)
    {
      v54 = avt_default_log();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [(AVTStickerProp *)v44 propFromDictionary:v46 assetsPath:v54];
      }

      v43 = v62;
    }

    v52 = [[AVTStickerSceneProp alloc] initWithRootNode:v53 scale:v58 position:v43 rotation:v32 renderLast:v17 palettesDescriptions:v59 modifiers:v61 adjustments:v60];
    [(AVTStickerProp *)v52 setOriginalName:v42];
    [(AVTStickerProp *)v52 setOpacity:v16];
    [v70 setObject:v52 forKey:v50];

    goto LABEL_46;
  }

  v46 = v51;
  if (v32)
  {
    v52 = [(AVTStickerProp *)v51 cloneWithShaderModifiers:v32];
LABEL_46:

    v46 = v52;
    v39 = v64;
    v43 = v62;
  }

LABEL_48:
LABEL_49:

  v55 = *MEMORY[0x1E69E9840];

  return v46;
}

+ (void)applyPalettesForAvatar:(id)a3 toNode:(id)a4 palettesDescriptions:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v27 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v7;
    v26 = v7;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [v13 objectForKey:{@"material", v23}];
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __69__AVTStickerProp_applyPalettesForAvatar_toNode_palettesDescriptions___block_invoke;
          v30[3] = &unk_1E7F47EA0;
          v31 = v14;
          v32 = v15;
          v16 = v15;
          v17 = v14;
          [v27 enumerateHierarchyUsingBlock:v30];
          v18 = [v13 objectForKey:@"palette"];
          v19 = [v26 colorPresetForCategory:AVTColorCategoryFromString(v18)];
          v20 = [v19 makeMaterial];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __69__AVTStickerProp_applyPalettesForAvatar_toNode_palettesDescriptions___block_invoke_2;
          v28[3] = &unk_1E7F48CC8;
          v29 = v20;
          v21 = v20;
          [v16 enumerateObjectsUsingBlock:v28];
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    v8 = v23;
    v7 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __69__AVTStickerProp_applyPalettesForAvatar_toNode_palettesDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [a2 model];
    v4 = [v3 materials];

    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:*(a1 + 32)];

          if (v11)
          {
            [*(a1 + 40) addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *(a1 + 40);
    v16 = [a2 model];
    v14 = [v16 firstMaterial];
    [v13 addObject:v14];

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (AVTStickerProp)initWithSize:(CGSize)a3 scale:(BOOL)a4 position:(BOOL)a5 renderLast:(id)a6 orientToCamera:(id)a7 rotation:(id)a8 palettesDescriptions:shaderModifiers:adjustments:
{
  v28 = v9;
  v29 = v10;
  v27 = v8;
  height = a3.height;
  width = a3.width;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v30.receiver = self;
  v30.super_class = AVTStickerProp;
  v22 = [(AVTStickerProp *)&v30 init];
  v23 = v22;
  if (v22)
  {
    v22->_size.width = width;
    v22->_size.height = height;
    *v22->_position = v28;
    *v22->_scale = v27;
    v22->_opacity = 1.0;
    v22->_renderLast = a4;
    v22->_orientToCamera = a5;
    *v22->_rotation = v29;
    objc_storeStrong(&v22->_palettesDescriptions, a6);
    v24 = [v20 copy];
    shaderModifiers = v23->_shaderModifiers;
    v23->_shaderModifiers = v24;

    objc_storeStrong(&v23->_adjustments, a8);
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTStickerProp alloc];
  [(AVTStickerProp *)self size];
  v6 = v5;
  v8 = v7;
  [(AVTStickerProp *)self scale];
  v21 = v9;
  [(AVTStickerProp *)self position];
  v20 = v10;
  v11 = [(AVTStickerProp *)self renderLast];
  v12 = [(AVTStickerProp *)self orientToCamera];
  [(AVTStickerProp *)self rotation];
  v19 = v13;
  v14 = [(AVTStickerProp *)self palettesDescriptions];
  v15 = [(AVTStickerProp *)self shaderModifiers];
  v16 = [(AVTStickerProp *)self adjustments];
  v17 = [(AVTStickerProp *)v4 initWithSize:v11 scale:v12 position:v14 renderLast:v15 orientToCamera:v16 rotation:v6 palettesDescriptions:v8 shaderModifiers:v21 adjustments:v20, v19];

  return v17;
}

- (id)cloneWithShaderModifiers:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerProp *)self copy];
  v6 = [(AVTStickerProp *)self node];
  [v5 setNode:v6];

  [v5 setShaderModifiers:v4];

  return v5;
}

- (void)setNode:(id)a3
{
  v5 = a3;
  if (self->_node != v5)
  {
    v8 = v5;
    v6 = [(AVTStickerProp *)self nodeName];
    [(VFXNode *)v8 setName:v6];

    if ([(AVTStickerProp *)self renderLast])
    {
      v7 = 100;
    }

    else
    {
      v7 = 0;
    }

    [(VFXNode *)v8 setRenderingOrder:v7];
    objc_storeStrong(&self->_node, a3);
    v5 = v8;
  }
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AVTStickerProp *)self originalName];
  v6 = [v3 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (NSString)nodeName
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AVTStickerProp hash](self, "hash")}];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)displayName
{
  v2 = [(AVTStickerProp *)self originalName];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  return v4;
}

- (void)applyCamera:(id)a3 toNode:(id)a4 distToHead:(double)a5
{
  v38 = a3;
  v8 = a4;
  v9 = [(AVTStickerProp *)self orientToCamera];
  if (v38 && v8 && v9)
  {
    [v8 position];
    [v8 setPosition:v10];
    [(AVTStickerProp *)self size];
    v11 = 1.0;
    if (v12 > 0.0)
    {
      [(AVTStickerProp *)self size];
      v14 = v13;
      [(AVTStickerProp *)self size];
      v11 = v14 / v15;
    }

    [(AVTStickerProp *)self position];
    v17 = (v16 - a5) * -2.0;
    v18 = [v38 camera];
    [v18 fieldOfView];
    v20 = v19 * 3.14159265 * 0.5 / 180.0;
    v21 = tanf(v20);

    v22 = [v8 model];
    v36 = v17 * v21;
    v23 = v11 * (v17 * v21);
    v35 = v23;
    *&v23 = v23;
    [v22 setWidth:v23];
    HIDWORD(v24) = HIDWORD(v36);
    *&v24 = v17 * v21;
    [v22 setHeight:v24];
    [v8 position];
    v34 = v25;
    [v8 position];
    v27.f64[0] = v35;
    v27.f64[1] = v17 * v21;
    v28 = vmulq_f64(v27, vcvtq_f64_f32(__PAIR64__(v26, v34)));
    __asm { FMOV            V1.2D, #0.5 }

    v37 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v28, _Q1)));
    [v8 position];
    [v8 setPosition:v37];
    [v8 transform];
    [v38 convertTransform:0 toNode:?];
    [v8 setTransform:?];
  }
}

- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = [(AVTStickerProp *)self node];
  v9 = AVTCloneNodesAndMaterials(v8);

  v7[2](v7, v9);
}

- (id)dictionaryWithTargetPath:(id)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [(AVTStickerProp *)self size];
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v48[0] = @"width";
    v9 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self size];
    *&v10 = v10;
    v11 = [v9 numberWithFloat:v10];
    v48[1] = @"height";
    v49[0] = v11;
    v12 = MEMORY[0x1E696AD98];
    [(AVTStickerProp *)self size];
    *&v14 = v13;
    v15 = [v12 numberWithFloat:v14];
    v49[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    [v5 setObject:v16 forKeyedSubscript:@"size"];
  }

  [(AVTStickerProp *)self position];
  v18 = vceqzq_f32(v17);
  v18.i32[3] = v18.i32[2];
  if ((vminvq_u32(v18) & 0x80000000) == 0)
  {
    [(AVTStickerProp *)self position];
    v20 = plistWithVector(v19);
    [v5 setObject:v20 forKeyedSubscript:@"position"];
  }

  if (![(AVTStickerProp *)self orientToCamera])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTStickerProp orientToCamera](self, "orientToCamera")}];
    [v5 setObject:v21 forKeyedSubscript:@"orientToCamera"];
  }

  [(AVTStickerProp *)self rotation];
  v23 = vceqzq_f32(v22);
  v23.i32[3] = v23.i32[2];
  if ((vminvq_u32(v23) & 0x80000000) == 0)
  {
    [(AVTStickerProp *)self rotation];
    v25 = plistWithVector(v24);
    [v5 setObject:v25 forKeyedSubscript:@"rotation"];
  }

  [(AVTStickerProp *)self scale];
  v27 = vceqq_f32(v26, xmmword_1BB4F05D0);
  v27.i32[3] = v27.i32[2];
  if ((vminvq_u32(v27) & 0x80000000) == 0)
  {
    [(AVTStickerProp *)self scale];
    v29 = plistWithVector(v28);
    [v5 setObject:v29 forKeyedSubscript:@"scale"];
  }

  [(AVTStickerProp *)self opacity];
  if (v30 != 1.0)
  {
    [(AVTStickerProp *)self opacity];
    v32 = numberFromDouble(v31);
    [v5 setObject:v32 forKeyedSubscript:@"opacity"];
  }

  if (![(AVTStickerProp *)self renderLast])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTStickerProp renderLast](self, "renderLast")}];
    [v5 setObject:v33 forKeyedSubscript:@"renderLast"];
  }

  if ([(NSArray *)self->_shaderModifiers count])
  {
    v34 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = self->_shaderModifiers;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v43 + 1) + 8 * i) dictionaryWithTargetPath:{v4, v43}];
          [v34 addObject:v40];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v37);
    }

    [v5 setObject:v34 forKeyedSubscript:@"shaders"];
  }

  if ([(NSArray *)self->_palettesDescriptions count])
  {
    [v5 setObject:self->_palettesDescriptions forKeyedSubscript:@"palettes"];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)propFromDictionary:(NSObject *)a3 assetsPath:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 description];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load sticker scene prop at %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end