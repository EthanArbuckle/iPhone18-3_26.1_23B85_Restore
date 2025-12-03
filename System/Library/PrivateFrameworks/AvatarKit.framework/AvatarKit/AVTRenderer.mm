@interface AVTRenderer
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer;
- (BOOL)arMode;
- (BOOL)deprecated_ntk_isPaused;
- (float)_cek_currentPointOfViewSensorHeight;
- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash;
- (id)faceTrackingDelegate;
- (void)__setAvatar:(id)avatar;
- (void)_animateToNoTrackingState;
- (void)_avatarWantsSpecificTechniqueDidChange:(id)change;
- (void)_avtSetupWithOptions:(id)options;
- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)block;
- (void)_cek_beginTransaction;
- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)block;
- (void)_cek_renderAtTime:(double)time enableAntialiasing:(BOOL)antialiasing viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)_cek_setCurrentPointOfViewFocalLength:(float)length;
- (void)_detachAvatarFromRenderer;
- (void)_implementCEKWorkaroundIfNeeded;
- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time;
- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_setAvatar:(id)avatar;
- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode;
- (void)arMode;
- (void)clearOutAnimationToNoTrackingState;
- (void)dealloc;
- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)step;
- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error;
- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended;
- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted;
- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame;
- (void)renderAtTime:(double)time viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error;
- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)setArMode:(BOOL)mode;
- (void)setAvtRendererTechnique:(id)technique;
- (void)setAvt_antialiasingMode:(unint64_t)mode;
- (void)setEnableReticle:(BOOL)reticle;
- (void)setFaceTracker:(id)tracker;
- (void)setFaceTrackingDelegate:(id)delegate;
- (void)setPresentationConfiguration:(id)configuration;
- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed;
@end

@implementation AVTRenderer

- (void)_implementCEKWorkaroundIfNeeded
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.clips"];

    if (v5)
    {
      [MEMORY[0x1E697A8D8] _implementCEKWorkaroundIfNeeded];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = objc_opt_class();
        if (v6 != objc_opt_class())
        {
          v7 = avt_default_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [AVTRenderer(AvatarKit_CEKWorkaround) _implementCEKWorkaroundIfNeeded];
          }
        }

        v8 = objc_opt_class();
        object_setClass(self, v8);
      }
    }
  }
}

- (void)_avtSetupWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E696AE68]);
  lock = self->_lock;
  self->_lock = v4;

  v6 = objc_alloc(MEMORY[0x1E69DF388]);
  avt_init = [v6 avt_init];
  [(AVTRenderer *)self setWorld:avt_init];

  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];
  LODWORD(v10) = 4.0;
  [physicsWorld setSpeed:v10];

  v11 = [AVTAvatarEnvironment alloc];
  world2 = [(AVTRenderer *)self world];
  v13 = [(AVTAvatarEnvironment *)v11 initAndInstallInScene:world2 renderer:self];
  environment = self->_environment;
  self->_environment = v13;

  v15 = [optionsCopy objectForKeyedSubscript:@"AVTRendererOptionEnableFaceTrackingLossFeedback"];
  v16 = v15;
  if (v15)
  {
    LOBYTE(v15) = [v15 BOOLValue];
  }

  self->_enableFaceTrackingLossFeedback = v15;
  self->_enableReticle = 0;
  v17 = [optionsCopy objectForKeyedSubscript:@"AVTRendererOptionInitiallyConfigureForARMode"];
  v18 = v17;
  if (v17 && ![v17 BOOLValue])
  {
    v19 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  else
  {
    v19 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  v20 = v19;
  [(AVTRenderer *)self setPresentationConfiguration:v19];

  self->_antialiasingMode = 2;
  [(AVTRenderer *)self set_wantsWorldRendererDelegationMessages:1];
  [(AVTRenderer *)self set_resourceManagerMonitor:self];
  [(AVTRenderer *)self set_commandBufferStatusMonitor:self];
  [(AVTRenderer *)self _allowGPUBackgroundExecution];
  [(AVTRenderer *)self _implementCEKWorkaroundIfNeeded];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__avatarWantsSpecificTechniqueDidChange_ name:@"kAVTAvatarWantsSpecificTechniqueDidChangeNotificationName" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AVTRenderer *)self _detachAvatarFromRenderer];
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:self];
  v4.receiver = self;
  v4.super_class = AVTRenderer;
  [(AVTRenderer *)&v4 dealloc];
}

- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode
{
  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];

  [physicsWorld scale];
  if (v6 != 100.0)
  {
    avatar = [(AVTRenderer *)self avatar];
    if (avatar && mode)
    {
      avatar2 = [(AVTRenderer *)self avatar];
      [avatar2 arScale];
      *&v11 = 1.0 / v10;
      [physicsWorld setScale:v11];
    }

    else
    {
      LODWORD(v8) = 1.0;
      [physicsWorld setScale:v8];
    }
  }
}

- (BOOL)arMode
{
  if ((arMode_done_1 & 1) == 0)
  {
    arMode_done_1 = 1;
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTRenderer *)v3 arMode];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)mode
{
  modeCopy = mode;
  if ((setArMode__done_1 & 1) == 0)
  {
    setArMode__done_1 = 1;
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTRenderer setArMode:v5];
    }
  }

  if (modeCopy)
  {
    v6 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v6 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v7 = v6;
  [(AVTRenderer *)self setPresentationConfiguration:v6];
}

- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed
{
  height = needed.height;
  width = needed.width;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    if (![(AVTAvatarEnvironment *)self->_environment showReticle]&& width != 0.0 && height != 0.0)
    {
      [(AVTFaceTracker *)self->_faceTracker cameraIntrinsics];
      if ((v8 + (v6 + v7)) != 0.0)
      {
        [(AVTFaceTracker *)self->_faceTracker projectionMatrixForViewportSize:width zNear:height zFar:0.100000005, 100000.0];
        v16 = v10;
        v17 = v9;
        v14 = v12;
        v15 = v11;
        [(AVTRenderer *)self setFramingMode:@"cameraARMode"];
        pointOfView = [(AVTRenderer *)self pointOfView];
        camera = [pointOfView camera];

        [camera avt_setSimdProjectionTransform:{v17, v16, v15, v14}];
      }
    }
  }
}

- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame
{
  updateCopy = update;
  frameCopy = frame;
  lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
  [updateCopy lastUpdateTimestamp];
  if (lastFaceTrackerUpdateTimestamp < v8)
  {
    [updateCopy lastUpdateTimestamp];
    self->_lastFaceTrackerUpdateTimestamp = v9;
  }

  lastFaceTrackerUpdateWithTrackedFaceTimestamp = self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp;
  [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
  if (lastFaceTrackerUpdateWithTrackedFaceTimestamp < v11)
  {
    [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
    self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp = v12;
    if (!self->_faceIsTracked)
    {
      [(AVTRenderer *)self setFaceIsTracked:1];
      [(AVTRenderer *)self clearOutAnimationToNoTrackingState];
    }

    faceTrackingInfo = [updateCopy faceTrackingInfo];
    avatar = self->_avatar;
    pointOfView = [(AVTRenderer *)self pointOfView];
    [(AVTAvatar *)avatar applyHeadPoseWithTrackingInfo:faceTrackingInfo gazeCorrection:0 pointOfView:pointOfView];

    [(AVTAvatar *)self->_avatar applyBlendShapesWithTrackingInfo:faceTrackingInfo];
LABEL_7:

    goto LABEL_13;
  }

  if (self->_lastFaceTrackerUpdateTimestamp - self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp > 1.5)
  {
    arSession = [(AVTFaceTracker *)self->_faceTracker arSession];
    faceTrackingInfo = arSession;
    if (self->_faceIsTracked && (!arSession || [arSession state] == 1))
    {
      [(AVTRenderer *)self _animateToNoTrackingState];
    }

    goto LABEL_7;
  }

LABEL_13:
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    arMaskRenderer = self->_arMaskRenderer;
    fallBackDepthData = [updateCopy fallBackDepthData];
    -[AVTARMaskRenderer updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:](arMaskRenderer, "updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:", frameCopy, fallBackDepthData, [updateCopy captureVideoOrientation], objc_msgSend(updateCopy, "interfaceOrientation"), objc_msgSend(updateCopy, "mirroredDepthData"));
  }

  -[AVTRenderer setCaptureImageIsTooDark:](self, "setCaptureImageIsTooDark:", [updateCopy lowLight]);
  -[AVTRenderer setSensorCovered:](self, "setSensorCovered:", [updateCopy isSensorCovered]);
}

- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v8 avatarRenderer:self faceTrackingSessionFailedWithError:errorCopy];
  }
}

- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarRendererFaceTrackingSessionInterruptionDidBegin:self];
  }
}

- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarRendererFaceTrackingSessionInterruptionDidEnd:self];
  }
}

- (void)_animateToNoTrackingState
{
  [(AVTRenderer *)self setFaceIsTracked:0];
  if (self->_enableFaceTrackingLossFeedback)
  {
    [(AVTAvatarEnvironment *)self->_environment setShowReticle:self->_enableReticle];
    objc_initWeak(&location, self);
    avatar = [(AVTRenderer *)self avatar];
    v4 = +[AVTAvatarPose friendlyPose];
    [avatar animatePhysicsScaleFactor:0.0 duration:1.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__AVTRenderer__animateToNoTrackingState__block_invoke;
    v5[3] = &unk_1E7F49470;
    objc_copyWeak(&v6, &location);
    [avatar transitionToPose:v4 duration:v5 delay:1.0 completionHandler:0.0];
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __40__AVTRenderer__animateToNoTrackingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[56] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained[49] setEnablePhysicsSimulation:0];
    WeakRetained = v2;
  }
}

- (void)clearOutAnimationToNoTrackingState
{
  if (self->_enableFaceTrackingLossFeedback)
  {
    [(AVTAvatarEnvironment *)self->_environment setShowReticle:0];
    avatar = [(AVTRenderer *)self avatar];
    [avatar stopTransitionAnimation];
    [avatar animatePhysicsScaleFactor:1.0 duration:0.75];
    [avatar setPose:0];
    [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:1];
  }
}

- (void)setEnableReticle:(BOOL)reticle
{
  self->_enableReticle = reticle;
  if ([(AVTAvatarEnvironment *)self->_environment showReticle]&& !self->_enableReticle)
  {
    environment = self->_environment;

    [(AVTAvatarEnvironment *)environment setShowReticle:0];
  }
}

- (void)setAvt_antialiasingMode:(unint64_t)mode
{
  if (self->_antialiasingMode != mode)
  {
    self->_antialiasingMode = mode;
    [(AVTARMaskRenderer *)self->_arMaskRenderer setClearWithCamera:0 antialiasingMode:mode];
  }
}

- (void)setFaceTracker:(id)tracker
{
  trackerCopy = tracker;
  faceTracker = self->_faceTracker;
  if (faceTracker != trackerCopy)
  {
    v7 = trackerCopy;
    [(AVTFaceTracker *)faceTracker removeDelegate:self];
    objc_storeStrong(&self->_faceTracker, tracker);
    faceTracker = [(AVTFaceTracker *)self->_faceTracker addDelegate:self];
    trackerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](faceTracker, trackerCopy);
}

- (id)faceTrackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  return WeakRetained;
}

