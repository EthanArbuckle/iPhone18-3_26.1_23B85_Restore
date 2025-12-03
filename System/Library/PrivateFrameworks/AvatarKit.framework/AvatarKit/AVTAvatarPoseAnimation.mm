@interface AVTAvatarPoseAnimation
+ (id)animationFromDataRepresentation:(id)representation keyPath:(id)path;
+ (id)animationFromDictionaryRepresentation:(id)representation keyPath:(id)path;
+ (id)optimizeSceneKitAnimation:(id)animation target:(id)target;
+ (void)dataRepresentationForAnimation:(id)animation completionHandler:(id)handler;
+ (void)dictionaryRepresentationForAnimation:(id)animation completionHandler:(id)handler;
+ (void)removeAllAnimationsFromAvatar:(id)avatar;
- (AVTAvatarPoseAnimation)initWithAnimatedPoseRepresentationAtURL:(id)l;
- (AVTAvatarPoseAnimation)initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata;
- (AVTAvatarPoseAnimation)initWithSceneKitSceneAtURL:(id)l usdaMetadata:(id *)metadata;
- (AVTAvatarPoseAnimation)initWithStaticPose:(id)pose staticPhysicsStates:(id)states;
- (double)duration;
- (id)_addAnimationToAvatar:(id)avatar options:(unint64_t)options transitionInDuration:(double)duration transitionOutDuration:(double)outDuration isTransient:(BOOL)transient completionQueue:(id)queue completionHandler:(id)handler;
- (id)_initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata identifier:(id)identifier;
- (id)_initWithStaticPoseRepresentation:(id)representation animatedPoseRepresentation:(id)poseRepresentation staticPhysicsStatesRepresentation:(id)statesRepresentation identifier:(id)identifier;
- (id)animatedPoseRepresentationWithAnimationRepresentationBuilder:(id)builder;
- (id)animationsForAvatar:(id)avatar;
- (id)physicalizedPose;
- (void)commonInitWithIdentifier:(id)identifier;
@end

@implementation AVTAvatarPoseAnimation

- (void)commonInitWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = identifierCopy;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v4 = uUIDString;
  }

  v10 = v4;
  v7 = [@"kAVTPoseAnimation-" stringByAppendingString:v4];
  animationBaseKey = self->_animationBaseKey;
  self->_animationBaseKey = v7;
}

- (AVTAvatarPoseAnimation)initWithSceneKitSceneAtURL:(id)l usdaMetadata:(id *)metadata
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (v9)
  {
    v22 = *MEMORY[0x1E697A9B0];
    v23[0] = *MEMORY[0x1E697A9B8];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v21 = 0;
    v11 = [MEMORY[0x1E697A8C8] avt_newSceneWithURL:lCopy options:v10 error:&v21];
    v12 = v21;
    [v11 avt_fixQuirksOfNewUSDSchemaWithOptions:0 handler:0];
    if (v12)
    {
      v13 = avt_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarPoseAnimation *)lCopy initWithSceneKitSceneAtURL:v12 usdaMetadata:v13];
      }
    }

    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v16 = *&metadata->var2;
    v20[0] = *&metadata->var0;
    v20[1] = v16;
    self = [(AVTAvatarPoseAnimation *)self _initWithSceneKitScene:v11 usdaMetadata:v20 identifier:stringByDeletingPathExtension];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (AVTAvatarPoseAnimation)initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata
{
  v4 = *&metadata->var2;
  v6[0] = *&metadata->var0;
  v6[1] = v4;
  return [(AVTAvatarPoseAnimation *)self _initWithSceneKitScene:scene usdaMetadata:v6 identifier:0];
}

