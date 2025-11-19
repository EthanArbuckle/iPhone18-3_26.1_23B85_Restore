@interface AVTAvatar
+ (AVTAvatar)avatarWithDataRepresentation:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5;
+ (AVTAvatar)avatarWithDescriptor:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5;
+ (double)applyGazeCorrectionWithInputAngle:(int32x4_t)a1 translation:(__n128)a2;
+ (void)preloadAvatar:(id)a3;
- ($9556BFE61B967AE735F1A0D700315F88)morphInfoForARKitBlendShapeIndex:(SEL)a3;
- (AVTAvatar)init;
- (BOOL)arMode;
- (BOOL)usesSkinningForEyeOrientation;
- (VFXNode)avatarNode;
- (VFXNode)headNode;
- (__n128)arOffset;
- (double)physicsDownforceForNodeNamed:(id)a3;
- (float)arScale;
- (float)opacity;
- (id)_cachePresentationConfigurationShaderModifiersForMaterial:(id)a3 cacheKey:(id)a4 shaderModifiersBuilder:(id)a5;
- (id)_objectsInDescriptors:(id)a3 andHierarchy:(id)a4 passingTest:(id)a5;
- (id)bakedAnimationCopy;
- (id)bakedAnimationPlayer;
- (id)blendShapeNameForARKitBlendShapeIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)debugPoseJSONRepresentation;
- (id)effectiveMorphedNodeForTargetName:(id)a3;
- (id)newDescriptor;
- (id)nodesMatchingStickerPattern:(id)a3 inHierarchy:(id)a4 options:(unint64_t)a5 includingDerivedNodes:(BOOL)a6;
- (id)pose;
- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5;
- (id)stickerPhysicsStateIdentifier;
- (int64_t)blendShapeIndexForARKitBlendShapeName:(id)a3;
- (uint64_t)setupEyeOrientationAndReflections;
- (void)_addNodesMatchingStickerPattern:(id)a3 inHierarchy:(id)a4 toArray:(id)a5 options:(unint64_t)a6;
- (void)_applyBlendShapes:(const float *)a3 parameters:(const float *)a4;
- (void)_applyBlendShapesWithTrackingData:(id *)a3;
- (void)_applyHeadPoseWithTrackingData:(id *)a3 gazeCorrection:(BOOL)a4 pointOfView:(id)a5;
- (void)_avatarNodeAndHeadNodeAreNowAvailable;
- (void)_preparePrePass:(BOOL)a3;
- (void)_resetFaceToRandomPosition;
- (void)_restoreOriginalShaderModifiersOfMaterial:(id)a3;
- (void)_transitionFromPose:(id)a3 toPose:(id)a4 bakedAnimationBlendFactor:(double)a5 duration:(double)a6 delay:(double)a7 timingFunction:(id)a8 timingAnimation:(id)a9 completionHandler:(id)a10;
- (void)_updateARModeShaderModifiersForMaterial:(id)a3 withOnTopMask:(BOOL)a4;
- (void)addCustomBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4;
- (void)addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)a3 block:(id)a4;
- (void)addDynamicsInHierarchy:(id)a3 ignoringUpperNodes:(id)a4;
- (void)addMorpherDrivenMaterialsInHierarchy:(id)a3;
- (void)addMorphingSkinningControllersInHierarchy:(id)a3;
- (void)animatePhysicsScaleFactor:(double)a3 duration:(double)a4;
- (void)applyBlendShapesWithTrackingInfo:(id)a3;
- (void)arMode;
- (void)avatarCommonInit;
- (void)avatarNode;
- (void)dealloc;
- (void)didAddToScene:(id)a3;
- (void)disabledBlendshapesSpecializationSettingsDidChange;
- (void)enumerateMorphInfoForCustomBlendShapeName:(id)a3 usingBlock:(id)a4;
- (void)evaluateDynamicsAtTime:(double)a3;
- (void)headNode;
- (void)newDescriptor;
- (void)opacity;
- (void)pauseBakedAnimation;
- (void)physicsSpecializationSettingsDidChange;
- (void)pose;
- (void)removeCustomBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4;
- (void)removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)a3;
- (void)removeDynamicsInHierarchy:(id)a3;
- (void)removeMorpherDrivenMaterialsInHierarchy:(id)a3;
- (void)removeMorphingSkinningControllersInHierarchy:(id)a3;
- (void)resetCustomBehaviours;
- (void)resetDynamics;
- (void)resetMorpherDrivenMaterials;
- (void)resetMorphingSkinningControllers;
- (void)resetPresentationConfigurationBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4;
- (void)resumeBakedAnimation;
- (void)setArMode:(BOOL)a3;
- (void)setBakedAnimationReferenceTime:(double)a3;
- (void)setOpacity:(float)a3;
- (void)setPose:(id)a3;
- (void)setPresentationConfiguration:(id)a3;
- (void)setupEyeOrientationAndReflections;
- (void)setupMorphInfo;
- (void)setupMorphInfoForChangeInSubHierarchy;
- (void)stickerPhysicsStateIdentifier;
- (void)stopTransitionAnimation;
- (void)stopTransitionAnimationWithBlendOutDuration:(double)a3;
- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 completionHandler:(id)a7;
- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 timingAnimation:(id)a7 completionHandler:(id)a8;
- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 timingFunction:(id)a7 completionHandler:(id)a8;
- (void)transitionToPose:(id)a3 duration:(double)a4 delay:(double)a5 completionHandler:(id)a6;
- (void)update;
- (void)updateAfterAnimationsEvaluatedAtTime:(double)a3 renderer:(id)a4;
- (void)updateBindings;
- (void)updateBindingsOfNode:(id)a3;
- (void)updateEyeOrientationAndReflections;
- (void)updateMorpherDrivenMaterialsWithDeltaTime:(double)a3;
- (void)updatePoseWithCVAFaceTrackingAnimationDictionary:(void *)a1 neckPosition:(uint64_t)a2 neckOrientation:(void *)a3 applySmoothing:(int)a4;
- (void)updatePoseWithFaceTrackingData:(id)a3 applySmoothing:(BOOL)a4;
- (void)updatePoseWithPoseProvider:(id)a3 applySmoothing:(BOOL)a4;
- (void)willRemoveFromWorld:(id)a3;
@end

@implementation AVTAvatar

- (void)avatarCommonInit
{
  if (AVTInitializeShaderCache_onceToken != -1)
  {
    AVTInitializeShaderCache_cold_1();
  }

  v3 = objc_alloc_init(AVTPhysicsController);
  physicsController = self->_physicsController;
  self->_physicsController = v3;

  [(AVTPhysicsController *)self->_physicsController setDelegate:self];
  self->_didUpdateAtTimeLock._os_unfair_lock_opaque = 0;
}

- (AVTAvatar)init
{
  v5.receiver = self;
  v5.super_class = AVTAvatar;
  v2 = [(AVTAvatar *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVTAvatar *)v2 avatarCommonInit];
    v3->_physicsScaleFactor = 1.0;
  }

  return v3;
}

- (void)dealloc
{
  free(self->_morphInfoFromARKitBlendShapeIndex);
  free(self->_friendlyPoseMorphInfos);
  v3.receiver = self;
  v3.super_class = AVTAvatar;
  [(AVTAvatar *)&v3 dealloc];
}

- (__n128)arOffset
{
  v1 = [a1 specializationSettings];
  v2 = [v1 objectForKeyedSubscript:@"AR"];

  v3 = [v2 objectForKeyedSubscript:@"offset"];
  v4 = [v3 objectForKeyedSubscript:@"x"];
  [v4 floatValue];
  v13 = v5;

  v6 = [v3 objectForKeyedSubscript:@"y"];
  [v6 floatValue];
  v12 = v7;

  v8 = [v3 objectForKeyedSubscript:@"z"];
  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

- (float)arScale
{
  v2 = [(AVTAvatar *)self specializationSettings];
  v3 = [v2 objectForKeyedSubscript:@"AR"];

  v4 = [v3 objectForKeyedSubscript:@"scale"];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (double)physicsDownforceForNodeNamed:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatar *)self specializationSettings];
  v6 = [v5 objectForKeyedSubscript:@"dynamics"];

  v7 = [v6 objectForKeyedSubscript:@"apply downforce to"];
  v8 = [v6 objectForKey:@"downforce multiplier"];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0xBFF0000000000000;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__AVTAvatar_physicsDownforceForNodeNamed___block_invoke;
  v15[3] = &unk_1E7F49150;
  v12 = v4;
  v16 = v12;
  v17 = &v19;
  v18 = v11;
  [v7 enumerateObjectsUsingBlock:v15];
  v13 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v13;
}

double __42__AVTAvatar_physicsDownforceForNodeNamed___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isEqualToString:a2])
  {
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (void)physicsSpecializationSettingsDidChange
{
  [(AVTAvatar *)self resetDynamics];
  physicsController = self->_physicsController;

  [(AVTPhysicsController *)physicsController downforcesDidChange];
}

- (void)_avatarNodeAndHeadNodeAreNowAvailable
{
  v3 = [(AVTAvatar *)self headNode];
  headNode = self->_headNode;
  self->_headNode = v3;

  v5 = [(AVTAvatar *)self avatarNode];
  avatarNode = self->_avatarNode;
  self->_avatarNode = v5;

  if (!self->_headNode || (v7 = self->_avatarNode) == 0)
  {
    [AVTAvatar _avatarNodeAndHeadNodeAreNowAvailable];
  }

  v8 = [(VFXNode *)v7 childNodeWithName:@"L_eye" recursively:1];
  leftEye = self->_leftEye;
  self->_leftEye = v8;

  v10 = [(VFXNode *)self->_avatarNode childNodeWithName:@"R_eye" recursively:1];
  rightEye = self->_rightEye;
  self->_rightEye = v10;

  v12 = [(VFXNode *)self->_avatarNode childNodeWithName:@"head_JNT" recursively:1];
  neckNode = self->_neckNode;
  self->_neckNode = v12;

  v14 = [(VFXNode *)self->_avatarNode childNodeWithName:@"root_JNT" recursively:1];
  rootJointNode = self->_rootJointNode;
  self->_rootJointNode = v14;

  [(VFXNode *)self->_rootJointNode setPosition:0.0];
  [(VFXNode *)self->_rootJointNode setOrientation:*&_PromotedConst];
  [(AVTAvatar *)self arScale];
  self->_arScale = v16;
  [(AVTAvatar *)self arOffset];
  *self->_arOffset = v17;
  v18 = [(VFXNode *)self->_avatarNode animationPlayerForKey:@"AVTPuppetAnimationGroup"];
  v19 = [v18 animation];
  v20 = [v19 caAnimation];
  bakedAnimation = self->_bakedAnimation;
  self->_bakedAnimation = v20;

  [(AVTAvatar *)self setupMorphInfo];

  [(AVTAvatar *)self setupEyeOrientationAndReflections];
}

- (VFXNode)headNode
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar headNode];
  }

  return 0;
}

- (VFXNode)avatarNode
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar avatarNode];
  }

  return 0;
}

- (void)setBakedAnimationReferenceTime:(double)a3
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    [(CAAnimation *)self->_bakedAnimation setBeginTime:a3];
    [(CAAnimation *)self->_bakedAnimation setTimeOffset:0.0];
    v7 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:self->_bakedAnimation];
    v6 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:v7];
    [v6 setTimeSource:1];
    [v6 setTimeOrigin:1];
    [(VFXNode *)self->_avatarNode addAnimationPlayer:v6 forKey:@"AVTPuppetAnimationGroup"];
  }
}

- (void)pauseBakedAnimation
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    avatarNode = self->_avatarNode;

    [(VFXNode *)avatarNode removeAnimationForKey:@"AVTPuppetAnimationGroup"];
  }
}

- (void)resumeBakedAnimation
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    v5 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:self->_bakedAnimation];
    v4 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:v5];
    [v4 setTimeSource:1];
    [v4 setTimeOrigin:1];
    [(VFXNode *)self->_avatarNode addAnimationPlayer:v4 forKey:@"AVTPuppetAnimationGroup"];
  }
}

- (id)bakedAnimationCopy
{
  bakedAnimation = self->_bakedAnimation;
  if (bakedAnimation)
  {
    bakedAnimation = [(CAAnimation *)bakedAnimation copy];
    v2 = vars8;
  }

  return bakedAnimation;
}

- (id)bakedAnimationPlayer
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    if (!bakedAnimationPlayer_lazy)
    {
      v5 = [(VFXNode *)self->_avatarNode animationPlayerForKey:@"AVTPuppetAnimationGroup"];
      v6 = self->_bakedAnimationPlayer_lazy;
      self->_bakedAnimationPlayer_lazy = v5;

      bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    }

    v7 = bakedAnimationPlayer_lazy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_restoreOriginalShaderModifiersOfMaterial:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, @"kAVTOriginalShaderModifiers");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = 0;
