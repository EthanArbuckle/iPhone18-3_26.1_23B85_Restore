@interface AVTMemoji
+ (AVTMemoji)memojiWithContentsOfURL:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5;
+ (double)skinTextureSize;
+ (id)memoji;
+ (id)neutralMemoji;
+ (id)neutralMemojiDataRepresentation;
+ (id)neutralMemojiDescriptor;
+ (id)neutralMemojiPresetsIdentifiersPerCategory;
- (AVTMemoji)initWithCoder:(id)a3;
- (AVTMemoji)initWithDescriptor:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5;
- (BOOL)_addTorsoComponentInstanceIfNeeded;
- (CGImage)createSkinCombinedAOImage;
- (id)_assetNodesForComponentType:(int64_t)a3 includingBuiltInAssetNodes:(BOOL)a4 includingComponentAssetNode:(BOOL)a5;
- (id)_componentInstanceAssetNodesForDependencyOfType:(int64_t)a3 isAssetSpecific:(BOOL)a4;
- (id)_wrapDeformerDriverInfoForComponentType:(int64_t)a3;
- (id)allBuiltinAssetNodes;
- (id)colorPresetForCategory:(int64_t)a3;
- (id)colorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4;
- (id)componentWithType:(int64_t)a3;
- (id)copyWithUsageIntent:(unint64_t)a3;
- (id)effectiveMorphedNodeForTargetName:(id)a3;
- (id)eyebrowsColor;
- (id)facialhairColor;
- (id)hairColor;
- (id)lipsColor;
- (id)newDescriptor;
- (id)secondaryColorPresetForCategory:(int64_t)a3;
- (id)skinColor;
- (id)upperNodesIgnoredByDynamics;
- (id)wrapDeformedDriverNamed:(id)a3 forComponentType:(int64_t)a4;
- (void)_addTorsoComponentInstanceIfNeeded;
- (void)_applyAllColorPresetsForCategory:(int64_t)a3;
- (void)_applyColorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4;
- (void)_applyMorphVariantsForLazyComponentInstanceOfType:(int64_t)a3 assetNode:(id)a4;
- (void)_invalidateSkinAO;
- (void)_locked_invalidate;
- (void)_removeComponent:(id)a3;
- (void)_setAssetSpecificVariantDependenciesEnabled:(BOOL)a3 forPreset:(id)a4 dirtyComponents:(unint64_t)a5;
- (void)_setVariantDependenciesEnabled:(BOOL)a3 forPreset:(id)a4 dirtyComponents:(unint64_t)a5;
- (void)_updateSkinAO;
- (void)_updateWithOptions:(unint64_t)a3;
- (void)addComponent:(id)a3 animated:(BOOL)a4;
- (void)addComponentAssetNode:(id)a3 toNode:(id)a4 forBodyParts:(unint64_t)a5;
- (void)addDerivedNodesMatchingStickerPattern:(id)a3 toArray:(id)a4 options:(unint64_t)a5;
- (void)applyVariantDependenciesForPreset:(id)a3 dirtyComponents:(unint64_t)a4;
- (void)componentDidChangeForType:(int64_t)a3 animated:(BOOL)a4;
- (void)componentMaterialDidUpdate:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateActiveWrapDeformerDriversForComponentType:(int64_t)a3 usingBlock:(id)a4;
- (void)randomize;
- (void)rebuildSpecializationSettings;
- (void)removeAllComponents;
- (void)removeComponentAssetNodeFromParentNode:(id)a3 forBodyParts:(unint64_t)a4;
- (void)removeComponentWithType:(int64_t)a3;
- (void)resetToDefault;
- (void)setBodyPose:(id)a3;
- (void)setColorPreset:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5;
- (void)setComponentAssetNodeObservationForStickerBlock:(id)a3;
- (void)setInstance:(id)a3 forComponentType:(int64_t)a4;
- (void)setPreset:(id)a3 forCategory:(int64_t)a4 animated:(BOOL)a5;
- (void)setShowsBody:(BOOL)a3;
- (void)setVisibleBodyParts:(unint64_t)a3;
- (void)unapplyVariantDependenciesForPreset:(id)a3 dirtyComponents:(unint64_t)a4;
- (void)updateBodyPoseForSkinnerVariantsWithDirtyComponents:(unint64_t)a3;
- (void)updateEyeLashes;
- (void)updateHighlightsForComponentType:(int64_t)a3;
- (void)updateMorphVariantsInNodeHierarchy:(id)a3 componentType:(int64_t)a4 variant:(id)a5 weight:(float)a6;
- (void)updateMorphVariantsInStickerPropNodeHierarchy:(id)a3;
- (void)updateSkinMaterial:(id)a3;
- (void)updateWithOptions:(unint64_t)a3;
- (void)updateWrapDeformerIsActiveForComponentType:(int64_t)a3;
@end

@implementation AVTMemoji

+ (id)neutralMemojiDataRepresentation
{
  if (neutralMemojiDataRepresentation_onceToken != -1)
  {
    +[AVTMemoji neutralMemojiDataRepresentation];
  }

  v3 = neutralMemojiDataRepresentation_neutralMemojiData;

  return v3;
}

void __44__AVTMemoji_neutralMemojiDataRepresentation__block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v3 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? isDirectory:?];

  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:8 error:0];
  v2 = neutralMemojiDataRepresentation_neutralMemojiData;
  neutralMemojiDataRepresentation_neutralMemojiData = v1;
}

+ (id)neutralMemojiDescriptor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVTMemoji_neutralMemojiDescriptor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (neutralMemojiDescriptor_onceToken != -1)
  {
    dispatch_once(&neutralMemojiDescriptor_onceToken, block);
  }

  v2 = neutralMemojiDescriptor_neutralMemojiDescriptor;

  return v2;
}

void __36__AVTMemoji_neutralMemojiDescriptor__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) neutralMemojiDataRepresentation];
  v1 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
  v2 = [[AVTMemojiDescriptor alloc] initWithDictionaryRepresentation:v1 error:0 isResettingToDefault:1];
  v3 = neutralMemojiDescriptor_neutralMemojiDescriptor;
  neutralMemojiDescriptor_neutralMemojiDescriptor = v2;
}

+ (id)neutralMemoji
{
  v2 = [a1 neutralMemojiDescriptor];
  v3 = [[AVTMemoji alloc] initWithDescriptor:v2 usageIntent:0 error:0];

  return v3;
}

+ (id)neutralMemojiPresetsIdentifiersPerCategory
{
  v2 = [a1 neutralMemojiDescriptor];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:40];
    for (i = 0; i != 40; ++i)
    {
      v5 = [v2 presetIdentifierForCategory:i];
      if (v5)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:i];
        [v3 setObject:v5 forKeyedSubscript:v6];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(AVTMemoji *)self removeAllComponents];
  CGImageRelease(self->_combinedAOImage);
  self->_combinedAOImage = 0;
  v3.receiver = self;
  v3.super_class = AVTMemoji;
  [(AVTAvatar *)&v3 dealloc];
}

- (void)removeAllComponents
{
  for (i = 0; i != 42; ++i)
  {
    [(AVTMemoji *)self removeComponentWithType:i];
  }
}

- (void)resetToDefault
{
  v3 = +[AVTMemoji neutralMemojiDescriptor];
  [v3 applyToMemoji:self];
}

- (id)newDescriptor
{
  v3 = [AVTMemojiDescriptor alloc];

  return [(AVTMemojiDescriptor *)v3 initWithMemoji:self];
}

