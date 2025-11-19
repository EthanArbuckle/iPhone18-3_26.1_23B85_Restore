@interface SCNCamera
+ (SCNCamera)camera;
+ (SCNCamera)cameraWithCameraRef:(__C3DCamera *)a3;
+ (SCNCamera)cameraWithMDLCamera:(MDLCamera *)mdlCamera;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)automaticallyAdjustsZRange;
- (BOOL)grainIsColored;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (BOOL)usesOrthographicProjection;
- (BOOL)wantsExposureAdaptation;
- (BOOL)wantsHDR;
- (CGAffineTransform)postProjectionTransform;
- (CGFloat)aperture;
- (CGFloat)averageGray;
- (CGFloat)bloomBlurRadius;
- (CGFloat)bloomIntensity;
- (CGFloat)bloomIterationSpread;
- (CGFloat)bloomThreshold;
- (CGFloat)colorFringeIntensity;
- (CGFloat)colorFringeStrength;
- (CGFloat)contrast;
- (CGFloat)exposureAdaptationBrighteningSpeedFactor;
- (CGFloat)exposureAdaptationDarkeningSpeedFactor;
- (CGFloat)exposureOffset;
- (CGFloat)fStop;
- (CGFloat)fieldOfView;
- (CGFloat)focalBlurRadius;
- (CGFloat)focalLength;
- (CGFloat)focusDistance;
- (CGFloat)grainIntensity;
- (CGFloat)grainScale;
- (CGFloat)maximumExposure;
- (CGFloat)minimumExposure;
- (CGFloat)motionBlurIntensity;
- (CGFloat)saturation;
- (CGFloat)screenSpaceAmbientOcclusionBias;
- (CGFloat)screenSpaceAmbientOcclusionDepthThreshold;
- (CGFloat)screenSpaceAmbientOcclusionIntensity;
- (CGFloat)screenSpaceAmbientOcclusionNormalThreshold;
- (CGFloat)screenSpaceAmbientOcclusionRadius;
- (CGFloat)sensorHeight;
- (CGFloat)vignettingIntensity;
- (CGFloat)vignettingPower;
- (CGFloat)whiteBalanceTemperature;
- (CGFloat)whiteBalanceTint;
- (CGFloat)whitePoint;
- (NSArray)animationKeys;
- (NSInteger)apertureBladeCount;
- (NSInteger)bloomIterationCount;
- (NSInteger)focalBlurSampleCount;
- (NSString)description;
- (NSString)name;
- (NSUInteger)categoryBitMask;
- (SCNCamera)init;
- (SCNCamera)initWithCameraRef:(__C3DCamera *)a3;
- (SCNCamera)initWithCoder:(id)a3;
- (SCNCameraProjectionDirection)projectionDirection;
- (SCNMaterialProperty)colorGrading;
- (SCNMatrix4)projectionTransform;
- (SCNMatrix4)projectionTransformWithViewportSize:(SEL)a3;
- (SCNTechnique)technique;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)aspectRatio;
- (double)exposureAdaptationDuration;
- (double)exposureAdaptationHistogramRangeHighProbability;
- (double)exposureAdaptationHistogramRangeLowProbability;
- (double)grainSlice;
- (double)lensShift;
- (double)orthographicScale;
- (double)xFov;
- (double)yFov;
- (double)zFar;
- (double)zNear;
- (float)dofIntensity;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)grainTexture;
- (id)identifier;
- (id)initPresentationCameraWithCameraRef:(__C3DCamera *)a3;
- (id)presentationCamera;
- (id)scene;
- (int64_t)exposureAdaptationMode;
- (int64_t)fillMode;
- (int64_t)screenSpaceAmbientOcclusionDownSample;
- (int64_t)screenSpaceAmbientOcclusionSampleCount;
- (void)_checkSettingsConsistency;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customEncodingOfSCNCamera:(id)a3;
- (void)_didDecodeSCNCamera:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateFieldOfView;
- (void)_updateFocalLength;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setAperture:(CGFloat)aperture;
- (void)setApertureBladeCount:(NSInteger)apertureBladeCount;
- (void)setAspectRatio:(double)a3;
- (void)setAutomaticallyAdjustsZRange:(BOOL)automaticallyAdjustsZRange;
- (void)setAverageGray:(CGFloat)averageGray;
- (void)setBloomBlurRadius:(CGFloat)bloomBlurRadius;
- (void)setBloomIntensity:(CGFloat)bloomIntensity;
- (void)setBloomIterationCount:(NSInteger)bloomIterationCount;
- (void)setBloomIterationSpread:(CGFloat)bloomIterationSpread;
- (void)setBloomThreshold:(CGFloat)bloomThreshold;
- (void)setCategoryBitMask:(NSUInteger)categoryBitMask;
- (void)setColorFringeIntensity:(CGFloat)colorFringeIntensity;
- (void)setColorFringeStrength:(CGFloat)colorFringeStrength;
- (void)setContrast:(CGFloat)contrast;
- (void)setDofIntensity:(float)a3;
- (void)setExposureAdaptationBrighteningSpeedFactor:(CGFloat)exposureAdaptationBrighteningSpeedFactor;
- (void)setExposureAdaptationDarkeningSpeedFactor:(CGFloat)exposureAdaptationDarkeningSpeedFactor;
- (void)setExposureAdaptationDuration:(double)a3;
- (void)setExposureAdaptationHistogramRangeHighProbability:(double)a3;
- (void)setExposureAdaptationHistogramRangeLowProbability:(double)a3;
- (void)setExposureAdaptationMode:(int64_t)a3;
- (void)setExposureOffset:(CGFloat)exposureOffset;
- (void)setFStop:(CGFloat)fStop;
- (void)setFieldOfView:(CGFloat)fieldOfView;
- (void)setFillMode:(int64_t)a3;
- (void)setFocalBlurSampleCount:(NSInteger)focalBlurSampleCount;
- (void)setFocalLength:(CGFloat)focalLength;
- (void)setFocusDistance:(CGFloat)focusDistance;
- (void)setGrainIntensity:(CGFloat)grainIntensity;
- (void)setGrainIsColored:(BOOL)grainIsColored;
- (void)setGrainScale:(CGFloat)grainScale;
- (void)setGrainSlice:(double)a3;
- (void)setGrainTexture:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLensShift:(SCNCamera *)self;
- (void)setMaximumExposure:(CGFloat)maximumExposure;
- (void)setMinimumExposure:(CGFloat)minimumExposure;
- (void)setMotionBlurIntensity:(CGFloat)motionBlurIntensity;
- (void)setName:(NSString *)name;
- (void)setOrthographicScale:(double)orthographicScale;
- (void)setPostProjectionTransform:(CGAffineTransform *)a3;
- (void)setPostProjectionTransformScale:(SCNCamera *)self;
- (void)setPostProjectionTransformTranslation:(SCNCamera *)self;
- (void)setProjectionDirection:(SCNCameraProjectionDirection)projectionDirection;
- (void)setProjectionTransform:(SCNMatrix4 *)projectionTransform;
- (void)setSaturation:(CGFloat)saturation;
- (void)setScreenSpaceAmbientOcclusionBias:(CGFloat)screenSpaceAmbientOcclusionBias;
- (void)setScreenSpaceAmbientOcclusionDepthThreshold:(CGFloat)screenSpaceAmbientOcclusionDepthThreshold;
- (void)setScreenSpaceAmbientOcclusionDownSample:(int64_t)a3;
- (void)setScreenSpaceAmbientOcclusionIntensity:(CGFloat)screenSpaceAmbientOcclusionIntensity;
- (void)setScreenSpaceAmbientOcclusionNormalThreshold:(CGFloat)screenSpaceAmbientOcclusionNormalThreshold;
- (void)setScreenSpaceAmbientOcclusionRadius:(CGFloat)screenSpaceAmbientOcclusionRadius;
- (void)setScreenSpaceAmbientOcclusionSampleCount:(int64_t)a3;
- (void)setSensorHeight:(CGFloat)sensorHeight;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setTechnique:(id)a3;
- (void)setUsesOrthographicProjection:(BOOL)usesOrthographicProjection;
- (void)setVignettingIntensity:(CGFloat)vignettingIntensity;
- (void)setVignettingPower:(CGFloat)vignettingPower;
- (void)setWantsDepthOfField:(BOOL)wantsDepthOfField;
- (void)setWantsExposureAdaptation:(BOOL)wantsExposureAdaptation;
- (void)setWantsHDR:(BOOL)wantsHDR;
- (void)setWhiteBalanceTemperature:(CGFloat)whiteBalanceTemperature;
- (void)setWhiteBalanceTint:(CGFloat)whiteBalanceTint;
- (void)setWhitePoint:(CGFloat)whitePoint;
- (void)setXFov:(double)xFov;
- (void)setYFov:(double)yFov;
- (void)setZFar:(double)zFar;
- (void)setZNear:(double)zNear;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNCamera

+ (SCNCamera)cameraWithMDLCamera:(MDLCamera *)mdlCamera
{
  v4 = [a1 camera];
  [(MDLCamera *)mdlCamera focalLength];
  [(SCNCamera *)v4 setFocalLength:v5];
  [(MDLCamera *)mdlCamera sensorVerticalAperture];
  [(SCNCamera *)v4 setSensorHeight:v6];
  [(MDLCamera *)mdlCamera fStop];
  [(SCNCamera *)v4 setFStop:v7];
  [(MDLCamera *)mdlCamera focusDistance];
  [(SCNCamera *)v4 setFocusDistance:v8];
  [(MDLCamera *)mdlCamera sensorAspect];
  [(SCNCamera *)v4 setAspectRatio:v9];
  [(SCNCamera *)v4 setApertureBladeCount:[(MDLCamera *)mdlCamera apertureBladeCount]];
  [(MDLCamera *)mdlCamera nearVisibilityDistance];
  [(SCNCamera *)v4 setZNear:v10];
  [(MDLCamera *)mdlCamera farVisibilityDistance];
  [(SCNCamera *)v4 setZFar:v11];
  [(SCNCamera *)v4 setFocalBlurRadius:0.0];
  [(SCNCamera *)v4 setUsesOrthographicProjection:[(MDLCamera *)mdlCamera projection]== MDLCameraProjectionOrthographic];
  if ([(MDLCamera *)mdlCamera focalLengthAnimation])
  {
    [(MDLCamera *)mdlCamera focalLengthAnimation];
    v12 = objc_opt_class();
    if ([v12 isSubclassOfClass:objc_opt_class()])
    {
      v13 = [(MDLCamera *)mdlCamera focalLengthAnimation];
      v14 = [v13 values];
      v15 = [v14 count];
      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
      [(MDLCamera *)mdlCamera sensorVerticalAperture];
      if (v15)
      {
        v18 = v17;
        for (i = 0; i != v15; ++i)
        {
          [objc_msgSend(v14 objectAtIndex:{i), "floatValue"}];
          *&v21 = (atanf(v18 / (v20 + v20)) * 360.0) / 3.1416;
          [v16 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v21)}];
        }
      }

      v22 = [MEMORY[0x277CD9EC8] animation];
      [v22 setKeyPath:@"fieldOfView"];
      [v22 setValues:v16];
      [v22 setKeyTimes:{objc_msgSend(v13, "keyTimes")}];
      [v13 duration];
      [v22 setDuration:?];
      [v22 setUsesSceneTimeBase:1];
      [v22 setRemovedOnCompletion:0];
      [(SCNCamera *)v4 addAnimation:v22 forKey:0];
    }
  }

  if ([(MDLCamera *)mdlCamera focalDistanceAnimation])
  {
    [(SCNCamera *)v4 addAnimation:[(MDLCamera *)mdlCamera focalDistanceAnimation] forKey:@"focalDistance"];
  }

  if ([(MDLCamera *)mdlCamera fStopAnimation])
  {
    [(SCNCamera *)v4 addAnimation:[(MDLCamera *)mdlCamera fStopAnimation] forKey:@"fstop"];
  }

  return v4;
}

- (SCNCamera)init
{
  v5.receiver = self;
  v5.super_class = SCNCamera;
  v2 = [(SCNCamera *)&v5 init];
  if (v2)
  {
    v3 = C3DCameraCreate();
    v2->_camera = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNCamera *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNCamera)initWithCameraRef:(__C3DCamera *)a3
{
  v7.receiver = self;
  v7.super_class = SCNCamera;
  v4 = [(SCNCamera *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_camera = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNCamera *)v4 _syncObjCModel];
    [(SCNCamera *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationCameraWithCameraRef:(__C3DCamera *)a3
{
  v9.receiver = self;
  v9.super_class = SCNCamera;
  v4 = [(SCNCamera *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v6 = CFRetain(a3);
    v5->_camera = v6;
    if (C3DCameraUsesLegacyFov(v6))
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 16) = *(v5 + 16) & 0xFB | v7;
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNCamera)cameraWithCameraRef:(__C3DCamera *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithCameraRef:a3];

    return v6;
  }

  return result;
}

+ (SCNCamera)camera
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)dealloc
{
  camera = self->_camera;
  if (camera)
  {
    if ((*(self + 16) & 1) == 0)
    {
      C3DEntitySetObjCWrapper(camera, 0);
      camera = self->_camera;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __20__SCNCamera_dealloc__block_invoke;
    v5[3] = &__block_descriptor_40_e8_v16__0d8l;
    v5[4] = camera;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v5];
  }

  [*&self->_wantsHDR parentWillDie:self];
  v4.receiver = self;
  v4.super_class = SCNCamera;
  [(SCNCamera *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [(NSString *)[(SCNCamera *)self name] length];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    return [v4 stringWithFormat:@"<%@: %p '%@'>", v6, self, -[SCNCamera name](self, "name")];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@: %p>", v6, self, v8];
  }
}

- (void)setName:(NSString *)name
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setName:];
    }
  }

  else if (name | self->_name)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {

      self->_name = [(NSString *)name copy];
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __21__SCNCamera_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = name;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

CFStringRef __21__SCNCamera_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  return C3DEntitySetName(v2, v3);
}