LABEL_6:
      [v5 setShaderModifiers:v6];
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = v4;
      goto LABEL_6;
    }

    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar _restoreOriginalShaderModifiersOfMaterial:];
    }
  }

LABEL_10:
}

- (id)_cachePresentationConfigurationShaderModifiersForMaterial:(id)a3 cacheKey:(id)a4 shaderModifiersBuilder:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_getAssociatedObject(v7, v8);
  if (!v10)
  {
    v11 = objc_getAssociatedObject(v7, @"kAVTOriginalShaderModifiers");
    if (!v11)
    {
      v13 = [v7 shaderModifiers];
      if ([v13 count])
      {
        v14 = v13;
      }

      else
      {
        v14 = [MEMORY[0x1E695DFB0] null];
      }

      v12 = v14;
      objc_setAssociatedObject(v7, @"kAVTOriginalShaderModifiers", v14, 0x303);
      goto LABEL_14;
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v12;
        v13 = v12;
LABEL_14:
        v10 = v9[2](v9, v13);
        objc_setAssociatedObject(v7, v8, v10, 0x303);

        goto LABEL_15;
      }

      v15 = avt_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar _restoreOriginalShaderModifiersOfMaterial:];
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (void)_updateARModeShaderModifiersForMaterial:(id)a3 withOnTopMask:(BOOL)a4
{
  v6 = a3;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__AVTAvatar__updateARModeShaderModifiersForMaterial_withOnTopMask___block_invoke;
    v8[3] = &__block_descriptor_33_e36___NSDictionary_16__0__NSDictionary_8l;
    v9 = a4;
    v7 = [(AVTAvatar *)self _cachePresentationConfigurationShaderModifiersForMaterial:v6 cacheKey:@"kAVTARShaderModifiers" shaderModifiersBuilder:v8];
    [v6 setShaderModifiers:v7];
  }

  else
  {
    [(AVTAvatar *)self _restoreOriginalShaderModifiersOfMaterial:v6];
  }
}

id __67__AVTAvatar__updateARModeShaderModifiersForMaterial_withOnTopMask___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = @"#pragma body\n#ifdef USE_COLOR1_OUTPUT\n_output.color1.rg = half2(1.h, 1.h);\n#endif\n";
  if (*(a1 + 32))
  {
    v4 = @"#pragma body\n#ifdef USE_COLOR1_OUTPUT\n_output.color1.rg = 1.h - half2(onTopMask.sample(sampler(), _surface.diffuseTexcoord).rg);\n#endif\n";
  }

  v5 = *MEMORY[0x1E69DF3B0];
  v6 = v4;
  v7 = [v3 objectForKeyedSubscript:v5];
  v8 = AVTMergeShaderModifiersForEntryPointWithPartsAndCode(0, @"#pragma arguments\ntexture2d onTopMask\n", v6, v7);;

  if ([v3 count])
  {
    v9 = [v3 mutableCopy];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  else
  {
    v12 = v5;
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)arMode
{
  if ((arMode_done & 1) == 0)
  {
    arMode_done = 1;
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar arMode];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)a3
{
  v3 = a3;
  if ((setArMode__done & 1) == 0)
  {
    setArMode__done = 1;
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar setArMode:];
    }
  }

  if (v3)
  {
    v6 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v6 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v7 = v6;
  [(AVTAvatar *)self setPresentationConfiguration:v6];
}

- (void)setPresentationConfiguration:(id)a3
{
  v5 = a3;
  if (self->_presentationConfiguration != v5)
  {
    v14 = v5;
    v6 = [(AVTPresentationConfiguration *)v5 usesAR];
    v7 = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    [(AVTAvatar *)self removePresentationConfigurationBehavioursInHierarchy:self->_avatarNode forBodyParts:-1];
    objc_storeStrong(&self->_presentationConfiguration, a3);
    [(AVTAvatar *)self resetPresentationConfigurationBehavioursInHierarchy:self->_avatarNode forBodyParts:-1];
    v5 = v14;
    if (v6 != v7)
    {
      v8.i32[0] = 1.0;
      if (v6)
      {
        v8.i32[0] = LODWORD(self->_arScale);
      }

      v13 = vdupq_lane_s32(v8, 0);
      [(VFXNode *)self->_neckNode scale:*&v8];
      v11 = vmvnq_s8(vceqq_f32(v10, v13));
      v11.i32[3] = v11.i32[2];
      v5 = v14;
      if ((vmaxvq_u32(v11) & 0x80000000) != 0)
      {
        [MEMORY[0x1E69DF378] begin];
        [(VFXNode *)self->_neckNode setScale:*vdupq_lane_s32(v12, 0).i64];
        [MEMORY[0x1E69DF378] commit];
        v5 = v14;
      }
    }
  }
}

- (void)resetPresentationConfigurationBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4
{
  presentationConfiguration = self->_presentationConfiguration;
  v6 = a3;
  v7 = [(AVTPresentationConfiguration *)presentationConfiguration usesAR];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke;
  v24[3] = &unk_1E7F47B10;
  v24[4] = self;
  [v6 enumerateHierarchyUsingBlock:v24];

  v8 = [(AVTAvatar *)self specializationSettings];
  v9 = [v8 objectForKeyedSubscript:@"AR"];

  v10 = [v9 objectForKeyedSubscript:@"additional geometries"];
  if ([v10 count])
  {
    avatarNode = self->_avatarNode;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke_2;
    v21[3] = &unk_1E7F49198;
    v22 = v10;
    v23 = v7;
    [(VFXNode *)avatarNode enumerateChildNodesUsingBlock:v21];
  }

  v12 = [v9 objectForKeyedSubscript:@"skinner"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"normal node"];
    v15 = [(VFXNode *)self->_avatarNode childNodeWithName:v14 recursively:1];
    [v15 setHidden:v7];
    v16 = [v13 objectForKeyedSubscript:@"AR node"];
    v17 = [(VFXNode *)self->_avatarNode childNodeWithName:v16 recursively:1];
    v18 = [v17 morpher];

    if (!v18)
    {
      v19 = [v15 morpher];
      v20 = [v19 copy];
      [v17 setMorpher:v20];
    }

    [v17 setHidden:v7 ^ 1];
  }
}

void __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 model];
  v4 = [v3 materials];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 customMaterialPropertyNames];
        v11 = [v10 containsObject:@"onTopMask"];

        [*(a1 + 32) _updateARModeShaderModifiersForMaterial:v9 withOnTopMask:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 name];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = [v7 name];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      [v7 setHidden:(*(a1 + 40) & 1) == 0];
    }
  }
}

- (void)updateBindings
{
  v4 = [(AVTAvatar *)self headNode];
  v3 = [v4 parentNode];
  [(AVTAvatar *)self updateBindingsOfNode:v3];
}

- (void)updateBindingsOfNode:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_headNode || !self->_morphInfoFromARKitBlendShapeIndex)
  {
    [AVTAvatar updateBindingsOfNode:];
  }

  v5 = v4;
  strcpy(v9, "morpher.weights[000]");
  strcpy(v8, "morpher.weights[000]");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AVTAvatar_updateBindingsOfNode___block_invoke;
  v7[3] = &unk_1E7F491E8;
  v7[4] = self;
  v7[5] = v9;
  v7[6] = v8;
  [v4 enumerateHierarchyUsingBlock:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __34__AVTAvatar_updateBindingsOfNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 24) != v3)
  {
    v5 = [v3 morpher];
    if (v5)
    {
      [v4 removeAllBindings];
      v6 = [v5 targets];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __34__AVTAvatar_updateBindingsOfNode___block_invoke_2;
      v7[3] = &unk_1E7F491C0;
      v7[4] = *(a1 + 32);
      v8 = v4;
      v9 = *(a1 + 40);
      [v6 enumerateObjectsUsingBlock:v7];
    }
  }
}

uint64_t __34__AVTAvatar_updateBindingsOfNode___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = [a2 name];
  if (AVTMorphTargetNameIsUsedForBindings(v14))
  {
    v5 = [*(a1 + 32) effectiveMorphedNodeForTargetName:v14];
    v6 = v5;
    if (v5)
    {
      if (v5 != *(a1 + 40))
      {
        v7 = [v5 morpher];
        v8 = [v7 _weightIndexForTargetNamed:v14];

        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = ((v8 * 0xA3D70A3D70A3D70BLL) >> 64) + v8;
          *(*(a1 + 48) + 16) = (v9 < 0) + (v9 >> 6) + 48;
          *(*(a1 + 48) + 17) = v8 / 10 + 48;
          *(*(a1 + 48) + 18) = v8 % 10 + 48;
          *(*(a1 + 56) + 16) = a3 / 0x64 + 48;
          *(*(a1 + 56) + 17) = a3 / 0xA + 48;
          *(*(a1 + 56) + 18) = (a3 % 0xA) | 0x30;
          v10 = *(a1 + 40);
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(a1 + 56)];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(a1 + 48)];
          [v10 bindAnimatablePath:v11 toObject:v6 withKeyPath:v12 options:0];
        }
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)resetCustomBehaviours
{
  [(AVTAvatar *)self resetMorphingSkinningControllers];
  [(AVTAvatar *)self resetPresentationConfigurationBehavioursInHierarchy:self->_avatarNode forBodyParts:-1];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)addCustomBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4
{
  v6 = a3;
  [(AVTAvatar *)self addMorphingSkinningControllersInHierarchy:v6];
  [(AVTAvatar *)self resetPresentationConfigurationBehavioursInHierarchy:v6 forBodyParts:a4];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)removeCustomBehavioursInHierarchy:(id)a3 forBodyParts:(unint64_t)a4
{
  [(AVTAvatar *)self removeMorphingSkinningControllersInHierarchy:a3, a4];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)disabledBlendshapesSpecializationSettingsDidChange
{
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    v3 = [(AVTAvatar *)self specializationSettings];
    v9 = [v3 objectForKeyedSubscript:@"ARKit disabled blendshapes"];

    v4 = 0;
    for (i = 0; i != 52; ++i)
    {
      v6 = AVTBlendShapeLocationFromARIndex(i);
      v7 = [v9 containsObject:v6];
      v8 = &self->_morphInfoFromARKitBlendShapeIndex[v4];
      v8->var3 = v7 ^ 1;
      if (((v7 ^ 1) & 1) == 0)
      {
        [v8->var0 setWeight:v8->var2 forTargetAtIndex:0.0];
      }

      ++v4;
    }
  }
}

- (void)resetMorphingSkinningControllers
{
  [(AVTAvatar *)self resetDynamics];

  [(AVTAvatar *)self resetMorpherDrivenMaterials];
}

- (void)addMorphingSkinningControllersInHierarchy:(id)a3
{
  v4 = a3;
  [(AVTAvatar *)self addDynamicsInHierarchy:v4 ignoringUpperNodes:0];
  [(AVTAvatar *)self addMorpherDrivenMaterialsInHierarchy:v4];
}

- (void)removeMorphingSkinningControllersInHierarchy:(id)a3
{
  v4 = a3;
  [(AVTAvatar *)self removeDynamicsInHierarchy:v4];
  [(AVTAvatar *)self removeMorpherDrivenMaterialsInHierarchy:v4];
}

- (id)_objectsInDescriptors:(id)a3 andHierarchy:(id)a4 passingTest:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__AVTAvatar__objectsInDescriptors_andHierarchy_passingTest___block_invoke;
    v12[3] = &unk_1E7F49210;
    v13 = v7;
    v14 = v9;
    v15 = &v16;
    [v8 enumerateHierarchyUsingBlock:v12];
    v10 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__AVTAvatar__objectsInDescriptors_andHierarchy_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          v10 = *(*(*(a1 + 48) + 8) + 40);
          if (!v10)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v12 = *(*(a1 + 48) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(*(a1 + 48) + 8) + 40);
          }

          [v10 addObject:{v9, v15}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resetDynamics
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_avatarNode)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_dynamics;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * v7++) resetTarget];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    dynamics = self->_dynamics;
    self->_dynamics = 0;

    v9 = [(AVTAvatar *)self upperNodesIgnoredByDynamics];
    [(AVTAvatar *)self addDynamicsInHierarchy:self->_avatarNode ignoringUpperNodes:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addDynamicsInHierarchy:(id)a3 ignoringUpperNodes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[AVTAvatar optimizeForSnapshot](self, "optimizeForSnapshot") || [v7 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__AVTAvatar_addDynamicsInHierarchy_ignoringUpperNodes___block_invoke;
    v8[3] = &unk_1E7F49238;
    v8[4] = self;
    [AVTPhysicalizedMorpherDynamic enumerateDynamicsInHierarchy:v6 forAvatar:self ignoredUpperNodes:v7 usingBlock:v8];
    [AVTPhysicalizedSkeletonDynamic enumerateDynamicsInHierarchy:v6 forAvatar:self usingBlock:v8];
    [AVTSpringDynamic enumerateDynamicsInHierarchy:v6 forAvatar:self usingBlock:v8];
  }
}