- (AVTMemoji)initWithDescriptor:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5
{
  v120[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v116.receiver = self;
  v116.super_class = AVTMemoji;
  v8 = [(AVTAvatar *)&v116 init];
  v9 = v8;
  if (v8)
  {
    v100 = v7;
    v8->_usageIntent = a4;
    v8->_updateLock._os_unfair_lock_opaque = 0;
    v8->_visibleBodyParts = 1;
    v10 = objc_alloc_init(AVTAssetResourceCache);
    resourceCache = v9->_resourceCache;
    v9->_resourceCache = v10;

    v12 = objc_alloc_init(AVTPresetStore);
    presetStore = v9->_presetStore;
    v9->_presetStore = v12;

    if (v9->_usageIntent == 2)
    {
      [(AVTAssetResourceCache *)v9->_resourceCache setPolicy:1];
    }

    v9->_componentDirtyMask = -1;
    v9->_componentAnimatedMask = 0;
    v14 = [MEMORY[0x1E69DF330] node];
    avatarNode = v9->_avatarNode;
    v9->_avatarNode = v14;

    [(VFXNode *)v9->_avatarNode setName:@"avatarNode"];
    v16 = objc_alloc_init(MEMORY[0x1E69DF330]);
    headComponentContainer = v9->_headComponentContainer;
    v9->_headComponentContainer = v16;

    [(VFXNode *)v9->_headComponentContainer setName:@"head components"];
    v18 = objc_alloc_init(MEMORY[0x1E69DF330]);
    bodyComponentContainer = v9->_bodyComponentContainer;
    v9->_bodyComponentContainer = v18;

    [(VFXNode *)v9->_bodyComponentContainer setName:@"body components"];
    [(VFXNode *)v9->_bodyComponentContainer setHidden:1];
    v20 = objc_alloc_init(MEMORY[0x1E69DF330]);
    handsComponentContainer = v9->_handsComponentContainer;
    v9->_handsComponentContainer = v20;

    [(VFXNode *)v9->_handsComponentContainer setName:@"hands components"];
    [(VFXNode *)v9->_handsComponentContainer setHidden:1];
    [(VFXNode *)v9->_avatarNode addChildNode:v9->_headComponentContainer];
    [(VFXNode *)v9->_avatarNode addChildNode:v9->_bodyComponentContainer];
    v101 = v9;
    [(VFXNode *)v9->_avatarNode addChildNode:v9->_handsComponentContainer];
    v22 = [@"main" stringByAppendingPathExtension:@"vfxz-world"];
    v23 = +[AVTResourceLocator sharedResourceLocator];
    v24 = [(AVTResourceLocator *)v23 urlForMemojiAssetAtPath:1 isDirectory:?];

    v25 = [v24 URLByAppendingPathComponent:v22 isDirectory:0];
    v115 = 0;
    v26 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:v25 options:0 error:&v115];
    v27 = v115;
    if (v27)
    {
      v28 = avt_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji initWithDescriptor:v25 usageIntent:v27 error:?];
      }
    }

    v29 = [v26 childNodes];
    v30 = [v29 objectAtIndexedSubscript:0];

    [v30 removeFromParentNode];
    [v30 enumerateHierarchyUsingBlock:&__block_literal_global_209];
    v31 = AVTPrecompiledMemojiAssetWithIdentifier(@"eyes_mouth");
    v32 = [v31 objectForKeyedSubscript:@"specialization settings"];
    eyesAndTongueSpecializationSettings = v101->_eyesAndTongueSpecializationSettings;
    v101->_eyesAndTongueSpecializationSettings = v32;

    if (!v101->_eyesAndTongueSpecializationSettings)
    {
      [AVTMemoji initWithDescriptor:usageIntent:error:];
    }

    v34 = v30;
    v35 = [v34 childNodeWithName:@"eyelashes" recursively:1];
    eyelashes = v101->_eyelashes;
    v101->_eyelashes = v35;

    v37 = [v34 childNodeWithName:@"L_eye" recursively:1];
    v38 = [v34 childNodeWithName:@"R_eye" recursively:1];
    v98 = v37;
    v39 = [v37 childNodeWithName:@"L_eye" recursively:0];
    v40 = [v39 model];
    v41 = [v40 firstMaterial];
    eyeMaterialLeft = v101->_eyeMaterialLeft;
    v101->_eyeMaterialLeft = v41;

    v97 = v38;
    v43 = [v38 childNodeWithName:@"R_eye" recursively:0];
    v44 = [v43 model];
    v45 = [v44 firstMaterial];
    eyeMaterialRight = v101->_eyeMaterialRight;
    v101->_eyeMaterialRight = v45;

    [v34 avt_enableSubdivisionOnHierarchyWithQuality:1 animoji:0];
    objc_storeStrong(&v101->_eyesAndTongue, v30);
    v99 = v34;
    [(VFXNode *)v101->_headComponentContainer addChildNode:v34];
    v47 = +[AVTAssetLibrary sharedAssetLibrary];
    v48 = [v47 assetWithType:0 identifier:@"head"];

    v49 = [AVTComponent alloc];
    v96 = v48;
    v120[0] = v48;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
    v51 = [(AVTComponent *)v49 initWithType:0 assets:v50 morphVariant:0 imageVariant:0 materialVariant:0 morphVariantIntensity:0.0 bodyPoseVariantIntensity:0.0 textureAssetPresence:0.0];

    [(AVTMemoji *)v101 addComponent:v51 animated:0];
    v95 = v51;
    v52 = [[AVTComponentInstance alloc] initWithComponent:v51 assetResourceCache:v101->_resourceCache];
    [(AVTMemoji *)v101 setInstance:v52 forComponentType:0];
    v53 = [(AVTComponentInstance *)v52 assetNode];
    headNode = v101->_headNode;
    v101->_headNode = v53;

    [(VFXNode *)v101->_headNode setCastsShadow:1];
    [(VFXNode *)v101->_headNode setRenderingOrder:-1];
    [(VFXNode *)v101->_headComponentContainer addChildNode:v101->_headNode];
    v55 = +[AVTAssetLibrary sharedAssetLibrary];
    v56 = [v55 assetWithType:34 identifier:@"body"];

    v57 = [AVTComponent alloc];
    v93 = v56;
    v119 = v56;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    v59 = [(AVTComponent *)v57 initWithType:34 assets:v58 morphVariant:0 imageVariant:0 materialVariant:0 morphVariantIntensity:0.0 bodyPoseVariantIntensity:0.0 textureAssetPresence:0.0];

    v92 = v59;
    [(AVTMemoji *)v101 addComponent:v59 animated:0];
    v60 = [@"main" stringByAppendingPathExtension:@"vfxz-world"];
    v61 = +[AVTResourceLocator sharedResourceLocator];
    v62 = [(AVTResourceLocator *)v61 urlForMemojiAssetAtPath:1 isDirectory:?];

    v90 = v62;
    v91 = v60;
    v63 = [v62 URLByAppendingPathComponent:v60 isDirectory:0];
    v114 = 0;
    v64 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:v63 options:0 error:&v114];
    v65 = v114;
    if (v65)
    {
      v66 = avt_default_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji initWithDescriptor:v63 usageIntent:v65 error:?];
      }
    }

    v88 = v65;
    v89 = v63;
    v94 = v52;
    v87 = v64;
    v67 = [v64 childNodeWithName:@"root_JNT" recursively:1];
    skeletonRootNode = v101->_skeletonRootNode;
    v101->_skeletonRootNode = v67;

    [(VFXNode *)v101->_skeletonRootNode removeFromParentNode];
    [(VFXNode *)v101->_avatarNode addChildNode:v101->_skeletonRootNode];
    v69 = v101->_headComponentContainer;
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __50__AVTMemoji_initWithDescriptor_usageIntent_error___block_invoke_242;
    v112[3] = &unk_1E7F47B10;
    v70 = v101;
    v113 = v70;
    [(VFXNode *)v69 enumerateChildNodesUsingBlock:v112];
    v71 = objc_alloc_init(AVTCompositor);
    v72 = v70[297];
    v70[297] = v71;

    v70[298] = -1;
    v103 = +[AVTCompositor propertyNames];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v73 = [(VFXNode *)v101->_headNode model];
    v74 = [v73 materials];

    obj = v74;
    v75 = [v74 countByEnumeratingWithState:&v108 objects:v118 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v109;
      do
      {
        for (i = 0; i != v76; ++i)
        {
          if (*v109 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v79 = *(*(&v108 + 1) + 8 * i);
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v80 = v103;
          v81 = [v80 countByEnumeratingWithState:&v104 objects:v117 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v105;
            do
            {
              for (j = 0; j != v82; ++j)
              {
                if (*v105 != v83)
                {
                  objc_enumerationMutation(v80);
                }

                [v70[297] configureMaterial:v79 propertyNamed:*(*(&v104 + 1) + 8 * j) memoji:v70];
              }

              v82 = [v80 countByEnumeratingWithState:&v104 objects:v117 count:16];
            }

            while (v82);
          }
        }

        v76 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
      }

      while (v76);
    }

    [v70 resetToDefault];
    v7 = v100;
    if (v100)
    {
      [v100 applyToMemoji:v70];
      [AVTAvatarMemoryOptimizer optimizeMemoji:v70];
      [v70 rebuildSpecializationSettings];
      [v70 _avatarNodeAndHeadNodeAreNowAvailable];
      v9 = v101;
      [v70 addCustomBehavioursInHierarchy:v101->_headNode forBodyParts:1];
      [v70 addCustomBehavioursInHierarchy:v101->_eyesAndTongue forBodyParts:1];
      [v70 updateBindings];
      [v70 updateWithOptions:1];
    }

    else
    {
      [v70 rebuildSpecializationSettings];
      [v70 _avatarNodeAndHeadNodeAreNowAvailable];
      v9 = v101;
      [v70 addCustomBehavioursInHierarchy:v101->_headNode forBodyParts:1];
      [v70 addCustomBehavioursInHierarchy:v101->_eyesAndTongue forBodyParts:1];
      [v70 updateBindings];
    }
  }

  v85 = *MEMORY[0x1E69E9840];
  return v9;
}

void __50__AVTMemoji_initWithDescriptor_usageIntent_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 name];
  v3 = [v2 hasSuffix:@"_eye"];

  [v4 setCastsShadow:v3];
}

void __50__AVTMemoji_initWithDescriptor_usageIntent_error___block_invoke_242(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 336);
  v3 = [a2 skinner];
  [v3 setSkeleton:v2];
}

+ (id)memoji
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (AVTMemoji)memojiWithContentsOfURL:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:8 error:0];
  v9 = [a1 avatarWithDataRepresentation:v8 usageIntent:a4 error:a5];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AVTMemoji *)self newDescriptor];
  [v4 encodeObject:v5 forKey:@"descriptor"];
}

- (AVTMemoji)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];

  v6 = [(AVTMemoji *)self initWithDescriptor:v5 usageIntent:0 error:0];
  return v6;
}

- (id)copyWithUsageIntent:(unint64_t)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  usageIntent = self->_usageIntent;
  if (usageIntent != a3 && usageIntent != 0)
  {
    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_usageIntent;
      v13 = 134218240;
      v14 = v3;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "Can't make a copy with usage intent %lu of a Memoji whose usage intent is %lu", &v13, 0x16u);
    }

    v3 = self->_usageIntent;
  }

  v9 = [[AVTMemojiDescriptor alloc] initWithMemoji:self];
  v10 = [objc_alloc(objc_opt_class()) initWithDescriptor:v9 usageIntent:v3 error:0];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)skinColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:0];
  v3 = [v2 baseColor];

  return v3;
}

- (id)hairColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:1];
  v3 = [v2 baseColor];

  return v3;
}

- (id)eyebrowsColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:8];
  v3 = [v2 baseColor];

  return v3;
}

- (id)facialhairColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:2];
  v3 = [v2 baseColor];

  return v3;
}

- (id)lipsColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:10];
  v3 = [v2 baseColor];

  return v3;
}

- (void)_invalidateSkinAO
{
  self->_skinAOIsValid = 0;
  combinedAOImage = self->_combinedAOImage;
  if (combinedAOImage)
  {
    CGImageRelease(combinedAOImage);
    self->_combinedAOImage = 0;
  }
}

- (void)_applyAllColorPresetsForCategory:(int64_t)a3
{
  for (i = 0; i != 3; ++i)
  {
    [(AVTMemoji *)self _applyColorPresetForCategory:a3 colorIndex:i];
  }
}

