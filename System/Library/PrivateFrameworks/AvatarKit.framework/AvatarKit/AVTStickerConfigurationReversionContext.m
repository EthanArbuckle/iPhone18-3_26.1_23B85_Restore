@interface AVTStickerConfigurationReversionContext
- (AVTStickerConfigurationReversionContext)init;
- (void)resetForAvatar:(id)a3;
- (void)revertChangesWithScope:(unint64_t)a3 animationDuration:(double)a4;
- (void)saveCustomMaterialPropertyNamed:(id)a3 forMaterial:(id)a4;
- (void)saveExtraCameraNode:(id)a3;
- (void)saveExtraPropsNode:(id)a3;
- (void)saveShaderModifiers:(id)a3 forMaterial:(id)a4;
@end

@implementation AVTStickerConfigurationReversionContext

- (AVTStickerConfigurationReversionContext)init
{
  v14.receiver = self;
  v14.super_class = AVTStickerConfigurationReversionContext;
  v2 = [(AVTStickerConfigurationReversionContext *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    presetOverrides = v2->_presetOverrides;
    v2->_presetOverrides = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    morpherOverrides = v2->_morpherOverrides;
    v2->_morpherOverrides = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    shaderModifiers = v2->_shaderModifiers;
    v2->_shaderModifiers = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    customMaterialProperties = v2->_customMaterialProperties;
    v2->_customMaterialProperties = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    singleSidedMaterials = v2->_singleSidedMaterials;
    v2->_singleSidedMaterials = v11;
  }

  return v2;
}

- (void)resetForAvatar:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_avatar, a3);
  if ([(NSMutableArray *)self->_presetOverrides count])
  {
    v6 = avt_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v6 resetForAvatar:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if ([(NSMutableArray *)self->_morpherOverrides count])
  {
    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v14 resetForAvatar:v15, v16, v17, v18, v19, v20, v21];
    }
  }

  if ([(NSMapTable *)self->_shaderModifiers count])
  {
    v22 = avt_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v22 resetForAvatar:v23, v24, v25, v26, v27, v28, v29];
    }
  }

  if ([(NSMapTable *)self->_customMaterialProperties count])
  {
    v30 = avt_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v30 resetForAvatar:v31, v32, v33, v34, v35, v36, v37];
    }
  }

  if ([(NSMutableArray *)self->_singleSidedMaterials count])
  {
    v38 = avt_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v38 resetForAvatar:v39, v40, v41, v42, v43, v44, v45];
    }
  }

  [(NSMutableArray *)self->_presetOverrides removeAllObjects];
  [(NSMutableArray *)self->_morpherOverrides removeAllObjects];
  [(NSMapTable *)self->_shaderModifiers removeAllObjects];
  [(NSMapTable *)self->_customMaterialProperties removeAllObjects];
  [(NSMutableArray *)self->_singleSidedMaterials removeAllObjects];
  if (self->_extraCameraNode)
  {
    v46 = avt_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v46 resetForAvatar:v47, v48, v49, v50, v51, v52, v53];
    }
  }

  if (self->_extraPropsNode)
  {
    v54 = avt_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v54 resetForAvatar:v55, v56, v57, v58, v59, v60, v61];
    }
  }

  extraCameraNode = self->_extraCameraNode;
  self->_extraCameraNode = 0;

  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = 0;

  showMemojiBody = self->_showMemojiBody;
  self->_showMemojiBody = 0;

  objc_storeWeak(&self->_environmentForPointOfViewUpdateFromFramingMode, 0);
}

- (void)saveShaderModifiers:(id)a3 forMaterial:(id)a4
{
  shaderModifiers = self->_shaderModifiers;
  if (a3)
  {
    v8 = a4;
    NSMapInsertIfAbsent(shaderModifiers, v8, a3);
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];
    v7 = a4;
    v8 = [v6 null];
    NSMapInsertIfAbsent(shaderModifiers, v7, v8);
  }
}

- (void)saveCustomMaterialPropertyNamed:(id)a3 forMaterial:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_customMaterialProperties objectForKey:v6];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    [(NSMapTable *)self->_customMaterialProperties setObject:v7 forKey:v6];
  }

  v8 = [v7 objectForKeyedSubscript:v11];

  if (!v8)
  {
    v9 = [v6 valueForKey:v11];
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v7 setObject:v10 forKeyedSubscript:v11];
    }
  }
}

