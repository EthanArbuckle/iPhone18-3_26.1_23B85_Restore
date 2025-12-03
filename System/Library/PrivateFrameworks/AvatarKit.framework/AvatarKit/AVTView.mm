@interface AVTView
- (AVTView)initWithCoder:(id)coder;
- (AVTView)initWithFrame:(CGRect)frame;
- (AVTView)initWithFrame:(CGRect)frame options:(id)options;
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer;
- (BOOL)arMode;
- (BOOL)faceIsFullyActive;
- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash;
- (id)backgroundContentsBehindDrawable;
- (id)faceTrackingDelegate;
- (id)snapshotWithSize:(CGSize)size scaleFactor:(float)factor options:(id)options;
- (void)_animateToNoTrackingStateShowingReticle:(BOOL)reticle;
- (void)_avatarWantsSpecificTechniqueDidChange:(id)change;
- (void)_avtCommonInit;
- (void)_avtUpdateRendersContinuously;
- (void)_disconnectRendererFromAllAvatars;
- (void)_disconnectRendererFromAvatar:(id)avatar avatarNode:(id)node;
- (void)_drawAtTime:(double)time;
- (void)_drawWithUpdate:(id)update;
- (void)_fireTrackingLoss;
- (void)_refreshPerfTimesInfo;
- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time;
- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_renderer:(id)_renderer willRenderWorld:(id)world atTime:(double)time;
- (void)_resetFaceToRandomPosition;
- (void)_transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(unint64_t)style options:(unint64_t)options;
- (void)_transitionCoordinatorToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style options:(unint64_t)options;
- (void)_transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler;
- (void)_transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler;
- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode;
- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue block:(id)block;
- (void)arMode;
- (void)clearOutAnimationToNoTrackingState;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error;
- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended;
- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted;
- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame;
- (void)layoutSubviews;
- (void)renderer:(id)renderer commandBufferDidCompleteWithError:(id)error;
- (void)renderer:(id)renderer didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)setArMode:(BOOL)mode;
- (void)setAvatar:(id)avatar;
- (void)setAvtRendererTechnique:(id)technique;
- (void)setBackgroundContentsBehindDrawable:(id)drawable;
- (void)setEnableReticle:(BOOL)reticle;
- (void)setFaceTracker:(id)tracker;
- (void)setFaceTrackingDelegate:(id)delegate;
- (void)setFaceTrackingPaused:(BOOL)paused;
- (void)setPresentationConfiguration:(id)configuration;
- (void)setShowPerfHUD:(BOOL)d;
- (void)setupOrientation;
- (void)transitionHelper;
- (void)transitionToPose:(id)pose duration:(double)duration style:(unint64_t)style completionHandler:(id)handler;
- (void)transitionToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style completionHandler:(id)handler;
- (void)updateAtTime:(double)time;
- (void)updateForChangedFaceTrackingPaused;
- (void)updateInterfaceOrientation;
- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed;
@end

@implementation AVTView

- (void)_avtCommonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
  lock = self->_lock;
  self->_lock = v3;

  PerfTimesCreate(0x3Cu, v21);
  v5 = v21[1];
  *&self->_perfTimes.lock._os_unfair_lock_opaque = v21[0];
  *&self->_perfTimes.current = v5;
  [(AVTView *)self setEnableReticle:1];
  _defaultBackgroundColor = [(AVTView *)self _defaultBackgroundColor];
  [(AVTView *)self setBackgroundColor:_defaultBackgroundColor];

  [(AVTView *)self setAntialiasingMode:2];
  [(AVTView *)self setFaceIsTracked:1];
  v7 = objc_alloc(MEMORY[0x1E69DF388]);
  avt_init = [v7 avt_init];
  [(AVTView *)self setWorld:avt_init];

  world = [(AVTView *)self world];
  physicsWorld = [world physicsWorld];
  LODWORD(v11) = 4.0;
  [physicsWorld setSpeed:v11];

  v12 = [AVTAvatarEnvironment alloc];
  world2 = [(AVTView *)self world];
  v14 = [(AVTAvatarEnvironment *)v12 initAndInstallInScene:world2 renderer:self];
  environment = self->_environment;
  self->_environment = v14;

  v16 = objc_alloc_init(AVTFaceTracker);
  faceTracker = self->_faceTracker;
  self->_faceTracker = v16;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    [(AVTFaceTracker *)self->_faceTracker setLimitRoll:1];
  }

  [(AVTFaceTracker *)self->_faceTracker setShouldConstrainHeadPose:1];
  [(AVTFaceTracker *)self->_faceTracker addDelegate:self];
  [(AVTView *)self setupOrientation];
  [(AVTView *)self setup];
  [(AVTView *)self set_wantsWorldRendererDelegationMessages:1];
  [(AVTView *)self set_resourceManagerMonitor:self];
  [(AVTView *)self set_commandBufferStatusMonitor:self];
  [(AVTView *)self _allowGPUBackgroundExecution];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__avatarWantsSpecificTechniqueDidChange_ name:@"kAVTAvatarWantsSpecificTechniqueDidChangeNotificationName" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AVTView *)self _disconnectRendererFromAllAvatars];
  PerfTimesFree(&self->_perfTimes);
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:self];
  v4.receiver = self;
  v4.super_class = AVTView;
  [(AVTView *)&v4 dealloc];
}

