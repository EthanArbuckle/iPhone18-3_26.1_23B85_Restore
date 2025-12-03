@interface AVTStickerSceneProp
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryWithTargetPath:(id)path;
- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler;
@end

@implementation AVTStickerSceneProp

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerSceneProp alloc];
  rootNode = [(AVTStickerSceneProp *)self rootNode];
  [(AVTStickerProp *)self scale];
  v17 = v6;
  [(AVTStickerProp *)self position];
  v16 = v7;
  [(AVTStickerProp *)self rotation];
  v15 = v8;
  renderLast = [(AVTStickerProp *)self renderLast];
  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  adjustments = [(AVTStickerProp *)self adjustments];
  v13 = [(AVTStickerSceneProp *)v4 initWithRootNode:rootNode scale:renderLast position:palettesDescriptions rotation:shaderModifiers renderLast:adjustments palettesDescriptions:v17 modifiers:v16 adjustments:v15];

  return v13;
}

- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  handlerCopy = handler;
  node = [(AVTStickerProp *)self node];

  if (!node)
  {
    rootNode = [(AVTStickerSceneProp *)self rootNode];
    [(AVTStickerProp *)self setNode:rootNode];
  }

  node2 = [(AVTStickerProp *)self node];
  v17 = AVTCloneNodesAndMaterials(node2);

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
    v37 = cameraCopy;
    v19 = avatarCopy;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    adjustments = [(AVTStickerProp *)self adjustments];
    v21 = [adjustments countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(adjustments);
          }

          [*(*(&v43 + 1) + 8 * v24++) applyAdjustmentIfNeededToNode:v17 forMemoji:v19 ignoreScaleZ:{0, v37}];
        }

        while (v22 != v24);
        v22 = [adjustments countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v22);
    }

    [v19 updateMorphVariantsInStickerPropNodeHierarchy:v17];
    cameraCopy = v37;
  }

  neckNode = [avatarCopy neckNode];
  [neckNode worldPosition];
  v38 = v26;
  [cameraCopy worldPosition];
  v28 = vsubq_f32(v38, v27);
  v29 = vmulq_f32(v28, v28);
  [(AVTStickerProp *)self applyCamera:cameraCopy toNode:v17 distToHead:sqrtf(v29.f32[2] + vaddv_f32(*v29.f32))];

  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:avatarCopy toNode:v17 palettesDescriptions:palettesDescriptions];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  v32 = [shaderModifiers countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          objc_enumerationMutation(shaderModifiers);
        }

        [*(*(&v39 + 1) + 8 * v35++) applyToMatchedMaterialsOfAvatar:avatarCopy inHierarchy:v17 options:optionsCopy reversionContext:0];
      }

      while (v33 != v35);
      v33 = [shaderModifiers countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v33);
  }

  handlerCopy[2](handlerCopy, v17);
  v36 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)path
{
  v8.receiver = self;
  v8.super_class = AVTStickerSceneProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:path];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:@"orientToCamera"];
  originalName = [(AVTStickerProp *)self originalName];
  [v5 setObject:originalName forKeyedSubscript:@"scene"];

  return v5;
}

@end