- (void)saveExtraCameraNode:(id)a3
{
  v4 = a3;
  if (self->_extraCameraNode)
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v5 saveExtraCameraNode:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  extraCameraNode = self->_extraCameraNode;
  self->_extraCameraNode = v4;
}

- (void)saveExtraPropsNode:(id)a3
{
  v4 = a3;
  if (self->_extraPropsNode)
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v5 saveExtraPropsNode:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = v4;
}

- (void)revertChangesWithScope:(unint64_t)a3 animationDuration:(double)a4
{
  v79 = *MEMORY[0x1E69E9840];
  if (a4 > 0.0)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:a4];
    v7 = MEMORY[0x1E69DF378];
    v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v7 setAnimationTimingFunction:v8];
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_53;
    }

    WeakRetained = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);
      v11 = [v10 currentPointOfView];
      extraCameraNode = self->_extraCameraNode;

      if (v11 == extraCameraNode)
      {
        v13 = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);
        [v13 updatePointOfViewFromFramingMode];
      }

      objc_storeWeak(&self->_environmentForPointOfViewUpdateFromFramingMode, 0);
    }

    [(VFXNode *)self->_extraCameraNode removeFromParentNode];
    v14 = self->_extraCameraNode;
    self->_extraCameraNode = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = self->_morpherOverrides;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v71;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        avatar = self->_avatar;
        v22 = [(AVTAvatar *)avatar avatarNode];
        [v20 applyToAvatar:avatar inHierarchy:v22 reversionContext:0];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v17);
  }

  [(NSMutableArray *)self->_morpherOverrides removeAllObjects];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v23 = self->_presetOverrides;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v67;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v67 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v66 + 1) + 8 * j) applyToAvatar:self->_avatar reversionContext:0];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v25);
  }

  [(NSMutableArray *)self->_presetOverrides removeAllObjects];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = [(NSMapTable *)self->_shaderModifiers keyEnumerator];
  v29 = [v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v63;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v62 + 1) + 8 * k);
        v34 = [(NSMapTable *)self->_shaderModifiers objectForKey:v33];
        v35 = [MEMORY[0x1E695DFB0] null];
        v36 = [v34 isEqual:v35];

        if (v36)
        {

          v34 = 0;
        }

        [v33 setShaderModifiers:v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v30);
  }

  [(NSMapTable *)self->_shaderModifiers removeAllObjects];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v37 = [(NSMapTable *)self->_customMaterialProperties keyEnumerator];
  v38 = [v37 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v59;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v58 + 1) + 8 * m);
        v43 = [(NSMapTable *)self->_customMaterialProperties objectForKey:v42];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __84__AVTStickerConfigurationReversionContext_revertChangesWithScope_animationDuration___block_invoke;
        v57[3] = &unk_1E7F490D8;
        v57[4] = v42;
        [v43 enumerateKeysAndObjectsUsingBlock:v57];
      }

      v39 = [v37 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v39);
  }

  [(NSMapTable *)self->_customMaterialProperties removeAllObjects];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = self->_singleSidedMaterials;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v53 objects:v74 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v54;
    do
    {
      for (n = 0; n != v46; ++n)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [*(*(&v53 + 1) + 8 * n) setDoubleSided:{0, v53}];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v53 objects:v74 count:16];
    }

    while (v46);
  }

  [(NSMutableArray *)self->_singleSidedMaterials removeAllObjects];
  if (self->_showMemojiBody)
  {
    v49 = self->_avatar;
    if ([(NSNumber *)self->_showMemojiBody BOOLValue])
    {
      [(AVTAvatar *)v49 setShowsBody:1];
    }

    else
    {
      [(AVTAvatar *)v49 setShowsBody:0];
      [(AVTAvatar *)v49 setBodyPose:0];
    }

    showMemojiBody = self->_showMemojiBody;
    self->_showMemojiBody = 0;

    [(AVTAvatar *)v49 updateWithOptions:0];
  }

  [(VFXNode *)self->_extraPropsNode removeFromParentNode];
  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = 0;

LABEL_53:
  if (a4 > 0.0)
  {
    [MEMORY[0x1E69DF378] commit];
  }

  v52 = *MEMORY[0x1E69E9840];
}

void __84__AVTStickerConfigurationReversionContext_revertChangesWithScope_animationDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {

    v5 = 0;
  }

  [*(a1 + 32) setValue:v5 forKey:v8];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveExtraCameraNode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Can't save more than one camera", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveExtraPropsNode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Can't save more than one prop container", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end