- (NSString)name
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_name;
  }

  v4 = [(SCNCamera *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Name = C3DEntityGetName([(SCNCamera *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNCamera *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNCamera *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNCamera *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNCamera *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNCamera *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNCamera *)self sceneRef];
  if (result)
  {

    return C3DSceneGetAnimationManager(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{a4), "animation"}] == a3;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a4];
    v8 = [(SCNCamera *)self __CFObject];
    if ((CFTypeIsC3DEntity(v8) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
      }
    }

    C3DEntityRemoveAnimationForKey(v8, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:a3 forKey:v5];
    os_unfair_lock_unlock(&self->_animationsLock);
    v8 = [(SCNCamera *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SCNCamera_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = a3;
    v10[5] = self;
    v10[6] = v5;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v10];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNTechnique addAnimationPlayer:v9 forKey:?];
    }
  }
}

void __39__SCNCamera_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 20));
    [*(*(a1 + 40) + 24) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 20);

    os_unfair_lock_unlock(v2);
  }
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [SCNAnimation animationWithCAAnimation:v6];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:v6];
    [(SCNCamera *)self addAnimationPlayer:v7 forKey:v5];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNTechnique addAnimation:v8 forKey:?];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v3 = [(SCNCamera *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNCamera_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNCamera *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SCNCamera_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v5 = [(SCNCamera *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__SCNCamera_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v7 = [(SCNCamera *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SCNCamera_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = a3;
    *&v8[6] = a4;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v3 = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)v3 count])
  {
    return v3;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_syncObjCAnimations
{
  v3 = [(SCNCamera *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNCamera *)self __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v7 _syncObjCAnimations:v8];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v16 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v16, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)animationForKey:(id)a3
{
  v3 = [(SCNCamera *)self _scnAnimationForKey:a3];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{v3), "animation"}];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 animationKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(a3 animationPlayerForKey:{v10), "copy"}];
        [(SCNCamera *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [(SCNOrderedDictionary *)animations objectForKey:v3];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(SCNCamera *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNCamera *)self animationManager];
    if (v11)
    {
      v12 = v11;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, a4, v7, v5, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)a3
{
  v5 = [(SCNCamera *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SCNCamera_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNCamera *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNCamera_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNCamera *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SCNCamera_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __38__SCNCamera_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) animationManager];
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      C3DAnimationManagerChangeSpeedOfAnimationForKey(v4, v3, v5, v6);
    }
  }
}

- (BOOL)isAnimationForKeyPaused:(id)a3
{
  v5 = [(SCNCamera *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNCamera *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNCamera *)self animationManager];
    if (v9)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(v9, v8, a3);
      if (!v6)
      {
        return IsPaused;
      }

      goto LABEL_8;
    }
  }

  IsPaused = 0;
  if (v6)
  {
LABEL_8:
    C3DSceneUnlock(v6);
  }

  return IsPaused;
}

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:a4];
    [(C3DBinding *)v13 setKeyPathDst:a3];
    [(C3DBinding *)v13 setKeyPathSrc:a5];
    [(C3DBinding *)v13 setOptions:a6];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:a3];

    v15 = [(SCNCamera *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__SCNCamera_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __61__SCNCamera_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = objc_alloc_init(C3DBinding);
  -[C3DBinding setSourceObject:](v3, "setSourceObject:", [*(a1 + 40) __CFObject]);
  [(C3DBinding *)v3 setKeyPathDst:*(a1 + 48)];
  [(C3DBinding *)v3 setKeyPathSrc:*(a1 + 56)];
  [(C3DBinding *)v3 setOptions:*(a1 + 64)];
  C3DEntityAddBinding(v2, v3);
}

- (void)unbindAnimatablePath:(id)a3
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  v5 = [(SCNCamera *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SCNCamera_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __34__SCNCamera_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNCamera *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SCNCamera_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __30__SCNCamera_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)_syncObjCModel
{
  v3 = [(SCNCamera *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  *&self->_categoryBitMask = C3DCameraGetAspectRatio(self->_camera);
  self->_sensorSize = C3DCameraGetSensorSize(self->_camera);
  *&self->_lensShift[4] = C3DCameraGetLensShift(self->_camera);
  *&self->_postProjectionTransformTranslation[4] = C3DCameraGetPostProjectionTransformTranslation(self->_camera);
  *&self->_postProjectionTransformScale[4] = C3DCameraGetPostProjectionTransformScale(self->_camera);
  if (C3DCameraUsesLegacyFov(self->_camera))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v5;
  ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(self->_camera);
  self->_orthographicScale = C3DProjectionInfosGetOrthographicScale(ProjectionInfosPtr);
  v7 = C3DCameraGetProjectionInfosPtr(self->_camera);
  self->_zFar = C3DProjectionInfosGetZFar(v7);
  v8 = C3DCameraGetProjectionInfosPtr(self->_camera);
  self->_zNear = C3DProjectionInfosGetZNear(v8);
  *&self->_bladeCount = C3DCameraGetDepthOfFieldIntensity(self->_camera);
  self->_focalLength = C3DCameraGetFocalLength(self->_camera);
  self->_dofIntensity = C3DCameraGetFocusDistance(self->_camera);
  self->_focusDistance = C3DCameraGetFStop(self->_camera);
  self->_focalBlurSampleCount = C3DCameraGetBladeCount(self->_camera);
  *&self->_aspectRatio = C3DCameraGetDofSampleCount(self->_camera);
  *&self->_projectionTransform.m11 = C3DCameraGetCategoryBitMask(self->_camera);
  LOBYTE(self->_averageGray) = C3DCameraGetWantsHDR(self->_camera);
  self->_exposureOffset = C3DCameraGetWhitePoint(self->_camera);
  self->_minimumExposure = C3DCameraGetAverageGray(self->_camera);
  LOBYTE(self->_exposureAdaptationBrighteningSpeedFactor) = C3DCameraGetWantsExposureAdaptation(self->_camera);
  self->_maximumExposure = C3DCameraGetExposureOffset(self->_camera);
  self->_exposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDuration(self->_camera);
  *&self->_exposureAdaptationHistogramRangeHighProbability = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(self->_camera);
  *(&self->_exposureAdaptationHistogramRangeHighProbability + 1) = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(self->_camera);
  *&self->_exposureAdaptationMode = C3DCameraGetExposureAdaptationHistogramRangeLowProbability(self->_camera);
  self->_exposureAdaptationHistogramRangeLowProbability = C3DCameraGetExposureAdaptationHistogramRangeHighProbability(self->_camera);
  *&self->_bloomIntensity = C3DCameraGetExposureAdaptationMode(self->_camera);
  if (C3DCameraGetFovIsHorizontal(self->_camera))
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *(self + 16) = *(self + 16) & 0xBF | v9;
  v10 = C3DCameraUsesLegacyFov(self->_camera);
  v11 = *(self + 16);
  if (v10)
  {
    *(self + 16) = v11 | 4;
    v12 = C3DCameraGetProjectionInfosPtr(self->_camera);
    XFov = C3DProjectionInfosGetXFov(v12);
    if (v11)
    {
      v17 = XFov;
      self->_xFov = v17;
      v18 = C3DCameraGetProjectionInfosPtr(self->_camera);
      YFov = C3DProjectionInfosGetYFov(v18);
      self->_yFov = YFov;
    }

    else
    {
      [(SCNCamera *)self setXFov:XFov];
      v14 = C3DCameraGetProjectionInfosPtr(self->_camera);
      [(SCNCamera *)self setYFov:C3DProjectionInfosGetYFov(v14)];
    }
  }

  else
  {
    *(self + 16) = v11 & 0xFB;
    Fov = C3DCameraGetFov(self->_camera);
    self->_fieldOfView = Fov;
    if ((*(self + 16) & 0x40) != 0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = Fov;
    }

    if ((*(self + 16) & 0x40) == 0)
    {
      Fov = 0.0;
    }

    self->_xFov = Fov;
    self->_yFov = v16;
  }

  *&self->_wantsExposureAdaptation = C3DCameraGetMinimumExposure(self->_camera);
  self->_exposureAdaptationDuration = C3DCameraGetMaximumExposure(self->_camera);
  *&self->_bloomIteration = C3DCameraGetBloomIntensity(self->_camera);
  self->_bloomIterationSpread = C3DCameraGetBloomThreshold(self->_camera);
  LODWORD(self->_bloomBlurRadius) = C3DCameraGetBloomIteration(self->_camera);
  self->_motionBlurIntensity = C3DCameraGetBloomIterationSpread(self->_camera);
  self->_vignettingPower = C3DCameraGetBloomBlurRadius(self->_camera);
  self->_vignettingIntensity = C3DCameraGetMotionBlurIntensity(self->_camera);
  self->_colorFringeStrength = C3DCameraGetVignettingPower(self->_camera);
  self->_colorFringeIntensity = C3DCameraGetVignettingIntensity(self->_camera);
  self->_saturation = C3DCameraGetColorFringeStrength(self->_camera);
  self->_contrast = C3DCameraGetColorFringeIntensity(self->_camera);
  self->_grainIntensity = C3DCameraGetSaturation(self->_camera);
  self->_grainScale = C3DCameraGetContrast(self->_camera);
  *&self->_grainIsColored = C3DCameraGetGrainIntensity(self->_camera);
  self->_whiteBalanceTemperature = C3DCameraGetGrainScale(self->_camera);
  LOBYTE(self->_whiteBalanceTint) = C3DCameraGetGrainIsColored(self->_camera);
  *&self[1].super.isa = C3DCameraGetARGrainSlice(self->_camera);
  *&self->_grainSlice = C3DCameraGetARGrainTexture(self->_camera);
  *(&self->_whiteBalanceTint + 1) = C3DCameraGetWhiteBalanceTemperature(self->_camera);
  self->_screenSpaceAmbientOcclusion.intensity = C3DCameraGetWhiteBalanceTint(self->_camera);
  self->_screenSpaceAmbientOcclusion.bias = C3DCameraGetScreenSpaceAmbientOcclusionIntensity(self->_camera);
  self->_screenSpaceAmbientOcclusion.depthThreshold = C3DCameraGetScreenSpaceAmbientOcclusionRadius(self->_camera);
  self->_screenSpaceAmbientOcclusion.normalThreshold = C3DCameraGetScreenSpaceAmbientOcclusionBias(self->_camera);
  *(&self->_screenSpaceAmbientOcclusion.normalThreshold + 1) = C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(self->_camera);
  *&self->_screenSpaceAmbientOcclusion.sampleCount = C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(self->_camera);
  self->_screenSpaceAmbientOcclusion.downSample = C3DCameraGetScreenSpaceAmbientOcclusionSampleCount(self->_camera);
  self->_grainTexture = C3DCameraGetScreenSpaceAmbientOcclusionDownSample(self->_camera);
  v20 = C3DCameraGetProjectionInfosPtr(self->_camera);
  if (C3DProjectionInfosGetOrtho(v20))
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v21;
  [(SCNCamera *)self _updateFocalLength];
  [(SCNCamera *)self _syncEntityObjCModel];
  if (v4)
  {

    C3DSceneUnlock(v4);
  }
}

- (void)setTechnique:(id)a3
{
  self->_colorGrading = a3;
  v5 = [(SCNCamera *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__SCNCamera_setTechnique___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = a3;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __26__SCNCamera_setTechnique___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) techniqueRef];
  v3 = [*(a1 + 40) cameraRef];

  C3DCameraSetTechnique(v3, v2);
}

- (SCNTechnique)technique
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_colorGrading;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    Technique = C3DCameraGetTechnique(self->_camera);
    if (Technique)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v5 = v4;
  C3DSceneLock(v4);
  Technique = C3DCameraGetTechnique(self->_camera);
  C3DSceneUnlock(v5);
  if (!Technique)
  {
    return 0;
  }

LABEL_5:

  return [SCNTechnique techniqueWithTechniqueRef:Technique];
}

- (id)presentationCamera
{
  if ((*(self + 16) & 1) == 0)
  {
    v2 = [[SCNCamera alloc] initPresentationCameraWithCameraRef:*(self + 1)];

    return v2;
  }

  return self;
}

- (CGFloat)screenSpaceAmbientOcclusionIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ScreenSpaceAmbientOcclusionIntensity = C3DCameraGetScreenSpaceAmbientOcclusionIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetScreenSpaceAmbientOcclusionIntensity(self->_camera);
    }
  }

  else
  {
    return self->_screenSpaceAmbientOcclusion.bias;
  }

  return ScreenSpaceAmbientOcclusionIntensity;
}

- (void)setScreenSpaceAmbientOcclusionIntensity:(CGFloat)screenSpaceAmbientOcclusionIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionIntensity:];
    }
  }

  else
  {
    v4 = screenSpaceAmbientOcclusionIntensity;
    if (self->_screenSpaceAmbientOcclusion.bias != v4)
    {
      self->_screenSpaceAmbientOcclusion.bias = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __53__SCNCamera_setScreenSpaceAmbientOcclusionIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"screenSpaceAmbientOcclusionIntensity" applyBlock:v7];
    }
  }
}

- (CGFloat)screenSpaceAmbientOcclusionRadius
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ScreenSpaceAmbientOcclusionRadius = C3DCameraGetScreenSpaceAmbientOcclusionRadius(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetScreenSpaceAmbientOcclusionRadius(self->_camera);
    }
  }

  else
  {
    return self->_screenSpaceAmbientOcclusion.depthThreshold;
  }

  return ScreenSpaceAmbientOcclusionRadius;
}

- (void)setScreenSpaceAmbientOcclusionRadius:(CGFloat)screenSpaceAmbientOcclusionRadius
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionRadius:];
    }
  }

  else
  {
    v4 = screenSpaceAmbientOcclusionRadius;
    if (self->_screenSpaceAmbientOcclusion.depthThreshold != v4)
    {
      self->_screenSpaceAmbientOcclusion.depthThreshold = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __50__SCNCamera_setScreenSpaceAmbientOcclusionRadius___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"screenSpaceAmbientOcclusionRadius" applyBlock:v7];
    }
  }
}

- (CGFloat)screenSpaceAmbientOcclusionBias
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ScreenSpaceAmbientOcclusionBias = C3DCameraGetScreenSpaceAmbientOcclusionBias(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetScreenSpaceAmbientOcclusionBias(self->_camera);
    }
  }

  else
  {
    return self->_screenSpaceAmbientOcclusion.normalThreshold;
  }

  return ScreenSpaceAmbientOcclusionBias;
}

