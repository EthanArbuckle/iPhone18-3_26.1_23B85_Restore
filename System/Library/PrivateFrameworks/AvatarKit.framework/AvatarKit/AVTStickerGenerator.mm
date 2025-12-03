@interface AVTStickerGenerator
+ (id)addCamera:(id)camera inScene:(id)scene reversionContext:(id)context;
+ (id)poseByApplyingAdjustmentsForConfiguration:(id)configuration avatar:(id)avatar;
+ (void)addProps:(id)props toScene:(id)scene forAvatar:(id)avatar withCamera:(id)camera options:(id)options reversionContext:(id)context;
+ (void)applyViewTransitionConfiguration:(id)configuration forLateAdditionOfComponentAssetNode:(id)node ofAvatar:(id)avatar;
+ (void)applyViewTransitionConfiguration:(id)configuration toView:(id)view scope:(unint64_t)scope options:(unint64_t)options duration:(double)duration avatar:(id)avatar context:(id)context completionHandler:(id)self0;
- (AVTStickerGenerator)initWithAvatar:(id)avatar;
- (void)_snapshotAtTime:(double)time configuration:(id)configuration options:(id)options completionBlock:(id)block;
- (void)_stickerImageWithConfiguration:(id)configuration options:(id)options startTime:(double)time completionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration options:(id)options snapshotBlock:(id)block;
- (void)dealloc;
- (void)posterWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler;
- (void)setAvatar:(id)avatar;
- (void)stickerImageWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stickerImageWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler;
- (void)updateConfiguration:(id)configuration atTime:(double)time;
@end

@implementation AVTStickerGenerator

+ (id)poseByApplyingAdjustmentsForConfiguration:(id)configuration avatar:(id)avatar
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  avatarCopy = avatar;
  physicalizedPose = [configurationCopy physicalizedPose];
  pose = [physicalizedPose pose];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  poseAdjustments = [configurationCopy poseAdjustments];
  v10 = [poseAdjustments countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      v14 = pose;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(poseAdjustments);
        }

        pose = [*(*(&v17 + 1) + 8 * v13) poseByApplyingToPose:v14 forAvatar:avatarCopy];

        ++v13;
        v14 = pose;
      }

      while (v11 != v13);
      v11 = [poseAdjustments countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return pose;
}

