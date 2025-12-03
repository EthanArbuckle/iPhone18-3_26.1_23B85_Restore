@interface NTKSnowglobeSceneController
- (NTKSnowglobeCrownHandler)crownInputHandler;
- (NTKSnowglobeSceneController)initWithSceneSize:(CGSize)size renderQueue:(id)queue;
- (NTKSnowglobeState)snowglobeState;
- (SCNRenderer)renderer;
- (double)_tritiumOriginAdjustmentForDigit:(uint64_t)digit;
- (double)_tritiumRotationForDigit:(uint64_t)digit;
- (double)backgroundObjectOpacity;
- (id)_charactersFromFormatter:(id)formatter;
- (id)_queue_backgroundObjectColorsFromColors:(id)colors;
- (id)_queue_backgroundObjectPositions;
- (uint64_t)_restingOriginForDigit:(uint64_t)digit node:(unint64_t)node;
- (void)_queue_animatedReplaceDigit:(unint64_t)digit withCharacter:(unint64_t)character;
- (void)_queue_animatedReplaceDigit:(unint64_t)digit withCharacter:(unint64_t)character force:(BOOL)force;
- (void)_queue_applyBackgroundContents;
- (void)_queue_applyBackgroundObjectColors:(id)colors;
- (void)_queue_applyColorPalette;
- (void)_queue_applyState;
- (void)_queue_configureController:(id)controller digit:(unint64_t)digit;
- (void)_queue_configureLightingWithTritiumFraction:(double)fraction;
- (void)_queue_enumerateDigitsWithBlock:(id)block;
- (void)_queue_loadBackgroundObjects;
- (void)_queue_replaceDigit:(unint64_t)digit withCharacter:(unint64_t)character;
- (void)_queue_replaceRandomObjectWithDainty;
- (void)_queue_resetToIdealizedState;
- (void)_queue_setupBackgroundObject:(id)object;
- (void)_queue_setupBorderWalls;
- (void)_queue_setupCamera;
- (void)_queue_setupPlane;
- (void)_queue_setupScene;
- (void)_queue_tapAtPoint:(CGPoint)point;
- (void)_queue_updateBackgroundContainerOpacity;
- (void)_queue_updateCameraAngles;
- (void)_queue_updateCameraParallax;
- (void)_setupTimeFormatter;
- (void)flush;
- (void)flushWithCompletion:(id)completion;
- (void)physicsWorld:(id)world didBeginContact:(id)contact;
- (void)renderer:(id)renderer updateAtTime:(double)time;
- (void)setBackgroundObjectOpacity:(double)opacity;
- (void)setColorPalette:(id)palette;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setSnowglobeState:(id)state;
- (void)setTritiumState:(unint64_t)state fraction:(double)fraction;
- (void)tapAtPoint:(CGPoint)point;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation NTKSnowglobeSceneController

- (NTKSnowglobeSceneController)initWithSceneSize:(CGSize)size renderQueue:(id)queue
{
  height = size.height;
  width = size.width;
  queueCopy = queue;
  v39.receiver = self;
  v39.super_class = NTKSnowglobeSceneController;
  v9 = [(NTKSnowglobeSceneController *)&v39 init];
  if (v9)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v9->_screenSize.width = width;
    v9->_screenSize.height = height;
    v10 = +[NTKSnowglobeAssetLibrary sharedInstance];
    sharedDevice = [v10 sharedDevice];
    device = v9->_device;
    v9->_device = sharedDevice;

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

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    digitControllerLookup = v9->_digitControllerLookup;
    v9->_digitControllerLookup = weakToWeakObjectsMapTable;

    v25 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v25;

    v9->_showingOverrideTime = 1;
    objc_storeStrong(&v9->_renderQueue, queue);
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
    createScene = [v33 createScene];
    scene = v9->_scene;
    v9->_scene = createScene;

    [MEMORY[0x277CDBB18] commit];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C0883F8;
    block[3] = &unk_278BAC870;
    v38 = v9;
    dispatch_async(queueCopy, block);
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

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  renderQueue = self->_renderQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C088630;
  v7[3] = &unk_278BAC5C8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(renderQueue, v7);
}

- (void)setSnowglobeState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_stateLock);
  objc_storeStrong(&self->_snowglobeState, state);
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

