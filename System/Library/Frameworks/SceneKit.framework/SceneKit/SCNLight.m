@interface SCNLight
+ (SCNLight)light;
+ (SCNLight)lightWithLightRef:(__C3DLight *)a3;
+ (SCNLight)lightWithMDLLight:(MDLLight *)mdlLight;
+ (SCNLight)lightWithMDLLightProbe:(id)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)automaticallyAdjustsShadowProjection;
- (BOOL)castsShadow;
- (BOOL)doubleSided;
- (BOOL)drawsArea;
- (BOOL)forcesBackFaceCasters;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (BOOL)isBaked;
- (BOOL)parallaxCorrectionEnabled;
- (BOOL)sampleDistributedShadowMaps;
- (BOOL)usesDeferredShadows;
- (BOOL)usesModulatedMode;
- (CGFloat)attenuationEndDistance;
- (CGFloat)attenuationFalloffExponent;
- (CGFloat)attenuationStartDistance;
- (CGFloat)intensity;
- (CGFloat)maximumShadowDistance;
- (CGFloat)orthographicScale;
- (CGFloat)shadowBias;
- (CGFloat)shadowCascadeSplittingFactor;
- (CGFloat)shadowRadius;
- (CGFloat)spotInnerAngle;
- (CGFloat)spotOuterAngle;
- (CGFloat)temperature;
- (CGFloat)zFar;
- (CGFloat)zNear;
- (CGSize)shadowMapSize;
- (NSArray)animationKeys;
- (NSArray)areaPolygonVertices;
- (NSString)description;
- (NSString)name;
- (NSUInteger)categoryBitMask;
- (NSUInteger)shadowCascadeCount;
- (NSUInteger)shadowSampleCount;
- (NSURL)IESProfileURL;
- (SCNLight)init;
- (SCNLight)initWithCoder:(id)a3;
- (SCNLight)initWithLightRef:(__C3DLight *)a3;
- (SCNLightAreaType)areaType;
- (SCNLightProbeType)probeType;
- (SCNLightProbeUpdateType)probeUpdateType;
- (SCNLightType)type;
- (SCNMaterialProperty)gobo;
- (SCNMaterialProperty)probeEnvironment;
- (SCNShadowMode)shadowMode;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)_shadowCascadeDebugFactor;
- (double)spotFalloffExponent;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)attributeForKey:(NSString *)key;
- (id)color;
- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)initPresentationLightWithLightRef:(__C3DLight *)a3;
- (id)presentationLight;
- (id)scene;
- (id)shadowColor;
- (id)technique;
- (simd_float3)areaExtents;
- (simd_float3)parallaxCenterOffset;
- (simd_float3)parallaxExtentsFactor;
- (simd_float3)probeExtents;
- (simd_float3)probeOffset;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customDecodingOfSCNLight:(id)a3;
- (void)_customEncodingOfSCNLight:(id)a3;
- (void)_didDecodeSCNLight:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_resyncObjCModelOfPerTypeParameters;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setAreaExtents:(simd_float3)areaExtents;
- (void)setAreaPolygonVertices:(NSArray *)areaPolygonVertices;
- (void)setAreaType:(SCNLightAreaType)areaType;
- (void)setAttenuationEndDistance:(CGFloat)attenuationEndDistance;
- (void)setAttenuationFalloffExponent:(CGFloat)attenuationFalloffExponent;
- (void)setAttenuationStartDistance:(CGFloat)attenuationStartDistance;
- (void)setAttribute:(id)attribute forKey:(NSString *)key;
- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)automaticallyAdjustsShadowProjection;
- (void)setBaked:(BOOL)a3;
- (void)setCastsShadow:(BOOL)castsShadow;
- (void)setCategoryBitMask:(NSUInteger)categoryBitMask;
- (void)setColor:(id)color;
- (void)setDoubleSided:(BOOL)doubleSided;
- (void)setDrawsArea:(BOOL)drawsArea;
- (void)setForcesBackFaceCasters:(BOOL)forcesBackFaceCasters;
- (void)setIESProfileURL:(NSURL *)IESProfileURL;
- (void)setIdentifier:(id)a3;
- (void)setIntensity:(CGFloat)intensity;
- (void)setMaximumShadowDistance:(CGFloat)maximumShadowDistance;
- (void)setName:(NSString *)name;
- (void)setOrthographicScale:(CGFloat)orthographicScale;
- (void)setParallaxCenterOffset:(simd_float3)parallaxCenterOffset;
- (void)setParallaxCorrectionEnabled:(BOOL)parallaxCorrectionEnabled;
- (void)setParallaxExtentsFactor:(simd_float3)parallaxExtentsFactor;
- (void)setProbeExtents:(simd_float3)probeExtents;
- (void)setProbeOffset:(simd_float3)probeOffset;
- (void)setProbeType:(SCNLightProbeType)probeType;
- (void)setProbeUpdateType:(SCNLightProbeUpdateType)probeUpdateType;
- (void)setSampleDistributedShadowMaps:(BOOL)sampleDistributedShadowMaps;
- (void)setShadowBias:(CGFloat)shadowBias;
- (void)setShadowCascadeCount:(NSUInteger)shadowCascadeCount;
- (void)setShadowCascadeSplittingFactor:(CGFloat)shadowCascadeSplittingFactor;
- (void)setShadowColor:(id)shadowColor;
- (void)setShadowMapSize:(CGSize)shadowMapSize;
- (void)setShadowMode:(SCNShadowMode)shadowMode;
- (void)setShadowRadius:(CGFloat)shadowRadius;
- (void)setShadowSampleCount:(NSUInteger)shadowSampleCount;
- (void)setShouldBakeDirectLighting:(BOOL)a3;
- (void)setShouldBakeIndirectLighting:(BOOL)a3;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setSphericalHarmonicsCoefficients:(id)a3;
- (void)setSpotFalloffExponent:(double)a3;
- (void)setSpotInnerAngle:(CGFloat)spotInnerAngle;
- (void)setSpotOuterAngle:(CGFloat)spotOuterAngle;
- (void)setTechnique:(id)a3;
- (void)setTemperature:(CGFloat)temperature;
- (void)setType:(SCNLightType)type;
- (void)setUsesDeferredShadows:(BOOL)a3;
- (void)setUsesModulatedMode:(BOOL)a3;
- (void)setZFar:(CGFloat)zFar;
- (void)setZNear:(CGFloat)zNear;
- (void)set_shadowCascadeDebugFactor:(double)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNLight

+ (SCNLight)lightWithMDLLight:(MDLLight *)mdlLight
{
  v4 = [a1 light];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SCNLight setColor:](v4, "setColor:", [MEMORY[0x277D75348] colorWithCGColor:{-[MDLLight color](mdlLight, "color")}]);
    [(MDLLight *)mdlLight attenuationStartDistance];
    [(SCNLight *)v4 setAttenuationStartDistance:v5];
    [(MDLLight *)mdlLight attenuationEndDistance];
    [(SCNLight *)v4 setAttenuationEndDistance:v6];
    [(MDLLight *)mdlLight innerConeAngle];
    [(SCNLight *)v4 setSpotInnerAngle:v7];
    [(MDLLight *)mdlLight outerConeAngle];
    [(SCNLight *)v4 setSpotOuterAngle:v8];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[SCNLight setColor:](v4, "setColor:", [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]);
    }
  }

  v9 = [(MDLLight *)mdlLight lightType];
  if (v9 - 1 <= 3)
  {
    [(SCNLight *)v4 setType:*off_2782FB358[v9 - 1]];
  }

  return v4;
}

+ (SCNLight)lightWithMDLLightProbe:(id)a3
{
  v3 = [a1 light];
  [(SCNLight *)v3 setType:@"probe"];
  return v3;
}