- (AVTView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  AVTInitializeShaderCache();
  v12.receiver = self;
  v12.super_class = AVTView;
  height = [(AVTView *)&v12 initWithFrame:optionsCopy options:x, y, width, height];

  if (height)
  {
    [(AVTView *)height _avtCommonInit];
  }

  return height;
}

- (AVTView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  AVTInitializeShaderCache();
  v11.receiver = self;
  v11.super_class = AVTView;
  height = [(AVTView *)&v11 initWithFrame:0 options:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(AVTView *)height _avtCommonInit];
  }

  return v9;
}

- (AVTView)initWithCoder:(id)coder
{
  coderCopy = coder;
  AVTInitializeShaderCache();
  v7.receiver = self;
  v7.super_class = AVTView;
  v5 = [(AVTView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
    [(AVTView *)v5 _avtCommonInit];
  }

  return v5;
}

- (void)_updatePhysicsWorldForAvatarARScaleAndARMode:(BOOL)mode
{
  modeCopy = mode;
  world = [(AVTView *)self world];
  physicsWorld = [world physicsWorld];

  [physicsWorld scale];
  if (v6 != 100.0)
  {
    avatar = [(AVTView *)self avatar];
    v8 = avatar;
    LODWORD(v9) = 1.0;
    if (avatar && modeCopy)
    {
      [avatar arScale];
      *&v9 = 1.0 / *&v9;
    }

    [physicsWorld setScale:v9];
  }
}

- (BOOL)arMode
{
  if ((arMode_done_0 & 1) == 0)
  {
    arMode_done_0 = 1;
    v3 = avt_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTView *)v3 arMode:v4];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)mode
{
  modeCopy = mode;
  if ((setArMode__done_0 & 1) == 0)
  {
    setArMode__done_0 = 1;
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AVTView *)v5 setArMode:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  if (modeCopy)
  {
    v13 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v13 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v14 = v13;
  [(AVTView *)self setPresentationConfiguration:v13];
}

- (void)updateProjectionMatrixForARModeIfNeeded:(CGSize)needed
{
  height = needed.height;
  width = needed.width;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR]&& ![(AVTAvatarEnvironment *)self->_environment showReticle]&& width != 0.0 && height != 0.0)
  {
    [(AVTFaceTracker *)self->_faceTracker projectionMatrixForViewportSize:width zNear:height zFar:0.100000005, 100000.0];
    v13 = v7;
    v14 = v6;
    v11 = v9;
    v12 = v8;
    pointOfView = [(AVTView *)self pointOfView];
    camera = [pointOfView camera];

    [camera avt_setSimdProjectionTransform:{v14, v13, v12, v11}];
  }
}

- (void)_animateToNoTrackingStateShowingReticle:(BOOL)reticle
{
  [(AVTView *)self setFaceIsTracked:0];
  [(AVTAvatarEnvironment *)self->_environment setShowReticle:self->_enableReticle && reticle];
  objc_initWeak(&location, self);
  v5 = +[AVTAvatarPose friendlyPose];
  avatar = [(AVTView *)self avatar];
  v7 = avatar;
  if (avatar)
  {
    [avatar animatePhysicsScaleFactor:0.0 duration:1.0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__AVTView__animateToNoTrackingStateShowingReticle___block_invoke;
    v8[3] = &unk_1E7F49470;
    objc_copyWeak(&v9, &location);
    [v7 transitionToPose:v5 duration:v8 delay:1.0 completionHandler:0.0];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __51__AVTView__animateToNoTrackingStateShowingReticle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained faceIsTracked] & 1) == 0)
  {
    v1 = [WeakRetained environment];
    [v1 setEnablePhysicsSimulation:0];
  }
}