- (void)setTritiumState:(unint64_t)state fraction:(double)fraction
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  snowglobeState = [(NTKSnowglobeSceneController *)self snowglobeState];
  v7 = [snowglobeState withTritiumState:state fraction:fraction];
  [(NTKSnowglobeSceneController *)self setSnowglobeState:v7];
}

- (double)backgroundObjectOpacity
{
  snowglobeState = [(NTKSnowglobeSceneController *)self snowglobeState];
  [snowglobeState backgroundObjectOpacity];
  v4 = v3;

  return v4;
}

- (void)setBackgroundObjectOpacity:(double)opacity
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  snowglobeState = [(NTKSnowglobeSceneController *)self snowglobeState];
  v5 = [snowglobeState withBackgroundObjectOpacity:opacity];
  [(NTKSnowglobeSceneController *)self setSnowglobeState:v5];
}

- (void)setColorPalette:(id)palette
{
  paletteCopy = palette;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_storeStrong(&self->_colorPalette, palette);
  if (paletteCopy)
  {
    snowglobeState = [(NTKSnowglobeSceneController *)self snowglobeState];
    v6 = [[NTKSnowglobeColors alloc] initWithPalette:paletteCopy];
    v7 = [snowglobeState withPalette:v6];
    [(NTKSnowglobeSceneController *)self setSnowglobeState:v7];
  }
}

- (void)_queue_applyState
{
  v45 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  snowglobeState = [(NTKSnowglobeSceneController *)self snowglobeState];
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  if (self->_leftBacklightNode)
  {
    palette = [snowglobeState palette];

    if (palette)
    {
      snowglobeStateInitialized = self->_snowglobeStateInitialized;
      self->_snowglobeStateInitialized = 1;
      objc_storeStrong(&self->_appliedSnowglobeState, snowglobeState);
      if (snowglobeStateInitialized)
      {
        shouldBeInIdealizedState = [appliedSnowglobeState shouldBeInIdealizedState];
        v8 = shouldBeInIdealizedState ^ [snowglobeState shouldBeInIdealizedState];
        scenePaused = [appliedSnowglobeState scenePaused];
        if (scenePaused != [snowglobeState scenePaused])
        {
          v10 = v8 | 2;
        }

        else
        {
          v10 = v8;
        }

        palette2 = [appliedSnowglobeState palette];
        palette3 = [snowglobeState palette];

        if (palette2 == palette3)
        {
          v13 = v10;
        }

        else
        {
          v13 = v10 | 4;
        }

        [appliedSnowglobeState tritiumFraction];
        v15 = v14;
        [snowglobeState tritiumFraction];
        if (v15 == v16)
        {
          v17 = v13;
        }

        else
        {
          v17 = v13 | 8;
        }

        tritiumState = [appliedSnowglobeState tritiumState];
        if (tritiumState == [snowglobeState tritiumState])
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 | 0x10;
        }

        [appliedSnowglobeState backgroundObjectOpacity];
        v21 = v20;
        [snowglobeState backgroundObjectOpacity];
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
        idealizedState = [snowglobeState idealizedState];
        v41 = 1024;
        editing = [snowglobeState editing];
        v43 = 2048;
        tritiumState2 = [snowglobeState tritiumState];
        _os_log_impl(&dword_23C07F000, v24, OS_LOG_TYPE_DEFAULT, "Apply state (changes=%X, idealized=%i, editing=%i, tritium=%lu)", buf, 0x1Eu);
      }

      if ((v19 & 1) != 0 && [snowglobeState shouldBeInIdealizedState])
      {
        [(NTKSnowglobeSceneController *)self _queue_resetToIdealizedState];
      }

      if ((v19 & 2) != 0)
      {
        scenePaused2 = [snowglobeState scenePaused];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        allValues = [(NSMutableDictionary *)self->_digitControllers allValues];
        v27 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
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
                objc_enumerationMutation(allValues);
              }

              [*(*(&v32 + 1) + 8 * i) setPausePhysics:scenePaused2];
            }

            v28 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v28);
        }

        if (scenePaused2 != [(SCNScene *)self->_scene isPaused])
        {
          [(SCNScene *)self->_scene setPaused:scenePaused2];
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
        [snowglobeState tritiumFraction];
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
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  palette = [appliedSnowglobeState palette];
  backgroundColor = [palette backgroundColor];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [appliedSnowglobeState tritiumFraction];
  v6 = MEMORY[0x23EEC5E20](backgroundColor, blackColor);
  background = [(SCNScene *)self->_scene background];
  [background setContents:v6];
}

