@interface AVTStickerConfiguration
+ (id)_availableStickerNamesForPuppetNamed:(id)named inStickerPack:(id)pack;
+ (id)_stickerConfigurationForPuppetNamed:(id)named inStickerPack:(id)pack stickerName:(id)name;
+ (id)_stickerConfigurationsForPuppetNamed:(id)named inStickerPack:(id)pack;
+ (id)allStickerPackNames;
+ (id)unavailableAnimojiNamesForStickerPack:(id)pack;
- (AVTAvatarPoseAnimation)poseAnimation;
- (AVTStickerConfiguration)initWithConfigDictionary:(id)dictionary assetsPath:(id)path forStickerPack:(id)pack;
- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)path forStickerPack:(id)pack;
- (AVTStickerConfiguration)initWithName:(id)name pose:(id)pose bodyPose:(id)bodyPose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options;
- (AVTStickerConfiguration)initWithName:(id)name poseAnimation:(id)animation bodyPose:(id)pose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options;
- (BOOL)definesPoseOnly;
- (BOOL)hasProps;
- (BOOL)preRendered;
- (BOOL)showsBody;
- (CGSize)size;
- (id)description;
- (id)dictionaryWithTargetPath:(id)path;
- (id)framingMode;
- (void)_updateDictionary:(id)dictionary withTargetPath:(id)path;
- (void)loadIfNeeded;
- (void)setupOptions:(id)options;
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

+ (id)_stickerConfigurationsForPuppetNamed:(id)named inStickerPack:(id)pack
{
  v28 = *MEMORY[0x1E69E9840];
  packCopy = pack;
  v20 = AVTPrecompiledStickerPackPlistForPuppetNamed(packCopy, named);
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

        v15 = [self alloc];
        path = [v14 path];
        v17 = [v15 initWithConfigurationAtPath:path forStickerPack:packCopy];

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

+ (id)_stickerConfigurationForPuppetNamed:(id)named inStickerPack:(id)pack stickerName:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  packCopy = pack;
  nameCopy = name;
  v11 = AVTPrecompiledStickerPackPlistForPuppetNamed(packCopy, namedCopy);
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 indexOfObject:nameCopy];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v28 = nameCopy;
      v29 = 2112;
      v30 = packCopy;
      v31 = 2112;
      v32 = namedCopy;
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
    v21 = v20 = namedCopy;

    v22 = [self alloc];
    path = [v21 path];
    v15 = [v22 initWithConfigurationAtPath:path forStickerPack:packCopy];

    namedCopy = v20;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)unavailableAnimojiNamesForStickerPack:(id)pack
{
  v3 = AVTPrecompiledStickerPackPlist(pack);
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

+ (id)_availableStickerNamesForPuppetNamed:(id)named inStickerPack:(id)pack
{
  v4 = AVTPrecompiledStickerPackPlistForPuppetNamed(pack, named);
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)path forStickerPack:(id)pack
{
  pathCopy = path;
  packCopy = pack;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v18 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:8 error:&v18];
  v10 = v18;
  if (!v9 || (v11 = v10, v17 = v10, [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v17], v12 = objc_claimAutoreleasedReturnValue(), v13 = v17, v11, v13))
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Sticker Configuration could not be created userInfo:{data not JSON or empty", 0}];
    objc_exception_throw(v16);
  }

  v14 = [(AVTStickerConfiguration *)self initWithConfigDictionary:v12 assetsPath:stringByDeletingLastPathComponent forStickerPack:packCopy];

  return v14;
}

- (AVTStickerConfiguration)initWithConfigDictionary:(id)dictionary assetsPath:(id)path forStickerPack:(id)pack
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  packCopy = pack;
  v12 = [dictionaryCopy objectForKey:@"options"];
  lastPathComponent = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!lastPathComponent)
  {
    lastPathComponent = [pathCopy lastPathComponent];
  }

  v14 = [(AVTStickerConfiguration *)self initWithName:lastPathComponent pose:0 bodyPose:0 props:0 shaders:0 camera:0 options:v12];
  v15 = v14;
  if (v14)
  {
    v14->_hasLoadedFromConfiguration = 0;
    objc_storeStrong(&v14->_configurationDictionary, dictionary);
    objc_storeStrong(&v15->_assetsPath, path);
    objc_storeStrong(&v15->_stickerPack, pack);
  }

  return v15;
}