- (id)_initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata identifier:(id)identifier
{
  sceneCopy = scene;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = AVTAvatarPoseAnimation;
  v10 = [(AVTAvatarPoseAnimation *)&v31 init];
  v11 = v10;
  if (v10)
  {
    [(AVTAvatarPoseAnimation *)v10 commonInitWithIdentifier:identifierCopy];
    v12 = [[AVTAvatarPose alloc] initWithScene:sceneCopy];
    staticPose = v11->_staticPose;
    v11->_staticPose = v12;

    staticPhysicsStates = v11->_staticPhysicsStates;
    v11->_staticPhysicsStates = 0;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rootNode = [sceneCopy rootNode];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__AVTAvatarPoseAnimation__initWithSceneKitScene_usdaMetadata_identifier___block_invoke;
    v25[3] = &unk_1E7F487B8;
    v18 = v11;
    v26 = v18;
    v27 = v15;
    v28 = v16;
    v19 = *&metadata->var2;
    v29 = *&metadata->var0;
    v30 = v19;
    v20 = v16;
    v21 = v15;
    [rootNode enumerateHierarchyUsingBlock:v25];

    if ([v21 count])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(v18 + 3, v22);
    if ([v20 count])
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(v18 + 4, v23);
  }

  return v11;
}

void __73__AVTAvatarPoseAnimation__initWithSceneKitScene_usdaMetadata_identifier___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 animationKeys];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 animationPlayerForKey:*(*(&v18 + 1) + 8 * v8)];
        v10 = [v9 animation];
        v11 = *(a1 + 32);
        v12 = [objc_opt_class() optimizeSceneKitAnimation:v10 target:v3];
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = *(a1 + 72);
        v17[0] = *(a1 + 56);
        v17[1] = v15;
        _AVTAvatarPoseImportSceneKitAnimation(v3, v10, v13, v14, v17);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (AVTAvatarPoseAnimation)initWithAnimatedPoseRepresentationAtURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:lCopy error:0];
  v8 = [(AVTAvatarPoseAnimation *)self _initWithStaticPoseRepresentation:0 animatedPoseRepresentation:v7 staticPhysicsStatesRepresentation:0 identifier:stringByDeletingPathExtension];

  return v8;
}

- (AVTAvatarPoseAnimation)initWithStaticPose:(id)pose staticPhysicsStates:(id)states
{
  poseCopy = pose;
  statesCopy = states;
  v12.receiver = self;
  v12.super_class = AVTAvatarPoseAnimation;
  v9 = [(AVTAvatarPoseAnimation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(AVTAvatarPoseAnimation *)v9 commonInitWithIdentifier:0];
    objc_storeStrong(&v10->_staticPose, pose);
    objc_storeStrong(&v10->_staticPhysicsStates, states);
  }

  return v10;
}

- (id)_initWithStaticPoseRepresentation:(id)representation animatedPoseRepresentation:(id)poseRepresentation staticPhysicsStatesRepresentation:(id)statesRepresentation identifier:(id)identifier
{
  representationCopy = representation;
  poseRepresentationCopy = poseRepresentation;
  statesRepresentationCopy = statesRepresentation;
  identifierCopy = identifier;
  v40.receiver = self;
  v40.super_class = AVTAvatarPoseAnimation;
  v14 = [(AVTAvatarPoseAnimation *)&v40 init];
  v15 = v14;
  if (v14)
  {
    [(AVTAvatarPoseAnimation *)v14 commonInitWithIdentifier:identifierCopy];
    if (representationCopy)
    {
      v16 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:representationCopy];
      staticPose = v15->_staticPose;
      v15->_staticPose = v16;
    }

    if (statesRepresentationCopy)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesRepresentationCopy, "count")}];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke;
      v38[3] = &unk_1E7F487E0;
      v19 = v18;
      v39 = v19;
      [statesRepresentationCopy enumerateKeysAndObjectsUsingBlock:v38];
      staticPhysicsStates = v15->_staticPhysicsStates;
      v15->_staticPhysicsStates = v19;
      v21 = v19;
    }

    if (poseRepresentationCopy)
    {
      v22 = [poseRepresentationCopy objectForKeyedSubscript:@"blendshapes"];
      v23 = [v22 count];
      if (v23)
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_2;
        v36[3] = &unk_1E7F48808;
        v25 = v24;
        v37 = v25;
        [v22 enumerateKeysAndObjectsUsingBlock:v36];
        blendshapeAnimations = v15->_blendshapeAnimations;
        v15->_blendshapeAnimations = v25;
        v27 = v25;
      }

      v28 = [poseRepresentationCopy objectForKeyedSubscript:@"perNode"];
      if ([v28 count])
      {
        v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_3;
        v34[3] = &unk_1E7F487E0;
        v30 = v29;
        v35 = v30;
        [v28 enumerateKeysAndObjectsUsingBlock:v34];
        perNodeAnimations = v15->_perNodeAnimations;
        v15->_perNodeAnimations = v30;
        v32 = v30;
      }
    }
  }

  return v15;
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AVTAvatarPhysicsState alloc] initWithDictionaryRepresentation:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [AVTAvatarPoseAnimation animationFromDataRepresentation:a3 keyPath:0];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_4;
  v10[3] = &unk_1E7F48808;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [AVTAvatarPoseAnimation animationFromDataRepresentation:a3 keyPath:a2];
  [*(a1 + 32) addObject:v4];
}