void __55__AVTAvatar_addDynamicsInHierarchy_ignoringUpperNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = v5;

    v3 = v8;
    v4 = *(*(a1 + 32) + 128);
  }

  [v4 addObject:v3];
}

- (void)removeDynamicsInHierarchy:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(AVTAvatar *)self _objectsInDescriptors:self->_dynamics andHierarchy:a3 passingTest:&__block_literal_global_169];
  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) resetTarget];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_dynamics removeObjectsInArray:v5];
    if (![(NSMutableArray *)self->_dynamics count])
    {
      dynamics = self->_dynamics;
      self->_dynamics = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)evaluateDynamicsAtTime:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dynamics;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) evaluateAtTime:self->_physicsController physicsController:{a3, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resetMorpherDrivenMaterials
{
  morpherDrivenMaterialDescriptors = self->_morpherDrivenMaterialDescriptors;
  self->_morpherDrivenMaterialDescriptors = 0;

  v4 = [(AVTAvatar *)self avatarNode];
  [(AVTAvatar *)self addMorpherDrivenMaterialsInHierarchy:v4];
}

- (void)addMorpherDrivenMaterialsInHierarchy:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatar *)self specializationSettings];
  v6 = [v5 objectForKeyedSubscript:@"ARKit driven material"];

  if ([v6 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke;
    v12[3] = &unk_1E7F492A8;
    v12[4] = self;
    v13 = v4;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v7 = [v6 allKeys];
    v8 = [v7 count];
    v9 = [(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count];

    if (v8 != v9)
    {
      v10 = avt_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BB472000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create morpher-driven material", v11, 2u);
      }
    }
  }
}

void __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v41 = a1;
  v7 = [*(a1 + 32) effectiveMorphedNodeForTargetName:v5];
  v37 = v7;
  if (v7)
  {
    v8 = [v7 morpher];
    v36 = [v8 _weightIndexForTargetNamed:v5];
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  v34 = v6;
  v35 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v9;
  v40 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v40)
  {
    v39 = *v52;
    do
    {
      v10 = 0;
      do
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:@"node"];
        v13 = [v11 objectForKeyedSubscript:@"material"];
        newValue = [v11 objectForKeyedSubscript:@"property"];
        v14 = *(v41 + 40);
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke_2;
        v49[3] = &unk_1E7F49280;
        v43 = v12;
        v50 = v43;
        v42 = [v14 childNodesPassingTest:v49 recursively:1];
        v15 = [v42 lastObject];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v16 = [v15 model];
        v17 = [v16 materials];

        v18 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v46;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v45 + 1) + 8 * i);
              v23 = [v22 name];
              v24 = [v23 isEqualToString:v13];

              if (v24)
              {
                v25 = objc_alloc_init(AVTMorpherDrivenMaterialDescriptor);
                v26 = [v37 morpher];
                [(AVTPupilReflectionCorrectionDescriptor *)v25 setReadMorpher:v26];

                [(AVTPupilReflectionCorrectionDescriptor *)v25 setLeftEyeMaterial:v37];
                if (v25)
                {
                  v25->_morphTargetIndex = v36;
                  [(AVTPhysicsRig *)v25 setPhysicsBody:v22];
                  objc_setProperty_nonatomic_copy(v25, v27, newValue, 40);
                }

                else
                {
                  [(AVTPhysicsRig *)0 setPhysicsBody:v22];
                }

                v28 = *(*(v41 + 32) + 136);
                if (!v28)
                {
                  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v30 = *(v41 + 32);
                  v31 = *(v30 + 136);
                  *(v30 + 136) = v29;

                  v28 = *(*(v41 + 32) + 136);
                }

                [v28 addObject:v25];

                goto LABEL_26;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        ++v10;
      }

      while (v10 != v40);
      v32 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      v40 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 model];
  if (v6)
  {
    v7 = [v5 name];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      v6 = 1;
      *a3 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)removeMorpherDrivenMaterialsInHierarchy:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(AVTAvatar *)self _objectsInDescriptors:self->_morpherDrivenMaterialDescriptors andHierarchy:a3 passingTest:&__block_literal_global_176];
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          if (v10)
          {
            v11 = *(v10 + 32);
            v12 = *(v10 + 40);
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          [v11 setValue:&unk_1F39D95B8 forKey:{v12, v16}];

          ++v9;
        }

        while (v7 != v9);
        v13 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = v13;
      }

      while (v13);
    }

    [(NSMutableArray *)self->_morpherDrivenMaterialDescriptors removeObjectsInArray:v5];
    if (![(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count])
    {
      morpherDrivenMaterialDescriptors = self->_morpherDrivenMaterialDescriptors;
      self->_morpherDrivenMaterialDescriptors = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateMorpherDrivenMaterialsWithDeltaTime:(double)a3
{
  if ([(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count])
  {
    v4 = MEMORY[0x1E69DF378];
    v5 = [(VFXNode *)self->_avatarNode world];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__AVTAvatar_updateMorpherDrivenMaterialsWithDeltaTime___block_invoke;
    v6[3] = &unk_1E7F492F0;
    v6[4] = self;
    [v4 performPresentationObjectQueriesInWorld:v5 usingBlock:v6];
  }
}

void __55__AVTAvatar_updateMorpherDrivenMaterialsWithDeltaTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(*(a1 + 32) + 136);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if (v8)
        {
          [*(v8 + 8) _presentationWeightForTargetAtIndex:*(v8 + 24) token:a2];
          v10 = v9;
          v11 = *(v8 + 32);
        }

        else
        {
          [0 _presentationWeightForTargetAtIndex:0 token:{a2, v19}];
          v10 = v16;
          v11 = 0;
        }

        v12 = v11;
        LODWORD(v13) = v10;
        v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
        if (v8)
        {
          v15 = *(v8 + 40);
        }

        else
        {
          v15 = 0;
        }

        [v12 setValue:v14 forKey:{v15, v19}];

        ++v7;
      }

      while (v5 != v7);
      v17 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v5 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)usesSkinningForEyeOrientation
{
  v2 = [(AVTAvatar *)self specializationSettings];
  v3 = [v2 objectForKeyedSubscript:@"eye behavior"];

  v4 = [v3 objectForKeyedSubscript:@"uses skinning for orientation"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setupEyeOrientationAndReflections
{
  v3 = [(AVTAvatar *)self specializationSettings];
  v19 = [v3 objectForKeyedSubscript:@"eye behavior"];

  v4 = [(VFXNode *)self->_headNode morpher];
  v5 = [v19 objectForKeyedSubscript:@"wants pupil reflection correction"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    if (!self->_rightEye || !self->_leftEye)
    {
      [AVTAvatar setupEyeOrientationAndReflections];
    }

    v7 = objc_alloc_init(AVTPupilReflectionCorrectionDescriptor);
    pupilReflectionCorrectionDescriptor = self->_pupilReflectionCorrectionDescriptor;
    self->_pupilReflectionCorrectionDescriptor = v7;

    [(AVTPupilReflectionCorrectionDescriptor *)self->_pupilReflectionCorrectionDescriptor setReadMorpher:v4];
    v9 = [(VFXNode *)self->_leftEye model];
    v10 = [v9 firstMaterial];
    [(AVTPupilReflectionCorrectionDescriptor *)self->_pupilReflectionCorrectionDescriptor setLeftEyeMaterial:v10];

    v11 = [(VFXNode *)self->_rightEye model];
    v12 = [v11 firstMaterial];
    [(AVTPupilReflectionCorrectionDescriptor *)self->_pupilReflectionCorrectionDescriptor setRightEyeMaterial:v12];

    v13 = [(VFXNode *)self->_headNode morpher];
    v14 = [v13 _weightIndexForTargetNamed:@"eyeBlink_L"];
    v15 = self->_pupilReflectionCorrectionDescriptor;
    if (v15)
    {
      v15->_leftEyeTargetIndex = v14;
    }

    v16 = [(VFXNode *)self->_headNode morpher];
    v17 = [v16 _weightIndexForTargetNamed:@"eyeBlink_R"];
    v18 = self->_pupilReflectionCorrectionDescriptor;
    if (v18)
    {
      v18->_rightEyeTargetIndex = v17;
    }
  }

  if ([(AVTAvatar *)self usesSkinningForEyeOrientation])
  {
    [(AVTAvatar *)self setupEyeOrientationAndReflections];
  }
}

- (void)updateEyeOrientationAndReflections
{
  if (self->_pupilReflectionCorrectionDescriptor)
  {
    v3 = MEMORY[0x1E69DF378];
    v4 = [(VFXNode *)self->_avatarNode world];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke;
    v8[3] = &unk_1E7F492F0;
    v8[4] = self;
    [v3 performPresentationObjectQueriesInWorld:v4 usingBlock:v8];
  }

  if (self->_eyeSkinningDescriptor)
  {
    v5 = MEMORY[0x1E69DF378];
    v6 = [(VFXNode *)self->_avatarNode world];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke_2;
    v7[3] = &unk_1E7F492F0;
    v7[4] = self;
    [v5 performPresentationObjectQueriesInWorld:v6 usingBlock:v7];
  }
}

- (void)willRemoveFromWorld:(id)a3
{
  physicsController = self->_physicsController;
  v4 = [a3 physicsWorld];
  [(AVTPhysicsController *)physicsController removeFromPhysicsWorld:v4];
}

- (void)didAddToScene:(id)a3
{
  physicsController = self->_physicsController;
  v4 = [a3 physicsWorld];
  [(AVTPhysicsController *)physicsController addToPhysicsWorld:v4];
}

- (void)updateAfterAnimationsEvaluatedAtTime:(double)a3 renderer:(id)a4
{
  v6 = a4;
  physicsScaleFactor = self->_physicsScaleFactor;
  v8 = a3 - self->_lastRenderTime;
  if (v8 == 0.0)
  {
    v8 = 0.0166666667;
  }

  if (v8 <= 0.1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.1;
  }

  self->_lastRenderTime = a3;
  [(AVTPhysicsController *)self->_physicsController updateAtTime:a3 forceMultiplier:physicsScaleFactor];
  [(AVTAvatar *)self evaluateDynamicsAtTime:a3];
  [(AVTAvatar *)self updateEyeOrientationAndReflections];
  [(AVTAvatar *)self updateMorpherDrivenMaterialsWithDeltaTime:v9];
  if (self->_didUpdateAtTimeCallbackItems)
  {
    os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
    v10 = [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count];
    if (v10 - 1 >= 0)
    {
      v11 = v10;
      do
      {
        --v11;
        v18 = 0;
        v12 = [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems objectAtIndexedSubscript:v11];
        v14 = v12;
        if (v12)
        {
          if ((*(v12 + 8) & 1) == 0)
          {
            *(v12 + 8) = 1;
            *(v12 + 16) = a3;
          }

          v15 = *(v12 + 32);
          v16 = v15 + 16;
          v13.n128_u64[0] = v14[2];
        }

        else
        {
          v15 = 0;
          v13.n128_u64[0] = 0;
          v16 = 16;
        }

        (*v16)(v15, self, v6, &v18, a3, v13);

        if (v18 == 1)
        {
          [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems removeObjectAtIndex:v11];
          if (![(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count])
          {
            didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
            self->_didUpdateAtTimeCallbackItems = 0;
          }
        }
      }

      while (v11 > 0);
    }

    os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
  }
}

- (void)addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
  v8 = objc_alloc_init(AVTAvatarDidUpdateAtTimeCallbackItem);
  v9 = [v6 copy];
  v11 = v9;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v10, v9, 24);

    v12 = [v7 copy];
    objc_setProperty_nonatomic_copy(v8, v13, v12, 32);
  }

  else
  {

    v12 = [v7 copy];
  }

  didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
  if (didUpdateAtTimeCallbackItems)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__AVTAvatar_addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey_block___block_invoke;
    v19[3] = &unk_1E7F49318;
    v20 = v6;
    v15 = [(NSMutableArray *)didUpdateAtTimeCallbackItems indexOfObjectPassingTest:v19];
    v16 = self->_didUpdateAtTimeCallbackItems;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v16 insertObject:v8 atIndex:0];
    }

    else
    {
      [(NSMutableArray *)v16 setObject:v8 atIndexedSubscript:?];
    }

    v18 = v20;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
    v18 = self->_didUpdateAtTimeCallbackItems;
    self->_didUpdateAtTimeCallbackItems = v17;
  }

  os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
}

- (void)removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
  didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AVTAvatar_removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey___block_invoke;
  v9[3] = &unk_1E7F49318;
  v6 = v4;
  v10 = v6;
  v7 = [(NSMutableArray *)didUpdateAtTimeCallbackItems indexOfObjectPassingTest:v9];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems removeObjectAtIndex:v7];
    if (![(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count])
    {
      v8 = self->_didUpdateAtTimeCallbackItems;
      self->_didUpdateAtTimeCallbackItems = 0;
    }
  }

  os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
}