- (void)_queue_updateBackgroundContainerOpacity
{
  dispatch_assert_queue_V2(self->_renderQueue);
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  tritiumState = [appliedSnowglobeState tritiumState];
  [appliedSnowglobeState tritiumFraction];
  v5 = v4;
  [appliedSnowglobeState backgroundObjectOpacity];
  v7 = v6;
  if (tritiumState)
  {
    if ([appliedSnowglobeState tritiumState] == 3)
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
  allValues = [(NSMutableDictionary *)self->_digitControllers allValues];
  v4 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v18 + 1) + 8 * v7++) resetToOrigin];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
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
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  palette = [appliedSnowglobeState palette];

  v4 = palette;
  if (self->_leftBacklightNode && self->_rightBacklightNode && palette)
  {
    v5 = [palette backgroundColorsForRandoms:self->_backgroundObjectRandoms];
    [(NTKSnowglobeSceneController *)self _queue_applyBackgroundObjectColors:v5];
    [(NTKSnowglobeSceneController *)self _queue_applyBackgroundContents];
    backlightColor = [palette backlightColor];
    light = [(SCNNode *)self->_rightBacklightNode light];
    [light setColor:backlightColor];

    backlightColor2 = [palette backlightColor];
    light2 = [(SCNNode *)self->_leftBacklightNode light];
    [light2 setColor:backlightColor2];

    v4 = palette;
  }
}

- (void)_queue_applyBackgroundObjectColors:(id)colors
{
  colorsCopy = colors;
  dispatch_assert_queue_V2(self->_renderQueue);
  backgroundObjects = self->_backgroundObjects;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23C08943C;
  v7[3] = &unk_278BAC8C0;
  v8 = colorsCopy;
  v6 = colorsCopy;
  [(NSArray *)backgroundObjects enumerateObjectsUsingBlock:v7];
}