- (id)animatedPoseRepresentationWithAnimationRepresentationBuilder:(id)builder
{
  builderCopy = builder;
  if ([(NSDictionary *)self->_blendshapeAnimations count]|| [(NSDictionary *)self->_perNodeAnimations count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(NSDictionary *)self->_blendshapeAnimations count])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      blendshapeAnimations = self->_blendshapeAnimations;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke;
      v19[3] = &unk_1E7F48858;
      v20 = v6;
      v21 = builderCopy;
      v8 = v6;
      [(NSDictionary *)blendshapeAnimations enumerateKeysAndObjectsUsingBlock:v19];
      [v5 setObject:v8 forKeyedSubscript:@"blendshapes"];
    }

    if ([(NSDictionary *)self->_perNodeAnimations count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      perNodeAnimations = self->_perNodeAnimations;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_3;
      v16 = &unk_1E7F488A8;
      v17 = v9;
      v18 = builderCopy;
      v11 = v9;
      [(NSDictionary *)perNodeAnimations enumerateKeysAndObjectsUsingBlock:&v13];
      [v5 setObject:v11 forKeyedSubscript:{@"perNode", v13, v14, v15, v16}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_2;
  v9[3] = &unk_1E7F48830;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v7 = *(v6 + 16);
  v8 = v5;
  v7(v6, a3, v9);
}

void __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_4;
        v16[3] = &unk_1E7F48880;
        v17 = v6;
        (*(v12 + 16))(v12, v11, v16);

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v14];
  v13 = *MEMORY[0x1E69E9840];
}

- (id)animationsForAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke;
  v23 = &unk_1E7F48910;
  selfCopy = self;
  v6 = v5;
  v7 = 0;
  v25 = v6;
  do
  {
    v8 = AVTBlendShapeLocationFromARIndex(v7);
    v9 = [avatarCopy blendShapeIndexForARKitBlendShapeName:v8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0u;
      v20 = 0u;
      if (avatarCopy)
      {
        [avatarCopy morphInfoForARKitBlendShapeIndex:v9];
      }

      v18[0] = v19;
      v18[1] = v20;
      v22(v21, v8, v18);
    }

    ++v7;
  }

  while (v7 != 52);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_111;
  v17[3] = &__block_descriptor_40_e15_v40__0_____qB_8lu32l8;
  v17[4] = v21;
  [avatarCopy enumerateMorphInfoForCustomBlendShapeName:@"Emoji" usingBlock:v17];
  perNodeAnimations = self->_perNodeAnimations;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_2;
  v15[3] = &unk_1E7F48958;
  v11 = v6;
  v16 = v11;
  [(NSDictionary *)perNodeAnimations enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v16;
  v13 = v11;

  return v11;
}

void __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v6 = *(a3 + 8);
    v7 = a2;
    v13 = [v6 name];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@.morpher.weights[%ld]", v13, *(a3 + 16)];
    v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v7];

    if (v9)
    {
      v10 = [v9 copy];
      [v10 setKeyPath:v8];
      [*(a1 + 40) addObject:v10];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E6979318]);
      [v10 setFromValue:&unk_1F39D95A8];
      [v10 setToValue:&unk_1F39D95A8];
      [v10 setKeyPath:v8];
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:v10];
      [v11 addObject:v12];
    }
  }
}