- (void)setScreenSpaceAmbientOcclusionBias:(CGFloat)screenSpaceAmbientOcclusionBias
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionBias:];
    }
  }

  else
  {
    v4 = screenSpaceAmbientOcclusionBias;
    if (self->_screenSpaceAmbientOcclusion.normalThreshold != v4)
    {
      self->_screenSpaceAmbientOcclusion.normalThreshold = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __48__SCNCamera_setScreenSpaceAmbientOcclusionBias___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"screenSpaceAmbientOcclusionBias" applyBlock:v7];
    }
  }
}

- (CGFloat)screenSpaceAmbientOcclusionDepthThreshold
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ScreenSpaceAmbientOcclusionDepthThreshold = C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(self->_camera);
    }
  }

  else
  {
    return *(&self->_screenSpaceAmbientOcclusion.normalThreshold + 1);
  }

  return ScreenSpaceAmbientOcclusionDepthThreshold;
}

- (void)setScreenSpaceAmbientOcclusionDepthThreshold:(CGFloat)screenSpaceAmbientOcclusionDepthThreshold
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionDepthThreshold:];
    }
  }

  else
  {
    v4 = screenSpaceAmbientOcclusionDepthThreshold;
    if (*(&self->_screenSpaceAmbientOcclusion.normalThreshold + 1) != v4)
    {
      *(&self->_screenSpaceAmbientOcclusion.normalThreshold + 1) = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __58__SCNCamera_setScreenSpaceAmbientOcclusionDepthThreshold___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"screenSpaceAmbientOcclusionDepthThreshold" applyBlock:v7];
    }
  }
}

- (CGFloat)screenSpaceAmbientOcclusionNormalThreshold
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ScreenSpaceAmbientOcclusionNormalThreshold = C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(self->_camera);
    }
  }

  else
  {
    return *&self->_screenSpaceAmbientOcclusion.sampleCount;
  }

  return ScreenSpaceAmbientOcclusionNormalThreshold;
}

- (void)setScreenSpaceAmbientOcclusionNormalThreshold:(CGFloat)screenSpaceAmbientOcclusionNormalThreshold
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionNormalThreshold:];
    }
  }

  else
  {
    v4 = screenSpaceAmbientOcclusionNormalThreshold;
    if (*&self->_screenSpaceAmbientOcclusion.sampleCount != v4)
    {
      *&self->_screenSpaceAmbientOcclusion.sampleCount = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__SCNCamera_setScreenSpaceAmbientOcclusionNormalThreshold___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"screenSpaceAmbientOcclusionNormalThreshold" applyBlock:v7];
    }
  }
}

- (int64_t)screenSpaceAmbientOcclusionSampleCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_screenSpaceAmbientOcclusion.downSample;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetScreenSpaceAmbientOcclusionSampleCount(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ScreenSpaceAmbientOcclusionSampleCount = C3DCameraGetScreenSpaceAmbientOcclusionSampleCount(self->_camera);
  C3DSceneUnlock(v5);
  return ScreenSpaceAmbientOcclusionSampleCount;
}

- (void)setScreenSpaceAmbientOcclusionSampleCount:(int64_t)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionSampleCount:];
    }
  }

  else if (self->_screenSpaceAmbientOcclusion.downSample != a3)
  {
    self->_screenSpaceAmbientOcclusion.downSample = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SCNCamera_setScreenSpaceAmbientOcclusionSampleCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (int64_t)screenSpaceAmbientOcclusionDownSample
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_grainTexture;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetScreenSpaceAmbientOcclusionDownSample(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ScreenSpaceAmbientOcclusionDownSample = C3DCameraGetScreenSpaceAmbientOcclusionDownSample(self->_camera);
  C3DSceneUnlock(v5);
  return ScreenSpaceAmbientOcclusionDownSample;
}

- (void)setScreenSpaceAmbientOcclusionDownSample:(int64_t)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setScreenSpaceAmbientOcclusionDownSample:];
    }
  }

  else if (self->_grainTexture != a3)
  {
    self->_grainTexture = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SCNCamera_setScreenSpaceAmbientOcclusionDownSample___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)automaticallyAdjustsZRange
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNCamera *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      AutomaticallyAdjustsZRange = C3DCameraGetAutomaticallyAdjustsZRange(self->_camera);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = AutomaticallyAdjustsZRange;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v3) = C3DCameraGetAutomaticallyAdjustsZRange(camera);
    }
  }

  else
  {
    return (v2 >> 4) & 1;
  }

  return v3;
}

- (void)setAutomaticallyAdjustsZRange:(BOOL)automaticallyAdjustsZRange
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setAutomaticallyAdjustsZRange:];
    }
  }

  else if (((((v4 & 0x10) == 0) ^ automaticallyAdjustsZRange) & 1) == 0)
  {
    if (automaticallyAdjustsZRange)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0xEE | v6;
    v7 = [(SCNCamera *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__SCNCamera_setAutomaticallyAdjustsZRange___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = automaticallyAdjustsZRange;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (CGFloat)averageGray
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      AverageGray = C3DCameraGetAverageGray(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetAverageGray(self->_camera);
    }
  }

  else
  {
    return self->_minimumExposure;
  }

  return AverageGray;
}

- (void)setAverageGray:(CGFloat)averageGray
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setAverageGray:];
    }
  }

  else
  {
    v4 = averageGray;
    if (self->_minimumExposure != v4)
    {
      self->_minimumExposure = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __28__SCNCamera_setAverageGray___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"averageGray" applyBlock:v7];
    }
  }
}

- (CGFloat)bloomBlurRadius
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      BloomBlurRadius = C3DCameraGetBloomBlurRadius(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetBloomBlurRadius(self->_camera);
    }
  }

  else
  {
    return self->_vignettingPower;
  }

  return BloomBlurRadius;
}

- (void)setBloomBlurRadius:(CGFloat)bloomBlurRadius
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setBloomBlurRadius:];
    }
  }

  else
  {
    v4 = bloomBlurRadius;
    if (self->_vignettingPower != v4)
    {
      self->_vignettingPower = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNCamera_setBloomBlurRadius___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"bloomBlurRadius" applyBlock:v7];
    }
  }
}

- (CGFloat)bloomIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      *&bloomIteration = C3DCameraGetBloomIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      *&bloomIteration = C3DCameraGetBloomIntensity(self->_camera);
    }
  }

  else
  {
    bloomIteration = self->_bloomIteration;
  }

  return *&bloomIteration;
}

- (void)setBloomIntensity:(CGFloat)bloomIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setBloomIntensity:];
    }
  }

  else
  {
    *&v4 = bloomIntensity;
    if (*&self->_bloomIteration != *&v4)
    {
      self->_bloomIteration = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __31__SCNCamera_setBloomIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"bloomIntensity" applyBlock:v7];
    }
  }
}

- (CGFloat)bloomThreshold
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      BloomThreshold = C3DCameraGetBloomThreshold(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetBloomThreshold(self->_camera);
    }
  }

  else
  {
    return self->_bloomIterationSpread;
  }

  return BloomThreshold;
}

- (void)setBloomThreshold:(CGFloat)bloomThreshold
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setBloomThreshold:];
    }
  }

  else
  {
    v4 = bloomThreshold;
    if (self->_bloomIterationSpread != v4)
    {
      self->_bloomIterationSpread = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __31__SCNCamera_setBloomThreshold___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"bloomThreshold" applyBlock:v7];
    }
  }
}

- (NSInteger)bloomIterationCount
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      BloomIteration = C3DCameraGetBloomIteration(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetBloomIteration(self->_camera);
    }
  }

  else
  {
    return SLODWORD(self->_bloomBlurRadius);
  }

  return BloomIteration;
}

- (void)setBloomIterationCount:(NSInteger)bloomIterationCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setBloomIterationCount:];
    }
  }

  else if (LODWORD(self->_bloomBlurRadius) != bloomIterationCount)
  {
    LODWORD(self->_bloomBlurRadius) = bloomIterationCount;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNCamera_setBloomIterationCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = bloomIterationCount;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"bloomIteration" applyBlock:v7];
  }
}

- (CGFloat)bloomIterationSpread
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      BloomIterationSpread = C3DCameraGetBloomIterationSpread(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetBloomIterationSpread(self->_camera);
    }
  }

  else
  {
    return self->_motionBlurIntensity;
  }

  return BloomIterationSpread;
}

- (void)setBloomIterationSpread:(CGFloat)bloomIterationSpread
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setBloomIterationSpread:];
    }
  }

  else
  {
    v4 = bloomIterationSpread;
    if (self->_motionBlurIntensity != v4)
    {
      self->_motionBlurIntensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __37__SCNCamera_setBloomIterationSpread___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"bloomIterationSpread" applyBlock:v7];
    }
  }
}

- (NSUInteger)categoryBitMask
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_projectionTransform.m11;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    CategoryBitMask = C3DCameraGetCategoryBitMask(self->_camera);
    C3DSceneUnlock(v5);
    return CategoryBitMask;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetCategoryBitMask(camera);
  }
}

- (void)setCategoryBitMask:(NSUInteger)categoryBitMask
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setCategoryBitMask:];
    }
  }

  else if (*&self->_projectionTransform.m11 != categoryBitMask)
  {
    *&self->_projectionTransform.m11 = categoryBitMask;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNCamera_setCategoryBitMask___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = categoryBitMask;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)colorFringeStrength
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ColorFringeStrength = C3DCameraGetColorFringeStrength(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetColorFringeStrength(self->_camera);
    }
  }

  else
  {
    return self->_saturation;
  }

  return ColorFringeStrength;
}

- (void)setColorFringeStrength:(CGFloat)colorFringeStrength
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setColorFringeStrength:];
    }
  }

  else
  {
    v4 = colorFringeStrength;
    if (self->_saturation != v4)
    {
      self->_saturation = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __36__SCNCamera_setColorFringeStrength___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"colorFringeStrength" applyBlock:v7];
    }
  }
}

- (CGFloat)colorFringeIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ColorFringeIntensity = C3DCameraGetColorFringeIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetColorFringeIntensity(self->_camera);
    }
  }

  else
  {
    return self->_contrast;
  }

  return ColorFringeIntensity;
}

- (void)setColorFringeIntensity:(CGFloat)colorFringeIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setColorFringeIntensity:];
    }
  }

  else
  {
    v4 = colorFringeIntensity;
    if (self->_contrast != v4)
    {
      self->_contrast = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __37__SCNCamera_setColorFringeIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"colorFringeIntensity" applyBlock:v7];
    }
  }
}

- (CGFloat)contrast
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      Contrast = C3DCameraGetContrast(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetContrast(self->_camera);
    }
  }

  else
  {
    return self->_grainScale;
  }

  return Contrast;
}

- (void)setContrast:(CGFloat)contrast
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setContrast:];
    }
  }

  else
  {
    v4 = contrast;
    if (self->_grainScale != v4)
    {
      self->_grainScale = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __25__SCNCamera_setContrast___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"contrast" applyBlock:v7];
    }
  }
}

- (CGFloat)grainIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      GrainIntensity = C3DCameraGetGrainIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetGrainIntensity(self->_camera);
    }
  }

  else
  {
    return *&self->_grainIsColored;
  }

  return GrainIntensity;
}

- (void)setGrainIntensity:(CGFloat)grainIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setGrainIntensity:];
    }
  }

  else
  {
    v4 = grainIntensity;
    if (*&self->_grainIsColored != v4)
    {
      *&self->_grainIsColored = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __31__SCNCamera_setGrainIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"grainIntensity" applyBlock:v7];
    }
  }
}

- (CGFloat)grainScale
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      GrainScale = C3DCameraGetGrainScale(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetGrainScale(self->_camera);
    }
  }

  else
  {
    return self->_whiteBalanceTemperature;
  }

  return GrainScale;
}

- (void)setGrainScale:(CGFloat)grainScale
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setGrainScale:];
    }
  }

  else
  {
    v4 = grainScale;
    if (self->_whiteBalanceTemperature != v4)
    {
      self->_whiteBalanceTemperature = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__SCNCamera_setGrainScale___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"grainScale" applyBlock:v7];
    }
  }
}

- (BOOL)grainIsColored
{
  if ((*(self + 16) & 1) == 0)
  {
    return LOBYTE(self->_whiteBalanceTint);
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    IsColored = C3DCameraGetGrainIsColored(self->_camera);
    C3DSceneUnlock(v5);
    return IsColored;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetGrainIsColored(camera);
  }
}

- (void)setGrainIsColored:(BOOL)grainIsColored
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setGrainIsColored:];
    }
  }

  else if (LOBYTE(self->_whiteBalanceTint) != grainIsColored)
  {
    LOBYTE(self->_whiteBalanceTint) = grainIsColored;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNCamera_setGrainIsColored___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = grainIsColored;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (double)grainSlice
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ARGrainSlice = C3DCameraGetARGrainSlice(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetARGrainSlice(self->_camera);
    }
  }

  else
  {
    return *&self[1].super.isa;
  }

  return ARGrainSlice;
}

- (void)setGrainSlice:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setGrainSlice:];
    }
  }

  else
  {
    v4 = a3;
    if (*&self[1].super.isa != v4)
    {
      *&self[1].super.isa = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__SCNCamera_setGrainSlice___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:0 applyBlock:v7];
    }
  }
}

- (id)grainTexture
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_grainSlice;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ARGrainTexture = C3DCameraGetARGrainTexture(self->_camera);
    C3DSceneUnlock(v5);
    return ARGrainTexture;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetARGrainTexture(camera);
  }
}

- (void)setGrainTexture:(id)a3
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setGrainTexture:];
    }
  }

  else
  {
    v5 = *&self->_grainSlice;
    if (v5 != a3)
    {

      *&self->_grainSlice = a3;
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __29__SCNCamera_setGrainTexture___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = a3;
      [SCNTransaction postCommandWithContext:v6 object:self key:0 applyBlock:v8];
    }
  }
}

