@interface NTKSnowglobeSceneController
- (NTKSnowglobeCrownHandler)crownInputHandler;
- (NTKSnowglobeSceneController)initWithSceneSize:(CGSize)a3 renderQueue:(id)a4;
- (NTKSnowglobeState)snowglobeState;
- (SCNRenderer)renderer;
- (double)_tritiumOriginAdjustmentForDigit:(uint64_t)a3;
- (double)_tritiumRotationForDigit:(uint64_t)a3;
- (double)backgroundObjectOpacity;
- (id)_charactersFromFormatter:(id)a3;
- (id)_queue_backgroundObjectColorsFromColors:(id)a3;
- (id)_queue_backgroundObjectPositions;
- (uint64_t)_restingOriginForDigit:(uint64_t)a3 node:(unint64_t)a4;
- (void)_queue_animatedReplaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4;
- (void)_queue_animatedReplaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4 force:(BOOL)a5;
- (void)_queue_applyBackgroundContents;
- (void)_queue_applyBackgroundObjectColors:(id)a3;
- (void)_queue_applyColorPalette;
- (void)_queue_applyState;
- (void)_queue_configureController:(id)a3 digit:(unint64_t)a4;
- (void)_queue_configureLightingWithTritiumFraction:(double)a3;
- (void)_queue_enumerateDigitsWithBlock:(id)a3;
- (void)_queue_loadBackgroundObjects;
- (void)_queue_replaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4;
- (void)_queue_replaceRandomObjectWithDainty;
- (void)_queue_resetToIdealizedState;
- (void)_queue_setupBackgroundObject:(id)a3;
- (void)_queue_setupBorderWalls;
- (void)_queue_setupCamera;
- (void)_queue_setupPlane;
- (void)_queue_setupScene;
- (void)_queue_tapAtPoint:(CGPoint)a3;
- (void)_queue_updateBackgroundContainerOpacity;
- (void)_queue_updateCameraAngles;
- (void)_queue_updateCameraParallax;
- (void)_setupTimeFormatter;
- (void)flush;
- (void)flushWithCompletion:(id)a3;
- (void)physicsWorld:(id)a3 didBeginContact:(id)a4;
- (void)renderer:(id)a3 updateAtTime:(double)a4;
- (void)setBackgroundObjectOpacity:(double)a3;
- (void)setColorPalette:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setSnowglobeState:(id)a3;
- (void)setTritiumState:(unint64_t)a3 fraction:(double)a4;
- (void)tapAtPoint:(CGPoint)a3;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation NTKSnowglobeSceneController

- (NTKSnowglobeSceneController)initWithSceneSize:(CGSize)a3 renderQueue:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v39.receiver = self;
  v39.super_class = NTKSnowglobeSceneController;
  v9 = [(NTKSnowglobeSceneController *)&v39 init];
  if (v9)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v9->_screenSize.width = width;
    v9->_screenSize.height = height;
    v10 = +[NTKSnowglobeAssetLibrary sharedInstance];
    v11 = [v10 sharedDevice];
    device = v9->_device;
    v9->_device = v11;

    v13 = v9->_device;
    if (qword_27E1EDE30 != -1)
    {
      sub_23C08EEA4();
    }

    v14 = qword_27E1EDE28;
    v15 = [(MTLDevice *)v13 newDefaultLibraryWithBundle:v14 error:0];
    library = v9->_library;
    v9->_library = v15;

    v17 = objc_opt_new();
    backgroundControllers = v9->_backgroundControllers;
    v9->_backgroundControllers = v17;

    v19 = objc_opt_new();
    exitingDigitControllers = v9->_exitingDigitControllers;
    v9->_exitingDigitControllers = v19;

    v21 = objc_opt_new();
    digitControllers = v9->_digitControllers;
    v9->_digitControllers = v21;

    v23 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    digitControllerLookup = v9->_digitControllerLookup;
    v9->_digitControllerLookup = v23;

    v25 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v25;

    v9->_showingOverrideTime = 1;
    objc_storeStrong(&v9->_renderQueue, a4);
    v9->_stateLock._os_unfair_lock_opaque = 0;
    v27 = dispatch_semaphore_create(1);
    asyncApplyStateSemaphore = v9->_asyncApplyStateSemaphore;
    v9->_asyncApplyStateSemaphore = v27;

    v29 = objc_alloc_init(NTKSnowglobeState);
    appliedSnowglobeState = v9->_appliedSnowglobeState;
    v9->_appliedSnowglobeState = v29;

    v31 = objc_alloc_init(NTKSnowglobeState);
    snowglobeState = v9->_snowglobeState;
    v9->_snowglobeState = v31;

    v9->_snowglobeStateInitialized = 0;
    [(NTKSnowglobeSceneController *)v9 _setupTimeFormatter];
    [MEMORY[0x277CDBB18] begin];
    [MEMORY[0x277CDBB18] setAnimationDuration:0.0];
    v33 = +[NTKSnowglobeAssetLibrary sharedInstance];
    v34 = [v33 createScene];
    scene = v9->_scene;
    v9->_scene = v34;

    [MEMORY[0x277CDBB18] commit];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C0883F8;
    block[3] = &unk_278BAC870;
    v38 = v9;
    dispatch_async(v8, block);
  }

  return v9;
}

- (void)flush
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23C088590;
  v10[3] = &unk_278BAC870;
  v4 = v3;
  v11 = v4;
  [(NTKSnowglobeSceneController *)self flushWithCompletion:v10];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_group_wait(v4, v5);
  v7 = _NTKLoggingObjectForDomain();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_23C08EECC(v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23C07F000, v8, OS_LOG_TYPE_DEFAULT, "Snowglobe flushed synchronously", v9, 2u);
  }
}

- (void)flushWithCompletion:(id)a3
{
  v4 = a3;
  renderQueue = self->_renderQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C088630;
  v7[3] = &unk_278BAC5C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(renderQueue, v7);
}

- (void)setSnowglobeState:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_stateLock);
  objc_storeStrong(&self->_snowglobeState, a3);
  os_unfair_lock_unlock(&self->_stateLock);
  renderQueue = self->_renderQueue;
  asyncApplyStateSemaphore = self->_asyncApplyStateSemaphore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C088880;
  v11[3] = &unk_278BAC870;
  v11[4] = self;
  v8 = renderQueue;
  v9 = asyncApplyStateSemaphore;
  v10 = v11;
  if (!dispatch_semaphore_wait(v9, 0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C08DED8;
    block[3] = &unk_278BAC5C8;
    v13 = v9;
    v14 = v10;
    dispatch_async(v8, block);
  }
}