- (void)clearOutAnimationToNoTrackingState
{
  [(AVTAvatarEnvironment *)self->_environment setShowReticle:0];
  avatar = [(AVTView *)self avatar];
  if (avatar)
  {
    [avatar stopTransitionAnimation];
    [avatar animatePhysicsScaleFactor:1.0 duration:0.75];
    [avatar setPose:0];
  }

  [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:1];
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

- (void)updateAtTime:(double)time
{
  avatar = [(AVTView *)self avatar];
  if (avatar)
  {
    v26 = avatar;
    [(AVTARMaskRenderer *)self->_arMaskRenderer updateMaskParametersAtTime:time];
    usesAR = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    if (usesAR)
    {
      arMaskRenderer = self->_arMaskRenderer;
      avatar2 = [(AVTView *)self avatar];
      rootJointNode = [avatar2 rootJointNode];
      [(AVTARMaskRenderer *)arMaskRenderer updateMaskParametersWithRootJointNode:rootJointNode];

      renderer = [(AVTView *)self renderer];
      [renderer _backingSize];
      [(AVTView *)self updateProjectionMatrixForARModeIfNeeded:?];
    }

    [v26 updateWithOptions:0];
    if ([(AVTView *)self enableFaceTracking])
    {
      [(AVTFaceTracker *)self->_faceTracker beginQuery];
      lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
      [(AVTFaceTracker *)self->_faceTracker lastUpdateTimestamp];
      if (lastFaceTrackerUpdateTimestamp < v12)
      {
        [(AVTFaceTracker *)self->_faceTracker lastUpdateTimestamp];
        self->_lastFaceTrackerUpdateTimestamp = v13;
      }

      lastFaceTrackerUpdateWithTrackedFaceTimestamp = self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp;
      [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
      if (lastFaceTrackerUpdateWithTrackedFaceTimestamp >= v15)
      {
        if (self->_lastFaceTrackerUpdateTimestamp - self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp > 1.5 && self->_faceIsTracked)
        {
          arSession = [(AVTFaceTracker *)self->_faceTracker arSession];
          state = [arSession state];

          if (state == 1)
          {
            [(AVTView *)self _animateToNoTrackingStateShowingReticle:1];
            [(AVTView *)self _didLostTrackingForAWhile];
          }
        }
      }

      else
      {
        [(AVTFaceTracker *)self->_faceTracker lastUpdateWithTrackedFaceTimestamp];
        self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp = v16;
        pointOfView = [(AVTView *)self pointOfView];
        if (![(AVTView *)self faceIsTracked])
        {
          [(AVTView *)self setFaceIsTracked:1];
          [(AVTView *)self clearOutAnimationToNoTrackingState];
        }

        faceTrackingInfo = [(AVTFaceTracker *)self->_faceTracker faceTrackingInfo];
        v19 = faceTrackingInfo;
        if (faceTrackingInfo)
        {
          [faceTrackingInfo timestamp];
          if (v20 >= self->_lastFaceTrackerUpdateWithTrackedFaceTimestamp)
          {
            if (-[AVTView directRetargetingMode](self, "directRetargetingMode") || !-[AVTView allowTrackSmoothing](self, "allowTrackSmoothing") || ([v26 isTransitioning] & 1) != 0)
            {
              [v26 applyHeadPoseWithTrackingInfo:v19 gazeCorrection:!usesAR pointOfView:pointOfView];
            }

            else
            {
              [MEMORY[0x1E69DF378] begin];
              [MEMORY[0x1E69DF378] setAnimationDuration:0.05];
              v24 = MEMORY[0x1E69DF378];
              v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
              [v24 setAnimationTimingFunction:v25];

              [v26 applyHeadPoseWithTrackingInfo:v19 gazeCorrection:!usesAR pointOfView:pointOfView];
              [MEMORY[0x1E69DF378] commit];
            }

            [v26 applyBlendShapesWithTrackingInfo:v19];
          }
        }
      }

      [(AVTFaceTracker *)self->_faceTracker faceTrackingFrameID];
      [(AVTFaceTracker *)self->_faceTracker endQuery];
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_perfPacketUpdateTimestamp = v23;
    avatar = v26;
  }
}

- (void)_drawAtTime:(double)time
{
  [(AVTView *)self lockAvatar];
  v9.receiver = self;
  v9.super_class = AVTView;
  [(AVTView *)&v9 _drawAtTime:time];
  v5 = self->_avatar;
  [(AVTView *)self unlockAvatar];
  delegate = [(AVTView *)self delegate];
  v7 = delegate;
  if (v5)
  {
    v8 = delegate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 avatarView:self didRenderAvatar:v5];
  }
}

- (void)_drawWithUpdate:(id)update
{
  updateCopy = update;
  [(AVTView *)self lockAvatar];
  v9.receiver = self;
  v9.super_class = AVTView;
  [(AVTView *)&v9 _drawWithUpdate:updateCopy];

  v5 = self->_avatar;
  [(AVTView *)self unlockAvatar];
  delegate = [(AVTView *)self delegate];
  v7 = delegate;
  if (v5)
  {
    v8 = delegate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 avatarView:self didRenderAvatar:v5];
  }
}

- (void)addAvatarPresentedOnScreenCallbackWithQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  renderer = [(AVTView *)self renderer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AVTView_addAvatarPresentedOnScreenCallbackWithQueue_block___block_invoke;
  v11[3] = &unk_1E7F49498;
  v12 = queueCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = queueCopy;
  [renderer _addGPUFramePresentedHandler:v11];
}

- (void)_disconnectRendererFromAvatar:(id)avatar avatarNode:(id)node
{
  nodeCopy = node;
  avatarCopy = avatar;
  world = [(AVTView *)self world];
  [avatarCopy willRemoveFromWorld:world];

  [nodeCopy removeFromParentNode];
}

- (void)_disconnectRendererFromAllAvatars
{
  avatar = self->_avatar;
  world = [(AVTView *)self world];
  [(AVTAvatar *)avatar willRemoveFromWorld:world];

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode removeFromParentNode];
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = self->_avatar;
  v6 = self->_avatarNode;
  if (v5 != avatarCopy)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:0.0];
    pose = [(AVTAvatar *)v5 pose];
    [(AVTView *)self lockAvatar];
    if ([(AVTAvatar *)v5 avatarSpecificTechniqueClass])
    {
      avtRendererTechnique = [(AVTView *)self avtRendererTechnique];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(AVTView *)self setAvtRendererTechnique:0];
      }
    }

    [(AVTView *)self _disconnectRendererFromAvatar:v5 avatarNode:v6];
    v10 = avatarCopy;
    avatarNode = [(AVTAvatar *)v10 avatarNode];
    objc_storeStrong(&self->_avatar, avatar);
    objc_storeStrong(&self->_avatarNode, avatarNode);
    world = [(AVTView *)self world];
    rootNode = [world rootNode];
    [rootNode addChildNode:avatarNode];

    world2 = [(AVTView *)self world];
    [(AVTAvatar *)v10 didAddToScene:world2];

    [(AVTAvatarEnvironment *)self->_environment avatarDidChange:v10 presentationConfiguration:self->_presentationConfiguration];
    [(AVTView *)self _updatePhysicsWorldForAvatarARScaleAndARMode:[(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR]];
    if ([(AVTAvatar *)v10 avatarSpecificTechniqueClass])
    {
      v15 = [(AVTAvatar *)v10 newAvatarSpecificTechniqueWithRenderer:self];
      [(AVTView *)self setAvtRendererTechnique:v15];
    }

    [(AVTView *)self avatarDidChange];
    [(AVTView *)self unlockAvatar];
    [(AVTAvatar *)v10 setPose:pose];
    if (self->_enableReticle && ![(AVTView *)self faceIsTracked])
    {
      v16 = +[AVTAvatarPose friendlyPose];
      [(AVTAvatar *)v10 setPose:v16];
    }

    [MEMORY[0x1E69DF378] commit];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVTView;
  [(AVTView *)&v3 didMoveToWindow];
  [(AVTView *)self updateInterfaceOrientation];
}