- (id)effectiveMorphedNodeForTargetName:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatar *)self specializationSettings];
  v6 = [v5 objectForKeyedSubscript:@"ARKit driven morpher"];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __47__AVTAvatar_effectiveMorphedNodeForTargetName___block_invoke;
  v16 = &unk_1E7F47D68;
  v7 = v4;
  v17 = v7;
  v18 = &v19;
  [v6 enumerateKeysAndObjectsUsingBlock:&v13];
  v8 = self->_headNode;
  v9 = v20[5];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:{@"morphed node", v13, v14, v15, v16}];
    v11 = [(VFXNode *)self->_avatarNode childNodeWithName:v10 recursively:1];

    v8 = v11;
  }

  _Block_object_dispose(&v19, 8);

  return v8;
}

void __47__AVTAvatar_effectiveMorphedNodeForTargetName___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) isEqualToString:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)setupMorphInfo
{
  headNode = self->_headNode;
  morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
  if (headNode)
  {
    self->_morphInfoFromARKitBlendShapeIndex = malloc_type_realloc(morphInfoFromARKitBlendShapeIndex, 0x680uLL, 0x108004077A7B0B0uLL);
    v5 = [(AVTAvatar *)self specializationSettings];
    v17 = [v5 objectForKeyedSubscript:@"ARKit disabled blendshapes"];

    v6 = 0;
    for (i = 0; i != 52; ++i)
    {
      v8 = AVTBlendShapeLocationFromARIndex(i);
      v9 = [(AVTAvatar *)self effectiveMorphedNodeForTargetName:v8];
      v10 = [v9 morpher];
      v11 = [v10 _weightIndexForTargetNamed:v8];

      v12 = 0;
      v13 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0;
      if (v9 && v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v9 morpher];
        v12 = [v17 containsObject:v8] ^ 1;
        v15 = v9;
        v14 = v11;
      }

      v16 = &self->_morphInfoFromARKitBlendShapeIndex[v6];
      v16->var0 = v13;
      v16->var1 = v15;
      v16->var2 = v14;
      v16->var3 = v12;
      *(&v16->var3 + 1) = 0;
      *(&v16->var3 + 1) = 0;

      ++v6;
    }

    [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
  }

  else
  {
    free(morphInfoFromARKitBlendShapeIndex);
    self->_morphInfoFromARKitBlendShapeIndex = 0;
    free(self->_friendlyPoseMorphInfos);
    self->_friendlyPoseMorphInfos = 0;
    self->_friendlyPoseMorphInfoCount = 0;
  }
}

- (void)setupMorphInfoForChangeInSubHierarchy
{
  self->_friendlyPoseMorphInfoCount = 0;
  v3 = [(AVTAvatar *)self specializationSettings];
  v4 = [v3 objectForKeyedSubscript:@"ARKit disabled blendshapes"];

  v5 = [v4 containsObject:@"Emoji"] ^ 1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke;
  v13 = &unk_1E7F49340;
  v15 = v5;
  v14 = self;
  v6 = self->_headNode;
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      avatarNode = self->_avatarNode;
      if (v7 == avatarNode)
      {
        break;
      }

      v9 = [(VFXNode *)v7 parentNode:v10];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12(&v10, self->_avatarNode);
    v7 = 0;
    avatarNode = self->_headNode;
  }

  v12(&v10, avatarNode);
  if (!self->_friendlyPoseMorphInfoCount)
  {
    self->_friendlyPoseMorphInfoProxy.isEnabled = v5;
  }
}

uint64_t __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke_2;
  v3[3] = &unk_1E7F49198;
  v4 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  return [a2 enumerateHierarchyUsingBlock:v3];
}

void __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 morpher];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _weightIndexForTargetNamed:@"Emoji"];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = *(a1 + 40);
      ++*(*(a1 + 32) + 80);
      *(*(a1 + 32) + 72) = malloc_type_realloc(*(*(a1 + 32) + 72), 32 * *(*(a1 + 32) + 80), 0x108004077A7B0B0uLL);
      v8 = *(*(a1 + 32) + 72) + 32 * *(*(a1 + 32) + 80);
      *(v8 - 32) = v4;
      *(v8 - 24) = v9;
      *(v8 - 16) = v6;
      *(v8 - 8) = v7;
      *(v8 - 4) = 0;
      *(v8 - 7) = 0;
    }
  }
}

- (void)updatePoseWithPoseProvider:(id)a3 applySmoothing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_headNode)
  {
    goto LABEL_21;
  }

  v27 = v6;
  if (v4)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:0.05];
    v7 = MEMORY[0x1E69DF378];
    v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v7 setAnimationTimingFunction:v8];
  }

  v9 = 0;
  for (i = 0; i != 52; ++i)
  {
    morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
    if (morphInfoFromARKitBlendShapeIndex[v9].var3)
    {
      var2 = morphInfoFromARKitBlendShapeIndex[v9].var2;
      if (var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        var0 = morphInfoFromARKitBlendShapeIndex[v9].var0;
        v14 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:i];
        [v27 weightForBlendShapeNamed:v14 index:i];
        [var0 setWeight:var2 forTargetAtIndex:?];
      }
    }

    ++v9;
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = &self->_friendlyPoseMorphInfos[v15];
      v18 = v17->var0;
      v19 = v17->var2;
      [v27 weightForBlendShapeNamed:@"Emoji" index:52];
      [v18 setWeight:v19 forTargetAtIndex:?];
      ++v16;
      ++v15;
    }

    while (v16 < self->_friendlyPoseMorphInfoCount);
  }

  else
  {
    [v27 weightForBlendShapeNamed:@"Emoji" index:52];
    self->_friendlyPoseMorphInfoProxy.morphWeight = v20;
  }

  [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
  v21 = [v27 unitSystem];
  if (v21 == 1)
  {
    [v27 neckPosition];
    v26 = v23;
    v24 = AVTGetNeutralZ();
    v25.i64[0] = 0;
    v25.i64[1] = LODWORD(v24);
    *&v22 = vmulq_f32(vsubq_f32(v26, v25), xmmword_1BB4F0620).u64[0];
  }

  else
  {
    if (v21)
    {
      goto LABEL_19;
    }

    [v27 neckPosition];
  }

  [(VFXNode *)self->_rootJointNode setPosition:v22, *&v26];
LABEL_19:
  [v27 neckOrientation];
  [(VFXNode *)self->_neckNode setOrientation:?];
  v6 = v27;
  if (v4)
  {
    [MEMORY[0x1E69DF378] commit];
    v6 = v27;
  }

LABEL_21:
}

- (void)updatePoseWithFaceTrackingData:(id)a3 applySmoothing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_headNode)
  {
    if (v4)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:0.05];
      v7 = MEMORY[0x1E69DF378];
      v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v7 setAnimationTimingFunction:v8];
    }

    if ([v6 length] != 480)
    {
      v9 = avt_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar updatePoseWithFaceTrackingData:v6 applySmoothing:?];
      }
    }

    v10 = [v6 bytes];
    [(AVTAvatar *)self _applyBlendShapesWithTrackingData:v10];
    [(AVTAvatar *)self _applyHeadPoseWithTrackingData:v10 gazeCorrection:1 pointOfView:0];
    if (v4)
    {
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)updatePoseWithCVAFaceTrackingAnimationDictionary:(void *)a1 neckPosition:(uint64_t)a2 neckOrientation:(void *)a3 applySmoothing:(int)a4
{
  v6 = a3;
  if (a1[3])
  {
    if (a4)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:0.05];
      v7 = MEMORY[0x1E69DF378];
      v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v7 setAnimationTimingFunction:v8];
    }

    v9 = AVTGetNeutralZ();
    v10.i64[0] = 0;
    v10.i64[1] = LODWORD(v9);
    v27 = vmulq_f32(vsubq_f32(v26, v10), xmmword_1BB4F0620);
    v30 = 0u;
    v31 = 0u;
    memset(&v29[3], 0, 400);
    v29[0] = 0u;
    *&v29[0] = CACurrentMediaTime();
    v11 = v27;
    v11.i32[3] = 0;
    v29[1] = v11;
    v29[2] = v28;
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698BF80]];
    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698BFB0]];
    if ([v12 length] != 204)
    {
      v14 = avt_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar updatePoseWithCVAFaceTrackingAnimationDictionary:neckPosition:neckOrientation:applySmoothing:];
      }
    }

    if ([v12 length] == 204)
    {
      v15 = [v12 bytes];
      *(&v29[3] + 4) = *v15;
      v16 = v15[3];
      v17 = v15[4];
      v18 = v15[2];
      *(&v29[4] + 4) = v15[1];
      *(&v29[7] + 4) = v17;
      *(&v29[6] + 4) = v16;
      *(&v29[5] + 4) = v18;
      v19 = v15[7];
      v20 = v15[8];
      v21 = v15[6];
      *(&v29[8] + 4) = v15[5];
      *(&v29[11] + 4) = v20;
      *(&v29[10] + 4) = v19;
      *(&v29[9] + 4) = v21;
      v23 = v15[10];
      v22 = v15[11];
      v24 = *(v15 + 188);
      *(&v29[12] + 4) = v15[9];
      v29[15] = v24;
      *(&v29[14] + 4) = v22;
      *(&v29[13] + 4) = v23;
    }

    [v13 floatValue];
    HIDWORD(v30) = v25;
    [a1 _applyBlendShapesWithTrackingData:v29];
    [a1 _applyHeadPoseWithTrackingData:v29 gazeCorrection:1 pointOfView:0];
    if (a4)
    {
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)_applyBlendShapes:(const float *)a3 parameters:(const float *)a4
{
  if (self->_headNode)
  {
    morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
    var2 = morphInfoFromARKitBlendShapeIndex[51].var2;
    v9 = -1.0;
    if (var2 != 0x7FFFFFFFFFFFFFFFLL && *a4 != -1.0)
    {
      var0 = morphInfoFromARKitBlendShapeIndex[51].var0;
      v11 = 0.0;
      if (morphInfoFromARKitBlendShapeIndex[51].var3)
      {
        v12 = *MEMORY[0x1E6986408];
        v11 = fmaxf(fminf(*a4, 1.0), 0.0);
        v13 = AVTBlendShapeLocationFromARIndex(51);

        if (v13 == v12)
        {
          [var0 weightForTargetAtIndex:var2];
          v11 = *&v4 + ((v11 - *&v4) * 0.3);
          v9 = v11;
        }
      }

      *&v4 = v11;
      [var0 setWeight:var2 forTargetAtIndex:v4];
    }

    v14 = 0;
    for (i = 0; i != 51; ++i)
    {
      v16 = &self->_morphInfoFromARKitBlendShapeIndex[v14];
      v17 = v16->var2;
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = a3[i];
        if (v18 != -1.0)
        {
          v19 = v16->var0;
          v20 = 0.0;
          if (v16->var3)
          {
            v21 = fmaxf(fminf(v18, 1.0), 0.0);
            v22 = AVTBlendShapeLocationFromARIndex(i);
            v23 = AVTMorphWeightApplyCorrectionForTongue(v22, v21, v9);
            v20 = AVTMorphWeightApplyBlinkCorrection(v22, v23);
          }

          *&v4 = v20;
          [v19 setWeight:v17 forTargetAtIndex:v4];
        }
      }

      ++v14;
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        [self->_friendlyPoseMorphInfos[v24].var0 setWeight:self->_friendlyPoseMorphInfos[v24].var2 forTargetAtIndex:0.0];
        ++v25;
        ++v24;
      }

      while (v25 < self->_friendlyPoseMorphInfoCount);
    }

    else
    {
      self->_friendlyPoseMorphInfoProxy.morphWeight = 0.0;
    }
  }
}

- (void)_applyBlendShapesWithTrackingData:(id *)a3
{
  if (a3)
  {
    [(AVTAvatar *)self _applyBlendShapes:&a3->var2[10] parameters:&a3[1].var2[4]];
  }
}