- (SCNLight)init
{
  v5.receiver = self;
  v5.super_class = SCNLight;
  v2 = [(SCNLight *)&v5 init];
  if (v2)
  {
    v3 = C3DLightCreate();
    v2->_light = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNLight *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNLight)initWithLightRef:(__C3DLight *)a3
{
  v7.receiver = self;
  v7.super_class = SCNLight;
  v4 = [(SCNLight *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_light = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNLight *)v4 _syncObjCModel];
    [(SCNLight *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationLightWithLightRef:(__C3DLight *)a3
{
  v7.receiver = self;
  v7.super_class = SCNLight;
  v4 = [(SCNLight *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v4->_light = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNLight)light
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNLight)lightWithLightRef:(__C3DLight *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithLightRef:a3];

    return v6;
  }

  return result;
}

- (void)dealloc
{
  light = self->_light;
  if (light)
  {
    if ((*(self + 16) & 1) == 0)
    {
      C3DEntitySetObjCWrapper(light, 0);
      light = self->_light;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __19__SCNLight_dealloc__block_invoke;
    v5[3] = &__block_descriptor_40_e8_v16__0d8l;
    v5[4] = light;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v5];
  }

  [(SCNMaterialProperty *)self->_gobo parentWillDie:self];
  [(SCNMaterialProperty *)self->_probeEnvironment parentWillDie:self];

  v4.receiver = self;
  v4.super_class = SCNLight;
  [(SCNLight *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [(NSString *)[(SCNLight *)self name] length];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    return [v4 stringWithFormat:@"<%@: %p '%@' | type=%@>", v6, self, -[SCNLight name](self, "name"), -[SCNLight type](self, "type")];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@: %p | type=%@>", v6, self, -[SCNLight type](self, "type"), v8];
  }
}

- (void)setName:(NSString *)name
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setName:];
    }
  }

  else if (name | self->_name)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {

      self->_name = [(NSString *)name copy];
      v5 = [(SCNLight *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __20__SCNLight_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = name;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

CFStringRef __20__SCNLight_setName___block_invoke(uint64_t a1)
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

  v4 = [(SCNLight *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Name = C3DEntityGetName([(SCNLight *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNLight *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNLight *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNLight *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (void)_syncObjCModel
{
  v3 = [(SCNLight *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  Type = C3DLightGetType(self->_light);
  self->_type = SCNLightTypeFromC3DLightType(Type);
  Color = C3DLightGetColor(self->_light);

  self->_color = [MEMORY[0x277D75348] scn_colorWithC3DColor:Color];
  self->_intensity = C3DLightGetIntensity(self->_light);
  self->_temperature = C3DLightGetTemperature(self->_light);
  v24[0] = C3DLightGetShadowColor(self->_light);
  v24[1] = v7;

  self->_shadowColor = [MEMORY[0x277D75348] scn_colorWithC3DColor:v24];
  if (C3DLightGetCastsShadow(self->_light))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v8;
  self->_shadowRadius = C3DLightGetShadowRadius(self->_light);
  self->_zNear = C3DLightGetZNear(self->_light);
  self->_zFar = C3DLightGetZFar(self->_light);
  self->_shadowBias = C3DLightGetShadowBias(self->_light);
  self->_attenuationEndDistance = C3DLightGetAttenuationStartDistance(self->_light);
  self->_attenuationFalloffExponent = C3DLightGetAttenuationEndDistance(self->_light);
  self->_spotInnerAngle = C3DLightGetAttenuationFalloffExponent(self->_light);
  self->_spotOuterAngle = C3DLightGetSpotInnerAngle(self->_light);
  self->_spotFalloffExponent = C3DLightGetSpotOuterAngle(self->_light);
  *(&self->_spotFalloffExponent + 1) = C3DLightGetSpotFalloffExponent(self->_light);

  Gobo = C3DLightGetGobo(self->_light, 0);
  if (Gobo)
  {
    Gobo = [[SCNMaterialProperty alloc] initWithParent:self propertyType:22];
  }

  self->_gobo = Gobo;
  v22 = 0u;
  v23 = 0u;
  C3DLightGetAreaDescription(self->_light, &v22);
  v10 = v22;
  self->_areaType = v22;
  v11 = v23;
  __asm { FMOV            V0.4S, #1.0 }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
LABEL_14:
      v11.i32[2] = 0.5;
      goto LABEL_15;
    }

    if (v10 == 3)
    {
LABEL_15:
      _Q0 = vaddq_f32(v11, v11);
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_14;
    }

    _Q0.f32[0] = v23.f32[0] + v23.f32[0];
  }

  *self->_areaExtents = _Q0;
  v21[0] = v22;
  v21[1] = v23;
  self->_areaPolygonVertices = _SCNAreaLightpolygonVerticesFromDescription(v21);
  self->_drawsArea = C3DLightGetDrawsArea(self->_light);
  self->_doubleSided = C3DLightGetDoubleSided(self->_light);
  self->_categoryBitMask = C3DLightGetCategoryBitMask(self->_light);
  self->_orthographicScale = C3DLightGetOrthographicScale(self->_light);
  self->_shadowSampleCount = C3DLightGetShadowSampleCount(self->_light);
  if (C3DLightGetUsesDeferredShadows(self->_light))
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v17;
  if (C3DLightGetAutomaticallyAdjustsShadowProjection(self->_light))
  {
    v18 = 0x80;
  }

  else
  {
    v18 = 0;
  }

  *(self + 16) = v18 & 0x80 | *(self + 16) & 0x7F;
  self->_maximumShadowDistance = C3DMeshElementGetPointSize(self->_light);
  self->_shadowCascadeCount = C3DLightGetShadowCascadeCount(self->_light);
  self->_shadowCascadeSplittingFactor = C3DLightGetShadowCascadeSplittingFactor(self->_light);
  *(self + 17) = *(self + 17) & 0xFE | C3DLightGetForceCasterBackFaceOnly(self->_light);
  if (C3DLightGetEnableSampleDistributed(self->_light))
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(self + 17) = *(self + 17) & 0xFD | v19;

  ProbeEnvironment = C3DLightGetProbeEnvironment(self->_light, 0);
  if (ProbeEnvironment)
  {
    ProbeEnvironment = [[SCNMaterialProperty alloc] initWithParent:self propertyType:25];
  }

  self->_probeEnvironment = ProbeEnvironment;
  self->_probeType = C3DLightGetProbeType(self->_light);
  self->_probeUpdateType = C3DLightGetProbeUpdateType(self->_light);
  self->_parallaxCorrectionEnabled = C3DLightGetParallaxCorrectionEnabled(self->_light);
  *&self->_probeExtents[7] = C3DLightGetProbeExtents(self->_light);
  *&self->_probeOffset[7] = C3DLightGetProbeOffset(self->_light);
  *&self->_parallaxExtentsFactor[7] = C3DLightGetParallaxExtentsFactor(self->_light);
  *&self->_parallaxCenterOffset[7] = C3DLightGetParallaxCenterOffset(self->_light);
  [(SCNLight *)self _syncEntityObjCModel];
  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)presentationLight
{
  if ((*(self + 16) & 1) == 0)
  {
    v2 = [[SCNLight alloc] initPresentationLightWithLightRef:*(self + 1)];

    return v2;
  }

  return self;
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNLight *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNLight *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4
{
  if (self->_gobo != a4)
  {
    return 0;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"gobo", a3];

  return SCNCreateAnimationChannelWithObjectAndPath(self, v7);
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNLight *)self sceneRef];
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
    v8 = [(SCNLight *)self __CFObject];
    if ((CFTypeIsC3DEntity(v8) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SCNTechnique __removeAnimation:v9 forKey:?];
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
    v8 = [(SCNLight *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SCNLight_addAnimationPlayer_forKey___block_invoke;
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

void __38__SCNLight_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
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
    [(SCNLight *)self addAnimationPlayer:v7 forKey:v5];

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
  v3 = [(SCNLight *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SCNLight_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNLight *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SCNLight_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    v5 = [(SCNLight *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__SCNLight_removeAnimationForKey___block_invoke;
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
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SCNLight_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = [(SCNLight *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNLight *)self __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNTechnique *)v7 _syncObjCAnimations];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v9 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v9, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
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
  v3 = [(SCNLight *)self _scnAnimationForKey:a3];
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
        [(SCNLight *)self addAnimationPlayer:v11 forKey:v10];
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
  v9 = [(SCNLight *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNLight *)self animationManager];
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
  v5 = [(SCNLight *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNLight_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNLight *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SCNLight_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNLight *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__SCNLight_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __37__SCNLight_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  v5 = [(SCNLight *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNLight *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNLight *)self animationManager];
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

    v15 = [(SCNLight *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SCNLight_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __60__SCNLight_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  v5 = [(SCNLight *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNLight_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __33__SCNLight_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNLight *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__SCNLight_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __29__SCNLight_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqual:@"color"])
  {

    [(SCNLight *)self setColor:a4];
  }

  else if (([a3 isEqual:@"image"] & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = SCNLight;
    [(SCNLight *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v4 setIdentifier:{-[SCNLight identifier](self, "identifier")}];
  [(SCNLight *)self intensity];
  [v4 setIntensity:?];
  [v4 setColor:{-[SCNLight color](self, "color")}];
  [v4 setName:{-[SCNLight name](self, "name")}];
  [v4 setType:{-[SCNLight type](self, "type")}];
  [v4 setShadowColor:{-[SCNLight shadowColor](self, "shadowColor")}];
  [(SCNLight *)self shadowRadius];
  [v4 setShadowRadius:?];
  [v4 setCastsShadow:{-[SCNLight castsShadow](self, "castsShadow")}];
  [v4 setShadowSampleCount:{-[SCNLight shadowSampleCount](self, "shadowSampleCount")}];
  [(SCNLight *)self orthographicScale];
  [v4 setOrthographicScale:?];
  [(SCNLight *)self zNear];
  [v4 setZNear:?];
  [(SCNLight *)self zFar];
  [v4 setZFar:?];
  [v4 setCategoryBitMask:{-[SCNLight categoryBitMask](self, "categoryBitMask")}];
  [(SCNLight *)self attenuationEndDistance];
  [v4 setAttenuationEndDistance:?];
  [(SCNLight *)self attenuationStartDistance];
  [v4 setAttenuationStartDistance:?];
  [(SCNLight *)self attenuationFalloffExponent];
  [v4 setAttenuationFalloffExponent:?];
  [(SCNLight *)self spotInnerAngle];
  [v4 setSpotInnerAngle:?];
  [(SCNLight *)self spotOuterAngle];
  [v4 setSpotOuterAngle:?];
  [(SCNLight *)self maximumShadowDistance];
  [v4 setMaximumShadowDistance:?];
  [v4 setAutomaticallyAdjustsShadowProjection:{-[SCNLight automaticallyAdjustsShadowProjection](self, "automaticallyAdjustsShadowProjection")}];
  [v4 setShadowCascadeCount:{-[SCNLight shadowCascadeCount](self, "shadowCascadeCount")}];
  if (self->_gobo)
  {
    [objc_msgSend(v4 "gobo")];
  }

  [v4 setIESProfileURL:{-[SCNLight IESProfileURL](self, "IESProfileURL")}];
  [v4 setAreaType:{-[SCNLight areaType](self, "areaType")}];
  [(SCNLight *)self areaExtents];
  [v4 setAreaExtents:?];
  [v4 setAreaPolygonVertices:{-[SCNLight areaPolygonVertices](self, "areaPolygonVertices")}];
  [v4 setDrawsArea:{-[SCNLight drawsArea](self, "drawsArea")}];
  [v4 setDoubleSided:{-[SCNLight doubleSided](self, "doubleSided")}];
  [v4 setProbeType:{-[SCNLight probeType](self, "probeType")}];
  [v4 setProbeUpdateType:{-[SCNLight probeUpdateType](self, "probeUpdateType")}];
  [(SCNLight *)self probeExtents];
  [v4 setProbeExtents:?];
  [(SCNLight *)self probeOffset];
  [v4 setProbeOffset:?];
  [v4 setParallaxCorrectionEnabled:{-[SCNLight parallaxCorrectionEnabled](self, "parallaxCorrectionEnabled")}];
  if (self->_probeEnvironment)
  {
    [objc_msgSend(v4 "probeEnvironment")];
  }

  [v4 _copyAnimationsFrom:self];
  +[SCNTransaction commitImmediate];
  return v4;
}

- (void)setAttribute:(id)attribute forKey:(NSString *)key
{
  if ([(NSString *)key isEqualToString:@"SCNLightAttenuationStartKey"])
  {
    [attribute floatValue];
    v8 = v7;

    [(SCNLight *)self setAttenuationStartDistance:v8];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightAttenuationEndKey"])
  {
    [attribute floatValue];
    v10 = v9;

    [(SCNLight *)self setAttenuationEndDistance:v10];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightAttenuationFalloffExponentKey"])
  {
    [attribute floatValue];
    v12 = v11;

    [(SCNLight *)self setAttenuationFalloffExponent:v12];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotInnerAngleKey"])
  {
    [attribute floatValue];
    v14 = v13;

    [(SCNLight *)self setSpotInnerAngle:v14];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotOuterAngleKey"])
  {
    [attribute floatValue];
    v16 = v15;

    [(SCNLight *)self setSpotOuterAngle:v16];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotFalloffExponentKey"])
  {
    [attribute floatValue];
    v18 = v17;

    [(SCNLight *)self setSpotFalloffExponent:v18];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightShadowNearClippingKey"])
  {
    [attribute floatValue];
    v20 = v19;

    [(SCNLight *)self setZNear:v20];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightShadowFarClippingKey"])
  {
    [attribute floatValue];
    v22 = v21;

    [(SCNLight *)self setZFar:v22];
  }
}

- (id)attributeForKey:(NSString *)key
{
  if ([(NSString *)key isEqualToString:@"SCNLightAttenuationStartKey"])
  {
    [(SCNLight *)self attenuationStartDistance];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightAttenuationEndKey"])
  {
    [(SCNLight *)self attenuationEndDistance];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightAttenuationFalloffExponentKey"])
  {
    [(SCNLight *)self attenuationFalloffExponent];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotInnerAngleKey"])
  {
    [(SCNLight *)self spotInnerAngle];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotOuterAngleKey"])
  {
    [(SCNLight *)self spotOuterAngle];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightSpotFalloffExponentKey"])
  {
    [(SCNLight *)self spotFalloffExponent];
  }

  else if ([(NSString *)key isEqualToString:@"SCNLightShadowNearClippingKey"])
  {
    [(SCNLight *)self zNear];
  }

  else
  {
    if (![(NSString *)key isEqualToString:@"SCNLightShadowFarClippingKey"])
    {
      return 0;
    }

    [(SCNLight *)self zFar];
  }

  v6 = MEMORY[0x277CCABB0];
  *&v5 = v5;

  return [v6 numberWithFloat:v5];
}

- (void)setSphericalHarmonicsCoefficients:(id)a3
{
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics != a3)
  {
    v9[10] = v3;
    v9[11] = v4;

    self->_sphericalHarmonics = [a3 copy];
    v8 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SCNLight_setSphericalHarmonicsCoefficients___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = self;
    v9[5] = a3;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }
}

- (void)setShouldBakeDirectLighting:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xDF | v3;
}

- (void)setShouldBakeIndirectLighting:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xBF | v3;
}

- (CGFloat)attenuationEndDistance
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      AttenuationEndDistance = C3DLightGetAttenuationEndDistance(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetAttenuationEndDistance(self->_light);
    }
  }

  else
  {
    return self->_attenuationFalloffExponent;
  }

  return AttenuationEndDistance;
}

- (void)setAttenuationEndDistance:(CGFloat)attenuationEndDistance
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setAttenuationEndDistance:];
    }
  }

  else if (self->_attenuationFalloffExponent != attenuationEndDistance)
  {
    v5 = attenuationEndDistance;
    self->_attenuationFalloffExponent = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNLight_setAttenuationEndDistance___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = attenuationEndDistance;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"attenuationEndDistance" applyBlock:v8];
  }
}

float __38__SCNLight_setAttenuationEndDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetAttenuationEndDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)attenuationFalloffExponent
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      AttenuationFalloffExponent = C3DLightGetAttenuationFalloffExponent(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetAttenuationFalloffExponent(self->_light);
    }
  }

  else
  {
    return self->_spotInnerAngle;
  }

  return AttenuationFalloffExponent;
}

- (void)setAttenuationFalloffExponent:(CGFloat)attenuationFalloffExponent
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setAttenuationFalloffExponent:];
    }
  }

  else if (self->_spotInnerAngle != attenuationFalloffExponent)
  {
    v5 = attenuationFalloffExponent;
    self->_spotInnerAngle = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNLight_setAttenuationFalloffExponent___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = attenuationFalloffExponent;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"attenuationFalloffExponent" applyBlock:v8];
  }
}

float __42__SCNLight_setAttenuationFalloffExponent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetAttenuationFalloffExponent(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)attenuationStartDistance
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      AttenuationStartDistance = C3DLightGetAttenuationStartDistance(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetAttenuationStartDistance(self->_light);
    }
  }

  else
  {
    return self->_attenuationEndDistance;
  }

  return AttenuationStartDistance;
}

- (void)setAttenuationStartDistance:(CGFloat)attenuationStartDistance
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setAttenuationStartDistance:];
    }
  }

  else if (self->_attenuationEndDistance != attenuationStartDistance)
  {
    v5 = attenuationStartDistance;
    self->_attenuationEndDistance = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SCNLight_setAttenuationStartDistance___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = attenuationStartDistance;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"attenuationStartDistance" applyBlock:v8];
  }
}

float __40__SCNLight_setAttenuationStartDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetAttenuationStartDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)isBaked
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNLight *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      Baked = C3DLightGetBaked(self->_light);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = Baked;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetBaked(light);
    }
  }

  else
  {
    return (v2 >> 4) & 1;
  }

  return v3;
}

- (void)setBaked:(BOOL)a3
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setBaked:];
    }
  }

  else if (((((v4 & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0xEE | v6;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __21__SCNLight_setBaked___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (BOOL)castsShadow
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNLight *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      CastsShadow = C3DLightGetCastsShadow(self->_light);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = CastsShadow;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetCastsShadow(light);
    }
  }

  else
  {
    return (v2 >> 1) & 1;
  }

  return v3;
}

- (void)setCastsShadow:(BOOL)castsShadow
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setCastsShadow:];
    }
  }

  else if (((((v4 & 2) == 0) ^ castsShadow) & 1) == 0)
  {
    if (castsShadow)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0xFC | v6;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNLight_setCastsShadow___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = castsShadow;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (NSUInteger)categoryBitMask
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    CategoryBitMask = C3DLightGetCategoryBitMask(self->_light);
    C3DSceneUnlock(v5);
    return CategoryBitMask;
  }

  else
  {
    light = self->_light;

    return C3DLightGetCategoryBitMask(light);
  }
}