- (void)_applyColorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4
{
  if (a4 >= 3)
  {
    [AVTMemoji _applyColorPresetForCategory:colorIndex:];
  }

  v7 = self->_colorPresets[a3];
  v21 = v7[a4];
  v8 = AVTPresetCategoryToComponentType(a3);
  v9 = [(AVTMemoji *)self componentWithType:v8];
  v10 = v9;
  if (a4 == 1)
  {
    if (a3 == 7)
    {
      if (v21)
      {
        v13 = [(AVTColorPreset *)v21 makeMaterial];
        v11 = v13;
        eyeMaterialLeft = self->_eyeMaterialLeft;
        goto LABEL_11;
      }

      v18 = *v7;
      v11 = [(AVTColorPreset *)v18 makeMaterial];
      [v11 applyToVFXMaterial:self->_eyeMaterialLeft];
LABEL_23:

      goto LABEL_27;
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    v11 = [(AVTColorPreset *)v21 makeMaterial];
    v14 = v10;
    v15 = v11;
    v16 = 1;
LABEL_26:
    [v14 setMaterial:v15 atIndex:v16];
    [(AVTMemoji *)self componentMaterialDidUpdate:v10];
    goto LABEL_27;
  }

  if (a4)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v11 = [(AVTColorPreset *)v21 makeMaterial];
    v14 = v10;
    v15 = v11;
    v16 = 2;
    goto LABEL_26;
  }

  if (!v21)
  {
    goto LABEL_28;
  }

  if (a3 != 7)
  {
    if (v8 == 28)
    {
      v11 = [(AVTColorPreset *)v21 makeMaterial];
      [v10 setMaterial:v11 atIndex:0];
      [(AVTMemoji *)self componentMaterialDidUpdate:v10];
      v17 = [(AVTMemoji *)self componentWithType:34];
      v18 = v17;
      if (v17)
      {
        [(AVTColorPreset *)v17 setMaterial:v11 atIndex:0];
        [(AVTMemoji *)self componentMaterialDidUpdate:v18];
      }

      v19 = [(AVTMemoji *)self componentWithType:37];
      v20 = v19;
      if (v19)
      {
        [v19 setMaterial:v11 atIndex:0];
        [(AVTMemoji *)self componentMaterialDidUpdate:v20];
      }

      [(AVTCompositor *)self->_compositor skinColorDidChange];

      goto LABEL_23;
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    v11 = [(AVTColorPreset *)v21 makeMaterial];
    v14 = v10;
    v15 = v11;
    v16 = 0;
    goto LABEL_26;
  }

  v11 = [(AVTColorPreset *)v21 makeMaterial];
  [v11 applyToVFXMaterial:self->_eyeMaterialRight];
  if (!v7[1])
  {
    eyeMaterialLeft = self->_eyeMaterialLeft;
    v13 = v11;
LABEL_11:
    [v13 applyToVFXMaterial:eyeMaterialLeft];
  }

LABEL_27:

LABEL_28:
}

- (id)colorPresetForCategory:(int64_t)a3
{
  if (a3 < 40)
  {
    v4 = self->_colorPresets[a3][0];
  }

  else
  {
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)secondaryColorPresetForCategory:(int64_t)a3
{
  if (a3 < 40)
  {
    v4 = self->_colorPresets[a3][1];
  }

  else
  {
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)colorPresetForCategory:(int64_t)a3 colorIndex:(unint64_t)a4
{
  if (a3 < 40)
  {
    if (a4 >= 3)
    {
      [AVTMemoji colorPresetForCategory:colorIndex:];
    }

    v5 = self->_colorPresets[a3][a4];
  }

  else
  {
    v4 = avt_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setColorPreset:(id)a3 forCategory:(int64_t)a4 colorIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 >= 40)
  {
    v10 = avt_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

LABEL_17:
    return;
  }

  if (v8)
  {
    if ([v8 category] != a4)
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
      }
    }

    if (a5 <= 2)
    {
LABEL_11:
      os_unfair_lock_lock(&self->_updateLock);
      v12 = &self->_colorPresets[a4][a5];
      if (*v12 != v9)
      {
        objc_storeStrong(v12, v9);
        [(AVTMemoji *)self _applyColorPresetForCategory:a4 colorIndex:a5];
        if (a5 == 1)
        {
          v13 = AVTPresetCategoryToComponentType(a4);
          if (v13 != 42)
          {
            self->_compositorComponentDirtyMask |= 1 << v13;
          }
        }

        [(AVTMemoji *)self _locked_invalidate];
      }

      os_unfair_lock_unlock(&self->_updateLock);
      goto LABEL_17;
    }

LABEL_25:
    [AVTMemoji setColorPreset:forCategory:colorIndex:];
  }

  if (a5 >= 3)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    v9 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:a4 colorIndex:a5];
    if (v9)
    {
      v14 = avt_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji setColorPreset:a4 forCategory:? colorIndex:?];
      }
    }

    goto LABEL_11;
  }
}

- (id)componentWithType:(int64_t)a3
{
  if (a3 == 42)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_components[a3];
  }

  return v4;
}

- (void)addComponent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v16 = v4;
    v9 = self->_components[[v7 type]];
    [(AVTMemoji *)self _removeComponent:v9];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v8 assets];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(AVTAssetResourceCache *)self->_resourceCache retainAsset:*(*(&v17 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_components[[v8 type]], a3);
    -[AVTMemoji componentDidChangeForType:animated:](self, "componentDidChangeForType:animated:", [v8 type], v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeComponentWithType:(int64_t)a3
{
  v5 = [(AVTMemoji *)self componentWithType:?];
  [(AVTMemoji *)self _removeComponent:v5];
  [(AVTMemoji *)self componentDidChangeForType:a3 animated:0];
}

- (void)_removeComponent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 assets];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(AVTAssetResourceCache *)self->_resourceCache releaseAsset:*(*(&v15 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    components = self->_components;
    v12 = [v5 type];
    v13 = components[v12];
    components[v12] = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_locked_invalidate
{
  if (!self->_needsUpdate)
  {
    self->_needsUpdate = 1;
    v4 = [(AVTMemoji *)self avatarNode];
    v3 = [v4 renderingOrder];
    [v4 setRenderingOrder:v3 + 1000];
    [v4 setRenderingOrder:v3];
  }
}

- (void)componentDidChangeForType:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 != 42)
  {
    self->_componentDirtyMask |= 1 << a3;
    if (a4)
    {
      self->_componentAnimatedMask |= 1 << a3;
    }

    [(AVTMemoji *)self _locked_invalidate];
  }
}

- (void)componentMaterialDidUpdate:(id)a3
{
  v5 = a3;
  self->_compositorComponentDirtyMask |= 1 << [v5 type];
  if ([v5 type] != 28)
  {
    -[AVTComponentInstance updateMaterialsWithComponent:](self->_componentInstances[[v5 type]], "updateMaterialsWithComponent:", v5);
  }

  if ([v5 type] == 2)
  {
    v4 = 4;
  }

  else if ([v5 type] == 11)
  {
    v4 = 2048;
  }

  else
  {
    if ([v5 type] != 12)
    {
      goto LABEL_10;
    }

    v4 = 4096;
  }

  self->_componentDirtyMask |= v4;
  [(AVTMemoji *)self _locked_invalidate];
LABEL_10:
}

- (void)randomize
{
  [MEMORY[0x1E69DF378] lock];
  [(AVTMemoji *)self resetToDefault];
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.75];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__AVTMemoji_randomize__block_invoke;
  v4[3] = &unk_1E7F49AB0;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__AVTMemoji_randomize__block_invoke_2;
  v3[3] = &unk_1E7F49AD8;
  v3[4] = self;
  _AVTMemojiRandomize(v4, v3);
  [MEMORY[0x1E69DF378] commit];
  [MEMORY[0x1E69DF378] unlock];
}

- (void)setPreset:(id)a3 forCategory:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    if ([v8 category] != a4)
    {
      v10 = avt_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji setPreset:forCategory:animated:];
      }
    }

    os_unfair_lock_lock(&self->_updateLock);
    v11 = [(AVTPresetStore *)&self->_presetStore->super.isa presetForCategory:a4];
    v12 = v11;
    if (v11 == v9 || ([v11 identifier], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15 & 1) != 0))
    {
      os_unfair_lock_unlock(&self->_updateLock);
    }

    else
    {
      if ((a4 - 34) <= 5)
      {
        v5 &= ~(0x3Du >> (a4 - 34));
      }

      v16 = [(AVTPresetStore *)self->_presetStore setPreset:v9 forCategory:a4];
      for (i = 0; i != 40; ++i)
      {
        if ((v16 >> i))
        {
          v18 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 newComponent];
            if (v20)
            {
              if (v19 == v9)
              {
                v21 = v5;
              }

              else
              {
                v21 = 0;
              }

              [(AVTMemoji *)self addComponent:v20 animated:v21];
            }

            else
            {
              v23 = AVTPresetCategoryToComponentType(i);
              if (v23 > 0x2A || ((1 << v23) & 0x40400000001) == 0)
              {
                [(AVTMemoji *)self removeComponentWithType:v23];
              }
            }

            [(AVTMemoji *)self _applyAllColorPresetsForCategory:i];
          }

          else
          {
            v22 = AVTPresetCategoryToComponentType(i);
            if (v22 != 42)
            {
              [(AVTMemoji *)self removeComponentWithType:v22];
            }
          }
        }
      }

      os_unfair_lock_unlock(&self->_updateLock);
    }
  }
}

- (void)addComponentAssetNode:(id)a3 toNode:(id)a4 forBodyParts:(unint64_t)a5
{
  v9 = a3;
  [a4 addChildNode:v9];
  [(AVTAvatar *)self addCustomBehavioursInHierarchy:v9 forBodyParts:a5];
  componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
  if (componentAssetNodeObservationForStickerBlock)
  {
    componentAssetNodeObservationForStickerBlock[2](componentAssetNodeObservationForStickerBlock, self, v9, 0);
  }
}

- (void)removeComponentAssetNodeFromParentNode:(id)a3 forBodyParts:(unint64_t)a4
{
  v6 = a3;
  componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
  v8 = v6;
  if (componentAssetNodeObservationForStickerBlock)
  {
    componentAssetNodeObservationForStickerBlock[2](componentAssetNodeObservationForStickerBlock, self, v6, 1);
    v6 = v8;
  }

  [v6 removeFromParentNode];
  [(AVTAvatar *)self removeCustomBehavioursInHierarchy:v8 forBodyParts:a4];
}

+ (double)skinTextureSize
{
  if (skinTextureSize_onceToken != -1)
  {
    +[AVTMemoji skinTextureSize];
  }

  return 1024.0;
}

void __28__AVTMemoji_skinTextureSize__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  [v0 userInterfaceIdiom];
}

- (CGImage)createSkinCombinedAOImage
{
  v31 = *MEMORY[0x1E69E9840];
  +[AVTMemoji skinTextureSize];
  v4 = v3;
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v6 = CGBitmapContextCreate(0, v4, v4, 8uLL, 4 * v4, v5, 5u);
  CGColorSpaceRelease(v5);
  CGContextSetRGBFillColor(v6, 1.0, 1.0, 1.0, 1.0);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v4;
  v32.size.height = v4;
  CGContextFillRect(v6, v32);
  v23 = [(AVTMemoji *)self componentWithType:7];

  for (i = 0; i != 42; ++i)
  {
    if (i != 5 || !v23)
    {
      v25 = i;
      v8 = [(AVTMemoji *)self componentWithType:?];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v24 = v8;
      v9 = [v8 assets];
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v26 + 1) + 8 * j) ambientOcclusion];
            if (v14)
            {
              v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
              v16 = CGImageSourceCreateWithURL(v15, 0);
              if (v16)
              {
                v17 = v16;
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
                if (ImageAtIndex)
                {
                  v19 = ImageAtIndex;
                  CGContextSetBlendMode(v6, kCGBlendModeDarken);
                  v33.origin.x = 0.0;
                  v33.origin.y = 0.0;
                  v33.size.width = v4;
                  v33.size.height = v4;
                  CGContextDrawImage(v6, v33, v19);
                  CGImageRelease(v19);
                }

                CFRelease(v17);
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v11);
      }

      i = v25;
    }
  }

  Image = CGBitmapContextCreateImage(v6);
  CGContextRelease(v6);
  v21 = *MEMORY[0x1E69E9840];
  return Image;
}