uint64_t __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_111(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return v5(v4, @"Emoji", v8, a4);
}

void __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 copy];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v10 keyPath];
        v14 = [v12 stringWithFormat:@"/%@.%@", v5, v13];
        [v11 setKeyPath:v14];

        [*(a1 + 32) addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (double)duration
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  blendshapeAnimations = self->_blendshapeAnimations;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AVTAvatarPoseAnimation_duration__block_invoke;
  v8[3] = &unk_1E7F48980;
  v8[4] = &v9;
  [(NSDictionary *)blendshapeAnimations enumerateKeysAndObjectsUsingBlock:v8];
  perNodeAnimations = self->_perNodeAnimations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AVTAvatarPoseAnimation_duration__block_invoke_2;
  v7[3] = &unk_1E7F489A8;
  v7[4] = &v9;
  [(NSDictionary *)perNodeAnimations enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __34__AVTAvatarPoseAnimation_duration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a3 duration];
  if (v4 >= v6)
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void __34__AVTAvatarPoseAnimation_duration__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(*(a1 + 32) + 8) + 24);
        [*(*(&v12 + 1) + 8 * v8) duration];
        if (v9 >= v10)
        {
          v10 = v9;
        }

        *(*(*(a1 + 32) + 8) + 24) = v10;
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_addAnimationToAvatar:(id)avatar options:(unint64_t)options transitionInDuration:(double)duration transitionOutDuration:(double)outDuration isTransient:(BOOL)transient completionQueue:(id)queue completionHandler:(id)handler
{
  transientCopy = transient;
  v127 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_staticPose)
  {
    [avatarCopy setPose:?];
  }

  if (options)
  {
    staticPhysicsStates = self->_staticPhysicsStates;
    stickerPhysicsStateIdentifier = [avatarCopy stickerPhysicsStateIdentifier];
    v18 = [(NSDictionary *)staticPhysicsStates objectForKeyedSubscript:stickerPhysicsStateIdentifier];

    [avatarCopy resetToPhysicsState:v18 assumeRestStateIfNil:1];
  }

  v19 = [(AVTAvatarPoseAnimation *)self animationsForAvatar:avatarCopy];
  v20 = 0.0;
  if ((options & 2) != 0)
  {
    v21 = CFAbsoluteTimeGetCurrent() + 0.05;
    v22 = CACurrentMediaTime();
    v20 = fmin(v22 - floor(v22), 1.0) + fmin(v21 - v22 - floor(v21 - v22), 1.0) + -1.0;
  }

  if ((options & 4) != 0)
  {
    v23 = v20 + 2.5;
  }

  else
  {
    v23 = v20;
  }

  if ((options & 8) != 0)
  {
    v24 = arc4random() / 4294967300.0;
    [(AVTAvatarPoseAnimation *)self duration];
    v23 = v23 + v25 * v24;
  }

  [(AVTAvatarPoseAnimation *)self duration];
  v27 = v26;
  v28 = duration + outDuration <= v26;
  v29 = v26 / (duration + outDuration);
  v30 = v29 * duration;
  v31 = v29 * outDuration;
  if (duration + outDuration > v27)
  {
    outDurationCopy = v31;
  }

  else
  {
    outDurationCopy = outDuration;
  }

  if (!v28)
  {
    duration = v30;
  }

  avatarNode = [avatarCopy avatarNode];
  animationKeys = [avatarNode animationKeys];
  v34 = [animationKeys count];
  selfCopy = self;
  v81 = animationKeys;
  v82 = avatarCopy;
  if (v34)
  {
    v83 = v19;
    optionsCopy = options;
    v91 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v34];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v35 = animationKeys;
    v36 = [v35 countByEnumeratingWithState:&v110 objects:v126 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v111;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v111 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v110 + 1) + 8 * i);
          if ([v40 hasPrefix:@"kAVTPoseAnimation-"])
          {
            v41 = [avatarNode animationPlayerForKey:v40];
            v42 = v41;
            if (v41)
            {
              animation = [v41 animation];
              v44 = animation;
              if (animation)
              {
                keyPath = [animation keyPath];
                if ([keyPath length])
                {
                  v46 = [v91 objectForKeyedSubscript:keyPath];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v91 setObject:v46 forKeyedSubscript:keyPath];
                  }

                  [v46 addObject:v40];
                }

                else
                {
                  v49 = avt_default_log();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v40;
                    *&buf[12] = 2112;
                    *&buf[14] = v44;
                  }

                  if (AVTLogAllowsInternalCrash())
                  {
                    goto LABEL_80;
                  }
                }
              }

              else
              {
                v48 = avt_default_log();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v40;
                  *&buf[12] = 2112;
                  *&buf[14] = v42;
                }

                if (AVTLogAllowsInternalCrash())
                {
                  v109 = 0;
                  v124 = 0u;
                  v125 = 0u;
                  v123 = 0u;
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v118 = 138412546;
                  v119 = v40;
                  v120 = 2112;
                  v121 = v42;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_80:
                  v109 = 0;
                  v124 = 0u;
                  v125 = 0u;
                  v123 = 0u;
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v118 = 138412546;
                  v119 = v40;
                  v120 = 2112;
                  v121 = v44;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }
              }

              self = selfCopy;
            }

            else
            {
              v47 = avt_default_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v40;
                _os_log_fault_impl(&dword_1BB472000, v47, OS_LOG_TYPE_FAULT, "Fault: Unreachable code: Animation for key %@ has no player", buf, 0xCu);
              }

              if (AVTLogAllowsInternalCrash())
              {
                [AVTAvatarPoseAnimation _addAnimationToAvatar:buf options:? transitionInDuration:? transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
              }
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v110 objects:v126 count:16];
      }

      while (v37);
    }

    v19 = v83;
    options = optionsCopy;
  }

  else
  {
    v91 = 0;
  }

  v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v86 = [[AVTAvatarPoseAnimationController alloc] initWithAvatar:avatarCopy animationKeys:v50];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v19;
  v51 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = *v106;
    if ((options >> 4) & 1 | transientCopy)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = INFINITY;
    }

    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v106 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v105 + 1) + 8 * j);
        v59 = [(NSString *)self->_animationBaseKey stringByAppendingFormat:@"-%ld", v53];
        [v58 setDuration:v27];
        *&v60 = v55;
        [v58 setRepeatCount:v60];
        [v58 setFillsForward:1];
        [v58 setFillsBackward:1];
        [v58 setTimeOffset:v23];
        [v58 setRemovedOnCompletion:0];
        if (![v50 count] && transientCopy)
        {
          if (v23 != 0.0)
          {
            v61 = avt_default_log();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              [AVTAvatarPoseAnimation _addAnimationToAvatar:buf options:&buf[4] transitionInDuration:v61 transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
            }
          }

          v62 = MEMORY[0x1E69DF2B8];
          if (outDurationCopy <= 0.0)
          {
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2;
            v96[3] = &unk_1E7F48A20;
            v97 = v86;
            v99 = handlerCopy;
            v98 = queueCopy;
            LODWORD(v73) = 1.0;
            v74 = [v62 animationEventWithKeyTime:v96 block:v73];
            v114 = v74;
            v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
            [v58 setAnimationEvents:v75];

            v65 = v99;
            v76 = &v97;
          }

          else
          {
            v103[0] = MEMORY[0x1E69E9820];
            v103[1] = 3221225472;
            v103[2] = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke;
            v103[3] = &unk_1E7F489D0;
            v104[0] = v86;
            *&v104[1] = outDurationCopy;
            v56 = 1.0 - outDurationCopy / v27;
            *&v63 = v56;
            v64 = [v62 animationEventWithKeyTime:v103 block:v63];
            v65 = v64;
            if (handlerCopy)
            {
              v66 = queueCopy;
              if (!queueCopy)
              {
                v67 = avt_default_log();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  [AVTAvatarPoseAnimation _addAnimationToAvatar:&v119 options:v67 transitionInDuration:? transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
                }

                v66 = 0;
              }

              v68 = MEMORY[0x1E69DF2B8];
              v100[0] = MEMORY[0x1E69E9820];
              v100[1] = 3221225472;
              v100[2] = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_125;
              v100[3] = &unk_1E7F489F8;
              v101 = v66;
              v102 = handlerCopy;
              LODWORD(v69) = 1.0;
              v70 = [v68 animationEventWithKeyTime:v100 block:v69];
              v116[0] = v65;
              v116[1] = v70;
              v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
              [v58 setAnimationEvents:v71];

              v72 = v101;
            }

            else
            {
              v115 = v64;
              v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
              [v58 setAnimationEvents:v72];
            }

            v76 = v104;
          }

          self = selfCopy;
        }

        [v50 addObject:v59];
        if (duration <= 0.0)
        {
          [avatarNode addAnimation:v58 forKey:v59];
        }

        else
        {
          [MEMORY[0x1E69DF378] begin];
          [MEMORY[0x1E69DF378] setAnimationDuration:duration];
          [avatarNode addAnimation:v58 forKey:v59];
          [MEMORY[0x1E69DF378] commit];
        }

        keyPath2 = [v58 keyPath];
        [v91 removeObjectForKey:keyPath2];

        ++v53;
      }

      v52 = [obj countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v52);
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_128;
  v93[3] = &unk_1E7F48A48;
  v94 = avatarNode;
  v95 = outDurationCopy;
  v78 = avatarNode;
  [v91 enumerateKeysAndObjectsUsingBlock:v93];

  v79 = *MEMORY[0x1E69E9840];

  return v86;
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeAnimationWithBlendOutDuration:0.0];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v4 = avt_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2_cold_1(v4);
      }

      v3 = *(a1 + 40);
      v2 = *(a1 + 48);
    }

    dispatch_async(v3, v2);
  }
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        *&v9 = v9;
        [*(a1 + 32) removeAnimationForKey:*(*(&v11 + 1) + 8 * v8++) blendOutDuration:v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)animationFromDataRepresentation:(id)representation keyPath:(id)path
{
  v4 = MEMORY[0x1E696ACD0];
  representationCopy = representation;
  v8 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v8];

  return v6;
}