- (void)setCategoryBitMask:(NSUInteger)categoryBitMask
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setCategoryBitMask:];
    }
  }

  else if (self->_categoryBitMask != categoryBitMask)
  {
    self->_categoryBitMask = categoryBitMask;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNLight_setCategoryBitMask___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = categoryBitMask;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (id)color
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_color;
  }

  v4 = [(SCNLight *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Color = C3DLightGetColor(self->_light);
  v3 = C3DColor4ToRGBCFColor(Color);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return v3;
}

- (void)setColor:(id)color
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setColor:];
    }
  }

  else
  {
    v5 = self->_color;
    if (v5 != color)
    {

      self->_color = color;
      v6 = [(SCNLight *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __21__SCNLight_setColor___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = color;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"color" applyBlock:v8];
    }
  }
}

void __21__SCNLight_setColor___block_invoke(uint64_t a1)
{
  v3[0] = C3DColor4FromRGBCFColor(*(a1 + 32), 0);
  v3[1] = v2;
  C3DLightSetColor(*(*(a1 + 40) + 8), v3);
}

- (CGFloat)intensity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_intensity;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetIntensity(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  Intensity = C3DLightGetIntensity(self->_light);
  C3DSceneUnlock(v5);
  return Intensity;
}

- (void)setIntensity:(CGFloat)intensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setIntensity:];
    }
  }

  else if (self->_intensity != intensity)
  {
    self->_intensity = intensity;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__SCNLight_setIntensity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = intensity;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"intensity" applyBlock:v7];
  }
}

float __25__SCNLight_setIntensity___block_invoke(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  a2.i64[0] = *(a1 + 40);
  a2.f32[0] = *a2.i64;
  C3DLightSetIntensity(*(*(a1 + 32) + 8), a2, a3, a4, a5, a6, a7, a8);
  return result;
}

- (CGFloat)orthographicScale
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_orthographicScale;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetOrthographicScale(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  OrthographicScale = C3DLightGetOrthographicScale(self->_light);
  C3DSceneUnlock(v5);
  return OrthographicScale;
}

- (void)setOrthographicScale:(CGFloat)orthographicScale
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setOrthographicScale:];
    }
  }

  else if (self->_orthographicScale != orthographicScale)
  {
    self->_orthographicScale = orthographicScale;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNLight_setOrthographicScale___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = orthographicScale;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"orthographicScale" applyBlock:v7];
  }
}

float __33__SCNLight_setOrthographicScale___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetOrthographicScale(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)shadowBias
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shadowBias;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ShadowBias = C3DLightGetShadowBias(self->_light);
    C3DSceneUnlock(v5);
    return ShadowBias;
  }

  else
  {
    light = self->_light;

    return C3DLightGetShadowBias(light);
  }
}

- (void)setShadowBias:(CGFloat)shadowBias
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowBias:];
    }
  }

  else if (self->_shadowBias != shadowBias)
  {
    self->_shadowBias = shadowBias;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__SCNLight_setShadowBias___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = shadowBias;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"shadowBias" applyBlock:v7];
  }
}

- (id)shadowColor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shadowColor;
  }

  v4 = [(SCNLight *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  v8[0] = C3DLightGetShadowColor(self->_light);
  v8[1] = v6;
  v3 = C3DColor4ToRGBCFColor(v8);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return v3;
}

- (void)setShadowColor:(id)shadowColor
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowColor:];
    }
  }

  else
  {
    v5 = self->_shadowColor;
    if (v5 != shadowColor)
    {

      self->_shadowColor = shadowColor;
      v6 = [(SCNLight *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __27__SCNLight_setShadowColor___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = shadowColor;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"shadowColor" applyBlock:v8];
    }
  }
}