- (void)setupOrientation
{
  [(AVTView *)self updateInterfaceOrientation];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__UIOrientationDidChangeNotification_ name:*MEMORY[0x1E69DDAC0] object:0];
}

- (void)updateInterfaceOrientation
{
  window = [(AVTView *)self window];

  if (window)
  {
    window2 = [(AVTView *)self window];
    windowScene = [window2 windowScene];
    -[AVTFaceTracker setInterfaceOrientation:](self->_faceTracker, "setInterfaceOrientation:", [windowScene interfaceOrientation]);
  }
}

- (void)_fireTrackingLoss
{
  [(AVTView *)self _animateToNoTrackingStateShowingReticle:0];

  [(AVTView *)self _didLostTrackingForAWhile];
}

- (void)_transitionToFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self->_enableFaceTracking && !self->_faceTrackingPaused)
  {
    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    if (self->_faceTrackerDidUpdateBlock)
    {
      v17 = avt_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(AVTView *)v17 _transitionToFaceTrackingWithDuration:v18 style:v19 enableBakedAnimations:v20 completionHandler:v21, v22, v23, v24];
      }
    }

    v25 = MEMORY[0x1BFB0EC20](v10);
    faceTrackerDidUpdateBlock = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = v25;
  }

  else
  {
    v11 = self->_avatar;
    pose = [(AVTAvatar *)v11 pose];
    [(AVTAvatar *)v11 setPhysicsScaleFactor:0.0];
    [(AVTAvatar *)v11 transitionToPose:pose duration:0 delay:3.40282347e38 completionHandler:0.0];
    [(AVTAvatar *)v11 setPose:0];
    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke;
    v26[3] = &unk_1E7F494E8;
    objc_copyWeak(v30, &location);
    v30[1] = *&duration;
    faceTrackerDidUpdateBlock = v11;
    v27 = faceTrackerDidUpdateBlock;
    animationsCopy = animations;
    v14 = pose;
    v28 = v14;
    v29 = v10;
    v15 = MEMORY[0x1BFB0EC20](v26);
    v16 = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = v15;

    if (self->_enableFaceTracking)
    {
      [(AVTView *)self setFaceTrackingPaused:0];
    }

    else
    {
      [(AVTView *)self setEnableFaceTracking:1];
    }

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

LABEL_8:
}

void __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = 1.0;
    [*(a1 + 32) animatePhysicsScaleFactor:1.0 duration:{fmax(*(a1 + 64), 0.75)}];
    if (!*(a1 + 72))
    {
      v3 = 0.0;
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7F494C0;
    v9 = *(a1 + 48);
    [v4 _transitionFromPose:v5 toPose:0 bakedAnimationBlendFactor:0 duration:0 delay:v8 timingFunction:v3 timingAnimation:v6 completionHandler:0.0];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

uint64_t __95__AVTView__transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__AVTView_transitionToFaceTrackingWithDuration_style_enableBakedAnimations_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _transitionToFaceTrackingWithDuration:*(a1 + 56) style:*(a1 + 64) enableBakedAnimations:*(a1 + 32) completionHandler:*(a1 + 48)];
}

- (void)_transitionToCustomFaceTrackingWithDuration:(double)duration style:(unint64_t)style enableBakedAnimations:(BOOL)animations faceTrackingDidStartHandlerReceiverBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v13 = self->_avatar;
  pose = [(AVTAvatar *)v13 pose];
  [(AVTAvatar *)v13 setPhysicsScaleFactor:0.0];
  [(AVTAvatar *)v13 transitionToPose:pose duration:0 delay:3.40282347e38 completionHandler:0.0];
  [(AVTAvatar *)v13 setPose:0];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke;
  v18[3] = &unk_1E7F494E8;
  objc_copyWeak(v22, &location);
  animationsCopy = animations;
  v15 = v13;
  v19 = v15;
  v16 = pose;
  v20 = v16;
  v22[1] = *&duration;
  v17 = handlerCopy;
  v21 = v17;
  blockCopy[2](blockCopy, v18);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 72))
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke_2;
    v8[3] = &unk_1E7F494C0;
    v9 = *(a1 + 48);
    [v4 _transitionFromPose:v5 toPose:0 bakedAnimationBlendFactor:0 duration:0 delay:v8 timingFunction:v3 timingAnimation:v6 completionHandler:0.0];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