- (void)_applyHeadPoseWithTrackingData:(id *)a3 gazeCorrection:(BOOL)a4 pointOfView:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (!a3)
  {
    goto LABEL_29;
  }

  v10 = *&a3->var2[5];
  if (LOBYTE(a3->var2[9]) == 1)
  {
    if (v8)
    {
      v11 = *MEMORY[0x1E69E9B18];
      v12 = *(MEMORY[0x1E69E9B18] + 16);
      v13 = *(MEMORY[0x1E69E9B18] + 32);
      v14 = vmulq_f32(v10, v10);
      v15 = vaddq_f32(v14, v14);
      v16 = vmulq_laneq_f32(v10, v10, 3);
      v17 = vmuls_lane_f32(v10.f32[0], *v10.f32, 1);
      v18 = vmuls_lane_f32(v10.f32[1], v10, 2);
      v19 = vmuls_lane_f32(v10.f32[0], v10, 2);
      *&v11 = (1.0 - v15.f32[1]) - v15.f32[2];
      *(&v11 + 1) = (v17 + v16.f32[2]) + (v17 + v16.f32[2]);
      *(&v11 + 2) = (v19 - v16.f32[1]) + (v19 - v16.f32[1]);
      *&v12 = (v17 - v16.f32[2]) + (v17 - v16.f32[2]);
      v15.f32[0] = 1.0 - v15.f32[0];
      *(&v12 + 1) = v15.f32[0] - v15.f32[2];
      *(&v12 + 2) = (v18 + v16.f32[0]) + (v18 + v16.f32[0]);
      v49 = v12;
      v51 = v11;
      *&v13 = (v19 + v16.f32[1]) + (v19 + v16.f32[1]);
      *(&v13 + 1) = (v18 - v16.f32[0]) + (v18 - v16.f32[0]);
      *(&v13 + 2) = v15.f32[0] - v15.f32[1];
      v20 = vaddq_f32(*&a3->var2[1], *(MEMORY[0x1E69E9B18] + 48));
      v20.i32[3] = HIDWORD(*(MEMORY[0x1E69E9B18] + 48));
      v47 = v20;
      v48 = v13;
      [v8 worldTransform];
      v25 = 0;
      v53[0] = v51;
      v53[1] = v49;
      v53[2] = v48;
      v53[3] = v47;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      do
      {
        *(&v54 + v25 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(v53[v25])), v22, *&v53[v25], 1), v23, v53[v25], 2), v24, v53[v25], 3);
        ++v25;
      }

      while (v25 != 4);
      v26 = vmulq_f32(v54, v54);
      v27 = vaddv_f32(*v26.f32);
      *v26.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v26.f32[2] + v27));
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v26.f32[2] + v27), vmul_f32(*v26.f32, *v26.f32)));
      v28 = vmulq_n_f32(v54, vmul_f32(*v26.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v26.f32[2] + v27), vmul_f32(*v26.f32, *v26.f32))).f32[0]);
      v29 = vmulq_f32(v55, v55);
      *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
      *v29.f32 = vrsqrte_f32(v30);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
      v31 = vmulq_n_f32(v55, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      v32 = vmulq_f32(v56, v56);
      *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
      *v32.f32 = vrsqrte_f32(v33);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
      v34 = vmulq_n_f32(v56, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
      v35 = (*v28.i32 + *&v31.i32[1]) + *&v34.i32[2];
      if (v35 <= 0.0)
      {
        if (*v28.i32 <= *&v31.i32[1] || *v28.i32 <= *&v34.i32[2])
        {
          if (*&v31.i32[1] <= *&v34.i32[2])
          {
            *v37.f32 = vadd_f32(*&vzip2q_s32(v28, v31), *v34.i8);
            v36 = ((*&v34.i32[2] + 1.0) - *v28.i32) - *&v31.i32[1];
            v37.f32[2] = v36;
            v37.f32[3] = *&v28.i32[1] - *v31.i32;
          }

          else
          {
            v37.f32[0] = *&v28.i32[1] + *v31.i32;
            v36 = ((*&v31.i32[1] + 1.0) - *v28.i32) - *&v34.i32[2];
            v41 = vzip2q_s32(v28, v31).u64[0];
            v37.f32[1] = v36;
            *&v37.u32[2] = vext_s8(vadd_f32(*v34.i8, v41), vsub_f32(*v34.i8, v41), 4uLL);
          }
        }

        else
        {
          v36 = ((*v28.i32 + 1.0) - *&v31.i32[1]) - *&v34.i32[2];
          v42 = *&v28.i32[1];
          v43 = vzip2q_s32(v28, v31).u64[0];
          LODWORD(v44) = vadd_f32(v43, *v34.i8).u32[0];
          HIDWORD(v44) = vsub_f32(v43, *&v34).i32[1];
          v37.i64[0] = __PAIR64__(v42 + *v31.i32, LODWORD(v36));
          v37.i64[1] = v44;
        }
      }

      else
      {
        *v37.f32 = vsub_f32(*&vzip2q_s32(v31, vuzp1q_s32(v31, v34)), *&vtrn2q_s32(v34, vzip2q_s32(v34, v28)));
        v37.f32[2] = *&v28.i32[1] - *v31.i32;
        v36 = v35 + 1.0;
        v37.f32[3] = v35 + 1.0;
      }

      *&v50 = vmulq_n_f32(v37, 0.5 / sqrtf(v36)).u64[0];
      v52 = v57;
    }

    else
    {
      v50 = *&a3->var2[5];
      v52 = *&a3->var2[1];
      if ((_applyHeadPoseWithTrackingData_gazeCorrection_pointOfView__done & 1) == 0)
      {
        _applyHeadPoseWithTrackingData_gazeCorrection_pointOfView__done = 1;
        v39 = avt_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [AVTAvatar _applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:];
        }
      }
    }

    [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
    goto LABEL_24;
  }

  v50 = *&a3->var2[5];
  v52 = *&a3->var2[1];
  [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
  if (!v5)
  {
LABEL_24:
    v38 = *&v50;
    goto LABEL_25;
  }

  [(AVTAvatar *)AVTAnimoji applyGazeCorrectionWithInputAngle:*&v50 translation:*v52.i64];
LABEL_25:
  [(VFXNode *)self->_neckNode setOrientation:v38];
  if (LOBYTE(a3->var2[9]) == 1)
  {
    [(VFXNode *)self->_neckNode convertPosition:self->_rootJointNode toNode:*self->_arOffset];
    *&v46 = vsubq_f32(v52, v45).u64[0];
  }

  else
  {
    v46 = *v52.i64;
  }

  [(VFXNode *)self->_rootJointNode setPosition:v46];
LABEL_29:
}

- (void)applyBlendShapesWithTrackingInfo:(id)a3
{
  if (a3)
  {
    v4 = [a3 trackingData];

    [(AVTAvatar *)self _applyBlendShapesWithTrackingData:v4];
  }
}

- ($9556BFE61B967AE735F1A0D700315F88)morphInfoForARKitBlendShapeIndex:(SEL)a3
{
  v4 = self[2].var0 + 32 * a4;
  v5 = v4[1];
  *&retstr->var0 = *v4;
  *&retstr->var2 = v5;
  return self;
}

- (id)blendShapeNameForARKitBlendShapeIndex:(unint64_t)a3
{
  [(AVTAvatar *)self morphInfoForARKitBlendShapeIndex:0, 0];
  v4 = AVTBlendShapeLocationFromARIndex(a3);

  return v4;
}

- (int64_t)blendShapeIndexForARKitBlendShapeName:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:v5];
    v7 = [v6 isEqualToString:v4];

    if (v7)
    {
      break;
    }

    if (++v5 == 52)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      break;
    }
  }

  return v5;
}

- (void)enumerateMorphInfoForCustomBlendShapeName:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"Emoji"] && self->_friendlyPoseMorphInfoCount)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = &self->_friendlyPoseMorphInfos[v7];
      v10 = *&v9->var2;
      v13 = *&v9->var0;
      v14 = v10;
      v11 = v6[2];
      v12[0] = v13;
      v12[1] = v10;
      v11(v6, v12);
      ++v8;
      ++v7;
    }

    while (v8 < self->_friendlyPoseMorphInfoCount);
  }
}

+ (double)applyGazeCorrectionWithInputAngle:(int32x4_t)a1 translation:(__n128)a2
{
  v27 = a2.n128_u64[0];
  v2 = a2.n128_f32[2] + AVTGetNeutralZ() * 100.0;
  v3 = *(&v27 + 1) / 0.2;
  v4 = atanf(v3 / v2) + 0.104719755;
  v5 = __sincosf_stret(v4 * 0.5);
  v6 = vrsqrte_f32(1065353216);
  v7 = vmul_f32(v6, vrsqrts_f32(1065353216, vmul_f32(v6, v6)));
  LODWORD(v24) = vmul_f32(v7, vrsqrts_f32(1065353216, vmul_f32(v7, v7))).u32[0];
  v8 = vmulq_n_f32(vmulq_n_f32(xmmword_1BB4F05D0, v24), v5.__sinval);
  v9 = v8;
  v9.i32[3] = v8.i32[0];
  v10 = a1;
  v11 = vzip1q_s32(v10, v10);
  v11.i32[0] = a1.i32[2];
  v12 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(a1, 3), a1, 4uLL), v9), xmmword_1BB4F09A0), a1, v5.__cosval), xmmword_1BB4F09A0, vmulq_f32(v11, vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v13 = vuzp1q_s32(v10, v10);
  v13.i32[0] = a1.i32[1];
  v26 = vmlsq_f32(v12, v13, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v14 = atanf((*&v27 + *&v27) / v2);
  v15 = __sincosf_stret(v14 * -0.5);
  v16 = v26;
  v17 = vmulq_n_f32(vmulq_n_f32(xmmword_1BB4F05E0, v24), v15.__sinval);
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v17.i32[3] = v17.i32[0];
  v20 = vzip1q_s32(v16, v16);
  v20.i32[0] = v26.i32[2];
  v21 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(vmulq_f32(v17, vextq_s8(vdupq_laneq_s32(v26, 3), v26, 4uLL)), xmmword_1BB4F09A0), v26, v15.__cosval), xmmword_1BB4F09A0, vmulq_f32(v18, v20));
  v22 = vuzp1q_s32(v16, v16);
  v22.i32[0] = v26.i32[1];
  *&result = vmlsq_f32(v21, v22, v19).u64[0];
  return result;
}

- (void)_resetFaceToRandomPosition
{
  v3 = [(VFXNode *)self->_headNode morpher];
  v4 = [v3 targets];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__AVTAvatar__resetFaceToRandomPosition__block_invoke;
  v13[3] = &unk_1E7F49368;
  v13[4] = self;
  [v4 enumerateObjectsUsingBlock:v13];

  LODWORD(v3) = rand();
  v5 = rand();
  __asm { FMOV            V1.2D, #-0.5 }

  v11 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(__PAIR64__(v5, v3)), 0x3000000030000000)), _Q1), xmmword_1BB4F09B0)));
  rand();
  [(VFXNode *)self->_rootJointNode setPosition:v11];
  LODWORD(v3) = rand();
  v12 = COERCE_DOUBLE(vadd_f32(vmul_f32(vcvt_f32_s32(__PAIR64__(rand(), v3)), 0x3000000030000000), 0xBF000000BF000000));
  rand();
  [(VFXNode *)self->_rootJointNode setEulerAngles:v12];
}

void __39__AVTAvatar__resetFaceToRandomPosition__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 name];
  v6 = AVTMorphTargetNameDefinesPose(v5);

  if (v6)
  {
    v8 = [*(*(a1 + 32) + 24) morpher];
    *&v7 = vcvts_n_f32_s32(rand(), 0x1FuLL);
    [v8 setWeight:a3 forTargetAtIndex:v7];
  }
}