double __27__SCNLight_setShadowColor___block_invoke(uint64_t a1)
{
  v4.n128_u64[0] = C3DColor4FromRGBCFColor(*(a1 + 32), 0);
  v4.n128_u64[1] = v2;
  *&result = C3DLightSetShadowColor(*(*(a1 + 40) + 8), &v4).n128_u64[0];
  return result;
}

- (CGSize)shadowMapSize
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    shadowMapSize = vcvtq_f64_f32(COERCE_FLOAT32X2_T(C3DLightGetShadowMapSize(self->_light)));
    if (v5)
    {
      v7 = shadowMapSize;
      C3DSceneUnlock(v5);
      shadowMapSize = v7;
    }
  }

  else
  {
    shadowMapSize = self->_shadowMapSize;
  }

  height = shadowMapSize.height;
  result.width = shadowMapSize.width;
  result.height = height;
  return result;
}

- (void)setShadowMapSize:(CGSize)shadowMapSize
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowMapSize:];
    }
  }

  else
  {
    height = shadowMapSize.height;
    width = shadowMapSize.width;
    if (shadowMapSize.width != self->_shadowMapSize.width || shadowMapSize.height != self->_shadowMapSize.height)
    {
      self->_shadowMapSize = shadowMapSize;
      v7 = [(SCNLight *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __29__SCNLight_setShadowMapSize___block_invoke;
      v9[3] = &unk_2782FE238;
      v9[4] = self;
      *&v9[5] = width;
      *&v9[6] = height;
      [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
    }
  }
}

- (CGFloat)shadowRadius
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ShadowRadius = C3DLightGetShadowRadius(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetShadowRadius(self->_light);
    }
  }

  else
  {
    return self->_shadowRadius;
  }

  return ShadowRadius;
}

- (void)setShadowRadius:(CGFloat)shadowRadius
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowRadius:];
    }
  }

  else if (self->_shadowRadius != shadowRadius)
  {
    v5 = shadowRadius;
    self->_shadowRadius = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNLight_setShadowRadius___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = shadowRadius;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"shadowRadius" applyBlock:v8];
  }
}

float __28__SCNLight_setShadowRadius___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetShadowRadius(*(*(a1 + 32) + 8), v1);
  return result;
}

- (NSUInteger)shadowSampleCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shadowSampleCount;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetShadowSampleCount(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ShadowSampleCount = C3DLightGetShadowSampleCount(self->_light);
  C3DSceneUnlock(v5);
  return ShadowSampleCount;
}

- (void)setShadowSampleCount:(NSUInteger)shadowSampleCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowSampleCount:];
    }
  }

  else
  {
    if (shadowSampleCount >= 0x40)
    {
      v4 = 64;
    }

    else
    {
      v4 = shadowSampleCount;
    }

    if (v4 != self->_shadowSampleCount)
    {
      self->_shadowSampleCount = v4;
      v5 = [(SCNLight *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __33__SCNLight_setShadowSampleCount___block_invoke;
      v7[3] = &unk_2782FB7D0;
      v7[4] = self;
      v7[5] = v4;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

- (double)spotFalloffExponent
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      SpotFalloffExponent = C3DLightGetSpotFalloffExponent(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetSpotFalloffExponent(self->_light);
    }
  }

  else
  {
    return *(&self->_spotFalloffExponent + 1);
  }

  return SpotFalloffExponent;
}

- (void)setSpotFalloffExponent:(double)a3
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setSpotFalloffExponent:];
    }
  }

  else if (*(&self->_spotFalloffExponent + 1) != a3)
  {
    v5 = a3;
    *(&self->_spotFalloffExponent + 1) = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNLight_setSpotFalloffExponent___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"spotFalloffExponent" applyBlock:v8];
  }
}

float __35__SCNLight_setSpotFalloffExponent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetSpotFalloffExponent(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)spotInnerAngle
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      SpotInnerAngle = C3DLightGetSpotInnerAngle(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetSpotInnerAngle(self->_light);
    }
  }

  else
  {
    return self->_spotOuterAngle;
  }

  return SpotInnerAngle;
}

- (void)setSpotInnerAngle:(CGFloat)spotInnerAngle
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setSpotInnerAngle:];
    }
  }

  else if (self->_spotOuterAngle != spotInnerAngle)
  {
    v5 = spotInnerAngle;
    self->_spotOuterAngle = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNLight_setSpotInnerAngle___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = spotInnerAngle;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"spotInnerAngle" applyBlock:v8];
  }
}

float __30__SCNLight_setSpotInnerAngle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetSpotInnerAngle(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)spotOuterAngle
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      SpotOuterAngle = C3DLightGetSpotOuterAngle(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetSpotOuterAngle(self->_light);
    }
  }

  else
  {
    return self->_spotFalloffExponent;
  }

  return SpotOuterAngle;
}

- (void)setSpotOuterAngle:(CGFloat)spotOuterAngle
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setSpotOuterAngle:];
    }
  }

  else if (self->_spotFalloffExponent != spotOuterAngle)
  {
    v5 = spotOuterAngle;
    self->_spotFalloffExponent = v5;
    v6 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNLight_setSpotOuterAngle___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = spotOuterAngle;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"spotOuterAngle" applyBlock:v8];
  }
}

float __30__SCNLight_setSpotOuterAngle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetSpotOuterAngle(*(*(a1 + 32) + 8), v1);
  return result;
}

- (id)technique
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    Technique = C3DLightGetTechnique(self->_light);
    if (Technique)
    {
      v3 = [SCNTechnique techniqueWithTechniqueRef:Technique];
      if (!v5)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    C3DSceneUnlock(v5);
    return v3;
  }

  return self->_technique;
}

- (void)setTechnique:(id)a3
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setTechnique:];
    }
  }

  else
  {
    technique = self->_technique;
    if (technique != a3)
    {

      self->_technique = a3;
      v6 = [(SCNLight *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __25__SCNLight_setTechnique___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = a3;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

void __25__SCNLight_setTechnique___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) __CFObject];

  C3DLightSetTechnique(v1, v2);
}

- (CGFloat)temperature
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_temperature;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetTemperature(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  Temperature = C3DLightGetTemperature(self->_light);
  C3DSceneUnlock(v5);
  return Temperature;
}

- (void)setTemperature:(CGFloat)temperature
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setTemperature:];
    }
  }

  else if (self->_temperature != temperature)
  {
    self->_temperature = temperature;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SCNLight_setTemperature___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = temperature;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"temperature" applyBlock:v7];
  }
}

float __27__SCNLight_setTemperature___block_invoke(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  a2.i64[0] = *(a1 + 40);
  a2.f32[0] = *a2.i64;
  C3DLightSetTemperature(*(*(a1 + 32) + 8), a2, a3, a4, a5, a6, a7, a8);
  return result;
}

- (void)_resyncObjCModelOfPerTypeParameters
{
  self->_spotOuterAngle = 0.0;
  self->_spotFalloffExponent = 45.0;
  *(&self->_spotFalloffExponent + 1) = 1065353216;
  self->_drawsArea = kDefaultAreaDrawsArea;
  self->_doubleSided = kDefaultAreaDoubleSided;
  *&v3 = 0x3F0000003F000000;
  *(&v3 + 1) = 0x3F0000003F000000;
  *self->_areaExtents = v3;
  self->_areaType = 1;
  self->_probeType = kDefaultProbeType;
  self->_probeUpdateType = kDefaultProbeUpdateType;
  self->_parallaxCorrectionEnabled = kDefaultParallaxCorrectionEnabled;
  *&self->_probeExtents[7] = kDefaultProbeExtents;
  *&self->_probeOffset[7] = kDefaultProbeOffset;
  *&self->_parallaxExtentsFactor[7] = kDefaultProbeParallaxExtents;
  *&self->_parallaxCenterOffset[7] = kDefaultProbeParallaxOffset;

  self->_IESProfileURL = 0;
}

- (SCNLightType)type
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    Type = C3DLightGetType(self->_light);
    v3 = SCNLightTypeFromC3DLightType(Type);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    v3 = self->_type;
  }

  v7 = [(NSString *)v3 copy];

  return v7;
}

- (void)setType:(SCNLightType)type
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setType:];
    }
  }

  else
  {
    v5 = self->_type;
    if (v5 != type)
    {

      self->_type = [(NSString *)type copy];
      [(SCNLight *)self _resyncObjCModelOfPerTypeParameters];
      v6 = [(SCNLight *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __20__SCNLight_setType___block_invoke;
      v8[3] = &unk_2782FB820;
      v8[4] = self;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

void __20__SCNLight_setType___block_invoke(uint64_t a1)
{
  v2 = SCNLightTypeToC3DLightType(*(*(a1 + 32) + 48));
  C3DLightSetType(*(*(a1 + 32) + 8), v2);
  if (v2 == 6)
  {
    v3 = *(a1 + 32);
    v4 = v3->i64[1];
    v5 = v3[21].i64[0];
    v6 = v3[22];
    v7 = v3[23].i64[0];

    _SCNLightUpdateC3DLightDescription(v4, v5, v7, v6);
  }
}

- (BOOL)usesDeferredShadows
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNLight *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      UsesDeferredShadows = C3DLightGetUsesDeferredShadows(self->_light);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = UsesDeferredShadows;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetUsesDeferredShadows(light);
    }
  }

  else
  {
    return (v2 >> 2) & 1;
  }

  return v3;
}

- (void)setUsesDeferredShadows:(BOOL)a3
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setUsesDeferredShadows:];
    }
  }

  else if (((((v4 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0xFA | v6;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__SCNLight_setUsesDeferredShadows___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (BOOL)usesModulatedMode
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNLight *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      UsesModulatedMode = C3DLightGetUsesModulatedMode(self->_light);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = UsesModulatedMode;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetUsesModulatedMode(light);
    }
  }

  else
  {
    return (v2 >> 3) & 1;
  }

  return v3;
}

- (void)setUsesModulatedMode:(BOOL)a3
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setUsesModulatedMode:];
    }
  }

  else if (((((v4 & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0xF6 | v6;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__SCNLight_setUsesModulatedMode___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (CGFloat)zFar
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_zFar;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ZFar = C3DLightGetZFar(self->_light);
    C3DSceneUnlock(v5);
    return ZFar;
  }

  else
  {
    light = self->_light;

    return C3DLightGetZFar(light);
  }
}

- (void)setZFar:(CGFloat)zFar
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setZFar:];
    }
  }

  else if (self->_zFar != zFar)
  {
    self->_zFar = zFar;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __20__SCNLight_setZFar___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = zFar;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"zFar" applyBlock:v7];
  }
}

