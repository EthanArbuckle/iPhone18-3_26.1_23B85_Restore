@interface AVTStickerConfiguration
+ (id)_availableStickerNamesForPuppetNamed:(id)a3 inStickerPack:(id)a4;
+ (id)_stickerConfigurationForPuppetNamed:(id)a3 inStickerPack:(id)a4 stickerName:(id)a5;
+ (id)_stickerConfigurationsForPuppetNamed:(id)a3 inStickerPack:(id)a4;
+ (id)allStickerPackNames;
+ (id)unavailableAnimojiNamesForStickerPack:(id)a3;
- (AVTAvatarPoseAnimation)poseAnimation;
- (AVTStickerConfiguration)initWithConfigDictionary:(id)a3 assetsPath:(id)a4 forStickerPack:(id)a5;
- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)a3 forStickerPack:(id)a4;
- (AVTStickerConfiguration)initWithName:(id)a3 pose:(id)a4 bodyPose:(id)a5 props:(id)a6 shaders:(id)a7 camera:(id)a8 options:(id)a9;
- (AVTStickerConfiguration)initWithName:(id)a3 poseAnimation:(id)a4 bodyPose:(id)a5 props:(id)a6 shaders:(id)a7 camera:(id)a8 options:(id)a9;
- (BOOL)definesPoseOnly;
- (BOOL)hasProps;
- (BOOL)preRendered;
- (BOOL)showsBody;
- (CGSize)size;
- (id)description;
- (id)dictionaryWithTargetPath:(id)a3;
- (id)framingMode;
- (void)_updateDictionary:(id)a3 withTargetPath:(id)a4;
- (void)loadIfNeeded;
- (void)setupOptions:(id)a3;
- (void)unload;
@end

@implementation AVTStickerConfiguration

+ (id)allStickerPackNames
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"stickers";
  v5[1] = @"stickersPrerelease";
  v5[2] = @"posesPack";
  v5[3] = @"posesPackPrerelease";
  v5[4] = @"memojiEditorThumbnails";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_stickerConfigurationsForPuppetNamed:(id)a3 inStickerPack:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20 = AVTPrecompiledStickerPackPlistForPuppetNamed(v6, a3);
  v7 = [v20 objectAtIndexedSubscript:1];
  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v23 + 1) + 8 * i) stringByAppendingPathComponent:@"stickerConfiguration.json"];
        v13 = +[AVTResourceLocator sharedResourceLocator];
        v14 = [(AVTResourceLocator *)v13 urlForStickerResourceAtPath:v12 isDirectory:0];

        v15 = [a1 alloc];
        v16 = [v14 path];
        v17 = [v15 initWithConfigurationAtPath:v16 forStickerPack:v6];

        if (v17)
        {
          [v22 addObject:v17];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_stickerConfigurationForPuppetNamed:(id)a3 inStickerPack:(id)a4 stickerName:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AVTPrecompiledStickerPackPlistForPuppetNamed(v9, v8);
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 indexOfObject:v10];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v28 = v10;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&dword_1BB472000, v14, OS_LOG_TYPE_ERROR, "Error: Failed to find sticker %@ in pack %@ for puppet named %@", buf, 0x20u);
    }

    v15 = 0;
  }

  else
  {
    v16 = v13;
    v26 = [v11 objectAtIndexedSubscript:1];
    v17 = [v26 objectAtIndexedSubscript:v16];
    v18 = [v17 stringByAppendingPathComponent:@"stickerConfiguration.json"];
    v19 = +[AVTResourceLocator sharedResourceLocator];
    [(AVTResourceLocator *)v19 urlForStickerResourceAtPath:v18 isDirectory:0];
    v21 = v20 = v8;

    v22 = [a1 alloc];
    v23 = [v21 path];
    v15 = [v22 initWithConfigurationAtPath:v23 forStickerPack:v9];

    v8 = v20;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)unavailableAnimojiNamesForStickerPack:(id)a3
{
  v3 = AVTPrecompiledStickerPackPlist(a3);
  v4 = [v3 objectForKeyedSubscript:@"unavailableAnimoji"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

+ (id)_availableStickerNamesForPuppetNamed:(id)a3 inStickerPack:(id)a4
{
  v4 = AVTPrecompiledStickerPackPlistForPuppetNamed(a4, a3);
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)a3 forStickerPack:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringByDeletingLastPathComponent];
  v18 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:8 error:&v18];
  v10 = v18;
  if (!v9 || (v11 = v10, v17 = v10, [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v17], v12 = objc_claimAutoreleasedReturnValue(), v13 = v17, v11, v13))
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Sticker Configuration could not be created userInfo:{data not JSON or empty", 0}];
    objc_exception_throw(v16);
  }

  v14 = [(AVTStickerConfiguration *)self initWithConfigDictionary:v12 assetsPath:v8 forStickerPack:v7];

  return v14;
}