- (void)setFaceTrackingDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_faceTrackingDelegate, obj);
    v5 = obj;
  }
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v13.receiver = self;
  v13.super_class = AVTRenderer;
  [(AVTRenderer *)&v13 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)renderAtTime:(double)time viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v16.receiver = self;
  v16.super_class = AVTRenderer;
  [(AVTRenderer *)&v16 updateAtTime:time];
  v15.receiver = self;
  v15.super_class = AVTRenderer;
  [(AVTRenderer *)&v15 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)setPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  if (self->_presentationConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_presentationConfiguration, configurationCopy);
    usesAR = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    if (usesAR)
    {
      arMaskRenderer = self->_arMaskRenderer;
      if (arMaskRenderer)
      {
        [(AVTARMaskRenderer *)arMaskRenderer setPresentationConfiguration:configurationCopy];
      }

      else
      {
        objc_initWeak(&location, self);
        v8 = [AVTARMaskRenderer alloc];
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __44__AVTRenderer_setPresentationConfiguration___block_invoke;
        v15 = &unk_1E7F49560;
        objc_copyWeak(&v16, &location);
        v9 = [(AVTARMaskRenderer *)v8 initWithOwner:self presentationConfiguration:configurationCopy techniqueDidChangeHandler:&v12];
        v10 = self->_arMaskRenderer;
        self->_arMaskRenderer = v9;

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }

      [(AVTARMaskRenderer *)self->_arMaskRenderer setFlipDepth:self->_arMaskRendererHasFlippedDepth, v12, v13, v14, v15];
      [(AVTARMaskRenderer *)self->_arMaskRenderer setClearWithCamera:0 antialiasingMode:self->_antialiasingMode];
    }

    else
    {
      [(AVTRenderer *)self setAvtRendererTechnique:0];
      v7 = self->_arMaskRenderer;
      self->_arMaskRenderer = 0;
    }

    v11 = &AVTFramingModeAR;
    if (!usesAR)
    {
      v11 = AVTFramingModeCamera;
    }

    [(AVTRenderer *)self setFramingMode:*v11];
    [(AVTAvatarEnvironment *)self->_environment avatarDidChange:self->_avatar presentationConfiguration:self->_presentationConfiguration];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:self->_presentationConfiguration];
    [(AVTRenderer *)self _updatePhysicsWorldForAvatarARScaleAndARMode:usesAR];
  }
}

void __44__AVTRenderer_setPresentationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setAvtRendererTechnique:v5];
  }
}

- (void)_detachAvatarFromRenderer
{
  avatar = self->_avatar;
  world = [(AVTRenderer *)self world];
  [(AVTAvatar *)avatar willRemoveFromWorld:world];

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode removeFromParentNode];
}

- (void)__setAvatar:(id)avatar
{
  avatarCopy = avatar;
  if (self->_avatar != avatarCopy)
  {
    v16 = avatarCopy;
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
    pose = [(AVTAvatar *)self->_avatar pose];
    [(AVTRenderer *)self lock];
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTRenderer *)self avtRendererTechnique];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(AVTRenderer *)self setAvtRendererTechnique:0];
      }
    }

    [(AVTRenderer *)self _detachAvatarFromRenderer];
    objc_storeStrong(&self->_avatar, avatar);
    avatarNode = [(AVTAvatar *)v16 avatarNode];
    avatarNode = self->_avatarNode;
    self->_avatarNode = avatarNode;

    world = [(AVTRenderer *)self world];
    rootNode = [world rootNode];
    [rootNode addChildNode:self->_avatarNode];

    avatar = self->_avatar;
    world2 = [(AVTRenderer *)self world];
    [(AVTAvatar *)avatar didAddToScene:world2];

    [(AVTAvatarEnvironment *)self->_environment avatarDidChange:self->_avatar presentationConfiguration:self->_presentationConfiguration];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:self->_presentationConfiguration];
    [(AVTRenderer *)self _updatePhysicsWorldForAvatarARScaleAndARMode:[(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR]];
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      v15 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:self];
      [(AVTRenderer *)self setAvtRendererTechnique:v15];
    }

    [(AVTRenderer *)self avatarDidChange];
    [(AVTRenderer *)self unlock];
    [(AVTAvatar *)self->_avatar setPose:pose];
    [MEMORY[0x1E69DF378] commit];

    avatarCopy = v16;
  }
}