+ (void)applyViewTransitionConfiguration:(id)configuration toView:(id)view scope:(unint64_t)scope options:(unint64_t)options duration:(double)duration avatar:(id)avatar context:(id)context completionHandler:(id)self0
{
  optionsCopy = options;
  v100 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  viewCopy = view;
  avatarCopy = avatar;
  contextCopy = context;
  handlerCopy = handler;
  if (!contextCopy)
  {
    v21 = avt_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AVTStickerGenerator applyViewTransitionConfiguration:v21 toView:? scope:? options:? duration:? avatar:? context:? completionHandler:?];
    }
  }

  world = [viewCopy world];
  pointOfView = [viewCopy pointOfView];
  environment = [viewCopy environment];
  v25 = environment;
  if (scope <= 1)
  {
    v72 = pointOfView;
    scopeCopy = scope;
    v75 = world;
    v76 = environment;
    [configurationCopy loadIfNeeded];
    [contextCopy resetForAvatar:avatarCopy];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    presetOverrides = [configurationCopy presetOverrides];
    v27 = [presetOverrides countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v93;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v93 != v29)
          {
            objc_enumerationMutation(presetOverrides);
          }

          [*(*(&v92 + 1) + 8 * i) applyToAvatar:avatarCopy reversionContext:contextCopy];
        }

        v28 = [presetOverrides countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v28);
    }

    selfCopy = self;
    v78 = handlerCopy;

    [avatarCopy updateWithOptions:1];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    shaderModifiers = [configurationCopy shaderModifiers];
    v32 = [shaderModifiers countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v89;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v89 != v34)
          {
            objc_enumerationMutation(shaderModifiers);
          }

          v36 = *(*(&v88 + 1) + 8 * j);
          avatarNode = [avatarCopy avatarNode];
          [v36 applyToMatchedMaterialsOfAvatar:avatarCopy inHierarchy:avatarNode options:0 reversionContext:contextCopy];
        }

        v33 = [shaderModifiers countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v33);
    }

    if ((optionsCopy & 1) == 0)
    {
      v38 = v78;
      if (duration <= 0.0)
      {
        v39 = 0;
      }

      else
      {
        v39 = MEMORY[0x1BFB0EC20](v78);

        v38 = 0;
      }

      poseAdjustments = [configurationCopy poseAdjustments];

      physicalizedPose = [configurationCopy physicalizedPose];
      v42 = physicalizedPose;
      v78 = v38;
      if (poseAdjustments)
      {
        v71 = v39;
        pose = [physicalizedPose pose];

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        poseAdjustments2 = [configurationCopy poseAdjustments];
        v45 = [poseAdjustments2 countByEnumeratingWithState:&v84 objects:v97 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v85;
          do
          {
            v48 = 0;
            v49 = pose;
            do
            {
              if (*v85 != v47)
              {
                objc_enumerationMutation(poseAdjustments2);
              }

              pose = [*(*(&v84 + 1) + 8 * v48) poseByApplyingToPose:v49 forAvatar:avatarCopy];

              ++v48;
              v49 = pose;
            }

            while (v46 != v48);
            v46 = [poseAdjustments2 countByEnumeratingWithState:&v84 objects:v97 count:16];
          }

          while (v46);
        }

        v50 = [AVTAvatarPhysicalizedPose alloc];
        physicalizedPose2 = [configurationCopy physicalizedPose];
        physicsStates = [physicalizedPose2 physicsStates];
        v53 = [(AVTAvatarPhysicalizedPose *)v50 initWithPose:pose physicsStates:physicsStates];

        v39 = v71;
        [(AVTAvatarPhysicalizedPose *)v53 applyWithTransitionToAvatar:avatarCopy duration:v71 completionHandler:duration];

        v42 = pose;
      }

      else
      {
        [physicalizedPose applyWithTransitionToAvatar:avatarCopy duration:v39 completionHandler:duration];
      }
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    morpherOverrides = [configurationCopy morpherOverrides];
    v55 = [morpherOverrides countByEnumeratingWithState:&v80 objects:v96 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v81;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v81 != v57)
          {
            objc_enumerationMutation(morpherOverrides);
          }

          v59 = *(*(&v80 + 1) + 8 * k);
          avatarNode2 = [avatarCopy avatarNode];
          [v59 applyToAvatar:avatarCopy inHierarchy:avatarNode2 reversionContext:contextCopy];
        }

        v56 = [morpherOverrides countByEnumeratingWithState:&v80 objects:v96 count:16];
      }

      while (v56);
    }

    if ((optionsCopy & 2) != 0)
    {
      pointOfView = v72;
      scope = scopeCopy;
      v25 = v76;
      handlerCopy = v78;
      self = selfCopy;
      world = v75;
    }

    else
    {
      camera = [configurationCopy camera];

      v25 = v76;
      handlerCopy = v78;
      self = selfCopy;
      world = v75;
      if (camera)
      {
        camera2 = [configurationCopy camera];
        pointOfView = [selfCopy addCamera:camera2 inScene:v75 reversionContext:contextCopy];

        camera3 = [pointOfView camera];
        [camera3 setProjectionDirection:0];

        [contextCopy saveUpdatePointOfViewFromFramingModeInEnvironment:v76];
        if (duration <= 0.0)
        {
          [viewCopy setPointOfView:pointOfView];
        }

        else
        {
          [MEMORY[0x1E69DF378] begin];
          [MEMORY[0x1E69DF378] setAnimationDuration:duration];
          v64 = MEMORY[0x1E69DF378];
          v65 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
          [v64 setAnimationTimingFunction:v65];

          v25 = v76;
          [viewCopy setPointOfView:pointOfView];
          world = v75;
          [MEMORY[0x1E69DF378] commit];
        }

        scope = scopeCopy;
      }

      else
      {
        pointOfView = v72;
        scope = scopeCopy;
      }
    }
  }

  if ((scope & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = v25;
      v66 = avatarCopy;
      bodyPose = [configurationCopy bodyPose];
      [v66 setShowsBody:bodyPose != 0];
      [v66 setBodyPose:bodyPose];
      if (bodyPose)
      {
        [contextCopy saveShowMemojiBody:0];
      }

      [v66 updateWithOptions:1];

      v25 = v77;
    }

    props = [configurationCopy props];

    if (props)
    {
      props2 = [configurationCopy props];
      [self addProps:props2 toScene:world forAvatar:avatarCopy withCamera:pointOfView options:0 reversionContext:contextCopy];
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v70 = *MEMORY[0x1E69E9840];
}

+ (void)applyViewTransitionConfiguration:(id)configuration forLateAdditionOfComponentAssetNode:(id)node ofAvatar:(id)avatar
{
  v31 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  nodeCopy = node;
  avatarCopy = avatar;
  [configurationCopy loadIfNeeded];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  shaderModifiers = [configurationCopy shaderModifiers];
  v11 = [shaderModifiers countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        [*(*(&v25 + 1) + 8 * v14++) applyToMatchedMaterialsOfAvatar:avatarCopy inHierarchy:nodeCopy options:0 reversionContext:0];
      }

      while (v12 != v14);
      v12 = [shaderModifiers countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  morpherOverrides = [configurationCopy morpherOverrides];
  v16 = [morpherOverrides countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(morpherOverrides);
        }

        [*(*(&v21 + 1) + 8 * v19++) applyToAvatar:avatarCopy inHierarchy:nodeCopy reversionContext:0];
      }

      while (v17 != v19);
      v17 = [morpherOverrides countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)applyConfiguration:(id)configuration options:(id)options snapshotBlock:(id)block
{
  v141[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
  renderer = self->_renderer;
  if (!renderer)
  {
    v140 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v141[0] = MEMORY[0x1E695E110];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:&v140 count:1];
    v13 = [(VFXRenderer *)AVTRenderer rendererWithDevice:0 options:v12];
    v14 = self->_renderer;
    self->_renderer = v13;

    [(AVTRenderer *)self->_renderer setFramingMode:@"cameraDefault"];
    [(AVTRenderer *)self->_renderer setEnableReticle:0];
    renderer = self->_renderer;
  }

  [(AVTRenderer *)renderer setAvatar:self->_avatar];
  [configurationCopy loadIfNeeded];
  [(AVTStickerConfigurationReversionContext *)self->_context resetForAvatar:self->_avatar];
  camera = [configurationCopy camera];

  if (camera)
  {
    v16 = objc_opt_class();
    camera2 = [configurationCopy camera];
    world = [(AVTRenderer *)self->_renderer world];
    pointOfView = [v16 addCamera:camera2 inScene:world reversionContext:self->_context];

    [(AVTRenderer *)self->_renderer setPointOfView:pointOfView];
  }

  else
  {
    framingMode = [configurationCopy framingMode];
    v21 = framingMode;
    v22 = @"camera";
    if (framingMode)
    {
      v22 = framingMode;
    }

    v23 = v22;

    [(AVTRenderer *)self->_renderer setFramingModeForcingPointOfViewUpdate:v23];
    pointOfView = [(AVTRenderer *)self->_renderer pointOfView];
  }

  avatar = self->_avatar;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v103 = blockCopy;
  if (self->_avatar)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    presetOverrides = [configurationCopy presetOverrides];
    v26 = [presetOverrides countByEnumeratingWithState:&v124 objects:v139 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v125;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v125 != v28)
          {
            objc_enumerationMutation(presetOverrides);
          }

          [*(*(&v124 + 1) + 8 * i) applyToAvatar:self->_avatar reversionContext:self->_context];
        }

        v27 = [presetOverrides countByEnumeratingWithState:&v124 objects:v139 count:16];
      }

      while (v27);
    }

    v100 = pointOfView;

    poseAdjustments = [configurationCopy poseAdjustments];

    physicalizedPose = [configurationCopy physicalizedPose];
    v32 = physicalizedPose;
    if (poseAdjustments)
    {
      pose = [physicalizedPose pose];

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      poseAdjustments2 = [configurationCopy poseAdjustments];
      v35 = [poseAdjustments2 countByEnumeratingWithState:&v120 objects:v138 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v121;
        do
        {
          v38 = 0;
          v39 = pose;
          do
          {
            if (*v121 != v37)
            {
              objc_enumerationMutation(poseAdjustments2);
            }

            pose = [*(*(&v120 + 1) + 8 * v38) poseByApplyingToPose:v39 forAvatar:self->_avatar];

            ++v38;
            v39 = pose;
          }

          while (v36 != v38);
          v36 = [poseAdjustments2 countByEnumeratingWithState:&v120 objects:v138 count:16];
        }

        while (v36);
      }

      v40 = [AVTAvatarPhysicalizedPose alloc];
      physicalizedPose2 = [configurationCopy physicalizedPose];
      physicsStates = [physicalizedPose2 physicsStates];
      v43 = [(AVTAvatarPhysicalizedPose *)v40 initWithPose:pose physicsStates:physicsStates];

      [(AVTAvatarPhysicalizedPose *)v43 applyToAvatar:self->_avatar];
      v32 = pose;
    }

    else
    {
      [physicalizedPose applyToAvatar:self->_avatar];
    }

    if (isKindOfClass)
    {
      v44 = self->_avatar;
      bodyPose = [configurationCopy bodyPose];
      [(AVTAvatar *)v44 setShowsBody:bodyPose != 0];
      [(AVTAvatar *)v44 setBodyPose:bodyPose];
    }

    [(AVTAvatar *)self->_avatar updateWithOptions:1];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    shaderModifiers = [configurationCopy shaderModifiers];
    v47 = [shaderModifiers countByEnumeratingWithState:&v116 objects:v137 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v117;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v117 != v49)
          {
            objc_enumerationMutation(shaderModifiers);
          }

          v51 = *(*(&v116 + 1) + 8 * j);
          v52 = self->_avatar;
          avatarNode = [(AVTAvatar *)v52 avatarNode];
          [v51 applyToMatchedMaterialsOfAvatar:v52 inHierarchy:avatarNode options:optionsCopy reversionContext:self->_context];
        }

        v48 = [shaderModifiers countByEnumeratingWithState:&v116 objects:v137 count:16];
      }

      while (v48);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    morpherOverrides = [configurationCopy morpherOverrides];
    v55 = [morpherOverrides countByEnumeratingWithState:&v112 objects:v136 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v113;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v113 != v57)
          {
            objc_enumerationMutation(morpherOverrides);
          }

          v59 = *(*(&v112 + 1) + 8 * k);
          v60 = self->_avatar;
          avatarNode2 = [(AVTAvatar *)v60 avatarNode];
          [v59 applyToAvatar:v60 inHierarchy:avatarNode2 reversionContext:self->_context];
        }

        v56 = [morpherOverrides countByEnumeratingWithState:&v112 objects:v136 count:16];
      }

      while (v56);
    }

    blockCopy = v103;
    pointOfView = v100;
  }

  props = [configurationCopy props];

  if (props)
  {
    v63 = objc_opt_class();
    props2 = [configurationCopy props];
    world2 = [(AVTRenderer *)self->_renderer world];
    [v63 addProps:props2 toScene:world2 forAvatar:self->_avatar withCamera:pointOfView options:optionsCopy reversionContext:self->_context];
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  props3 = [configurationCopy props];
  v67 = [props3 countByEnumeratingWithState:&v108 objects:v135 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v109;
    do
    {
      for (m = 0; m != v68; ++m)
      {
        if (*v109 != v69)
        {
          objc_enumerationMutation(props3);
        }

        [*(*(&v108 + 1) + 8 * m) stickerGenerationWillBegin];
      }

      v68 = [props3 countByEnumeratingWithState:&v108 objects:v135 count:16];
    }

    while (v68);
  }

  camera3 = [pointOfView camera];
  [camera3 fieldOfView];
  v73 = v72;
  [camera3 avt_simdPostProjectionTransform];
  HIDWORD(v74) = 0;
  HIDWORD(v75) = 0;
  v99 = v75;
  v101 = v74;
  HIDWORD(v76) = 0;
  v98 = v76;
  useLegacyCorrectClippingImplementation = [optionsCopy useLegacyCorrectClippingImplementation];
  contentMode = [optionsCopy contentMode];
  v79 = blockCopy;
  if (useLegacyCorrectClippingImplementation)
  {
    if (contentMode != 1)
    {
      goto LABEL_66;
    }

    camera4 = [pointOfView camera];
    *&v81 = v73 * 1.375;
    [camera4 setFieldOfView:v81];
    goto LABEL_65;
  }

  if (contentMode == 1)
  {
    v82 = 0;
    v128 = v101;
    v129 = v99;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = v98;
    do
    {
      *(&v131 + v82) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F06A0, COERCE_FLOAT(*(&v128 + v82))), xmmword_1BB4F06B0, *(&v128 + v82), 1), xmmword_1BB4F06C0, *(&v128 + v82), 2);
      v82 += 16;
    }

    while (v82 != 48);
