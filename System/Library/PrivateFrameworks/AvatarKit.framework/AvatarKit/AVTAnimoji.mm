@interface AVTAnimoji
+ (id)_scenePathForPuppetNamed:(id)named;
+ (id)_sceneURLForPuppetDirectoryURL:(id)l;
+ (id)animojiNamed:(id)named;
+ (id)animojiNames;
+ (id)animojiWithContentsOfURL:(id)l;
+ (id)thumbnailForAnimojiNamed:(id)named options:(id)options;
+ (void)preloadAnimojiNamed:(id)named;
- (AVTAnimoji)initWithCoder:(id)coder;
- (AVTAnimoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error;
- (AVTAnimoji)initWithName:(id)name error:(id *)p_isa;
- (id)_sceneURL;
- (id)avatarNode;
- (id)cameraNode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lightingNode;
- (id)newDescriptor;
- (void)_load;
- (void)configureForBestAnimationQuality;
- (void)encodeWithCoder:(id)coder;
- (void)loadIfNeeded;
- (void)updateWithOptions:(unint64_t)options;
@end

@implementation AVTAnimoji

+ (id)animojiNames
{
  if (animojiNames_onceToken != -1)
  {
    +[AVTAnimoji animojiNames];
  }

  v3 = animojiNames_names;

  return v3;
}

void __26__AVTAnimoji_animojiNames__block_invoke()
{
  v0 = animojiNames_names;
  animojiNames_names = &unk_1F39D95C8;
}

+ (id)_scenePathForPuppetNamed:(id)named
{
  namedCopy = named;
  v4 = +[AVTResourceLocator sharedResourceLocator];
  v5 = [AVTResourceLocator pathForAnimojiResource:v4 ofType:? inDirectory:? isDirectory:?];

  return v5;
}

+ (id)_sceneURLForPuppetDirectoryURL:(id)l
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        lastPathComponent = [v11 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        lastPathComponent2 = [lCopy lastPathComponent];
        v15 = [stringByDeletingPathExtension isEqualToString:lastPathComponent2];

        if (v15)
        {
          pathExtension = [v11 pathExtension];
          if ([pathExtension isEqualToString:@"vfxz-world"])
          {

LABEL_13:
            v19 = v11;
            goto LABEL_14;
          }

          pathExtension2 = [v11 pathExtension];
          v18 = [pathExtension2 isEqualToString:@"vfx-world"];

          if (v18)
          {
            goto LABEL_13;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_sceneURL
{
  if (self->_url)
  {
    v2 = [objc_opt_class() _sceneURLForPuppetDirectoryURL:self->_url];
  }

  else if (self->_name)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [objc_opt_class() _scenePathForPuppetNamed:self->_name];
    v2 = [v3 fileURLWithPath:v4 isDirectory:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_load
{
  v23 = *MEMORY[0x1E69E9840];
  _sceneURL = [(AVTAnimoji *)self _sceneURL];
  if (_sceneURL)
  {
    v20 = 0;
    v4 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:_sceneURL options:0 error:&v20];
    v5 = v20;
    if (v5)
    {
      v6 = avt_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarPoseAnimation *)_sceneURL initWithSceneKitSceneAtURL:v5 usdaMetadata:v6];
      }
    }

    else
    {
      v7 = [v4 childNodeWithName:@"puppet" recursively:1];
      avatarNode = self->_avatarNode;
      self->_avatarNode = v7;

      [(VFXNode *)self->_avatarNode removeFromParentNode];
      if (self->_avatarNode)
      {
        if (!self->_name)
        {
          [AVTAnimoji _load];
        }

        v6 = AVTPrecompiledAnimojiSpecializationSettings();
        v9 = [v6 objectForKeyedSubscript:self->_name];
        specializationSettings = self->_specializationSettings;
        self->_specializationSettings = v9;

        v11 = [(VFXNode *)self->_avatarNode childNodeWithName:@"model" recursively:1];
        [v11 avt_enableSubdivisionOnHierarchyWithQuality:1 animoji:1];

        v12 = [v4 childNodeWithName:@"lighting" recursively:1];
        lightingNode = self->_lightingNode;
        self->_lightingNode = v12;

        v14 = [v4 childNodeWithName:@"cameras" recursively:1];
        cameraNode = self->_cameraNode;
        self->_cameraNode = v14;

        v16 = [(VFXNode *)self->_avatarNode childNodeWithName:@"head" recursively:1];
        headNode = self->_headNode;
        self->_headNode = v16;

        [(AVTAvatar *)self _avatarNodeAndHeadNodeAreNowAvailable];
        [(AVTAvatar *)self resetCustomBehaviours];
        [(AVTAvatar *)self updateBindings];
      }

      else
      {
        v6 = avt_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          *buf = 138412290;
          v22 = name;
          _os_log_impl(&dword_1BB472000, v6, OS_LOG_TYPE_DEFAULT, "invalid node graph for animoji named %@", buf, 0xCu);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)loadIfNeeded
{
  if (!self->_avatarNode)
  {
    [(AVTAnimoji *)self _load];
  }
}

- (id)avatarNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  avatarNode = self->_avatarNode;

  return avatarNode;
}

- (void)updateWithOptions:(unint64_t)options
{
  avatarNode = [(AVTAnimoji *)self avatarNode];
}

+ (id)animojiWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setUrl:lCopy];

  return v4;
}

- (AVTAnimoji)initWithName:(id)name error:(id *)p_isa
{
  v44[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    animojiNames = [objc_opt_class() animojiNames];
    v9 = [animojiNames containsObject:nameCopy];

    if (v9)
    {
      v40.receiver = self;
      v40.super_class = AVTAnimoji;
      v10 = [(AVTAvatar *)&v40 init];
      self = v10;
      if (!v10)
      {
LABEL_6:
        self = self;
        p_isa = &self->super.super.isa;
        goto LABEL_17;
      }

      objc_storeStrong(&v10->_name, name);
      v11 = [objc_opt_class() _scenePathForPuppetNamed:self->_name];
      if (v11)
      {

        goto LABEL_6;
      }

      v25 = avt_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)&self->_name initWithName:v25 error:v34, v35, v36, v37, v38, v39];
      }
    }

    else
    {
      if (p_isa)
      {
        v22 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A578];
        nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Animoji name %@", nameCopy];
        v42 = nameCopy;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *p_isa = [v22 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v24];
      }

      v25 = avt_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)nameCopy initWithName:v25 error:v26, v27, v28, v29, v30, v31];
      }
    }