- (CGFloat)zNear
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_zNear;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ZNear = C3DLightGetZNear(self->_light);
    C3DSceneUnlock(v5);
    return ZNear;
  }

  else
  {
    light = self->_light;

    return C3DLightGetZNear(light);
  }
}

- (void)setZNear:(CGFloat)zNear
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setZNear:];
    }
  }

  else if (self->_zNear != zNear)
  {
    self->_zNear = zNear;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__SCNLight_setZNear___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = zNear;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"zNear" applyBlock:v7];
  }
}

- (NSUInteger)shadowCascadeCount
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ShadowCascadeCount = C3DLightGetShadowCascadeCount(self->_light);
      C3DSceneUnlock(v5);
    }

    else
    {
      return C3DLightGetShadowCascadeCount(self->_light);
    }
  }

  else
  {
    return self->_shadowCascadeCount;
  }

  return ShadowCascadeCount;
}

- (void)setShadowCascadeCount:(NSUInteger)shadowCascadeCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowCascadeCount:];
    }
  }

  else if (self->_shadowCascadeCount != shadowCascadeCount)
  {
    if ((shadowCascadeCount & 0xFC) != 0)
    {
      v4 = 4;
    }

    else
    {
      v4 = shadowCascadeCount;
    }

    self->_shadowCascadeCount = v4;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNLight_setShadowCascadeCount___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = v4;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)automaticallyAdjustsShadowProjection
{
  v2 = *(self + 16);
  if (v2)
  {
    v5 = [(SCNLight *)self sceneRef];
    if (v5)
    {
      v6 = v5;
      C3DSceneLock(v5);
      AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(self->_light);
      C3DSceneUnlock(v6);
      LOBYTE(v3) = AutomaticallyAdjustsShadowProjection;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetAutomaticallyAdjustsShadowProjection(light);
    }
  }

  else
  {
    return v2 >> 7;
  }

  return v3;
}

- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)automaticallyAdjustsShadowProjection
{
  v4 = *(self + 16);
  if (v4)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setAutomaticallyAdjustsShadowProjection:];
    }
  }

  else if ((((v4 >= 0) ^ automaticallyAdjustsShadowProjection) & 1) == 0)
  {
    if (automaticallyAdjustsShadowProjection)
    {
      v6 = 0x80;
    }

    else
    {
      v6 = 0;
    }

    *(self + 16) = v4 & 0x7E | v6;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__SCNLight_setAutomaticallyAdjustsShadowProjection___block_invoke;
    v9[3] = &unk_2782FB7F8;
    v9[4] = self;
    v10 = automaticallyAdjustsShadowProjection;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (CGFloat)maximumShadowDistance
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_maximumShadowDistance;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DMeshElementGetPointSize(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  PointSize = C3DMeshElementGetPointSize(self->_light);
  C3DSceneUnlock(v5);
  return PointSize;
}

- (void)setMaximumShadowDistance:(CGFloat)maximumShadowDistance
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setMaximumShadowDistance:];
    }
  }

  else
  {
    v4 = maximumShadowDistance;
    LOBYTE(maximumShadowDistance) = self->_shadowCascadeCount;
    if (*&maximumShadowDistance != v4)
    {
      self->_maximumShadowDistance = v4;
      v5 = [(SCNLight *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __37__SCNLight_setMaximumShadowDistance___block_invoke;
      v7[3] = &unk_2782FB7D0;
      v7[4] = self;
      *&v7[5] = v4;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

float __37__SCNLight_setMaximumShadowDistance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetMaximumShadowDistance(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)forcesBackFaceCasters
{
  if ((*(self + 16) & 1) == 0)
  {
    return *(self + 17) & 1;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ForceCasterBackFaceOnly = C3DLightGetForceCasterBackFaceOnly(self->_light);
    C3DSceneUnlock(v5);
    return ForceCasterBackFaceOnly;
  }

  else
  {
    light = self->_light;

    return C3DLightGetForceCasterBackFaceOnly(light);
  }
}

- (void)setForcesBackFaceCasters:(BOOL)forcesBackFaceCasters
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setForcesBackFaceCasters:];
    }
  }

  else
  {
    v5 = *(self + 17);
    if ((v5 & 1) != forcesBackFaceCasters)
    {
      *(self + 17) = v5 & 0xFE | forcesBackFaceCasters;
      v6 = [(SCNLight *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__SCNLight_setForcesBackFaceCasters___block_invoke;
      v8[3] = &unk_2782FB7F8;
      v8[4] = self;
      v9 = forcesBackFaceCasters;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

- (BOOL)sampleDistributedShadowMaps
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      EnableSampleDistributed = C3DLightGetEnableSampleDistributed(self->_light);
      C3DSceneUnlock(v5);
      LOBYTE(v3) = EnableSampleDistributed;
    }

    else
    {
      light = self->_light;

      LOBYTE(v3) = C3DLightGetEnableSampleDistributed(light);
    }
  }

  else
  {
    return (*(self + 17) >> 1) & 1;
  }

  return v3;
}

- (void)setSampleDistributedShadowMaps:(BOOL)sampleDistributedShadowMaps
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setSampleDistributedShadowMaps:];
    }
  }

  else
  {
    v5 = *(self + 17);
    if (((((v5 & 2) == 0) ^ sampleDistributedShadowMaps) & 1) == 0)
    {
      if (sampleDistributedShadowMaps)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 17) = v5 & 0xFD | v6;
      v7 = [(SCNLight *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__SCNLight_setSampleDistributedShadowMaps___block_invoke;
      v9[3] = &unk_2782FB7F8;
      v9[4] = self;
      v10 = sampleDistributedShadowMaps;
      [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
    }
  }
}

- (CGFloat)shadowCascadeSplittingFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shadowCascadeSplittingFactor;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetShadowCascadeSplittingFactor(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ShadowCascadeSplittingFactor = C3DLightGetShadowCascadeSplittingFactor(self->_light);
  C3DSceneUnlock(v5);
  return ShadowCascadeSplittingFactor;
}

- (void)setShadowCascadeSplittingFactor:(CGFloat)shadowCascadeSplittingFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight setShadowCascadeSplittingFactor:];
    }
  }

  else if (self->_shadowCascadeSplittingFactor != shadowCascadeSplittingFactor)
  {
    self->_shadowCascadeSplittingFactor = shadowCascadeSplittingFactor;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNLight_setShadowCascadeSplittingFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = shadowCascadeSplittingFactor;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

float __44__SCNLight_setShadowCascadeSplittingFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetShadowCascadeSplittingFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (double)_shadowCascadeDebugFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_cascadeDebugFactor;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetShadowCascadeDebugFactor(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(self->_light);
  C3DSceneUnlock(v5);
  return ShadowCascadeDebugFactor;
}

- (void)set_shadowCascadeDebugFactor:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNLight set_shadowCascadeDebugFactor:];
    }
  }

  else if (self->_cascadeDebugFactor != a3)
  {
    self->_cascadeDebugFactor = a3;
    v5 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNLight_set_shadowCascadeDebugFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self keyPath:@"shadowCascadeDebugFactor" applyBlock:v7];
  }
}

float __41__SCNLight_set_shadowCascadeDebugFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DLightSetShadowCascadeDebugFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (SCNShadowMode)shadowMode
{
  if ([(SCNLight *)self usesDeferredShadows])
  {
    return 1;
  }

  if ([(SCNLight *)self usesModulatedMode])
  {
    return 2;
  }

  return 0;
}

- (void)setShadowMode:(SCNShadowMode)shadowMode
{
  [(SCNLight *)self setUsesDeferredShadows:shadowMode == SCNShadowModeDeferred];

  [(SCNLight *)self setUsesModulatedMode:shadowMode == SCNShadowModeModulated];
}

- (SCNLightProbeType)probeType
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_probeType;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetProbeType(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ProbeType = C3DLightGetProbeType(self->_light);
  C3DSceneUnlock(v5);
  return ProbeType;
}

- (void)setProbeType:(SCNLightProbeType)probeType
{
  if (self->_probeType != probeType)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_probeType = probeType;
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__SCNLight_setProbeType___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = probeType;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (SCNLightProbeUpdateType)probeUpdateType
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_probeUpdateType;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (!v4)
  {
    return C3DLightGetProbeUpdateType(self->_light);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ProbeUpdateType = C3DLightGetProbeUpdateType(self->_light);
  C3DSceneUnlock(v5);
  return ProbeUpdateType;
}

- (void)setProbeUpdateType:(SCNLightProbeUpdateType)probeUpdateType
{
  if (self->_probeUpdateType != probeUpdateType)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_probeUpdateType = probeUpdateType;
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__SCNLight_setProbeUpdateType___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = probeUpdateType;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (BOOL)parallaxCorrectionEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_parallaxCorrectionEnabled;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ParallaxCorrectionEnabled = C3DLightGetParallaxCorrectionEnabled(self->_light);
    C3DSceneUnlock(v5);
    return ParallaxCorrectionEnabled;
  }

  else
  {
    light = self->_light;

    return C3DLightGetParallaxCorrectionEnabled(light);
  }
}

- (void)setParallaxCorrectionEnabled:(BOOL)parallaxCorrectionEnabled
{
  if (self->_parallaxCorrectionEnabled != parallaxCorrectionEnabled)
  {
    v10 = v3;
    v11 = v4;
    self->_parallaxCorrectionEnabled = parallaxCorrectionEnabled;
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__SCNLight_setParallaxCorrectionEnabled___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = parallaxCorrectionEnabled;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (simd_float3)parallaxCenterOffset
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ParallaxCenterOffset = C3DLightGetParallaxCenterOffset(self->_light);
      C3DSceneUnlock(v5);
      return ParallaxCenterOffset;
    }

    else
    {
      return C3DLightGetParallaxCenterOffset(self->_light);
    }
  }

  else
  {
    return *&self->_parallaxCenterOffset[7];
  }
}