LABEL_64:
    camera4 = [pointOfView camera];
    [camera4 avt_setSimdPostProjectionTransform:{v95, v96, v97}];
LABEL_65:

    goto LABEL_66;
  }

  if ([optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    v83 = 0;
    v128 = v101;
    v129 = v99;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = v98;
    do
    {
      *(&v131 + v83) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F06A0, COERCE_FLOAT(*(&v128 + v83))), xmmword_1BB4F06B0, *(&v128 + v83), 1), xmmword_1BB4F0610, *(&v128 + v83), 2);
      v83 += 16;
    }

    while (v83 != 48);
    goto LABEL_64;
  }

LABEL_66:
  v84 = pointOfView;
  [MEMORY[0x1E69DF378] commit];
  v79[2](v79);
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  props4 = [configurationCopy props];
  v86 = [props4 countByEnumeratingWithState:&v104 objects:v134 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v105;
    do
    {
      for (n = 0; n != v87; ++n)
      {
        if (*v105 != v88)
        {
          objc_enumerationMutation(props4);
        }

        [*(*(&v104 + 1) + 8 * n) stickerGenerationDidEnd];
      }

      v87 = [props4 countByEnumeratingWithState:&v104 objects:v134 count:16];
    }

    while (v87);
  }

  if (isKindOfClass)
  {
    v90 = self->_avatar;
    [(AVTAvatar *)v90 setShowsBody:0];
    [(AVTAvatar *)v90 setBodyPose:0];
  }

  [(AVTStickerConfigurationReversionContext *)self->_context revertChangesWithScope:0 animationDuration:0.0];
  useLegacyCorrectClippingImplementation2 = [optionsCopy useLegacyCorrectClippingImplementation];
  contentMode2 = [optionsCopy contentMode];
  if (useLegacyCorrectClippingImplementation2)
  {
    if (contentMode2 == 1)
    {
      *&v93 = v73;
      [camera3 setFieldOfView:v93];
    }
  }

  else if (contentMode2 == 1 || [optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    [camera3 avt_setSimdPostProjectionTransform:{*&v101, *&v99, *&v98}];
  }

  [configurationCopy unload];
  [MEMORY[0x1E69DF378] commit];

  v94 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:(id)configuration atTime:(double)time
{
  v37 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  props = [configurationCopy props];
  v8 = [props countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    LOBYTE(wantsTimedUpdates) = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(props);
        }

        if (wantsTimedUpdates)
        {
          wantsTimedUpdates = 1;
        }

        else
        {
          wantsTimedUpdates = [*(*(&v31 + 1) + 8 * i) wantsTimedUpdates];
        }
      }

      v9 = [props countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);

    if (wantsTimedUpdates)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
      memset(&v30, 0, sizeof(v30));
      CMTimeMakeWithSeconds(&v30, time, 1000000000);
      world = [(AVTRenderer *)self->_renderer world];
      rootNode = [world rootNode];
      v15 = [rootNode childNodeWithName:@"sticker_props" recursively:0];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      props2 = [configurationCopy props];
      v17 = [props2 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(props2);
            }

            v21 = *(*(&v26 + 1) + 8 * j);
            nodeName = [v21 nodeName];
            v23 = [v15 childNodeWithName:nodeName recursively:0];

            v25 = v30;
            [v21 updateNode:v23 withContentAtTime:&v25];
          }

          v18 = [props2 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v18);
      }

      [MEMORY[0x1E69DF378] commit];
    }
  }

  else
  {
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)addProps:(id)props toScene:(id)scene forAvatar:(id)avatar withCamera:(id)camera options:(id)options reversionContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  propsCopy = props;
  sceneCopy = scene;
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  contextCopy = context;
  v19 = objc_alloc_init(MEMORY[0x1E69DF330]);
  [v19 setName:@"sticker_props"];
  v27 = sceneCopy;
  rootNode = [sceneCopy rootNode];
  [rootNode addChildNode:v19];

  [contextCopy saveExtraPropsNode:v19];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = propsCopy;
  v21 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        CACurrentMediaTime();
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __86__AVTStickerGenerator_addProps_toScene_forAvatar_withCamera_options_reversionContext___block_invoke;
        v29[3] = &unk_1E7F48358;
        v30 = v19;
        [v25 buildNodeForAvatar:avatarCopy withCamera:cameraCopy options:optionsCopy completionHandler:v29];
      }

      v22 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)addCamera:(id)camera inScene:(id)scene reversionContext:(id)context
{
  contextCopy = context;
  sceneCopy = scene;
  buildNode = [camera buildNode];
  [buildNode setName:@"sticker_camera"];
  rootNode = [sceneCopy rootNode];

  [rootNode addChildNode:buildNode];
  [contextCopy saveExtraCameraNode:buildNode];

  return buildNode;
}