- (void)_setAvatar:(id)avatar
{
  avatarCopy = avatar;
  kdebug_trace();
  [(AVTRenderer *)self __setAvatar:avatarCopy];

  kdebug_trace();
}

- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time
{
  _rendererCopy = _renderer;
  world = [(VFXNode *)self->_avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    [(AVTAvatar *)self->_avatar updateAfterAnimationsEvaluatedAtTime:_rendererCopy renderer:time];
  }
}

- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash
{
  hashCopy = hash;
  v5 = +[AVTResourceLocator sharedResourceLocator];
  subdivDataCacheURL = [(AVTResourceLocator *)v5 subdivDataCacheURL];

  if (subdivDataCacheURL)
  {
    hashCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.osddata", hashCopy];
    v8 = [subdivDataCacheURL URLByAppendingPathComponent:hashCopy isDirectory:0];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v8 path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:8 error:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider
{
  hashCopy = hash;
  providerCopy = provider;
  v8 = +[AVTResourceLocator sharedResourceLocator];
  subdivDataCacheURL = [(AVTResourceLocator *)v8 subdivDataCacheURL];

  if (subdivDataCacheURL)
  {
    hashCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.osddata", hashCopy];
    v11 = [subdivDataCacheURL URLByAppendingPathComponent:hashCopy isDirectory:0];

    v12 = providerCopy[2](providerCopy);
    if (v12)
    {
      v13 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__AVTRenderer__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke;
      block[3] = &unk_1E7F47E78;
      v16 = v12;
      v17 = v11;
      dispatch_async(v13, block);

      v14 = v16;
    }

    else
    {
      v14 = avt_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTView _renderer:v14 didBuildSubdivDataForHash:? dataProvider:?];
      }
    }
  }
}

void __64__AVTRenderer__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 writeToURL:v1 options:1 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  avatarNode = self->_avatarNode;
  _rendererCopy = _renderer;
  world = [(VFXNode *)avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    avatar = [(AVTRenderer *)self avatar];
    [avatar updateWithOptions:0];

    [(AVTARMaskRenderer *)self->_arMaskRenderer updateMaskParametersAtTime:time];
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      arMaskRenderer = self->_arMaskRenderer;
      avatar2 = [(AVTRenderer *)self avatar];
      rootJointNode = [avatar2 rootJointNode];
      [(AVTARMaskRenderer *)arMaskRenderer updateMaskParametersWithRootJointNode:rootJointNode];
    }
  }
}

- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message
{
  v38 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  sourceCopy = source;
  messageCopy = message;
  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__AVTRenderer_renderer_didFallbackToDefaultTextureForSource_message___block_invoke;
    v22[3] = &unk_1E7F495B0;
    v23 = rendererCopy;
    v24 = sourceCopy;
    v25 = messageCopy;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:v22];
  }

  v11 = [sourceCopy description];
  v12 = [v11 containsString:@"onTopMask"];

  v13 = avt_default_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (v12)
  {
    if (v14)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 136316162;
      *&buf[4] = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      *&buf[24] = rendererCopy;
      *&buf[32] = 2112;
      *&buf[34] = sourceCopy;
      *&buf[42] = 2112;
      *&buf[44] = messageCopy;
      _os_log_fault_impl(&dword_1BB472000, v13, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
    }

LABEL_10:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v14)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 136316162;
    *&buf[4] = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2048;
    *&buf[24] = rendererCopy;
    *&buf[32] = 2112;
    *&buf[34] = sourceCopy;
    *&buf[42] = 2112;
    *&buf[44] = messageCopy;
    _os_log_fault_impl(&dword_1BB472000, v13, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
  }

  if (!AVTLogAllowsInternalCrash())
  {
    goto LABEL_10;
  }

  v37 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v26 = 136316162;
  v27 = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]";
  v28 = 2112;
  v29 = v21;
  v30 = 2048;
  v31 = rendererCopy;
  v32 = 2112;
  v33 = sourceCopy;
  v34 = 2112;
  v35 = messageCopy;
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