- (void)setParallaxCenterOffset:(simd_float3)parallaxCenterOffset
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxCenterOffset[7], parallaxCenterOffset));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v12 = v3;
    v13 = v4;
    *&self->_parallaxCenterOffset[7] = parallaxCenterOffset;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__SCNLight_setParallaxCenterOffset___block_invoke;
    v9[3] = &unk_2782FEBE8;
    v11 = self;
    v10 = parallaxCenterOffset;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (simd_float3)parallaxExtentsFactor
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ParallaxExtentsFactor = C3DLightGetParallaxExtentsFactor(self->_light);
      C3DSceneUnlock(v5);
      return ParallaxExtentsFactor;
    }

    else
    {
      return C3DLightGetParallaxExtentsFactor(self->_light);
    }
  }

  else
  {
    return *&self->_parallaxExtentsFactor[7];
  }
}

- (void)setParallaxExtentsFactor:(simd_float3)parallaxExtentsFactor
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxExtentsFactor[7], parallaxExtentsFactor));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v12 = v3;
    v13 = v4;
    *&self->_parallaxExtentsFactor[7] = parallaxExtentsFactor;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__SCNLight_setParallaxExtentsFactor___block_invoke;
    v9[3] = &unk_2782FEBE8;
    v11 = self;
    v10 = parallaxExtentsFactor;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (simd_float3)probeExtents
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ProbeExtents = C3DLightGetProbeExtents(self->_light);
      C3DSceneUnlock(v5);
      return ProbeExtents;
    }

    else
    {
      return C3DLightGetProbeExtents(self->_light);
    }
  }

  else
  {
    return *&self->_probeExtents[7];
  }
}

- (void)setProbeExtents:(simd_float3)probeExtents
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeExtents[7], probeExtents));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v12 = v3;
    v13 = v4;
    *&self->_probeExtents[7] = probeExtents;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__SCNLight_setProbeExtents___block_invoke;
    v9[3] = &unk_2782FEBE8;
    v11 = self;
    v10 = probeExtents;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (simd_float3)probeOffset
{
  if (*(self + 16))
  {
    v4 = [(SCNLight *)self sceneRef];
    if (v4)
    {
      v5 = v4;
      C3DSceneLock(v4);
      ProbeOffset = C3DLightGetProbeOffset(self->_light);
      C3DSceneUnlock(v5);
      return ProbeOffset;
    }

    else
    {
      return C3DLightGetProbeOffset(self->_light);
    }
  }

  else
  {
    return *&self->_probeOffset[7];
  }
}

- (void)setProbeOffset:(simd_float3)probeOffset
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeOffset[7], probeOffset));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v12 = v3;
    v13 = v4;
    *&self->_probeOffset[7] = probeOffset;
    v7 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNLight_setProbeOffset___block_invoke;
    v9[3] = &unk_2782FEBE8;
    v11 = self;
    v10 = probeOffset;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v9];
  }
}

- (SCNMaterialProperty)probeEnvironment
{
  result = self->_probeEnvironment;
  if (!result)
  {
    result = [[SCNMaterialProperty alloc] initWithParent:self propertyType:25];
    self->_probeEnvironment = result;
  }

  if (*(self + 16))
  {

    return [(SCNMaterialProperty *)result presentationMaterialProperty];
  }

  return result;
}

- (SCNLightAreaType)areaType
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_areaType;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    C3DLightGetAreaDescription(self->_light, v7);
    v3 = LOBYTE(v7[0]);
    C3DSceneUnlock(v5);
  }

  else
  {
    C3DLightGetAreaDescription(self->_light, v7);
    return LOBYTE(v7[0]);
  }

  return v3;
}