- (id)pose
{
  v3 = objc_alloc_init(AVTAvatarPose);
  if (!self->_morphInfoFromARKitBlendShapeIndex)
  {
    [AVTAvatar pose];
  }

  v4 = v3;
  v5 = [(VFXNode *)self->_rootJointNode animationPlayerForKey:@"kAVTTransitionAnimation-posePosition"];
  v6 = [v5 animation];
  v7 = [v6 caAnimation];

  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 toValue];

      if (v9)
      {
LABEL_6:
        v10 = 0;
        for (i = 0; i != 52; ++i)
        {
          morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
          if (morphInfoFromARKitBlendShapeIndex[v10].var3 && morphInfoFromARKitBlendShapeIndex[v10].var2 != 0x7FFFFFFFFFFFFFFFLL)
          {
            var1 = morphInfoFromARKitBlendShapeIndex[v10].var1;
            v14 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:i];
            v15 = [@"kAVTTransitionAnimation-" stringByAppendingString:v14];
            v16 = __17__AVTAvatar_pose__block_invoke(v15, var1);
            [v16 floatValue];
            [(AVTAvatarPose *)v4 setWeight:v14 forBlendShapeNamed:v17];
          }

          ++v10;
        }

        friendlyPoseMorphInfoCount = self->_friendlyPoseMorphInfoCount;
        if (friendlyPoseMorphInfoCount)
        {
          v19 = 0;
          for (j = 0; j < friendlyPoseMorphInfoCount; ++j)
          {
            v21 = &self->_friendlyPoseMorphInfos[v19];
            if (v21->var3)
            {
              v22 = v21->var1;
              v23 = [@"kAVTTransitionAnimation-" stringByAppendingString:@"Emoji"];
              v24 = __17__AVTAvatar_pose__block_invoke(v23, v22);
              [v24 floatValue];
              [(AVTAvatarPose *)v4 setWeight:@"Emoji" forBlendShapeNamed:v25];

              friendlyPoseMorphInfoCount = self->_friendlyPoseMorphInfoCount;
            }

            ++v19;
          }
        }

        else if (self->_friendlyPoseMorphInfoProxy.isEnabled)
        {
          isKindOfClass = [(AVTAvatarPose *)v4 setWeight:@"Emoji" forBlendShapeNamed:self->_friendlyPoseMorphInfoProxy.morphWeight];
        }

        v36 = __17__AVTAvatar_pose__block_invoke(isKindOfClass, self->_rootJointNode);
        [v36 avt_float3Value];
        [(AVTAvatarPose *)v4 setNeckPosition:?];

        v35 = __17__AVTAvatar_pose__block_invoke(v37, self->_neckNode);
        [v35 avt_float4Value];
        goto LABEL_31;
      }
    }

    else
    {
      v26 = avt_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar pose];
      }
    }
  }

  v27 = 0;
  for (k = 0; k != 52; ++k)
  {
    v29 = self->_morphInfoFromARKitBlendShapeIndex;
    if (v29[v27].var2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v29[v27].var0 weightForTargetAtIndex:?];
      v31 = v30;
      v32 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:k];
      [(AVTAvatarPose *)v4 setWeight:v32 forBlendShapeNamed:v31];
    }

    ++v27;
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    [self->_friendlyPoseMorphInfos->var0 weightForTargetAtIndex:self->_friendlyPoseMorphInfos->var2];
  }

  else
  {
    morphWeight = self->_friendlyPoseMorphInfoProxy.morphWeight;
  }

  [(AVTAvatarPose *)v4 setWeight:@"Emoji" forBlendShapeNamed:morphWeight];
  v34 = [(VFXNode *)self->_rootJointNode presentationNode];
  [v34 position];
  [(AVTAvatarPose *)v4 setNeckPosition:?];

  v35 = [(VFXNode *)self->_neckNode presentationNode];
  [v35 orientation];
LABEL_31:
  [(AVTAvatarPose *)v4 setNeckOrientation:?];

  [(AVTAvatarPose *)v4 setBakedAnimationBlendFactor:1.0];

  return v4;
}

id __17__AVTAvatar_pose__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 animationPlayerForKey:?];
  v3 = [v2 animation];
  v4 = [v3 caAnimation];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 values];
    v6 = [v5 lastObject];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 toValue];
    }

    else
    {
      v7 = avt_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar pose];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)setPose:(id)a3
{
  v24 = a3;
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    v4 = 0;
    for (i = 0; i != 52; ++i)
    {
      v6 = &self->_morphInfoFromARKitBlendShapeIndex[v4];
      var2 = v6->var2;
      if (var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        var0 = v6->var0;
        var3 = v6->var3;
        v10 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:i];
        v11 = 0.0;
        if (var3)
        {
          [v24 weightForBlendShapeNamed:{v10, 0.0}];
          *&v11 = v11;
        }

        [var0 setWeight:var2 forTargetAtIndex:v11];
      }

      ++v4;
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = &self->_friendlyPoseMorphInfos[v12];
        v15 = v14->var0;
        v16 = v14->var2;
        v17 = 0.0;
        if (v14->var3)
        {
          [v24 weightForBlendShapeNamed:{@"Emoji", 0.0}];
          *&v17 = v17;
        }

        [v15 setWeight:v16 forTargetAtIndex:v17];
        ++v13;
        ++v12;
      }

      while (v13 < self->_friendlyPoseMorphInfoCount);
    }

    else
    {
      v18 = 0.0;
      if (self->_friendlyPoseMorphInfoProxy.isEnabled)
      {
        [v24 weightForBlendShapeNamed:{@"Emoji", 0.0}];
        v18 = v19;
      }

      self->_friendlyPoseMorphInfoProxy.morphWeight = v18;
    }

    [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
    if (v24)
    {
      [v24 neckPosition];
      [(VFXNode *)self->_rootJointNode setPosition:?];
      [v24 neckOrientation];
      [(VFXNode *)self->_neckNode setOrientation:?];
      [v24 bakedAnimationBlendFactor];
      v21 = v20;
    }

    else
    {
      [(VFXNode *)self->_rootJointNode setPosition:0.0];
      [(VFXNode *)self->_neckNode setOrientation:*&_PromotedConst];
      v21 = 1.0;
    }

    v22 = [(AVTAvatar *)self bakedAnimationPlayer];
    *&v23 = v21;
    [v22 setBlendFactor:v23];
  }
}

- (id)debugPoseJSONRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  avatarNode = self->_avatarNode;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke;
  v22[3] = &unk_1E7F47B10;
  v5 = v3;
  v23 = v5;
  [(VFXNode *)avatarNode enumerateHierarchyUsingBlock:v22];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendString:@"{\n"];
  v7 = [v5 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_3;
  v18 = &unk_1E7F48A70;
  v9 = v6;
  v19 = v9;
  v20 = v5;
  v21 = v8;
  v10 = v8;
  v11 = v5;
  [v10 enumerateObjectsUsingBlock:&v15];
  [v9 appendString:{@"}", v15, v16, v17, v18}];
  v12 = v21;
  v13 = v9;

  return v9;
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentationNode];
  v5 = [v4 morpher];

  v6 = [v5 targets];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_2;
  v9[3] = &unk_1E7F47B60;
  v10 = v3;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v3;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v9 = [a2 name];
  if (AVTMorphTargetNameIsOfInterestForAnimator(v9))
  {
    v5 = [a1[4] model];
    v6 = [v5 name];

    v7 = [a1[5] objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [a1[5] setObject:v7 forKeyedSubscript:v6];
    }

    [a1[6] weightForTargetAtIndex:a3];
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v7 setObject:v8 forKeyedSubscript:v9];
  }
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 appendFormat:@"  %@ : {\n", v6];
  v7 = [a1[5] objectForKeyedSubscript:v6];

  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_4;
  v17 = &unk_1E7F48A70;
  v18 = v7;
  v19 = a1[4];
  v20 = v9;
  v10 = v9;
  v11 = v7;
  [v10 enumerateObjectsUsingBlock:&v14];
  v12 = a1[4];
  if ([a1[6] count] - 1 == a3)
  {
    v13 = "";
  }

  else
  {
    v13 = ",";
  }

  [v12 appendFormat:@"  }%s\n", v13, v14, v15, v16, v17];
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v12 = a2;
  v6 = [v5 objectForKeyedSubscript:v12];
  [v6 floatValue];
  v8 = v7;

  v9 = v8;
  v10 = *(a1 + 40);
  if ([*(a1 + 48) count] - 1 == a3)
  {
    v11 = "";
  }

  else
  {
    v11 = ",";
  }

  [v10 appendFormat:@"    %@ : %.3f%s\n", v12, *&v9, v11];
}

- (void)animatePhysicsScaleFactor:(double)a3 duration:(double)a4
{
  if (a4 <= 0.0)
  {

    [(AVTAvatar *)self setPhysicsScaleFactor:a3];
  }

  else
  {
    v7[7] = v4;
    v7[8] = v5;
    physicsScaleFactor = self->_physicsScaleFactor;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__AVTAvatar_animatePhysicsScaleFactor_duration___block_invoke;
    v7[3] = &__block_descriptor_56_e52_v48__0__AVTAvatar_8d16d24___VFXWorldRenderer__32_B40l;
    *&v7[4] = a4;
    *&v7[5] = physicsScaleFactor;
    *&v7[6] = a3;
    [(AVTAvatar *)self addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"animatePhysicsOnAvatar" block:v7];
  }
}

double *__48__AVTAvatar_animatePhysicsScaleFactor_duration___block_invoke(double *result, uint64_t a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v6 = (a3 - a4) / result[4];
  v7 = fmaxf(fminf(v6, 1.0), 0.0);
  *(a2 + 184) = result[5] + v7 * (result[6] - result[5]);
  if (v7 >= 1.0)
  {
    *a6 = 1;
  }

  return result;
}

- (void)transitionToPose:(id)a3 duration:(double)a4 delay:(double)a5 completionHandler:(id)a6
{
  v12 = a3;
  v10 = a6;
  if (v12)
  {
    [v12 bakedAnimationBlendFactor];
  }

  else
  {
    v11 = 1.0;
  }

  [(AVTAvatar *)self _transitionFromPose:0 toPose:v12 bakedAnimationBlendFactor:0 duration:0 delay:v10 timingFunction:v11 timingAnimation:a4 completionHandler:a5];
}

- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 completionHandler:(id)a7
{
  v15 = a3;
  v12 = a4;
  v13 = a7;
  if (v12)
  {
    [v12 bakedAnimationBlendFactor];
  }

  else
  {
    v14 = 1.0;
  }

  [(AVTAvatar *)self _transitionFromPose:v15 toPose:v12 bakedAnimationBlendFactor:0 duration:0 delay:v13 timingFunction:v14 timingAnimation:a5 completionHandler:a6];
}

- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 timingFunction:(id)a7 completionHandler:(id)a8
{
  v18 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  if (v14)
  {
    [v14 bakedAnimationBlendFactor];
  }

  else
  {
    v17 = 1.0;
  }

  [(AVTAvatar *)self _transitionFromPose:v18 toPose:v14 bakedAnimationBlendFactor:v15 duration:0 delay:v16 timingFunction:v17 timingAnimation:a5 completionHandler:a6];
}

- (void)transitionFromPose:(id)a3 toPose:(id)a4 duration:(double)a5 delay:(double)a6 timingAnimation:(id)a7 completionHandler:(id)a8
{
  v18 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  if (v14)
  {
    [v14 bakedAnimationBlendFactor];
  }

  else
  {
    v17 = 1.0;
  }

  [(AVTAvatar *)self _transitionFromPose:v18 toPose:v14 bakedAnimationBlendFactor:0 duration:v15 delay:v16 timingFunction:v17 timingAnimation:a5 completionHandler:a6];
}

- (void)_transitionFromPose:(id)a3 toPose:(id)a4 bakedAnimationBlendFactor:(double)a5 duration:(double)a6 delay:(double)a7 timingFunction:(id)a8 timingAnimation:(id)a9 completionHandler:(id)a10
{
  v78 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = CACurrentMediaTime();
  ++self->_transitionCount;
  objc_initWeak(location, self);
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
  v23 = MEMORY[0x1E69DF378];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke;
  v92[3] = &unk_1E7F493B0;
  objc_copyWeak(&v94, location);
  v95 = v18 != 0;
  v77 = v21;
  v93 = v77;
  [v23 setCompletionBlock:v92];
  if (!v18 && v20)
  {
    v24 = avt_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB472000, v24, OS_LOG_TYPE_DEFAULT, "Can't use a timing animation without a destination pose", buf, 2u);
    }

    v20 = 0;
  }

  v25 = v22 + a7;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v85 = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_266;
  v86 = &unk_1E7F493D8;
  v89 = a6;
  v76 = v20;
  v87 = v76;
  v90 = v25;
  v26 = 0;
  v27 = 0;
  v75 = v19;
  v88 = v75;
  v79 = v18;
  do
  {
    v28 = &self->_morphInfoFromARKitBlendShapeIndex[v26];
    if (v28->var3)
    {
      var2 = v28->var2;
      if (var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        var1 = v28->var1;
        v31 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:v27];
        v32 = [@"kAVTTransitionAnimation-" stringByAppendingString:v31];
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"morpher.weights[%d]", var2, v75, v76];
        if (v78)
        {
          v34 = MEMORY[0x1E696AD98];
          [v78 weightForBlendShapeNamed:v31];
          *&v35 = v35;
          v36 = [v34 numberWithFloat:v35];
          if (!v18)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v36 = 0;
          if (!v18)
          {
LABEL_14:
            v85(v84, var1, v33, v32, v36, v18);

            v18 = v79;
            goto LABEL_15;
          }
        }

        v37 = v18;
        v38 = MEMORY[0x1E696AD98];
        [v37 weightForBlendShapeNamed:v31];
        *&v39 = v39;
        v18 = [v38 numberWithFloat:v39];
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v27;
    ++v26;
  }

  while (v27 != 52);
  if (self->_friendlyPoseMorphInfoCount)
  {
    v40 = 0;
    v41 = 0;
    v42 = v78;
    while (1)
    {
      v43 = &self->_friendlyPoseMorphInfos[v40];
      v44 = v43->var1;
      v45 = v43->var2;
      var3 = v43->var3;
      v47 = [@"kAVTTransitionAnimation-" stringByAppendingString:@"Emoji"];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"morpher.weights[%d]", v45];
      if (v42)
      {
        v49 = MEMORY[0x1E696AD98];
        [v42 weightForBlendShapeNamed:@"Emoji"];
        *&v50 = v50;
        v51 = [v49 numberWithFloat:v50];
      }

      else
      {
        v51 = 0;
      }

      if (!v79)
      {
        break;
      }

      v52 = MEMORY[0x1E696AD98];
      [v79 weightForBlendShapeNamed:@"Emoji"];
      *&v53 = v53;
      v54 = [v52 numberWithFloat:v53];
      if (!var3)
      {
        goto LABEL_23;
      }

LABEL_24:
      v85(v84, v44, v48, v47, v51, v54);

      ++v41;
      ++v40;
      v42 = v78;
      if (v41 >= self->_friendlyPoseMorphInfoCount)
      {
        goto LABEL_33;
      }
    }

    v54 = 0;
    if (var3)
    {
      goto LABEL_24;
    }

