@interface AVTStickerImageProp
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryWithTargetPath:(id)path;
- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler;
@end

@implementation AVTStickerImageProp

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTStickerImageProp alloc];
  imagePath = self->_imagePath;
  [(AVTStickerProp *)self size];
  v7 = v6;
  v9 = v8;
  [(AVTStickerProp *)self scale];
  v22 = v10;
  [(AVTStickerProp *)self position];
  v21 = v11;
  renderLast = [(AVTStickerProp *)self renderLast];
  orientToCamera = [(AVTStickerProp *)self orientToCamera];
  [(AVTStickerProp *)self rotation];
  v20 = v14;
  palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  adjustments = [(AVTStickerProp *)self adjustments];
  v18 = [(AVTStickerImageProp *)v4 initWithImageAtPath:imagePath size:renderLast scale:orientToCamera position:palettesDescriptions renderLast:shaderModifiers orientToCamera:adjustments rotation:v7 palettesDescriptions:v9 modifiers:v22 adjustments:v21, v20];

  return v18;
}

- (void)buildNodeForAvatar:(id)avatar withCamera:(id)camera options:(id)options completionHandler:(id)handler
{
  v77 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  handlerCopy = handler;
  node = [(AVTStickerProp *)self node];

  v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  if (!node)
  {
    v16 = MEMORY[0x1E69DF338];
    [(AVTStickerProp *)self size];
    v18 = v17;
    [(AVTStickerProp *)self size];
    *&v19 = v19;
    *&v20 = v18;
    v21 = [v16 planeWithWidth:v20 height:v19];
    firstMaterial = [v21 firstMaterial];
    v23 = [MEMORY[0x1E69DF330] nodeWithModel:v21];
    [(AVTStickerProp *)self position];
    [v23 setPosition:?];
    [(AVTStickerProp *)self rotation];
    [v23 setEulerAngles:?];
    [(AVTStickerProp *)self scale];
    v65 = v24;
    [(AVTStickerProp *)self scale];
    [v23 setScale:{COERCE_DOUBLE(__PAIR64__(v25, v65))}];
    [v23 setCastsShadow:0];
    [(AVTStickerProp *)self opacity];
    *&v26 = v26;
    [v23 setOpacity:v26];
    palettesDescriptions = [(AVTStickerProp *)self palettesDescriptions];
    if (!palettesDescriptions)
    {
      goto LABEL_5;
    }

    v28 = palettesDescriptions;
    [(AVTStickerProp *)self palettesDescriptions];
    v65 = firstMaterial;
    v29 = avatarCopy;
    v30 = v21;
    v31 = handlerCopy;
    v33 = v32 = cameraCopy;
    v34 = [v33 count];

    cameraCopy = v32;
    handlerCopy = v31;
    v21 = v30;
    avatarCopy = v29;
    firstMaterial = v65;

    if (v34)
    {
      imagePath = self->_imagePath;
      emission = [v65 emission];
    }

    else
    {
LABEL_5:
      imagePath = self->_imagePath;
      emission = [firstMaterial diffuse];
    }

    v37 = emission;
    [emission setContents:imagePath];

    [firstMaterial setShadingModel:2];
    [firstMaterial setBlendMode:1];
    [firstMaterial setWritesToDepthBuffer:0];
    [(AVTStickerProp *)self setNode:v23];

    v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  }

  node2 = [(AVTStickerProp *)self node];
  v39 = AVTCloneNodesAndMaterials(node2);

  if (!*(&self->super.super.isa + v15[29]))
  {
    model = [v39 model];
    firstMaterial2 = [model firstMaterial];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    emission2 = [firstMaterial2 emission];
    [emission2 setContents:blackColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    diffuse = [firstMaterial2 diffuse];
    [diffuse setContents:clearColor];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = handlerCopy;
    v46 = cameraCopy;
    v47 = avatarCopy;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    adjustments = [(AVTStickerProp *)self adjustments];
    v49 = [adjustments countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v72;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v72 != v51)
          {
            objc_enumerationMutation(adjustments);
          }

          [*(*(&v71 + 1) + 8 * i) applyAdjustmentIfNeededToNode:v39 forMemoji:v47 ignoreScaleZ:{1, v65}];
        }

        v50 = [adjustments countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v50);
    }

    cameraCopy = v46;
    handlerCopy = v65;
  }

  neckNode = [avatarCopy neckNode];
  [neckNode worldPosition];
  v66 = v54;
  [cameraCopy worldPosition];
  v56 = vsubq_f32(v66, v55);
  v57 = vmulq_f32(v56, v56);
  [(AVTStickerProp *)self applyCamera:cameraCopy toNode:v39 distToHead:sqrtf(v57.f32[2] + vaddv_f32(*v57.f32))];

  palettesDescriptions2 = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:avatarCopy toNode:v39 palettesDescriptions:palettesDescriptions2];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  shaderModifiers = [(AVTStickerProp *)self shaderModifiers];
  v60 = [shaderModifiers countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v68;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v68 != v62)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        [*(*(&v67 + 1) + 8 * j) applyToAllMaterialsOfNode:v39 options:optionsCopy reversionContext:0];
      }

      v61 = [shaderModifiers countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v61);
  }

  (*(handlerCopy + 2))(handlerCopy, v39);
  v64 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)path
{
  v8.receiver = self;
  v8.super_class = AVTStickerImageProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:path];
  v5 = [v4 mutableCopy];

  originalName = [(AVTStickerProp *)self originalName];
  [v5 setObject:originalName forKeyedSubscript:@"image"];

  return v5;
}

@end