- (CGFloat)whiteBalanceTemperature
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      WhiteBalanceTemperature = C3DCameraGetWhiteBalanceTemperature(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetWhiteBalanceTemperature(self->_camera);
    }
  }

  else
  {
    return *(&self->_whiteBalanceTint + 1);
  }

  return WhiteBalanceTemperature;
}

- (void)setWhiteBalanceTemperature:(CGFloat)whiteBalanceTemperature
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setWhiteBalanceTemperature:];
    }
  }

  else
  {
    v4 = whiteBalanceTemperature;
    if (*(&self->_whiteBalanceTint + 1) != v4)
    {
      *(&self->_whiteBalanceTint + 1) = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __40__SCNCamera_setWhiteBalanceTemperature___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"whiteBalanceTemperature" applyBlock:v7];
    }
  }
}

- (CGFloat)whiteBalanceTint
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      WhiteBalanceTint = C3DCameraGetWhiteBalanceTint(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetWhiteBalanceTint(self->_camera);
    }
  }

  else
  {
    return self->_screenSpaceAmbientOcclusion.intensity;
  }

  return WhiteBalanceTint;
}

- (void)setWhiteBalanceTint:(CGFloat)whiteBalanceTint
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setWhiteBalanceTint:];
    }
  }

  else
  {
    v4 = whiteBalanceTint;
    if (self->_screenSpaceAmbientOcclusion.intensity != v4)
    {
      self->_screenSpaceAmbientOcclusion.intensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __33__SCNCamera_setWhiteBalanceTint___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"whiteBalanceTint" applyBlock:v7];
    }
  }
}

- (CGFloat)exposureAdaptationBrighteningSpeedFactor
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ExposureAdaptationBrighteningSpeedFactor = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetExposureAdaptationBrighteningSpeedFactor(self->_camera);
    }
  }

  else
  {
    return *&self->_exposureAdaptationHistogramRangeHighProbability;
  }

  return ExposureAdaptationBrighteningSpeedFactor;
}

- (void)setExposureAdaptationBrighteningSpeedFactor:(CGFloat)exposureAdaptationBrighteningSpeedFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationBrighteningSpeedFactor:];
    }
  }

  else
  {
    v4 = exposureAdaptationBrighteningSpeedFactor;
    if (*&self->_exposureAdaptationHistogramRangeHighProbability != v4)
    {
      *&self->_exposureAdaptationHistogramRangeHighProbability = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __57__SCNCamera_setExposureAdaptationBrighteningSpeedFactor___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureAdaptationBrighteningSpeedFactor" applyBlock:v7];
    }
  }
}

- (CGFloat)exposureAdaptationDarkeningSpeedFactor
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ExposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetExposureAdaptationDarkeningSpeedFactor(self->_camera);
    }
  }

  else
  {
    return *(&self->_exposureAdaptationHistogramRangeHighProbability + 1);
  }

  return ExposureAdaptationDarkeningSpeedFactor;
}

- (void)setExposureAdaptationDarkeningSpeedFactor:(CGFloat)exposureAdaptationDarkeningSpeedFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationDarkeningSpeedFactor:];
    }
  }

  else
  {
    v4 = exposureAdaptationDarkeningSpeedFactor;
    if (*(&self->_exposureAdaptationHistogramRangeHighProbability + 1) != v4)
    {
      *(&self->_exposureAdaptationHistogramRangeHighProbability + 1) = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__SCNCamera_setExposureAdaptationDarkeningSpeedFactor___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureAdaptationDarkeningSpeedFactor" applyBlock:v7];
    }
  }
}

- (double)exposureAdaptationDuration
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ExposureAdaptationDuration = C3DCameraGetExposureAdaptationDuration(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetExposureAdaptationDuration(self->_camera);
    }
  }

  else
  {
    return self->_exposureAdaptationDarkeningSpeedFactor;
  }

  return ExposureAdaptationDuration;
}

- (void)setExposureAdaptationDuration:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationDuration:];
    }
  }

  else
  {
    v4 = a3;
    if (self->_exposureAdaptationDarkeningSpeedFactor != v4)
    {
      self->_exposureAdaptationDarkeningSpeedFactor = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__SCNCamera_setExposureAdaptationDuration___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureAdaptationDuration" applyBlock:v7];
    }
  }
}

- (double)exposureAdaptationHistogramRangeHighProbability
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_exposureAdaptationHistogramRangeLowProbability;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetExposureAdaptationHistogramRangeHighProbability(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ExposureAdaptationHistogramRangeHighProbability = C3DCameraGetExposureAdaptationHistogramRangeHighProbability(self->_camera);
  C3DSceneUnlock(v5);
  return ExposureAdaptationHistogramRangeHighProbability;
}

- (void)setExposureAdaptationHistogramRangeHighProbability:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationHistogramRangeHighProbability:];
    }
  }

  else if (self->_exposureAdaptationHistogramRangeLowProbability != a3)
  {
    self->_exposureAdaptationHistogramRangeLowProbability = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__SCNCamera_setExposureAdaptationHistogramRangeHighProbability___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureAdaptationHistogramRangeHighProbability" applyBlock:v7];
  }
}

float __64__SCNCamera_setExposureAdaptationHistogramRangeHighProbability___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DCameraSetExposureAdaptationHistogramRangeHighProbability(*(*(a1 + 32) + 8), v1);
  return result;
}

- (double)exposureAdaptationHistogramRangeLowProbability
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_exposureAdaptationMode;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetExposureAdaptationHistogramRangeLowProbability(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ExposureAdaptationHistogramRangeLowProbability = C3DCameraGetExposureAdaptationHistogramRangeLowProbability(self->_camera);
  C3DSceneUnlock(v5);
  return ExposureAdaptationHistogramRangeLowProbability;
}

- (void)setExposureAdaptationHistogramRangeLowProbability:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationHistogramRangeLowProbability:];
    }
  }

  else if (*&self->_exposureAdaptationMode != a3)
  {
    *&self->_exposureAdaptationMode = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__SCNCamera_setExposureAdaptationHistogramRangeLowProbability___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureAdaptationHistogramRangeLowProbability" applyBlock:v7];
  }
}

float __63__SCNCamera_setExposureAdaptationHistogramRangeLowProbability___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DCameraSetExposureAdaptationHistogramRangeLowProbability(*(*(a1 + 32) + 8), v1);
  return result;
}

- (int64_t)exposureAdaptationMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_bloomIntensity;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetExposureAdaptationMode(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ExposureAdaptationMode = C3DCameraGetExposureAdaptationMode(self->_camera);
  C3DSceneUnlock(v5);
  return ExposureAdaptationMode;
}

- (void)setExposureAdaptationMode:(int64_t)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureAdaptationMode:];
    }
  }

  else if (*&self->_bloomIntensity != a3)
  {
    *&self->_bloomIntensity = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNCamera_setExposureAdaptationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)exposureOffset
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ExposureOffset = C3DCameraGetExposureOffset(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetExposureOffset(self->_camera);
    }
  }

  else
  {
    return self->_maximumExposure;
  }

  return ExposureOffset;
}

- (void)setExposureOffset:(CGFloat)exposureOffset
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setExposureOffset:];
    }
  }

  else
  {
    v4 = exposureOffset;
    if (self->_maximumExposure != v4)
    {
      self->_maximumExposure = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __31__SCNCamera_setExposureOffset___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"exposureOffset" applyBlock:v7];
    }
  }
}

- (void)setWantsDepthOfField:(BOOL)wantsDepthOfField
{
  v3 = 0.0;
  if (wantsDepthOfField)
  {
    *&v3 = 1.0;
  }

  [(SCNCamera *)self setDofIntensity:v3];
}

- (float)dofIntensity
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_bladeCount;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    DepthOfFieldIntensity = C3DCameraGetDepthOfFieldIntensity(self->_camera);
    C3DSceneUnlock(v5);
    return DepthOfFieldIntensity;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetDepthOfFieldIntensity(camera);
  }
}

- (void)setDofIntensity:(float)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setDofIntensity:];
    }
  }

  else if (*&self->_bladeCount != a3)
  {
    *&self->_bladeCount = a3;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNCamera_setDofIntensity___block_invoke;
    v7[3] = &unk_2782FF898;
    v7[4] = self;
    v8 = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"dofIntensity" applyBlock:v7];
  }
}

- (CGFloat)focalBlurRadius
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      DepthOfFieldIntensity = C3DCameraGetDepthOfFieldIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetDepthOfFieldIntensity(self->_camera);
    }
  }

  else
  {
    return *&self->_bladeCount;
  }

  return DepthOfFieldIntensity;
}

- (CGFloat)maximumExposure
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      MaximumExposure = C3DCameraGetMaximumExposure(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetMaximumExposure(self->_camera);
    }
  }

  else
  {
    return self->_exposureAdaptationDuration;
  }

  return MaximumExposure;
}

- (void)setMaximumExposure:(CGFloat)maximumExposure
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setMaximumExposure:];
    }
  }

  else
  {
    v4 = maximumExposure;
    if (self->_exposureAdaptationDuration != v4)
    {
      self->_exposureAdaptationDuration = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNCamera_setMaximumExposure___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"maximumExposure" applyBlock:v7];
    }
  }
}

- (CGFloat)minimumExposure
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      MinimumExposure = C3DCameraGetMinimumExposure(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetMinimumExposure(self->_camera);
    }
  }

  else
  {
    return *&self->_wantsExposureAdaptation;
  }

  return MinimumExposure;
}

- (void)setMinimumExposure:(CGFloat)minimumExposure
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setMinimumExposure:];
    }
  }

  else
  {
    v4 = minimumExposure;
    if (*&self->_wantsExposureAdaptation != v4)
    {
      *&self->_wantsExposureAdaptation = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNCamera_setMinimumExposure___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"minimumExposure" applyBlock:v7];
    }
  }
}

- (CGFloat)motionBlurIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      MotionBlurIntensity = C3DCameraGetMotionBlurIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetMotionBlurIntensity(self->_camera);
    }
  }

  else
  {
    return self->_vignettingIntensity;
  }

  return MotionBlurIntensity;
}

- (void)setMotionBlurIntensity:(CGFloat)motionBlurIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setMotionBlurIntensity:];
    }
  }

  else
  {
    v4 = motionBlurIntensity;
    if (self->_vignettingIntensity != v4)
    {
      self->_vignettingIntensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __36__SCNCamera_setMotionBlurIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"motionBlurIntensity" applyBlock:v7];
    }
  }
}

- (double)orthographicScale
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_orthographicScale;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    OrthographicScale = C3DCameraGetOrthographicScale(self->_camera);
    C3DSceneUnlock(v5);
    return OrthographicScale;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetOrthographicScale(camera);
  }
}

- (void)setOrthographicScale:(double)orthographicScale
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setOrthographicScale:];
    }
  }

  else
  {
    *(self + 16) &= 0xFCu;
    if (self->_orthographicScale != orthographicScale)
    {
      self->_orthographicScale = orthographicScale;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__SCNCamera_setOrthographicScale___block_invoke;
      v7[3] = &unk_2782FB7D0;
      v7[4] = self;
      *&v7[5] = orthographicScale;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"orthographicScale" applyBlock:v7];
    }
  }
}

- (CGFloat)saturation
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      Saturation = C3DCameraGetSaturation(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetSaturation(self->_camera);
    }
  }

  else
  {
    return self->_grainIntensity;
  }

  return Saturation;
}

- (void)setSaturation:(CGFloat)saturation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setSaturation:];
    }
  }

  else
  {
    v4 = saturation;
    if (self->_grainIntensity != v4)
    {
      self->_grainIntensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__SCNCamera_setSaturation___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"saturation" applyBlock:v7];
    }
  }
}

- (BOOL)usesOrthographicProjection
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNCamera *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      UsesOrthographicProjection = C3DCameraGetUsesOrthographicProjection(self->_camera);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = UsesOrthographicProjection;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v3) = C3DCameraGetUsesOrthographicProjection(camera);
    }
  }

  else
  {
    return (v2 >> 3) & 1;
  }

  return v3;
}

- (void)setUsesOrthographicProjection:(BOOL)usesOrthographicProjection
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setUsesOrthographicProjection:];
    }
  }

  else
  {
    *(self + 16) = v4 & 0xFC;
    if (((((v4 & 8) == 0) ^ usesOrthographicProjection) & 1) == 0)
    {
      if (usesOrthographicProjection)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *(self + 16) = v4 & 0xF4 | v6;
      v7 = [(SCNCamera *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__SCNCamera_setUsesOrthographicProjection___block_invoke;
      v9[3] = &unk_2782FB7F8;
      v9[4] = self;
      v10 = usesOrthographicProjection;
      [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
    }
  }
}

- (CGFloat)vignettingIntensity
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      VignettingIntensity = C3DCameraGetVignettingIntensity(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetVignettingIntensity(self->_camera);
    }
  }

  else
  {
    return self->_colorFringeIntensity;
  }

  return VignettingIntensity;
}

- (void)setVignettingIntensity:(CGFloat)vignettingIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setVignettingIntensity:];
    }
  }

  else
  {
    v4 = vignettingIntensity;
    if (self->_colorFringeIntensity != v4)
    {
      self->_colorFringeIntensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __36__SCNCamera_setVignettingIntensity___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"vignettingIntensity" applyBlock:v7];
    }
  }
}

- (CGFloat)vignettingPower
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      VignettingPower = C3DCameraGetVignettingPower(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetVignettingPower(self->_camera);
    }
  }

  else
  {
    return self->_colorFringeStrength;
  }

  return VignettingPower;
}

- (void)setVignettingPower:(CGFloat)vignettingPower
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setVignettingPower:];
    }
  }

  else
  {
    v4 = vignettingPower;
    if (self->_colorFringeStrength != v4)
    {
      self->_colorFringeStrength = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNCamera_setVignettingPower___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"vignettingPower" applyBlock:v7];
    }
  }
}

- (BOOL)wantsExposureAdaptation
{
  if ((*(self + 16) & 1) == 0)
  {
    return LOBYTE(self->_exposureAdaptationBrighteningSpeedFactor);
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    WantsExposureAdaptation = C3DCameraGetWantsExposureAdaptation(self->_camera);
    C3DSceneUnlock(v5);
    return WantsExposureAdaptation;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetWantsExposureAdaptation(camera);
  }
}

