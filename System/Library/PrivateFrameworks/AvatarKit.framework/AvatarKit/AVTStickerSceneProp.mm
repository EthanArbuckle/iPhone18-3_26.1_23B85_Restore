@interface AVTStickerSceneProp
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryWithTargetPath:(id)a3;
- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation AVTStickerSceneProp

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTStickerSceneProp alloc];
  v5 = [(AVTStickerSceneProp *)self rootNode];
  [(AVTStickerProp *)self scale];
  v17 = v6;
  [(AVTStickerProp *)self position];
  v16 = v7;
  [(AVTStickerProp *)self rotation];
  v15 = v8;
  v9 = [(AVTStickerProp *)self renderLast];
  v10 = [(AVTStickerProp *)self palettesDescriptions];
  v11 = [(AVTStickerProp *)self shaderModifiers];
  v12 = [(AVTStickerProp *)self adjustments];
  v13 = [(AVTStickerSceneProp *)v4 initWithRootNode:v5 scale:v9 position:v10 rotation:v11 renderLast:v12 palettesDescriptions:v17 modifiers:v16 adjustments:v15];

  return v13;
}

- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AVTStickerProp *)self node];

  if (!v14)
  {
    v15 = [(AVTStickerSceneProp *)self rootNode];
    [(AVTStickerProp *)self setNode:v15];
  }

  v16 = [(AVTStickerProp *)self node];
  v17 = AVTCloneNodesAndMaterials(v16);

  [(AVTStickerProp *)self position];
  [v17 setPosition:?];
  [(AVTStickerProp *)self rotation];
  [v17 setEulerAngles:?];
  [(AVTStickerProp *)self scale];
  [v17 setScale:?];
  [(AVTStickerProp *)self opacity];
  *&v18 = v18;
  [v17 setOpacity:v18];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v11;
    v19 = v10;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = [(AVTStickerProp *)self adjustments];
    v21 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        v24 = 0;
        do
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v43 + 1) + 8 * v24++) applyAdjustmentIfNeededToNode:v17 forMemoji:v19 ignoreScaleZ:{0, v37}];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v22);
    }

    [v19 updateMorphVariantsInStickerPropNodeHierarchy:v17];
    v11 = v37;
  }

  v25 = [v10 neckNode];
  [v25 worldPosition];
  v38 = v26;
  [v11 worldPosition];
  v28 = vsubq_f32(v38, v27);
  v29 = vmulq_f32(v28, v28);
  [(AVTStickerProp *)self applyCamera:v11 toNode:v17 distToHead:sqrtf(v29.f32[2] + vaddv_f32(*v29.f32))];

  v30 = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:v10 toNode:v17 palettesDescriptions:v30];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = [(AVTStickerProp *)self shaderModifiers];
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      v35 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v39 + 1) + 8 * v35++) applyToMatchedMaterialsOfAvatar:v10 inHierarchy:v17 options:v12 reversionContext:0];
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v33);
  }

  v13[2](v13, v17);
  v36 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVTStickerSceneProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:a3];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:@"orientToCamera"];
  v6 = [(AVTStickerProp *)self originalName];
  [v5 setObject:v6 forKeyedSubscript:@"scene"];

  return v5;
}

@end