void __69__AVTRenderer_renderer_didFallbackToDefaultTextureForSource_message___block_invoke(void *a1)
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    LODWORD(buf[0]) = 136316162;
    *(buf + 4) = "[AVTRenderer renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
    WORD6(buf[0]) = 2112;
    *(buf + 14) = v5;
    WORD3(buf[1]) = 2048;
    *(&buf[1] + 1) = v6;
    LOWORD(buf[2]) = 2112;
    *(&buf[2] + 2) = v7;
    WORD5(buf[2]) = 2112;
    *(&buf[2] + 12) = v8;
    _os_log_error_impl(&dword_1BB472000, v2, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Failed to find texture for source %@ with message:\n%@", buf, 0x34u);
  }

  v16 = 0;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v9 = a1[4];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  errorCopy = error;
  error = [errorCopy error];
  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__AVTRenderer_renderer_commandBufferDidCompleteWithError___block_invoke;
    v26[3] = &unk_1E7F495B0;
    v27 = rendererCopy;
    v28 = errorCopy;
    v29 = error;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:v26];
  }

  if (error)
  {
    domain = [error domain];
    v10 = *MEMORY[0x1E6973F70];

    if (domain == v10 && [error code] == 7)
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        status = [errorCopy status];
        logs = [errorCopy logs];
        *buf = 136316418;
        *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2048;
        *&buf[24] = rendererCopy;
        LOWORD(v43) = 1024;
        *(&v43 + 2) = status;
        WORD3(v43) = 2112;
        *(&v43 + 1) = error;
        LOWORD(v44) = 2112;
        *(&v44 + 2) = logs;
        _os_log_fault_impl(&dword_1BB472000, v11, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
      }

LABEL_12:
      v13 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v12 = avt_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    status2 = [errorCopy status];
    logs2 = [errorCopy logs];
    *buf = 136316418;
    *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    *&buf[24] = rendererCopy;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = status2;
    WORD3(v43) = 2112;
    *(&v43 + 1) = error;
    LOWORD(v44) = 2112;
    *(&v44 + 2) = logs2;
    _os_log_fault_impl(&dword_1BB472000, v12, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
  }

  if (!AVTLogAllowsInternalCrash())
  {
    goto LABEL_12;
  }

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  status3 = [errorCopy status];
  logs3 = [errorCopy logs];
  v30 = 136316418;
  v31 = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
  v32 = 2112;
  v33 = v23;
  v34 = 2048;
  v35 = rendererCopy;
  v36 = 1024;
  v37 = status3;
  v38 = 2112;
  v39 = error;
  v40 = 2112;
  v41 = logs3;
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

void __58__AVTRenderer_renderer_commandBufferDidCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) status];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) logs];
    LODWORD(buf[0]) = 136316418;
    *(buf + 4) = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]_block_invoke";
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v5;
    HIWORD(buf[2]) = 2048;
    buf[3] = v6;
    LOWORD(v17) = 1024;
    *(&v17 + 2) = v7;
    WORD3(v17) = 2112;
    *(&v17 + 1) = v8;
    LOWORD(v18) = 2112;
    *(&v18 + 2) = v9;
    _os_log_error_impl(&dword_1BB472000, v2, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = *(a1 + 32);
  [*(a1 + 40) status];
  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) logs];
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

- (void)_avatarWantsSpecificTechniqueDidChange:(id)change
{
  object = [change object];
  avatar = self->_avatar;

  if (object == avatar)
  {
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTRenderer *)self avtRendererTechnique];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:self];
        [(AVTRenderer *)self setAvtRendererTechnique:v6];
      }
    }

    else
    {

      [(AVTRenderer *)self setAvtRendererTechnique:0];
    }
  }
}