- (id)_queue_backgroundObjectColorsFromColors:(id)colors
{
  colorsCopy = colors;
  dispatch_assert_queue_V2(self->_renderQueue);
  v5 = objc_opt_new();
  if ([(NSArray *)self->_backgroundObjects count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_backgroundObjectRandoms objectAtIndexedSubscript:v6];
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v9 = unsignedIntegerValue % [colorsCopy count];

      v10 = [colorsCopy objectAtIndexedSubscript:v9];
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
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  [appliedSnowglobeState parallaxMultiplier];
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
  physicsWorld = [(SCNScene *)self->_scene physicsWorld];
  [physicsWorld setSpeed:1.0];

  physicsWorld2 = [(SCNScene *)self->_scene physicsWorld];
  [physicsWorld2 setGravity:{0.0, 0.0, 0.0}];

  physicsWorld3 = [(SCNScene *)self->_scene physicsWorld];
  [physicsWorld3 setContactDelegate:self];

  [(SCNScene *)self->_scene setPaused:1];
  [(NTKSnowglobeSceneController *)self _queue_setupCamera];
  [(NTKSnowglobeSceneController *)self _queue_setupBorderWalls];
  node = [MEMORY[0x277CDBAA8] node];
  light = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)node setLight:light];

  v8 = *MEMORY[0x277CDBB78];
  light2 = [(SCNNode *)node light];
  [light2 setType:v8];

  light3 = [(SCNNode *)node light];
  [light3 setIntensity:1800.0];

  light4 = [(SCNNode *)node light];
  [light4 setCategoryBitMask:2];

  node2 = [MEMORY[0x277CDBAA8] node];
  light5 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)node2 setLight:light5];

  light6 = [(SCNNode *)node2 light];
  [light6 setType:v8];

  light7 = [(SCNNode *)node2 light];
  [light7 setIntensity:1800.0];

  light8 = [(SCNNode *)node2 light];
  [light8 setCategoryBitMask:2];

  node3 = [MEMORY[0x277CDBAA8] node];
  light9 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)node3 setLight:light9];

  light10 = [(SCNNode *)node3 light];
  [light10 setType:v8];

  v20 = [MEMORY[0x277D75348] colorWithHue:0.566666667 saturation:0.39 brightness:1.0 alpha:1.0];
  light11 = [(SCNNode *)node3 light];
  [light11 setColor:v20];

  light12 = [(SCNNode *)node3 light];
  [light12 setIntensity:0.0];

  light13 = [(SCNNode *)node3 light];
  [light13 setCategoryBitMask:2];

  node4 = [MEMORY[0x277CDBAA8] node];
  light14 = [MEMORY[0x277CDBA88] light];
  [(SCNNode *)node4 setLight:light14];

  v26 = *MEMORY[0x277CDBB70];
  light15 = [(SCNNode *)node4 light];
  [light15 setType:v26];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  light16 = [(SCNNode *)node4 light];
  [light16 setColor:whiteColor];

  light17 = [(SCNNode *)node4 light];
  [light17 setIntensity:0.0];

  light18 = [(SCNNode *)node4 light];
  [light18 setCategoryBitMask:2];

  LODWORD(v32) = 1081824209;
  LODWORD(v33) = 1.0;
  [(SCNNode *)node setRotation:0.0, v33, 0.0, v32];
  LODWORD(v34) = 1075235812;
  LODWORD(v35) = 1.0;
  [(SCNNode *)node2 setRotation:0.0, v35, 0.0, v34];
  LODWORD(v36) = -1085730853;
  LODWORD(v37) = -1077342245;
  [(SCNNode *)node3 setEulerAngles:v36, v37, 0.0];
  leftBacklightNode = self->_leftBacklightNode;
  self->_leftBacklightNode = node;
  v39 = node;

  rightBacklightNode = self->_rightBacklightNode;
  self->_rightBacklightNode = node2;
  v41 = node2;

  nightLightNode = self->_nightLightNode;
  self->_nightLightNode = node3;
  v43 = node3;

  nightAmbientLightNode = self->_nightAmbientLightNode;
  self->_nightAmbientLightNode = node4;
  v45 = node4;

  light19 = [(SCNNode *)v39 light];
  leftBacklight = self->_leftBacklight;
  self->_leftBacklight = light19;

  light20 = [(SCNNode *)v41 light];
  rightBacklight = self->_rightBacklight;
  self->_rightBacklight = light20;

  light21 = [(SCNNode *)v43 light];
  nightLight = self->_nightLight;
  self->_nightLight = light21;

  light22 = [(SCNNode *)v45 light];
  nightAmbientLight = self->_nightAmbientLight;
  self->_nightAmbientLight = light22;

  rootNode = [(SCNScene *)self->_scene rootNode];
  [rootNode addChildNode:v39];

  rootNode2 = [(SCNScene *)self->_scene rootNode];
  [rootNode2 addChildNode:v41];

  rootNode3 = [(SCNScene *)self->_scene rootNode];
  [rootNode3 addChildNode:v43];

  rootNode4 = [(SCNScene *)self->_scene rootNode];

  [rootNode4 addChildNode:v45];
  [(NTKSnowglobeSceneController *)self _queue_loadBackgroundObjects];
  [(NTKSnowglobeSceneController *)self _queue_setupPlane];

  [(NTKSnowglobeSceneController *)self _queue_applyColorPalette];
}