- (void)setAreaType:(SCNLightAreaType)areaType
{
  if (self->_areaType != areaType)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_areaType = areaType;
    v6 = [(SCNLight *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SCNLight_setAreaType___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (simd_float3)areaExtents
{
  if ((*(self + 16) & 1) == 0)
  {
    return *self->_areaExtents;
  }

  v4 = [(SCNLight *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  C3DLightGetAreaDescription(self->_light, &v12);
  __asm { FMOV            V0.4S, #1.0 }

  if (v12 > 1u)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        goto LABEL_15;
      }

      v10 = v13;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v12)
  {
    v10.i64[1] = 0x3F0000003F000000;
    v10.i64[0] = v13.u32[0] | 0x3F00000000000000;
    goto LABEL_14;
  }

  if (v12 == 1)
  {
LABEL_12:
    v10 = v13;
    v10.i32[2] = 0.5;
LABEL_14:
    result = vaddq_f32(v10, v10);
  }

LABEL_15:
  if (v5)
  {
    v11 = result;
    C3DSceneUnlock(v5);
    return v11;
  }

  return result;
}

- (void)setAreaExtents:(simd_float3)areaExtents
{
  v3 = vceqq_f32(*self->_areaExtents, areaExtents);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    *self->_areaExtents = areaExtents;
    v5 = [(SCNLight *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__SCNLight_setAreaExtents___block_invoke;
    v6[3] = &unk_2782FB820;
    v6[4] = self;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

- (BOOL)drawsArea
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_drawsArea;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    DrawsArea = C3DLightGetDrawsArea(self->_light);
    C3DSceneUnlock(v5);
    return DrawsArea;
  }

  else
  {
    light = self->_light;

    return C3DLightGetDrawsArea(light);
  }
}

- (void)setDrawsArea:(BOOL)drawsArea
{
  if (self->_drawsArea != drawsArea)
  {
    v10 = v3;
    v11 = v4;
    self->_drawsArea = drawsArea;
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__SCNLight_setDrawsArea___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = drawsArea;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (BOOL)doubleSided
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_doubleSided;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    DoubleSided = C3DLightGetDoubleSided(self->_light);
    C3DSceneUnlock(v5);
    return DoubleSided;
  }

  else
  {
    light = self->_light;

    return C3DLightGetDoubleSided(light);
  }
}

- (void)setDoubleSided:(BOOL)doubleSided
{
  if (self->_doubleSided != doubleSided)
  {
    v10 = v3;
    v11 = v4;
    self->_doubleSided = doubleSided;
    v7 = [(SCNLight *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__SCNLight_setDoubleSided___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = doubleSided;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (NSArray)areaPolygonVertices
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_areaPolygonVertices;
  }

  v4 = [(SCNLight *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  v8 = 0u;
  v9 = 0u;
  C3DLightGetAreaDescription(self->_light, &v8);
  v7[0] = v8;
  v7[1] = v9;
  v3 = _SCNAreaLightpolygonVerticesFromDescription(v7);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return v3;
}

- (void)setAreaPolygonVertices:(NSArray *)areaPolygonVertices
{
  v5 = self->_areaPolygonVertices;
  if (v5 != areaPolygonVertices)
  {
    v9[7] = v3;
    v9[8] = v4;

    self->_areaPolygonVertices = [(NSArray *)areaPolygonVertices copy];
    v8 = [(SCNLight *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__SCNLight_setAreaPolygonVertices___block_invoke;
    v9[3] = &unk_2782FB820;
    v9[4] = self;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v9];
  }
}

- (SCNMaterialProperty)gobo
{
  result = self->_gobo;
  if (!result)
  {
    result = [[SCNMaterialProperty alloc] initWithParent:self propertyType:22];
    self->_gobo = result;
  }

  if (*(self + 16))
  {

    return [(SCNMaterialProperty *)result presentationMaterialProperty];
  }

  return result;
}

- (NSURL)IESProfileURL
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_IESProfileURL;
  }

  v4 = [(SCNLight *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    IESProfileURL = C3DLightGetIESProfileURL(self->_light);
    C3DSceneUnlock(v5);
    return IESProfileURL;
  }

  else
  {
    light = self->_light;

    return C3DLightGetIESProfileURL(light);
  }
}

void __41__SCNLight_setIESProfileURL_resolvedURL___block_invoke(uint64_t a1)
{
  C3DLightSetType(*(*(a1 + 32) + 8), 5);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  C3DLightSetIESProfileURL(v3, v2);
}

void __41__SCNLight_setIESProfileURL_resolvedURL___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = SCNLightTypeToC3DLightType(*(v1 + 48));

  C3DLightSetType(v2, v3);
}

- (void)setIESProfileURL:(NSURL *)IESProfileURL
{
  if (IESProfileURL)
  {
    v5 = [(NSURL *)IESProfileURL isFileURL];
    v6 = IESProfileURL;
    if (v5)
    {
      v7 = [(NSURL *)IESProfileURL relativePath];
      if (![(NSString *)v7 isAbsolutePath])
      {
        v8 = SCNHasSpecialResourceBundle();
        v9 = SCNGetResourceBundle();
        if (v8)
        {
          v10 = [v9 bundlePath];
        }

        else
        {
          v10 = [v9 resourcePath];
        }

        v7 = [v10 stringByAppendingPathComponent:v7];
      }

      v6 = IESProfileURL;
      if (v7)
      {
        v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:{v7, IESProfileURL}];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  [(SCNLight *)self setIESProfileURL:IESProfileURL resolvedURL:v6];
}

- (void)_customEncodingOfSCNLight:(id)a3
{
  [(SCNLight *)self attenuationStartDistance];
  *&v5 = v5;
  [a3 encodeFloat:@"attenuationStartDistance" forKey:v5];
  [(SCNLight *)self attenuationEndDistance];
  *&v6 = v6;
  [a3 encodeFloat:@"attenuationEndDistance" forKey:v6];
  [(SCNLight *)self attenuationFalloffExponent];
  *&v7 = v7;
  [a3 encodeFloat:@"attenuationFalloffExponent" forKey:v7];
  [(SCNLight *)self spotInnerAngle];
  *&v8 = v8;
  [a3 encodeFloat:@"spotInnerAngle" forKey:v8];
  [(SCNLight *)self spotOuterAngle];
  *&v9 = v9;
  [a3 encodeFloat:@"spotOuterAngle" forKey:v9];
  [a3 encodeInt:(*(self + 16) >> 2) & 1 forKey:@"usesDeferredShadows"];
  [a3 encodeInteger:self->_categoryBitMask forKey:@"lightCategoryBitMask"];
  LODWORD(v10) = *(&self->_spotFalloffExponent + 1);
  [a3 encodeFloat:@"spotFallOffExponent" forKey:v10];
  if ([(NSString *)self->_type isEqualToString:@"probe"])
  {
    [a3 encodeInt:LODWORD(self->_probeType) forKey:@"probeType"];
    [a3 encodeInt:LODWORD(self->_probeUpdateType) forKey:@"probeUpdateType"];
    [a3 encodeBool:self->_parallaxCorrectionEnabled forKey:@"parallaxCorrectionEnabled"];
    LODWORD(v11) = *&self->_probeExtents[7];
    [a3 encodeFloat:@"probeExtentsX" forKey:v11];
    LODWORD(v12) = *&self->_probeExtents[11];
    [a3 encodeFloat:@"probeExtentsY" forKey:v12];
    LODWORD(v13) = *&self->_probeExtents[15];
    [a3 encodeFloat:@"probeExtentsZ" forKey:v13];
    if (COERCE_FLOAT(*&self->_probeOffset[7]) == 0.0)
    {
      LODWORD(v14) = HIDWORD(*&self->_probeOffset[7]);
    }

    else
    {
      [a3 encodeFloat:@"probeOffsetX" forKey:?];
      v14 = *&self->_probeOffset[11];
    }

    if (v14 != 0.0)
    {
      [a3 encodeFloat:@"probeOffsetY" forKey:?];
    }

    if (*&self->_probeOffset[15] != 0.0)
    {
      [a3 encodeFloat:@"probeOffsetZ" forKey:?];
    }

    if (COERCE_FLOAT(*&self->_parallaxCenterOffset[7]) == 0.0)
    {
      LODWORD(v15) = HIDWORD(*&self->_parallaxCenterOffset[7]);
    }

    else
    {
      [a3 encodeFloat:@"parallaxOffsetX" forKey:?];
      v15 = *&self->_parallaxCenterOffset[11];
    }

    if (v15 != 0.0)
    {
      [a3 encodeFloat:@"parallaxOffsetY" forKey:?];
    }

    if (*&self->_parallaxCenterOffset[15] != 0.0)
    {
      [a3 encodeFloat:@"parallaxOffsetZ" forKey:?];
    }

    if (COERCE_FLOAT(*&self->_parallaxExtentsFactor[7]) == 1.0)
    {
      LODWORD(v16) = HIDWORD(*&self->_parallaxExtentsFactor[7]);
    }

    else
    {
      [a3 encodeFloat:@"parallaxExtentsFactorX" forKey:?];
      v16 = *&self->_parallaxExtentsFactor[11];
    }

    if (v16 != 1.0)
    {
      [a3 encodeFloat:@"parallaxExtentsFactorY" forKey:?];
    }

    if (*&self->_parallaxExtentsFactor[15] != 1.0)
    {
      [a3 encodeFloat:@"parallaxExtentsFactorZ" forKey:?];
    }
  }

  maximumShadowDistance = self->_maximumShadowDistance;
  *&maximumShadowDistance = maximumShadowDistance;
  [a3 encodeFloat:@"maximumShadowDistance" forKey:maximumShadowDistance];
  [a3 encodeBool:*(self + 16) >> 7 forKey:@"autoShadowProjection"];
  [a3 encodeInt:self->_shadowCascadeCount forKey:@"shadowCascadeCount"];
  shadowCascadeSplittingFactor = self->_shadowCascadeSplittingFactor;
  *&shadowCascadeSplittingFactor = shadowCascadeSplittingFactor;
  [a3 encodeFloat:@"shadowCascadeSplittingFactor" forKey:shadowCascadeSplittingFactor];
  [a3 encodeBool:*(self + 17) & 1 forKey:@"forcesBackFaceCasters"];
  [a3 encodeBool:(*(self + 17) >> 1) & 1 forKey:@"sampleDistributedShadowMaps"];

  [a3 encodeInt32:1 forKey:@"version"];
}

- (void)_customDecodingOfSCNLight:(id)a3
{
  [a3 decodeFloatForKey:@"attenuationStartDistance"];
  [(SCNLight *)self setAttenuationStartDistance:v5];
  [a3 decodeFloatForKey:@"attenuationEndDistance"];
  [(SCNLight *)self setAttenuationEndDistance:v6];
  [a3 decodeFloatForKey:@"attenuationFalloffExponent"];
  [(SCNLight *)self setAttenuationFalloffExponent:v7];
  [a3 decodeFloatForKey:@"spotInnerAngle"];
  [(SCNLight *)self setSpotInnerAngle:v8];
  [a3 decodeFloatForKey:@"spotOuterAngle"];
  [(SCNLight *)self setSpotOuterAngle:v9];
  if ([a3 containsValueForKey:@"maximumShadowDistance"])
  {
    [a3 decodeFloatForKey:@"maximumShadowDistance"];
    [(SCNLight *)self setMaximumShadowDistance:v10];
  }

  if ([a3 containsValueForKey:@"autoShadowProjection"])
  {
    -[SCNLight setAutomaticallyAdjustsShadowProjection:](self, "setAutomaticallyAdjustsShadowProjection:", [a3 decodeBoolForKey:@"autoShadowProjection"]);
  }

  if ([a3 containsValueForKey:@"forcesBackFaceCasters"])
  {
    -[SCNLight setForcesBackFaceCasters:](self, "setForcesBackFaceCasters:", [a3 decodeBoolForKey:@"forcesBackFaceCasters"]);
  }

  if ([a3 containsValueForKey:@"sampleDistributedShadowMaps"])
  {
    -[SCNLight setSampleDistributedShadowMaps:](self, "setSampleDistributedShadowMaps:", [a3 decodeBoolForKey:@"sampleDistributedShadowMaps"]);
  }

  if ([a3 containsValueForKey:@"shadowCascadeCount"])
  {
    -[SCNLight setShadowCascadeCount:](self, "setShadowCascadeCount:", [a3 decodeIntForKey:@"shadowCascadeCount"]);
  }

  if ([a3 containsValueForKey:@"shadowCascadeSplittingFactor"])
  {
    [a3 decodeFloatForKey:@"shadowCascadeSplittingFactor"];
    [(SCNLight *)self setShadowCascadeSplittingFactor:v11];
  }

  if ([a3 containsValueForKey:@"spotFallOffExponent"])
  {
    [a3 decodeFloatForKey:@"spotFallOffExponent"];
    [(SCNLight *)self setSpotFalloffExponent:v12];
  }

  if ([a3 containsValueForKey:@"usesDeferredShadows"])
  {
    -[SCNLight setUsesDeferredShadows:](self, "setUsesDeferredShadows:", [a3 decodeIntForKey:@"usesDeferredShadows"] != 0);
  }

  if ([a3 containsValueForKey:@"lightCategoryBitMask"])
  {
    v13 = [a3 decodeIntegerForKey:@"lightCategoryBitMask"];

    [(SCNLight *)self setCategoryBitMask:v13];
  }
}

- (void)_didDecodeSCNLight:(id)a3
{
  if (![a3 decodeInt32ForKey:@"version"] && self->_shadowSampleCount == 16)
  {

    [(SCNLight *)self setShadowSampleCount:1];
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 16))
  {
    [(SCNLight *)self _syncObjCModel];
  }

  [(SCNLight *)self _customEncodingOfSCNLight:a3];
  [a3 encodeInt:(*(self + 16) >> 1) & 1 forKey:@"castsShadow"];
  [a3 encodeInt:(*(self + 16) >> 3) & 1 forKey:@"usesModulatedMode"];
  [a3 encodeInt:(*(self + 16) >> 4) & 1 forKey:@"baked"];
  [a3 encodeInt:(*(self + 16) >> 5) & 1 forKey:@"shouldBakeDirectLighting"];
  [a3 encodeInt:(*(self + 16) >> 6) & 1 forKey:@"shouldBakeIndirectLighting"];
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics)
  {
    [a3 encodeObject:sphericalHarmonics forKey:@"sphericalHarmonics"];
  }

  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  type = self->_type;
  if (type)
  {
    [a3 encodeObject:type forKey:@"type"];
  }

  color = self->_color;
  if (color)
  {
    SCNEncodeUnsafeObjectForKey(a3, color, @"color");
    SCNEncodeColor(a3, self->_color, @"scncolor");
  }

  shadowColor = self->_shadowColor;
  if (shadowColor)
  {
    SCNEncodeUnsafeObjectForKey(a3, shadowColor, @"shadowColor");
    SCNEncodeColor(a3, self->_shadowColor, @"scnShadowColor");
  }

  *&v5 = self->_shadowRadius;
  [a3 encodeFloat:@"shadowRadius" forKey:v5];
  [a3 encodeDouble:@"intensity" forKey:self->_intensity];
  [a3 encodeDouble:@"temperature" forKey:self->_temperature];
  [a3 encodeDouble:@"orthographicScale" forKey:self->_orthographicScale];
  if (self->_shadowSampleCount)
  {
    shadowSampleCount = self->_shadowSampleCount;
  }

  else
  {
    shadowSampleCount = 16;
  }

  [a3 encodeInteger:shadowSampleCount forKey:@"shadowSampleCount"];
  [a3 encodeInteger:self->_shadowSampleCount forKey:@"shadowSampleCount2"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGSize:", self->_shadowMapSize.width, self->_shadowMapSize.height), @"shadowMapSize"}];
  [a3 encodeDouble:@"zNear" forKey:self->_zNear];
  [a3 encodeDouble:@"zFar" forKey:self->_zFar];
  [a3 encodeDouble:@"shadowBias" forKey:self->_shadowBias];
  gobo = self->_gobo;
  if (gobo)
  {
    [a3 encodeObject:gobo forKey:@"gobo"];
  }

  IESProfileURL = self->_IESProfileURL;
  if (IESProfileURL)
  {
    [a3 encodeObject:IESProfileURL forKey:@"IESProfileURL"];
  }

  technique = self->_technique;
  if (technique)
  {
    [a3 encodeObject:technique forKey:@"technique"];
  }

  [a3 encodeInteger:self->_areaType forKey:@"areaType"];
  LODWORD(v15) = *self->_areaExtents;
  [a3 encodeFloat:@"areaExtentsX" forKey:v15];
  LODWORD(v16) = *&self->_areaExtents[4];
  [a3 encodeFloat:@"areaExtentsY" forKey:v16];
  LODWORD(v17) = *&self->_areaExtents[8];
  [a3 encodeFloat:@"areaExtentsZ" forKey:v17];
  [a3 encodeObject:self->_areaPolygonVertices forKey:@"areaPolygonVertices"];
  [a3 encodeBool:self->_drawsArea forKey:@"drawsArea"];
  [a3 encodeBool:self->_doubleSided forKey:@"doubleSided"];
  probeEnvironment = self->_probeEnvironment;
  if (probeEnvironment)
  {
    [a3 encodeObject:probeEnvironment forKey:@"probeEnvironment"];
  }

  SCNEncodeEntity(a3, self);

  SCNEncodeAnimations(a3, self);
}

- (SCNLight)initWithCoder:(id)a3
{
  v45.receiver = self;
  v45.super_class = SCNLight;
  v4 = [(SCNLight *)&v45 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = C3DLightCreate();
    v4->_light = v6;
    if (v6)
    {
      C3DEntitySetObjCWrapper(v6, v4);
    }

    [(SCNLight *)v4 _syncObjCModel];
    -[SCNLight setType:](v4, "setType:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"type"]);
    [(SCNLight *)v4 _customDecodingOfSCNLight:a3];
    -[SCNLight setCastsShadow:](v4, "setCastsShadow:", [a3 decodeIntForKey:@"castsShadow"] != 0);
    -[SCNLight setUsesModulatedMode:](v4, "setUsesModulatedMode:", [a3 decodeIntForKey:@"usesModulatedMode"] != 0);
    -[SCNLight setBaked:](v4, "setBaked:", [a3 decodeIntForKey:@"baked"] != 0);
    -[SCNLight setShouldBakeDirectLighting:](v4, "setShouldBakeDirectLighting:", [a3 decodeIntForKey:@"shouldBakeDirectLighting"] != 0);
    -[SCNLight setShouldBakeIndirectLighting:](v4, "setShouldBakeIndirectLighting:", [a3 decodeIntForKey:@"shouldBakeIndirectLighting"] != 0);
    -[SCNLight set_sphericalHarmonics:](v4, "set_sphericalHarmonics:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sphericalHarmonics"]);
    -[SCNLight setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    if ([(NSString *)v4->_type isEqualToString:@"probe"])
    {
      -[SCNLight setProbeType:](v4, "setProbeType:", [a3 decodeIntForKey:@"probeType"]);
      -[SCNLight setProbeUpdateType:](v4, "setProbeUpdateType:", [a3 decodeIntForKey:@"probeUpdateType"]);
      -[SCNLight setParallaxCorrectionEnabled:](v4, "setParallaxCorrectionEnabled:", [a3 decodeBoolForKey:@"parallaxCorrectionEnabled"]);
      [a3 decodeFloatForKey:@"probeExtentsX"];
      v40 = v7;
      [a3 decodeFloatForKey:@"probeExtentsY"];
      v36 = v8;
      [a3 decodeFloatForKey:@"probeExtentsZ"];
      [(SCNLight *)v4 setProbeExtents:COERCE_DOUBLE(__PAIR64__(v36, v40))];
      [a3 decodeFloatForKey:@"probeOffsetX"];
      v41 = v9;
      [a3 decodeFloatForKey:@"probeOffsetX"];
      v37 = v10;
      [a3 decodeFloatForKey:@"probeOffsetX"];
      [(SCNLight *)v4 setProbeOffset:COERCE_DOUBLE(__PAIR64__(v37, v41))];
      [a3 decodeFloatForKey:@"parallaxOffsetX"];
      v42 = v11;
      [a3 decodeFloatForKey:@"parallaxOffsetY"];
      v38 = v12;
      [a3 decodeFloatForKey:@"parallaxOffsetZ"];
      [(SCNLight *)v4 setParallaxCenterOffset:COERCE_DOUBLE(__PAIR64__(v38, v42))];
      if ([a3 containsValueForKey:@"parallaxExtentsFactorX"])
      {
        [a3 decodeFloatForKey:@"parallaxExtentsFactorX"];
        __asm { FMOV            V1.4S, #1.0 }

        LODWORD(_Q1) = v18;
        *&v43 = _Q1;
      }

      else
      {
        __asm { FMOV            V0.4S, #1.0 }

        *&v43 = _Q0;
      }

      if ([a3 containsValueForKey:@"parallaxExtentsFactorY"])
      {
        [a3 decodeFloatForKey:@"parallaxExtentsFactorY"];
        *&v43 = __PAIR64__(v20, LODWORD(v43));
      }

      if ([a3 containsValueForKey:@"parallaxExtentsFactorZ"])
      {
        [a3 decodeFloatForKey:@"parallaxExtentsFactorZ"];
      }

      [(SCNLight *)v4 setParallaxExtentsFactor:v43];
    }

    if ([a3 containsValueForKey:@"scncolor"])
    {
      v21 = SCNDecodeColor(a3, @"scncolor");
    }

    else
    {
      v22 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v21 = SCNDecodeUnsafeObjectForKey(a3, @"color", v22);
    }

    [(SCNLight *)v4 setColor:v21];
    if ([a3 containsValueForKey:@"scnShadowColor"])
    {
      v23 = SCNDecodeColor(a3, @"scnShadowColor");
    }

    else
    {
      v24 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v23 = SCNDecodeUnsafeObjectForKey(a3, @"shadowColor", v24);
    }

    [(SCNLight *)v4 setShadowColor:v23];
    [a3 decodeFloatForKey:@"shadowRadius"];
    [(SCNLight *)v4 setShadowRadius:v25];
    if ([a3 containsValueForKey:@"intensity"])
    {
      [a3 decodeDoubleForKey:@"intensity"];
      [(SCNLight *)v4 setIntensity:?];
    }

    if ([a3 containsValueForKey:@"temperature"])
    {
      [a3 decodeDoubleForKey:@"temperature"];
      [(SCNLight *)v4 setTemperature:?];
    }

    [a3 decodeDoubleForKey:@"orthographicScale"];
    [(SCNLight *)v4 setOrthographicScale:?];
    if ([a3 containsValueForKey:@"shadowSampleCount2"])
    {
      v26 = [a3 decodeIntegerForKey:@"shadowSampleCount2"];
    }

    else
    {
      v27 = [a3 decodeIntegerForKey:@"shadowSampleCount"];
      if (v27 == 16)
      {
        v26 = 0;
      }

      else
      {
        v26 = v27;
      }
    }

    [(SCNLight *)v4 setShadowSampleCount:v26];
    [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"shadowMapSize", "CGSizeValue"}];
    [(SCNLight *)v4 setShadowMapSize:?];
    [a3 decodeDoubleForKey:@"zNear"];
    [(SCNLight *)v4 setZNear:?];
    [a3 decodeDoubleForKey:@"zFar"];
    [(SCNLight *)v4 setZFar:?];
    [a3 decodeDoubleForKey:@"shadowBias"];
    [(SCNLight *)v4 setShadowBias:?];
    v4->_gobo = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"gobo"];
    v4->_probeEnvironment = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"probeEnvironment"];
    if ([a3 containsValueForKey:@"IESProfileURL"])
    {
      v28 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"IESProfileURL"];
      if ([v28 isFileURL] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v29 = objc_msgSend(v28, "relativePath"), (objc_msgSend(v29, "isAbsolutePath") & 1) == 0) && (v30 = objc_msgSend(objc_msgSend(a3, "documentEnclosingURL"), "URLByAppendingPathComponent:", v29)) != 0)
      {
        [(SCNLight *)v4 setIESProfileURL:v28 resolvedURL:v30];
      }

      else
      {
        [(SCNLight *)v4 setIESProfileURL:v28];
      }
    }

    -[SCNLight setTechnique:](v4, "setTechnique:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"technique"]);
    if ([a3 containsValueForKey:@"areaType"])
    {
      -[SCNLight setAreaType:](v4, "setAreaType:", [a3 decodeIntegerForKey:@"areaType"]);
      [a3 decodeFloatForKey:@"areaExtentsX"];
      v44 = v31;
      [a3 decodeFloatForKey:@"areaExtentsY"];
      v39 = v32;
      [a3 decodeFloatForKey:@"areaExtentsZ"];
      [(SCNLight *)v4 setAreaExtents:COERCE_DOUBLE(__PAIR64__(v39, v44))];
      -[SCNLight setAreaPolygonVertices:](v4, "setAreaPolygonVertices:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"areaPolygonVertices"]);
      -[SCNLight setDrawsArea:](v4, "setDrawsArea:", [a3 decodeBoolForKey:@"drawsArea"]);
      v33 = [a3 decodeBoolForKey:@"doubleSided"];
    }

    else
    {
      [(SCNLight *)v4 setAreaType:4];
      __asm { FMOV            V0.4S, #1.0 }

      [(SCNLight *)v4 setAreaExtents:*&_Q0];
      [(SCNLight *)v4 setAreaPolygonVertices:0];
      [(SCNLight *)v4 setDrawsArea:1];
      v33 = 0;
    }

    [(SCNLight *)v4 setDoubleSided:v33];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(a3, v4);
    SCNDecodeAnimations(a3, v4);
    [(SCNLight *)v4 _didDecodeSCNLight:a3];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAttenuationEndDistance:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAttenuationFalloffExponent:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAttenuationStartDistance:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBaked:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setCastsShadow:.cold.1()
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

- (void)setColor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setIntensity:.cold.1()
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

- (void)setShadowBias:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setShadowColor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setShadowMapSize:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setShadowRadius:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setShadowSampleCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSpotFalloffExponent:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSpotInnerAngle:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSpotOuterAngle:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setTechnique:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setTemperature:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setType:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setUsesDeferredShadows:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setUsesModulatedMode:.cold.1()
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

- (void)setShadowCascadeCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAutomaticallyAdjustsShadowProjection:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setMaximumShadowDistance:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setForcesBackFaceCasters:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSampleDistributedShadowMaps:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setShadowCascadeSplittingFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)set_shadowCascadeDebugFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end