- (AVTStickerConfiguration)initWithName:(id)name poseAnimation:(id)animation bodyPose:(id)pose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options
{
  optionsCopy = options;
  cameraCopy = camera;
  shadersCopy = shaders;
  propsCopy = props;
  poseCopy = pose;
  nameCopy = name;
  physicalizedPose = [animation physicalizedPose];
  v23 = [(AVTStickerConfiguration *)self initWithName:nameCopy pose:physicalizedPose bodyPose:poseCopy props:propsCopy shaders:shadersCopy camera:cameraCopy options:optionsCopy];

  return v23;
}

- (AVTStickerConfiguration)initWithName:(id)name pose:(id)pose bodyPose:(id)bodyPose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options
{
  nameCopy = name;
  poseCopy = pose;
  bodyPoseCopy = bodyPose;
  propsCopy = props;
  shadersCopy = shaders;
  cameraCopy = camera;
  optionsCopy = options;
  v35.receiver = self;
  v35.super_class = AVTStickerConfiguration;
  v18 = [(AVTStickerConfiguration *)&v35 init];
  if (v18)
  {
    if (!nameCopy)
    {
      v19 = avt_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)v19 initWithName:v20 error:v21, v22, v23, v24, v25, v26];
      }
    }

    v18->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v18->_name, name);
    v27 = AVTLocalizedStickerName(nameCopy);
    localizedName = v18->_localizedName;
    v18->_localizedName = v27;

    objc_storeStrong(&v18->_physicalizedPose, pose);
    objc_storeStrong(&v18->_bodyPose, bodyPose);
    objc_storeStrong(&v18->_props, props);
    objc_storeStrong(&v18->_shaderModifiers, shaders);
    objc_storeStrong(&v18->_camera, camera);
    v18->_stickerVersion = 1;
    [(AVTStickerConfiguration *)v18 setupOptions:optionsCopy];
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
  pose = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose pose];
  physicsStates = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose physicsStates];
  v6 = [(AVTAvatarPoseAnimation *)v3 initWithStaticPose:pose staticPhysicsStates:physicsStates];

  return v6;
}

- (void)setupOptions:(id)options
{
  v48 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"size"];
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

  v15 = [optionsCopy valueForKey:@"presetOverrides"];
  v37 = v15;
  if ([v15 count])
  {
    v36 = optionsCopy;
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

    optionsCopy = v36;
  }

  v26 = [optionsCopy valueForKey:{@"morpherOverrides", v36}];
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

- (void)_updateDictionary:(id)dictionary withTargetPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  props = [(AVTStickerConfiguration *)self props];
  v10 = [props countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(props);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) dictionaryWithTargetPath:pathCopy];
        [array addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [props countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [dictionaryCopy setObject:array forKeyedSubscript:@"props"];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(AVTStickerConfiguration *)self name];
  v6 = name;
  if (self->_hasLoadedFromConfiguration)
  {
    v7 = [(AVTStickerConfiguration *)self dictionaryWithTargetPath:@"/"];
    v8 = [v7 description];
    v9 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, name, @"Unloaded"];
  }

  return v9;
}

- (id)dictionaryWithTargetPath:(id)path
{
  pathCopy = path;
  [(AVTStickerConfiguration *)self loadIfNeeded];
  configurationDictionary = self->_configurationDictionary;
  if (configurationDictionary)
  {
    dictionary = [(NSDictionary *)configurationDictionary mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  [(AVTStickerConfiguration *)self _updateDictionary:dictionary withTargetPath:pathCopy];

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