- (void)updateSkinMaterial:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = a3;
  if (!self->_skinAOIsValid)
  {
    [(AVTMemoji *)self _updateSkinAO];
    self->_skinAOIsValid = 1;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [(VFXNode *)self->_headNode model];
  v5 = [v4 materials];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v39 = *v44;
    v8 = @"lips_presence";
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = +[AVTResourceLocator sharedResourceLocator];
        v12 = [AVTResourceLocator pathForMemojiResource:v11 ofType:? inDirectory:? isDirectory:?];
        v13 = [v10 multiply];
        [v13 setContents:v12];

        v14 = [(AVTMemoji *)self facialhairColor];
        [v10 setValue:v14 forKey:@"facialhair_color"];

        v15 = [(AVTMemoji *)self hairColor];
        [v10 setValue:v15 forKey:@"hair_color"];

        v16 = [(AVTMemoji *)self lipsColor];
        [v10 setValue:v16 forKey:@"lipstick_color"];

        v17 = [(AVTMemoji *)self eyebrowsColor];
        [v10 setValue:v17 forKey:@"brow_color"];

        v18 = [(AVTMemoji *)self componentWithType:5];
        [v18 textureAssetPresence];
        v41 = v19;

        v20 = [(AVTMemoji *)self componentWithType:3];
        [v20 textureAssetPresence];
        v40 = v21;

        v22 = [(AVTMemoji *)self componentWithType:1];
        [v22 textureAssetPresence];

        v23 = [(AVTMemoji *)self componentWithType:31];
        v24 = [v23 materialAtIndex:0];
        v25 = [v24 additionalPropertyColors];
        v26 = [v25 objectForKeyedSubscript:@"lips_presence"];

        if (v26)
        {
          v27 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:{COERCE_DOUBLE(__PAIR64__(v40, v41))}];
          [v10 setValue:v27 forKey:@"hairBeardBrows_presence"];

          v29 = AVTGetColorComponents(v26, v28);
        }

        else
        {
          v30 = [(AVTMemoji *)self colorPresetForCategory:10];
          [v30 variation];

          v29 = COERCE_DOUBLE(__PAIR64__(v40, v41));
          v8 = @"hairBeardBrowLips_presence";
        }

        v31 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:v29];
        [v10 setValue:v31 forKey:v8];

        v32 = [(AVTMemoji *)self componentWithType:28];
        v33 = [v32 materialAtIndex:0];
        v34 = [v33 additionalPropertyColors];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __32__AVTMemoji_updateSkinMaterial___block_invoke;
        v42[3] = &unk_1E7F48558;
        v42[4] = v10;
        [v34 enumerateKeysAndObjectsUsingBlock:v42];

        ++v9;
        v8 = @"lips_presence";
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v7);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __32__AVTMemoji_updateSkinMaterial___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForKey:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = AVTGetColorComponents(v5, v7);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696B098] avt_valueWithFloat4:v8];
    [v9 setValue:v10 forKeyPath:v11];
  }
}

- (void)updateEyeLashes
{
  v14 = self->_eyelashes;
  v3 = [(AVTComponentInstance *)self->_componentInstances[2] assetImage];
  if (v3)
  {
    [(VFXNode *)v14 setHidden:0];
    v4 = [(VFXNode *)v14 model];
    v5 = [v4 firstMaterial];
    v6 = [v5 transparent];
    [v6 setContents:v3];

    v7 = [(AVTMemoji *)self componentWithType:2];
    v8 = [v7 materialAtIndex:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 baseColor];
      v11 = [(VFXNode *)v14 model];
      v12 = [v11 firstMaterial];
      v13 = [v12 diffuse];
      [v13 setContents:v10];
    }
  }

  else
  {
    [(VFXNode *)v14 setHidden:1];
  }
}

- (void)updateHighlightsForComponentType:(int64_t)a3
{
  if (a3 == 11)
  {
    v5 = 5;
    v6 = 15;
  }

  else
  {
    if (a3 != 12)
    {
      [AVTMemoji updateHighlightsForComponentType:];
    }

    v5 = 3;
    v6 = 16;
  }

  v7 = [(AVTComponentInstance *)self->_componentInstances[v5] assetNode];
  if (v7)
  {
    v25 = self->_colorPresets[v6][0];
    v8 = [(AVTColorPreset *)v25 makeMaterial];
    v9 = [v8 baseColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] colorWithRed:0.803921569 green:0.803921569 blue:0.803921569 alpha:1.0];
    }

    v12 = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = [v8 additionalPropertyColors];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__AVTMemoji_updateHighlightsForComponentType___block_invoke;
    v32[3] = &unk_1E7F48558;
    v15 = v13;
    v33 = v15;
    [v14 enumerateKeysAndObjectsUsingBlock:v32];

    v16 = self->_components[v5];
    v17 = self->_componentInstances[a3];
    v18 = [(AVTPresetStore *)&self->_presetStore->super.isa presetForCategory:v6];
    v19 = [v18 identifier];
    v20 = [v19 isEqualToString:@"none"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__AVTMemoji_updateHighlightsForComponentType___block_invoke_2;
    v26[3] = &unk_1E7F49B50;
    v31 = v20 ^ 1;
    v27 = v16;
    v28 = v17;
    v29 = v12;
    v30 = v15;
    v21 = v15;
    v22 = v12;
    v23 = v17;
    v24 = v16;
    [v7 enumerateHierarchyUsingBlock:v26];
  }
}

void __46__AVTMemoji_updateHighlightsForComponentType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [MEMORY[0x1E696B098] avt_valueWithFloat4:{AVTGetColorComponents(a3, v6)}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void __46__AVTMemoji_updateHighlightsForComponentType___block_invoke_2(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v3 = [v36 model];
  v4 = [v3 materials];

  if (*(a1 + 64) == 1)
  {
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v5 = [*(a1 + 32) assets];
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v6)
    {
      v7 = v6;
      obj = v4;
      v8 = *v53;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          v11 = [v36 name];
          v12 = [v10 identifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v19 = obj;
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v58 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v49;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v48 + 1) + 8 * j);
                  v25 = [*(a1 + 40) assetImageForAsset:v10];
                  v26 = [v24 emission];
                  [v26 setContents:v25];
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v58 count:16];
              }

              while (v21);
            }

            goto LABEL_27;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_27:
      v4 = obj;
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v5 = v4;
    v14 = [v5 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = [*(*(&v44 + 1) + 8 * k) emission];
          [v18 setContents:0];
        }

        v15 = [v5 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v15);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obja = v4;
  v27 = [obja countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v40 + 1) + 8 * m);
        v32 = *(a1 + 48);
        v33 = [v31 selfIllumination];
        [v33 setContents:v32];

        v34 = *(a1 + 56);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __46__AVTMemoji_updateHighlightsForComponentType___block_invoke_3;
        v39[3] = &unk_1E7F49B28;
        v39[4] = v31;
        [v34 enumerateKeysAndObjectsUsingBlock:v39];
      }

      v28 = [obja countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v28);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_updateSkinAO
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  headNode = self->_headNode;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __26__AVTMemoji__updateSkinAO__block_invoke;
  v27[3] = &unk_1E7F47DB8;
  v27[4] = &v28;
  [(VFXNode *)headNode enumerateHierarchyUsingBlock:v27];
  [v29[5] setContents:0];
  LODWORD(v3) = 1.5;
  [v29[5] setIntensity:v3];
  v21 = [(AVTMemoji *)self componentWithType:7];

  v4 = 0;
  v5 = 0;
  for (i = 0; i != 42; ++i)
  {
    if (i != 5 || !v21)
    {
      v7 = [(AVTMemoji *)self componentWithType:i];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v7;
      v8 = [v7 assets];
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v9)
      {
        v10 = *v24;
        while (2)
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [*(*(&v23 + 1) + 8 * j) ambientOcclusion];
            v13 = v12;
            if (v12)
            {
              v14 = v12;

              if (v4 > 0)
              {

                v5 = v14;
                ++v4;
                goto LABEL_16;
              }

              v5 = v14;
              ++v4;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v23 objects:v34 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  if (v4 > 1)
  {
    v15 = [(AVTMemoji *)self createSkinCombinedAOImage];
    self->_combinedAOImage = v15;
    v16 = v15;

    v5 = v16;
  }

  if (v5)
  {
    [v29[5] setContents:v5];
  }

  else
  {
    v17 = +[AVTResourceLocator sharedResourceLocator];
    v18 = [AVTResourceLocator pathForMemojiResource:v17 ofType:? inDirectory:? isDirectory:?];

    [v29[5] setContents:v18];
  }

  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __26__AVTMemoji__updateSkinAO__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 model];
  if (v5)
  {
    v10 = v5;
    v6 = [v5 firstMaterial];
    v7 = [v6 ambientOcclusion];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v5 = v10;
    *a3 = 1;
  }
}

- (void)updateWithOptions:(unint64_t)a3
{
  if (self->_needsUpdate)
  {
    os_unfair_lock_lock(&self->_updateLock);
    if (self->_needsUpdate)
    {
      [(AVTMemoji *)self _updateWithOptions:a3];
      [(AVTMemoji *)self rebuildSpecializationSettings];
    }

    os_unfair_lock_unlock(&self->_updateLock);
  }
}

- (void)setInstance:(id)a3 forComponentType:(int64_t)a4
{
  v10 = a3;
  v7 = self->_componentInstances[a4];
  v8 = AVTAvatarBodyPartForComponentType(a4);
  v9 = [(AVTComponentInstance *)v7 assetNode];
  [(AVTMemoji *)self removeComponentAssetNodeFromParentNode:v9 forBodyParts:v8];

  objc_storeStrong(&self->_componentInstances[a4], a3);
  if (-[AVTComponentInstance has2DAsset](v7, "has2DAsset") || [v10 has2DAsset])
  {
    self->_compositorComponentDirtyMask |= 1 << a4;
  }

  if (a4 <= 8)
  {
    if (((1 << a4) & 0x3A) != 0)
    {
      if (!-[AVTComponentInstance has3DAsset](v7, "has3DAsset") && ![v10 has3DAsset])
      {
        goto LABEL_11;
      }
    }

    else if (((1 << a4) & 0x1C0) == 0)
    {
      goto LABEL_11;
    }

    [(AVTMemoji *)self _invalidateSkinAO];
  }

LABEL_11:
}

- (BOOL)_addTorsoComponentInstanceIfNeeded
{
  torsoNode = self->_torsoNode;
  if (!torsoNode)
  {
    components = self->_components;
    v5 = self->_components[34];
    if (!v5)
    {
      v6 = avt_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji _addTorsoComponentInstanceIfNeeded];
      }
    }

    v7 = [[AVTComponentInstance alloc] initWithComponent:v5 assetResourceCache:self->_resourceCache];
    [(AVTMemoji *)self setInstance:v7 forComponentType:34];
    v8 = [(AVTComponentInstance *)v7 assetNode];
    v9 = self->_torsoNode;
    self->_torsoNode = v8;

    [(AVTMemoji *)self addComponentAssetNode:self->_torsoNode toNode:self->_bodyComponentContainer forBodyParts:2];
    [(AVTAvatar *)self resetPresentationConfigurationBehavioursInHierarchy:self->_torsoNode forBodyParts:2];
    v10 = [(AVTComponent *)components[28] materialAtIndex:0];
    [(AVTComponent *)v5 setMaterial:v10 atIndex:0];
    [(AVTMemoji *)self componentMaterialDidUpdate:v5];
    bodyComponentContainer = self->_bodyComponentContainer;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__AVTMemoji__addTorsoComponentInstanceIfNeeded__block_invoke;
    v13[3] = &unk_1E7F47B10;
    v13[4] = self;
    [(VFXNode *)bodyComponentContainer enumerateChildNodesUsingBlock:v13];
    [(AVTMemoji *)self _didInstantiateLazyComponentInstanceOfType:34 assetNode:self->_torsoNode];
  }

  return torsoNode == 0;
}

