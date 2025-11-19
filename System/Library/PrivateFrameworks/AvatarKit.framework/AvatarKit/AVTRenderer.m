@interface AVTRenderer
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)a3;
- (BOOL)arMode;
- (BOOL)deprecated_ntk_isPaused;
- (float)_cek_currentPointOfViewSensorHeight;
- (id)_renderer:(id)a3 subdivDataForHash:(id)a4;
- (id)faceTrackingDelegate;
- (void)__setAvatar:(id)a3;
- (void)_animateToNoTrackingState;
- (void)_avatarWantsSpecificTechniqueDidChange:(id)a3;
- (void)_avtSetupWithOptions:(id)a3;
- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)a3;
- (void)_cek_beginTransaction;
- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)a3;
- (void)_cek_renderAtTime:(double)a3 enableAntialiasing:(BOOL)a4 viewport:(CGRect)a5 commandBuffer:(id)a6 passDescriptor:(id)a7;
- (void)_cek_setCurrentPointOfViewFocalLength:(float)a3;
- (void)_detachAvatarFromRenderer;
- (void)_implementCEKWorkaroundIfNeeded;
- (void)_renderer:(id)a3 didApplyAnimationsAtTime:(double)a4;
- (void)_renderer:(id)a3 didBuildSubdivDataForHash:(id)a4 dataProvider:(id)a5;
- (void)_renderer:(id)a3 updateAtTime:(double)a4;
- (void)_setAvatar:(id)a3;
- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)a3;
- (void)arMode;
- (void)clearOutAnimationToNoTrackingState;
- (void)dealloc;
- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)a3;
- (void)faceTracker:(id)a3 session:(id)a4 didFailWithError:(id)a5;
- (void)faceTracker:(id)a3 sessionInterruptionEnded:(id)a4;
- (void)faceTracker:(id)a3 sessionWasInterrupted:(id)a4;
- (void)faceTrackerDidUpdate:(id)a3 withARFrame:(id)a4;
- (void)renderAtTime:(double)a3 viewport:(CGRect)a4 commandBuffer:(id)a5 passDescriptor:(id)a6;
- (void)renderWithViewport:(CGRect)a3 commandBuffer:(id)a4 passDescriptor:(id)a5;
- (void)renderer:(id)a3 commandBufferDidCompleteWithError:(id)a4;
- (void)renderer:(id)a3 didFallbackToDefaultTextureForSource:(id)a4 message:(id)a5;
- (void)setArMode:(BOOL)a3;
- (void)setAvtRendererTechnique:(id)a3;
- (void)setAvt_antialiasingMode:(unint64_t)a3;
- (void)setEnableReticle:(BOOL)a3;
- (void)setFaceTracker:(id)a3;
- (void)setFaceTrackingDelegate:(id)a3;
- (void)setPresentationConfiguration:(id)a3;
- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)a3;
@end

@implementation AVTRenderer

- (void)_implementCEKWorkaroundIfNeeded
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.clips"];

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

- (void)_avtSetupWithOptions:(id)a3
{
  v22 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AE68]);
  lock = self->_lock;
  self->_lock = v4;

  v6 = objc_alloc(MEMORY[0x1E69DF388]);
  v7 = [v6 avt_init];
  [(AVTRenderer *)self setWorld:v7];

  v8 = [(AVTRenderer *)self world];
  v9 = [v8 physicsWorld];
  LODWORD(v10) = 4.0;
  [v9 setSpeed:v10];

  v11 = [AVTAvatarEnvironment alloc];
  v12 = [(AVTRenderer *)self world];
  v13 = [(AVTAvatarEnvironment *)v11 initAndInstallInScene:v12 renderer:self];
  environment = self->_environment;
  self->_environment = v13;

  v15 = [v22 objectForKeyedSubscript:@"AVTRendererOptionEnableFaceTrackingLossFeedback"];
  v16 = v15;
  if (v15)
  {
    LOBYTE(v15) = [v15 BOOLValue];
  }

  self->_enableFaceTrackingLossFeedback = v15;
  self->_enableReticle = 0;
  v17 = [v22 objectForKeyedSubscript:@"AVTRendererOptionInitiallyConfigureForARMode"];
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
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 addObserver:self selector:sel__avatarWantsSpecificTechniqueDidChange_ name:@"kAVTAvatarWantsSpecificTechniqueDidChangeNotificationName" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(AVTRenderer *)self _detachAvatarFromRenderer];
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:self];
  v4.receiver = self;
  v4.super_class = AVTRenderer;
  [(AVTRenderer *)&v4 dealloc];
}

- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)a3
{
  v5 = [(AVTRenderer *)self world];
  v12 = [v5 physicsWorld];

  [v12 scale];
  if (v6 != 100.0)
  {
    v7 = [(AVTRenderer *)self avatar];
    if (v7 && a3)
    {
      v9 = [(AVTRenderer *)self avatar];
      [v9 arScale];
      *&v11 = 1.0 / v10;
      [v12 setScale:v11];
    }

    else
    {
      LODWORD(v8) = 1.0;
      [v12 setScale:v8];
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

- (void)setArMode:(BOOL)a3
{
  v3 = a3;
  if ((setArMode__done_1 & 1) == 0)
  {
    setArMode__done_1 = 1;
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTRenderer setArMode:v5];
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
  [(AVTRenderer *)self setPresentationConfiguration:v6];
}

- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
        v13 = [(AVTRenderer *)self pointOfView];
        v18 = [v13 camera];

        [v18 avt_setSimdProjectionTransform:{v17, v16, v15, v14}];
      }
    }
  }
}

- (void)faceTrackerDidUpdate:(id)a3 withARFrame:(id)a4
{
  v19 = a3;
  v6 = a4;
  lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
  [v19 lastUpdateTimestamp];
  if (lastFaceTrackerUpdateTimestamp < v8)
  {
    [v19 lastUpdateTimestamp];
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

    v13 = [v19 faceTrackingInfo];
    avatar = self->_avatar;
    v15 = [(AVTRenderer *)self pointOfView];
    [(AVTAvatar *)avatar applyHeadPoseWithTrackingInfo:v13 gazeCorrection:0 pointOfView:v15];

    [(AVTAvatar *)self->_avatar applyBlendShapesWithTrackingInfo:v13];
LABEL_7:

    goto LABEL_13;
  }

  if (self->_lastFaceTrackerUpdateTimestamp - self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp > 1.5)
  {
    v16 = [(AVTFaceTracker *)self->_faceTracker arSession];
    v13 = v16;
    if (self->_faceIsTracked && (!v16 || [v16 state] == 1))
    {
      [(AVTRenderer *)self _animateToNoTrackingState];
    }

    goto LABEL_7;
  }

LABEL_13:
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    arMaskRenderer = self->_arMaskRenderer;
    v18 = [v19 fallBackDepthData];
    -[AVTARMaskRenderer updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:](arMaskRenderer, "updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:", v6, v18, [v19 captureVideoOrientation], objc_msgSend(v19, "interfaceOrientation"), objc_msgSend(v19, "mirroredDepthData"));
  }

  -[AVTRenderer setCaptureImageIsTooDark:](self, "setCaptureImageIsTooDark:", [v19 lowLight]);
  -[AVTRenderer setSensorCovered:](self, "setSensorCovered:", [v19 isSensorCovered]);
}

- (void)faceTracker:(id)a3 session:(id)a4 didFailWithError:(id)a5
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v8 avatarRenderer:self faceTrackingSessionFailedWithError:v9];
  }
}

- (void)faceTracker:(id)a3 sessionWasInterrupted:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarRendererFaceTrackingSessionInterruptionDidBegin:self];
  }
}

- (void)faceTracker:(id)a3 sessionInterruptionEnded:(id)a4
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
    v3 = [(AVTRenderer *)self avatar];
    v4 = +[AVTAvatarPose friendlyPose];
    [v3 animatePhysicsScaleFactor:0.0 duration:1.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__AVTRenderer__animateToNoTrackingState__block_invoke;
    v5[3] = &unk_1E7F49470;
    objc_copyWeak(&v6, &location);
    [v3 transitionToPose:v4 duration:v5 delay:1.0 completionHandler:0.0];
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
    v4 = [(AVTRenderer *)self avatar];
    [v4 stopTransitionAnimation];
    [v4 animatePhysicsScaleFactor:1.0 duration:0.75];
    [v4 setPose:0];
    [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:1];
  }
}