- (NTKSnowglobeState)snowglobeState
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_snowglobeState;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (void)setTritiumState:(unint64_t)a3 fraction:(double)a4
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(NTKSnowglobeSceneController *)self snowglobeState];
  v7 = [v8 withTritiumState:a3 fraction:a4];
  [(NTKSnowglobeSceneController *)self setSnowglobeState:v7];
}

- (double)backgroundObjectOpacity
{
  v2 = [(NTKSnowglobeSceneController *)self snowglobeState];
  [v2 backgroundObjectOpacity];
  v4 = v3;

  return v4;
}

- (void)setBackgroundObjectOpacity:(double)a3
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(NTKSnowglobeSceneController *)self snowglobeState];
  v5 = [v6 withBackgroundObjectOpacity:a3];
  [(NTKSnowglobeSceneController *)self setSnowglobeState:v5];
}

- (void)setColorPalette:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_storeStrong(&self->_colorPalette, a3);
  if (v8)
  {
    v5 = [(NTKSnowglobeSceneController *)self snowglobeState];
    v6 = [[NTKSnowglobeColors alloc] initWithPalette:v8];
    v7 = [v5 withPalette:v6];
    [(NTKSnowglobeSceneController *)self setSnowglobeState:v7];
  }
}

- (void)_queue_applyState
{
  v45 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = [(NTKSnowglobeSceneController *)self snowglobeState];
  v4 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  if (self->_leftBacklightNode)
  {
    v5 = [v3 palette];

    if (v5)
    {
      snowglobeStateInitialized = self->_snowglobeStateInitialized;
      self->_snowglobeStateInitialized = 1;
      objc_storeStrong(&self->_appliedSnowglobeState, v3);
      if (snowglobeStateInitialized)
      {
        v7 = [v4 shouldBeInIdealizedState];
        v8 = v7 ^ [v3 shouldBeInIdealizedState];
        v9 = [v4 scenePaused];
        if (v9 != [v3 scenePaused])
        {
          v10 = v8 | 2;
        }

        else
        {
          v10 = v8;
        }

        v11 = [v4 palette];
        v12 = [v3 palette];

        if (v11 == v12)
        {
          v13 = v10;
        }

        else
        {
          v13 = v10 | 4;
        }

        [v4 tritiumFraction];
        v15 = v14;
        [v3 tritiumFraction];
        if (v15 == v16)
        {
          v17 = v13;
        }

        else
        {
          v17 = v13 | 8;
        }

        v18 = [v4 tritiumState];
        if (v18 == [v3 tritiumState])
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 | 0x10;
        }

        [v4 backgroundObjectOpacity];
        v21 = v20;
        [v3 backgroundObjectOpacity];
        if (v21 == v22)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 31;
      }

      v19 |= 0x20u;
LABEL_23:
      v24 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        v38 = v19;
        v39 = 1024;
        v40 = [v3 idealizedState];
        v41 = 1024;
        v42 = [v3 editing];
        v43 = 2048;
        v44 = [v3 tritiumState];
        _os_log_impl(&dword_23C07F000, v24, OS_LOG_TYPE_DEFAULT, "Apply state (changes=%X, idealized=%i, editing=%i, tritium=%lu)", buf, 0x1Eu);
      }

      if ((v19 & 1) != 0 && [v3 shouldBeInIdealizedState])
      {
        [(NTKSnowglobeSceneController *)self _queue_resetToIdealizedState];
      }

      if ((v19 & 2) != 0)
      {
        v25 = [v3 scenePaused];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v26 = [(NSMutableDictionary *)self->_digitControllers allValues];
        v27 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v33;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v33 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [*(*(&v32 + 1) + 8 * i) setPausePhysics:v25];
            }

            v28 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v28);
        }

        if (v25 != [(SCNScene *)self->_scene isPaused])
        {
          [(SCNScene *)self->_scene setPaused:v25];
        }
      }

      if ((v19 & 4) != 0)
      {
        [(NTKSnowglobeSceneController *)self _queue_applyColorPalette];
      }

      else if ((v19 & 8) != 0)
      {
        [(NTKSnowglobeSceneController *)self _queue_applyBackgroundContents];
      }

      if ((v19 & 0x38) != 0)
      {
        [(NTKSnowglobeSceneController *)self _queue_updateBackgroundContainerOpacity];
      }

      if ((v19 & 8) != 0)
      {
        [v3 tritiumFraction];
        [(NTKSnowglobeSceneController *)self _queue_configureLightingWithTritiumFraction:?];
      }

      goto LABEL_46;
    }
  }

  v23 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C07F000, v23, OS_LOG_TYPE_DEFAULT, "Skipped initial state change because face not fully initialized yet", buf, 2u);
  }

LABEL_46:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_queue_applyBackgroundContents
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v8 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  v3 = [v8 palette];
  v4 = [v3 backgroundColor];
  v5 = [MEMORY[0x277D75348] blackColor];
  [v8 tritiumFraction];
  v6 = MEMORY[0x23EEC5E20](v4, v5);
  v7 = [(SCNScene *)self->_scene background];
  [v7 setContents:v6];
}

- (void)_queue_updateBackgroundContainerOpacity
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v9 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  v3 = [v9 tritiumState];
  [v9 tritiumFraction];
  v5 = v4;
  [v9 backgroundObjectOpacity];
  v7 = v6;
  if (v3)
  {
    if ([v9 tritiumState] == 3)
    {
      v8 = v5 * -2.0 + 1.0;
      if (v8 < 0.0)
      {
        v8 = 0.0;
      }

      v6 = v7 * v8;
    }

    else
    {
      v6 = (1.0 - v5) * v7;
    }
  }

  [(SCNNode *)self->_backgroundContainer setOpacity:v6];
  [(SCNNode *)self->_backgroundContainer setHidden:v7 == 0.0];
}