+ (void)dataRepresentationForAnimation:(id)animation completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ACC8];
  v10 = 0;
  handlerCopy = handler;
  animationCopy = animation;
  v8 = [v5 archivedDataWithRootObject:animationCopy requiringSecureCoding:0 error:&v10];
  keyPath = [animationCopy keyPath];

  handlerCopy[2](handlerCopy, keyPath, v8);
}

+ (id)animationFromDictionaryRepresentation:(id)representation keyPath:(id)path
{
  v28[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  representationCopy = representation;
  v7 = [representationCopy objectForKeyedSubscript:@"valuesByKeyTime"];
  v8 = MEMORY[0x1E695DF70];
  allKeys = [v7 allKeys];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(allKeys, "count")}];

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  allKeys2 = [v7 allKeys];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self.floatValue" ascending:1];
  v28[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v15 = [allKeys2 sortedArrayUsingDescriptors:v14];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__AVTAvatarPoseAnimation_animationFromDictionaryRepresentation_keyPath___block_invoke;
  v24[3] = &unk_1E7F48A70;
  v25 = v10;
  v26 = v7;
  v27 = v11;
  v16 = v11;
  v17 = v7;
  v18 = v10;
  [v15 enumerateObjectsUsingBlock:v24];
  v19 = [MEMORY[0x1E6979390] animationWithKeyPath:pathCopy];

  v20 = [representationCopy objectForKeyedSubscript:@"duration"];

  [v20 floatValue];
  [v19 setDuration:v21];

  [v19 setValues:v16];
  [v19 setKeyTimes:v18];

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

void __72__AVTAvatarPoseAnimation_animationFromDictionaryRepresentation_keyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  [v5 floatValue];
  v6 = [v4 numberWithFloat:?];
  [v3 addObject:v6];

  v11 = [*(a1 + 40) objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) addObject:v11];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    if ([v7 count] == 3)
    {
      [v7 avt_float3];
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
    }

    else
    {
      if ([v7 count] != 4)
      {
LABEL_9:

        goto LABEL_10;
      }

      [v7 avt_float4];
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
    }

    v10 = v9;
    [v8 addObject:v9];

    goto LABEL_9;
  }