- (AVTStickerConfiguration)initWithConfigDictionary:(id)a3 assetsPath:(id)a4 forStickerPack:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 objectForKey:@"options"];
  v13 = [v9 objectForKeyedSubscript:@"identifier"];
  if (!v13)
  {
    v13 = [v10 lastPathComponent];
  }

  v14 = [(AVTStickerConfiguration *)self initWithName:v13 pose:0 bodyPose:0 props:0 shaders:0 camera:0 options:v12];
  v15 = v14;
  if (v14)
  {
    v14->_hasLoadedFromConfiguration = 0;
    objc_storeStrong(&v14->_configurationDictionary, a3);
    objc_storeStrong(&v15->_assetsPath, a4);
    objc_storeStrong(&v15->_stickerPack, a5);
  }

  return v15;
}

- (AVTStickerConfiguration)initWithName:(id)a3 poseAnimation:(id)a4 bodyPose:(id)a5 props:(id)a6 shaders:(id)a7 camera:(id)a8 options:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = [a4 physicalizedPose];
  v23 = [(AVTStickerConfiguration *)self initWithName:v21 pose:v22 bodyPose:v20 props:v19 shaders:v18 camera:v17 options:v16];

  return v23;
}

- (AVTStickerConfiguration)initWithName:(id)a3 pose:(id)a4 bodyPose:(id)a5 props:(id)a6 shaders:(id)a7 camera:(id)a8 options:(id)a9
{
  v16 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v17 = a9;
  v35.receiver = self;
  v35.super_class = AVTStickerConfiguration;
  v18 = [(AVTStickerConfiguration *)&v35 init];
  if (v18)
  {
    if (!v16)
    {
      v19 = avt_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)v19 initWithName:v20 error:v21, v22, v23, v24, v25, v26];
      }
    }

    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_name, a3);
    v27 = AVTLocalizedStickerName(v16);
    localizedName = v18->_localizedName;
    v18->_localizedName = v27;

    objc_storeStrong(&v18->_physicalizedPose, a4);
    objc_storeStrong(&v18->_bodyPose, a5);
    objc_storeStrong(&v18->_props, a6);
    objc_storeStrong(&v18->_shaderModifiers, a7);
    objc_storeStrong(&v18->_camera, a8);
    v18->_stickerVersion = 1;
    [(AVTStickerConfiguration *)v18 setupOptions:v17];
  }

  return v18;
}

- (id)framingMode
{
  if (self->_camera)
  {
    return 0;
  }

  else
  {
    return @"camera";
  }
}

- (BOOL)hasProps
{
  if (self->_hasLoadedFromConfiguration || !self->_configurationDictionary)
  {
    v3 = [(NSArray *)self->_props count];
  }

  else
  {
    v2 = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:@"props"];
    v3 = [v2 count];
  }

  return v3 != 0;
}

- (BOOL)showsBody
{
  if (self->_hasLoadedFromConfiguration || !self->_configurationDictionary)
  {
    bodyPose = self->_bodyPose;
  }

  else
  {
    bodyPose = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:@"body-pose"];
  }

  return bodyPose != 0;
}

- (BOOL)definesPoseOnly
{
  if (self->_hasLoadedFromConfiguration)
  {
    return ![(NSArray *)self->_props count]&& self->_bodyPose == 0;
  }

  configurationDictionary = self->_configurationDictionary;
  if (!configurationDictionary)
  {
    return ![(NSArray *)self->_props count]&& self->_bodyPose == 0;
  }

  else
  {
    v4 = [(NSDictionary *)configurationDictionary objectForKeyedSubscript:@"props"];
    v5 = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:@"body-pose"];
    v6 = ([v4 count] | v5) == 0;
  }

  return v6;
}