- (void)_queue_setupCamera
{
  dispatch_assert_queue_V2(self->_renderQueue);
  node = [MEMORY[0x277CDBAA8] node];
  camera = [MEMORY[0x277CDBA48] camera];
  [(SCNNode *)node setCamera:camera];

  camera2 = [(SCNNode *)node camera];
  [camera2 setZFar:110.0];

  camera3 = [(SCNNode *)node camera];
  [camera3 setZNear:1.0];

  CameraMode = NTKSnowglobeDebugGetCameraMode();
  v8 = NTKSnowglobeTunableFloat(@"cameraPivotDepth", -2.5);
  if (CameraMode == 1)
  {
    v16 = NTKSnowglobeTunableFloat(@"cameraFOV", 40.0);
    *&v17 = NTKSnowglobeTunableFloat3(@"cameraPosition", 0);
    *v25 = v17;
    camera4 = [(SCNNode *)node camera];
    [camera4 setFieldOfView:v16];

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
    camera5 = [(SCNNode *)node camera];
    [camera5 setFieldOfView:v9];

    camera6 = [(SCNNode *)node camera];
    [camera6 setProjectionDirection:1];

    *&v13 = v10 - v8;
    v14 = 0.0;
    v15 = 0.0;
  }

  [(SCNNode *)node setPosition:v14, v15, v13];
LABEL_6:
  [(SCNNode *)node setName:@"NTKPointOfView"];
  node2 = [MEMORY[0x277CDBAA8] node];
  *&v20 = v8;
  [(SCNNode *)node2 setPosition:0.0, 0.0, v20];
  cameraNode = self->_cameraNode;
  self->_cameraNode = node;
  v22 = node;

  cameraFocalNode = self->_cameraFocalNode;
  self->_cameraFocalNode = node2;
  v24 = node2;

  [(SCNNode *)v24 addChildNode:v22];
  rootNode = [(SCNScene *)self->_scene rootNode];

  [rootNode addChildNode:v24];
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
  staticBody = [MEMORY[0x277CDBAB0] staticBody];
  [(SCNNode *)self->_glassNode setPhysicsBody:staticBody];

  v10 = MEMORY[0x277CDBAD0];
  geometry = [(SCNNode *)self->_glassNode geometry];
  v12 = [v10 shapeWithGeometry:geometry options:0];
  physicsBody = [(SCNNode *)self->_glassNode physicsBody];
  [physicsBody setPhysicsShape:v12];

  physicsBody2 = [(SCNNode *)self->_glassNode physicsBody];
  [physicsBody2 setRestitution:0.2];

  rootNode = [(SCNScene *)self->_scene rootNode];
  [rootNode addChildNode:self->_glassNode];
}

- (void)_queue_setupBorderWalls
{
  dispatch_assert_queue_V2(self->_renderQueue);
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  camera = [(SCNNode *)self->_cameraNode camera];
  [camera fieldOfView];
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
  staticBody = [MEMORY[0x277CDBAB0] staticBody];
  [v8 setPhysicsBody:staticBody];

  v15 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  physicsBody = [v8 physicsBody];
  [physicsBody setPhysicsShape:v15];

  v17 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v18.i32[1] = 0;
  v18.f32[0] = -v39;
  v18.i64[1] = v40;
  v19 = vmulq_f32(v18, v42);
  v18.i64[0] = 0x3F0000003F000000;
  v18.i64[1] = 0x3F0000003F000000;
  [v17 setSimdPosition:{*vmulq_f32(v19, v18).i64}];
  [v17 setSimdRotation:0.0078125];
  staticBody2 = [MEMORY[0x277CDBAB0] staticBody];
  [v17 setPhysicsBody:staticBody2];

  v21 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  physicsBody2 = [v17 physicsBody];
  [physicsBody2 setPhysicsShape:v21];

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
  staticBody3 = [MEMORY[0x277CDBAB0] staticBody];
  [v23 setPhysicsBody:staticBody3];

  v30 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  physicsBody3 = [v23 physicsBody];
  [physicsBody3 setPhysicsShape:v30];

  v32 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v43];
  v33.i32[0] = 0;
  v33.f32[1] = -v38;
  v33.i64[1] = v41;
  v34 = vmulq_f32(v33, v42);
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  [v32 setSimdPosition:{*vmulq_f32(v34, v33).i64}];
  [v32 setSimdRotation:COERCE_DOUBLE(1065353216)];
  staticBody4 = [MEMORY[0x277CDBAB0] staticBody];
  [v32 setPhysicsBody:staticBody4];

  v36 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v43 options:0];
  physicsBody4 = [v32 physicsBody];
  [physicsBody4 setPhysicsShape:v36];

  [(SCNNode *)self->_cameraNode addChildNode:v8];
  [(SCNNode *)self->_cameraNode addChildNode:v17];
  [(SCNNode *)self->_cameraNode addChildNode:v23];
  [(SCNNode *)self->_cameraNode addChildNode:v32];
}

- (void)_queue_enumerateDigitsWithBlock:(id)block
{
  renderQueue = self->_renderQueue;
  blockCopy = block;
  dispatch_assert_queue_V2(renderQueue);
  blockCopy[2](blockCopy, 0);
  blockCopy[2](blockCopy, 1);
  blockCopy[2](blockCopy, 2);
  blockCopy[2](blockCopy, 3);
}