- (void)_queue_resetToIdealizedState
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  *self->_backgroundParallax = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMutableDictionary *)self->_digitControllers allValues];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) resetToOrigin];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_exitingDigitControllers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) destroy];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_exitingDigitControllers removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_applyColorPalette
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  v10 = [v3 palette];

  v4 = v10;
  if (self->_leftBacklightNode && self->_rightBacklightNode && v10)
  {
    v5 = [v10 backgroundColorsForRandoms:self->_backgroundObjectRandoms];
    [(NTKSnowglobeSceneController *)self _queue_applyBackgroundObjectColors:v5];
    [(NTKSnowglobeSceneController *)self _queue_applyBackgroundContents];
    v6 = [v10 backlightColor];
    v7 = [(SCNNode *)self->_rightBacklightNode light];
    [v7 setColor:v6];

    v8 = [v10 backlightColor];
    v9 = [(SCNNode *)self->_leftBacklightNode light];
    [v9 setColor:v8];

    v4 = v10;
  }
}

- (void)_queue_applyBackgroundObjectColors:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_renderQueue);
  backgroundObjects = self->_backgroundObjects;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C08943C;
  v7[3] = &unk_278BAC8C0;
  v8 = v4;
  v6 = v4;
  [(NSArray *)backgroundObjects enumerateObjectsUsingBlock:v7];
}

- (id)_queue_backgroundObjectColorsFromColors:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_renderQueue);
  v5 = objc_opt_new();
  if ([(NSArray *)self->_backgroundObjects count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_backgroundObjectRandoms objectAtIndexedSubscript:v6];
      v8 = [v7 unsignedIntegerValue];
      v9 = v8 % [v4 count];

      v10 = [v4 objectAtIndexedSubscript:v9];
      [v5 addObject:v10];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_backgroundObjects count]);
  }

  return v5;
}

- (void)_queue_updateCameraAngles
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  [v3 parallaxMultiplier];
  v7 = v4;

  *&v5 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vneg_f32(*self->_backgroundParallax)), v7));
  cameraFocalNode = self->_cameraFocalNode;

  [(SCNNode *)cameraFocalNode setEulerAngles:v5, COERCE_DOUBLE(__PAIR64__(HIDWORD(v7), HIDWORD(v5))), 0.0];
}

- (void)_queue_updateCameraParallax
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = +[NTKSnowglobeMotionManager sharedInstance];
  [v3 rotationRate];
  v5 = v4;
  v7 = v6;

  v8 = NTKSnowglobeTunableFloat(@"cameraParallaxSensitivity", 0.2);
  v9 = NTKSnowglobeTunableFloat(@"cameraParallaxMaxAngle", 1.0);
  *&v10 = v5;
  *&v11 = v7;
  v12 = __PAIR64__(v11, v10);
  v13 = v8;
  __asm { FMOV            V3.4S, #30.0 }

  v19 = vaddq_f32(vmulq_f32(*self->_backgroundParallax, vdupq_n_s32(0x3F7AE148u)), vdivq_f32(vmulq_n_f32(v12, v13), _Q3));
  v20 = vmulq_f32(v19, v19);
  v21 = (v20.f32[2] + vaddv_f32(*v20.f32));
  if (v9 * v9 < v21)
  {
    v22 = v9 / sqrt(v21);
    v19 = vmulq_n_f32(v19, v22);
  }

  *self->_backgroundParallax = v19;

  MEMORY[0x2821F9670](self, sel__queue_updateCameraAngles);
}

- (void)_queue_setupScene
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = [(SCNScene *)self->_scene physicsWorld];
  [v3 setSpeed:1.0];

  v4 = [(SCNScene *)self->_scene physicsWorld];
  [v4 setGravity:{0.0, 0.0, 0.0}];

  v5 = [(SCNScene *)self->_scene physicsWorld];
  [v5 setContactDelegate:self];

  [(SCNScene *)self->_scene setPaused:1];
  [(NTKSnowglobeSceneController *)self _queue_setupCamera];
  [(NTKSnowglobeSceneController *)self _queue_setupBorderWalls];
  v6 = [MEMORY[0x277CDBAA8] node];
  v7 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)v6 setLight:v7];

  v8 = *MEMORY[0x277CDBB78];
  v9 = [(SCNNode *)v6 light];
  [v9 setType:v8];

  v10 = [(SCNNode *)v6 light];
  [v10 setIntensity:1800.0];

  v11 = [(SCNNode *)v6 light];
  [v11 setCategoryBitMask:2];

  v12 = [MEMORY[0x277CDBAA8] node];
  v13 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)v12 setLight:v13];

  v14 = [(SCNNode *)v12 light];
  [v14 setType:v8];

  v15 = [(SCNNode *)v12 light];
  [v15 setIntensity:1800.0];

  v16 = [(SCNNode *)v12 light];
  [v16 setCategoryBitMask:2];

  v17 = [MEMORY[0x277CDBAA8] node];
  v18 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)v17 setLight:v18];

  v19 = [(SCNNode *)v17 light];
  [v19 setType:v8];

  v20 = [MEMORY[0x277D75348] colorWithHue:0.566666667 saturation:0.39 brightness:1.0 alpha:1.0];
  v21 = [(SCNNode *)v17 light];
  [v21 setColor:v20];

  v22 = [(SCNNode *)v17 light];
  [v22 setIntensity:0.0];

  v23 = [(SCNNode *)v17 light];
  [v23 setCategoryBitMask:2];

  v24 = [MEMORY[0x277CDBAA8] node];
  v25 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)v24 setLight:v25];

  v26 = *MEMORY[0x277CDBB70];
  v27 = [(SCNNode *)v24 light];
  [v27 setType:v26];

  v28 = [MEMORY[0x277D75348] whiteColor];
  v29 = [(SCNNode *)v24 light];
  [v29 setColor:v28];

  v30 = [(SCNNode *)v24 light];
  [v30 setIntensity:0.0];

  v31 = [(SCNNode *)v24 light];
  [v31 setCategoryBitMask:2];

  LODWORD(v32) = 1081824209;
  LODWORD(v33) = 1.0;
  [(SCNNode *)v6 setRotation:0.0, v33, 0.0, v32];
  LODWORD(v34) = 1075235812;
  LODWORD(v35) = 1.0;
  [(SCNNode *)v12 setRotation:0.0, v35, 0.0, v34];
  LODWORD(v36) = -1085730853;
  LODWORD(v37) = -1077342245;
  [(SCNNode *)v17 setEulerAngles:v36, v37, 0.0];
  leftBacklightNode = self->_leftBacklightNode;
  self->_leftBacklightNode = v6;
  v39 = v6;

  rightBacklightNode = self->_rightBacklightNode;
  self->_rightBacklightNode = v12;
  v41 = v12;

  nightLightNode = self->_nightLightNode;
  self->_nightLightNode = v17;
  v43 = v17;

  nightAmbientLightNode = self->_nightAmbientLightNode;
  self->_nightAmbientLightNode = v24;
  v45 = v24;

  v46 = [(SCNNode *)v39 light];
  leftBacklight = self->_leftBacklight;
  self->_leftBacklight = v46;

  v48 = [(SCNNode *)v41 light];
  rightBacklight = self->_rightBacklight;
  self->_rightBacklight = v48;

  v50 = [(SCNNode *)v43 light];
  nightLight = self->_nightLight;
  self->_nightLight = v50;

  v52 = [(SCNNode *)v45 light];
  nightAmbientLight = self->_nightAmbientLight;
  self->_nightAmbientLight = v52;

  v54 = [(SCNScene *)self->_scene rootNode];
  [v54 addChildNode:v39];

  v55 = [(SCNScene *)self->_scene rootNode];
  [v55 addChildNode:v41];

  v56 = [(SCNScene *)self->_scene rootNode];
  [v56 addChildNode:v43];

  v57 = [(SCNScene *)self->_scene rootNode];

  [v57 addChildNode:v45];
  [(NTKSnowglobeSceneController *)self _queue_loadBackgroundObjects];
  [(NTKSnowglobeSceneController *)self _queue_setupPlane];

  [(NTKSnowglobeSceneController *)self _queue_applyColorPalette];
}