LABEL_23:

    v54 = &unk_1F39D95B8;
    goto LABEL_24;
  }

  v42 = v78;
  if (self->_friendlyPoseMorphInfoProxy.isEnabled)
  {
    if (v79)
    {
      [v79 weightForBlendShapeNamed:@"Emoji"];
      v56 = v55;
      goto LABEL_32;
    }
  }

  else
  {
    v56 = 0.0;
LABEL_32:
    self->_friendlyPoseMorphInfoProxy.morphWeight = v56;
  }

LABEL_33:
  if (v42)
  {
    v57 = MEMORY[0x1E696B098];
    [v42 neckPosition];
    v58 = [v57 avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  }

  else
  {
    v58 = 0;
  }

  if (v79)
  {
    v59 = MEMORY[0x1E696B098];
    [v79 neckPosition];
    v60 = [v59 avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  }

  else
  {
    v60 = 0;
  }

  v85(v84, self->_rootJointNode, @"position", @"kAVTTransitionAnimation-posePosition", v58, v60);

  if (v42)
  {
    v61 = MEMORY[0x1E696B098];
    [v42 neckOrientation];
    v62 = [v61 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
    if (v79)
    {
      goto LABEL_41;
    }

LABEL_43:
    v64 = 0;
  }

  else
  {
    v62 = 0;
    if (!v79)
    {
      goto LABEL_43;
    }

LABEL_41:
    v63 = MEMORY[0x1E696B098];
    [v79 neckOrientation];
    v64 = [v63 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
  }

  v85(v84, self->_neckNode, @"orientation", @"kAVTTransitionAnimation-poseOrientation", v62, v64);

  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v81 = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_2;
  v82 = &__block_descriptor_40_e63_v40__0__CABasicAnimation_8__NSString_16___VFXAnimatable__24__32l;
  v83 = v25;
  v65 = [(AVTAvatar *)self bakedAnimationPlayer];
  v66 = v65;
  if (v65)
  {
    if (a6 <= 0.0)
    {
      [v65 removeAnimationForKey:@"transition-blendFactor"];
      *&v74 = a5;
      [v66 setBlendFactor:v74];
    }

    else
    {
      v67 = [MEMORY[0x1E6979318] animationWithKeyPath:@"blendFactor"];
      v81(v80, v67, @"transition-blendFactor", v66, AVTInterpolateBasicAnimationFloat);
      v68 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
      [v67 setToValue:v68];

      [v67 setDuration:a6];
      [v67 setBeginTime:v25];
      [v67 setFillMode:*MEMORY[0x1E69797E8]];
      [v67 setRemovedOnCompletion:0];
      v69 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v67 setTimingFunction:v69];

      v70 = [v67 fromValue];

      if (v70)
      {
        v71 = [v67 fromValue];
        [v71 floatValue];
        [v66 setBlendFactor:?];
      }

      v72 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:v67];
      v73 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:v72];
      [v73 setTimeSource:1];
      [v73 setTimeOrigin:1];
      [v66 addAnimationPlayer:v73 forKey:@"transition-blendFactor"];

      v42 = v78;
    }
  }

  [MEMORY[0x1E69DF378] commit];

  objc_destroyWeak(&v94);
  objc_destroyWeak(location);
}

uint64_t __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      --WeakRetained[28];
    }

    WeakRetained = *(a1 + 32);
    if (WeakRetained)
    {
      v5 = v3;
      WeakRetained = (*(WeakRetained + 2))();
      v3 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

void __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_266(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v133 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (*(a1 + 48) <= 0.0)
  {
    [v11 removeAnimationForKey:v13];
    if (v15)
    {
      [v11 setValue:v15 forKeyPath:v12];
    }
  }

  else
  {
    if (!v14)
    {
      v16 = [v11 presentationNode];
      v14 = [v16 valueForKeyPath:v12];
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v104 = v14;
      v105 = v12;
      v102 = v13;
      v103 = v11;
      v18 = [v17 keyTimes];
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v125 objects:v132 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v126;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v126 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(a1 + 48);
            [*(*(&v125 + 1) + 8 * i) floatValue];
            v27 = v25 * v26;
            *&v27 = v27;
            v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
            [v19 addObject:v28];
          }

          v22 = [v20 countByEnumeratingWithState:&v125 objects:v132 count:16];
        }

        while (v22);
      }

      v101 = v20;

      v29 = [*(a1 + 32) values];
      v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
      v100 = v29;
      if ([v105 isEqualToString:@"position"])
      {
        [v104 avt_float3Value];
        v108 = v31;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v32 = v29;
        v33 = [v32 countByEnumeratingWithState:&v121 objects:v131 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v122;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v122 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v121 + 1) + 8 * j);
              [v15 avt_float3Value];
              v111 = v38;
              [v37 floatValue];
              v40 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:{*vmlaq_n_f32(v108, vsubq_f32(v111, v108), v39).i64}];
              [v30 addObject:v40];
            }

            v34 = [v32 countByEnumeratingWithState:&v121 objects:v131 count:16];
          }

          while (v34);
        }
      }

      else if ([v105 isEqualToString:@"orientation"])
      {
        [v104 avt_float4Value];
        v112 = v42;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v43 = v29;
        v44 = [v43 countByEnumeratingWithState:&v117 objects:v130 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v118;
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v118 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v117 + 1) + 8 * k);
              [v15 avt_float4Value];
              v109 = v49;
              [v48 floatValue];
              v51 = v50;
              v52 = vmulq_f32(v112, v109);
              v53 = vextq_s8(v52, v52, 8uLL);
              *v52.f32 = vadd_f32(*v52.f32, *v53.f32);
              v52.f32[0] = vaddv_f32(*v52.f32);
              v53.i64[0] = 0;
              v54 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v52, v53)), 0), vnegq_f32(v109), v109);
              v55 = 1.0;
              v56 = vsubq_f32(v112, v54);
              v57 = vmulq_f32(v56, v56);
              v110 = v54;
              v58 = vaddq_f32(v112, v54);
              v59 = vmulq_f32(v58, v58);
              v60 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)))));
              v61 = v60 + v60;
              v62 = 1.0;
              if ((v60 + v60) != 0.0)
              {
                v62 = sinf(v60 + v60) / v61;
              }

              v63 = (1.0 - v51) * v61;
              if (v63 != 0.0)
              {
                v106 = v62;
                v64 = sinf((1.0 - v51) * v61);
                v62 = v106;
                v55 = v64 / v63;
              }

              v65 = v51 * v61;
              v66 = 1.0;
              if (v65 != 0.0)
              {
                v107 = v62;
                v67 = sinf(v65);
                v62 = v107;
                v66 = v67 / v65;
              }

              v68 = v62;
              v69 = vrecpe_f32(LODWORD(v62));
              v70 = vmul_f32(v69, vrecps_f32(LODWORD(v68), v69));
              v71 = vmul_f32(v70, vrecps_f32(LODWORD(v68), v70)).f32[0];
              v70.f32[0] = (1.0 - v51) * (v71 * v55);
              v72 = vmlaq_f32(vmulq_n_f32(v110, v51 * (v71 * v66)), v112, vdupq_lane_s32(v70, 0));
              v73 = vmulq_f32(v72, v72);
              v74 = vadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
              v75 = 0.0;
              if (vaddv_f32(v74) != 0.0)
              {
                v76 = vadd_f32(v74, vdup_lane_s32(v74, 1)).u32[0];
                v77 = vrsqrte_f32(v76);
                v78 = vmul_f32(v77, vrsqrts_f32(v76, vmul_f32(v77, v77)));
                *&v75 = vmulq_n_f32(v72, vmul_f32(v78, vrsqrts_f32(v76, vmul_f32(v78, v78))).f32[0]).u64[0];
              }

              v79 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:v75];
              [v30 addObject:v79];
            }

            v45 = [v43 countByEnumeratingWithState:&v117 objects:v130 count:16];
          }

          while (v45);
        }
      }

      else
      {
        [v104 floatValue];
        v81 = v80;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v82 = v29;
        v83 = [v82 countByEnumeratingWithState:&v113 objects:v129 count:16];
        if (v83)
        {
          v84 = v83;
          v85 = *v114;
          do
          {
            for (m = 0; m != v84; ++m)
            {
              if (*v114 != v85)
              {
                objc_enumerationMutation(v82);
              }

              v87 = *(*(&v113 + 1) + 8 * m);
              [v15 floatValue];
              v89 = v88;
              [v87 floatValue];
              *&v91 = v81 + (v90 * (v89 - v81));
              v92 = [MEMORY[0x1E696AD98] numberWithFloat:v91];
              [v30 addObject:v92];
            }

            v84 = [v82 countByEnumeratingWithState:&v113 objects:v129 count:16];
          }

          while (v84);
        }
      }

      v12 = v105;
      v93 = [MEMORY[0x1E6979390] animationWithKeyPath:v105];
      [v93 setKeyTimes:v19];
      [v93 setValues:v30];
      [v93 setFillMode:*MEMORY[0x1E69797E8]];
      [v93 setRemovedOnCompletion:0];
      [v93 setDuration:*(a1 + 48)];
      [v93 setBeginTime:*(a1 + 56)];
      [v93 setTimingFunction:0];
      v94 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:v93];
      v95 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:v94];
      [v95 setTimeSource:1];
      [v95 setTimeOrigin:1];
      v13 = v102;
      v11 = v103;
      [v103 addAnimationPlayer:v95 forKey:v102];

      v14 = v104;
    }

    else
    {
      v41 = [MEMORY[0x1E6979318] animationWithKeyPath:v12];
      [v41 setFromValue:v14];
      if (v15)
      {
        [v41 setToValue:v15];
        [v41 setFillMode:*MEMORY[0x1E69797E8]];
      }

      [v41 setRemovedOnCompletion:0];
      [v41 setDuration:*(a1 + 48)];
      [v41 setBeginTime:*(a1 + 56)];
      if (*(a1 + 40))
      {
        [v41 setTimingFunction:?];
      }

      else
      {
        v96 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
        [v41 setTimingFunction:v96];
      }

      v97 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:v41];
      v98 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:v97];
      [v98 setTimeSource:1];
      [v98 setTimeOrigin:1];
      [v11 addAnimationPlayer:v98 forKey:v13];
    }
  }

  v99 = *MEMORY[0x1E69E9840];
}

void __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *, float))
{
  v24 = a2;
  v9 = [a4 animationPlayerForKey:a3];
  v10 = [v9 animation];
  v11 = [v10 caAnimation];

  if (v11)
  {
    [v11 beginTime];
    v13 = v12;
    [v11 duration];
    if (v13 + v14 <= *(a1 + 32))
    {
      v22 = [v11 toValue];
      goto LABEL_7;
    }

    v15 = [v11 fromValue];
    if (v15)
    {
      v16 = v15;
      v17 = [v11 toValue];

      if (v17)
      {
        v18 = *(a1 + 32);
        [v11 beginTime];
        v20 = v18 - v19;
        [v11 duration];
        *&v21 = v20 / v21;
        v22 = a5(v11, *&v21);
LABEL_7:
        v23 = v22;
        [v24 setFromValue:v22];
      }
    }
  }
}

- (void)stopTransitionAnimation
{
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    for (i = 8; i != 1672; i += 32)
    {
      [*(&self->_morphInfoFromARKitBlendShapeIndex->var0 + i) removeAllAnimations];
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        [*(&self->_friendlyPoseMorphInfos->var0 + v5) removeAllAnimations];
        ++v4;
        v5 += 32;
      }

      while (v4 < self->_friendlyPoseMorphInfoCount);
    }

    [(VFXNode *)self->_rootJointNode removeAllAnimations];
    [(VFXNode *)self->_neckNode removeAllAnimations];
    [(VFXAnimationPlayer *)self->_bakedAnimationPlayer_lazy removeAllAnimations];
    self->_transitionCount = 0;
  }
}