void __47__AVTMemoji__addTorsoComponentInstanceIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 336);
  v3 = [a2 skinner];
  [v3 setSkeleton:v2];
}

- (id)_wrapDeformerDriverInfoForComponentType:(int64_t)a3
{
  if (a3 == 7)
  {
    v3 = 352;
  }

  else
  {
    if (a3 != 35)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v3 = 344;
  }

  v4 = (&self->super.super.isa + v3);
  v5 = *(&self->super.super.isa + v3);
  if (!v5)
  {
    v6 = objc_alloc_init(AVTMemojiWrapDeformerDriverInfo);
    v7 = *v4;
    *v4 = v6;

    v5 = *v4;
  }

  v8 = v5;
LABEL_9:

  return v8;
}

- (id)wrapDeformedDriverNamed:(id)a3 forComponentType:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [*(v7 + 8) objectForKeyedSubscript:v6];
    if (!v9)
    {
      v10 = [@"main" stringByAppendingPathExtension:@"vfxz-world"];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.aa", @"drivers", v6];
      v20 = v10;
      v12 = [v11 stringByAppendingPathComponent:v10];
      v13 = +[AVTResourceLocator sharedResourceLocator];
      v14 = [(AVTResourceLocator *)v13 urlForMemojiAssetAtPath:v12 isDirectory:0];

      v22 = 0;
      v9 = [MEMORY[0x1E69DF388] avt_nodeNamed:v6 forWorldAtURL:v14 options:0 error:&v22];
      v15 = v22;
      if (v15)
      {
        v16 = avt_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji initWithDescriptor:v14 usageIntent:v15 error:?];
        }
      }

      if (!v9)
      {
        v17 = avt_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji wrapDeformedDriverNamed:forComponentType:];
        }
      }

      [v9 setHidden:1];
      [v9 removeFromParentNode];
      [(VFXNode *)self->_bodyComponentContainer addChildNode:v9];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__AVTMemoji_wrapDeformedDriverNamed_forComponentType___block_invoke;
      v21[3] = &unk_1E7F47B10;
      v21[4] = self;
      [v9 enumerateChildNodesUsingBlock:v21];
      [v8[1] setObject:v9 forKeyedSubscript:v6];
      if ([v8[1] count] >= 9)
      {
        v18 = avt_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji wrapDeformedDriverNamed:forComponentType:];
        }
      }

      [(AVTMemoji *)self _didInstantiateLazyComponentInstanceOfType:a4 assetNode:v9];
      if (a4 == 7)
      {
        [(AVTAvatar *)self updateBindingsOfNode:v9];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __54__AVTMemoji_wrapDeformedDriverNamed_forComponentType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 336);
  v3 = [a2 skinner];
  [v3 setSkeleton:v2];
}

- (void)enumerateActiveWrapDeformerDriversForComponentType:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7[2];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__AVTMemoji_enumerateActiveWrapDeformerDriversForComponentType_usingBlock___block_invoke;
    v10[3] = &unk_1E7F49B78;
    v11 = v7;
    v12 = v6;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __75__AVTMemoji_enumerateActiveWrapDeformerDriversForComponentType_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 unsignedIntegerValue] == 1)
  {
    v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateWrapDeformerIsActiveForComponentType:(int64_t)a3
{
  v5 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5[1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke;
    v25[3] = &unk_1E7F49BA0;
    v8 = v5;
    v26 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v25];
    v9 = self->_componentInstances[a3];
    v10 = [(AVTComponentInstance *)v9 assetNode];
    v11 = v10;
    if (a3 == 35)
    {
      [(VFXNode *)self->_bodyComponentContainer convertTransform:self->_skeletonRootNode fromNode:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
      [v11 setTransform:?];
      if ((self->_visibleBodyParts & 2) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((self->_visibleBodyParts & 2) == 0)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_333;
      v17[3] = &unk_1E7F47DB8;
      v17[4] = &v18;
      [v10 enumerateHierarchyUsingBlock:v17];
      if (*(v19 + 24) == 1)
      {
        [(AVTMemoji *)self _applyMorphVariantsForLazyComponentInstanceOfType:a3 assetNode:v11];
      }

      _Block_object_dispose(&v18, 8);
      goto LABEL_10;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308;
    v22[3] = &unk_1E7F49BC8;
    v22[4] = self;
    v24 = a3;
    v23 = v8;
    [v11 enumerateHierarchyUsingBlock:v22];

LABEL_10:
    v12 = v6[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2;
    v13[3] = &unk_1E7F49BF0;
    v14 = v8;
    v15 = self;
    v16 = a3;
    [v12 enumerateKeysAndObjectsUsingBlock:v13];
  }
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3 && [v3 unsignedIntegerValue] == 1)
  {
    v5 = &unk_1F39D93E0;
  }

  else
  {
    v5 = &unk_1F39D93F8;
  }

  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v6];
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 model];

  if (v4)
  {
    v5 = [v3 valueForUndefinedKey:@"wrapDeformerDriverName"];
    if (!v5)
    {
LABEL_22:

      goto LABEL_23;
    }

    v6 = [*(a1 + 32) wrapDeformedDriverNamed:v5 forComponentType:*(a1 + 48)];
    if (!v6)
    {
      v7 = avt_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308_cold_1();
      }
    }

    v8 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedIntegerValue];
      if (v10 == 1003)
      {
        v11 = &unk_1F39D9410;
        goto LABEL_12;
      }

      if (v10 != 1000)
      {
LABEL_13:
        v12 = [v3 deformers];
        v13 = [v12 count];

        if (!v13)
        {
          v14 = [v6 childNodeWithName:@"innerLayer" recursively:1];
          v15 = [v6 childNodeWithName:@"outerLayer" recursively:1];
          v16 = [v3 valueForUndefinedKey:@"wrapDeformerParameters"];
          v17 = [objc_alloc(MEMORY[0x1E69DF320]) initWithInnerLayerNode:v14 outerLayerNode:v15 parameters:v16];
          v22[0] = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
          [v3 setDeformers:v18];

          v19 = [v3 morpher];
          if (v19 && (![v16 bindingMode] || *(a1 + 48) == 7))
          {
            [v3 setValue:v19 forUndefinedKey:@"wrapDeformeMorpherBackup"];
            [v3 setMorpher:0];
          }

          v20 = [v3 skinner];
          if (v20)
          {
            [v3 setValue:v20 forUndefinedKey:@"wrapDeformeSkinnerBackup"];
            [v3 setSkinner:0];
          }
        }

        goto LABEL_22;
      }
    }

    v11 = &unk_1F39D9428;
LABEL_12:
    [*(*(a1 + 40) + 16) setObject:v11 forKeyedSubscript:v5];
    goto LABEL_13;
  }

LABEL_23:

  v21 = *MEMORY[0x1E69E9840];
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_333(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 deformers];
  v4 = [v3 count];

  if (v4)
  {
    [v7 setDeformers:0];
    v5 = [v7 valueForUndefinedKey:@"wrapDeformeMorpherBackup"];
    if (v5)
    {
      [v7 setMorpher:v5];
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v6 = [v7 valueForUndefinedKey:@"wrapDeformeSkinnerBackup"];
    if (v6)
    {
      [v7 setSkinner:v6];
    }
  }
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v8 = avt_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2_cold_1();
    }
  }

  v9 = [v7 unsignedIntegerValue];
  if (v9 > 1001)
  {
    if (v9 == 1002)
    {
      v11 = *(*(a1 + 32) + 16);
      v12 = &unk_1F39D9458;
      goto LABEL_19;
    }

    if (v9 != 1003)
    {
      goto LABEL_15;
    }

    [*(*(a1 + 32) + 16) setObject:&unk_1F39D9458 forKeyedSubscript:v5];
    [*(a1 + 40) _willDeactivateLazyComponentInstanceOfType:*(a1 + 48) assetNode:v6];
    if (*(*(a1 + 40) + 2416))
    {
      [*(*(a1 + 32) + 16) setObject:&unk_1F39D9440 forKeyedSubscript:v5];
    }

LABEL_14:
    v11 = *(*(a1 + 32) + 16);
    v12 = &unk_1F39D9440;
LABEL_19:
    [v11 setObject:v12 forKeyedSubscript:v5];
    goto LABEL_20;
  }

  if (v9 == 1000)
  {
    goto LABEL_14;
  }

  if (v9 == 1001)
  {
    [*(*(a1 + 32) + 16) setObject:&unk_1F39D9458 forKeyedSubscript:v5];
    [*(a1 + 40) _didActivateLazyComponentInstanceOfType:*(a1 + 48) assetNode:v6];
    v10 = *(*(a1 + 40) + 2416);
    if (v10)
    {
      (*(v10 + 16))();
    }

    goto LABEL_20;
  }