LABEL_16:
    p_isa = 0;
    goto LABEL_17;
  }

  v12 = avt_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(AVTAnimoji *)v12 initWithName:v13 error:v14, v15, v16, v17, v18, v19];
  }

  if (p_isa)
  {
    v20 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44[0] = @"Can't instanciate AVTAnimoji with nil name";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *p_isa = [v20 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v21];

    goto LABEL_16;
  }

LABEL_17:

  v32 = *MEMORY[0x1E69E9840];
  return p_isa;
}

+ (id)animojiNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_alloc(objc_opt_class()) initWithName:namedCopy error:0];

  return v4;
}

- (id)newDescriptor
{
  v3 = [AVTAnimojiDescriptor alloc];

  return [(AVTAnimojiDescriptor *)v3 initWithAnimoji:self];
}

- (AVTAnimoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error
{
  name = [descriptor name];
  v8 = [(AVTAnimoji *)self initWithName:name error:error];

  return v8;
}

+ (id)thumbnailForAnimojiNamed:(id)named options:(id)options
{
  namedCopy = named;
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"AVTAnimojiThumbnailLargeSizeKey"];

  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"AVTAnimojiThumbnailLargeSizeKey"];

    bOOLValue = [(__CFString *)v8 BOOLValue];
    v10 = AVTFramingModeCamera;
    if (!bOOLValue)
    {
      v10 = AVTFramingModeGrid;
    }

    v11 = *v10;
  }

  else
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"AVTAnimojiThumbnailCameraKey"];

    v11 = @"cameraGrid";
    if (v8)
    {
      v11 = v8;
    }
  }

  v12 = v11;

  v13 = [namedCopy stringByAppendingString:@"-"];
  v14 = [v13 stringByAppendingString:v12];

  v15 = +[AVTResourceLocator sharedResourceLocator];
  v16 = [AVTResourceLocator pathForAnimojiResource:v15 ofType:? inDirectory:? isDirectory:?];

  v17 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v16];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(AVTAnimoji *)self loadIfNeeded];
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:self->_name];
  v5 = [(NSDictionary *)self->_specializationSettings copy];
  v6 = v4[35];
  v4[35] = v5;

  avatarNode = [(AVTAnimoji *)self avatarNode];
  v8 = AVTCloneNodesAndMaterials(avatarNode);
  v9 = v4[33];
  v4[33] = v8;

  v10 = [v4[33] childNodeWithName:@"head" recursively:1];
  v11 = v4[32];
  v4[32] = v10;

  [v4 _avatarNodeAndHeadNodeAreNowAvailable];
  [v4 resetCustomBehaviours];
  [v4 updateBindings];
  clone = [(VFXNode *)self->_lightingNode clone];
  v13 = v4[31];
  v4[31] = clone;

  clone2 = [(VFXNode *)self->_cameraNode clone];
  v15 = v4[34];
  v4[34] = clone2;

  [v4[33] enumerateHierarchyUsingBlock:&__block_literal_global_189];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  newDescriptor = [(AVTAnimoji *)self newDescriptor];
  [coderCopy encodeObject:newDescriptor forKey:@"descriptor"];
}

- (AVTAnimoji)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];

  v6 = [(AVTAnimoji *)self initWithDescriptor:v5 usageIntent:0 error:0];
  return v6;
}

+ (void)preloadAnimojiNamed:(id)named
{
  v4 = [AVTAnimoji puppetNamed:named options:0];
  [self preloadPuppet:v4];
}

- (id)lightingNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  lightingNode = self->_lightingNode;

  return lightingNode;
}

- (id)cameraNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  cameraNode = self->_cameraNode;

  return cameraNode;
}

- (void)configureForBestAnimationQuality
{
  name = [(AVTAnimoji *)self name];
  if ([name isEqualToString:@"shark"])
  {
  }

  else
  {
    name2 = [(AVTAnimoji *)self name];
    v5 = [name2 isEqualToString:@"lion"];

    if (!v5)
    {
      return;
    }
  }

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode enumerateHierarchyUsingBlock:&__block_literal_global_195];
}

void __46__AVTAnimoji_configureForBestAnimationQuality__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  LODWORD(v2) = 981668463;
  [v3 setWeightIncrementalThreshold:v2];
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Unknown Animoji name %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Can't find Animoji named %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

@end