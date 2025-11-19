@interface AVTVariantBatchSnapshotter
- (AVTVariantBatchSnapshotter)initWithAvatar:(id)a3 size:(CGSize)a4 scale:(double)a5 antialiasingMode:(unint64_t)a6 device:(id)a7;
- (id)imageWithOptions:(id)a3 modifications:(id)a4;
- (void)dealloc;
@end

@implementation AVTVariantBatchSnapshotter

- (AVTVariantBatchSnapshotter)initWithAvatar:(id)a3 size:(CGSize)a4 scale:(double)a5 antialiasingMode:(unint64_t)a6 device:(id)a7
{
  height = a4.height;
  width = a4.width;
  v27[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = AVTVariantBatchSnapshotter;
  v16 = [(AVTVariantBatchSnapshotter *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_avatar, a3);
    v17->_size.width = width;
    v17->_size.height = height;
    v17->_scale = a5;
    v17->_antialiasingMode = a6;
    [(AVTAvatar *)v17->_avatar setOptimizeForSnapshot:1];
    v26 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v27[0] = MEMORY[0x1E695E110];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v19 = [(VFXRenderer *)AVTRenderer rendererWithDevice:v15 options:v18];
    renderer = v17->_renderer;
    v17->_renderer = v19;

    [(AVTRenderer *)v17->_renderer setFramingMode:@"cameraDefault"];
    [(AVTRenderer *)v17->_renderer setAvatar:v14];
    v21 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v17->_snapshotHelper;
    v17->_snapshotHelper = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTVariantBatchSnapshotter;
  [(AVTVariantBatchSnapshotter *)&v2 dealloc];
}

- (id)imageWithOptions:(id)a3 modifications:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, self->_avatar);
  }

  avatar = self->_avatar;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self->_avatar;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v11 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiPresetSubstitutions"];
    v12 = [v11 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v71;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v71 != v14)
          {
            objc_enumerationMutation(v11);
          }

          -[AVTAvatar setPreset:forCategory:animated:](v10, "setPreset:forCategory:animated:", *(*(&v70 + 1) + 8 * i), [*(*(&v70 + 1) + 8 * i) category], 0);
        }

        v13 = [v11 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v13);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v16 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiColorPresetSubstitutions"];
    v17 = [v16 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v67;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v67 != v19)
          {
            objc_enumerationMutation(v16);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v10, "setColorPreset:forCategory:colorIndex:", *(*(&v66 + 1) + 8 * j), [*(*(&v66 + 1) + 8 * j) category], 0);
        }

        v18 = [v16 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v18);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v21 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiSecondaryColorPresetSubstitutions"];
    v22 = [v21 countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v63;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(v21);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v10, "setColorPreset:forCategory:colorIndex:", *(*(&v62 + 1) + 8 * k), [*(*(&v62 + 1) + 8 * k) category], 1);
        }

        v23 = [v21 countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v23);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v26 = [v6 objectForKeyedSubscript:@"AVTSnapshotMemojiThirdColorPresetSubstitutions"];
    v27 = [v26 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v59;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v26);
          }

          -[AVTAvatar setColorPreset:forCategory:colorIndex:](v10, "setColorPreset:forCategory:colorIndex:", *(*(&v58 + 1) + 8 * m), [*(*(&v58 + 1) + 8 * m) category], 2);
        }

        v28 = [v26 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v28);
    }
  }

  [(AVTAvatar *)self->_avatar updateWithOptions:1];
  v31 = [v6 objectForKeyedSubscript:@"AVTSnapshotPose"];
  if (v31)
  {
    [(AVTAvatar *)self->_avatar setPose:v31];
  }

  v32 = [v6 objectForKeyedSubscript:@"AVTSnapshotFramingMode"];
  v33 = v32;
  v34 = @"cameraHead";
  if (v32)
  {
    v34 = v32;
  }

  v35 = v34;

  [(AVTRenderer *)self->_renderer setFramingMode:v35];
  v36 = [v6 objectForKeyedSubscript:@"AVTSnapshotPoseAnimation"];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 addToAvatar:self->_avatar useStaticPhysicsState:0];
  }

  v39 = [v6 objectForKeyedSubscript:@"AVTSnapshotBackgroundColorKey"];
  v40 = [(AVTRenderer *)self->_renderer backgroundColor];

  if (v40 != v39)
  {
    [(AVTRenderer *)self->_renderer setBackgroundColor:v39];
  }

  [MEMORY[0x1E69DF378] flush];
  scale = self->_scale;
  v42 = (scale * self->_size.width);
  v43 = (scale * self->_size.height);
  v44 = [v6 objectForKeyedSubscript:@"AVTSnapshotHeroFrameKey"];
  [v44 floatValue];
  v46 = v45;

  [(AVTRenderer *)self->_renderer updateAtTime:v46];
  renderer = self->_renderer;
  antialiasingMode = self->_antialiasingMode;
  snapshotHelper = self->_snapshotHelper;
  height = self->_size.height;
  v51 = self->_scale;
  v57 = 0;
  v52 = [(AVTSnapshotHelper *)snapshotHelper newImageWithRenderer:antialiasingMode antialiasingMode:v42 pixelWidth:v43 pixelHeight:&v57 imagePointSize:self->_size.width contentScaleFactor:height error:v51];
  v53 = v57;
  if (!v52)
  {
    v54 = avt_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [AVTVariantBatchSnapshotter imageWithOptions:v53 modifications:?];
    }
  }

  v55 = *MEMORY[0x1E69E9840];

  return v52;
}

- (void)imageWithOptions:(void *)a1 modifications:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_7(&dword_1BB472000, v2, v3, "Error: Failed to create image with error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end