- (void)setEnableReticle:(BOOL)a3
{
  self->_enableReticle = a3;
  if ([(AVTAvatarEnvironment *)self->_environment showReticle]&& !self->_enableReticle)
  {
    environment = self->_environment;

    [(AVTAvatarEnvironment *)environment setShowReticle:0];
  }
}

- (void)setAvt_antialiasingMode:(unint64_t)a3
{
  if (self->_antialiasingMode != a3)
  {
    self->_antialiasingMode = a3;
    [(AVTARMaskRenderer *)self->_arMaskRenderer setClearWithCamera:0 antialiasingMode:a3];
  }
}

- (void)setFaceTracker:(id)a3
{
  v5 = a3;
  faceTracker = self->_faceTracker;
  if (faceTracker != v5)
  {
    v7 = v5;
    [(AVTFaceTracker *)faceTracker removeDelegate:self];
    objc_storeStrong(&self->_faceTracker, a3);
    faceTracker = [(AVTFaceTracker *)self->_faceTracker addDelegate:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](faceTracker, v5);
}

- (id)faceTrackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  return WeakRetained;
}

- (void)setFaceTrackingDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_faceTrackingDelegate, obj);
    v5 = obj;
  }
}

- (void)renderWithViewport:(CGRect)a3 commandBuffer:(id)a4 passDescriptor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v12 = a4;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v13.receiver = self;
  v13.super_class = AVTRenderer;
  [(AVTRenderer *)&v13 renderWithViewport:v12 commandBuffer:v11 passDescriptor:x, y, width, height];
}

- (void)renderAtTime:(double)a3 viewport:(CGRect)a4 commandBuffer:(id)a5 passDescriptor:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v16.receiver = self;
  v16.super_class = AVTRenderer;
  [(AVTRenderer *)&v16 updateAtTime:a3];
  v15.receiver = self;
  v15.super_class = AVTRenderer;
  [(AVTRenderer *)&v15 renderWithViewport:v14 commandBuffer:v13 passDescriptor:x, y, width, height];
}

- (void)setPresentationConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  if (self->_presentationConfiguration != v4)
  {
    objc_storeStrong(&self->_presentationConfiguration, v4);
    v5 = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    if (v5)
    {
      arMaskRenderer = self->_arMaskRenderer;
      if (arMaskRenderer)
      {
        [(AVTARMaskRenderer *)arMaskRenderer setPresentationConfiguration:v4];
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
        v9 = [(AVTARMaskRenderer *)v8 initWithOwner:self presentationConfiguration:v4 techniqueDidChangeHandler:&v12];
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
    if (!v5)
    {
      v11 = AVTFramingModeCamera;
    }

    [(AVTRenderer *)self setFramingMode:*v11];
    [(AVTAvatarEnvironment *)self->_environment avatarDidChange:self->_avatar presentationConfiguration:self->_presentationConfiguration];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:self->_presentationConfiguration];
    [(AVTRenderer *)self _updatePhysicsWorldForAvatarARScaleAndARMode:v5];
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
  v4 = [(AVTRenderer *)self world];
  [(AVTAvatar *)avatar willRemoveFromWorld:v4];

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode removeFromParentNode];
}

- (void)__setAvatar:(id)a3
{
  v5 = a3;
  if (self->_avatar != v5)
  {
    v16 = v5;
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
    v6 = [(AVTAvatar *)self->_avatar pose];
    [(AVTRenderer *)self lock];
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      v7 = [(AVTRenderer *)self avtRendererTechnique];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(AVTRenderer *)self setAvtRendererTechnique:0];
      }
    }

    [(AVTRenderer *)self _detachAvatarFromRenderer];
    objc_storeStrong(&self->_avatar, a3);
    v9 = [(AVTAvatar *)v16 avatarNode];
    avatarNode = self->_avatarNode;
    self->_avatarNode = v9;

    v11 = [(AVTRenderer *)self world];
    v12 = [v11 rootNode];
    [v12 addChildNode:self->_avatarNode];

    avatar = self->_avatar;
    v14 = [(AVTRenderer *)self world];
    [(AVTAvatar *)avatar didAddToScene:v14];

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
    [(AVTAvatar *)self->_avatar setPose:v6];
    [MEMORY[0x1E69DF378] commit];

    v5 = v16;
  }
}