- (AVTStickerGenerator)initWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v12.receiver = self;
  v12.super_class = AVTStickerGenerator;
  v5 = [(AVTStickerGenerator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AVTStickerGenerator *)v5 setAvatar:avatarCopy];
    v7 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    context = v6->_context;
    v6->_context = v7;

    v6->_async = 1;
    v9 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v6->_snapshotHelper;
    v6->_snapshotHelper = v9;

    if (initWithAvatar__onceToken != -1)
    {
      [AVTStickerGenerator initWithAvatar:];
    }

    objc_storeStrong(&v6->_workQueue, initWithAvatar__sharedWorkQueue);
  }

  return v6;
}

void __38__AVTStickerGenerator_initWithAvatar___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.avatarkit.AVTStickerGenerator", v0);
  v2 = initWithAvatar__sharedWorkQueue;
  initWithAvatar__sharedWorkQueue = v1;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTStickerGenerator;
  [(AVTStickerGenerator *)&v2 dealloc];
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  avatar = self->_avatar;
  p_avatar = &self->_avatar;
  if (avatar != avatarCopy)
  {
    v8 = avatarCopy;
    objc_storeStrong(p_avatar, avatar);
    [(AVTAvatar *)*p_avatar pauseBakedAnimation];
    avatarCopy = v8;
  }
}