LABEL_10:
}

+ (void)dictionaryRepresentationForAnimation:(id)animation completionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  caAnimation = [animationCopy caAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[AVTAvatarPoseAnimation dictionaryRepresentationForAnimation:completionHandler:];
  }

  v8 = caAnimation;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v73 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_2;
  v74 = &unk_1E7F48A98;
  v75 = v8;
  keyPath = [v8 keyPath];
  v10 = [keyPath isEqualToString:@"transform"];

  if (!v10)
  {
    keyPath2 = [v8 keyPath];
    v62 = handlerCopy;
    v64 = animationCopy;
    if ([keyPath2 isEqualToString:@"position"])
    {
    }

    else
    {
      keyPath3 = [v8 keyPath];
      v45 = [keyPath3 isEqualToString:@"eulerAngles"];

      if (!v45)
      {
        v46 = &__block_literal_global_161;
        goto LABEL_22;
      }
    }

    v46 = &__block_literal_global_166;
LABEL_22:
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyTimes = [v8 keyTimes];
    v49 = [keyTimes count];

    if (v49)
    {
      v51 = 0;
      do
      {
        keyTimes2 = [v8 keyTimes];
        v53 = [keyTimes2 objectAtIndexedSubscript:v51];
        v54 = v73(v72, v53);
        stringValue = [v54 stringValue];

        values = [v8 values];
        v57 = [values objectAtIndexedSubscript:v51];
        v58 = v46[2](v46, v57);

        [v11 setObject:v58 forKeyedSubscript:stringValue];
        ++v51;
        keyTimes3 = [v8 keyTimes];
        v60 = [keyTimes3 count];
      }

      while (v51 < v60);
    }

    v12 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v50, v8, v11);
    keyPath4 = [v8 keyPath];
    handlerCopy = v62;
    v62[2](v62, keyPath4, v12);
    animationCopy = v64;
    goto LABEL_26;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  keyPath4 = [MEMORY[0x1E69DF330] node];
  [(__CFString *)keyPath4 position];
  v66 = v14;
  [(__CFString *)keyPath4 orientation];
  v65 = v15;
  keyTimes4 = [v8 keyTimes];
  v17 = [keyTimes4 count];

  if (v17)
  {
    v61 = handlerCopy;
    v63 = animationCopy;
    LOBYTE(handlerCopy) = 0;
    LOBYTE(v71) = 0;
    v18 = 0;
    do
    {
      v19 = v11;
      v20 = v12;
      keyTimes5 = [v8 keyTimes];
      v22 = [keyTimes5 objectAtIndexedSubscript:v18];
      v23 = v73(v72, v22);
      stringValue2 = [v23 stringValue];

      values2 = [v8 values];
      v26 = [values2 objectAtIndexedSubscript:v18];

      [v26 avt_float4x4Value];
      v69 = v28;
      v70 = v27;
      v67 = v30;
      v68 = v29;
      [MEMORY[0x1E69DF378] begin];
      [(__CFString *)keyPath4 setTransform:v70, v69, v68, v67];
      [MEMORY[0x1E69DF378] commit];
      if (handlerCopy)
      {
        LOBYTE(handlerCopy) = 1;
      }

      else
      {
        [(__CFString *)keyPath4 position];
        v32 = vmvnq_s8(vceqq_f32(v66, v31));
        v32.i32[3] = v32.i32[2];
        LODWORD(handlerCopy) = vmaxvq_u32(v32) >> 31;
      }

      v12 = v20;
      if (v71)
      {
        v33 = 1;
      }

      else
      {
        [(__CFString *)keyPath4 orientation];
        v33 = vmaxvq_u32(vmvnq_s8(vceqq_f32(v65, v34))) >> 31;
      }

      v71 = v33;
      v11 = v19;
      v35 = MEMORY[0x1E695DEC8];
      [(__CFString *)keyPath4 position];
      v36 = [v35 avt_arrayWithFloat3:?];
      [v19 setObject:v36 forKeyedSubscript:stringValue2];

      v37 = MEMORY[0x1E695DEC8];
      [(__CFString *)keyPath4 orientation];
      v38 = [v37 avt_arrayWithFloat4:?];
      [v12 setObject:v38 forKeyedSubscript:stringValue2];

      ++v18;
      keyTimes6 = [v8 keyTimes];
      v40 = [keyTimes6 count];
    }

    while (v18 < v40);
    if (handlerCopy)
    {
      v42 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v41, v8, v19);
      handlerCopy = v61;
      v61[2](v61, @"position", v42);

      animationCopy = v63;
      if ((v71 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    handlerCopy = v61;
    animationCopy = v63;
    if (v71)
    {
LABEL_20:
      v47 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v41, v8, v12);
      handlerCopy[2](handlerCopy, @"orientation", v47);
    }
  }

LABEL_26:
}