- (void)_queue_replaceDigit:(unint64_t)digit withCharacter:(unint64_t)character
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  digitControllers = self->_digitControllers;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
  v9 = [(NSMutableDictionary *)digitControllers objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = self->_digitControllers;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
    digit = [v12 digit];

    if (digit == character)
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
    digitCopy = digit;
    v33 = 2048;
    characterCopy = character;
    _os_log_impl(&dword_23C07F000, v14, OS_LOG_TYPE_DEFAULT, "Replacing digit at %lu with %lu", buf, 0x16u);
  }

  v15 = self->_digitControllers;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
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
  v30[1] = digit;
  v22 = [(NTKSnowglobeDigitController *)v18 initWithDigit:character scene:scene queue:renderQueue group:group configureNode:&v26];
  v23 = self->_digitControllers;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{digit, v26, v27, v28, v29}];
  [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

  [v17 destroy];
  objc_destroyWeak(v30);
  objc_destroyWeak(buf);

LABEL_8:
  v25 = *MEMORY[0x277D85DE8];
}

- (double)_tritiumRotationForDigit:(uint64_t)digit
{
  result = 0.0;
  if (digit > 1)
  {
    if (digit == 2)
    {
      v4 = vdupq_n_s32(0x3E715BEFu);
    }

    else
    {
      if (digit != 3)
      {
        return result;
      }

      v4 = xmmword_23C0907B0;
    }
  }

  else if (digit)
  {
    if (digit != 1)
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

- (uint64_t)_restingOriginForDigit:(uint64_t)digit node:(unint64_t)node
{
  self.n128_u32[0] = -1.5;
  v5 = qword_23C090810[node < 2];
  v10 = 0;
  v9 = 0;
  if (node < 2)
  {
    self.n128_f32[0] = 2.5;
  }

  v8 = 0;
  v7 = 0;
  return [a5 getBoundingBoxMin:&v9 max:{&v7, *&self}];
}

- (double)_tritiumOriginAdjustmentForDigit:(uint64_t)digit
{
  result = 0.0;
  if (digit <= 1)
  {
    if (digit)
    {
      if (digit != 1)
      {
        return result;
      }

LABEL_8:
      *&result = 1045220557;
      return result;
    }

    goto LABEL_7;
  }

  if (digit == 3)
  {
    goto LABEL_8;
  }

  if (digit == 2)
  {
LABEL_7:
    *&result = 3192704205;
  }

  return result;
}

- (void)_queue_configureController:(id)controller digit:(unint64_t)digit
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_renderQueue);
  node = [controllerCopy node];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMapTable *)selfCopy->_digitControllerLookup setObject:controllerCopy forKey:node];
  objc_sync_exit(selfCopy);

  [(NTKSnowglobeSceneController *)selfCopy _restingOriginForDigit:digit node:node];
  LODWORD(v9) = HIDWORD(v8);
  LODWORD(v11) = v10;
  [controllerCopy setOrigin:{v8, v9, v11}];
  [(NTKSnowglobeSceneController *)selfCopy _restingOriginForDigit:digit node:node];
  [controllerCopy setTritiumOrigin:?];
  [controllerCopy setTritiumRotation:0.0];
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)selfCopy appliedSnowglobeState];
  [controllerCopy setPausePhysics:{objc_msgSend(appliedSnowglobeState, "scenePaused")}];
}

- (void)_queue_animatedReplaceDigit:(unint64_t)digit withCharacter:(unint64_t)character
{
  dispatch_assert_queue_V2(self->_renderQueue);

  MEMORY[0x2821F9670](self, sel__queue_animatedReplaceDigit_withCharacter_force_);
}