- (void)_snapshotAtTime:(double)time configuration:(id)configuration options:(id)options completionBlock:(id)block
{
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  [optionsCopy size];
  v13 = v12;
  [optionsCopy size];
  v15 = v14;
  [optionsCopy sizeMultiplier];
  v17 = v16;
  [optionsCopy scaleFactor];
  v19 = v18;
  legacySizeOption = [configurationCopy legacySizeOption];

  if (legacySizeOption)
  {
    legacySizeOption2 = [configurationCopy legacySizeOption];
    [legacySizeOption2 floatValue];
    v23 = v22;

    v13 = v23;
    v15 = v13;
  }

  v24 = (v19 * (v17 * v13));
  v25 = (v19 * (v17 * v15));
  if ([optionsCopy contentMode] == 1)
  {
    v26 = v24;
    v27 = v25;
    if ([optionsCopy useLegacyCorrectClippingImplementation])
    {
      v28 = (v26 * 1.375);
      v29 = (v27 * 1.375);
      v39 = v28;
      v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
      v31 = v29;
      v32 = vcvtd_n_f64_u64(v29 - v25, 1uLL);
    }

    else
    {
      v28 = (v26 * 1.9);
      v29 = (v27 * 1.9);
      v39 = v28;
      v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
      v31 = v29;
      v32 = (v29 - v25);
    }

    goto LABEL_11;
  }

  if ([optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    v26 = v24;
    v28 = (v24 * 1.9);
    v27 = v25;
    v29 = (v25 * 1.9);
    v32 = vcvtd_n_f64_u64(v29 - v25, 1uLL);
    v31 = (v29 - v32);
    v39 = v28;
    v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
LABEL_11:
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_12;
  }

  v26 = *(MEMORY[0x1E695F058] + 16);
  v31 = *(MEMORY[0x1E695F058] + 24);
  v27 = v31;
  v39 = v26;
  v34 = *MEMORY[0x1E695F058];
  v33 = *(MEMORY[0x1E695F058] + 8);
  v32 = v33;
  v30 = *MEMORY[0x1E695F058];
  v29 = v25;
  v28 = v24;
LABEL_12:
  [(AVTStickerGenerator *)self updateConfiguration:configurationCopy atTime:time];
  [MEMORY[0x1E69DF378] flush];
  [(AVTRenderer *)self->_renderer updateAtTime:time];
  renderer = self->_renderer;
  snapshotHelper = self->_snapshotHelper;
  v41 = 0;
  v37 = [(AVTSnapshotHelper *)snapshotHelper newCGImageWithRenderer:2 antialiasingMode:v28 pixelWidth:v29 pixelHeight:&v41 error:?];
  v38 = v41;
  blockCopy[2](blockCopy, v37, v38, v30, v32, v26, v27, v34, v33, v39, v31);

  if (v37)
  {
    CFRelease(v37);
  }
}

- (void)stickerImageWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v8 = +[AVTStickerGeneratorOptions defaultOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AVTStickerGenerator_stickerImageWithConfiguration_completionHandler___block_invoke;
  v10[3] = &unk_1E7F48380;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(AVTStickerGenerator *)self stickerImageWithConfiguration:configurationCopy options:v8 completionHandler:v10];
}

