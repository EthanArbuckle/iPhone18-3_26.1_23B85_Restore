@interface AVTStickerImageProp
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryWithTargetPath:(id)a3;
- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation AVTStickerImageProp

- (id)copyWithZone:(_NSZone *)a3
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
  v12 = [(AVTStickerProp *)self renderLast];
  v13 = [(AVTStickerProp *)self orientToCamera];
  [(AVTStickerProp *)self rotation];
  v20 = v14;
  v15 = [(AVTStickerProp *)self palettesDescriptions];
  v16 = [(AVTStickerProp *)self shaderModifiers];
  v17 = [(AVTStickerProp *)self adjustments];
  v18 = [(AVTStickerImageProp *)v4 initWithImageAtPath:imagePath size:v12 scale:v13 position:v15 renderLast:v16 orientToCamera:v17 rotation:v7 palettesDescriptions:v9 modifiers:v22 adjustments:v21, v20];

  return v18;
}

- (void)buildNodeForAvatar:(id)a3 withCamera:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AVTStickerProp *)self node];

  v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  if (!v14)
  {
    v16 = MEMORY[0x1E69DF338];
    [(AVTStickerProp *)self size];
    v18 = v17;
    [(AVTStickerProp *)self size];
    *&v19 = v19;
    *&v20 = v18;
    v21 = [v16 planeWithWidth:v20 height:v19];
    v22 = [v21 firstMaterial];
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
    v27 = [(AVTStickerProp *)self palettesDescriptions];
    if (!v27)
    {
      goto LABEL_5;
    }

    v28 = v27;
    [(AVTStickerProp *)self palettesDescriptions];
    v65 = v22;
    v29 = v10;
    v30 = v21;
    v31 = v13;
    v33 = v32 = v11;
    v34 = [v33 count];

    v11 = v32;
    v13 = v31;
    v21 = v30;
    v10 = v29;
    v22 = v65;

    if (v34)
    {
      imagePath = self->_imagePath;
      v36 = [v65 emission];
    }

    else
    {
LABEL_5:
      imagePath = self->_imagePath;
      v36 = [v22 diffuse];
    }

    v37 = v36;
    [v36 setContents:imagePath];

    [v22 setShadingModel:2];
    [v22 setBlendMode:1];
    [v22 setWritesToDepthBuffer:0];
    [(AVTStickerProp *)self setNode:v23];

    v15 = &OBJC_IVAR___AVTARMaskRenderer__horizontalBlurPipelineState;
  }

  v38 = [(AVTStickerProp *)self node];
  v39 = AVTCloneNodesAndMaterials(v38);

  if (!*(&self->super.super.isa + v15[29]))
  {
    v40 = [v39 model];
    v41 = [v40 firstMaterial];

    v42 = [MEMORY[0x1E69DC888] blackColor];
    v43 = [v41 emission];
    [v43 setContents:v42];

    v44 = [MEMORY[0x1E69DC888] clearColor];
    v45 = [v41 diffuse];
    [v45 setContents:v44];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = v13;
    v46 = v11;
    v47 = v10;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v48 = [(AVTStickerProp *)self adjustments];
    v49 = [v48 countByEnumeratingWithState:&v71 objects:v76 count:16];
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
            objc_enumerationMutation(v48);
          }

          [*(*(&v71 + 1) + 8 * i) applyAdjustmentIfNeededToNode:v39 forMemoji:v47 ignoreScaleZ:{1, v65}];
        }

        v50 = [v48 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v50);
    }

    v11 = v46;
    v13 = v65;
  }

  v53 = [v10 neckNode];
  [v53 worldPosition];
  v66 = v54;
  [v11 worldPosition];
  v56 = vsubq_f32(v66, v55);
  v57 = vmulq_f32(v56, v56);
  [(AVTStickerProp *)self applyCamera:v11 toNode:v39 distToHead:sqrtf(v57.f32[2] + vaddv_f32(*v57.f32))];

  v58 = [(AVTStickerProp *)self palettesDescriptions];
  [AVTStickerProp applyPalettesForAvatar:v10 toNode:v39 palettesDescriptions:v58];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v59 = [(AVTStickerProp *)self shaderModifiers];
  v60 = [v59 countByEnumeratingWithState:&v67 objects:v75 count:16];
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
          objc_enumerationMutation(v59);
        }

        [*(*(&v67 + 1) + 8 * j) applyToAllMaterialsOfNode:v39 options:v12 reversionContext:0];
      }

      v61 = [v59 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v61);
  }

  (*(v13 + 2))(v13, v39);
  v64 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVTStickerImageProp;
  v4 = [(AVTStickerProp *)&v8 dictionaryWithTargetPath:a3];
  v5 = [v4 mutableCopy];

  v6 = [(AVTStickerProp *)self originalName];
  [v5 setObject:v6 forKeyedSubscript:@"image"];

  return v5;
}

@end