- (void)setWantsExposureAdaptation:(BOOL)wantsExposureAdaptation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setWantsExposureAdaptation:];
    }
  }

  else if (LOBYTE(self->_exposureAdaptationBrighteningSpeedFactor) != wantsExposureAdaptation)
  {
    LOBYTE(self->_exposureAdaptationBrighteningSpeedFactor) = wantsExposureAdaptation;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNCamera_setWantsExposureAdaptation___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = wantsExposureAdaptation;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)wantsHDR
{
  if ((*(self + 16) & 1) == 0)
  {
    return LOBYTE(self->_averageGray);
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    WantsHDR = C3DCameraGetWantsHDR(self->_camera);
    C3DSceneUnlock(v5);
    return WantsHDR;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetWantsHDR(camera);
  }
}

- (void)setWantsHDR:(BOOL)wantsHDR
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setWantsHDR:];
    }
  }

  else if (LOBYTE(self->_averageGray) != wantsHDR)
  {
    LOBYTE(self->_averageGray) = wantsHDR;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNCamera_setWantsHDR___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = wantsHDR;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)whitePoint
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      WhitePoint = C3DCameraGetWhitePoint(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetWhitePoint(self->_camera);
    }
  }

  else
  {
    return self->_exposureOffset;
  }

  return WhitePoint;
}

- (void)setWhitePoint:(CGFloat)whitePoint
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setWhitePoint:];
    }
  }

  else
  {
    v4 = whitePoint;
    if (self->_exposureOffset != v4)
    {
      self->_exposureOffset = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__SCNCamera_setWhitePoint___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"whitePoint" applyBlock:v7];
    }
  }
}

- (double)xFov
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_xFov;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    XFov = C3DCameraGetXFov(self->_camera);
    C3DSceneUnlock(v5);
    return XFov;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetXFov(camera);
  }
}

- (void)setXFov:(double)xFov
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setXFov:];
    }
  }

  else
  {
    if (xFov >= 1.0e-35)
    {
      v4 = xFov;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(self + 16) & 0xF8;
    *(self + 16) = v5 | 4;
    if (v4 != self->_xFov)
    {
      v6 = v4;
      self->_xFov = v6;
      if (v6 != 0.0)
      {
        *(self + 16) = v5 | 0x44;
        self->_fieldOfView = v6;
        [(SCNCamera *)self _updateFocalLength];
      }

      v7 = [(SCNCamera *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __21__SCNCamera_setXFov___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      *&v9[5] = v4;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"xFov" applyBlock:v9];
    }
  }
}

- (double)yFov
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_yFov;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    YFov = C3DCameraGetYFov(self->_camera);
    C3DSceneUnlock(v5);
    return YFov;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetYFov(camera);
  }
}

- (void)setYFov:(double)yFov
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setYFov:];
    }
  }

  else
  {
    if (yFov >= 1.0e-35)
    {
      v4 = yFov;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(self + 16) & 0xF8 | 4;
    *(self + 16) = v5;
    if (v4 != self->_yFov)
    {
      v6 = v4;
      self->_yFov = v6;
      if (v6 != 0.0)
      {
        *(self + 16) = v5 & 0xBC;
        self->_fieldOfView = v6;
        [(SCNCamera *)self _updateFocalLength];
      }

      v7 = [(SCNCamera *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __21__SCNCamera_setYFov___block_invoke;
      v9[3] = &unk_2782FB7D0;
      v9[4] = self;
      *&v9[5] = v4;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"yFov" applyBlock:v9];
    }
  }
}

- (double)zFar
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_zFar;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ZFar = C3DCameraGetZFar(self->_camera);
    C3DSceneUnlock(v5);
    return ZFar;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetZFar(camera);
  }
}

- (void)setZFar:(double)zFar
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setZFar:];
    }
  }

  else
  {
    *(self + 16) &= 0xFCu;
    if (self->_zFar != zFar)
    {
      self->_zFar = zFar;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __21__SCNCamera_setZFar___block_invoke;
      v7[3] = &unk_2782FB7D0;
      v7[4] = self;
      *&v7[5] = zFar;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"zFar" applyBlock:v7];
    }
  }
}

- (double)zNear
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_zNear;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ZNear = C3DCameraGetZNear(self->_camera);
    C3DSceneUnlock(v5);
    return ZNear;
  }

  else
  {
    camera = self->_camera;

    return C3DCameraGetZNear(camera);
  }
}

- (void)setZNear:(double)zNear
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(self + 16);
  if (v4)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setZNear:];
    }
  }

  else
  {
    v5 = zNear;
    *(self + 16) = v4 & 0xFC;
    v6 = v4 & 8;
    if (zNear == 0.0 && v6 == 0)
    {
      v8 = scn_default_log();
      v5 = 0.0001;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = self;
        _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %@: zNear of 0 is not allowed", buf, 0xCu);
      }
    }

    if (v5 != self->_zNear)
    {
      self->_zNear = v5;
      v9 = [(SCNCamera *)self sceneRef];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __22__SCNCamera_setZNear___block_invoke;
      v11[3] = &unk_2782FB7D0;
      v11[4] = self;
      *&v11[5] = v5;
      [SCNTransaction postCommandWithContext:v9 object:self key:@"zNear" applyBlock:v11];
    }
  }
}

- (double)lensShift
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return *(a1 + 96);
  }

  v3 = [a1 sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
    LensShift = C3DCameraGetLensShift(*(a1 + 8));
    C3DSceneUnlock(v4);
    return LensShift;
  }

  else
  {
    v6 = *(a1 + 8);

    return C3DCameraGetLensShift(v6);
  }
}

- (void)setLensShift:(SCNCamera *)self
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setLensShift:];
    }
  }

  else
  {
    v4 = v2;
    v5 = vmvn_s8(vceq_f32(*&self->_lensShift[4], v2));
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *&self->_lensShift[4] = v4;
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __26__SCNCamera_setLensShift___block_invoke;
      v8[3] = &unk_2782FB7D0;
      v8[4] = self;
      v8[5] = v4;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"lensShift" applyBlock:v8];
    }
  }
}

- (CGAffineTransform)postProjectionTransform
{
  v3 = self;
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  if (LOBYTE(self->c))
  {
    v9 = [(CGAffineTransform *)self sceneRef];
    v10 = v9;
    if (v9)
    {
      C3DSceneLock(v9);
    }

    PostProjectionTransformTranslation = C3DCameraGetPostProjectionTransformTranslation(*&v3->b);
    PostProjectionTransformScale = C3DCameraGetPostProjectionTransformScale(*&v3->b);
    retstr->ty = *(&PostProjectionTransformTranslation + 1);
    retstr->a = *&PostProjectionTransformScale;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&PostProjectionTransformScale, *&PostProjectionTransformTranslation, 4uLL));
    if (v10)
    {

      return C3DSceneUnlock(v10);
    }
  }

  else
  {
    b = self[2].b;
    c = self[2].c;
    retstr->ty = *(&b + 1);
    retstr->a = *&c;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&c, *&b, 4uLL));
  }

  return self;
}

- (void)setPostProjectionTransform:(CGAffineTransform *)a3
{
  if (*(self + 16))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setPostProjectionTransform:];
    }
  }

  else
  {
    v4 = vcvt_f32_f64(*&a3->tx);
    v5.f64[0] = a3->a;
    v5.f64[1] = a3->d;
    v6 = vcvt_f32_f64(v5);
    *&v5.f64[0] = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v4));
    if ((vpmax_u32(*&v5.f64[0], *&v5.f64[0]).u32[0] & 0x80000000) != 0)
    {
      *&self->_postProjectionTransformTranslation[4] = v4;
      v7 = [(SCNCamera *)self sceneRef];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__SCNCamera_setPostProjectionTransform___block_invoke;
      v12[3] = &unk_2782FB7D0;
      v12[4] = self;
      v12[5] = v4;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"postProjectionTransformTranslation" applyBlock:v12];
    }

    v8 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v6));
    if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
    {
      *&self->_postProjectionTransformScale[4] = v6;
      v9 = [(SCNCamera *)self sceneRef];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__SCNCamera_setPostProjectionTransform___block_invoke_2;
      v11[3] = &unk_2782FB7D0;
      v11[4] = self;
      v11[5] = v6;
      [SCNTransaction postCommandWithContext:v9 object:self key:@"postProjectionTransformScale" applyBlock:v11];
    }
  }
}

- (void)setPostProjectionTransformTranslation:(SCNCamera *)self
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setPostProjectionTransformTranslation:];
    }
  }

  else
  {
    v4 = v2;
    v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v2));
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *&self->_postProjectionTransformTranslation[4] = v4;
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__SCNCamera_setPostProjectionTransformTranslation___block_invoke;
      v8[3] = &unk_2782FB7D0;
      v8[4] = self;
      v8[5] = v4;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"postProjectionTransformTranslation" applyBlock:v8];
    }
  }
}

- (void)setPostProjectionTransformScale:(SCNCamera *)self
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setPostProjectionTransformScale:];
    }
  }

  else
  {
    v4 = v2;
    v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v2));
    if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
    {
      *&self->_postProjectionTransformScale[4] = v4;
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__SCNCamera_setPostProjectionTransformScale___block_invoke;
      v8[3] = &unk_2782FB7D0;
      v8[4] = self;
      v8[5] = v4;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"postProjectionTransformScale" applyBlock:v8];
    }
  }
}

- (void)_updateFieldOfView
{
  focalLength = self->_focalLength;
  if (focalLength <= 0.0)
  {
    v5 = 3.14159274;
  }

  else
  {
    v4 = atan(self->_sensorSize * 0.5 / focalLength);
    *&v4 = v4 + v4;
    v5 = *&v4;
  }

  v6 = v5 / 3.14159265 * 180.0;
  self->_fieldOfView = v6;
  *(self + 16) &= ~4u;
}

- (void)_updateFocalLength
{
  v3 = self->_fieldOfView / 180.0 * 3.14159265;
  v4 = self->_sensorSize * 0.5;
  v5 = v4 / tanf(v3 * 0.5);
  self->_focalLength = v5;
}

- (void)_checkSettingsConsistency
{
  v29 = *MEMORY[0x277D85DE8];
  fieldOfView = self->_fieldOfView;
  if (fieldOfView >= 180.0)
  {
    if (self->_focalLength != 0.0)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(SCNCamera *)v11 _checkSettingsConsistency:v12];
      }
    }
  }

  else
  {
    v4 = fieldOfView / 180.0 * 3.14159265;
    v5 = self->_sensorSize * 0.5;
    v6 = v5 / tanf(v4 * 0.5);
    if (vabds_f32(self->_focalLength, v6) >= 0.001)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = self->_fieldOfView;
        sensorSize = self->_sensorSize;
        focalLength = self->_focalLength;
        v19 = 136316162;
        v20 = "fabs(_focalLength - focalLength) < 1e-3";
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = sensorSize;
        v25 = 2048;
        v26 = v6;
        v27 = 2048;
        v28 = focalLength;
        _os_log_fault_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Inconsistent physically-based camera settings: %fº fov with a %.2fmm sensor should lead to an expected focal length of %.2f (got %.2f)", &v19, 0x34u);
      }
    }
  }
}

- (CGFloat)fieldOfView
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      Fov = C3DCameraGetFov(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetFov(self->_camera);
    }
  }

  else
  {
    return self->_fieldOfView;
  }

  return Fov;
}

- (void)setFieldOfView:(CGFloat)fieldOfView
{
  v4 = *(self + 16);
  if (v4)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setFieldOfView:];
    }
  }

  else
  {
    *(self + 16) = v4 & 0xFC;
    v5 = fieldOfView;
    if ((v4 & 4) != 0 || self->_fieldOfView != v5)
    {
      self->_fieldOfView = v5;
      *(self + 16) = v4 & 0xF8;
      v6 = 0.0;
      if ((v4 & 0x40) != 0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v5;
      }

      if ((v4 & 0x40) != 0)
      {
        v6 = v5;
      }

      self->_xFov = v6;
      self->_yFov = v7;
      [(SCNCamera *)self _updateFocalLength];
      v8 = [(SCNCamera *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __28__SCNCamera_setFieldOfView___block_invoke;
      v10[3] = &unk_2782FF898;
      v10[4] = self;
      v11 = v5;
      [SCNTransaction postCommandWithContext:v8 object:self key:@"fieldOfView" applyBlock:v10];
    }
  }
}

- (CGFloat)sensorHeight
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      SensorSize = C3DCameraGetSensorSize(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetSensorSize(self->_camera);
    }
  }

  else
  {
    return self->_sensorSize;
  }

  return SensorSize;
}

- (void)setSensorHeight:(CGFloat)sensorHeight
{
  v4 = *(self + 16);
  if (v4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setSensorHeight:];
    }
  }

  else
  {
    *(self + 16) = v4 & 0xFC;
    v5 = sensorHeight;
    if ((v4 & 4) != 0 || self->_sensorSize != v5)
    {
      self->_sensorSize = v5;
      [(SCNCamera *)self _updateFieldOfView];
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __29__SCNCamera_setSensorHeight___block_invoke;
      v8[3] = &unk_2782FF898;
      v8[4] = self;
      v9 = v5;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"sensorHeight" applyBlock:v8];
    }
  }
}

- (CGFloat)focalLength
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      FocalLength = C3DCameraGetFocalLength(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetFocalLength(self->_camera);
    }
  }

  else
  {
    return self->_focalLength;
  }

  return FocalLength;
}

- (void)setFocalLength:(CGFloat)focalLength
{
  v4 = *(self + 16);
  if (v4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setFocalLength:];
    }
  }

  else
  {
    *(self + 16) = v4 & 0xFC;
    v5 = focalLength;
    if ((v4 & 4) != 0 || self->_focalLength != v5)
    {
      self->_focalLength = v5;
      [(SCNCamera *)self _updateFieldOfView];
      v6 = [(SCNCamera *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __28__SCNCamera_setFocalLength___block_invoke;
      v8[3] = &unk_2782FF898;
      v8[4] = self;
      v9 = v5;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"focalLength" applyBlock:v8];
    }
  }
}