- (void)_queue_setupCamera
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = [MEMORY[0x277CDBAA8] node];
  v4 = [MEMORY[0x277CDBA48] camera];
  [(SCNNode *)v3 setCamera:v4];

  v5 = [(SCNNode *)v3 camera];
  [v5 setZFar:110.0];

  v6 = [(SCNNode *)v3 camera];
  [v6 setZNear:1.0];

  CameraMode = NTKSnowglobeDebugGetCameraMode();
  v8 = NTKSnowglobeTunableFloat(@"cameraPivotDepth", -2.5);
  if (CameraMode == 1)
  {
    v16 = NTKSnowglobeTunableFloat(@"cameraFOV", 40.0);
    *&v17 = NTKSnowglobeTunableFloat3(@"cameraPosition", 0);
    *v25 = v17;
    v18 = [(SCNNode *)v3 camera];
    [v18 setFieldOfView:v16];

    v14 = *v25;
    LODWORD(v13) = v25[1];
    LODWORD(v15) = HIDWORD(v25[0]);
  }

  else
  {
    if (CameraMode)
    {
      goto LABEL_6;
    }

    v9 = NTKSnowglobeTunableFloat(@"cameraFOV", 40.0);
    v10 = 4.0 / tan(v9 / 180.0 * 3.14159265 * 0.5);
    v11 = [(SCNNode *)v3 camera];
    [v11 setFieldOfView:v9];

    v12 = [(SCNNode *)v3 camera];
    [v12 setProjectionDirection:1];

    *&v13 = v10 - v8;
    v14 = 0.0;
    v15 = 0.0;
  }

  [(SCNNode *)v3 setPosition:v14, v15, v13];
LABEL_6:
  [(SCNNode *)v3 setName:@"NTKPointOfView"];
  v19 = [MEMORY[0x277CDBAA8] node];
  *&v20 = v8;
  [(SCNNode *)v19 setPosition:0.0, 0.0, v20];
  cameraNode = self->_cameraNode;
  self->_cameraNode = v3;
  v22 = v3;

  cameraFocalNode = self->_cameraFocalNode;
  self->_cameraFocalNode = v19;
  v24 = v19;

  [(SCNNode *)v24 addChildNode:v22];
  v26 = [(SCNScene *)self->_scene rootNode];

  [v26 addChildNode:v24];
}

- (void)_queue_setupPlane
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = MEMORY[0x277CDBAA8];
  v4 = [MEMORY[0x277CDBAD8] planeWithWidth:10.0 height:10.0];
  v5 = [v3 nodeWithGeometry:v4];
  glassNode = self->_glassNode;
  self->_glassNode = v5;

  LODWORD(v7) = 1078530011;
  [(SCNNode *)self->_glassNode setEulerAngles:0.0, v7, 0.0];
  LODWORD(v8) = 2.0;
  [(SCNNode *)self->_glassNode setPosition:0.0, 0.0, v8];
  v9 = [MEMORY[0x277CDBAB0] staticBody];
  [(SCNNode *)self->_glassNode setPhysicsBody:v9];

  v10 = MEMORY[0x277CDBAD0];
  v11 = [(SCNNode *)self->_glassNode geometry];
  v12 = [v10 shapeWithGeometry:v11 options:0];
  v13 = [(SCNNode *)self->_glassNode physicsBody];
  [v13 setPhysicsShape:v12];

  v14 = [(SCNNode *)self->_glassNode physicsBody];
  [v14 setRestitution:0.2];

  v15 = [(SCNScene *)self->_scene rootNode];
  [v15 addChildNode:self->_glassNode];
}