- (void)_setAvatar:(id)a3
{
  v4 = a3;
  kdebug_trace();
  [(AVTRenderer *)self __setAvatar:v4];

  kdebug_trace();
}

- (void)_renderer:(id)a3 didApplyAnimationsAtTime:(double)a4
{
  v8 = a3;
  v6 = [(VFXNode *)self->_avatarNode world];
  v7 = [v8 world];

  if (v6 == v7)
  {
    [(AVTAvatar *)self->_avatar updateAfterAnimationsEvaluatedAtTime:v8 renderer:a4];
  }
}

- (id)_renderer:(id)a3 subdivDataForHash:(id)a4
{
  v4 = a4;
  v5 = +[AVTResourceLocator sharedResourceLocator];
  v6 = [(AVTResourceLocator *)v5 subdivDataCacheURL];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.osddata", v4];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

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

- (void)_renderer:(id)a3 didBuildSubdivDataForHash:(id)a4 dataProvider:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[AVTResourceLocator sharedResourceLocator];
  v9 = [(AVTResourceLocator *)v8 subdivDataCacheURL];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.osddata", v6];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];

    v12 = v7[2](v7);
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

- (void)_renderer:(id)a3 updateAtTime:(double)a4
{
  avatarNode = self->_avatarNode;
  v7 = a3;
  v8 = [(VFXNode *)avatarNode world];
  v9 = [v7 world];

  if (v8 == v9)
  {
    v10 = [(AVTRenderer *)self avatar];
    [v10 updateWithOptions:0];

    [(AVTARMaskRenderer *)self->_arMaskRenderer updateMaskParametersAtTime:a4];
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
    {
      arMaskRenderer = self->_arMaskRenderer;
      v13 = [(AVTRenderer *)self avatar];
      v12 = [v13 rootJointNode];
      [(AVTARMaskRenderer *)arMaskRenderer updateMaskParametersWithRootJointNode:v12];
    }
  }
}

- (void)renderer:(id)a3 didFallbackToDefaultTextureForSource:(id)a4 message:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__AVTRenderer_renderer_didFallbackToDefaultTextureForSource_message___block_invoke;
    v22[3] = &unk_1E7F495B0;
    v23 = v8;
    v24 = v9;
    v25 = v10;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:v22];
  }

  v11 = [v9 description];
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
      *&buf[24] = v8;
      *&buf[32] = 2112;
      *&buf[34] = v9;
      *&buf[42] = 2112;
      *&buf[44] = v10;
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
    *&buf[24] = v8;
    *&buf[32] = 2112;
    *&buf[34] = v9;
    *&buf[42] = 2112;
    *&buf[44] = v10;
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
  v31 = v8;
  v32 = 2112;
  v33 = v9;
  v34 = 2112;
  v35 = v10;
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

- (void)renderer:(id)a3 commandBufferDidCompleteWithError:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 error];
  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__AVTRenderer_renderer_commandBufferDidCompleteWithError___block_invoke;
    v26[3] = &unk_1E7F495B0;
    v27 = v6;
    v28 = v7;
    v29 = v8;
    [(AVTRenderer *)self crashAppExtensionOrViewService_rdar98130076:v26];
  }

  if (v8)
  {
    v9 = [v8 domain];
    v10 = *MEMORY[0x1E6973F70];

    if (v9 == v10 && [v8 code] == 7)
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v7 status];
        v21 = [v7 logs];
        *buf = 136316418;
        *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2048;
        *&buf[24] = v6;
        LOWORD(v43) = 1024;
        *(&v43 + 2) = v20;
        WORD3(v43) = 2112;
        *(&v43 + 1) = v8;
        LOWORD(v44) = 2112;
        *(&v44 + 2) = v21;
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
    v16 = [v7 status];
    v17 = [v7 logs];
    *buf = 136316418;
    *&buf[4] = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    *&buf[24] = v6;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = v16;
    WORD3(v43) = 2112;
    *(&v43 + 1) = v8;
    LOWORD(v44) = 2112;
    *(&v44 + 2) = v17;
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
  v24 = [v7 status];
  v25 = [v7 logs];
  v30 = 136316418;
  v31 = "[AVTRenderer renderer:commandBufferDidCompleteWithError:]";
  v32 = 2112;
  v33 = v23;
  v34 = 2048;
  v35 = v6;
  v36 = 1024;
  v37 = v24;
  v38 = 2112;
  v39 = v8;
  v40 = 2112;
  v41 = v25;
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