id __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = a2;
  v7 = [v4 dictionary];
  v8 = MEMORY[0x1E696AD98];
  [v6 duration];
  v10 = v9;

  *&v11 = v10;
  v12 = [v8 numberWithFloat:v11];
  [v7 setObject:v12 forKeyedSubscript:@"duration"];

  [v7 setObject:v5 forKeyedSubscript:@"valuesByKeyTime"];

  return v7;
}

uint64_t __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 beginTime];
  v7 = v6;
  [v5 floatValue];
  v9 = v8;

  [*(a1 + 32) timeOffset];
  v11 = v9 - v10;
  [*(a1 + 32) speed];
  v13 = v7 + v11 / v12;

  return [v3 numberWithDouble:v13];
}

id __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 avt_float3Value];
    v3 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:?];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

+ (id)optimizeSceneKitAnimation:(id)animation target:(id)target
{
  animationCopy = animation;
  targetCopy = target;
  [animationCopy setUsesSceneTimeBase:1];
  [animationCopy _optimizeKeyframesWithTarget:targetCopy];

  [animationCopy setUsesSceneTimeBase:0];

  return animationCopy;
}

+ (void)removeAllAnimationsFromAvatar:(id)avatar
{
  v26 = *MEMORY[0x1E69E9840];
  avatarNode = [avatar avatarNode];
  [avatarNode animationKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v20 + 1) + 8 * i) hasPrefix:@"kAVTPoseAnimation-"])
        {

          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v9 = v4;
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v17;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v16 + 1) + 8 * j);
                if ([v14 hasPrefix:{@"kAVTPoseAnimation-", v16}])
                {
                  [avatarNode removeAnimationForKey:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v11);
          }

          goto LABEL_20;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [avatarNode removeAllAnimations];
LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)physicalizedPose
{
  v2 = [[AVTAvatarPhysicalizedPose alloc] initWithPose:self->_staticPose physicsStates:self->_staticPhysicsStates];

  return v2;
}

- (void)initWithSceneKitSceneAtURL:(NSObject *)a3 usdaMetadata:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v6 = [a2 description];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load scene at %@ with error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_addAnimationToAvatar:(uint64_t *)a1 options:(_OWORD *)a2 transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)_addAnimationToAvatar:(NSObject *)a3 options:transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "timeOffset == 0.0";
  OUTLINED_FUNCTION_0_4(&dword_1BB472000, a2, a3, "Error: Condition '%s' failed. Needs more work to support timeOffset + VFXAnimationEvent", a1);
}

- (void)_addAnimationToAvatar:(NSObject *)a3 options:transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "completionQueue";
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "completionQueue";
  v1 = *MEMORY[0x1E69E9840];
}

@end