- (void)_queue_setupBorderWalls
{
  dispatch_assert_queue_V2(self->_renderQueue);
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  v5 = [(SCNNode *)self->_cameraNode camera];
  [v5 fieldOfView];
  v7 = v6 * 0.0174532925 * 0.5;

  v43 = [MEMORY[0x277CDBAD8] planeWithWidth:100.0 height:100.0];
  v8 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v9 = __sincos_stret(v7);
  *&v10 = v9.__sinval;
  cosval = v9.__cosval;
  v39 = *&v10;
  *&v40 = -cosval;
  v12.i64[0] = v10;
  v12.i64[1] = v40;
  v42 = vdupq_n_s32(0x42C80000u);
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  [v8 setSimdPosition:{*vmulq_f32(vmulq_f32(v12, v42), v13).i64}];
  [v8 setSimdRotation:0.0078125];
  v14 = [MEMORY[0x277CDBAB0] staticBody];
  [v8 setPhysicsBody:v14];

  v15 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  v16 = [v8 physicsBody];
  [v16 setPhysicsShape:v15];

  v17 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v18.i32[1] = 0;
  v18.f32[0] = -v39;
  v18.i64[1] = v40;
  v19 = vmulq_f32(v18, v42);
  v18.i64[0] = 0x3F0000003F000000;
  v18.i64[1] = 0x3F0000003F000000;
  [v17 setSimdPosition:{*vmulq_f32(v19, v18).i64}];
  [v17 setSimdRotation:0.0078125];
  v20 = [MEMORY[0x277CDBAB0] staticBody];
  [v17 setPhysicsBody:v20];

  v21 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  v22 = [v17 physicsBody];
  [v22 setPhysicsShape:v21];

  v23 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v24 = __sincos_stret(height * v7 / width);
  sinval = v24.__sinval;
  v38 = sinval;
  v26 = v24.__cosval;
  *&v41 = -v26;
  v27.i32[0] = 0;
  v27.f32[1] = sinval;
  v27.i64[1] = v41;
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  [v23 setSimdPosition:{*vmulq_f32(vmulq_f32(v27, v42), v28).i64}];
  [v23 setSimdRotation:COERCE_DOUBLE(1065353216)];
  v29 = [MEMORY[0x277CDBAB0] staticBody];
  [v23 setPhysicsBody:v29];

  v30 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  v31 = [v23 physicsBody];
  [v31 setPhysicsShape:v30];

  v32 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v33.i32[0] = 0;
  v33.f32[1] = -v38;
  v33.i64[1] = v41;
  v34 = vmulq_f32(v33, v42);
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  [v32 setSimdPosition:{*vmulq_f32(v34, v33).i64}];
  [v32 setSimdRotation:COERCE_DOUBLE(1065353216)];
  v35 = [MEMORY[0x277CDBAB0] staticBody];
  [v32 setPhysicsBody:v35];

  v36 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  v37 = [v32 physicsBody];
  [v37 setPhysicsShape:v36];

  [(SCNNode *)self->_cameraNode addChildNode:v8];
  [(SCNNode *)self->_cameraNode addChildNode:v17];
  [(SCNNode *)self->_cameraNode addChildNode:v23];
  [(SCNNode *)self->_cameraNode addChildNode:v32];
}

- (void)_queue_enumerateDigitsWithBlock:(id)a3
{
  renderQueue = self->_renderQueue;
  v4 = a3;
  dispatch_assert_queue_V2(renderQueue);
  v4[2](v4, 0);
  v4[2](v4, 1);
  v4[2](v4, 2);
  v4[2](v4, 3);
}

- (void)_queue_replaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  digitControllers = self->_digitControllers;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)digitControllers objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = self->_digitControllers;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
    v13 = [v12 digit];

    if (v13 == a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v32 = a3;
    v33 = 2048;
    v34 = a4;
    _os_log_impl(&dword_23C07F000, v14, OS_LOG_TYPE_DEFAULT, "Replacing digit at %lu with %lu", buf, 0x16u);
  }

  v15 = self->_digitControllers;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

  objc_initWeak(buf, self);
  v18 = [NTKSnowglobeDigitController alloc];
  scene = self->_scene;
  group = self->_group;
  renderQueue = self->_renderQueue;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = sub_23C08A8A0;
  v29 = &unk_278BAC8E8;
  objc_copyWeak(v30, buf);
  v30[1] = a3;
  v22 = [(NTKSnowglobeDigitController *)v18 initWithDigit:a4 scene:scene queue:renderQueue group:group configureNode:&v26];
  v23 = self->_digitControllers;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, v26, v27, v28, v29}];
  [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

  [v17 destroy];
  objc_destroyWeak(v30);
  objc_destroyWeak(buf);

LABEL_8:
  v25 = *MEMORY[0x277D85DE8];
}

- (double)_tritiumRotationForDigit:(uint64_t)a3
{
  result = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = vdupq_n_s32(0x3E715BEFu);
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v4 = xmmword_23C0907B0;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = xmmword_23C0907C0;
  }

  else
  {
    v4 = xmmword_23C0907A0;
  }

  return sub_23C08A994(xmmword_23C0907D0, v4);
}

- (uint64_t)_restingOriginForDigit:(uint64_t)a3 node:(unint64_t)a4
{
  a1.n128_u32[0] = -1.5;
  v5 = qword_23C090810[a4 < 2];
  v10 = 0;
  v9 = 0;
  if (a4 < 2)
  {
    a1.n128_f32[0] = 2.5;
  }

  v8 = 0;
  v7 = 0;
  return [a5 getBoundingBoxMin:&v9 max:{&v7, *&a1}];
}

- (double)_tritiumOriginAdjustmentForDigit:(uint64_t)a3
{
  result = 0.0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

LABEL_8:
      *&result = 1045220557;
      return result;
    }

    goto LABEL_7;
  }

  if (a3 == 3)
  {
    goto LABEL_8;
  }

  if (a3 == 2)
  {
LABEL_7:
    *&result = 3192704205;
  }

  return result;
}

- (void)_queue_configureController:(id)a3 digit:(unint64_t)a4
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_renderQueue);
  v6 = [v13 node];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMapTable *)v7->_digitControllerLookup setObject:v13 forKey:v6];
  objc_sync_exit(v7);

  [(NTKSnowglobeSceneController *)v7 _restingOriginForDigit:a4 node:v6];
  LODWORD(v9) = HIDWORD(v8);
  LODWORD(v11) = v10;
  [v13 setOrigin:{v8, v9, v11}];
  [(NTKSnowglobeSceneController *)v7 _restingOriginForDigit:a4 node:v6];
  [v13 setTritiumOrigin:?];
  [v13 setTritiumRotation:0.0];
  v12 = [(NTKSnowglobeSceneController *)v7 appliedSnowglobeState];
  [v13 setPausePhysics:{objc_msgSend(v12, "scenePaused")}];
}

- (void)_queue_animatedReplaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4
{
  dispatch_assert_queue_V2(self->_renderQueue);

  MEMORY[0x2821F9670](self, sel__queue_animatedReplaceDigit_withCharacter_force_);
}