- (void)_stickerImageWithConfiguration:(id)configuration options:(id)options startTime:(double)time completionHandler:(id)handler
{
  configurationCopy = configuration;
  optionsCopy = options;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_1BB5146C7;
  v12 = *(MEMORY[0x1E695F058] + 16);
  v34 = *MEMORY[0x1E695F058];
  v35 = v12;
  contentMode = [optionsCopy contentMode];
  v14 = AVTPosterExpectsExtraTallContent(self->_avatar, configurationCopy);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke;
  v22 = &unk_1E7F483F8;
  selfCopy = self;
  v15 = configurationCopy;
  v24 = v15;
  v16 = optionsCopy;
  v25 = v16;
  v26 = &v36;
  v27 = &v30;
  v28 = contentMode == 4;
  v29 = v14;
  [(AVTStickerGenerator *)self applyConfiguration:v15 options:v16 snapshotBlock:&v19];
  if (v37[3])
  {
    [v16 scaleFactor];
    *&v17 = v17;
    v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v37[3] scale:0 orientation:*&v17];
    CGImageRelease(v37[3]);
    handlerCopy[2](handlerCopy, v18, self->_avatar, v31[4], v31[5], v31[6], v31[7]);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, self->_avatar, v31[4], v31[5], v31[6], v31[7]);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