LABEL_15:
  v13 = avt_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2_cold_2();
  }

LABEL_20:
}

- (void)_updateWithOptions:(unint64_t)a3
{
  v115 = *MEMORY[0x1E69E9840];
  self->_needsUpdate = 0;
  componentDirtyMask = self->_componentDirtyMask;
  v80 = a3;
  if (!componentDirtyMask)
  {
    v33 = 0;
    v82 = 0;
    goto LABEL_68;
  }

  if ((componentDirtyMask & 0x400000000) != 0)
  {
    visibleBodyParts = self->_visibleBodyParts;
    [(VFXNode *)self->_bodyComponentContainer setHidden:(visibleBodyParts & 2) == 0];
    if ((visibleBodyParts & 2) != 0 && [(AVTMemoji *)self _addTorsoComponentInstanceIfNeeded])
    {
      self->_componentDirtyMask |= 0x800000080uLL;
    }

    [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:35];
    [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:7];
    componentDirtyMask = self->_componentDirtyMask;
  }

  if ((componentDirtyMask & 0x2000000000) != 0)
  {
    v6 = self->_visibleBodyParts;
    [(VFXNode *)self->_handsComponentContainer setHidden:(v6 & 4) == 0];
    if ((v6 & 4) != 0)
    {
      [(AVTMemoji *)self _addHandsComponentInstanceIfNeeded];
    }
  }

  v81 = 0;
  v7 = 0;
  v78 = 0;
  do
  {
    if (v7 > 0x25 || ((1 << v7) & 0x2400000001) == 0) && ((self->_componentDirtyMask >> v7))
    {
      v8 = AVTBodyRegionForComponentType(v7);
      if (v8 != 1 || self->_torsoNode)
      {
        v9 = [(AVTMemoji *)self componentWithType:v7];
        if (v9)
        {
          v10 = [[AVTComponentInstance alloc] initWithComponent:v9 assetResourceCache:self->_resourceCache];
        }

        else
        {
          v10 = 0;
        }

        [(AVTMemoji *)self setInstance:v10 forComponentType:v7];
        if (v7 == 35)
        {
          v11 = self->_components[8];
          v12 = [(AVTComponent *)v11 morphVariant];
          v13 = [v12 isEqualToString:@"variant_age_child"];

          v14 = 0.0;
          if (v13)
          {
            [(AVTComponent *)v11 morphVariantIntensity];
          }

          [(AVTComponentInstance *)v10 setSkinnerVariantIntensity:self->_skeletonRootNode skeleton:v14];
        }

        v15 = [(AVTComponentInstance *)v10 assetNode];
        if (!v15)
        {
          goto LABEL_36;
        }

        if (v7 != 28)
        {
          [(AVTComponentInstance *)v10 updateMaterialsWithComponent:v9];
        }

        if (v8 == 1)
        {
          [(AVTMemoji *)self addComponentAssetNode:v15 toNode:self->_bodyComponentContainer forBodyParts:2];
          [(AVTAvatar *)self resetPresentationConfigurationBehavioursInHierarchy:v15 forBodyParts:2];
          v16 = v81;
          if (!v81)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v81 = v16;
          }
        }

        else
        {
          if (v8)
          {
LABEL_35:
            [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:v7];
LABEL_36:

            goto LABEL_13;
          }

          [(AVTMemoji *)self addComponentAssetNode:v15 toNode:self->_headComponentContainer forBodyParts:1];
          v16 = v78;
          if (!v78)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v78 = v16;
          }
        }

        [v16 addObject:v15];
        goto LABEL_35;
      }
    }

LABEL_13:
    ++v7;
  }

  while (v7 != 42);
  [(AVTMemoji *)self updateEyeLashes];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v17 = v78;
  v18 = [v17 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v106;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v106 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AVTAvatar *)self updateBindingsOfNode:*(*(&v105 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v19);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v22 = v81;
  v23 = [v22 countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v102;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v102 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(AVTAvatar *)self updateBindingsOfNode:*(*(&v101 + 1) + 8 * j)];
      }

      v24 = [v22 countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v24);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v27 = v17;
  v28 = [v27 countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v98;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v98 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v97 + 1) + 8 * k);
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __32__AVTMemoji__updateWithOptions___block_invoke;
        v96[3] = &unk_1E7F47B10;
        v96[4] = self;
        [v32 enumerateHierarchyUsingBlock:v96];
      }

      v29 = [v27 countByEnumeratingWithState:&v97 objects:v112 count:16];
    }

    while (v29);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v33 = v22;
  v34 = [v33 countByEnumeratingWithState:&v92 objects:v111 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v93;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v93 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v92 + 1) + 8 * m);
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __32__AVTMemoji__updateWithOptions___block_invoke_2;
        v91[3] = &unk_1E7F47B10;
        v91[4] = self;
        [v38 enumerateHierarchyUsingBlock:v91];
      }

      v35 = [v33 countByEnumeratingWithState:&v92 objects:v111 count:16];
    }

    while (v35);
  }

  v82 = v27;
  if ([(AVTAvatar *)self optimizeForSnapshot])
  {
    v39 = [(AVTComponentInstance *)self->_componentInstances[5] assetNode];
    [v39 avt_enableSubdivisionOnHierarchyWithQuality:0 animoji:0];

    v40 = [(AVTComponentInstance *)self->_componentInstances[3] assetNode];
    [v40 avt_enableSubdivisionOnHierarchyWithQuality:0 animoji:0];
  }

LABEL_68:
  v41 = 0;
  currentPresetsForVariants = self->_currentPresetsForVariants;
  do
  {
    [(AVTMemoji *)self unapplyVariantDependenciesForPreset:currentPresetsForVariants[v41++] dirtyComponents:self->_componentDirtyMask];
  }

  while (v41 != 40);
  for (n = 0; n != 40; ++n)
  {
    v44 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
    [(AVTMemoji *)self applyVariantDependenciesForPreset:v44 dirtyComponents:self->_componentDirtyMask];
    v45 = currentPresetsForVariants[n];
    currentPresetsForVariants[n] = v44;
  }

  v46 = self->_componentDirtyMask;
  if ((v46 & 0x820) != 0)
  {
    [(AVTMemoji *)self updateHighlightsForComponentType:11];
  }

  v77 = v46;
  v47 = v82;
  if ((v46 & 0x1008) != 0)
  {
    [(AVTMemoji *)self updateHighlightsForComponentType:12];
  }

  [(AVTMemoji *)self updateSkinMaterial:self->_headComponentContainer];
  [(AVTCompositor *)self->_compositor componentDidChangeForTypes:self->_compositorComponentDirtyMask];
  if (v80)
  {
    componentAnimatedMask = 0;
    self->_componentAnimatedMask = 0;
  }

  else
  {
    componentAnimatedMask = self->_componentAnimatedMask;
  }

  if ((self->_componentDirtyMask & ~componentAnimatedMask) != 0)
  {
    v49 = 0;
    v76 = ~componentAnimatedMask;
    v79 = componentAnimatedMask;
    do
    {
      if (((1 << v49) & componentAnimatedMask) == 0 && (self->_componentDirtyMask & (1 << v49)) != 0)
      {
        v51 = self->_components[v49];
        v52 = [(AVTComponent *)v51 morphVariant];
        if (v52)
        {
          v53 = [(AVTMemoji *)self allAssetNodesForComponentType:v49];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v54 = [v53 countByEnumeratingWithState:&v87 objects:v110 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v88;
            do
            {
              for (ii = 0; ii != v55; ++ii)
              {
                if (*v88 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                v58 = *(*(&v87 + 1) + 8 * ii);
                [(AVTComponent *)v51 morphVariantIntensity];
                [(AVTMemoji *)self updateMorphVariantsInNodeHierarchy:v58 componentType:v49 variant:v52 weight:?];
              }

              v55 = [v53 countByEnumeratingWithState:&v87 objects:v110 count:16];
            }

            while (v55);
          }

          v47 = v82;
          componentAnimatedMask = v79;
        }
      }

      ++v49;
    }

    while (v49 != 42);
    [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:self->_componentDirtyMask & v76];
    componentAnimatedMask = self->_componentAnimatedMask;
  }

  if (componentAnimatedMask)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:0.25];
    for (jj = 0; jj != 42; ++jj)
    {
      v60 = self->_componentDirtyMask;
      v61 = self->_componentAnimatedMask;
      if ((v60 & (1 << jj)) != 0 && (v61 & (1 << jj)) != 0)
      {
        v63 = self->_components[jj];
        v64 = [(AVTComponent *)v63 morphVariant];
        if (v64)
        {
          v65 = [(AVTMemoji *)self allAssetNodesForComponentType:jj];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v66 = [v65 countByEnumeratingWithState:&v83 objects:v109 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v84;
            do
            {
              for (kk = 0; kk != v67; ++kk)
              {
                if (*v84 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = *(*(&v83 + 1) + 8 * kk);
                [(AVTComponent *)v63 morphVariantIntensity];
                [(AVTMemoji *)self updateMorphVariantsInNodeHierarchy:v70 componentType:jj variant:v64 weight:?];
              }

              v67 = [v65 countByEnumeratingWithState:&v83 objects:v109 count:16];
            }

            while (v67);
          }

          v47 = v82;
        }

        v61 = self->_componentAnimatedMask;
        v60 = self->_componentDirtyMask;
      }

      [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:v60 & v61];
    }

    [MEMORY[0x1E69DF378] commit];
  }

  if (![(AVTAvatar *)self optimizeForSnapshot])
  {
    v71 = self->_componentInstances[5] != 0;
    v72 = self->_componentInstances[7] && self->_componentInstances[5] != 0;
    if (((self->_componentInstances[5] != 0) & (v77 >> 5)) != 0 || self->_hairPhysicsShouldIgnoreUpperNodes != v72)
    {
      self->_hairPhysicsShouldIgnoreUpperNodes = v72;
      v73 = [(AVTComponentInstance *)self->_componentInstances[5] assetNode];
      if (v73)
      {
        v74 = [(AVTMemoji *)self upperNodesIgnoredByDynamics];
        [(AVTAvatar *)self removeDynamicsInHierarchy:v73];
        [(AVTAvatar *)self addDynamicsInHierarchy:v73 ignoringUpperNodes:v74];
      }
    }
  }

  self->_componentDirtyMask = 0;
  self->_componentAnimatedMask = 0;
  self->_compositorComponentDirtyMask = 0;

  v75 = *MEMORY[0x1E69E9840];
}