- (void)_queue_animatedReplaceDigit:(unint64_t)a3 withCharacter:(unint64_t)a4 force:(BOOL)a5
{
  v5 = a5;
  v57 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  digitControllers = self->_digitControllers;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [(NSMutableDictionary *)digitControllers objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = self->_digitControllers;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
    v15 = [v14 digit];

    if (v15 == a4 && !v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v54 = a3;
    v55 = 2048;
    v56 = a4;
    _os_log_impl(&dword_23C07F000, v16, OS_LOG_TYPE_DEFAULT, "Replacing digit with animation at %lu with %lu", buf, 0x16u);
  }

  v17 = -5.5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v18 = -1.5;
      v19 = -10.0;
      v20 = -0.5;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_20;
      }

      v18 = -1.5;
      v17 = 5.5;
      v19 = -10.0;
      v20 = 2.0;
    }
  }

  else
  {
    v18 = 2.5;
    v19 = 10.0;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_20;
      }

      v17 = 5.5;
      v20 = 0.5;
    }

    else
    {
      v20 = -2.0;
    }
  }

  v21 = self->_digitControllers;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];

  if (v23)
  {
    [(NSMutableArray *)self->_exitingDigitControllers addObject:v23];
    v24 = [v23 node];
    v25 = [v24 physicsBody];
    [v25 setCollisionBitMask:1];

    v26 = [v23 node];
    v27 = [v26 physicsBody];
    [v27 setContactTestBitMask:1];

    *&v28 = v20;
    *&v29 = v19;
    LODWORD(v30) = 0;
    [v23 setExitOrigin:{v28, v29, v30}];
    [v23 setExiting:1];
  }

  objc_initWeak(buf, self);
  v31 = dispatch_time(0, 5000000000);
  renderQueue = self->_renderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C08B3FC;
  block[3] = &unk_278BAC910;
  v33 = v23;
  v51 = v33;
  objc_copyWeak(&v52, buf);
  dispatch_after(v31, renderQueue, block);
  v34 = [NTKSnowglobeDigitController alloc];
  scene = self->_scene;
  group = self->_group;
  v36 = self->_renderQueue;
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = sub_23C08B47C;
  v45 = &unk_278BAC938;
  objc_copyWeak(v46, buf);
  v47 = v17;
  v48 = v18;
  v49 = 0;
  v46[1] = a3;
  v38 = [(NTKSnowglobeDigitController *)v34 initWithDigit:a4 scene:scene queue:v36 group:group configureNode:&v42];
  v39 = self->_digitControllers;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, v42, v43, v44, v45}];
  [(NSMutableDictionary *)v39 setObject:v38 forKeyedSubscript:v40];

  objc_destroyWeak(v46);
  objc_destroyWeak(&v52);

  objc_destroyWeak(buf);
LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
}