uint64_t __142__AVTView__transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __141__AVTView_transitionToCustomFaceTrackingWithDuration_style_enableBakedAnimations_faceTrackingDidStartHandlerReceiverBlock_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _transitionToCustomFaceTrackingWithDuration:*(a1 + 64) style:*(a1 + 72) enableBakedAnimations:*(a1 + 32) faceTrackingDidStartHandlerReceiverBlock:*(a1 + 40) completionHandler:*(a1 + 56)];
}

- (void)faceTrackerDidUpdate:(id)update withARFrame:(id)frame
{
  updateCopy = update;
  frameCopy = frame;
  if ([updateCopy faceIsTracked])
  {
    self->_packetNeedRecording = 1;
    self->_droppedFrameCount = 0;
  }

  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    capturedImage = [frameCopy capturedImage];
    if (capturedImage)
    {
      [(VFXCaptureDeviceOutputConsumer *)self->_arCaptureDeviceOutputConsumer setPixelBuffer:capturedImage];
    }

    arMaskRenderer = self->_arMaskRenderer;
    fallBackDepthData = [updateCopy fallBackDepthData];
    -[AVTARMaskRenderer updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:](arMaskRenderer, "updateWithARFrame:fallBackDepthData:captureOrientation:interfaceOrientation:mirroredDepthData:", frameCopy, fallBackDepthData, 4, [updateCopy interfaceOrientation], 0);

    renderer = [(AVTView *)self renderer];
    AVTApplyARGrainIfNeeded(renderer, frameCopy);
  }

  -[AVTView setCaptureImageIsTooDark:](self, "setCaptureImageIsTooDark:", [updateCopy lowLight]);
  -[AVTView setSensorCovered:](self, "setSensorCovered:", [updateCopy isSensorCovered]);
  faceTrackerDidUpdateBlock = self->_faceTrackerDidUpdateBlock;
  if (faceTrackerDidUpdateBlock)
  {
    faceTrackerDidUpdateBlock[2]();
    v12 = self->_faceTrackerDidUpdateBlock;
    self->_faceTrackerDidUpdateBlock = 0;
  }
}

- (void)faceTracker:(id)tracker session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v8 avatarView:self faceTrackingSessionFailedWithError:errorCopy];
  }
}

- (void)faceTracker:(id)tracker sessionWasInterrupted:(id)interrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarViewFaceTrackingSessionInterruptionDidBegin:self];
  }

  [(AVTView *)self _delayedTrackingLoss];
}

- (void)faceTracker:(id)tracker sessionInterruptionEnded:(id)ended
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTrackingDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_faceTrackingDelegate);
    [v7 avatarViewFaceTrackingSessionInterruptionDidEnd:self];
  }

  [(AVTView *)self _cancelDelayedtrackingLoss];
}

- (void)setFaceTracker:(id)tracker
{
  trackerCopy = tracker;
  [(AVTFaceTracker *)self->_faceTracker removeDelegate:self];
  faceTracker = self->_faceTracker;
  self->_faceTracker = trackerCopy;
  v6 = trackerCopy;

  [(AVTFaceTracker *)self->_faceTracker addDelegate:self];
}

- (void)setFaceTrackingPaused:(BOOL)paused
{
  if (self->_faceTrackingPaused != paused)
  {
    self->_faceTrackingPaused = paused;
    if (paused)
    {
      [(AVTView *)self setRendersContinuously:0];
    }

    else
    {
      [(AVTAvatarEnvironment *)self->_environment setEnablePhysicsSimulation:1];
    }

    [(AVTView *)self updateForChangedFaceTrackingPaused];
  }
}