- (void)_avatarWantsSpecificTechniqueDidChange:(id)a3
{
  v4 = [a3 object];
  avatar = self->_avatar;

  if (v4 == avatar)
  {
    if ([(AVTAvatar *)self->_avatar avatarSpecificTechniqueClass])
    {
      v7 = [(AVTRenderer *)self avtRendererTechnique];
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

- (void)setAvtRendererTechnique:(id)a3
{
  v5 = a3;
  if (self->_avtRendererTechnique != v5)
  {
    objc_storeStrong(&self->_avtRendererTechnique, a3);
    [(AVTRenderer *)self _avtUpdateRendersContinuously];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DF378];
    v7 = [(AVTRenderer *)self world];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__AVTRenderer_setAvtRendererTechnique___block_invoke;
    v8[3] = &unk_1E7F495D8;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v6 enqueueCommandForObject:v7 immediateTransactionBlock:v8];

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

- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)a3
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
  v2 = [(AVTRenderer *)self world];
  v3 = [v2 clock];
  v4 = [v3 isPaused];

  return v4;
}

- (void)deprecated_ntk_setPhysicsWorldTimeStep:(float)a3
{
  v3 = a3;
  v5 = [(AVTRenderer *)self world];
  v4 = [v5 physicsWorld];
  [v4 setTimeStep:v3];
}

- (void)_cek_beginTransaction
{
  [MEMORY[0x1E69DF378] begin];
  v2 = MEMORY[0x1E69DF378];

  [v2 setAnimationDuration:0.0];
}

- (float)_cek_currentPointOfViewSensorHeight
{
  v2 = [(AVTRenderer *)self pointOfView];
  v3 = [v2 camera];

  [v3 sensorHeight];
  v5 = v4;

  return v5;
}

- (void)_cek_setCurrentPointOfViewFocalLength:(float)a3
{
  v4 = [(AVTRenderer *)self pointOfView];
  v6 = [v4 camera];

  *&v5 = a3;
  [v6 setFocalLength:v5];
}

- (void)_cek_renderAtTime:(double)a3 enableAntialiasing:(BOOL)a4 viewport:(CGRect)a5 commandBuffer:(id)a6 passDescriptor:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (a4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = a7;
  v16 = a6;
  [(AVTRenderer *)self setAvt_antialiasingMode:v14];
  [MEMORY[0x1E69DF378] flush];
  [(AVTRenderer *)self updateProjectionMatrixForARModeIfNeeded:width, height];
  v18.receiver = self;
  v18.super_class = AVTRenderer;
  [(AVTRenderer *)&v18 updateAtTime:a3];
  v17.receiver = self;
  v17.super_class = AVTRenderer;
  [(AVTRenderer *)&v17 renderWithViewport:v16 commandBuffer:v15 passDescriptor:x, y, width, height];
}

- (void)_cek_fetchBlendshapeWeightsInHierarchyUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTRenderer *)self world];
  v6 = [v5 rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__AVTRenderer_CameraEffectsKit___cek_fetchBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v8[3] = &unk_1E7F496A8;
  v9 = v4;
  v7 = v4;
  [v6 enumerateHierarchyUsingBlock:v8];
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

- (void)_cek_applyBlendshapeWeightsInHierarchyUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTRenderer *)self world];
  v6 = [v5 rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__AVTRenderer_CameraEffectsKit___cek_applyBlendshapeWeightsInHierarchyUsingBlock___block_invoke;
  v8[3] = &unk_1E7F496A8;
  v9 = v4;
  v7 = v4;
  [v6 enumerateHierarchyUsingBlock:v8];
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