- (CGFloat)aperture
{
  [(SCNCamera *)self sensorHeight];
  v4 = v3;
  [(SCNCamera *)self fStop];
  return v4 / v5;
}

- (void)setAperture:(CGFloat)aperture
{
  [(SCNCamera *)self sensorHeight];
  v6 = v5 / aperture;

  [(SCNCamera *)self setFStop:v6];
}

- (CGFloat)fStop
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      FStop = C3DCameraGetFStop(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetFStop(self->_camera);
    }
  }

  else
  {
    return self->_focusDistance;
  }

  return FStop;
}

- (void)setFStop:(CGFloat)fStop
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setFStop:];
    }
  }

  else
  {
    v4 = fStop;
    if (self->_focusDistance != v4)
    {
      self->_focusDistance = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __22__SCNCamera_setFStop___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"fStop" applyBlock:v7];
    }
  }
}

- (NSInteger)apertureBladeCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_focalBlurSampleCount;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetBladeCount(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BladeCount = C3DCameraGetBladeCount(self->_camera);
  C3DSceneUnlock(v5);
  return BladeCount;
}

- (void)setApertureBladeCount:(NSInteger)apertureBladeCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setApertureBladeCount:];
    }
  }

  else if (self->_focalBlurSampleCount != apertureBladeCount)
  {
    self->_focalBlurSampleCount = apertureBladeCount;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__SCNCamera_setApertureBladeCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = apertureBladeCount;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"apertureBladeCount" applyBlock:v7];
  }
}

- (NSInteger)focalBlurSampleCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return *&self->_aspectRatio;
  }

  v4 = [(SCNCamera *)self sceneRef];
  if (!v4)
  {
    return C3DCameraGetDofSampleCount(self->_camera);
  }

  v5 = v4;
  C3DSceneLock(v4);
  DofSampleCount = C3DCameraGetDofSampleCount(self->_camera);
  C3DSceneUnlock(v5);
  return DofSampleCount;
}

- (void)setFocalBlurSampleCount:(NSInteger)focalBlurSampleCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setFocalBlurSampleCount:];
    }
  }

  else if (*&self->_aspectRatio != focalBlurSampleCount)
  {
    *&self->_aspectRatio = focalBlurSampleCount;
    v5 = [(SCNCamera *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNCamera_setFocalBlurSampleCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = focalBlurSampleCount;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)focusDistance
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      FocusDistance = C3DCameraGetFocusDistance(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetFocusDistance(self->_camera);
    }
  }

  else
  {
    return self->_dofIntensity;
  }

  return FocusDistance;
}

- (void)setFocusDistance:(CGFloat)focusDistance
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setFocusDistance:];
    }
  }

  else
  {
    v4 = focusDistance;
    if (self->_dofIntensity != v4)
    {
      self->_dofIntensity = v4;
      v5 = [(SCNCamera *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __30__SCNCamera_setFocusDistance___block_invoke;
      v7[3] = &unk_2782FF898;
      v7[4] = self;
      v8 = v4;
      [SCNTransaction postCommandWithContext:v5 object:self key:@"focusDistance" applyBlock:v7];
    }
  }
}

- (int64_t)fillMode
{
  v2 = *(self + 16);
  if ((v2 & 1) == 0)
  {
    return (v2 >> 5) & 1;
  }

  v5 = [(SCNCamera *)self sceneRef];
  if (!v5)
  {
    return C3DCameraGetLetterboxMode(self->_camera);
  }

  v6 = v5;
  C3DSceneLock(v5);
  LetterboxMode = C3DCameraGetLetterboxMode(self->_camera);
  C3DSceneUnlock(v6);
  return LetterboxMode;
}

- (void)setFillMode:(int64_t)a3
{
  v5 = *(self + 16);
  *(self + 16) = v5 & 0xFB;
  if (((v5 >> 5) & 1) != a3)
  {
    v9[10] = v3;
    v9[11] = v4;
    *(self + 16) = v5 & 0xDB | (32 * (a3 & 1));
    v8 = [(SCNCamera *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__SCNCamera_setFillMode___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = a3;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }
}

- (SCNCameraProjectionDirection)projectionDirection
{
  v2 = *(self + 16);
  if ((v2 & 1) == 0)
  {
    return (v2 >> 6) & 1;
  }

  v5 = [(SCNCamera *)self sceneRef];
  if (!v5)
  {
    return C3DCameraGetFovIsHorizontal(self->_camera);
  }

  v6 = v5;
  C3DSceneLock(v5);
  IsHorizontal = C3DCameraGetFovIsHorizontal(self->_camera);
  C3DSceneUnlock(v6);
  return IsHorizontal;
}

- (void)setProjectionDirection:(SCNCameraProjectionDirection)projectionDirection
{
  v5 = *(self + 16);
  if (((v5 >> 6) & 1) != projectionDirection)
  {
    v11[10] = v3;
    v11[11] = v4;
    *(self + 16) = v5 & 0xBF | ((projectionDirection & 1) << 6);
    fieldOfView = self->_fieldOfView;
    if (projectionDirection)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = self->_fieldOfView;
    }

    if ((projectionDirection & 1) == 0)
    {
      fieldOfView = 0.0;
    }

    self->_xFov = fieldOfView;
    self->_yFov = v9;
    v10 = [(SCNCamera *)self sceneRef];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__SCNCamera_setProjectionDirection___block_invoke;
    v11[3] = &unk_2782FB7D0;
    v11[4] = self;
    v11[5] = projectionDirection;
    [SCNTransaction postCommandWithContext:v10 object:self applyBlock:v11];
  }
}

- (double)aspectRatio
{
  if (*(self + 16))
  {
    v4 = [(SCNCamera *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      AspectRatio = C3DCameraGetAspectRatio(self->_camera);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DCameraGetAspectRatio(self->_camera);
    }
  }

  else
  {
    return *&self->_categoryBitMask;
  }

  return AspectRatio;
}

- (void)setAspectRatio:(double)a3
{
  v5 = *(self + 16);
  if (*&self->_categoryBitMask != a3 || (v5 & 4) != 0)
  {
    v10[7] = v3;
    v10[8] = v4;
    *(self + 16) = v5 & 0xFB;
    v8 = a3;
    *&self->_categoryBitMask = v8;
    v9 = [(SCNCamera *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__SCNCamera_setAspectRatio___block_invoke;
    v10[3] = &unk_2782FB820;
    v10[4] = self;
    [SCNTransaction postCommandWithContext:v9 object:self key:@"aspectRatio" applyBlock:v10];
  }
}

- (void)setProjectionTransform:(SCNMatrix4 *)projectionTransform
{
  v4 = *(self + 16);
  if (v4)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCNCamera setProjectionTransform:];
    }
  }

  else
  {
    *(self + 16) = v4 | 2;
    if ((v4 & 2) == 0 || (v6 = *&projectionTransform->m21, *&a.m11 = *&projectionTransform->m11, *&a.m21 = v6, v7 = *&projectionTransform->m41, *&a.m31 = *&projectionTransform->m31, *&a.m41 = v7, v8 = *&self->_projectionTransform.m23, *&b.m11 = *&self->_projectionTransform.m13, *&b.m21 = v8, v9 = *&self->_projectionTransform.m43, *&b.m31 = *&self->_projectionTransform.m33, *&b.m41 = v9, !SCNMatrix4EqualToMatrix4(&a, &b)))
    {
      v10 = *&projectionTransform->m11;
      v11 = *&projectionTransform->m21;
      v12 = *&projectionTransform->m31;
      *&self->_projectionTransform.m43 = *&projectionTransform->m41;
      *&self->_projectionTransform.m33 = v12;
      *&self->_projectionTransform.m23 = v11;
      *&self->_projectionTransform.m13 = v10;
      v13 = [(SCNCamera *)self sceneRef];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v14 = *&projectionTransform->m21;
      v18 = *&projectionTransform->m11;
      v19 = v14;
      v15 = *&projectionTransform->m41;
      v20 = *&projectionTransform->m31;
      v21 = v15;
      v17[2] = __36__SCNCamera_setProjectionTransform___block_invoke;
      v17[3] = &unk_2782FE328;
      v17[4] = self;
      [SCNTransaction postCommandWithContext:v13 object:self key:@"projectionTransform" applyBlock:v17];
    }
  }
}

double __36__SCNCamera_setProjectionTransform___block_invoke(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  C3DMatrix4x4FromSCNMatrix4(&v5, a1 + 40);
  if (*(&v7 + 2) > 0.0)
  {
    v14 = __invert_f4(*_PromotedConst_0);
    v2 = 0;
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = v8;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    do
    {
      *(&v10 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14.columns[0], COERCE_FLOAT(v9[v2])), v14.columns[1], *&v9[v2], 1), v14.columns[2], v9[v2], 2), v14.columns[3], v9[v2], 3);
      ++v2;
    }

    while (v2 != 4);
    v5 = v10;
    v6 = v11;
    v7 = v12;
    v8 = v13;
  }

  v3 = *(*(a1 + 32) + 8);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  *&result = C3DCameraSetProjectionTransform(v3, &v10).n128_u64[0];
  return result;
}

- (SCNMatrix4)projectionTransform
{
  if (self)
  {
    return [(SCNMatrix4 *)self projectionTransformWithViewportSize:1.0, 1.0];
  }

  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  return self;
}