void __32__AVTMemoji__updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 336);
  v3 = [a2 skinner];
  [v3 setSkeleton:v2];
}

void __32__AVTMemoji__updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 336);
  v3 = [a2 skinner];
  [v3 setSkeleton:v2];
}

- (id)upperNodesIgnoredByDynamics
{
  if (self->_hairPhysicsShouldIgnoreUpperNodes && ([(AVTComponentInstance *)self->_componentInstances[5] assetNode], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__AVTMemoji_upperNodesIgnoredByDynamics__block_invoke;
    v7[3] = &unk_1E7F47B10;
    v5 = v4;
    v8 = v5;
    [v3 enumerateHierarchyUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __40__AVTMemoji_upperNodesIgnoredByDynamics__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 morpher];

  if (v3)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)allBuiltinAssetNodes
{
  v6[2] = *MEMORY[0x1E69E9840];
  headNode = self->_headNode;
  v6[0] = self->_eyesAndTongue;
  v6[1] = headNode;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_assetNodesForComponentType:(int64_t)a3 includingBuiltInAssetNodes:(BOOL)a4 includingComponentAssetNode:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (!a4)
  {
    goto LABEL_19;
  }

  if (a3 > 33)
  {
    if ((a3 - 38) < 4)
    {
      torsoNode = self->_torsoNode;
      if (torsoNode)
      {
        v22 = 1;
        *&v23[0] = torsoNode;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke_2;
      v17[3] = &unk_1E7F49C18;
      v17[4] = &v19;
      v17[5] = v23;
      [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:35 usingBlock:v17];
      goto LABEL_19;
    }

    if (a3 == 34)
    {
      v9 = self->_torsoNode;
      if (v9)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (a3 != 35)
    {
      goto LABEL_19;
    }

LABEL_18:
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke;
    v18[3] = &unk_1E7F49C18;
    v18[4] = &v19;
    v18[5] = v23;
    [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:a3 usingBlock:v18];
    goto LABEL_19;
  }

  if (a3 > 27)
  {
    if ((a3 - 28) >= 5)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  switch(a3)
  {
    case 2:
      v8 = 320;
      goto LABEL_6;
    case 7:
      goto LABEL_18;
    case 8:
LABEL_5:
      v8 = 296;
LABEL_6:
      v9 = *(&self->super.super.isa + v8);
LABEL_7:
      v22 = 1;
      *&v23[0] = v9;
      break;
  }

LABEL_19:
  if (v5)
  {
    v11 = self->_componentInstances[a3];
    v12 = [(AVTComponentInstance *)v11 assetNode];
    if (v12)
    {
      v13 = v20[3];
      v20[3] = v13 + 1;
      *(v23 + v13) = v12;
    }
  }

  if (v20[3])
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2;
  return result;
}

uint64_t __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2;
  return result;
}

- (id)_componentInstanceAssetNodesForDependencyOfType:(int64_t)a3 isAssetSpecific:(BOOL)a4
{
  if (a3 == 42)
  {
    [AVTMemoji _componentInstanceAssetNodesForDependencyOfType:isAssetSpecific:];
  }

  if (self->_componentInstances[a3])
  {
    v4 = [(AVTMemoji *)self allAssetNodesForComponentType:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __73__AVTMemoji__setMorphWeight_forDependencyVariant_ofType_isAssetSpecific___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  if (v3)
  {
    LODWORD(v4) = *(a1 + 40);
    v5 = v3;
    [v3 setWeight:*(a1 + 32) forTargetNamed:v4];
    v3 = v5;
  }
}

- (void)_setVariantDependenciesEnabled:(BOOL)a3 forPreset:(id)a4 dirtyComponents:(unint64_t)a5
{
  v8 = a4;
  v9 = AVTPresetCategoryToComponentType([v8 category]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke;
  v20[3] = &unk_1E7F49C68;
  v20[5] = a5;
  v20[6] = v9;
  v21 = a3;
  v20[4] = self;
  [v8 enumerateVariantDependenciesOfKind:0 block:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2;
  v18[3] = &unk_1E7F49C68;
  v18[4] = self;
  v18[5] = a5;
  v18[6] = v9;
  v19 = a3;
  [v8 enumerateVariantDependenciesOfKind:1 block:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3;
  v16[3] = &unk_1E7F49C68;
  v16[4] = self;
  v16[5] = a5;
  v16[6] = v9;
  v17 = a3;
  [v8 enumerateVariantDependenciesOfKind:2 block:v16];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_4;
  v11[3] = &unk_1E7F49C90;
  v13 = a5;
  v14 = v9;
  v15 = a3;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v10 enumerateVisibilityDependencies:v11];
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v10 = a3;
  v7 = AVTPresetCategoryToComponentType(a2);
  v8 = *(a1 + 40);
  if ((v8 >> *(a1 + 48)) & 1) != 0 || ((v8 >> v7))
  {
    v9 = 0.0;
    if (*(a1 + 56))
    {
      *&v9 = a4;
    }

    [*(a1 + 32) _setMorphWeight:v10 forDependencyVariant:v7 ofType:0 isAssetSpecific:v9];
  }
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AVTPresetCategoryToComponentType(a2);
  v7 = *(*(a1 + 32) + 384 + 8 * v6);
  v8 = v7;
  v9 = *(a1 + 40);
  if ((v9 >> *(a1 + 48)) & 1) != 0 || ((v9 >> v6))
  {
    memset(v16, 0, sizeof(v16));
    v10 = [v7 assets];
    if ([v10 countByEnumeratingWithState:v16 objects:v17 count:16] && objc_msgSend(**(&v16[0] + 1), "is2DAsset"))
    {
      if (*(a1 + 56))
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 componentInstanceForType:v6];
      [v14 setImageVariant:v13];

      *(*(a1 + 32) + 2384) |= 1 << v6;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AVTPresetCategoryToComponentType(a2);
  v7 = *(*(a1 + 32) + 384 + 8 * v6);
  v8 = v7;
  v9 = *(a1 + 40);
  if ((v9 >> *(a1 + 48)) & 1) != 0 || ((v9 >> v6))
  {
    memset(v16, 0, sizeof(v16));
    v10 = [v7 assets];
    if ([v10 countByEnumeratingWithState:v16 objects:v17 count:16] && objc_msgSend(**(&v16[0] + 1), "is3DAsset"))
    {
      if (*(a1 + 56))
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 componentInstanceForType:v6];
      [v14 setMaterialVariant:v13];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AVTPresetCategoryToComponentType(a2);
  v7 = *(*(a1 + 32) + 384 + 8 * v6);
  v8 = v7;
  v9 = *(a1 + 48);
  if ((v9 >> *(a1 + 56)) & 1) != 0 || ((v9 >> v6))
  {
    memset(v16, 0, sizeof(v16));
    v10 = [v7 assets];
    if ([v10 countByEnumeratingWithState:v16 objects:v17 count:16] && objc_msgSend(**(&v16[0] + 1), "is3DAsset"))
    {
      if (*(a1 + 64))
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 componentInstanceForType:v6];
      [v14 setVisibilityRules:v13 dictatedByCategory:{objc_msgSend(*(a1 + 40), "category")}];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setAssetSpecificVariantDependenciesEnabled:(BOOL)a3 forPreset:(id)a4 dirtyComponents:(unint64_t)a5
{
  v8 = a4;
  v9 = AVTPresetCategoryToComponentType([v8 category]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke;
  v14[3] = &unk_1E7F49CB8;
  v14[4] = self;
  v14[5] = a5;
  v14[6] = v9;
  v15 = a3;
  [v8 enumerateAssetSpecificVariantDependenciesOfKind:0 block:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2;
  v12[3] = &unk_1E7F49CB8;
  v12[4] = self;
  v12[5] = a5;
  v12[6] = v9;
  v13 = a3;
  [v8 enumerateAssetSpecificVariantDependenciesOfKind:1 block:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3;
  v10[3] = &unk_1E7F49CB8;
  v10[4] = self;
  v10[5] = a5;
  v10[6] = v9;
  v11 = a3;
  [v8 enumerateAssetSpecificVariantDependenciesOfKind:2 block:v10];
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v23 = v9;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:v7];

          if (v19)
          {
            v8 = v15;
            if ([v17 is3DAsset])
            {
              v20 = 0.0;
              if (*(a1 + 56))
              {
                *&v20 = 1.0;
              }

              [*(a1 + 32) _setMorphWeight:v15 forDependencyVariant:v22 ofType:1 isAssetSpecific:v20];
            }

            goto LABEL_16;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v9 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v26 = v9;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:v7];

          if (v19)
          {
            v8 = v15;
            if ([v17 is2DAsset])
            {
              if (*(a1 + 56))
              {
                v20 = v15;
              }

              else
              {
                v20 = 0;
              }

              v21 = *(a1 + 32);
              v22 = v20;
              v23 = [v21 componentInstanceForType:v25];
              [v23 setImageVariant:v22];

              *(*(a1 + 32) + 2384) |= 1 << v25;
            }

            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v9 = v26;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v27 = v9;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:v7];

          if (v19)
          {
            v20 = [v17 is3DAsset];
            v8 = v15;
            if (v20)
            {
              if (*(a1 + 56))
              {
                v21 = v15;
              }

              else
              {
                v21 = 0;
              }

              v22 = *(a1 + 32);
              v23 = v21;
              v24 = [v22 componentInstanceForType:v26];
              [v24 setMaterialVariant:v23];
            }

            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v9 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)applyVariantDependenciesForPreset:(id)a3 dirtyComponents:(unint64_t)a4
{
  v6 = a3;
  [(AVTMemoji *)self _setVariantDependenciesEnabled:1 forPreset:v6 dirtyComponents:a4];
  [(AVTMemoji *)self _setAssetSpecificVariantDependenciesEnabled:1 forPreset:v6 dirtyComponents:a4];
}

- (void)unapplyVariantDependenciesForPreset:(id)a3 dirtyComponents:(unint64_t)a4
{
  v6 = a3;
  [(AVTMemoji *)self _setVariantDependenciesEnabled:0 forPreset:v6 dirtyComponents:a4];
  [(AVTMemoji *)self _setAssetSpecificVariantDependenciesEnabled:0 forPreset:v6 dirtyComponents:a4];
}

- (void)updateMorphVariantsInNodeHierarchy:(id)a3 componentType:(int64_t)a4 variant:(id)a5 weight:(float)a6
{
  v10 = a3;
  v11 = a5;
  v12 = AVTComponentTypeToString(a4);
  if (v12)
  {
    v13 = [@"variant_" stringByAppendingString:v12];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke;
    v19[3] = &unk_1E7F47A98;
    v14 = v11;
    v20 = v14;
    v22 = a6;
    v15 = v13;
    v21 = v15;
    [v10 enumerateHierarchyUsingBlock:v19];
    if (a4 == 8)
    {
      v16 = self->_componentInstances[35];
      v17 = [v14 isEqualToString:@"variant_age_child"];
      v18 = 0.0;
      if (v17)
      {
        *&v18 = a6;
      }

      [(AVTComponentInstance *)v16 setSkinnerVariantIntensity:self->_skeletonRootNode skeleton:v18];
    }
  }
}

void __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  v4 = [v3 targets];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke_2;
  v6[3] = &unk_1E7F49CE0;
  v7 = *(a1 + 32);
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 name];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v6 = *(a1 + 40);
    LODWORD(v5) = *(a1 + 56);
  }

  else
  {
    if (![v7 hasPrefix:*(a1 + 48)])
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 40);
    v5 = 0.0;
  }

  [v6 setWeight:a3 forTargetAtIndex:v5];
LABEL_6:
}

- (id)effectiveMorphedNodeForTargetName:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"variant_"])
  {
    v5 = [v4 componentsSeparatedByString:@"_"];
    v6 = [v5 objectAtIndexedSubscript:1];
    v7 = AVTPresetCategoryFromString(v6);
    if (v7 <= 0x27)
    {
      if (((1 << v7) & 0x1E81) != 0)
      {
        v8 = &OBJC_IVAR___AVTMemoji__headNode;
LABEL_7:
        v9 = *(&self->super.super.isa + *v8);

        goto LABEL_10;
      }

      if (((1 << v7) & 0xF000000000) != 0)
      {
        v8 = &OBJC_IVAR___AVTMemoji__torsoNode;
        goto LABEL_7;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = AVTMemoji;
  v9 = [(AVTAvatar *)&v11 effectiveMorphedNodeForTargetName:v4];
LABEL_10:

  return v9;
}

- (void)_applyMorphVariantsForLazyComponentInstanceOfType:(int64_t)a3 assetNode:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 34)
  {
    if (a3 != 35)
    {
      v8 = 0;
      if (a3 != 37)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (a3 == 7)
    {
      v8 = 0x3C000000180;
      v7 = 0x400000004;
      goto LABEL_9;
    }

    v8 = 0;
    if (a3 != 34)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  v8 = 0x3C000000100;
LABEL_9:
  for (i = 0; i != 42; ++i)
  {
    if ((v8 >> i))
    {
      v10 = self->_components[i];
      v11 = [(AVTComponent *)v10 morphVariant];
      if (v11)
      {
        [(AVTComponent *)v10 morphVariantIntensity];
        [(AVTMemoji *)self updateMorphVariantsInNodeHierarchy:v6 componentType:i variant:v11 weight:?];
      }
    }
  }

  for (j = 0; j != 40; ++j)
  {
    if ((v7 >> j))
    {
      v13 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke;
      v14[3] = &unk_1E7F49D08;
      v16 = v8;
      v15 = v6;
      [v13 enumerateVariantDependenciesOfKind:0 block:v14];
    }
  }
}

void __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v7 = a3;
  if ((*(a1 + 40) >> AVTPresetCategoryToComponentType(a2)))
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke_2;
    v9[3] = &unk_1E7F49C40;
    v11 = a4;
    v10 = v7;
    [v8 enumerateHierarchyUsingBlock:v9];
  }
}

void __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  if (v3)
  {
    LODWORD(v4) = *(a1 + 40);
    v5 = v3;
    [v3 setWeight:*(a1 + 32) forTargetNamed:v4];
    v3 = v5;
  }
}

void __66__AVTMemoji__willDeactivateLazyComponentInstanceOfType_assetNode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 morpher];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 targets];
    v4 = [v3 count];

    v2 = v6;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        [v6 setWeight:i forTargetAtIndex:0.0];
        v2 = v6;
      }
    }
  }
}

- (void)updateMorphVariantsInStickerPropNodeHierarchy:(id)a3
{
  v6 = a3;
  v4 = [(AVTMemoji *)self componentWithType:8];
  v5 = [v4 morphVariant];
  if (v5)
  {
    [v4 morphVariantIntensity];
    [(AVTMemoji *)self updateMorphVariantsInNodeHierarchy:v6 componentType:8 variant:v5 weight:?];
  }
}

- (void)setShowsBody:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  [(AVTMemoji *)self setVisibleBodyParts:self->_visibleBodyParts & 0xFFFFFFFFFFFFFFFDLL | v3];
}

- (void)setVisibleBodyParts:(unint64_t)a3
{
  visibleBodyParts = self->_visibleBodyParts;
  if (visibleBodyParts != (a3 | 1))
  {
    self->_visibleBodyParts = a3 | 1;
    v5 = visibleBodyParts ^ a3;
    if (((visibleBodyParts ^ a3) & 2) != 0)
    {
      self->_componentDirtyMask |= 0x400000000uLL;
      [(AVTMemoji *)self _locked_invalidate];
    }

    if ((v5 & 4) != 0)
    {
      self->_componentDirtyMask |= 0x2000000000uLL;

      [(AVTMemoji *)self _locked_invalidate];
    }
  }
}

- (void)setBodyPose:(id)a3
{
  v5 = a3;
  if (self->_bodyPose != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_bodyPose, a3);
    if (v7)
    {
      [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:-1];
    }

    else
    {
      v6 = +[AVTAvatarBodyPose neutralPose];
      [v6 applyToBodySkeletonWithRootJoint:self->_skeletonRootNode ageBodyPoseVariantIntensity:0.0 shoulderWidthBodyPoseVariantIntensity:0.0];
    }

    v5 = v7;
  }
}