void __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7F483D0;
  v6 = v4;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  [v2 _snapshotAtTime:v3 configuration:v6 options:v5 completionBlock:0.0];
}

void __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_2(uint64_t a1, CGImage *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = a3;
  if (a2)
  {
    if ([*(a1 + 32) contentMode] == 1 || objc_msgSend(*(a1 + 32), "contentMode") == 2)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_3;
      v32[3] = &unk_1E7F483A8;
      v33 = *(a1 + 40);
      v34 = a4;
      v35 = a5;
      v36 = a6;
      v37 = a7;
      [AVTImageUtilities cropImageWhitespace:a2 outsideRect:v32 insideRect:a4 resultBlock:a5, a6, a7, a8, a9, a10, a11];
    }

    else if ([*(a1 + 32) contentMode] == 3 || objc_msgSend(*(a1 + 32), "contentMode") == 4)
    {
      v23 = *(a1 + 32);
      LODWORD(v22) = *(v23 + 24);
      v24 = *(a1 + 56);
      v25 = *(a1 + 57);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_4;
      v26[3] = &unk_1E7F483A8;
      v27 = *(a1 + 40);
      v28 = a4;
      v29 = a5;
      v30 = a6;
      v31 = a7;
      [AVTImageUtilities posterWithStickerImage:a2 posterSize:v24 minimumHorizontalMargin:v25 thumbnailRect:v26 allowsExtraTallContent:*(v23 + 8) expectsExtraTallContent:*(v23 + 16) resultBlock:v22, a4, a5, a6, a7];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = CGImageRetain(a2);
    }
  }
}