- (AVTAvatarPoseAnimation)poseAnimation
{
  v3 = [AVTAvatarPoseAnimation alloc];
  v4 = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose pose];
  v5 = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose physicsStates];
  v6 = [(AVTAvatarPoseAnimation *)v3 initWithStaticPose:v4 staticPhysicsStates:v5];

  return v6;
}

- (void)setupOptions:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"size"];
  legacySizeOption = self->_legacySizeOption;
  self->_legacySizeOption = v5;

  if (self->_legacySizeOption && (setupOptions__done & 1) == 0)
  {
    setupOptions__done = 1;
    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration *)v7 setupOptions:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [v4 valueForKey:@"presetOverrides"];
  v37 = v15;
  if ([v15 count])
  {
    v36 = v4;
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = [v17 objectForKeyedSubscript:{v22, v36}];
          v24 = [AVTStickerPresetOverride presetOverrideFromDictionary:v23 forCategoryName:v22];

          [(NSArray *)v16 addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v19);
    }

    presetOverrides = self->_presetOverrides;
    self->_presetOverrides = v16;

    v4 = v36;
  }

  v26 = [v4 valueForKey:{@"morpherOverrides", v36}];
  if ([v26 count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v39;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [AVTStickerMorpherOverride morpherOverrideFromDictionary:*(*(&v38 + 1) + 8 * j)];
          [(NSArray *)v27 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v30);
    }

    morpherOverrides = self->_morpherOverrides;
    self->_morpherOverrides = v27;

    v15 = v37;
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)loadIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Unreachable code: Unsupported file type for scene %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __39__AVTStickerConfiguration_loadIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = [v5 objectForKeyedSubscript:@"pose"];
  v6 = objc_alloc_init(AVTStickerPoseAdjustment);
  [(AVTStickerPoseAdjustment *)v6 setPresetCategory:a2];
  v7 = [v5 objectForKeyedSubscript:@"value"];

  [(AVTStickerPoseAdjustment *)v6 setPresetIdentifier:v7];
  v8 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:v9];
  [(AVTStickerPoseAdjustment *)v6 setPose:v8];

  [*(a1 + 32) addObject:v6];
}

void __39__AVTStickerConfiguration_loadIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  AVTPresetCategoryFromString(a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          (*(*(a1 + 32) + 16))(*(a1 + 32));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)unload
{
  if (self->_hasLoadedFromConfiguration && self->_configurationDictionary)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_hasLoadedFromConfiguration && self->_configurationDictionary)
    {
      [(AVTStickerConfiguration *)self setPhysicalizedPose:0];
      [(AVTStickerConfiguration *)self setBodyPose:0];
      [(AVTStickerConfiguration *)self setPoseAdjustments:0];
      [(AVTStickerConfiguration *)self setProps:0];
      [(AVTStickerConfiguration *)self setShaderModifiers:0];
      [(AVTStickerConfiguration *)self setCamera:0];
      self->_hasLoadedFromConfiguration = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_updateDictionary:(id)a3 withTargetPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(AVTStickerConfiguration *)self props];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) dictionaryWithTargetPath:v7];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v6 setObject:v8 forKeyedSubscript:@"props"];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AVTStickerConfiguration *)self name];
  v6 = v5;
  if (self->_hasLoadedFromConfiguration)
  {
    v7 = [(AVTStickerConfiguration *)self dictionaryWithTargetPath:@"/"];
    v8 = [v7 description];
    v9 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, v5, @"Unloaded"];
  }

  return v9;
}

- (id)dictionaryWithTargetPath:(id)a3
{
  v4 = a3;
  [(AVTStickerConfiguration *)self loadIfNeeded];
  configurationDictionary = self->_configurationDictionary;
  if (configurationDictionary)
  {
    v6 = [(NSDictionary *)configurationDictionary mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = v6;
  [(AVTStickerConfiguration *)self _updateDictionary:v6 withTargetPath:v4];

  return v7;
}

- (CGSize)size
{
  if ((size_done & 1) == 0)
  {
    size_done = 1;
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration *)v3 setupOptions:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  legacySizeOption = self->_legacySizeOption;
  if (legacySizeOption)
  {
    [(NSNumber *)legacySizeOption floatValue];
    v13 = v12;
  }

  else
  {
    v13 = 140.0;
  }

  v14 = v13;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)preRendered
{
  if ((preRendered_done & 1) == 0)
  {
    preRendered_done = 1;
    v2 = avt_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration(Deprecated) *)v2 preRendered:v3];
    }
  }

  return 0;
}

@end