- (void)updateBodyPoseForSkinnerVariantsWithDirtyComponents:(unint64_t)a3
{
  if ((a3 & 0x4000000100) != 0)
  {
    v11 = [(AVTMemoji *)self componentWithType:8];
    [v11 bodyPoseVariantIntensity];
    v6 = v5;
    v7 = [(AVTMemoji *)self componentWithType:38];
    [v7 bodyPoseVariantIntensity];
    LODWORD(v9) = v8;
    LODWORD(v10) = v6;
    [(AVTAvatarBodyPose *)self->_bodyPose applyToBodySkeletonWithRootJoint:self->_skeletonRootNode ageBodyPoseVariantIntensity:v10 shoulderWidthBodyPoseVariantIntensity:v9];
  }
}

- (void)rebuildSpecializationSettings
{
  v16 = self->_specializationSettings;
  specializationSettings = self->_specializationSettings;
  self->_specializationSettings = 0;

  v4 = AVTMergeSpecializationSettings(self->_specializationSettings, self->_eyesAndTongueSpecializationSettings);
  v5 = self->_specializationSettings;
  self->_specializationSettings = v4;

  for (i = 0; i != 40; ++i)
  {
    v7 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
    v8 = self->_specializationSettings;
    v9 = [v7 specializationSettings];
    v10 = AVTMergeSpecializationSettings(v8, v9);
    v11 = self->_specializationSettings;
    self->_specializationSettings = v10;
  }

  v12 = [(NSDictionary *)v16 objectForKeyedSubscript:@"dynamics"];
  v13 = [(NSDictionary *)self->_specializationSettings objectForKeyedSubscript:@"dynamics"];
  if (([v12 isEqualToDictionary:v13] & 1) == 0)
  {
    [(AVTAvatar *)self physicsSpecializationSettingsDidChange];
  }

  v14 = [(NSDictionary *)v16 objectForKeyedSubscript:@"ARKit disabled blendshapes"];
  v15 = [(NSDictionary *)self->_specializationSettings objectForKeyedSubscript:@"ARKit disabled blendshapes"];
  if (([v14 isEqualToArray:v15] & 1) == 0)
  {
    [(AVTAvatar *)self disabledBlendshapesSpecializationSettingsDidChange];
  }
}

- (void)setComponentAssetNodeObservationForStickerBlock:(id)a3
{
  if (self->_componentAssetNodeObservationForStickerBlock != a3)
  {
    v4 = MEMORY[0x1BFB0EC20](a3, a2);
    componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
    self->_componentAssetNodeObservationForStickerBlock = v4;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)addDerivedNodesMatchingStickerPattern:(id)a3 toArray:(id)a4 options:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke;
  v27 = &unk_1E7F49D30;
  v28 = &v34;
  v29 = &v30;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v26(v25, v10);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v38 count:16];
      if (v11)
      {
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v26(v25, *(*(&v21 + 1) + 8 * i));
          }

          v11 = [v10 countByEnumeratingWithState:&v21 objects:v38 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v10 = avt_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji addDerivedNodesMatchingStickerPattern:toArray:options:];
      }
    }
  }

  if (*(v35 + 24) == 1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_364;
    v18[3] = &unk_1E7F49D80;
    v20 = a5;
    v19 = v9;
    [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:35 usingBlock:v18];
  }

  if (*(v31 + 24) == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_3;
    v15[3] = &unk_1E7F49D80;
    v17 = a5;
    v16 = v9;
    [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:7 usingBlock:v15];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  v14 = *MEMORY[0x1E69E9840];
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = AVTComponentTypeToString(0x23uLL);
  v4 = [v9 hasPrefix:v3];

  if (v4)
  {
    v5 = 32;
    v6 = v9;
  }

  else
  {
    v7 = AVTComponentTypeToString(7uLL);
    v8 = [v9 hasPrefix:v7];

    v6 = v9;
    if (!v8)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  *(*(*(a1 + v5) + 8) + 24) = 1;
LABEL_6:
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_364(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_2;
  v4[3] = &unk_1E7F49D58;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  [a2 enumerateHierarchyUsingBlock:v4];
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AVTNodeMatchesHierarchyEnumerationOptions(v3, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_4;
  v4[3] = &unk_1E7F49D58;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  [a2 enumerateHierarchyUsingBlock:v4];
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AVTNodeMatchesHierarchyEnumerationOptions(v3, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)initWithDescriptor:(void *)a1 usageIntent:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v4 = [a2 description];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setColorPreset:(unint64_t)a1 forCategory:colorIndex:.cold.2(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = AVTPresetCategoryToString(a1);
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPreset:forCategory:animated:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_addTorsoComponentInstanceIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)wrapDeformedDriverNamed:forComponentType:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)wrapDeformedDriverNamed:forComponentType:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end