- (id)_queue_backgroundObjectPositions
{
  v65 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = self->_screenSize.height / self->_screenSize.width;
  v4 = objc_opt_new();
  v5 = vcvtpd_u64_f64(v3 / 0.113137085);
  if (v5)
  {
    if (9 * v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 9 * v5;
    }

    do
    {
      [v4 addObject:&unk_284EDC7C0];
      --v6;
    }

    while (v6);
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_23C08BAD0;
  v61[3] = &unk_278BAC960;
  v9 = v4;
  v62 = v9;
  v63 = 9;
  v10 = MEMORY[0x23EEC6230](v61);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_23C08BB14;
  v55[3] = &unk_278BAC988;
  v58 = 0x3FBCF68D4FFF04DCLL;
  v59 = xmmword_23C090840;
  v60 = v5;
  v43 = v10;
  v57 = v43;
  v11 = v8;
  v56 = v11;
  v12 = MEMORY[0x23EEC6230](v55);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_23C08BC50;
  v51[3] = &unk_278BAC9B0;
  v53 = 0x3FBCF68D4FFF04DCLL;
  v42 = v9;
  v52 = v42;
  v54 = 9;
  v13 = MEMORY[0x23EEC6230](v51);
  v14 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  v15 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  *v50 = v14;
  *&v50[1] = v15;
  v16 = [MEMORY[0x277CCAE60] valueWithBytes:v50 objCType:"{CGPoint=dd}"];
  [v11 addObject:v16];

  [v7 addObject:&unk_284EDC7D8];
  v44 = v13;
  (*(v13 + 16))(v13, 0, v14, v15);
  while ([v7 count])
  {
    if ([v11 count] > 0x31)
    {
      break;
    }

    v17 = arc4random_uniform([v7 count]);
    v18 = [v7 objectAtIndexedSubscript:v17];
    v19 = [v18 unsignedIntegerValue];

    v20 = [v11 objectAtIndexedSubscript:v19];
    [v20 CGPointValue];
    v22 = v21;

    v23 = 0;
    while (1)
    {
      v24.n128_f64[0] = sub_23C08BCD4(v22);
      if (v24.n128_f64[0] <= 1.0)
      {
        v26 = v24.n128_f64[0];
        if (v24.n128_f64[0] >= 0.0)
        {
          v27 = v25.n128_f64[0];
          if (v25.n128_f64[0] >= 0.0 && v25.n128_f64[0] <= v3)
          {
            break;
          }
        }
      }

LABEL_26:
      if (++v23 == 30)
      {
        [v7 removeObjectAtIndex:v17];
        goto LABEL_29;
      }
    }

    v29 = v12[2](v12, v24, v25);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v46 objects:v64 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v46 + 1) + 8 * i) CGPointValue];
          if ((v36 - v27) * (v36 - v27) + (v35 - v26) * (v35 - v26) < 0.0256)
          {

            goto LABEL_26;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v46 objects:v64 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v44[2](v44, [v11 count], v26, v27);
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    [v7 addObject:v37];

    *v45 = v26;
    *&v45[1] = v27;
    v38 = [MEMORY[0x277CCAE60] valueWithBytes:v45 objCType:"{CGPoint=dd}"];
    [v11 addObject:v38];

LABEL_29:
    ;
  }

  v39 = v11;

  v40 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_queue_loadBackgroundObjects
{
  v72 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  [(SCNNode *)self->_backgroundContainer removeFromParentNode];
  daintyIndex = self->_daintyIndex;
  self->_daintyIndex = 0;

  [(NSMutableArray *)self->_backgroundControllers removeAllObjects];
  v4 = [MEMORY[0x277CDBAA8] node];
  backgroundContainer = self->_backgroundContainer;
  self->_backgroundContainer = v4;

  [(NTKSnowglobeSceneController *)self _queue_updateBackgroundContainerOpacity];
  v6 = [(SCNNode *)self->_cameraNode camera];
  [v6 fieldOfView];
  v8 = v7;

  [(SCNNode *)self->_cameraFocalNode simdPosition];
  v58 = v9;
  [(SCNNode *)self->_cameraNode simdPosition];
  v54 = v10;
  v11 = objc_opt_new();
  v12 = CACurrentMediaTime();
  v13 = [(NTKSnowglobeSceneController *)self _queue_backgroundObjectPositions];
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v69 = [v13 count];
    v70 = 2048;
    v71 = (CACurrentMediaTime() - v12) * 1000.0;
    _os_log_impl(&dword_23C07F000, v14, OS_LOG_TYPE_DEFAULT, "fished %lu in %.2fms", buf, 0x16u);
  }

  v52 = objc_opt_new();
  v15 = objc_opt_new();
  if ([v13 count])
  {
    v16 = 0;
    v17 = v8 * 3.14159265 / 180.0;
    v53 = v17;
    v18 = COERCE_FLOAT(vaddq_f32(v58, v54).i32[2]);
    v19 = vdup_n_s32(0x3F8CCCCDu);
    do
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
      [v11 addObject:v20];

      v21 = [v13 objectAtIndexedSubscript:v16];
      [v21 CGPointValue];
      v55 = v23;
      v59 = v22;

      v24.f64[0] = v59;
      v24.f64[1] = v55;
      v25 = vmul_f32(vadd_f32(vcvt_f32_f64(v24), 0xBF000000BF000000), v19);
      v26 = self->_screenSize.height / self->_screenSize.width;
      v27 = fabsf(v25.f32[0]);
      v28 = v27 >= 0.51 || v27 <= 0.48;
      v29 = fabsf(v25.f32[1]);
      v30 = v26 * 0.48 < v29;
      if (v26 * 0.51 <= v29)
      {
        v30 = 0;
      }

      if (v30 == v28)
      {
        v60 = v25;
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        [v52 addObject:v31];

        v25 = v60;
      }

      v56 = vmul_n_f32(v25, v53);
      v61 = -(arc4random_uniform(0xFu) + 4) - v18;
      v32 = __sincosf_stret(v56.f32[1]);
      v33 = __sincosf_stret(v56.f32[0]);
      *&v34 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v32.__sinval), LODWORD(v33.__sinval))), v61));
      v35 = v61 * (v33.__cosval * v32.__cosval);
      *(&v34 + 2) = v18 + v35;
      v57 = v34;
      v36 = v61 / (v18 + 10.0) * ((arc4random() / 4294967300.0 * 0.5 + 1.0) * -0.7);
      v37 = self->_renderQueue;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_23C08C2F8;
      v64[3] = &unk_278BACA00;
      v66 = v37;
      v67 = v36;
      v65 = v57;
      v38 = v37;
      v39 = [NTKSnowglobePromise promiseWithBlock:v64];
      [v15 addObject:v39];
      [(NTKSnowglobeSceneController *)self _queue_setupBackgroundObject:v39];

      ++v16;
    }

    while (v16 < [v13 count]);
  }

  v40 = [v11 copy];
  backgroundObjectRandoms = self->_backgroundObjectRandoms;
  self->_backgroundObjectRandoms = v40;

  v42 = [v15 copy];
  backgroundObjects = self->_backgroundObjects;
  self->_backgroundObjects = v42;

  v44 = [v52 copy];
  offscreenBackgroundObjectIndices = self->_offscreenBackgroundObjectIndices;
  self->_offscreenBackgroundObjectIndices = v44;

  v46 = self->_renderQueue;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_23C08C45C;
  v62[3] = &unk_278BACA28;
  v47 = v46;
  v63 = v47;
  v48 = [NTKSnowglobePromise promiseWithBlock:v62];
  daintyPromise = self->_daintyPromise;
  self->_daintyPromise = v48;

  if ([(NSArray *)self->_offscreenBackgroundObjectIndices count])
  {
    [(NTKSnowglobeSceneController *)self _queue_setupBackgroundObject:self->_daintyPromise];
    [(NTKSnowglobeSceneController *)self _queue_replaceRandomObjectWithDainty];
  }

  v50 = [(SCNScene *)self->_scene rootNode];
  [v50 addChildNode:self->_backgroundContainer];

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setupBackgroundObject:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_renderQueue);
  v5 = self->_group;
  dispatch_group_enter(v5);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C08C690;
  v7[3] = &unk_278BACA50;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  [v4 fetchWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_queue_replaceRandomObjectWithDainty
{
  dispatch_assert_queue_V2(self->_renderQueue);
  if ([(NSArray *)self->_offscreenBackgroundObjectIndices count])
  {
    daintyIndex = self->_daintyIndex;
    if (daintyIndex)
    {
      v4 = [(NSArray *)self->_backgroundObjects objectAtIndexedSubscript:[(NSNumber *)daintyIndex intValue]];
      [v4 fetchWithCompletion:&unk_284ED8C80];
    }

    v5 = arc4random_uniform([(NSArray *)self->_offscreenBackgroundObjectIndices count]);
    v6 = [(NSArray *)self->_offscreenBackgroundObjectIndices objectAtIndexedSubscript:v5];
    v7 = [v6 unsignedIntegerValue];

    if (v7 == [(NSNumber *)self->_daintyIndex unsignedIntegerValue])
    {
      v8 = [(NSArray *)self->_offscreenBackgroundObjectIndices objectAtIndexedSubscript:(v5 + 1) % [(NSArray *)self->_offscreenBackgroundObjectIndices count]];
      v7 = [v8 unsignedIntegerValue];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v10 = self->_daintyIndex;
    self->_daintyIndex = v9;

    v11 = self->_group;
    dispatch_group_enter(v11);
    objc_initWeak(&location, self);
    v12 = [(NSArray *)self->_backgroundObjects objectAtIndexedSubscript:v7];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23C08C9F0;
    v14[3] = &unk_278BACA50;
    objc_copyWeak(&v16, &location);
    v13 = v11;
    v15 = v13;
    [v12 fetchWithCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)renderer:(id)a3 updateAtTime:(double)a4
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v6 = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  if (([v6 editing] & 1) == 0 && (objc_msgSend(v6, "idealizedState") & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_crownInputHandler);
    [WeakRetained step:0.0333333333];
  }

  backgroundControllers = self->_backgroundControllers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23C08CD90;
  v12[3] = &unk_278BACAC0;
  v12[4] = self;
  [(NSMutableArray *)backgroundControllers enumerateObjectsUsingBlock:v12];
  v9 = objc_opt_new();
  v10 = [(NSMutableDictionary *)self->_digitControllers allValues];
  [v9 addObjectsFromArray:v10];

  [v9 addObjectsFromArray:self->_exitingDigitControllers];
  [v9 addObjectsFromArray:self->_backgroundControllers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C08CDF0;
  v11[3] = &unk_278BACAE0;
  *&v11[4] = a4;
  [v9 enumerateObjectsUsingBlock:v11];
  [(NTKSnowglobeSceneController *)self _queue_updateCameraParallax];
}

- (void)physicsWorld:(id)a3 didBeginContact:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_renderQueue);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23C08D0FC;
  v31[3] = &unk_278BACB08;
  v31[4] = self;
  v8 = MEMORY[0x23EEC6230](v31);
  v9 = self;
  objc_sync_enter(v9);
  v10 = [v7 nodeA];
  v11 = (v8)[2](v8, v10);

  v12 = [v7 nodeB];
  v13 = (v8)[2](v8, v12);

  objc_sync_exit(v9);
  if (!v11 || !v13 || ([v7 collisionImpulse], v14 >= 0.1))
  {
    v15 = [v7 nodeA];
    v16 = v15;
    if (v15 == v9->_glassNode)
    {
    }

    else
    {
      v17 = [v7 nodeB];
      v18 = v17 == v9->_glassNode;

      if (!v18)
      {
LABEL_16:
        [v11 didCollide];
        [v13 didCollide];
        goto LABEL_17;
      }
    }

    if (v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = v13;
    }

    v20 = [v19 node];
    v21 = [v20 physicsBody];
    [v21 velocity];
    v23 = v22;

    [v7 collisionImpulse];
    v25 = v24;
    v26 = _NTKLoggingObjectForDomain();
    v27 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = v23;
      v34 = 2048;
      v35 = v25;
      _os_log_impl(&dword_23C07F000, v26, OS_LOG_TYPE_INFO, "Play haptic %f %f", buf, 0x16u);
    }

    v28 = NTKSnowglobeTunableFloat(@"hapticTimeout", 0.1);
    v29 = NTKSnowglobeTunableFloat(@"hapticVelocityMin", 2.0);
    if (CACurrentMediaTime() - v9->_lastHaptic > v28 && v29 < v27)
    {
      v9->_lastHaptic = CACurrentMediaTime();
    }

    goto LABEL_16;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(CLKTimeFormatter *)self->_timeFormatter setOverrideDate:v5];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23C07F000, v6, OS_LOG_TYPE_DEFAULT, "Snowglobe override date %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimeFormatter
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [objc_alloc(MEMORY[0x277CBBBA8]) initWithForcesLatinNumbers:1];
  timeFormatter = self->_timeFormatter;
  self->_timeFormatter = v3;

  [(CLKTimeFormatter *)self->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
  v5 = self->_timeFormatter;

  MEMORY[0x2821F9670](v5, sel_addObserver_);
}

- (id)_charactersFromFormatter:(id)a3
{
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [v3 timeSubstringToSeparatorText];
  v5 = [v3 timeSubstringFromSeparatorText];

  if ([v4 length] == 1)
  {
    v6 = [v4 intValue];
    v7 = 0;
  }

  else
  {
    v8 = [v4 substringWithRange:{0, 1}];
    v7 = [v8 intValue];

    v9 = [v4 substringWithRange:{1, 1}];
    v6 = [v9 intValue];
  }

  v10 = [v5 substringWithRange:{0, 1}];
  v11 = [v10 intValue];

  v12 = [v5 substringWithRange:{1, 1}];
  v13 = [v12 intValue];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v21[0] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v21[1] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v21[2] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v21[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NTKSnowglobeSceneController *)self _charactersFromFormatter:v4];
  v6 = [v4 overrideDate];

  renderQueue = self->_renderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C08D5C4;
  block[3] = &unk_278BACB58;
  v11 = v6 != 0;
  block[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(renderQueue, block);
}

- (void)tapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  if (WeakRetained)
  {
    renderQueue = self->_renderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C08D854;
    block[3] = &unk_278BACB80;
    block[4] = self;
    *&block[5] = x;
    *&block[6] = y;
    dispatch_async(renderQueue, block);
  }
}

- (void)_queue_tapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v33[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  v6 = x + x;
  WeakRetained = objc_loadWeakRetained(&self->_renderer);
  [WeakRetained currentViewport];
  v9 = v8 + y * -2.0;

  v10 = 0;
  v11 = *MEMORY[0x277CDBB48];
  v12 = *MEMORY[0x277CDBB68];
  do
  {
    digitControllers = self->_digitControllers;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v15 = [(NSMutableDictionary *)digitControllers objectForKeyedSubscript:v14];

    v16 = [v15 node];

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_renderer);
      v32[1] = v12;
      v33[0] = MEMORY[0x277CBEC38];
      v32[0] = v11;
      v18 = [v15 node];
      v33[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v20 = [v17 hitTest:v19 options:{v6, v9}];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v28;
        do
        {
          v25 = 0;
          do
          {
            if (*v28 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v27 + 1) + 8 * v25) localCoordinates];
            [v15 applyTapAtLocalPosition:?];
            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v23);
      }
    }

    ++v10;
  }

  while (v10 != 4);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_queue_configureLightingWithTritiumFraction:(double)a3
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v5 = 1.0 - a3;
  v6 = [(SCNScene *)self->_scene lightingEnvironment];
  [v6 setIntensity:v5 + v5];

  nightLightNode = self->_nightLightNode;
  if (a3 <= 0.0)
  {
    [(SCNNode *)nightLightNode setHidden:1];
    [(SCNNode *)self->_nightAmbientLightNode setHidden:1];
  }

  else
  {
    [(SCNNode *)nightLightNode setHidden:0];
    [(SCNNode *)self->_nightAmbientLightNode setHidden:0];
    [(SCNLight *)self->_nightLight setIntensity:a3 * 1400.0];
    [(SCNLight *)self->_nightAmbientLight setIntensity:a3 * 150.0];
  }

  leftBacklightNode = self->_leftBacklightNode;
  if (a3 >= 1.0)
  {
    [(SCNNode *)leftBacklightNode setHidden:1];
    rightBacklightNode = self->_rightBacklightNode;

    [(SCNNode *)rightBacklightNode setHidden:1];
  }

  else
  {
    [(SCNNode *)leftBacklightNode setHidden:0];
    [(SCNNode *)self->_rightBacklightNode setHidden:0];
    [(SCNLight *)self->_leftBacklight setIntensity:v5 * 1800.0];
    rightBacklight = self->_rightBacklight;

    [(SCNLight *)rightBacklight setIntensity:v5 * 1800.0];
  }
}

- (SCNRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

- (NTKSnowglobeCrownHandler)crownInputHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_crownInputHandler);

  return WeakRetained;
}

@end