float64x2_t __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_3(uint64_t a1, CGImageRef image, float64_t a3, float64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = CGImageRetain(image);
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 64);
  result = vsubq_f64(*(a1 + 48), v5);
  *(v6 + 32) = result;
  *(v6 + 48) = v7;
  return result;
}

float64x2_t __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_4(uint64_t a1, CGImageRef image, float64_t a3, float64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = CGImageRetain(image);
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 64);
  result = vsubq_f64(*(a1 + 48), v5);
  *(v6 + 32) = result;
  *(v6 + 48) = v7;
  return result;
}

- (void)stickerImageWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler
{
  configurationCopy = configuration;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = CACurrentMediaTime();
  if (self->_async)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke;
    block[3] = &unk_1E7F48448;
    block[4] = self;
    v42 = configurationCopy;
    v43 = optionsCopy;
    v45 = v11;
    v44 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v42;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__2;
    v39 = __Block_byref_object_dispose__2;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__2;
    v33 = __Block_byref_object_dispose__2;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x4010000000;
    v26 = &unk_1BB5146C7;
    v14 = *(MEMORY[0x1E695F058] + 16);
    v27 = *MEMORY[0x1E695F058];
    v28 = v14;
    v15 = self->_workQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_115;
    v16[3] = &unk_1E7F48498;
    v16[4] = self;
    v17 = configurationCopy;
    v22 = v11;
    v18 = optionsCopy;
    v19 = &v35;
    v20 = &v29;
    v21 = &v23;
    dispatch_sync(v15, v16);
    (*(handlerCopy + 2))(handlerCopy, v36[5], v30[5], v24[4], v24[5], v24[6], v24[7]);

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
    v13 = v40;
  }
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7F48380;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v1 _stickerImageWithConfiguration:v2 options:v4 startTime:v5 completionHandler:v3];
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_3;
  block[3] = &unk_1E7F48420;
  v15 = *(a1 + 32);
  v20 = v14;
  v21 = v15;
  v19 = v13;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v16 = v14;
  v17 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_115(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2_116;
  v6[3] = &unk_1E7F48470;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  return [v2 _stickerImageWithConfiguration:v1 options:v3 startTime:v6 completionHandler:v4];
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2_116(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v21 = v13;

  v17 = *(a1[5] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v14;
  v19 = v14;

  v20 = *(a1[6] + 8);
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
}

- (void)posterWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  configurationCopy = configuration;
  v11 = objc_alloc_init(AVTStickerGeneratorOptions);
  [optionsCopy size];
  v13 = v12 + v12;
  [optionsCopy size];
  v15 = v14 + v14;
  if (v13 >= v14 + v14)
  {
    v15 = v13;
  }

  [(AVTStickerGeneratorOptions *)v11 setSize:v15];
  [optionsCopy scaleFactor];
  [(AVTStickerGeneratorOptions *)v11 setScaleFactor:?];
  if ([optionsCopy growsForExtraTallContent])
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  [(AVTStickerGeneratorOptions *)v11 setContentMode:v16];
  [(AVTStickerGeneratorOptions *)v11 sizeMultiplier];
  v28 = v17;
  [(AVTStickerGeneratorOptions *)v11 scaleFactor];
  v27 = v18;
  [optionsCopy size];
  v26 = v19;
  [optionsCopy size];
  v20.f64[0] = v26;
  v20.f64[1] = v21;
  v11->_posterSizeInPixels = vcvtq_f64_u64(vcvtq_u64_f64(vmulq_n_f64(vmulq_n_f64(v20, v28), v27)));
  [optionsCopy minimumHorizontalMargin];
  v23 = v22;

  v24 = v27 * (v28 * v23);
  v11->_posterMinimumHorizontalMargin = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __73__AVTStickerGenerator_posterWithConfiguration_options_completionHandler___block_invoke;
  v29[3] = &unk_1E7F48380;
  v30 = handlerCopy;
  v25 = handlerCopy;
  [(AVTStickerGenerator *)self stickerImageWithConfiguration:configurationCopy options:v11 completionHandler:v29];
}

+ (void)applyViewTransitionConfiguration:(os_log_t)log toView:scope:options:duration:avatar:context:completionHandler:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "context";
  v1 = *MEMORY[0x1E69E9840];
}

@end