- (void)_queue_animatedReplaceDigit:(unint64_t)digit withCharacter:(unint64_t)character force:(BOOL)force
{
  forceCopy = force;
  v57 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_renderQueue);
  digitControllers = self->_digitControllers;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
  v11 = [(NSMutableDictionary *)digitControllers objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = self->_digitControllers;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
    digit = [v14 digit];

    if (digit == character && !forceCopy)
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
    digitCopy = digit;
    v55 = 2048;
    characterCopy = character;
    _os_log_impl(&dword_23C07F000, v16, OS_LOG_TYPE_DEFAULT, "Replacing digit with animation at %lu with %lu", buf, 0x16u);
  }

  v17 = -5.5;
  if (digit > 1)
  {
    if (digit == 2)
    {
      v18 = -1.5;
      v19 = -10.0;
      v20 = -0.5;
    }

    else
    {
      if (digit != 3)
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
    if (digit)
    {
      if (digit != 1)
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
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:digit];
  v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];

  if (v23)
  {
    [(NSMutableArray *)self->_exitingDigitControllers addObject:v23];
    node = [v23 node];
    physicsBody = [node physicsBody];
    [physicsBody setCollisionBitMask:1];

    node2 = [v23 node];
    physicsBody2 = [node2 physicsBody];
    [physicsBody2 setContactTestBitMask:1];

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
  v46[1] = digit;
  v38 = [(NTKSnowglobeDigitController *)v34 initWithDigit:character scene:scene queue:v36 group:group configureNode:&v42];
  v39 = self->_digitControllers;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{digit, v42, v43, v44, v45}];
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
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    v20 = [v11 objectAtIndexedSubscript:unsignedIntegerValue];
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
  node = [MEMORY[0x277CDBAA8] node];
  backgroundContainer = self->_backgroundContainer;
  self->_backgroundContainer = node;

  [(NTKSnowglobeSceneController *)self _queue_updateBackgroundContainerOpacity];
  camera = [(SCNNode *)self->_cameraNode camera];
  [camera fieldOfView];
  v8 = v7;

  [(SCNNode *)self->_cameraFocalNode simdPosition];
  v58 = v9;
  [(SCNNode *)self->_cameraNode simdPosition];
  v54 = v10;
  v11 = objc_opt_new();
  v12 = CACurrentMediaTime();
  _queue_backgroundObjectPositions = [(NTKSnowglobeSceneController *)self _queue_backgroundObjectPositions];
  v14 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v69 = [_queue_backgroundObjectPositions count];
    v70 = 2048;
    v71 = (CACurrentMediaTime() - v12) * 1000.0;
    _os_log_impl(&dword_23C07F000, v14, OS_LOG_TYPE_DEFAULT, "fished %lu in %.2fms", buf, 0x16u);
  }

  v52 = objc_opt_new();
  v15 = objc_opt_new();
  if ([_queue_backgroundObjectPositions count])
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

      v21 = [_queue_backgroundObjectPositions objectAtIndexedSubscript:v16];
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

    while (v16 < [_queue_backgroundObjectPositions count]);
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

  rootNode = [(SCNScene *)self->_scene rootNode];
  [rootNode addChildNode:self->_backgroundContainer];

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setupBackgroundObject:(id)object
{
  objectCopy = object;
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
  [objectCopy fetchWithCompletion:v7];

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
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    if (unsignedIntegerValue == [(NSNumber *)self->_daintyIndex unsignedIntegerValue])
    {
      v8 = [(NSArray *)self->_offscreenBackgroundObjectIndices objectAtIndexedSubscript:(v5 + 1) % [(NSArray *)self->_offscreenBackgroundObjectIndices count]];
      unsignedIntegerValue = [v8 unsignedIntegerValue];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v10 = self->_daintyIndex;
    self->_daintyIndex = v9;

    v11 = self->_group;
    dispatch_group_enter(v11);
    objc_initWeak(&location, self);
    v12 = [(NSArray *)self->_backgroundObjects objectAtIndexedSubscript:unsignedIntegerValue];
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

- (void)renderer:(id)renderer updateAtTime:(double)time
{
  dispatch_assert_queue_V2(self->_renderQueue);
  appliedSnowglobeState = [(NTKSnowglobeSceneController *)self appliedSnowglobeState];
  if (([appliedSnowglobeState editing] & 1) == 0 && (objc_msgSend(appliedSnowglobeState, "idealizedState") & 1) == 0)
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
  allValues = [(NSMutableDictionary *)self->_digitControllers allValues];
  [v9 addObjectsFromArray:allValues];

  [v9 addObjectsFromArray:self->_exitingDigitControllers];
  [v9 addObjectsFromArray:self->_backgroundControllers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C08CDF0;
  v11[3] = &unk_278BACAE0;
  *&v11[4] = time;
  [v9 enumerateObjectsUsingBlock:v11];
  [(NTKSnowglobeSceneController *)self _queue_updateCameraParallax];
}

- (void)physicsWorld:(id)world didBeginContact:(id)contact
{
  v36 = *MEMORY[0x277D85DE8];
  worldCopy = world;
  contactCopy = contact;
  dispatch_assert_queue_V2(self->_renderQueue);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23C08D0FC;
  v31[3] = &unk_278BACB08;
  v31[4] = self;
  v8 = MEMORY[0x23EEC6230](v31);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeA = [contactCopy nodeA];
  v11 = (v8)[2](v8, nodeA);

  nodeB = [contactCopy nodeB];
  v13 = (v8)[2](v8, nodeB);

  objc_sync_exit(selfCopy);
  if (!v11 || !v13 || ([contactCopy collisionImpulse], v14 >= 0.1))
  {
    nodeA2 = [contactCopy nodeA];
    v16 = nodeA2;
    if (nodeA2 == selfCopy->_glassNode)
    {
    }

    else
    {
      nodeB2 = [contactCopy nodeB];
      v18 = nodeB2 == selfCopy->_glassNode;

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

    node = [v19 node];
    physicsBody = [node physicsBody];
    [physicsBody velocity];
    v23 = v22;

    [contactCopy collisionImpulse];
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
    if (CACurrentMediaTime() - selfCopy->_lastHaptic > v28 && v29 < v27)
    {
      selfCopy->_lastHaptic = CACurrentMediaTime();
    }

    goto LABEL_16;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v10 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(CLKTimeFormatter *)self->_timeFormatter setOverrideDate:dateCopy];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dateCopy;
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

- (id)_charactersFromFormatter:(id)formatter
{
  v21[4] = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  timeSubstringToSeparatorText = [formatterCopy timeSubstringToSeparatorText];
  timeSubstringFromSeparatorText = [formatterCopy timeSubstringFromSeparatorText];

  if ([timeSubstringToSeparatorText length] == 1)
  {
    intValue = [timeSubstringToSeparatorText intValue];
    intValue2 = 0;
  }

  else
  {
    v8 = [timeSubstringToSeparatorText substringWithRange:{0, 1}];
    intValue2 = [v8 intValue];

    v9 = [timeSubstringToSeparatorText substringWithRange:{1, 1}];
    intValue = [v9 intValue];
  }

  v10 = [timeSubstringFromSeparatorText substringWithRange:{0, 1}];
  intValue3 = [v10 intValue];

  v12 = [timeSubstringFromSeparatorText substringWithRange:{1, 1}];
  intValue4 = [v12 intValue];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue2];
  v21[0] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue];
  v21[1] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue3];
  v21[2] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue4];
  v21[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)timeFormatterTextDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NTKSnowglobeSceneController *)self _charactersFromFormatter:changeCopy];
  overrideDate = [changeCopy overrideDate];

  renderQueue = self->_renderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23C08D5C4;
  block[3] = &unk_278BACB58;
  v11 = overrideDate != 0;
  block[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(renderQueue, block);
}

- (void)tapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)_queue_tapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

    node = [v15 node];

    if (node)
    {
      v17 = objc_loadWeakRetained(&self->_renderer);
      v32[1] = v12;
      v33[0] = MEMORY[0x277CBEC38];
      v32[0] = v11;
      node2 = [v15 node];
      v33[1] = node2;
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

- (void)_queue_configureLightingWithTritiumFraction:(double)fraction
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v5 = 1.0 - fraction;
  lightingEnvironment = [(SCNScene *)self->_scene lightingEnvironment];
  [lightingEnvironment setIntensity:v5 + v5];

  nightLightNode = self->_nightLightNode;
  if (fraction <= 0.0)
  {
    [(SCNNode *)nightLightNode setHidden:1];
    [(SCNNode *)self->_nightAmbientLightNode setHidden:1];
  }

  else
  {
    [(SCNNode *)nightLightNode setHidden:0];
    [(SCNNode *)self->_nightAmbientLightNode setHidden:0];
    [(SCNLight *)self->_nightLight setIntensity:fraction * 1400.0];
    [(SCNLight *)self->_nightAmbientLight setIntensity:fraction * 150.0];
  }

  leftBacklightNode = self->_leftBacklightNode;
  if (fraction >= 1.0)
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