- (void)stopTransitionAnimationWithBlendOutDuration:(double)a3
{
  v4 = a3;
  for (i = 8; i != 1672; i += 32)
  {
    *&a3 = v4;
    [*(&self->_morphInfoFromARKitBlendShapeIndex->var0 + i) removeAllAnimationsWithBlendOutDuration:a3];
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      *&a3 = v4;
      [*(&self->_friendlyPoseMorphInfos->var0 + v7) removeAllAnimationsWithBlendOutDuration:a3];
      ++v6;
      v7 += 32;
    }

    while (v6 < self->_friendlyPoseMorphInfoCount);
  }

  *&a3 = v4;
  [(VFXNode *)self->_rootJointNode removeAllAnimationsWithBlendOutDuration:a3];
  *&v8 = v4;
  [(VFXNode *)self->_neckNode removeAllAnimationsWithBlendOutDuration:v8];
  *&v9 = v4;
  [(VFXAnimationPlayer *)self->_bakedAnimationPlayer_lazy removeAllAnimationsWithBlendOutDuration:v9];
  self->_transitionCount = 0;
}

- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = +[AVTSnapshotBuilder sharedInstance];
  objc_sync_enter(v10);
  [v10 setAvatar:self];
  v11 = [v9 objectForKeyedSubscript:@"AVTSnapshotAnimatedKey"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    [v10 animatedImageWithSize:v9 scale:width options:{height, a4}];
  }

  else
  {
    [v10 imageWithSize:v9 scale:width options:{height, a4}];
  }
  v13 = ;
  objc_sync_exit(v10);

  return v13;
}

+ (void)preloadAvatar:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v9 = @"AVTRendererOptionInitiallyConfigureForARMode";
  v10[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [(VFXRenderer *)AVTRenderer rendererWithDevice:0 options:v5];

  [v6 setAvatar:v3];
  v7 = [v6 world];
  [v6 prepareObject:v7 shouldAbortBlock:0];

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = avt_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar copyWithZone:];
  }

  return 0;
}

- (id)dataRepresentation
{
  v2 = [(AVTAvatar *)self newDescriptor];
  v3 = [v2 dataRepresentation];

  return v3;
}

+ (AVTAvatar)avatarWithDataRepresentation:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5
{
  v8 = [AVTAvatarDescriptor descriptorWithDataRepresentation:a3 error:a5];
  v9 = [a1 avatarWithDescriptor:v8 usageIntent:a4 error:a5];

  return v9;
}

- (id)newDescriptor
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar newDescriptor];
  }

  return 0;
}

+ (AVTAvatar)avatarWithDescriptor:(id)a3 usageIntent:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = off_1E7F47150;
LABEL_5:
    v9 = [objc_alloc(*v8) initWithDescriptor:v7 usageIntent:a4 error:a5];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = off_1E7F470D8;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)update
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)stickerPhysicsStateIdentifier
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar stickerPhysicsStateIdentifier];
  }

  return 0;
}

- (id)nodesMatchingStickerPattern:(id)a3 inHierarchy:(id)a4 options:(unint64_t)a5 includingDerivedNodes:(BOOL)a6
{
  v6 = a6;
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTAvatar *)self _addNodesMatchingStickerPattern:v10 inHierarchy:v11 toArray:v12 options:a5];
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    [(AVTAvatar *)self addDerivedNodesMatchingStickerPattern:v10 toArray:v12 options:a5, v20];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(AVTAvatar *)self _addNodesMatchingStickerPattern:*(*(&v20 + 1) + 8 * i) inHierarchy:v11 toArray:v12 options:a5, v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar nodesMatchingStickerPattern:inHierarchy:options:includingDerivedNodes:];
    }
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_addNodesMatchingStickerPattern:(id)a3 inHierarchy:(id)a4 toArray:(id)a5 options:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  LOBYTE(a4) = [v9 hasSuffix:@"*"];
  v12 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 1}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__AVTAvatar__addNodesMatchingStickerPattern_inHierarchy_toArray_options___block_invoke;
  v16[3] = &unk_1E7F49420;
  v21 = a4;
  v17 = v12;
  v18 = v10;
  v19 = v9;
  v20 = a6;
  v13 = v9;
  v14 = v10;
  v15 = v12;
  [v11 enumerateHierarchyUsingBlock:v16];
}

void __73__AVTAvatar__addNodesMatchingStickerPattern_inHierarchy_toArray_options___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 64) == 1)
  {
    v3 = [v7 name];
    v4 = [v3 hasPrefix:*(a1 + 32)];

    if (v4)
    {
      if (!AVTNodeMatchesHierarchyEnumerationOptions(v7, *(a1 + 56)))
      {
        goto LABEL_8;
      }

LABEL_7:
      [*(a1 + 40) addObject:v7];
      goto LABEL_8;
    }
  }

  v5 = [v7 name];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  if (v6 && AVTNodeMatchesHierarchyEnumerationOptions(v7, *(a1 + 56)))
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (float)opacity
{
  v2 = [(AVTAvatar *)self avatarNode];
  v3 = v2;
  if (v2)
  {
    [v2 opacity];
    v5 = v4;
  }

  else
  {
    v6 = avt_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar opacity];
    }

    v5 = 1.0;
  }

  return v5;
}

- (void)setOpacity:(float)a3
{
  v7 = [(AVTAvatar *)self avatarNode];
  [v7 opacity];
  if (v5 != a3)
  {
    if (a3 == 1.0 || ([v7 opacity], *&v6 == 1.0))
    {
      [(AVTAvatar *)self _preparePrePass:a3 != 1.0];
    }

    *&v6 = a3;
    [v7 setOpacity:v6];
  }
}

- (void)_preparePrePass:(BOOL)a3
{
  v4 = [(AVTAvatar *)self avatarNode];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVTAvatar__preparePrePass___block_invoke;
  v5[3] = &__block_descriptor_33_e21_v24__0__VFXNode_8_B16l;
  v6 = a3;
  [v4 enumerateHierarchyUsingBlock:v5];
}

void __29__AVTAvatar__preparePrePass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 renderingOrder] <= 0)
  {
    [v3 setUsesDepthPrePass:*(a1 + 32)];
  }
}

BOOL __53__AVTAvatar_removeMorpherDrivenMaterialsInHierarchy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 == a3;
}

void __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 144);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  OUTLINED_FUNCTION_9();
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  [v5 _presentationWeightForTargetAtIndex:v7 token:a2];
  OUTLINED_FUNCTION_9();
  if (v8)
  {
    v8 = v8[2];
  }

  v10 = MEMORY[0x1E696AD98];
  v11 = v9 * 0.5;
  v12 = v8;
  *&v13 = v11;
  v14 = [v10 numberWithFloat:v13];
  [v12 setValue:v14 forKey:@"blink"];

  OUTLINED_FUNCTION_9();
  if (v15)
  {
    v16 = *(v15 + 8);
  }

  OUTLINED_FUNCTION_9();
  if (v18)
  {
    v19 = *(v18 + 40);
  }

  else
  {
    v19 = 0;
  }

  [v17 _presentationWeightForTargetAtIndex:v19 token:a2];
  OUTLINED_FUNCTION_9();
  if (v20)
  {
    v20 = v20[3];
  }

  v22 = MEMORY[0x1E696AD98];
  v23 = v21 * 0.5;
  v24 = v20;
  *&v25 = v23;
  v26 = [v22 numberWithFloat:v25];
  [v24 setValue:v26 forKey:@"blink"];
}

uint64_t __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 152);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  [v5 _presentationWeightForTargetAtIndex:v7 token:a2];
  OUTLINED_FUNCTION_2_3();
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v11)
  {
    v12 = *(v11 + 40);
  }

  else
  {
    v12 = 0;
  }

  [v10 _presentationWeightForTargetAtIndex:v12 token:a2];
  OUTLINED_FUNCTION_2_3();
  if (v13)
  {
    v14 = *(v13 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v16)
  {
    v17 = *(v16 + 48);
  }

  else
  {
    v17 = 0;
  }

  [v15 _presentationWeightForTargetAtIndex:v17 token:a2];
  OUTLINED_FUNCTION_2_3();
  if (v18)
  {
    v19 = *(v18 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v21)
  {
    v22 = *(v21 + 56);
  }

  else
  {
    v22 = 0;
  }

  [v20 _presentationWeightForTargetAtIndex:v22 token:a2];
  OUTLINED_FUNCTION_2_3();
  if (v23)
  {
    v24 = *(v23 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v26)
  {
    v27 = *(v26 + 64);
  }

  else
  {
    v27 = 0;
  }

  [v25 _presentationWeightForTargetAtIndex:v27 token:a2];
  v57 = v28;
  OUTLINED_FUNCTION_2_3();
  if (v29)
  {
    v30 = *(v29 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v32)
  {
    v33 = *(v32 + 72);
  }

  else
  {
    v33 = 0;
  }

  [v31 _presentationWeightForTargetAtIndex:v33 token:a2];
  v56 = v34;
  OUTLINED_FUNCTION_2_3();
  if (v35)
  {
    v36 = *(v35 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v38)
  {
    v39 = *(v38 + 80);
  }

  else
  {
    v39 = 0;
  }

  [v37 _presentationWeightForTargetAtIndex:v39 token:a2];
  v55 = v40;
  OUTLINED_FUNCTION_2_3();
  if (v41)
  {
    v42 = *(v41 + 8);
  }

  OUTLINED_FUNCTION_2_3();
  if (v44)
  {
    v45 = *(v44 + 88);
  }

  else
  {
    v45 = 0;
  }

  [v43 _presentationWeightForTargetAtIndex:v45 token:a2];
  v53 = v46;
  v58 = vdupq_n_s64(0x3FD657184DB22790uLL);
  OUTLINED_FUNCTION_2_3();
  if (v47)
  {
    v48 = *(v47 + 16);
  }

  else
  {
    v48 = 0;
  }

  [v48 setEulerAngles:v53];
  OUTLINED_FUNCTION_2_3();
  if (v49)
  {
    v50 = *(v49 + 24);
  }

  else
  {
    v50 = 0;
  }

  v51 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(__PAIR64__(v56, v57), __PAIR64__(v55, v54))), v58)));

  return [v50 setEulerAngles:v51];
}

uint64_t __76__AVTAvatar_addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_5_1(a1, v2);
}

uint64_t __73__AVTAvatar_removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_5_1(a1, v2);
}

- (void)headNode
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)avatarNode
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_restoreOriginalShaderModifiersOfMaterial:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)arMode
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setArMode:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setupEyeOrientationAndReflections
{
  v4 = objc_alloc_init(AVTEyeSkinningDescriptor);
  v5 = *(a1 + 152);
  *(a1 + 152) = v4;

  [(AVTPupilReflectionCorrectionDescriptor *)*(a1 + 152) setReadMorpher:a2];
  v6 = [*(a1 + 8) childNodeWithName:@"L_eye_JNT" recursively:1];
  [(AVTPupilReflectionCorrectionDescriptor *)*(a1 + 152) setLeftEyeMaterial:v6];

  v7 = [*(a1 + 8) childNodeWithName:@"R_eye_JNT" recursively:1];
  [(AVTPupilReflectionCorrectionDescriptor *)*(a1 + 152) setRightEyeMaterial:v7];

  v8 = [a2 _weightIndexForTargetNamed:@"eyeLookDown_L"];
  v9 = *(a1 + 152);
  if (v9)
  {
    *(v9 + 32) = v8;
  }

  v10 = [a2 _weightIndexForTargetNamed:@"eyeLookIn_L"];
  v11 = *(a1 + 152);
  if (v11)
  {
    *(v11 + 40) = v10;
  }

  v12 = [a2 _weightIndexForTargetNamed:@"eyeLookOut_L"];
  v13 = *(a1 + 152);
  if (v13)
  {
    *(v13 + 48) = v12;
  }

  v14 = [a2 _weightIndexForTargetNamed:@"eyeLookUp_L"];
  v15 = *(a1 + 152);
  if (v15)
  {
    *(v15 + 56) = v14;
  }

  v16 = [a2 _weightIndexForTargetNamed:@"eyeLookDown_R"];
  v17 = *(a1 + 152);
  if (v17)
  {
    *(v17 + 64) = v16;
  }

  v18 = [a2 _weightIndexForTargetNamed:@"eyeLookIn_R"];
  v19 = *(a1 + 152);
  if (v19)
  {
    *(v19 + 72) = v18;
  }

  v20 = [a2 _weightIndexForTargetNamed:@"eyeLookOut_R"];
  v21 = *(a1 + 152);
  if (v21)
  {
    *(v21 + 80) = v20;
  }

  result = [a2 _weightIndexForTargetNamed:@"eyeLookUp_R"];
  v23 = *(a1 + 152);
  if (v23)
  {
    *(v23 + 88) = result;
  }

  return result;
}

- (void)updatePoseWithFaceTrackingData:(void *)a1 applySmoothing:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 length];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updatePoseWithCVAFaceTrackingAnimationDictionary:neckPosition:neckOrientation:applySmoothing:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pose
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)copyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)newDescriptor
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stickerPhysicsStateIdentifier
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nodesMatchingStickerPattern:inHierarchy:options:includingDerivedNodes:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)opacity
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end