- (void)updateForChangedFaceTrackingPaused
{
  faceTrackingIsPaused = [(AVTView *)self faceTrackingIsPaused];
  faceTracker = self->_faceTracker;
  if (faceTrackingIsPaused)
  {

    [(AVTFaceTracker *)faceTracker pauseByPausingARSession];
  }

  else
  {

    [(AVTFaceTracker *)faceTracker run];
  }
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

- (BOOL)faceIsFullyActive
{
  environment = [(AVTView *)self environment];
  faceIsFullyVisible = [environment faceIsFullyVisible];

  return faceIsFullyVisible;
}

- (void)_resetFaceToRandomPosition
{
  avatar = [(AVTView *)self avatar];
  [avatar _resetFaceToRandomPosition];
}

- (void)setPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_presentationConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_presentationConfiguration, configuration);
    usesAR = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    v7 = &AVTFramingModeAR;
    if (!usesAR)
    {
      v7 = AVTFramingModeCamera;
    }

    [(AVTView *)self setFramingMode:*v7];
    renderer = [(AVTView *)self renderer];
    AVTSetARCompositingEnabled(renderer, usesAR);

    if (usesAR)
    {
      captureDeviceOutputConsumer = [MEMORY[0x1E69DF300] captureDeviceOutputConsumer];
    }

    else
    {
      captureDeviceOutputConsumer = 0;
    }

    objc_storeStrong(&self->_arCaptureDeviceOutputConsumer, captureDeviceOutputConsumer);
    if (usesAR)
    {
    }

    arCaptureDeviceOutputConsumer = self->_arCaptureDeviceOutputConsumer;
    world = [(AVTView *)self world];
    background = [world background];
    [background setContents:arCaptureDeviceOutputConsumer];

    [(AVTFaceTracker *)self->_faceTracker setShouldConstrainHeadPose:usesAR ^ 1];
    [(AVTFaceTracker *)self->_faceTracker setWantsPersonSegmentation:usesAR];
    [(AVTAvatarEnvironment *)self->_environment avatarDidChange:self->_avatar presentationConfiguration:self->_presentationConfiguration];
    [(AVTAvatar *)self->_avatar setPresentationConfiguration:self->_presentationConfiguration];
    arMaskRenderer = self->_arMaskRenderer;
    if ((usesAR ^ 1))
    {
      self->_arMaskRenderer = 0;
    }

    else
    {
      if (arMaskRenderer)
      {
        [(AVTARMaskRenderer *)arMaskRenderer setPresentationConfiguration:configurationCopy];
      }

      else
      {
        objc_initWeak(&location, self);
        v14 = [AVTARMaskRenderer alloc];
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __40__AVTView_setPresentationConfiguration___block_invoke;
        v20 = &unk_1E7F49560;
        objc_copyWeak(&v21, &location);
        v15 = [(AVTARMaskRenderer *)v14 initWithOwner:self presentationConfiguration:configurationCopy techniqueDidChangeHandler:&v17];
        v16 = self->_arMaskRenderer;
        self->_arMaskRenderer = v15;

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      [(AVTARMaskRenderer *)self->_arMaskRenderer setClearWithCamera:1 antialiasingMode:[(AVTView *)self antialiasingMode:v17]];
    }

    [(AVTView *)self _updatePhysicsWorldForAvatarARScaleAndARMode:usesAR];
    [(AVTView *)self updateForMultiAvatarPositioningStyle];
  }
}

void __40__AVTView_setPresentationConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained faceIsTracked])
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    [v4 setAvtRendererTechnique:v5];
  }
}

- (id)backgroundContentsBehindDrawable
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_backgroundContentsBehindDrawable;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setBackgroundContentsBehindDrawable:(id)drawable
{
  drawableCopy = drawable;
  [(NSRecursiveLock *)self->_lock lock];
  backgroundContentsBehindDrawable = self->_backgroundContentsBehindDrawable;
  self->_backgroundContentsBehindDrawable = drawableCopy;
  v6 = drawableCopy;

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)snapshotWithSize:(CGSize)size scaleFactor:(float)factor options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  world = [(AVTView *)self world];

  if (world)
  {
    kdebug_trace();
    [(AVTView *)self lockAvatar];
    v11 = [MEMORY[0x1E69DF358] rendererWithDevice:0 options:0];
    world2 = [(AVTView *)self world];
    [v11 setWorld:world2];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v11 setBackgroundColor:clearColor];

    world3 = [(AVTView *)self world];
    clock = [world3 clock];
    [clock time];
    v17 = v16;
    world4 = [v11 world];
    clock2 = [world4 clock];
    [clock2 setTime:v17];

    v20 = [optionsCopy valueForKey:@"AVTViewSnapshotDisableSuperSamplingFactorKey"];
    LOBYTE(clock) = [v20 BOOLValue];

    if ((clock & 1) == 0)
    {
      LODWORD(v21) = 1.5;
      [v11 set_superSamplingFactor:v21];
    }

    _resourceManagerMonitor = [(AVTView *)self _resourceManagerMonitor];
    [v11 set_resourceManagerMonitor:_resourceManagerMonitor];

    _commandBufferStatusMonitor = [(AVTView *)self _commandBufferStatusMonitor];
    [v11 set_commandBufferStatusMonitor:_commandBufferStatusMonitor];

    [v11 _allowGPUBackgroundExecution];
    [(AVTAvatarEnvironment *)self->_environment willSnapshot];
    [MEMORY[0x1E69DF378] lock];
    [v11 updateAtTime:CACurrentMediaTime()];
    [v11 setAntialiasingMode:2];
    v24 = [v11 snapshotWithSize:{width * factor, height * factor}];
    v25 = v24;
    if (factor != 1.0)
    {
      v26 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v24 scale:"CGImage") orientation:{0, factor}];

      v25 = v26;
    }

    [MEMORY[0x1E69DF378] unlock];
    [(AVTAvatarEnvironment *)self->_environment didSnapshot];
    [(AVTView *)self unlockAvatar];
    kdebug_trace();
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_renderer:(id)_renderer willRenderWorld:(id)world atTime:(double)time
{
  _rendererCopy = _renderer;
  worldCopy = world;
  world = [(VFXNode *)self->_avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {
    if (self->_packetNeedRecording)
    {
      currentRenderCommandEncoder = [_rendererCopy currentRenderCommandEncoder];
      commandBuffer = [currentRenderCommandEncoder commandBuffer];

      [(AVTFaceTracker *)self->_faceTracker arFrameTimestamp];
      v14 = v13;
      [(AVTFaceTracker *)self->_faceTracker arDelegateTimestamp];
      v16 = v15;
      self->_packetNeedRecording = 0;
      lastFaceTrackerUpdateTimestamp = self->_lastFaceTrackerUpdateTimestamp;
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __44__AVTView__renderer_willRenderWorld_atTime___block_invoke;
      v18[3] = &unk_1E7F49588;
      v19[1] = *&lastFaceTrackerUpdateTimestamp;
      objc_copyWeak(v19, &location);
      v19[2] = v14;
      v19[3] = v16;
      v18[4] = self;
      [commandBuffer addCompletedHandler:v18];
      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    else
    {
      ++self->_droppedFrameCount;
    }
  }
}

void __44__AVTView__renderer_willRenderWorld_atTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  kdebug_trace();
  v3 = *(a1 + 48);
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 64);
    v6 = v5 - *(a1 + 56);
    v7 = *(*(a1 + 32) + 768) - v5;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v9 = v8 - *(*(a1 + 32) + 768);
    *&v10 = v6;
    *(&v10 + 1) = v7;
    v11 = v9;
    PerfTimesPush(WeakRetained + 184, &v10);
  }
}