- (SCNMatrix4)projectionTransformWithViewportSize:(SEL)a3
{
  v4 = self;
  memset(&v35, 0, sizeof(v35));
  m21_low = LOBYTE(self->m21);
  if (m21_low)
  {
    height = viewportSize.height;
    width = viewportSize.width;
    v11 = [(SCNMatrix4 *)self sceneRef];
    v12 = v11;
    if (v11)
    {
      C3DSceneLock(v11);
    }

    v13.f64[0] = width;
    v13.f64[1] = height;
    v22[0] = vcvt_hight_f32_f64(0, v13);
    ProjectionInfosPtr = C3DCameraGetProjectionInfosPtr(*&v4->m13);
    self = C3DProjectionInfosGetMatrix(ProjectionInfosPtr, v22, 0);
    if (self)
    {
      C3DMatrix4x4ToSCNMatrix4(self, &v35);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = SCNMatrix4Identity;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    self = C3DSceneUnlock(v12);
    goto LABEL_9;
  }

  if ((m21_low & 2) != 0)
  {
    v18 = *&self[2].m43;
    *&retstr->m11 = *&self[2].m33;
    *&retstr->m21 = v18;
    v16 = *&self[3].m13;
    v17 = *&self[3].m23;
    goto LABEL_11;
  }

  v24 = 0u;
  v25 = 0u;
  memset(v22, 0, sizeof(v22));
  *&v25 = self[2].m23;
  *(v22 + 8) = *&self[1].m11;
  v7 = *&self->m41;
  *&v24 = *&self->m43;
  DWORD2(v24) = LODWORD(self[1].m21);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v23 = 0u;
  v33 = 0u;
  v34 = vcvtq_f64_f32(v7);
  v22[0].i8[0] = (m21_low >> 1) & 0x20 | ((m21_low & 8) != 0) | (((m21_low & 0x20) != 0) << 6) | (16 * ((m21_low & 4) != 0));
  v8 = *&self[1].m33;
  v22[1].i64[1] = *&self[1].m31;
  *&v23 = v8;
  *(&v23 + 1) = *&self[1].m41;
  v9 = viewportSize.height;
  v21 = vcvt_hight_f32_f64(0, viewportSize);
  Matrix = C3DProjectionInfosGetMatrix(v22[0].i8, &v21, 0);
  C3DMatrix4x4ToSCNMatrix4(Matrix, &v35);
LABEL_9:
  v15 = *&v35.m21;
  *&retstr->m11 = *&v35.m11;
  *&retstr->m21 = v15;
  v16 = *&v35.m31;
  v17 = *&v35.m41;
LABEL_11:
  *&retstr->m31 = v16;
  *&retstr->m41 = v17;
  return self;
}

- (SCNMaterialProperty)colorGrading
{
  result = *&self->_wantsHDR;
  if (!result)
  {
    result = [[SCNMaterialProperty alloc] initWithParent:self propertyType:26];
    *&self->_wantsHDR = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v4 setName:{-[SCNCamera name](self, "name")}];
  [v4 setIdentifier:{-[SCNCamera identifier](self, "identifier")}];
  [v4 setWantsDepthOfField:{-[SCNCamera wantsDepthOfField](self, "wantsDepthOfField")}];
  [v4 setApertureBladeCount:{-[SCNCamera apertureBladeCount](self, "apertureBladeCount")}];
  [v4 setFocalBlurSampleCount:{-[SCNCamera focalBlurSampleCount](self, "focalBlurSampleCount")}];
  [(SCNCamera *)self focalSize];
  [v4 setFocalSize:?];
  [v4 setName:{-[SCNCamera name](self, "name")}];
  [(SCNCamera *)self aspectRatio];
  [v4 setAspectRatio:?];
  [(SCNCamera *)self focusDistance];
  [v4 setFocusDistance:?];
  [(SCNCamera *)self fStop];
  [v4 setFStop:?];
  if ((*(self + 16) & 4) != 0)
  {
    [(SCNCamera *)self xFov];
    [v4 setXFov:?];
    [(SCNCamera *)self yFov];
    [v4 setYFov:?];
  }

  else
  {
    [(SCNCamera *)self sensorHeight];
    [v4 setSensorHeight:?];
    [(SCNCamera *)self fieldOfView];
    [v4 setFieldOfView:?];
  }

  [(SCNCamera *)self lensShift];
  [v4 setLensShift:?];
  [(SCNCamera *)self postProjectionTransform];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [v4 setPostProjectionTransform:v6];
  [v4 setFillMode:{-[SCNCamera fillMode](self, "fillMode")}];
  [v4 setProjectionDirection:{-[SCNCamera projectionDirection](self, "projectionDirection")}];
  [(SCNCamera *)self zNear];
  [v4 setZNear:?];
  [(SCNCamera *)self zFar];
  [v4 setZFar:?];
  [(SCNCamera *)self orthographicScale];
  [v4 setOrthographicScale:?];
  [v4 setAutomaticallyAdjustsZRange:{-[SCNCamera automaticallyAdjustsZRange](self, "automaticallyAdjustsZRange")}];
  [v4 setUsesOrthographicProjection:{-[SCNCamera usesOrthographicProjection](self, "usesOrthographicProjection")}];
  [v4 setWantsHDR:{-[SCNCamera wantsHDR](self, "wantsHDR")}];
  [(SCNCamera *)self whitePoint];
  [v4 setWhitePoint:?];
  [(SCNCamera *)self averageGray];
  [v4 setAverageGray:?];
  [v4 setWantsExposureAdaptation:{-[SCNCamera wantsExposureAdaptation](self, "wantsExposureAdaptation")}];
  [(SCNCamera *)self exposureAdaptationDuration];
  [v4 setExposureAdaptationDuration:?];
  [(SCNCamera *)self exposureAdaptationBrighteningSpeedFactor];
  [v4 setExposureAdaptationBrighteningSpeedFactor:?];
  [(SCNCamera *)self exposureAdaptationDarkeningSpeedFactor];
  [v4 setExposureAdaptationDarkeningSpeedFactor:?];
  [(SCNCamera *)self exposureAdaptationHistogramRangeLowProbability];
  [v4 setExposureAdaptationHistogramRangeLowProbability:?];
  [(SCNCamera *)self exposureAdaptationHistogramRangeHighProbability];
  [v4 setExposureAdaptationHistogramRangeHighProbability:?];
  [v4 setExposureAdaptationMode:{-[SCNCamera exposureAdaptationMode](self, "exposureAdaptationMode")}];
  [(SCNCamera *)self minimumExposure];
  [v4 setMinimumExposure:?];
  [(SCNCamera *)self maximumExposure];
  [v4 setMaximumExposure:?];
  [(SCNCamera *)self bloomIntensity];
  [v4 setBloomIntensity:?];
  [(SCNCamera *)self bloomThreshold];
  [v4 setBloomThreshold:?];
  [v4 setBloomIterationCount:{-[SCNCamera bloomIterationCount](self, "bloomIterationCount")}];
  [(SCNCamera *)self bloomIterationSpread];
  [v4 setBloomIterationSpread:?];
  [(SCNCamera *)self bloomBlurRadius];
  [v4 setBloomBlurRadius:?];
  [(SCNCamera *)self vignettingPower];
  [v4 setVignettingPower:?];
  [(SCNCamera *)self vignettingIntensity];
  [v4 setVignettingIntensity:?];
  [(SCNCamera *)self colorFringeStrength];
  [v4 setColorFringeStrength:?];
  [(SCNCamera *)self colorFringeIntensity];
  [v4 setColorFringeIntensity:?];
  [(SCNCamera *)self saturation];
  [v4 setSaturation:?];
  [(SCNCamera *)self contrast];
  [v4 setContrast:?];
  [(SCNCamera *)self grainIntensity];
  [v4 setGrainIntensity:?];
  [(SCNCamera *)self grainScale];
  [v4 setGrainScale:?];
  [v4 setGrainIsColored:{-[SCNCamera grainIsColored](self, "grainIsColored")}];
  [(SCNCamera *)self whiteBalanceTemperature];
  [v4 setWhiteBalanceTemperature:?];
  [(SCNCamera *)self whiteBalanceTint];
  [v4 setWhiteBalanceTint:?];
  [(SCNCamera *)self motionBlurIntensity];
  [v4 setMotionBlurIntensity:?];
  [(SCNCamera *)self screenSpaceAmbientOcclusionIntensity];
  [v4 setScreenSpaceAmbientOcclusionIntensity:?];
  [(SCNCamera *)self screenSpaceAmbientOcclusionRadius];
  [v4 setScreenSpaceAmbientOcclusionRadius:?];
  [(SCNCamera *)self screenSpaceAmbientOcclusionBias];
  [v4 setScreenSpaceAmbientOcclusionBias:?];
  [(SCNCamera *)self screenSpaceAmbientOcclusionDepthThreshold];
  [v4 setScreenSpaceAmbientOcclusionDepthThreshold:?];
  [(SCNCamera *)self screenSpaceAmbientOcclusionNormalThreshold];
  [v4 setScreenSpaceAmbientOcclusionNormalThreshold:?];
  [v4 setScreenSpaceAmbientOcclusionSampleCount:{-[SCNCamera screenSpaceAmbientOcclusionSampleCount](self, "screenSpaceAmbientOcclusionSampleCount")}];
  [v4 setScreenSpaceAmbientOcclusionDownSample:{-[SCNCamera screenSpaceAmbientOcclusionDownSample](self, "screenSpaceAmbientOcclusionDownSample")}];
  [v4 setCategoryBitMask:{-[SCNCamera categoryBitMask](self, "categoryBitMask")}];
  [v4 _copyAnimationsFrom:self];
  +[SCNTransaction commitImmediate];
  return v4;
}

- (void)_customEncodingOfSCNCamera:(id)a3
{
  if ((*(self + 16) & 2) != 0)
  {
    v3 = *&self->_projectionTransform.m23;
    v5[0] = *&self->_projectionTransform.m13;
    v5[1] = v3;
    v4 = *&self->_projectionTransform.m43;
    v5[2] = *&self->_projectionTransform.m33;
    v5[3] = v4;
    SCNEncodeSCNMatrix4(a3, @"projectionTransform", v5);
  }
}

- (void)_didDecodeSCNCamera:(id)a3
{
  if ([a3 containsValueForKey:@"projectionTransform"])
  {
    SCNDecodeSCNMatrix4(a3, @"projectionTransform", v6);
    v5[0] = v6[0];
    v5[1] = v6[1];
    v5[2] = v6[2];
    v5[3] = v6[3];
    [(SCNCamera *)self setProjectionTransform:v5];
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 16))
  {
    [(SCNCamera *)self _syncObjCModel];
  }

  [(SCNCamera *)self _customEncodingOfSCNCamera:a3];
  [a3 encodeInt:(*(self + 16) >> 3) & 1 forKey:@"usesOrthographicProjection"];
  [a3 encodeInt:(*(self + 16) >> 4) & 1 forKey:@"automaticallyAdjustsZRange"];
  [a3 encodeInt:(*(self + 16) >> 5) & 1 forKey:@"fillMode"];
  [a3 encodeInt:(*(self + 16) >> 6) & 1 forKey:@"projectionDirection"];
  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  if ((*(self + 16) & 4) != 0)
  {
    [a3 encodeDouble:@"xFov" forKey:self->_xFov];
    yFov = self->_yFov;
    v9 = @"yFov";
  }

  else
  {
    *&v5 = self->_fieldOfView;
    [a3 encodeFloat:@"fov" forKey:v5];
    *&v7 = self->_sensorSize;
    [a3 encodeFloat:@"sensorSize" forKey:v7];
    yFov = self->_fieldOfView;
    if ((*(self + 16) & 0x40) != 0)
    {
      v9 = @"xFov";
    }

    else
    {
      v9 = @"yFov";
    }
  }

  [a3 encodeDouble:v9 forKey:yFov];
  v10 = vmvn_s8(vceqz_f32(*&self->_lensShift[4]));
  if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) != 0)
  {
    [a3 encodeFloat:@"lensShiftX" forKey:?];
    LODWORD(v11) = *self->_postProjectionTransformTranslation;
    [a3 encodeFloat:@"lensShiftY" forKey:v11];
  }

  v12 = vmvn_s8(vceqz_f32(*&self->_postProjectionTransformTranslation[4]));
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    [a3 encodeFloat:@"postProjectionTransformTranslationX" forKey:?];
    LODWORD(v13) = *self->_postProjectionTransformScale;
    [a3 encodeFloat:@"postProjectionTransformTranslationY" forKey:v13];
  }

  __asm { FMOV            V1.2S, #1.0 }

  v19 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], _D1));
  if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) != 0)
  {
    [a3 encodeFloat:@"postProjectionTransformScaleX" forKey:?];
    *&v20 = self->_fStop;
    [a3 encodeFloat:@"postProjectionTransformScaleY" forKey:v20];
  }

  [a3 encodeDouble:@"orthographicScale" forKey:self->_orthographicScale];
  [a3 encodeDouble:@"zNear" forKey:self->_zNear];
  [a3 encodeDouble:@"zFar" forKey:self->_zFar];
  LODWORD(v21) = self->_bladeCount;
  [a3 encodeFloat:@"dofIntensity" forKey:v21];
  *&v22 = self->_dofIntensity;
  [a3 encodeFloat:@"focusDistance" forKey:v22];
  *&v23 = self->_focusDistance;
  [a3 encodeFloat:@"fStop" forKey:v23];
  [a3 encodeInteger:self->_focalBlurSampleCount forKey:@"bladeCount"];
  [a3 encodeInteger:*&self->_aspectRatio forKey:@"focalBlurSampleCount"];
  [a3 encodeInteger:*&self->_bloomIntensity forKey:@"exposureAdaptationMode"];
  [a3 encodeInteger:*&self->_projectionTransform.m11 forKey:@"categoryBitMask"];
  colorGrading = self->_colorGrading;
  if (colorGrading)
  {
    [a3 encodeObject:colorGrading forKey:@"technique"];
  }

  v25 = *&self->_wantsHDR;
  if (v25)
  {
    [a3 encodeObject:v25 forKey:@"colorGrading"];
  }

  [a3 encodeBool:LOBYTE(self->_averageGray) forKey:@"wantsHDR"];
  [a3 encodeBool:LOBYTE(self->_exposureAdaptationBrighteningSpeedFactor) forKey:@"wantsExposureAdaptation"];
  *&v26 = self->_exposureOffset;
  [a3 encodeFloat:@"whitePoint" forKey:v26];
  *&v27 = self->_minimumExposure;
  [a3 encodeFloat:@"averageGray" forKey:v27];
  *&v28 = self->_maximumExposure;
  [a3 encodeFloat:@"exposureOffset" forKey:v28];
  *&v29 = self->_exposureAdaptationDarkeningSpeedFactor;
  [a3 encodeFloat:@"exposureAdaptationDuration" forKey:v29];
  LODWORD(v30) = LODWORD(self->_exposureAdaptationHistogramRangeHighProbability);
  [a3 encodeFloat:@"exposureAdaptationBrighteningSpeedFactor" forKey:v30];
  LODWORD(v31) = HIDWORD(self->_exposureAdaptationHistogramRangeHighProbability);
  [a3 encodeFloat:@"exposureAdaptationDarkeningSpeedFactor" forKey:v31];
  v32 = *&self->_exposureAdaptationMode;
  *&v32 = v32;
  [a3 encodeFloat:@"exposureAdaptationHistogramRangeLowProbability" forKey:v32];
  exposureAdaptationHistogramRangeLowProbability = self->_exposureAdaptationHistogramRangeLowProbability;
  *&exposureAdaptationHistogramRangeLowProbability = exposureAdaptationHistogramRangeLowProbability;
  [a3 encodeFloat:@"exposureAdaptationHistogramRangeHighProbability" forKey:exposureAdaptationHistogramRangeLowProbability];
  LODWORD(v34) = *&self->_wantsExposureAdaptation;
  [a3 encodeFloat:@"minimumExposure" forKey:v34];
  *&v35 = self->_exposureAdaptationDuration;
  [a3 encodeFloat:@"maximumExposure" forKey:v35];
  LODWORD(v36) = self->_bloomIteration;
  [a3 encodeFloat:@"bloomIntensity" forKey:v36];
  *&v37 = self->_bloomIterationSpread;
  [a3 encodeFloat:@"bloomThreshold" forKey:v37];
  [a3 encodeInteger:SLODWORD(self->_bloomBlurRadius) forKey:@"bloomIteration"];
  *&v38 = self->_motionBlurIntensity;
  [a3 encodeFloat:@"bloomIterationSpread" forKey:v38];
  *&v39 = self->_vignettingPower;
  [a3 encodeFloat:@"bloomBlurRadius" forKey:v39];
  *&v40 = self->_vignettingIntensity;
  [a3 encodeFloat:@"motionBlurIntensity" forKey:v40];
  *&v41 = self->_colorFringeStrength;
  [a3 encodeFloat:@"vignettingPower" forKey:v41];
  *&v42 = self->_colorFringeIntensity;
  [a3 encodeFloat:@"vignettingIntensity" forKey:v42];
  *&v43 = self->_saturation;
  [a3 encodeFloat:@"colorFringeStrength" forKey:v43];
  *&v44 = self->_contrast;
  [a3 encodeFloat:@"colorFringeIntensity" forKey:v44];
  *&v45 = self->_grainIntensity;
  [a3 encodeFloat:@"saturation" forKey:v45];
  *&v46 = self->_grainScale;
  [a3 encodeFloat:@"contrast" forKey:v46];
  LODWORD(v47) = *&self->_grainIsColored;
  [a3 encodeFloat:@"grainIntensity" forKey:v47];
  *&v48 = self->_whiteBalanceTemperature;
  [a3 encodeFloat:@"grainScale" forKey:v48];
  [a3 encodeBool:LOBYTE(self->_whiteBalanceTint) forKey:@"grainIsColored"];
  LODWORD(v49) = *(&self->_whiteBalanceTint + 1);
  [a3 encodeFloat:@"whiteBalanceTemperature" forKey:v49];
  *&v50 = self->_screenSpaceAmbientOcclusion.intensity;
  [a3 encodeFloat:@"whiteBalanceTint" forKey:v50];
  *&v51 = self->_screenSpaceAmbientOcclusion.bias;
  [a3 encodeFloat:@"screenSpaceAmbientOcclusionIntensity" forKey:v51];
  *&v52 = self->_screenSpaceAmbientOcclusion.depthThreshold;
  [a3 encodeFloat:@"screenSpaceAmbientOcclusionRadius" forKey:v52];
  *&v53 = self->_screenSpaceAmbientOcclusion.normalThreshold;
  [a3 encodeFloat:@"screenSpaceAmbientOcclusionBias" forKey:v53];
  LODWORD(v54) = *(&self->_screenSpaceAmbientOcclusion.normalThreshold + 1);
  [a3 encodeFloat:@"screenSpaceAmbientOcclusionDepthThreshold" forKey:v54];
  LODWORD(v55) = self->_screenSpaceAmbientOcclusion.sampleCount;
  [a3 encodeFloat:@"screenSpaceAmbientOcclusionNormalThreshold" forKey:v55];
  [a3 encodeInteger:self->_screenSpaceAmbientOcclusion.downSample forKey:@"screenSpaceAmbientOcclusionSampleCount"];
  [a3 encodeInteger:self->_grainTexture forKey:@"screenSpaceAmbientOcclusionDownSample"];
  SCNEncodeEntity(a3, self);

  SCNEncodeAnimations(a3, self);
}