- (void)setAvtRendererTechnique:(id)technique
{
  techniqueCopy = technique;
  if (self->_avtRendererTechnique != techniqueCopy)
  {
    objc_storeStrong(&self->_avtRendererTechnique, technique);
    [(AVTRenderer *)self _avtUpdateRendersContinuously];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DF378];
    world = [(AVTRenderer *)self world];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__AVTRenderer_setAvtRendererTechnique___block_invoke;
    v8[3] = &unk_1E7F495D8;
    objc_copyWeak(&v10, &location);
    v9 = techniqueCopy;
    [v6 enqueueCommandForObject:world immediateTransactionBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __39__AVTRenderer_setAvtRendererTechnique___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 64, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer
{
  avtRendererTechniquePresentationTree = self->_avtRendererTechniquePresentationTree;
  if (avtRendererTechniquePresentationTree)
  {
    LOBYTE(avtRendererTechniquePresentationTree) = [(AVTRendererTechnique *)avtRendererTechniquePresentationTree techniqueIsActive];
  }

  return avtRendererTechniquePresentationTree;
}

- (BOOL)deprecated_ntk_isPaused
{
  world = [(AVTRenderer *)self world];
  clock = [world clock];
  isPaused = [clock isPaused];

  return isPaused;
}

- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)step
{
  stepCopy = step;
  world = [(AVTRenderer *)self world];
  physicsWorld = [world physicsWorld];
  [physicsWorld setTimeStep:stepCopy];
}

- (void)_cek_beginTransaction
{
  [MEMORY[0x1E69DF378] begin];
  v2 = MEMORY[0x1E69DF378];

  [v2 setAnimationDuration:0.0];
}

- (float)_cek_currentPointOfViewSensorHeight
{
  pointOfView = [(AVTRenderer *)self pointOfView];
  camera = [pointOfView camera];

  [camera sensorHeight];
  v5 = v4;

  return v5;
}

- (void)_cek_setCurrentPointOfViewFocalLength:(float)length
{
  pointOfView = [(AVTRenderer *)self pointOfView];
  camera = [pointOfView camera];

  *&v5 = length;
  [camera setFocalLength:v5];
}

- (void)_cek_renderAtTime:(double)time enableAntialiasing:(BOOL)antialiasing viewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  if (antialiasing)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [(AVTRenderer *)self setAvt_antialiasingMode:v14];
  [MEMORY[0x1E69DF378] flush];
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v18.receiver = self;
  v18.super_class = AVTRenderer;
  [(AVTRenderer *)&v18 updateAtTime:time];
  v17.receiver = self;
  v17.super_class = AVTRenderer;
  [(AVTRenderer *)&v17 renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:x, y, width, height];
}

- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)block
{
  blockCopy = block;
  world = [(AVTRenderer *)self world];
  rootNode = [world rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__AVTRenderer_CameraEffectsKit___cek_fetchBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v8[3] = &unk_1E7F496A8;
  v9 = blockCopy;
  v7 = blockCopy;
  [rootNode enumerateHierarchyUsingBlock:v8];
}

void __82__AVTRenderer_CameraEffectsKit___cek_fetchBlendshapeWeightsInHierarchyUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 name];
  v4 = v3;
  if (v3 && AVTMorphTargetNameDefinesPose(v3))
  {
    v5 = [v8 presentationNode];
    v6 = [v5 morpher];
    v7 = [v6 weights];

    if (v7)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)block
{
  blockCopy = block;
  world = [(AVTRenderer *)self world];
  rootNode = [world rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v8[3] = &unk_1E7F496A8;
  v9 = blockCopy;
  v7 = blockCopy;
  [rootNode enumerateHierarchyUsingBlock:v8];
}

void __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v7 = v6;
  if (v6 && AVTMorphTargetNameDefinesPose(v6))
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke_2;
    v9[3] = &unk_1E7F496D0;
    v10 = v5;
    (*(v8 + 16))(v8, v7, a3, v9);
  }
}

void __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 presentationNode];
  v4 = [v5 morpher];
  [v4 setWeights:v3];
}

- (void)arMode
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[AVTRenderer arMode]";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: %s is deprecated - use AVTPresentationConfiguration instead", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setArMode:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[AVTRenderer setArMode:]";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: %s is deprecated - use AVTPresentationConfiguration instead", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end