- (void)setShowPerfHUD:(BOOL)d
{
  self->_showPerfHUD = d;
  WeakRetained = objc_loadWeakRetained(&self->_perfTimeRefreshTimer);
  [WeakRetained invalidate];

  if (self->_showPerfHUD)
  {
    VFXSetShaderCollectionEnabled();
    VFXSetPerformanceStatisticsEnabled();
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__refreshPerfTimesInfo selector:0 userInfo:1 repeats:1.0];
    objc_storeWeak(&self->_perfTimeRefreshTimer, v5);

    if (!self->_debugView)
    {
      v6 = [[AVTHUDView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
      debugView = self->_debugView;
      self->_debugView = v6;

      [(AVTView *)self addSubview:self->_debugView];
    }
  }

  [(AVTHUDView *)self->_debugView setHidden:!self->_showPerfHUD];
  showPerfHUD = self->_showPerfHUD;

  VFXSetPerformanceStatisticsEnabled();
}

- (void)_refreshPerfTimesInfo
{
  v3 = PerfTimesAverageLatency(&self->_perfTimes);
  v4 = PerfTimesAverageLatencyForKind(&self->_perfTimes, 0);
  v5 = PerfTimesAverageLatencyForKind(&self->_perfTimes, 1);
  v6 = PerfTimesAverageLatencyForKind(&self->_perfTimes, 2);
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  VFXGetPerformanceStatistics();
  [(AVTView *)self currentAudioTime];
  v8 = v7;
  [(AVTFaceTracker *)self->_faceTracker arFrameDeltaTime];
  v10 = v9;
  droppedFrameCount = self->_droppedFrameCount;
  isDoubleBuffered = [(AVTView *)self isDoubleBuffered];
  v13 = VFXGetShaderCollectionOutputURL();
  path = [v13 path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager contentsOfDirectoryAtPath:path error:0];
  v17 = [v16 count];

  debugView = self->_debugView;
  *v19 = v3;
  *&v19[1] = v4;
  *&v19[2] = v5;
  *&v19[3] = v6;
  v19[4] = v10;
  v20 = 0;
  v21 = 0;
  v22 = v8;
  v23 = droppedFrameCount;
  v24 = isDoubleBuffered;
  v25 = 0;
  v26 = 0;
  v27 = v17;
  v28 = 0;
  [(AVTHUDView *)debugView updateWithData:v19];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTView;
  [(AVTView *)&v3 layoutSubviews];
  if ([(AVTView *)self showPerfHUD])
  {
    [(AVTView *)self bounds];
    [(AVTHUDView *)self->_debugView setFrame:0.0, 0.0];
  }
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

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  avatarNode = self->_avatarNode;
  _rendererCopy = _renderer;
  world = [(VFXNode *)avatarNode world];
  world2 = [_rendererCopy world];

  if (world == world2)
  {

    [(AVTView *)self updateAtTime:time];
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
      block[2] = __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke;
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

void __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke(uint64_t a1)
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
    v22[2] = __65__AVTView_renderer_didFallbackToDefaultTextureForSource_message___block_invoke;
    v22[3] = &unk_1E7F495B0;
    v23 = rendererCopy;
    v24 = sourceCopy;
    v25 = messageCopy;
    [(AVTView *)self crashAppExtensionOrViewService_rdar98130076:v22];
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
      *&buf[4] = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
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
    *&buf[4] = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
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
  v27 = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]";
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

void __65__AVTView_renderer_didFallbackToDefaultTextureForSource_message___block_invoke(void *a1)
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
    *(buf + 4) = "[AVTView renderer:didFallbackToDefaultTextureForSource:message:]_block_invoke";
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
    v26[2] = __54__AVTView_renderer_commandBufferDidCompleteWithError___block_invoke;
    v26[3] = &unk_1E7F495B0;
    v27 = rendererCopy;
    v28 = errorCopy;
    v29 = error;
    [(AVTView *)self crashAppExtensionOrViewService_rdar98130076:v26];
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
        *&buf[4] = "[AVTView renderer:commandBufferDidCompleteWithError:]";
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
    *&buf[4] = "[AVTView renderer:commandBufferDidCompleteWithError:]";
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
  v31 = "[AVTView renderer:commandBufferDidCompleteWithError:]";
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

void __54__AVTView_renderer_commandBufferDidCompleteWithError___block_invoke(uint64_t a1)
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
    *(buf + 4) = "[AVTView renderer:commandBufferDidCompleteWithError:]_block_invoke";
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
      avtRendererTechnique = [(AVTView *)self avtRendererTechnique];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [(AVTAvatar *)self->_avatar newAvatarSpecificTechniqueWithRenderer:self];
        [(AVTView *)self setAvtRendererTechnique:v6];
      }
    }

    else
    {

      [(AVTView *)self setAvtRendererTechnique:0];
    }
  }
}