- (SCNCamera)initWithCoder:(id)a3
{
  v60.receiver = self;
  v60.super_class = SCNCamera;
  v4 = [(SCNCamera *)&v60 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = C3DCameraCreate();
    v4->_camera = v6;
    if (v6)
    {
      C3DEntitySetObjCWrapper(v6, v4);
    }

    [(SCNCamera *)v4 _syncObjCModel];
    -[SCNCamera setUsesOrthographicProjection:](v4, "setUsesOrthographicProjection:", [a3 decodeIntForKey:@"usesOrthographicProjection"] != 0);
    -[SCNCamera setAutomaticallyAdjustsZRange:](v4, "setAutomaticallyAdjustsZRange:", [a3 decodeIntForKey:@"automaticallyAdjustsZRange"] != 0);
    -[SCNCamera setFillMode:](v4, "setFillMode:", [a3 decodeIntForKey:@"fillMode"]);
    -[SCNCamera setProjectionDirection:](v4, "setProjectionDirection:", [a3 decodeIntForKey:@"projectionDirection"]);
    -[SCNCamera setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    if ([a3 containsValueForKey:@"fov"])
    {
      [a3 decodeFloatForKey:@"sensorSize"];
      [(SCNCamera *)v4 setSensorHeight:v7];
      [a3 decodeFloatForKey:@"fov"];
      [(SCNCamera *)v4 setFieldOfView:v8];
    }

    else
    {
      [a3 decodeFloatForKey:@"xFov"];
      [(SCNCamera *)v4 setXFov:v9];
      [a3 decodeFloatForKey:@"yFov"];
      [(SCNCamera *)v4 setYFov:v10];
    }

    if ([a3 containsValueForKey:@"lensShiftX"])
    {
      [a3 decodeFloatForKey:@"lensShiftX"];
      v57 = v11;
      [a3 decodeFloatForKey:@"lensShiftY"];
      [(SCNCamera *)v4 setLensShift:COERCE_DOUBLE(__PAIR64__(v12, v57))];
    }

    else
    {
      *&v4->_lensShift[4] = 0;
    }

    if ([a3 containsValueForKey:@"postProjectionTransformTranslationX"])
    {
      [a3 decodeFloatForKey:@"postProjectionTransformTranslationX"];
      v58 = v13;
      [a3 decodeFloatForKey:@"postProjectionTransformTranslationY"];
      [(SCNCamera *)v4 setPostProjectionTransformTranslation:COERCE_DOUBLE(__PAIR64__(v14, v58))];
    }

    else
    {
      *&v4->_postProjectionTransformTranslation[4] = 0;
    }

    if ([a3 containsValueForKey:@"postProjectionTransformScaleX"])
    {
      [a3 decodeFloatForKey:@"postProjectionTransformScaleX"];
      v59 = v15;
      [a3 decodeFloatForKey:@"postProjectionTransformScaleY"];
      [(SCNCamera *)v4 setPostProjectionTransformScale:COERCE_DOUBLE(__PAIR64__(v16, v59))];
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }

      *&v4->_postProjectionTransformScale[4] = _D0;
    }

    [a3 decodeDoubleForKey:@"orthographicScale"];
    [(SCNCamera *)v4 setOrthographicScale:?];
    [a3 decodeDoubleForKey:@"zNear"];
    [(SCNCamera *)v4 setZNear:?];
    [a3 decodeDoubleForKey:@"zFar"];
    [(SCNCamera *)v4 setZFar:?];
    [a3 decodeFloatForKey:@"focusDistance"];
    [(SCNCamera *)v4 setFocusDistance:v22];
    if ([a3 containsValueForKey:@"dofIntensity"])
    {
      [a3 decodeFloatForKey:@"dofIntensity"];
      [(SCNCamera *)v4 setWantsDepthOfField:v23 > 0.0];
    }

    else
    {
      [a3 decodeFloatForKey:@"focalBlurRadius"];
      [(SCNCamera *)v4 setFocalBlurRadius:v24];
    }

    if ([a3 containsValueForKey:@"fStop"])
    {
      [a3 decodeFloatForKey:@"fStop"];
      [(SCNCamera *)v4 setFStop:v25];
    }

    if ([a3 containsValueForKey:@"bladeCount"])
    {
      -[SCNCamera setApertureBladeCount:](v4, "setApertureBladeCount:", [a3 decodeIntegerForKey:@"bladeCount"]);
    }

    if ([a3 containsValueForKey:@"focalBlurSampleCount"])
    {
      -[SCNCamera setFocalBlurSampleCount:](v4, "setFocalBlurSampleCount:", [a3 decodeIntegerForKey:@"focalBlurSampleCount"]);
    }

    -[SCNCamera setCategoryBitMask:](v4, "setCategoryBitMask:", [a3 decodeIntegerForKey:@"categoryBitMask"]);
    -[SCNCamera setTechnique:](v4, "setTechnique:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"technique"]);
    if ([a3 containsValueForKey:@"wantsHDR"])
    {
      -[SCNCamera setWantsHDR:](v4, "setWantsHDR:", [a3 decodeBoolForKey:@"wantsHDR"]);
      -[SCNCamera setWantsExposureAdaptation:](v4, "setWantsExposureAdaptation:", [a3 decodeBoolForKey:@"wantsExposureAdaptation"]);
      [a3 decodeFloatForKey:@"whitePoint"];
      [(SCNCamera *)v4 setWhitePoint:v26];
      [a3 decodeFloatForKey:@"averageGray"];
      [(SCNCamera *)v4 setAverageGray:v27];
      [a3 decodeFloatForKey:@"exposureOffset"];
      [(SCNCamera *)v4 setExposureOffset:v28];
      [a3 decodeFloatForKey:@"exposureAdaptationDuration"];
      [(SCNCamera *)v4 setExposureAdaptationDuration:v29];
      [a3 decodeFloatForKey:@"exposureAdaptationBrighteningSpeedFactor"];
      [(SCNCamera *)v4 setExposureAdaptationBrighteningSpeedFactor:v30];
      [a3 decodeFloatForKey:@"exposureAdaptationDarkeningSpeedFactor"];
      [(SCNCamera *)v4 setExposureAdaptationDarkeningSpeedFactor:v31];
      if ([a3 containsValueForKey:@"exposureAdaptationMode"])
      {
        [a3 decodeFloatForKey:@"exposureAdaptationHistogramRangeLowProbability"];
        [(SCNCamera *)v4 setExposureAdaptationHistogramRangeLowProbability:v32];
        [a3 decodeFloatForKey:@"exposureAdaptationHistogramRangeHighProbability"];
        [(SCNCamera *)v4 setExposureAdaptationHistogramRangeHighProbability:v33];
        -[SCNCamera setExposureAdaptationMode:](v4, "setExposureAdaptationMode:", [a3 decodeIntegerForKey:@"exposureAdaptationMode"]);
      }

      [a3 decodeFloatForKey:@"minimumExposure"];
      [(SCNCamera *)v4 setMinimumExposure:v34];
      [a3 decodeFloatForKey:@"maximumExposure"];
      [(SCNCamera *)v4 setMaximumExposure:v35];
      [a3 decodeFloatForKey:@"bloomIntensity"];
      [(SCNCamera *)v4 setBloomIntensity:v36];
      [a3 decodeFloatForKey:@"bloomThreshold"];
      [(SCNCamera *)v4 setBloomThreshold:v37];
      if ([a3 containsValueForKey:@"bloomIteration"])
      {
        -[SCNCamera setBloomIterationCount:](v4, "setBloomIterationCount:", [a3 decodeIntegerForKey:@"bloomIteration"]);
        [a3 decodeFloatForKey:@"bloomIterationSpread"];
        [(SCNCamera *)v4 setBloomIterationSpread:v38];
      }

      [a3 decodeFloatForKey:@"bloomBlurRadius"];
      [(SCNCamera *)v4 setBloomBlurRadius:v39];
      [a3 decodeFloatForKey:@"motionBlurIntensity"];
      [(SCNCamera *)v4 setMotionBlurIntensity:v40];
    }

    *&v4->_wantsHDR = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"colorGrading"];
    if ([a3 containsValueForKey:@"vignettingPower"])
    {
      [a3 decodeFloatForKey:@"vignettingPower"];
      [(SCNCamera *)v4 setVignettingPower:v41];
      [a3 decodeFloatForKey:@"vignettingIntensity"];
      [(SCNCamera *)v4 setVignettingIntensity:v42];
      [a3 decodeFloatForKey:@"colorFringeStrength"];
      [(SCNCamera *)v4 setColorFringeStrength:v43];
      [a3 decodeFloatForKey:@"colorFringeIntensity"];
      [(SCNCamera *)v4 setColorFringeIntensity:v44];
      [a3 decodeFloatForKey:@"saturation"];
      [(SCNCamera *)v4 setSaturation:v45];
      [a3 decodeFloatForKey:@"contrast"];
      [(SCNCamera *)v4 setContrast:v46];
      [a3 decodeFloatForKey:@"whiteBalanceTemperature"];
      [(SCNCamera *)v4 setWhiteBalanceTemperature:v47];
      [a3 decodeFloatForKey:@"whiteBalanceTint"];
      [(SCNCamera *)v4 setWhiteBalanceTint:v48];
    }

    if ([a3 containsValueForKey:@"grainIntensity"])
    {
      [a3 decodeFloatForKey:@"grainIntensity"];
      [(SCNCamera *)v4 setGrainIntensity:v49];
      [a3 decodeFloatForKey:@"grainScale"];
      [(SCNCamera *)v4 setGrainScale:v50];
      -[SCNCamera setGrainIsColored:](v4, "setGrainIsColored:", [a3 decodeBoolForKey:@"grainIsColored"]);
    }

    if ([a3 containsValueForKey:@"screenSpaceAmbientOcclusionIntensity"])
    {
      [a3 decodeFloatForKey:@"screenSpaceAmbientOcclusionIntensity"];
      [(SCNCamera *)v4 setScreenSpaceAmbientOcclusionIntensity:v51];
      [a3 decodeFloatForKey:@"screenSpaceAmbientOcclusionRadius"];
      [(SCNCamera *)v4 setScreenSpaceAmbientOcclusionRadius:v52];
      [a3 decodeFloatForKey:@"screenSpaceAmbientOcclusionBias"];
      [(SCNCamera *)v4 setScreenSpaceAmbientOcclusionBias:v53];
      [a3 decodeFloatForKey:@"screenSpaceAmbientOcclusionDepthThreshold"];
      [(SCNCamera *)v4 setScreenSpaceAmbientOcclusionDepthThreshold:v54];
      [a3 decodeFloatForKey:@"screenSpaceAmbientOcclusionNormalThreshold"];
      [(SCNCamera *)v4 setScreenSpaceAmbientOcclusionNormalThreshold:v55];
      -[SCNCamera setScreenSpaceAmbientOcclusionSampleCount:](v4, "setScreenSpaceAmbientOcclusionSampleCount:", [a3 decodeIntegerForKey:@"screenSpaceAmbientOcclusionSampleCount"]);
      -[SCNCamera setScreenSpaceAmbientOcclusionDownSample:](v4, "setScreenSpaceAmbientOcclusionDownSample:", [a3 decodeIntegerForKey:@"screenSpaceAmbientOcclusionDownSample"]);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(a3, v4);
    SCNDecodeAnimations(a3, v4);
    [(SCNCamera *)v4 _didDecodeSCNCamera:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (id)debugQuickLookObject
{
  v3 = [(SCNCamera *)self sceneRef];
  if (!v3)
  {
    return 0;
  }

  v4 = [SCNScene sceneWithSceneRef:v3];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v5 = [(SCNScene *)v4 rootNode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SCNCamera_SCN_DTAdditions__debugQuickLookObject__block_invoke;
  v8[3] = &unk_2782FD1D8;
  v8[4] = self;
  v8[5] = &v9;
  [(SCNNode *)v5 enumerateChildNodesUsingBlock:v8];
  if (!v10[5])
  {
    _Block_object_dispose(&v9, 8);
    return 0;
  }

  v6 = [(SCNScene *)v4 debugQuickLookObjectWithPointOfView:?];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __50__SCNCamera_SCN_DTAdditions__debugQuickLookObject__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 camera];
  if (result == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a3 = 1;
  }

  return result;
}

- (id)debugQuickLookData
{
  v2 = [(SCNCamera *)self debugQuickLookObject];

  return UIImagePNGRepresentation(v2);
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionBias:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionDepthThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionNormalThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionSampleCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setScreenSpaceAmbientOcclusionDownSample:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAutomaticallyAdjustsZRange:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAverageGray:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBloomBlurRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBloomIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBloomThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBloomIterationCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBloomIterationSpread:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setCategoryBitMask:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setColorFringeStrength:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setColorFringeIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setContrast:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setGrainIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setGrainScale:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setGrainIsColored:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setGrainSlice:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setGrainTexture:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWhiteBalanceTemperature:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWhiteBalanceTint:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationBrighteningSpeedFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationDarkeningSpeedFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationHistogramRangeHighProbability:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationHistogramRangeLowProbability:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureAdaptationMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setExposureOffset:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setDofIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setMaximumExposure:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setMinimumExposure:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setMotionBlurIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setOrthographicScale:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSaturation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setUsesOrthographicProjection:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setVignettingIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setVignettingPower:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWantsExposureAdaptation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWantsHDR:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWhitePoint:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setXFov:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setYFov:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setZFar:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setZNear:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setLensShift:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPostProjectionTransform:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPostProjectionTransformTranslation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPostProjectionTransformScale:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFieldOfView:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSensorHeight:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFocalLength:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFStop:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setApertureBladeCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFocalBlurSampleCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFocusDistance:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setProjectionTransform:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end