- (void)_avtUpdateRendersContinuously
{
  v4 = self->_avtRendersContinuously || self->_avtRendererTechnique != 0;
  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = AVTView;
  [(AVTView *)&v5 setRendersContinuously:v4];
}

- (void)setAvtRendererTechnique:(id)technique
{
  techniqueCopy = technique;
  if (self->_avtRendererTechnique != techniqueCopy)
  {
    objc_storeStrong(&self->_avtRendererTechnique, technique);
    [(AVTView *)self _avtUpdateRendersContinuously];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DF378];
    world = [(AVTView *)self world];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__AVTView_setAvtRendererTechnique___block_invoke;
    v8[3] = &unk_1E7F495D8;
    objc_copyWeak(&v10, &location);
    v9 = techniqueCopy;
    [v6 enqueueCommandForObject:world immediateTransactionBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __35__AVTView_setAvtRendererTechnique___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 89, *(a1 + 32));
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

- (void)transitionHelper
{
  if (self)
  {
    selfCopy = self;
    v3 = self[91];
    if (!v3)
    {
      v4 = [[AVTViewTransitionHelper alloc] initWithView:self];
      v5 = selfCopy[91];
      selfCopy[91] = v4;

      v3 = selfCopy[91];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)transitionToPose:(id)pose duration:(double)duration style:(unint64_t)style completionHandler:(id)handler
{
  v15 = OUTLINED_FUNCTION_3_2(self, a2, pose);
  v10 = v6;
  v11 = *(v7 + 672);
  if (!v15)
  {
    v15 = +[AVTAvatarPose neutralPose];
  }

  if (*(v7 + 624) == 1)
  {
    [v7 setEnableFaceTracking:0 bySkippingARFramesInsteadOfStopping:1];
    if (v9 <= 1.0)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1.0;
    }

    [v11 animatePhysicsScaleFactor:1.0 duration:v12];
  }

  if ((v8 - 1) <= 4)
  {
    v13 = qword_1BB4F0A68[v8 - 1];
  }

  transitionHelper = [(AVTView *)v7 transitionHelper];
  OUTLINED_FUNCTION_1_8(transitionHelper, 0, v15);
}

- (void)transitionToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style completionHandler:(id)handler
{
  v15 = OUTLINED_FUNCTION_3_2(self, a2, configuration);
  v10 = v6;
  v11 = *(v7 + 672);
  if (*(v7 + 624) == 1)
  {
    [v7 setEnableFaceTracking:0 bySkippingARFramesInsteadOfStopping:1];
    if (v9 <= 1.0)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1.0;
    }

    [v11 animatePhysicsScaleFactor:0.0 duration:v12];
  }

  if ((v8 - 1) <= 4)
  {
    v13 = qword_1BB4F0A68[v8 - 1];
  }

  transitionHelper = [(AVTView *)v7 transitionHelper];
  OUTLINED_FUNCTION_1_8(transitionHelper, v15, 0);
}

- (void)_transitionCoordinatorToStickerConfiguration:(id)configuration duration:(double)duration style:(unint64_t)style options:(unint64_t)options
{
  v11 = self->_avatar;
  configurationCopy = configuration;
  transitionHelper = [(AVTView *)self transitionHelper];
  [(AVTViewTransitionHelper *)transitionHelper transitionCoordinatorToStickerConfiguration:configurationCopy duration:style style:duration options:options avatar:v11];
}

- (void)_transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(unint64_t)style options:(unint64_t)options
{
  v9 = self->_avatar;
  transitionHelper = [(AVTView *)self transitionHelper];
  [(AVTViewTransitionHelper *)transitionHelper transitionCoordinatorOutOfStickerConfigurationWithDuration:style style:duration options:options avatar:v9];
}

- (void)arMode
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, self, a3, "Error: %s is deprecated - use AVTPresentationConfiguration instead", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setArMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: %s is deprecated - use AVTPresentationConfiguration instead", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_transitionToFaceTrackingWithDuration:(uint64_t)a3 style:(uint64_t)a4 enableBakedAnimations:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. A previously registered callback won't be executed because it will be overwritten", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60__AVTView__renderer_didBuildSubdivDataForHash_dataProvider___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Error while writing subdiv data: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end