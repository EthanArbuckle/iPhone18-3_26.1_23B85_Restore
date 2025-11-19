@interface SCNParticleSystem
+ (SCNParticleSystem)particleSystem;
+ (SCNParticleSystem)particleSystemNamed:(NSString *)name inDirectory:(NSString *)directory;
+ (SCNParticleSystem)particleSystemWithParticleSystemRef:(__C3DParticleSystem *)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)affectedByGravity;
- (BOOL)affectedByPhysicsFields;
- (BOOL)blackPassEnabled;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (BOOL)isLocal;
- (BOOL)lightingEnabled;
- (BOOL)loops;
- (BOOL)particleDiesOnCollision;
- (BOOL)physicsCollisionsEnabled;
- (BOOL)softParticlesEnabled;
- (BOOL)writesToDepthBuffer;
- (CGFloat)birthRate;
- (CGFloat)birthRateVariation;
- (CGFloat)dampingFactor;
- (CGFloat)emissionDuration;
- (CGFloat)emissionDurationVariation;
- (CGFloat)fresnelExponent;
- (CGFloat)idleDuration;
- (CGFloat)idleDurationVariation;
- (CGFloat)imageSequenceFrameRate;
- (CGFloat)imageSequenceFrameRateVariation;
- (CGFloat)imageSequenceInitialFrame;
- (CGFloat)imageSequenceInitialFrameVariation;
- (CGFloat)particleAngle;
- (CGFloat)particleAngleVariation;
- (CGFloat)particleAngularVelocity;
- (CGFloat)particleAngularVelocityVariation;
- (CGFloat)particleBounce;
- (CGFloat)particleBounceVariation;
- (CGFloat)particleCharge;
- (CGFloat)particleChargeVariation;
- (CGFloat)particleFriction;
- (CGFloat)particleFrictionVariation;
- (CGFloat)particleIntensity;
- (CGFloat)particleIntensityVariation;
- (CGFloat)particleLifeSpan;
- (CGFloat)particleLifeSpanVariation;
- (CGFloat)particleMass;
- (CGFloat)particleMassVariation;
- (CGFloat)particleSize;
- (CGFloat)particleSizeVariation;
- (CGFloat)particleVelocity;
- (CGFloat)particleVelocityVariation;
- (CGFloat)speedFactor;
- (CGFloat)spreadingAngle;
- (CGFloat)stretchFactor;
- (CGFloat)warmupDuration;
- (NSArray)animationKeys;
- (NSArray)colliderNodes;
- (NSUInteger)imageSequenceColumnCount;
- (NSUInteger)imageSequenceRowCount;
- (SCNGeometry)emitterShape;
- (SCNParticleBirthDirection)birthDirection;
- (SCNParticleBirthLocation)birthLocation;
- (SCNParticleBlendMode)blendMode;
- (SCNParticleImageSequenceAnimationMode)imageSequenceAnimationMode;
- (SCNParticleOrientationMode)orientationMode;
- (SCNParticleSortingMode)sortingMode;
- (SCNParticleSystem)init;
- (SCNParticleSystem)initWithCoder:(id)a3;
- (SCNParticleSystem)initWithParticleSystemRef:(__C3DParticleSystem *)a3;
- (SCNVector3)acceleration;
- (SCNVector3)emittingDirection;
- (SCNVector3)orientationDirection;
- (SCNVector4)particleColorVariation;
- (UIColor)particleColor;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)fixedTimeStep;
- (double)lightEmissionRadiusFactor;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)initPresentationSystemWithSystemRef:(__C3DParticleSystem *)a3;
- (id)name;
- (id)particleGeometries;
- (id)presentationInstance;
- (id)scene;
- (int64_t)renderingMode;
- (int64_t)seed;
- (signed)typeOfProperty:(id)a3;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customDecodingOfSCNParticleSystem:(id)a3;
- (void)_customEncodingOfSCNParticleSystem:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setParticleImagePath:(id)a3 withResolvedPath:(id)a4;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateParticleC3DImage:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)addModifierForProperties:(NSArray *)properties atStage:(SCNParticleModifierStage)stage withBlock:(SCNParticleModifierBlock)block;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleEvent:(SCNParticleEvent)event forProperties:(NSArray *)properties withBlock:(SCNParticleEventBlock)block;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAllModifiers;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)removeModifiersOfStage:(SCNParticleModifierStage)stage;
- (void)reset;
- (void)resumeAnimationForKey:(id)a3;
- (void)setAcceleration:(SCNVector3)acceleration;
- (void)setAffectedByGravity:(BOOL)affectedByGravity;
- (void)setAffectedByPhysicsFields:(BOOL)affectedByPhysicsFields;
- (void)setBirthDirection:(SCNParticleBirthDirection)birthDirection;
- (void)setBirthLocation:(SCNParticleBirthLocation)birthLocation;
- (void)setBirthRate:(CGFloat)birthRate;
- (void)setBirthRateVariation:(CGFloat)birthRateVariation;
- (void)setBlackPassEnabled:(BOOL)blackPassEnabled;
- (void)setBlendMode:(SCNParticleBlendMode)blendMode;
- (void)setColliderNodes:(NSArray *)colliderNodes;
- (void)setDampingFactor:(CGFloat)dampingFactor;
- (void)setEmissionDuration:(CGFloat)emissionDuration;
- (void)setEmissionDurationVariation:(CGFloat)emissionDurationVariation;
- (void)setEmitterShape:(SCNGeometry *)emitterShape;
- (void)setEmittingDirection:(SCNVector3)emittingDirection;
- (void)setFixedTimeStep:(double)a3;
- (void)setFresnelExponent:(CGFloat)fresnelExponent;
- (void)setIdentifier:(id)a3;
- (void)setIdleDuration:(CGFloat)idleDuration;
- (void)setIdleDurationVariation:(CGFloat)idleDurationVariation;
- (void)setImageSequenceAnimationMode:(SCNParticleImageSequenceAnimationMode)imageSequenceAnimationMode;
- (void)setImageSequenceColumnCount:(NSUInteger)imageSequenceColumnCount;
- (void)setImageSequenceFrameRate:(CGFloat)imageSequenceFrameRate;
- (void)setImageSequenceFrameRateVariation:(CGFloat)imageSequenceFrameRateVariation;
- (void)setImageSequenceInitialFrame:(CGFloat)imageSequenceInitialFrame;
- (void)setImageSequenceInitialFrameVariation:(CGFloat)imageSequenceInitialFrameVariation;
- (void)setImageSequenceRowCount:(NSUInteger)imageSequenceRowCount;
- (void)setIsLocal:(BOOL)a3;
- (void)setLightEmissionRadiusFactor:(double)a3;
- (void)setLightingEnabled:(BOOL)lightingEnabled;
- (void)setLoops:(BOOL)loops;
- (void)setName:(id)a3;
- (void)setOrientationDirection:(SCNVector3)orientationDirection;
- (void)setOrientationMode:(SCNParticleOrientationMode)orientationMode;
- (void)setParticleAngle:(CGFloat)particleAngle;
- (void)setParticleAngleVariation:(CGFloat)particleAngleVariation;
- (void)setParticleAngularVelocity:(CGFloat)particleAngularVelocity;
- (void)setParticleAngularVelocityVariation:(CGFloat)particleAngularVelocityVariation;
- (void)setParticleBounce:(CGFloat)particleBounce;
- (void)setParticleBounceVariation:(CGFloat)particleBounceVariation;
- (void)setParticleCharge:(CGFloat)particleCharge;
- (void)setParticleChargeVariation:(CGFloat)particleChargeVariation;
- (void)setParticleColor:(UIColor *)particleColor;
- (void)setParticleColorVariation:(SCNVector4)particleColorVariation;
- (void)setParticleDiesOnCollision:(BOOL)particleDiesOnCollision;
- (void)setParticleFriction:(CGFloat)particleFriction;
- (void)setParticleFrictionVariation:(CGFloat)particleFrictionVariation;
- (void)setParticleGeometries:(id)a3;
- (void)setParticleImage:(id)particleImage;
- (void)setParticleIntensity:(CGFloat)particleIntensity;
- (void)setParticleIntensityVariation:(CGFloat)particleIntensityVariation;
- (void)setParticleLifeSpan:(CGFloat)particleLifeSpan;
- (void)setParticleLifeSpanVariation:(CGFloat)particleLifeSpanVariation;
- (void)setParticleMass:(CGFloat)particleMass;
- (void)setParticleMassVariation:(CGFloat)particleMassVariation;
- (void)setParticleSize:(CGFloat)particleSize;
- (void)setParticleSizeVariation:(CGFloat)particleSizeVariation;
- (void)setParticleVelocity:(CGFloat)particleVelocity;
- (void)setParticleVelocityVariation:(CGFloat)particleVelocityVariation;
- (void)setPhysicsCollisionsEnabled:(BOOL)a3;
- (void)setPropertyControllers:(NSDictionary *)propertyControllers;
- (void)setReferenceName:(id)a3;
- (void)setRenderingMode:(int64_t)a3;
- (void)setSeed:(int64_t)a3;
- (void)setSoftParticlesEnabled:(BOOL)a3;
- (void)setSortingMode:(SCNParticleSortingMode)sortingMode;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setSpeedFactor:(CGFloat)speedFactor;
- (void)setSpreadingAngle:(CGFloat)spreadingAngle;
- (void)setStretchFactor:(CGFloat)stretchFactor;
- (void)setSystemSpawnedOnCollision:(SCNParticleSystem *)systemSpawnedOnCollision;
- (void)setSystemSpawnedOnDying:(SCNParticleSystem *)systemSpawnedOnDying;
- (void)setSystemSpawnedOnLiving:(SCNParticleSystem *)systemSpawnedOnLiving;
- (void)setWarmupDuration:(CGFloat)warmupDuration;
- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNParticleSystem

- (void)setName:(id)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setName:];
    }
  }

  else if (a3 | self->_name)
  {
    if (([a3 isEqual:?] & 1) == 0)
    {

      self->_name = [a3 copy];
      v5 = [(SCNParticleSystem *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __29__SCNParticleSystem_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = a3;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

CFStringRef __29__SCNParticleSystem_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  return C3DEntitySetName(v2, v3);
}

- (id)name
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_name;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Name = C3DEntityGetName([(SCNParticleSystem *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNParticleSystem *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNParticleSystem *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNParticleSystem *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNParticleSystem *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNParticleSystem *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNParticleSystem *)self sceneRef];
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
    v8 = [(SCNParticleSystem *)self __CFObject];
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
    v8 = [(SCNParticleSystem *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SCNParticleSystem_addAnimationPlayer_forKey___block_invoke;
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
      [SCNParticleSystem addAnimationPlayer:forKey:];
    }
  }
}

void __47__SCNParticleSystem_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
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
    [(SCNParticleSystem *)self addAnimationPlayer:v7 forKey:v5];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v3 = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCNParticleSystem_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SCNParticleSystem_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    v5 = [(SCNParticleSystem *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SCNParticleSystem_removeAnimationForKey___block_invoke;
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
    v7 = [(SCNParticleSystem *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SCNParticleSystem_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = [(SCNParticleSystem *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNParticleSystem *)self __CFObject];
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
  v3 = [(SCNParticleSystem *)self _scnAnimationForKey:a3];
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
        [(SCNParticleSystem *)self addAnimationPlayer:v11 forKey:v10];
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
  v9 = [(SCNParticleSystem *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNParticleSystem *)self animationManager];
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
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNParticleSystem_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNParticleSystem_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNParticleSystem *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SCNParticleSystem_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __46__SCNParticleSystem_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNParticleSystem *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNParticleSystem *)self animationManager];
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

    v15 = [(SCNParticleSystem *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SCNParticleSystem_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __69__SCNParticleSystem_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNParticleSystem_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __42__SCNParticleSystem_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SCNParticleSystem_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __38__SCNParticleSystem_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

+ (SCNParticleSystem)particleSystem
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNParticleSystem)particleSystemNamed:(NSString *)name inDirectory:(NSString *)directory
{
  v6 = [(NSString *)name pathExtension];
  v7 = SCNGetResourceBundle();
  v8 = [(NSString *)name stringByDeletingPathExtension];
  if ([(NSString *)v6 length])
  {
    v9 = v6;
  }

  else
  {
    v9 = @"scnp";
  }

  v10 = [v7 URLForResource:v8 withExtension:v9 subdirectory:directory];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v10];
  if (!v12)
  {
    return 0;
  }

  v13 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v12 error:0];
  v14 = objc_opt_class();
  if (v14 != objc_opt_class())
  {
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    [v13 setClass:v15 forClassName:NSStringFromClass(v16)];
  }

  [v13 setRequiresSecureCoding:{C3DIOShouldActivateSecurityChecks(v11, 0)}];
  [v13 setDecodingFailurePolicy:0];
  v17 = [v13 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

  return v17;
}

- (SCNParticleSystem)init
{
  v5.receiver = self;
  v5.super_class = SCNParticleSystem;
  v2 = [(SCNParticleSystem *)&v5 init];
  if (v2)
  {
    v3 = C3DParticleSystemCreate();
    v2->_particleSystem = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNParticleSystem *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNParticleSystem)initWithParticleSystemRef:(__C3DParticleSystem *)a3
{
  v6.receiver = self;
  v6.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v6 init];
  if (v4)
  {
    v4->_particleSystem = CFRetain(a3);
    if (a3)
    {
      C3DEntitySetObjCWrapper(a3, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNParticleSystem *)v4 _syncObjCModel];
    [(SCNParticleSystem *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationSystemWithSystemRef:(__C3DParticleSystem *)a3
{
  v6.receiver = self;
  v6.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v6 init];
  if (v4)
  {
    v4->_particleSystem = CFRetain(a3);
    *(v4 + 16) |= 1u;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  if ((*(self + 16) & 1) == 0)
  {
    particleSystem = self->_particleSystem;
    if (particleSystem)
    {
      C3DEntitySetObjCWrapper(particleSystem, 0);
    }
  }

  CFRelease(self->_particleSystem);
  v4.receiver = self;
  v4.super_class = SCNParticleSystem;
  [(SCNParticleSystem *)&v4 dealloc];
}

- (void)_syncObjCModel
{
  v3 = [(SCNParticleSystem *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNParticleSystem *)self particleSystemRef];
  self->_emissionDuration = C3DParticleSystemGetEmissionDuration(v5);
  self->_emissionDurationVariation = C3DParticleSystemGetEmissionDurationVariation(v5);
  self->_idleDuration = C3DParticleSystemGetIdleDuration(v5);
  self->_idleDurationVariation = C3DParticleSystemGetIdleDurationVariation(v5);
  self->_birthRate = C3DParticleSystemGetBirthRate(v5);
  self->_birthRateVariation = C3DParticleSystemGetBirthRateVariation(v5);
  self->_warmupDuration = C3DParticleSystemGetWarmupDuration(v5);
  EmitterShape = C3DParticleSystemGetEmitterShape(v5);
  if (EmitterShape)
  {
    [(SCNParticleSystem *)self setEmitterShape:[SCNGeometry geometryWithGeometryRef:EmitterShape]];
  }

  self->_birthLocation = C3DParticleSystemGetBirthLocation(v5);
  self->_birthDirection = C3DParticleSystemGetBirthDirection(v5);
  EmittingDirection = C3DParticleSystemGetEmittingDirection(v5);
  *&self->_emittingDirection.x = EmittingDirection.n128_u64[0];
  LODWORD(self->_emittingDirection.z) = EmittingDirection.n128_u32[2];
  OrientationDirection = C3DParticleSystemGetOrientationDirection(v5);
  *&self->_orientationDirection.x = OrientationDirection.n128_u64[0];
  LODWORD(self->_orientationDirection.z) = OrientationDirection.n128_u32[2];
  Acceleration = C3DParticleSystemGetAcceleration(v5);
  *&self->_acceleration.x = Acceleration.n128_u64[0];
  LODWORD(self->_acceleration.z) = Acceleration.n128_u32[2];
  self->_spreadingAngle = C3DParticleSystemGetSpreadingAngle(v5);
  self->_loops = C3DParticleSystemGetLoops(v5);
  self->_isLocal = C3DParticleSystemGetIsLocal(v5);
  self->_affectedByGravity = C3DParticleSystemGetAffectedByGravity(v5);
  self->_affectedByPhysicsFields = C3DParticleSystemGetAffectedByPhysicsFields(v5);
  self->_physicsCollisionsEnabled = C3DParticleSystemGetPhysicsCollisionsEnabled(v5);
  self->_lightingEnabled = C3DParticleSystemGetLightingEnabled(v5);
  self->_softParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(v5);
  self->_particleDiesOnCollision = C3DParticleSystemGetParticleDiesOnCollision(v5);
  self->_blackPassEnabled = C3DParticleSystemGetBlackPassEnabled(v5);
  self->_writesToDepthBuffer = C3DParticleSystemGetWritesToDepthBuffer(v5);
  self->_particleAngle = C3DParticleSystemGetParticleAngle(v5);
  self->_particleAngleVariation = C3DParticleSystemGetParticleAngleVariation(v5);
  self->_particleVelocity = C3DParticleSystemGetParticleVelocity(v5);
  self->_particleVelocityVariation = C3DParticleSystemGetParticleVelocityVariation(v5);
  self->_particleAngularVelocity = C3DParticleSystemGetParticleAngularVelocity(v5);
  self->_particleAngularVelocityVariation = C3DParticleSystemGetParticleAngularVelocityVariation(v5);
  self->_particleLifeSpan = C3DParticleSystemGetParticleLifeSpan(v5);
  self->_particleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(v5);
  self->_particleBounce = C3DParticleSystemGetParticleBounce(v5);
  self->_particleBounceVariation = C3DParticleSystemGetParticleBounceVariation(v5);
  self->_particleFriction = C3DParticleSystemGetParticleFriction(v5);
  self->_particleFrictionVariation = C3DParticleSystemGetParticleFrictionVariation(v5);
  ParticleColor = C3DParticleSystemGetParticleColor(v5);
  [(SCNParticleSystem *)self setParticleColor:C3DColor4ToRGBCFColor(ParticleColor)];
  self->_particleColorVariation = C3DParticleSystemGetParticleColorVariation(v5);
  self->_particleSize = C3DParticleSystemGetParticleSize(v5);
  self->_particleSizeVariation = C3DParticleSystemGetParticleSizeVariation(v5);
  self->_particleIntensity = C3DParticleSystemGetParticleIntensity(v5);
  self->_particleIntensityVariation = C3DParticleSystemGetParticleIntensityVariation(v5);
  self->_seed = C3DParticleSystemGetSeed(v5);
  self->_blendMode = C3DParticleSystemGetBlendMode(v5);
  self->_renderingMode = C3DParticleSystemGetRenderingMode(v5);
  self->_orientationMode = C3DParticleSystemGetOrientationMode(v5);
  self->_imageSequenceAnimationMode = C3DParticleSystemGetImageSequenceAnimationMode(v5);
  self->_sortingMode = C3DParticleSystemGetSortingMode(v5);
  self->_particleMass = C3DParticleSystemGetParticleMass(v5);
  self->_particleMassVariation = C3DParticleSystemGetParticleMassVariation(v5);
  self->_dampingFactor = C3DParticleSystemGetDampingFactor(v5);
  self->_speedFactor = C3DParticleSystemGetSpeedFactor(v5);
  self->_fixedTimeStep = C3DParticleSystemGetFixedTimeStep(v5);
  self->_stretchFactor = C3DParticleSystemGetStretchFactor(v5);
  self->_imageSequenceRowCount = C3DParticleSystemGetImageSequenceRowCount(v5);
  self->_imageSequenceColumnCount = C3DParticleSystemGetImageSequenceColumnCount(v5);
  self->_imageSequenceInitialFrame = C3DParticleSystemGetImageSequenceInitialFrame(v5);
  self->_imageSequenceInitialFrameVariation = C3DParticleSystemGetImageSequenceInitialFrameVariation(v5);
  self->_imageSequenceFrameRate = C3DParticleSystemGetImageSequenceFrameRate(v5);
  self->_imageSequenceFrameRateVariation = C3DParticleSystemGetImageSequenceFrameRateVariation(v5);
  [(SCNParticleSystem *)self _syncEntityObjCModel];
  if (v4)
  {

    C3DSceneUnlock(v4);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v4 setName:{-[SCNParticleSystem name](self, "name")}];
  [v4 setParticleImage:{-[SCNParticleSystem particleImage](self, "particleImage")}];
  [(SCNParticleSystem *)self emissionDuration];
  [v4 setEmissionDuration:?];
  [(SCNParticleSystem *)self emissionDurationVariation];
  [v4 setEmissionDurationVariation:?];
  [(SCNParticleSystem *)self idleDuration];
  [v4 setIdleDuration:?];
  [(SCNParticleSystem *)self idleDurationVariation];
  [v4 setIdleDurationVariation:?];
  [(SCNParticleSystem *)self birthRate];
  [v4 setBirthRate:?];
  [(SCNParticleSystem *)self birthRateVariation];
  [v4 setBirthRateVariation:?];
  [(SCNParticleSystem *)self warmupDuration];
  [v4 setWarmupDuration:?];
  [v4 setEmitterShape:{-[SCNParticleSystem emitterShape](self, "emitterShape")}];
  [v4 setBirthLocation:{-[SCNParticleSystem birthLocation](self, "birthLocation")}];
  [v4 setBirthDirection:{-[SCNParticleSystem birthDirection](self, "birthDirection")}];
  [(SCNParticleSystem *)self emittingDirection];
  [v4 setEmittingDirection:?];
  [(SCNParticleSystem *)self orientationDirection];
  [v4 setOrientationDirection:?];
  [(SCNParticleSystem *)self acceleration];
  [v4 setAcceleration:?];
  [(SCNParticleSystem *)self spreadingAngle];
  [v4 setSpreadingAngle:?];
  [v4 setLoops:{-[SCNParticleSystem loops](self, "loops")}];
  [v4 setIsLocal:{-[SCNParticleSystem isLocal](self, "isLocal")}];
  [v4 setAffectedByGravity:{-[SCNParticleSystem affectedByGravity](self, "affectedByGravity")}];
  [v4 setAffectedByPhysicsFields:{-[SCNParticleSystem affectedByPhysicsFields](self, "affectedByPhysicsFields")}];
  [v4 setPhysicsCollisionsEnabled:{-[SCNParticleSystem physicsCollisionsEnabled](self, "physicsCollisionsEnabled")}];
  [v4 setLightingEnabled:{-[SCNParticleSystem isLightingEnabled](self, "isLightingEnabled")}];
  [v4 setSoftParticlesEnabled:{-[SCNParticleSystem areSoftParticlesEnabled](self, "areSoftParticlesEnabled")}];
  [v4 setParticleDiesOnCollision:{-[SCNParticleSystem particleDiesOnCollision](self, "particleDiesOnCollision")}];
  [v4 setBlackPassEnabled:{-[SCNParticleSystem isBlackPassEnabled](self, "isBlackPassEnabled")}];
  [(SCNParticleSystem *)self particleAngle];
  [v4 setParticleAngle:?];
  [(SCNParticleSystem *)self particleAngleVariation];
  [v4 setParticleAngleVariation:?];
  [(SCNParticleSystem *)self particleVelocity];
  [v4 setParticleVelocity:?];
  [(SCNParticleSystem *)self particleVelocityVariation];
  [v4 setParticleVelocityVariation:?];
  [(SCNParticleSystem *)self particleAngularVelocity];
  [v4 setParticleAngularVelocity:?];
  [(SCNParticleSystem *)self particleAngularVelocityVariation];
  [v4 setParticleAngularVelocityVariation:?];
  [(SCNParticleSystem *)self particleLifeSpan];
  [v4 setParticleLifeSpan:?];
  [(SCNParticleSystem *)self particleLifeSpanVariation];
  [v4 setParticleLifeSpanVariation:?];
  [(SCNParticleSystem *)self particleBounce];
  [v4 setParticleBounce:?];
  [(SCNParticleSystem *)self particleBounceVariation];
  [v4 setParticleBounceVariation:?];
  [(SCNParticleSystem *)self particleFriction];
  [v4 setParticleFriction:?];
  [(SCNParticleSystem *)self particleFrictionVariation];
  [v4 setParticleFrictionVariation:?];
  [(SCNParticleSystem *)self particleCharge];
  [v4 setParticleCharge:?];
  [(SCNParticleSystem *)self particleChargeVariation];
  [v4 setParticleChargeVariation:?];
  [v4 setParticleColor:{-[SCNParticleSystem particleColor](self, "particleColor")}];
  [(SCNParticleSystem *)self particleColorVariation];
  [v4 setParticleColorVariation:?];
  [v4 setSystemSpawnedOnCollision:{-[SCNParticleSystem systemSpawnedOnCollision](self, "systemSpawnedOnCollision")}];
  [v4 setSystemSpawnedOnDying:{-[SCNParticleSystem systemSpawnedOnDying](self, "systemSpawnedOnDying")}];
  [v4 setSystemSpawnedOnLiving:{-[SCNParticleSystem systemSpawnedOnLiving](self, "systemSpawnedOnLiving")}];
  [(SCNParticleSystem *)self particleSize];
  [v4 setParticleSize:?];
  [(SCNParticleSystem *)self particleSizeVariation];
  [v4 setParticleSizeVariation:?];
  [v4 setSeed:{-[SCNParticleSystem seed](self, "seed")}];
  [v4 setBlendMode:{-[SCNParticleSystem blendMode](self, "blendMode")}];
  [v4 setRenderingMode:{-[SCNParticleSystem renderingMode](self, "renderingMode")}];
  [v4 setOrientationMode:{-[SCNParticleSystem orientationMode](self, "orientationMode")}];
  [v4 setImageSequenceAnimationMode:{-[SCNParticleSystem imageSequenceAnimationMode](self, "imageSequenceAnimationMode")}];
  [v4 setParticleGeometries:{-[SCNParticleSystem particleGeometries](self, "particleGeometries")}];
  [v4 setColliderNodes:{-[SCNParticleSystem colliderNodes](self, "colliderNodes")}];
  [v4 setPropertyControllers:{-[SCNParticleSystem propertyControllers](self, "propertyControllers")}];
  [v4 setSortingMode:{-[SCNParticleSystem sortingMode](self, "sortingMode")}];
  [(SCNParticleSystem *)self particleMass];
  [v4 setParticleMass:?];
  [(SCNParticleSystem *)self particleMassVariation];
  [v4 setParticleMassVariation:?];
  [(SCNParticleSystem *)self dampingFactor];
  [v4 setDampingFactor:?];
  [(SCNParticleSystem *)self speedFactor];
  [v4 setSpeedFactor:?];
  [(SCNParticleSystem *)self fixedTimeStep];
  [v4 setFixedTimeStep:?];
  [(SCNParticleSystem *)self stretchFactor];
  [v4 setStretchFactor:?];
  [v4 setImageSequenceRowCount:{-[SCNParticleSystem imageSequenceRowCount](self, "imageSequenceRowCount")}];
  [v4 setImageSequenceColumnCount:{-[SCNParticleSystem imageSequenceColumnCount](self, "imageSequenceColumnCount")}];
  [(SCNParticleSystem *)self imageSequenceInitialFrame];
  [v4 setImageSequenceInitialFrame:?];
  [(SCNParticleSystem *)self imageSequenceInitialFrameVariation];
  [v4 setImageSequenceInitialFrameVariation:?];
  [(SCNParticleSystem *)self imageSequenceFrameRate];
  [v4 setImageSequenceFrameRate:?];
  [(SCNParticleSystem *)self imageSequenceFrameRateVariation];
  [v4 setImageSequenceFrameRateVariation:?];
  [v4 setWritesToDepthBuffer:{-[SCNParticleSystem writesToDepthBuffer](self, "writesToDepthBuffer")}];
  [v4 setReferenceName:{-[SCNParticleSystem referenceName](self, "referenceName")}];
  [v4 _copyAnimationsFrom:self];
  +[SCNTransaction commitImmediate];
  return v4;
}

+ (SCNParticleSystem)particleSystemWithParticleSystemRef:(__C3DParticleSystem *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithParticleSystemRef:a3];

    return v6;
  }

  return result;
}

- (id)presentationInstance
{
  v2 = [[SCNParticleSystem alloc] initPresentationSystemWithSystemRef:self->_particleSystem];

  return v2;
}

- (id)particleGeometries
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleGeometries;
  }

  result = [(SCNParticleSystem *)self sceneRef];
  if (result)
  {
    v3 = result;
    C3DSceneLock(result);
    C3DSceneUnlock(v3);
    return 0;
  }

  return result;
}

- (signed)typeOfProperty:(id)a3
{
  v9[12] = *MEMORY[0x277D85DE8];
  v4 = typeOfProperty__s_properties;
  if (!typeOfProperty__s_properties)
  {
    v8[0] = @"Position";
    v8[1] = @"Angle";
    v9[0] = &unk_282E0F870;
    v9[1] = &unk_282E0F888;
    v8[2] = @"RotationAxis";
    v8[3] = @"Velocity";
    v9[2] = &unk_282E0F870;
    v9[3] = &unk_282E0F870;
    v8[4] = @"AngularVelocity";
    v8[5] = @"Life";
    v9[4] = &unk_282E0F888;
    v9[5] = &unk_282E0F888;
    v8[6] = @"Color";
    v8[7] = @"Opacity";
    v9[6] = &unk_282E0F8A0;
    v9[7] = &unk_282E0F888;
    v8[8] = @"Size";
    v8[9] = @"Bounce";
    v9[8] = &unk_282E0F888;
    v9[9] = &unk_282E0F888;
    v8[10] = @"Friction";
    v8[11] = @"Charge";
    v9[10] = &unk_282E0F888;
    v9[11] = &unk_282E0F888;
    typeOfProperty__s_properties = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:12];
    v5 = typeOfProperty__s_properties;
    v4 = typeOfProperty__s_properties;
  }

  v6 = [v4 objectForKey:a3];
  if (v6)
  {
    LOWORD(v6) = [v6 intValue];
  }

  return v6;
}

- (void)setParticleGeometries:(id)a3
{
  if (*(self + 16))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleGeometries:];
    }
  }

  else if (self->_particleGeometries != a3)
  {
    self->_particleGeometries = a3;
    v4 = [(SCNParticleSystem *)self sceneRef];

    [SCNTransaction postCommandWithContext:v4 object:self applyBlock:&__block_literal_global_71];
  }
}

- (NSArray)colliderNodes
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_colliderNodes;
  }

  result = [(SCNParticleSystem *)self sceneRef];
  if (result)
  {
    v3 = result;
    C3DSceneLock(result);
    C3DSceneUnlock(v3);
    return 0;
  }

  return result;
}

- (void)setColliderNodes:(NSArray *)colliderNodes
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setColliderNodes:];
    }
  }

  else
  {
    v5 = self->_colliderNodes;
    if (v5 != colliderNodes)
    {

      self->_colliderNodes = [(NSArray *)colliderNodes copy];
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __38__SCNParticleSystem_setColliderNodes___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = colliderNodes;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

void __38__SCNParticleSystem_setColliderNodes___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = [*(a1 + 32) count];
  Mutable = CFArrayCreateMutable(v2, v3, MEMORY[0x277CBF128]);
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNParticleSystem_setColliderNodes___block_invoke_2;
  v6[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v6[4] = Mutable;
  [v5 enumerateObjectsUsingBlock:v6];
  C3DParticleSystemSetColliderNodes(*(*(a1 + 40) + 8), Mutable);
  CFRelease(Mutable);
}

void __38__SCNParticleSystem_setColliderNodes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 __CFObject];

  CFArrayAppendValue(v2, v3);
}

- (void)setPropertyControllers:(NSDictionary *)propertyControllers
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setPropertyControllers:];
    }
  }

  else
  {

    self->_propertyControllers = [(NSDictionary *)propertyControllers copy];
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNParticleSystem_setPropertyControllers___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = propertyControllers;
    v7[5] = self;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

void __44__SCNParticleSystem_setPropertyControllers___block_invoke(uint64_t a1)
{
  *(&v43[1] + 4) = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v30 = *(a1 + 40);
  cf = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v1 allKeys];
  v2 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * v5);
        v7 = [v1 valueForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [MEMORY[0x277CBEB38] dictionary];
          v9 = [v7 animation];
          if (v9)
          {
            v10 = v9;
            v11 = [v30 typeOfProperty:v6];
            if (v11)
            {
              v12 = v11;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = CABasicAnimationToC3DAnimation(v10, v12, 0);
                goto LABEL_16;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = CAKeyframeAnimationToC3DAnimation(v10, v12, 0);
LABEL_16:
                v17 = v13;
                if (v13)
                {
                  C3DAnimationSetup(v13, 0);
                  [v8 setValue:v17 forKey:@"ControllerAnimation"];
                  v14 = v7;
                  v15 = v17;
LABEL_18:
                  [v14 setC3dAnimation:v15];
                }
              }

              else
              {
                v27 = scn_default_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  __44__SCNParticleSystem_setPropertyControllers___block_invoke_cold_1(v42, v10, v43, v27);
                }
              }
            }

            else
            {
              v16 = scn_default_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v6;
                _os_log_error_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_ERROR, "Error: Can't introspect type of property %@", buf, 0xCu);
              }
            }

            [v7 inputScale];
            if (v18 != 1.0)
            {
              v19 = MEMORY[0x277CCABB0];
              [v7 inputScale];
              *&v20 = v20;
              [v8 setValue:objc_msgSend(v19 forKey:{"numberWithFloat:", v20), @"ControllerVariableScale"}];
            }

            [v7 inputBias];
            if (v21 != 0.0)
            {
              v22 = MEMORY[0x277CCABB0];
              [v7 inputBias];
              *&v23 = v23;
              [v8 setValue:objc_msgSend(v22 forKey:{"numberWithFloat:", v23), @"ControllerVariableBias"}];
            }

            if ([v7 inputOrigin])
            {
              [v8 setValue:objc_msgSend(objc_msgSend(v7 forKey:{"inputOrigin"), "nodeRef"), @"ControllerVariableOrigin"}];
            }

            v24 = [v7 inputMode];
            v25 = @"ControllerVariableOverLife";
            if (v24)
            {
              v25 = @"ControllerVariableOverOtherProperty";
              if (v24 != 2)
              {
                v25 = @"ControllerVariableOverDistance";
                if (v24 != 1)
                {
                  v26 = scn_default_log();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    __44__SCNParticleSystem_setPropertyControllers___block_invoke_cold_2(&v37, v38, v26);
                  }

                  v25 = 0;
                }
              }
            }

            [v8 setValue:v25 forKey:@"ControllerVariableMode"];
            [v8 setValue:objc_msgSend(v7 forKey:{"inputProperty"), @"ControllerVariableOverOtherProperty"}];
            [cf setObject:v8 forKey:v6];
            goto LABEL_32;
          }

          v14 = v7;
          v15 = 0;
          goto LABEL_18;
        }

LABEL_32:
        ++v5;
      }

      while (v3 != v5);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      v3 = v28;
    }

    while (v28);
  }

  C3DParticleSystemSetProperyControllers(*(*(a1 + 40) + 8), cf);
}

- (void)_updateParticleC3DImage:(id)a3
{
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNParticleSystem__updateParticleC3DImage___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = a3;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __45__SCNParticleSystem__updateParticleC3DImage___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [SCNMaterialProperty copyC3DImageFromImage:?];
    if (v2)
    {
      v3 = v2;
      C3DParticleSystemSetParticleTexture(*(*(a1 + 40) + 8), v2);

      CFRelease(v3);
    }
  }

  else
  {
    v4 = *(*(a1 + 40) + 8);

    C3DParticleSystemSetParticleTexture(v4, 0);
  }
}

- (void)setParticleImage:(id)particleImage
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleImage:];
    }
  }

  else
  {
    v5 = self->_particleImage;
    if (v5 != particleImage)
    {

      self->_particleImage = particleImage;

      [(SCNParticleSystem *)self _updateParticleC3DImage:particleImage];
    }
  }
}

- (void)_setParticleImagePath:(id)a3 withResolvedPath:(id)a4
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem _setParticleImagePath:withResolvedPath:];
    }
  }

  else
  {

    self->_particleImage = a3;

    [(SCNParticleSystem *)self _updateParticleC3DImage:a4];
  }
}

- (SCNVector3)orientationDirection
{
  if (*(self + 16))
  {
    v5 = [(SCNParticleSystem *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    OrientationDirection = C3DParticleSystemGetOrientationDirection(self->_particleSystem);
    z = OrientationDirection.n128_f32[2];
    if (v6)
    {
      v9 = OrientationDirection.n128_u64[0];
      C3DSceneUnlock(v6);
      OrientationDirection.n128_u64[0] = v9;
    }
  }

  else
  {
    OrientationDirection.n128_u64[0] = *&self->_orientationDirection.x;
    z = self->_orientationDirection.z;
  }

  v7 = OrientationDirection.n128_f32[1];
  v8 = z;
  result.x = OrientationDirection.n128_f32[0];
  result.z = v8;
  result.y = v7;
  return result;
}

- (void)setOrientationDirection:(SCNVector3)orientationDirection
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setOrientationDirection:];
    }
  }

  else
  {
    z = orientationDirection.z;
    y = orientationDirection.y;
    x = orientationDirection.x;
    if (!SCNVector3EqualToVector3(orientationDirection, self->_orientationDirection))
    {
      self->_orientationDirection.x = x;
      self->_orientationDirection.y = y;
      self->_orientationDirection.z = z;
      v7 = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__SCNParticleSystem_setOrientationDirection___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"orientationDirection" applyBlock:v9];
    }
  }
}

void __45__SCNParticleSystem_setOrientationDirection___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DParticleSystemSetOrientationDirection(*(*(a1 + 32) + 8), a2);
}

- (double)lightEmissionRadiusFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_lightEmissionRadiusFactor;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetLightEmissionRadiusFactor(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  LightEmissionRadiusFactor = C3DParticleSystemGetLightEmissionRadiusFactor(self->_particleSystem);
  C3DSceneUnlock(v5);
  return LightEmissionRadiusFactor;
}

- (void)setLightEmissionRadiusFactor:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setLightEmissionRadiusFactor:];
    }
  }

  else if (self->_lightEmissionRadiusFactor != a3)
  {
    self->_lightEmissionRadiusFactor = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setLightEmissionRadiusFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fixedTimeStep" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setLightEmissionRadiusFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetLightEmissionRadiusFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (SCNVector3)acceleration
{
  if (*(self + 16))
  {
    v5 = [(SCNParticleSystem *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    Acceleration = C3DParticleSystemGetAcceleration(self->_particleSystem);
    z = Acceleration.n128_f32[2];
    if (v6)
    {
      v9 = Acceleration.n128_u64[0];
      C3DSceneUnlock(v6);
      Acceleration.n128_u64[0] = v9;
    }
  }

  else
  {
    Acceleration.n128_u64[0] = *&self->_acceleration.x;
    z = self->_acceleration.z;
  }

  v7 = Acceleration.n128_f32[1];
  v8 = z;
  result.x = Acceleration.n128_f32[0];
  result.z = v8;
  result.y = v7;
  return result;
}

- (BOOL)affectedByGravity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_affectedByGravity;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    AffectedByGravity = C3DParticleSystemGetAffectedByGravity(self->_particleSystem);
    C3DSceneUnlock(v5);
    return AffectedByGravity;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetAffectedByGravity(particleSystem);
  }
}

- (void)setAffectedByGravity:(BOOL)affectedByGravity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setAffectedByGravity:];
    }
  }

  else if (self->_affectedByGravity != affectedByGravity)
  {
    self->_affectedByGravity = affectedByGravity;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNParticleSystem_setAffectedByGravity___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = affectedByGravity;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"affectedByGravity" applyBlock:v7];
  }
}

- (BOOL)affectedByPhysicsFields
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_affectedByPhysicsFields;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    AffectedByPhysicsFields = C3DParticleSystemGetAffectedByPhysicsFields(self->_particleSystem);
    C3DSceneUnlock(v5);
    return AffectedByPhysicsFields;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetAffectedByPhysicsFields(particleSystem);
  }
}

- (void)setAffectedByPhysicsFields:(BOOL)affectedByPhysicsFields
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setAffectedByPhysicsFields:];
    }
  }

  else if (self->_affectedByPhysicsFields != affectedByPhysicsFields)
  {
    self->_affectedByPhysicsFields = affectedByPhysicsFields;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setAffectedByPhysicsFields___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = affectedByPhysicsFields;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (SCNParticleBirthDirection)birthDirection
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthDirection;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetBirthDirection(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BirthDirection = C3DParticleSystemGetBirthDirection(self->_particleSystem);
  C3DSceneUnlock(v5);
  return BirthDirection;
}

- (void)setBirthDirection:(SCNParticleBirthDirection)birthDirection
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBirthDirection:];
    }
  }

  else if (self->_birthDirection != birthDirection)
  {
    self->_birthDirection = birthDirection;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setBirthDirection___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = birthDirection;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (SCNParticleBirthLocation)birthLocation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthLocation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetBirthLocation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BirthLocation = C3DParticleSystemGetBirthLocation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return BirthLocation;
}

- (void)setBirthLocation:(SCNParticleBirthLocation)birthLocation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBirthLocation:];
    }
  }

  else if (self->_birthLocation != birthLocation)
  {
    self->_birthLocation = birthLocation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setBirthLocation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = birthLocation;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)birthRate
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthRate;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetBirthRate(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BirthRate = C3DParticleSystemGetBirthRate(self->_particleSystem);
  C3DSceneUnlock(v5);
  return BirthRate;
}

- (void)setBirthRate:(CGFloat)birthRate
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBirthRate:];
    }
  }

  else if (self->_birthRate != birthRate)
  {
    self->_birthRate = birthRate;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNParticleSystem_setBirthRate___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = birthRate;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"birthRate" applyBlock:v7];
  }
}

float __34__SCNParticleSystem_setBirthRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetBirthRate(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)birthRateVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthRateVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetBirthRateVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BirthRateVariation = C3DParticleSystemGetBirthRateVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return BirthRateVariation;
}

- (void)setBirthRateVariation:(CGFloat)birthRateVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBirthRateVariation:];
    }
  }

  else if (self->_birthRateVariation != birthRateVariation)
  {
    self->_birthRateVariation = birthRateVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__SCNParticleSystem_setBirthRateVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = birthRateVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"birthRateVariation" applyBlock:v7];
  }
}

float __43__SCNParticleSystem_setBirthRateVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetBirthRateVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)blackPassEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_blackPassEnabled;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    BlackPassEnabled = C3DParticleSystemGetBlackPassEnabled(self->_particleSystem);
    C3DSceneUnlock(v5);
    return BlackPassEnabled;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetBlackPassEnabled(particleSystem);
  }
}

- (void)setBlackPassEnabled:(BOOL)blackPassEnabled
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBlackPassEnabled:];
    }
  }

  else if (self->_blackPassEnabled != blackPassEnabled)
  {
    self->_blackPassEnabled = blackPassEnabled;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setBlackPassEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = blackPassEnabled;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (SCNParticleBlendMode)blendMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_blendMode;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetBlendMode(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  BlendMode = C3DParticleSystemGetBlendMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return BlendMode;
}

- (void)setBlendMode:(SCNParticleBlendMode)blendMode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setBlendMode:];
    }
  }

  else if (self->_blendMode != blendMode)
  {
    self->_blendMode = blendMode;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNParticleSystem_setBlendMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = blendMode;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)dampingFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_dampingFactor;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetDampingFactor(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  DampingFactor = C3DParticleSystemGetDampingFactor(self->_particleSystem);
  C3DSceneUnlock(v5);
  return DampingFactor;
}

- (void)setDampingFactor:(CGFloat)dampingFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setDampingFactor:];
    }
  }

  else if (self->_dampingFactor != dampingFactor)
  {
    self->_dampingFactor = dampingFactor;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setDampingFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = dampingFactor;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"dampingFactor" applyBlock:v7];
  }
}

float __38__SCNParticleSystem_setDampingFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetDampingFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)emissionDuration
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_emissionDuration;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetEmissionDuration(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  EmissionDuration = C3DParticleSystemGetEmissionDuration(self->_particleSystem);
  C3DSceneUnlock(v5);
  return EmissionDuration;
}

- (void)setEmissionDuration:(CGFloat)emissionDuration
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setEmissionDuration:];
    }
  }

  else if (self->_emissionDuration != emissionDuration)
  {
    self->_emissionDuration = emissionDuration;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setEmissionDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = emissionDuration;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"emissionDuration" applyBlock:v7];
  }
}

float __41__SCNParticleSystem_setEmissionDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetEmissionDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)emissionDurationVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_emissionDurationVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetEmissionDurationVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  EmissionDurationVariation = C3DParticleSystemGetEmissionDurationVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return EmissionDurationVariation;
}

- (void)setEmissionDurationVariation:(CGFloat)emissionDurationVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setEmissionDurationVariation:];
    }
  }

  else if (self->_emissionDurationVariation != emissionDurationVariation)
  {
    self->_emissionDurationVariation = emissionDurationVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setEmissionDurationVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = emissionDurationVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"emissionDurationVariation" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setEmissionDurationVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetEmissionDurationVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (SCNGeometry)emitterShape
{
  if (*(self + 16))
  {
    v4 = [(SCNParticleSystem *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    EmitterShape = C3DParticleSystemGetEmitterShape(self->_particleSystem);
    if (EmitterShape)
    {
      v3 = [SCNGeometry geometryWithGeometryRef:EmitterShape];
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

  return self->_emitterShape;
}

- (void)setEmitterShape:(SCNGeometry *)emitterShape
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setEmitterShape:];
    }
  }

  else
  {
    v5 = self->_emitterShape;
    if (v5 != emitterShape)
    {

      self->_emitterShape = emitterShape;
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__SCNParticleSystem_setEmitterShape___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = emitterShape;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __37__SCNParticleSystem_setEmitterShape___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) __CFObject];

  return C3DParticleSystemSetEmitterShape(v1, v2);
}

- (SCNVector3)emittingDirection
{
  if (*(self + 16))
  {
    v5 = [(SCNParticleSystem *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    EmittingDirection = C3DParticleSystemGetEmittingDirection(self->_particleSystem);
    z = EmittingDirection.n128_f32[2];
    if (v6)
    {
      v9 = EmittingDirection.n128_u64[0];
      C3DSceneUnlock(v6);
      EmittingDirection.n128_u64[0] = v9;
    }
  }

  else
  {
    EmittingDirection.n128_u64[0] = *&self->_emittingDirection.x;
    z = self->_emittingDirection.z;
  }

  v7 = EmittingDirection.n128_f32[1];
  v8 = z;
  result.x = EmittingDirection.n128_f32[0];
  result.z = v8;
  result.y = v7;
  return result;
}

- (double)fixedTimeStep
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_fixedTimeStep;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetFixedTimeStep(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  FixedTimeStep = C3DParticleSystemGetFixedTimeStep(self->_particleSystem);
  C3DSceneUnlock(v5);
  return FixedTimeStep;
}

- (void)setFixedTimeStep:(double)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setFixedTimeStep:];
    }
  }

  else if (self->_fixedTimeStep != a3)
  {
    self->_fixedTimeStep = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setFixedTimeStep___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fixedTimeStep" applyBlock:v7];
  }
}

float __38__SCNParticleSystem_setFixedTimeStep___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetFixedTimeStep(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)fresnelExponent
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_fresnelExponent;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetFresnelExponent(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  FresnelExponent = C3DParticleSystemGetFresnelExponent(self->_particleSystem);
  C3DSceneUnlock(v5);
  return FresnelExponent;
}

- (void)setFresnelExponent:(CGFloat)fresnelExponent
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setFresnelExponent:];
    }
  }

  else if (self->_fresnelExponent != fresnelExponent)
  {
    self->_fresnelExponent = fresnelExponent;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setFresnelExponent___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = fresnelExponent;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"fresnelExponent" applyBlock:v7];
  }
}

float __40__SCNParticleSystem_setFresnelExponent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetFresnelExponent(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)idleDuration
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_idleDuration;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetIdleDuration(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  IdleDuration = C3DParticleSystemGetIdleDuration(self->_particleSystem);
  C3DSceneUnlock(v5);
  return IdleDuration;
}

- (void)setIdleDuration:(CGFloat)idleDuration
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setIdleDuration:];
    }
  }

  else if (self->_idleDuration != idleDuration)
  {
    self->_idleDuration = idleDuration;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setIdleDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = idleDuration;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"idleDuration" applyBlock:v7];
  }
}

float __37__SCNParticleSystem_setIdleDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetIdleDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)idleDurationVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_idleDurationVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetIdleDurationVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  IdleDurationVariation = C3DParticleSystemGetIdleDurationVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return IdleDurationVariation;
}

- (void)setIdleDurationVariation:(CGFloat)idleDurationVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setIdleDurationVariation:];
    }
  }

  else if (self->_idleDurationVariation != idleDurationVariation)
  {
    self->_idleDurationVariation = idleDurationVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setIdleDurationVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = idleDurationVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"idleDurationVariation" applyBlock:v7];
  }
}

float __46__SCNParticleSystem_setIdleDurationVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetIdleDurationVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (SCNParticleImageSequenceAnimationMode)imageSequenceAnimationMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceAnimationMode;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceAnimationMode(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceAnimationMode = C3DParticleSystemGetImageSequenceAnimationMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceAnimationMode;
}

- (void)setImageSequenceAnimationMode:(SCNParticleImageSequenceAnimationMode)imageSequenceAnimationMode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceAnimationMode:];
    }
  }

  else if (self->_imageSequenceAnimationMode != imageSequenceAnimationMode)
  {
    self->_imageSequenceAnimationMode = imageSequenceAnimationMode;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNParticleSystem_setImageSequenceAnimationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceAnimationMode;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (NSUInteger)imageSequenceColumnCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceColumnCount;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceColumnCount(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceColumnCount = C3DParticleSystemGetImageSequenceColumnCount(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceColumnCount;
}

- (void)setImageSequenceColumnCount:(NSUInteger)imageSequenceColumnCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceColumnCount:];
    }
  }

  else if (self->_imageSequenceColumnCount != imageSequenceColumnCount)
  {
    self->_imageSequenceColumnCount = imageSequenceColumnCount;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNParticleSystem_setImageSequenceColumnCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceColumnCount;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceColumnCount" applyBlock:v7];
  }
}

- (CGFloat)imageSequenceFrameRate
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceFrameRate;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceFrameRate(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceFrameRate = C3DParticleSystemGetImageSequenceFrameRate(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceFrameRate;
}

- (void)setImageSequenceFrameRate:(CGFloat)imageSequenceFrameRate
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceFrameRate:];
    }
  }

  else if (self->_imageSequenceFrameRate != imageSequenceFrameRate)
  {
    self->_imageSequenceFrameRate = imageSequenceFrameRate;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNParticleSystem_setImageSequenceFrameRate___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceFrameRate;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceFrameRate" applyBlock:v7];
  }
}

float __47__SCNParticleSystem_setImageSequenceFrameRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetImageSequenceFrameRate(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)imageSequenceFrameRateVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceFrameRateVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceFrameRateVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceFrameRateVariation = C3DParticleSystemGetImageSequenceFrameRateVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceFrameRateVariation;
}

- (void)setImageSequenceFrameRateVariation:(CGFloat)imageSequenceFrameRateVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceFrameRateVariation:];
    }
  }

  else if (self->_imageSequenceFrameRateVariation != imageSequenceFrameRateVariation)
  {
    self->_imageSequenceFrameRateVariation = imageSequenceFrameRateVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SCNParticleSystem_setImageSequenceFrameRateVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceFrameRateVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceFrameRateVariation" applyBlock:v7];
  }
}

float __56__SCNParticleSystem_setImageSequenceFrameRateVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetImageSequenceFrameRateVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)imageSequenceInitialFrame
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceInitialFrame;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceInitialFrame(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceInitialFrame = C3DParticleSystemGetImageSequenceInitialFrame(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceInitialFrame;
}

- (void)setImageSequenceInitialFrame:(CGFloat)imageSequenceInitialFrame
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceInitialFrame:];
    }
  }

  else if (self->_imageSequenceInitialFrame != imageSequenceInitialFrame)
  {
    self->_imageSequenceInitialFrame = imageSequenceInitialFrame;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setImageSequenceInitialFrame___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceInitialFrame;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceInitialFrame" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setImageSequenceInitialFrame___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetImageSequenceInitialFrame(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)imageSequenceInitialFrameVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceInitialFrameVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceInitialFrameVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceInitialFrameVariation = C3DParticleSystemGetImageSequenceInitialFrameVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceInitialFrameVariation;
}

- (void)setImageSequenceInitialFrameVariation:(CGFloat)imageSequenceInitialFrameVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceInitialFrameVariation:];
    }
  }

  else if (self->_imageSequenceInitialFrameVariation != imageSequenceInitialFrameVariation)
  {
    self->_imageSequenceInitialFrameVariation = imageSequenceInitialFrameVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__SCNParticleSystem_setImageSequenceInitialFrameVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceInitialFrameVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceInitialFrameVariation" applyBlock:v7];
  }
}

float __59__SCNParticleSystem_setImageSequenceInitialFrameVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetImageSequenceInitialFrameVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (NSUInteger)imageSequenceRowCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceRowCount;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetImageSequenceRowCount(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ImageSequenceRowCount = C3DParticleSystemGetImageSequenceRowCount(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ImageSequenceRowCount;
}

- (void)setImageSequenceRowCount:(NSUInteger)imageSequenceRowCount
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setImageSequenceRowCount:];
    }
  }

  else if (self->_imageSequenceRowCount != imageSequenceRowCount)
  {
    self->_imageSequenceRowCount = imageSequenceRowCount;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setImageSequenceRowCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceRowCount;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"imageSequenceRowCount" applyBlock:v7];
  }
}

- (BOOL)isLocal
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_isLocal;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    IsLocal = C3DParticleSystemGetIsLocal(self->_particleSystem);
    C3DSceneUnlock(v5);
    return IsLocal;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetIsLocal(particleSystem);
  }
}

- (void)setIsLocal:(BOOL)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setIsLocal:];
    }
  }

  else if (self->_isLocal != a3)
  {
    self->_isLocal = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNParticleSystem_setIsLocal___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = a3;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"isLocal" applyBlock:v7];
  }
}

- (BOOL)lightingEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_lightingEnabled;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    LightingEnabled = C3DParticleSystemGetLightingEnabled(self->_particleSystem);
    C3DSceneUnlock(v5);
    return LightingEnabled;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetLightingEnabled(particleSystem);
  }
}

- (void)setLightingEnabled:(BOOL)lightingEnabled
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setLightingEnabled:];
    }
  }

  else if (self->_lightingEnabled != lightingEnabled)
  {
    self->_lightingEnabled = lightingEnabled;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setLightingEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = lightingEnabled;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)loops
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_loops;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    Loops = C3DParticleSystemGetLoops(self->_particleSystem);
    C3DSceneUnlock(v5);
    return Loops;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetLoops(particleSystem);
  }
}

- (void)setLoops:(BOOL)loops
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setLoops:];
    }
  }

  else if (self->_loops != loops)
  {
    self->_loops = loops;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__SCNParticleSystem_setLoops___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = loops;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"loops" applyBlock:v7];
  }
}

- (SCNParticleOrientationMode)orientationMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_orientationMode;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetOrientationMode(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  OrientationMode = C3DParticleSystemGetOrientationMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return OrientationMode;
}

- (void)setOrientationMode:(SCNParticleOrientationMode)orientationMode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setOrientationMode:];
    }
  }

  else if (self->_orientationMode != orientationMode)
  {
    self->_orientationMode = orientationMode;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setOrientationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = orientationMode;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)particleAngle
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleAngle;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleAngle(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleAngle = C3DParticleSystemGetParticleAngle(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleAngle;
}

- (void)setParticleAngle:(CGFloat)particleAngle
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleAngle:];
    }
  }

  else if (self->_particleAngle != particleAngle)
  {
    self->_particleAngle = particleAngle;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setParticleAngle___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngle;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleAngle" applyBlock:v7];
  }
}

float __38__SCNParticleSystem_setParticleAngle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleAngle(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleAngleVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleAngleVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleAngleVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleAngleVariation = C3DParticleSystemGetParticleAngleVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleAngleVariation;
}

- (void)setParticleAngleVariation:(CGFloat)particleAngleVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleAngleVariation:];
    }
  }

  else if (self->_particleAngleVariation != particleAngleVariation)
  {
    self->_particleAngleVariation = particleAngleVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNParticleSystem_setParticleAngleVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngleVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleAngleVariation" applyBlock:v7];
  }
}

float __47__SCNParticleSystem_setParticleAngleVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleAngleVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleAngularVelocity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleAngularVelocity;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleAngularVelocity(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleAngularVelocity = C3DParticleSystemGetParticleAngularVelocity(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleAngularVelocity;
}

- (void)setParticleAngularVelocity:(CGFloat)particleAngularVelocity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleAngularVelocity:];
    }
  }

  else if (self->_particleAngularVelocity != particleAngularVelocity)
  {
    self->_particleAngularVelocity = particleAngularVelocity;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleAngularVelocity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngularVelocity;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleAngularVelocity" applyBlock:v7];
  }
}

float __48__SCNParticleSystem_setParticleAngularVelocity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleAngularVelocity(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleAngularVelocityVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleAngularVelocityVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleAngularVelocityVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleAngularVelocityVariation = C3DParticleSystemGetParticleAngularVelocityVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleAngularVelocityVariation;
}

- (void)setParticleAngularVelocityVariation:(CGFloat)particleAngularVelocityVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleAngularVelocityVariation:];
    }
  }

  else if (self->_particleAngularVelocityVariation != particleAngularVelocityVariation)
  {
    self->_particleAngularVelocityVariation = particleAngularVelocityVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SCNParticleSystem_setParticleAngularVelocityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngularVelocityVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleAngularVelocityVariation" applyBlock:v7];
  }
}

float __57__SCNParticleSystem_setParticleAngularVelocityVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleAngularVelocityVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleBounce
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleBounce;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleBounce(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleBounce = C3DParticleSystemGetParticleBounce(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleBounce;
}

- (void)setParticleBounce:(CGFloat)particleBounce
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleBounce:];
    }
  }

  else if (self->_particleBounce != particleBounce)
  {
    self->_particleBounce = particleBounce;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setParticleBounce___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleBounce;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleBounce" applyBlock:v7];
  }
}

float __39__SCNParticleSystem_setParticleBounce___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleBounce(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleBounceVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleBounceVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleBounceVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleBounceVariation = C3DParticleSystemGetParticleBounceVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleBounceVariation;
}

- (void)setParticleBounceVariation:(CGFloat)particleBounceVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleBounceVariation:];
    }
  }

  else if (self->_particleBounceVariation != particleBounceVariation)
  {
    self->_particleBounceVariation = particleBounceVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleBounceVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleBounceVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleBounceVariation" applyBlock:v7];
  }
}

float __48__SCNParticleSystem_setParticleBounceVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleBounceVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleCharge
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleCharge;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleCharge(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleCharge = C3DParticleSystemGetParticleCharge(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleCharge;
}

- (void)setParticleCharge:(CGFloat)particleCharge
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleCharge:];
    }
  }

  else if (self->_particleCharge != particleCharge)
  {
    self->_particleCharge = particleCharge;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setParticleCharge___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleCharge;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleCharge" applyBlock:v7];
  }
}

float __39__SCNParticleSystem_setParticleCharge___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleCharge(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleChargeVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleChargeVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleChargeVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleChargeVariation = C3DParticleSystemGetParticleChargeVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleChargeVariation;
}

- (void)setParticleChargeVariation:(CGFloat)particleChargeVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleChargeVariation:];
    }
  }

  else if (self->_particleChargeVariation != particleChargeVariation)
  {
    self->_particleChargeVariation = particleChargeVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleChargeVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleChargeVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleChargeVariation" applyBlock:v7];
  }
}

float __48__SCNParticleSystem_setParticleChargeVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleChargeVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (UIColor)particleColor
{
  if (*(self + 16))
  {
    v4 = [(SCNParticleSystem *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    ParticleColor = C3DParticleSystemGetParticleColor(self->_particleSystem);
    v3 = C3DColor4ToRGBCFColor(ParticleColor);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    v3 = self->_particleColor;
  }

  v7 = [v3 copy];

  return v7;
}

- (void)setParticleColor:(UIColor *)particleColor
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleColor:];
    }
  }

  else
  {
    v5 = self->_particleColor;
    if (v5 != particleColor)
    {

      self->_particleColor = [(UIColor *)particleColor copy];
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __38__SCNParticleSystem_setParticleColor___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = particleColor;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:v6 object:self key:@"particleColor" applyBlock:v8];
    }
  }
}

double __38__SCNParticleSystem_setParticleColor___block_invoke(uint64_t a1)
{
  v4.n128_u64[0] = C3DColor4FromRGBCFColor(*(a1 + 32), 0);
  v4.n128_u64[1] = v2;
  *&result = C3DParticleSystemSetParticleColor(*(*(a1 + 40) + 8), &v4).n128_u64[0];
  return result;
}

- (SCNVector4)particleColorVariation
{
  if (*(self + 16))
  {
    v4 = [(SCNParticleSystem *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    ParticleColorVariation = C3DParticleSystemGetParticleColorVariation(self->_particleSystem);
    if (v5)
    {
      v9 = ParticleColorVariation;
      C3DSceneUnlock(v5);
      ParticleColorVariation = v9;
    }
  }

  else
  {
    ParticleColorVariation = self->_particleColorVariation;
  }

  v6 = ParticleColorVariation.n128_f32[1];
  v8 = ParticleColorVariation.n128_f32[3];
  v7 = ParticleColorVariation.n128_f32[2];
  result.x = ParticleColorVariation.n128_f32[0];
  result.w = v8;
  result.z = v7;
  result.y = v6;
  return result;
}

- (BOOL)particleDiesOnCollision
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleDiesOnCollision;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    ParticleDiesOnCollision = C3DParticleSystemGetParticleDiesOnCollision(self->_particleSystem);
    C3DSceneUnlock(v5);
    return ParticleDiesOnCollision;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetParticleDiesOnCollision(particleSystem);
  }
}

- (void)setParticleDiesOnCollision:(BOOL)particleDiesOnCollision
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleDiesOnCollision:];
    }
  }

  else if (self->_particleDiesOnCollision != particleDiesOnCollision)
  {
    self->_particleDiesOnCollision = particleDiesOnCollision;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleDiesOnCollision___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = particleDiesOnCollision;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)particleFriction
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleFriction;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleFriction(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleFriction = C3DParticleSystemGetParticleFriction(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleFriction;
}

- (void)setParticleFriction:(CGFloat)particleFriction
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleFriction:];
    }
  }

  else if (self->_particleFriction != particleFriction)
  {
    self->_particleFriction = particleFriction;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleFriction___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleFriction;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleFriction" applyBlock:v7];
  }
}

float __41__SCNParticleSystem_setParticleFriction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleFriction(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleFrictionVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleFrictionVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleFrictionVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleFrictionVariation = C3DParticleSystemGetParticleFrictionVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleFrictionVariation;
}

- (void)setParticleFrictionVariation:(CGFloat)particleFrictionVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleFrictionVariation:];
    }
  }

  else if (self->_particleFrictionVariation != particleFrictionVariation)
  {
    self->_particleFrictionVariation = particleFrictionVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleFrictionVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleFrictionVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleFrictionVariation" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setParticleFrictionVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleFrictionVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleLifeSpan
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleLifeSpan;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleLifeSpan(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleLifeSpan;
}

- (void)setParticleLifeSpan:(CGFloat)particleLifeSpan
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleLifeSpan:];
    }
  }

  else if (self->_particleLifeSpan != particleLifeSpan)
  {
    self->_particleLifeSpan = particleLifeSpan;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleLifeSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleLifeSpan;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleLifeSpan" applyBlock:v7];
  }
}

float __41__SCNParticleSystem_setParticleLifeSpan___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleLifeSpan(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleLifeSpanVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleLifeSpanVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleLifeSpanVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleLifeSpanVariation;
}

- (void)setParticleLifeSpanVariation:(CGFloat)particleLifeSpanVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleLifeSpanVariation:];
    }
  }

  else if (self->_particleLifeSpanVariation != particleLifeSpanVariation)
  {
    self->_particleLifeSpanVariation = particleLifeSpanVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleLifeSpanVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleLifeSpanVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleLifeSpanVariation" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setParticleLifeSpanVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleLifeSpanVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleMass
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleMass;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleMass(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleMass = C3DParticleSystemGetParticleMass(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleMass;
}

- (void)setParticleMass:(CGFloat)particleMass
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleMass:];
    }
  }

  else if (self->_particleMass != particleMass)
  {
    self->_particleMass = particleMass;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setParticleMass___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleMass;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleMass" applyBlock:v7];
  }
}

float __37__SCNParticleSystem_setParticleMass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleMass(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleMassVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleMassVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleMassVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleMassVariation = C3DParticleSystemGetParticleMassVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleMassVariation;
}

- (void)setParticleMassVariation:(CGFloat)particleMassVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleMassVariation:];
    }
  }

  else if (self->_particleMassVariation != particleMassVariation)
  {
    self->_particleMassVariation = particleMassVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setParticleMassVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleMassVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleMassVariation" applyBlock:v7];
  }
}

float __46__SCNParticleSystem_setParticleMassVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleMassVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleSize
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleSize;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleSize(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleSize = C3DParticleSystemGetParticleSize(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleSize;
}

- (void)setParticleSize:(CGFloat)particleSize
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleSize:];
    }
  }

  else if (self->_particleSize != particleSize)
  {
    self->_particleSize = particleSize;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setParticleSize___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleSize;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleSize" applyBlock:v7];
  }
}

float __37__SCNParticleSystem_setParticleSize___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleSize(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleSizeVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleSizeVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleSizeVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleSizeVariation = C3DParticleSystemGetParticleSizeVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleSizeVariation;
}

- (void)setParticleSizeVariation:(CGFloat)particleSizeVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleSizeVariation:];
    }
  }

  else if (self->_particleSizeVariation != particleSizeVariation)
  {
    self->_particleSizeVariation = particleSizeVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setParticleSizeVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleSizeVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleSizeVariation" applyBlock:v7];
  }
}

float __46__SCNParticleSystem_setParticleSizeVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleSizeVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleVelocity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleVelocity;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleVelocity(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleVelocity = C3DParticleSystemGetParticleVelocity(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleVelocity;
}

- (void)setParticleVelocity:(CGFloat)particleVelocity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleVelocity:];
    }
  }

  else if (self->_particleVelocity != particleVelocity)
  {
    self->_particleVelocity = particleVelocity;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleVelocity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleVelocity;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleVelocity" applyBlock:v7];
  }
}

float __41__SCNParticleSystem_setParticleVelocity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleVelocity(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleVelocityVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleVelocityVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleVelocityVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleVelocityVariation = C3DParticleSystemGetParticleVelocityVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleVelocityVariation;
}

- (void)setParticleVelocityVariation:(CGFloat)particleVelocityVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleVelocityVariation:];
    }
  }

  else if (self->_particleVelocityVariation != particleVelocityVariation)
  {
    self->_particleVelocityVariation = particleVelocityVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleVelocityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleVelocityVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleVelocityVariation" applyBlock:v7];
  }
}

float __50__SCNParticleSystem_setParticleVelocityVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleVelocityVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)physicsCollisionsEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_physicsCollisionsEnabled;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    PhysicsCollisionsEnabled = C3DParticleSystemGetPhysicsCollisionsEnabled(self->_particleSystem);
    C3DSceneUnlock(v5);
    return PhysicsCollisionsEnabled;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetPhysicsCollisionsEnabled(particleSystem);
  }
}

- (void)setPhysicsCollisionsEnabled:(BOOL)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setPhysicsCollisionsEnabled:];
    }
  }

  else if (self->_physicsCollisionsEnabled != a3)
  {
    self->_physicsCollisionsEnabled = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNParticleSystem_setPhysicsCollisionsEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (int64_t)renderingMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_renderingMode;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetRenderingMode(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  RenderingMode = C3DParticleSystemGetRenderingMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return RenderingMode;
}

- (void)setRenderingMode:(int64_t)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setRenderingMode:];
    }
  }

  else if (self->_renderingMode != a3)
  {
    self->_renderingMode = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setRenderingMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (int64_t)seed
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_seed;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetSeed(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  Seed = C3DParticleSystemGetSeed(self->_particleSystem);
  C3DSceneUnlock(v5);
  return Seed;
}

- (void)setSeed:(int64_t)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSeed:];
    }
  }

  else if (self->_seed != a3)
  {
    self->_seed = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNParticleSystem_setSeed___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (BOOL)softParticlesEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_softParticlesEnabled;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    SoftParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(self->_particleSystem);
    C3DSceneUnlock(v5);
    return SoftParticlesEnabled;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetSoftParticlesEnabled(particleSystem);
  }
}

- (void)setSoftParticlesEnabled:(BOOL)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSoftParticlesEnabled:];
    }
  }

  else if (self->_softParticlesEnabled != a3)
  {
    self->_softParticlesEnabled = a3;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SCNParticleSystem_setSoftParticlesEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (SCNParticleSortingMode)sortingMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_sortingMode;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetSortingMode(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  SortingMode = C3DParticleSystemGetSortingMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return SortingMode;
}

- (void)setSortingMode:(SCNParticleSortingMode)sortingMode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSortingMode:];
    }
  }

  else if (self->_sortingMode != sortingMode)
  {
    self->_sortingMode = sortingMode;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNParticleSystem_setSortingMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = sortingMode;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)speedFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_speedFactor;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetSpeedFactor(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  SpeedFactor = C3DParticleSystemGetSpeedFactor(self->_particleSystem);
  C3DSceneUnlock(v5);
  return SpeedFactor;
}

- (void)setSpeedFactor:(CGFloat)speedFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSpeedFactor:];
    }
  }

  else if (self->_speedFactor != speedFactor)
  {
    self->_speedFactor = speedFactor;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNParticleSystem_setSpeedFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = speedFactor;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"speedFactor" applyBlock:v7];
  }
}

float __36__SCNParticleSystem_setSpeedFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetSpeedFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)spreadingAngle
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_spreadingAngle;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetSpreadingAngle(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  SpreadingAngle = C3DParticleSystemGetSpreadingAngle(self->_particleSystem);
  C3DSceneUnlock(v5);
  return SpreadingAngle;
}

- (void)setSpreadingAngle:(CGFloat)spreadingAngle
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSpreadingAngle:];
    }
  }

  else if (self->_spreadingAngle != spreadingAngle)
  {
    self->_spreadingAngle = spreadingAngle;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setSpreadingAngle___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = spreadingAngle;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"spreadingAngle" applyBlock:v7];
  }
}

float __39__SCNParticleSystem_setSpreadingAngle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetSpreadingAngle(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)stretchFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_stretchFactor;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetStretchFactor(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  StretchFactor = C3DParticleSystemGetStretchFactor(self->_particleSystem);
  C3DSceneUnlock(v5);
  return StretchFactor;
}

- (void)setStretchFactor:(CGFloat)stretchFactor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setStretchFactor:];
    }
  }

  else if (self->_stretchFactor != stretchFactor)
  {
    self->_stretchFactor = stretchFactor;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setStretchFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = stretchFactor;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"stretchFactor" applyBlock:v7];
  }
}

float __38__SCNParticleSystem_setStretchFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetStretchFactor(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setSystemSpawnedOnCollision:(SCNParticleSystem *)systemSpawnedOnCollision
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSystemSpawnedOnCollision:];
    }
  }

  else
  {
    v5 = self->_systemSpawnedOnCollision;
    if (v5 != systemSpawnedOnCollision)
    {

      self->_systemSpawnedOnCollision = systemSpawnedOnCollision;
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__SCNParticleSystem_setSystemSpawnedOnCollision___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnCollision;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __49__SCNParticleSystem_setSystemSpawnedOnCollision___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) __CFObject];

  return C3DParticleSystemSetSystemSpawnedOnCollision(v1, v2);
}

- (void)setSystemSpawnedOnDying:(SCNParticleSystem *)systemSpawnedOnDying
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSystemSpawnedOnDying:];
    }
  }

  else
  {
    v5 = self->_systemSpawnedOnDying;
    if (v5 != systemSpawnedOnDying)
    {

      self->_systemSpawnedOnDying = systemSpawnedOnDying;
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__SCNParticleSystem_setSystemSpawnedOnDying___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnDying;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __45__SCNParticleSystem_setSystemSpawnedOnDying___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) __CFObject];

  return C3DParticleSystemSetSystemSpawnedOnDying(v1, v2);
}

- (void)setSystemSpawnedOnLiving:(SCNParticleSystem *)systemSpawnedOnLiving
{
  if (*(self + 16))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSystemSpawnedOnLiving:];
    }
  }

  else
  {
    v5 = self->_systemSpawnedOnLiving;
    if (v5 != systemSpawnedOnLiving)
    {

      self->_systemSpawnedOnLiving = systemSpawnedOnLiving;
      v6 = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __46__SCNParticleSystem_setSystemSpawnedOnLiving___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnLiving;
      [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __46__SCNParticleSystem_setSystemSpawnedOnLiving___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) __CFObject];

  return C3DParticleSystemSetSystemSpawnedOnLiving(v1, v2);
}

- (CGFloat)warmupDuration
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_warmupDuration;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetWarmupDuration(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  WarmupDuration = C3DParticleSystemGetWarmupDuration(self->_particleSystem);
  C3DSceneUnlock(v5);
  return WarmupDuration;
}

- (void)setWarmupDuration:(CGFloat)warmupDuration
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setWarmupDuration:];
    }
  }

  else if (self->_warmupDuration != warmupDuration)
  {
    self->_warmupDuration = warmupDuration;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setWarmupDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = warmupDuration;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"warmupDuration" applyBlock:v7];
  }
}

float __39__SCNParticleSystem_setWarmupDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetWarmupDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (BOOL)writesToDepthBuffer
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_writesToDepthBuffer;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    WritesToDepthBuffer = C3DParticleSystemGetWritesToDepthBuffer(self->_particleSystem);
    C3DSceneUnlock(v5);
    return WritesToDepthBuffer;
  }

  else
  {
    particleSystem = self->_particleSystem;

    return C3DParticleSystemGetWritesToDepthBuffer(particleSystem);
  }
}

- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setWritesToDepthBuffer:];
    }
  }

  else if (self->_writesToDepthBuffer != writesToDepthBuffer)
  {
    self->_writesToDepthBuffer = writesToDepthBuffer;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNParticleSystem_setWritesToDepthBuffer___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = writesToDepthBuffer;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

- (CGFloat)particleIntensity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleIntensity;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleIntensity(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleIntensity = C3DParticleSystemGetParticleIntensity(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleIntensity;
}

- (void)setParticleIntensity:(CGFloat)particleIntensity
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleIntensity:];
    }
  }

  else if (self->_particleIntensity != particleIntensity)
  {
    self->_particleIntensity = particleIntensity;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNParticleSystem_setParticleIntensity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleIntensity;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleIntensity" applyBlock:v7];
  }
}

float __42__SCNParticleSystem_setParticleIntensity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleIntensity(*(*(a1 + 32) + 8), v1);
  return result;
}

- (CGFloat)particleIntensityVariation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleIntensityVariation;
  }

  v4 = [(SCNParticleSystem *)self sceneRef];
  if (!v4)
  {
    return C3DParticleSystemGetParticleIntensityVariation(self->_particleSystem);
  }

  v5 = v4;
  C3DSceneLock(v4);
  ParticleIntensityVariation = C3DParticleSystemGetParticleIntensityVariation(self->_particleSystem);
  C3DSceneUnlock(v5);
  return ParticleIntensityVariation;
}

- (void)setParticleIntensityVariation:(CGFloat)particleIntensityVariation
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleIntensityVariation:];
    }
  }

  else if (self->_particleIntensityVariation != particleIntensityVariation)
  {
    self->_particleIntensityVariation = particleIntensityVariation;
    v5 = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNParticleSystem_setParticleIntensityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleIntensityVariation;
    [SCNTransaction postCommandWithContext:v5 object:self key:@"particleIntensityVariation" applyBlock:v7];
  }
}

float __51__SCNParticleSystem_setParticleIntensityVariation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DParticleSystemSetParticleIntensityVariation(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setParticleColorVariation:(SCNVector4)particleColorVariation
{
  if (*(self + 16))
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleColorVariation:];
    }
  }

  else
  {
    w = particleColorVariation.w;
    z = particleColorVariation.z;
    y = particleColorVariation.y;
    x = particleColorVariation.x;
    if (!SCNVector4EqualToVector4(particleColorVariation, self->_particleColorVariation))
    {
      self->_particleColorVariation.x = x;
      self->_particleColorVariation.y = y;
      self->_particleColorVariation.z = z;
      self->_particleColorVariation.w = w;
      v8 = [(SCNParticleSystem *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47__SCNParticleSystem_setParticleColorVariation___block_invoke;
      v10[3] = &unk_2782FE238;
      v10[4] = self;
      v11 = x;
      v12 = y;
      v13 = z;
      v14 = w;
      [SCNTransaction postCommandWithContext:v8 object:self key:@"particleColorVariation" applyBlock:v10];
    }
  }
}

- (void)setEmittingDirection:(SCNVector3)emittingDirection
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setEmittingDirection:];
    }
  }

  else
  {
    z = emittingDirection.z;
    y = emittingDirection.y;
    x = emittingDirection.x;
    if (!SCNVector3EqualToVector3(emittingDirection, self->_emittingDirection))
    {
      self->_emittingDirection.x = x;
      self->_emittingDirection.y = y;
      self->_emittingDirection.z = z;
      v7 = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __42__SCNParticleSystem_setEmittingDirection___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"emittingDirection" applyBlock:v9];
    }
  }
}

void __42__SCNParticleSystem_setEmittingDirection___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DParticleSystemSetEmittingDirection(*(*(a1 + 32) + 8), a2);
}

- (void)setAcceleration:(SCNVector3)acceleration
{
  if (*(self + 16))
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setAcceleration:];
    }
  }

  else
  {
    z = acceleration.z;
    y = acceleration.y;
    x = acceleration.x;
    if (!SCNVector3EqualToVector3(acceleration, self->_acceleration))
    {
      self->_acceleration.x = x;
      self->_acceleration.y = y;
      self->_acceleration.z = z;
      v7 = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __37__SCNParticleSystem_setAcceleration___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:v7 object:self key:@"acceleration" applyBlock:v9];
    }
  }
}

void __37__SCNParticleSystem_setAcceleration___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = *(a1 + 40);
  a2.n128_u32[2] = *(a1 + 48);
  C3DParticleSystemSetAcceleration(*(*(a1 + 32) + 8), a2);
}

- (void)reset
{
  v3 = [(SCNParticleSystem *)self sceneRef];
  if (v3)
  {
    [SCNTransaction postCommandWithContext:MEMORY[0x277D85DD0] object:3221225472 applyBlock:__26__SCNParticleSystem_reset__block_invoke, &unk_2782FB7D0, self, v3];
  }
}

void __26__SCNParticleSystem_reset__block_invoke(uint64_t a1)
{
  ParticleManager = C3DSceneGetParticleManager(*(a1 + 40), 0);
  if (ParticleManager)
  {
    v3 = *(*(a1 + 32) + 8);

    C3DParticleManagerResetAllInstanceOfSystem(ParticleManager, v3);
  }
}

- (void)handleEvent:(SCNParticleEvent)event forProperties:(NSArray *)properties withBlock:(SCNParticleEventBlock)block
{
  v9 = [(SCNParticleSystem *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SCNParticleSystem_handleEvent_forProperties_withBlock___block_invoke;
  v10[3] = &unk_2782FEE90;
  v10[6] = block;
  v10[7] = event;
  v10[4] = self;
  v10[5] = properties;
  [SCNTransaction postCommandWithContext:v9 object:self applyBlock:v10];
}

void __57__SCNParticleSystem_handleEvent_forProperties_withBlock___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) copy];

  C3DParticleSystemSetEventBlock(v1, v2, v3, v4);
}

- (void)addModifierForProperties:(NSArray *)properties atStage:(SCNParticleModifierStage)stage withBlock:(SCNParticleModifierBlock)block
{
  v9 = [(SCNParticleSystem *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SCNParticleSystem_addModifierForProperties_atStage_withBlock___block_invoke;
  v10[3] = &unk_2782FEEB8;
  v10[6] = block;
  v10[7] = stage;
  v10[4] = properties;
  v10[5] = self;
  [SCNTransaction postCommandWithContext:v9 object:self applyBlock:v10];
}

void __64__SCNParticleSystem_addModifierForProperties_atStage_withBlock___block_invoke(uint64_t a1)
{
  v2 = C3DParticleModifierCreate();
  C3DParticleModifierSetStage(v2, *(a1 + 56));
  C3DParticleModifierSetBlock(v2, *(a1 + 48));
  C3DParticleModifierSetProperties(v2, [*(a1 + 32) copy]);
  C3DParticleSystemAddModifier(*(*(a1 + 40) + 8), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)removeModifiersOfStage:(SCNParticleModifierStage)stage
{
  v5 = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNParticleSystem_removeModifiersOfStage___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = stage;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)removeAllModifiers
{
  v3 = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SCNParticleSystem_removeAllModifiers__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)setReferenceName:(id)a3
{
  referenceName = self->_referenceName;
  if (referenceName != a3)
  {

    self->_referenceName = a3;
  }
}

- (void)_customEncodingOfSCNParticleSystem:(id)a3
{
  [a3 encodeBool:self->_loops forKey:@"loops"];
  particleColor = self->_particleColor;
  if (particleColor)
  {
    SCNEncodeUnsafeObjectForKey(a3, particleColor, @"particleColor");
  }

  particleImage = self->_particleImage;
  if (particleImage)
  {

    SCNEncodeImageContentsForKey(a3, particleImage, @"particleImage");
  }
}

- (void)_customDecodingOfSCNParticleSystem:(id)a3
{
  if ([a3 containsValueForKey:@"loops"])
  {
    -[SCNParticleSystem setLoops:](self, "setLoops:", [a3 decodeBoolForKey:@"loops"]);
  }

  [(SCNParticleSystem *)self setParticleColor:SCNDecodeUnsecureColor(a3, @"particleColor")];
  v5 = SCNDecodeImageContents(a3, @"particleImage");
  if (v5)
  {
    v6 = v5;
    v7 = SCNEnclosingURLForSceneDecoder(a3);
    if (v7 && (v8 = SCNResolveImageContents(v6, v7)) != 0)
    {
      [(SCNParticleSystem *)self _updateParticleC3DImage:v8];

      self->_particleImage = v6;
    }

    else
    {

      [(SCNParticleSystem *)self setParticleImage:v6];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 16))
  {
    [(SCNParticleSystem *)self _syncObjCModel];
  }

  if ([(SCNParticleSystem *)self _isAReference])
  {
    v5 = [(SCNParticleSystem *)self referenceName];

    [a3 encodeObject:v5 forKey:@"referenceName"];
  }

  else
  {
    [(SCNParticleSystem *)self _customEncodingOfSCNParticleSystem:a3];
    name = self->_name;
    if (name)
    {
      [a3 encodeObject:name forKey:@"name"];
    }

    [a3 encodeDouble:@"emissionDuration" forKey:self->_emissionDuration];
    [a3 encodeDouble:@"emissionDurationVariation" forKey:self->_emissionDurationVariation];
    [a3 encodeDouble:@"idleDuration" forKey:self->_idleDuration];
    [a3 encodeDouble:@"idleDurationVariation" forKey:self->_idleDurationVariation];
    [a3 encodeDouble:@"birthRate" forKey:self->_birthRate];
    [a3 encodeDouble:@"birthRateVariation" forKey:self->_birthRateVariation];
    [a3 encodeDouble:@"warmupDuration" forKey:self->_warmupDuration];
    emitterShape = self->_emitterShape;
    if (emitterShape)
    {
      [a3 encodeObject:emitterShape forKey:@"emitterShape"];
    }

    [a3 encodeInteger:self->_birthLocation forKey:@"birthLocation"];
    [a3 encodeInteger:self->_birthDirection forKey:@"birthDirection"];
    SCNEncodeVector3(a3, @"emittingDirection", self->_emittingDirection.x, self->_emittingDirection.y, self->_emittingDirection.z);
    SCNEncodeVector3(a3, @"orientationDirection", self->_orientationDirection.x, self->_orientationDirection.y, self->_orientationDirection.z);
    SCNEncodeVector3(a3, @"acceleration", self->_acceleration.x, self->_acceleration.y, self->_acceleration.z);
    [a3 encodeDouble:@"spreadingAngle" forKey:self->_spreadingAngle];
    [a3 encodeBool:self->_isLocal forKey:@"isLocal"];
    [a3 encodeBool:self->_affectedByGravity forKey:@"affectedByGravity"];
    [a3 encodeBool:self->_affectedByPhysicsFields forKey:@"affectedByPhysicsFields"];
    [a3 encodeBool:self->_physicsCollisionsEnabled forKey:@"physicsCollisionsEnabled"];
    [a3 encodeBool:self->_lightingEnabled forKey:@"lightingEnabled"];
    [a3 encodeBool:self->_softParticlesEnabled forKey:@"softParticlesEnabled"];
    [a3 encodeBool:self->_particleDiesOnCollision forKey:@"particleDiesOnCollision"];
    [a3 encodeBool:self->_blackPassEnabled forKey:@"blackPassEnabled"];
    [a3 encodeBool:self->_writesToDepthBuffer forKey:@"writesToDepthBuffer"];
    [a3 encodeDouble:@"particleAngle" forKey:self->_particleAngle];
    [a3 encodeDouble:@"particleAngleVariation" forKey:self->_particleAngleVariation];
    [a3 encodeDouble:@"particleVelocity" forKey:self->_particleVelocity];
    [a3 encodeDouble:@"particleVelocityVariation" forKey:self->_particleVelocityVariation];
    [a3 encodeDouble:@"particleAngularVelocity" forKey:self->_particleAngularVelocity];
    [a3 encodeDouble:@"particleAngularVelocityVariation" forKey:self->_particleAngularVelocityVariation];
    [a3 encodeDouble:@"particleLifeSpan" forKey:self->_particleLifeSpan];
    [a3 encodeDouble:@"particleLifeSpanVariation" forKey:self->_particleLifeSpanVariation];
    [a3 encodeDouble:@"particleBounce" forKey:self->_particleBounce];
    [a3 encodeDouble:@"particleBounceVariation" forKey:self->_particleBounceVariation];
    [a3 encodeDouble:@"particleFriction" forKey:self->_particleFriction];
    [a3 encodeDouble:@"particleFrictionVariation" forKey:self->_particleFrictionVariation];
    [a3 encodeDouble:@"particleCharge" forKey:self->_particleCharge];
    [a3 encodeDouble:@"particleChargeVariation" forKey:self->_particleChargeVariation];
    SCNEncodeVector4(a3, @"particleColorVariation", self->_particleColorVariation.x, self->_particleColorVariation.y, self->_particleColorVariation.z, self->_particleColorVariation.w);
    systemSpawnedOnCollision = self->_systemSpawnedOnCollision;
    if (systemSpawnedOnCollision)
    {
      [a3 encodeObject:systemSpawnedOnCollision forKey:@"systemSpawnedOnCollision"];
    }

    systemSpawnedOnDying = self->_systemSpawnedOnDying;
    if (systemSpawnedOnDying)
    {
      [a3 encodeObject:systemSpawnedOnDying forKey:@"systemSpawnedOnDying"];
    }

    systemSpawnedOnLiving = self->_systemSpawnedOnLiving;
    if (systemSpawnedOnLiving)
    {
      [a3 encodeObject:systemSpawnedOnLiving forKey:@"systemSpawnedOnLiving"];
    }

    [a3 encodeDouble:@"particleSize" forKey:self->_particleSize];
    [a3 encodeDouble:@"particleSizeVariation" forKey:self->_particleSizeVariation];
    [a3 encodeDouble:@"particleIntensity" forKey:self->_particleIntensity];
    [a3 encodeDouble:@"particleIntensityVariation" forKey:self->_particleIntensityVariation];
    [a3 encodeInteger:self->_seed forKey:@"seed"];
    [a3 encodeInteger:self->_blendMode forKey:@"blendMode"];
    [a3 encodeInteger:self->_renderingMode forKey:@"renderingMode"];
    [a3 encodeInteger:self->_orientationMode forKey:@"orientationMode"];
    [a3 encodeInteger:self->_imageSequenceAnimationMode forKey:@"imageSequenceAnimationMode"];
    particleGeometries = self->_particleGeometries;
    if (particleGeometries)
    {
      [a3 encodeObject:particleGeometries forKey:@"particleGeometries"];
    }

    colliderNodes = self->_colliderNodes;
    if (colliderNodes)
    {
      [a3 encodeObject:colliderNodes forKey:@"colliderNodes"];
    }

    propertyControllers = self->_propertyControllers;
    if (propertyControllers)
    {
      [a3 encodeObject:propertyControllers forKey:@"propertyControllers"];
    }

    [a3 encodeInteger:self->_sortingMode forKey:@"sortingMode"];
    [a3 encodeDouble:@"particleMass" forKey:self->_particleMass];
    [a3 encodeDouble:@"particleMassVariation" forKey:self->_particleMassVariation];
    [a3 encodeDouble:@"dampingFactor" forKey:self->_dampingFactor];
    [a3 encodeDouble:@"speedFactor" forKey:self->_speedFactor];
    [a3 encodeDouble:@"fixedTimeStep" forKey:self->_fixedTimeStep];
    [a3 encodeDouble:@"stretchFactor" forKey:self->_stretchFactor];
    [a3 encodeDouble:@"fresnelExponent" forKey:self->_fresnelExponent];
    [a3 encodeInteger:self->_imageSequenceColumnCount forKey:@"imageSequenceColumnCount"];
    [a3 encodeInteger:self->_imageSequenceRowCount forKey:@"imageSequenceRowCount"];
    [a3 encodeDouble:@"imageSequenceInitialFrame" forKey:self->_imageSequenceInitialFrame];
    [a3 encodeDouble:@"imageSequenceInitialFrameVariation" forKey:self->_imageSequenceInitialFrameVariation];
    [a3 encodeDouble:@"imageSequenceFrameRate" forKey:self->_imageSequenceFrameRate];
    [a3 encodeDouble:@"imageSequenceFrameRateVariation" forKey:self->_imageSequenceFrameRateVariation];
    SCNEncodeEntity(a3, self);

    SCNEncodeAnimations(a3, self);
  }
}

- (SCNParticleSystem)initWithCoder:(id)a3
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v17 init];
  if (v4)
  {
    if ([a3 containsValueForKey:@"referenceName"])
    {
      -[SCNParticleSystem setReferenceName:](v4, "setReferenceName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"referenceName"]);
      if ([(SCNParticleSystem *)v4 referenceName])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [objc_msgSend(a3 "assetCatalog")];
          if (v5)
          {
            v6 = v5;
            [v5 setReferenceName:{-[SCNParticleSystem referenceName](v4, "referenceName")}];

            return v6;
          }
        }

        else
        {
          v8 = scn_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [SCNParticleSystem initWithCoder:];
          }
        }
      }

      else
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [SCNParticleSystem initWithCoder:];
        }
      }
    }

    v9 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v10 = C3DParticleSystemCreate();
    v4->_particleSystem = v10;
    if (v10)
    {
      C3DEntitySetObjCWrapper(v10, v4);
    }

    [(SCNParticleSystem *)v4 _syncObjCModel];
    [(SCNParticleSystem *)v4 _customDecodingOfSCNParticleSystem:a3];
    -[SCNParticleSystem setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    [a3 decodeDoubleForKey:@"emissionDuration"];
    [(SCNParticleSystem *)v4 setEmissionDuration:?];
    [a3 decodeDoubleForKey:@"emissionDurationVariation"];
    [(SCNParticleSystem *)v4 setEmissionDurationVariation:?];
    [a3 decodeDoubleForKey:@"idleDuration"];
    [(SCNParticleSystem *)v4 setIdleDuration:?];
    [a3 decodeDoubleForKey:@"idleDurationVariation"];
    [(SCNParticleSystem *)v4 setIdleDurationVariation:?];
    [a3 decodeDoubleForKey:@"birthRate"];
    [(SCNParticleSystem *)v4 setBirthRate:?];
    [a3 decodeDoubleForKey:@"birthRateVariation"];
    [(SCNParticleSystem *)v4 setBirthRateVariation:?];
    [a3 decodeDoubleForKey:@"warmupDuration"];
    [(SCNParticleSystem *)v4 setWarmupDuration:?];
    -[SCNParticleSystem setEmitterShape:](v4, "setEmitterShape:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"emitterShape"]);
    -[SCNParticleSystem setBirthLocation:](v4, "setBirthLocation:", [a3 decodeIntegerForKey:@"birthLocation"]);
    -[SCNParticleSystem setBirthDirection:](v4, "setBirthDirection:", [a3 decodeIntegerForKey:@"birthDirection"]);
    *&v11 = SCNDecodeVector3(a3, @"emittingDirection");
    [(SCNParticleSystem *)v4 setEmittingDirection:v11];
    *&v12 = SCNDecodeVector3(a3, @"orientationDirection");
    [(SCNParticleSystem *)v4 setOrientationDirection:v12];
    *&v13 = SCNDecodeVector3(a3, @"acceleration");
    [(SCNParticleSystem *)v4 setAcceleration:v13];
    [a3 decodeDoubleForKey:@"spreadingAngle"];
    [(SCNParticleSystem *)v4 setSpreadingAngle:?];
    -[SCNParticleSystem setIsLocal:](v4, "setIsLocal:", [a3 decodeBoolForKey:@"isLocal"]);
    -[SCNParticleSystem setAffectedByGravity:](v4, "setAffectedByGravity:", [a3 decodeBoolForKey:@"affectedByGravity"]);
    -[SCNParticleSystem setAffectedByPhysicsFields:](v4, "setAffectedByPhysicsFields:", [a3 decodeBoolForKey:@"affectedByPhysicsFields"]);
    -[SCNParticleSystem setPhysicsCollisionsEnabled:](v4, "setPhysicsCollisionsEnabled:", [a3 decodeBoolForKey:@"physicsCollisionsEnabled"]);
    -[SCNParticleSystem setLightingEnabled:](v4, "setLightingEnabled:", [a3 decodeBoolForKey:@"lightingEnabled"]);
    -[SCNParticleSystem setSoftParticlesEnabled:](v4, "setSoftParticlesEnabled:", [a3 decodeBoolForKey:@"softParticlesEnabled"]);
    -[SCNParticleSystem setParticleDiesOnCollision:](v4, "setParticleDiesOnCollision:", [a3 decodeBoolForKey:@"particleDiesOnCollision"]);
    -[SCNParticleSystem setBlackPassEnabled:](v4, "setBlackPassEnabled:", [a3 decodeBoolForKey:@"blackPassEnabled"]);
    [a3 decodeDoubleForKey:@"particleAngle"];
    [(SCNParticleSystem *)v4 setParticleAngle:?];
    [a3 decodeDoubleForKey:@"particleAngleVariation"];
    [(SCNParticleSystem *)v4 setParticleAngleVariation:?];
    [a3 decodeDoubleForKey:@"particleVelocity"];
    [(SCNParticleSystem *)v4 setParticleVelocity:?];
    [a3 decodeDoubleForKey:@"particleVelocityVariation"];
    [(SCNParticleSystem *)v4 setParticleVelocityVariation:?];
    [a3 decodeDoubleForKey:@"particleAngularVelocity"];
    [(SCNParticleSystem *)v4 setParticleAngularVelocity:?];
    [a3 decodeDoubleForKey:@"particleAngularVelocityVariation"];
    [(SCNParticleSystem *)v4 setParticleAngularVelocityVariation:?];
    [a3 decodeDoubleForKey:@"particleLifeSpan"];
    [(SCNParticleSystem *)v4 setParticleLifeSpan:?];
    [a3 decodeDoubleForKey:@"particleLifeSpanVariation"];
    [(SCNParticleSystem *)v4 setParticleLifeSpanVariation:?];
    [a3 decodeDoubleForKey:@"particleBounce"];
    [(SCNParticleSystem *)v4 setParticleBounce:?];
    [a3 decodeDoubleForKey:@"particleBounceVariation"];
    [(SCNParticleSystem *)v4 setParticleBounceVariation:?];
    [a3 decodeDoubleForKey:@"particleFriction"];
    [(SCNParticleSystem *)v4 setParticleFriction:?];
    [a3 decodeDoubleForKey:@"particleFrictionVariation"];
    [(SCNParticleSystem *)v4 setParticleFrictionVariation:?];
    [a3 decodeDoubleForKey:@"particleCharge"];
    [(SCNParticleSystem *)v4 setParticleCharge:?];
    [a3 decodeDoubleForKey:@"particleChargeVariation"];
    [(SCNParticleSystem *)v4 setParticleChargeVariation:?];
    *&v14 = SCNDecodeVector4(a3, @"particleColorVariation");
    [(SCNParticleSystem *)v4 setParticleColorVariation:v14];
    -[SCNParticleSystem setSystemSpawnedOnCollision:](v4, "setSystemSpawnedOnCollision:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnCollision"]);
    -[SCNParticleSystem setSystemSpawnedOnDying:](v4, "setSystemSpawnedOnDying:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnDying"]);
    -[SCNParticleSystem setSystemSpawnedOnLiving:](v4, "setSystemSpawnedOnLiving:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnLiving"]);
    [a3 decodeDoubleForKey:@"particleSize"];
    [(SCNParticleSystem *)v4 setParticleSize:?];
    [a3 decodeDoubleForKey:@"particleSizeVariation"];
    [(SCNParticleSystem *)v4 setParticleSizeVariation:?];
    if ([a3 containsValueForKey:@"particleIntensity"])
    {
      [a3 decodeDoubleForKey:@"particleIntensity"];
      [(SCNParticleSystem *)v4 setParticleIntensity:?];
      [a3 decodeDoubleForKey:@"particleIntensityVariation"];
      [(SCNParticleSystem *)v4 setParticleIntensityVariation:?];
    }

    if ([a3 containsValueForKey:@"writesToDepthBuffer"])
    {
      -[SCNParticleSystem setWritesToDepthBuffer:](v4, "setWritesToDepthBuffer:", [a3 decodeBoolForKey:@"writesToDepthBuffer"]);
    }

    -[SCNParticleSystem setSeed:](v4, "setSeed:", [a3 decodeIntegerForKey:@"seed"]);
    -[SCNParticleSystem setBlendMode:](v4, "setBlendMode:", [a3 decodeIntegerForKey:@"blendMode"]);
    -[SCNParticleSystem setRenderingMode:](v4, "setRenderingMode:", [a3 decodeIntegerForKey:@"renderingMode"]);
    -[SCNParticleSystem setOrientationMode:](v4, "setOrientationMode:", [a3 decodeIntegerForKey:@"orientationMode"]);
    -[SCNParticleSystem setImageSequenceAnimationMode:](v4, "setImageSequenceAnimationMode:", [a3 decodeIntegerForKey:@"imageSequenceAnimationMode"]);
    -[SCNParticleSystem setParticleGeometries:](v4, "setParticleGeometries:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"particleGeometries"]);
    -[SCNParticleSystem setColliderNodes:](v4, "setColliderNodes:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colliderNodes"]);
    v15 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    -[SCNParticleSystem setPropertyControllers:](v4, "setPropertyControllers:", [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v18, 4)), @"propertyControllers"}]);
    -[SCNParticleSystem setSortingMode:](v4, "setSortingMode:", [a3 decodeIntegerForKey:@"sortingMode"]);
    [a3 decodeDoubleForKey:@"particleMass"];
    [(SCNParticleSystem *)v4 setParticleMass:?];
    [a3 decodeDoubleForKey:@"particleMassVariation"];
    [(SCNParticleSystem *)v4 setParticleMassVariation:?];
    [a3 decodeDoubleForKey:@"dampingFactor"];
    [(SCNParticleSystem *)v4 setDampingFactor:?];
    [a3 decodeDoubleForKey:@"speedFactor"];
    [(SCNParticleSystem *)v4 setSpeedFactor:?];
    [a3 decodeDoubleForKey:@"fixedTimeStep"];
    [(SCNParticleSystem *)v4 setFixedTimeStep:?];
    [a3 decodeDoubleForKey:@"stretchFactor"];
    [(SCNParticleSystem *)v4 setStretchFactor:?];
    [a3 decodeDoubleForKey:@"fresnelExponent"];
    [(SCNParticleSystem *)v4 setFresnelExponent:?];
    -[SCNParticleSystem setImageSequenceColumnCount:](v4, "setImageSequenceColumnCount:", [a3 decodeIntegerForKey:@"imageSequenceColumnCount"]);
    -[SCNParticleSystem setImageSequenceRowCount:](v4, "setImageSequenceRowCount:", [a3 decodeIntegerForKey:@"imageSequenceRowCount"]);
    [a3 decodeDoubleForKey:@"imageSequenceInitialFrame"];
    [(SCNParticleSystem *)v4 setImageSequenceInitialFrame:?];
    [a3 decodeDoubleForKey:@"imageSequenceInitialFrameVariation"];
    [(SCNParticleSystem *)v4 setImageSequenceInitialFrameVariation:?];
    [a3 decodeDoubleForKey:@"imageSequenceFrameRate"];
    [(SCNParticleSystem *)v4 setImageSequenceFrameRate:?];
    [a3 decodeDoubleForKey:@"imageSequenceFrameRateVariation"];
    [(SCNParticleSystem *)v4 setImageSequenceFrameRateVariation:?];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(a3, v4);
    SCNDecodeAnimations(a3, v4);
    [SCNTransaction setImmediateMode:v9];
  }

  return v4;
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleGeometries:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setColliderNodes:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPropertyControllers:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

void __44__SCNParticleSystem_setPropertyControllers___block_invoke_cold_1(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_21BEF7000, a4, OS_LOG_TYPE_ERROR, "Error: animation class %@ is not supported for particle systems", a1, 0xCu);
}

void __44__SCNParticleSystem_setPropertyControllers___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unknown particle controller input mode", buf, 2u);
}

- (void)setParticleImage:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)_setParticleImagePath:withResolvedPath:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setOrientationDirection:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setLightEmissionRadiusFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAffectedByGravity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAffectedByPhysicsFields:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBirthDirection:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBirthLocation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBirthRate:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBirthRateVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBlackPassEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setBlendMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setDampingFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setEmissionDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setEmissionDurationVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setEmitterShape:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFixedTimeStep:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setFresnelExponent:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setIdleDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setIdleDurationVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceAnimationMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceColumnCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceFrameRate:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceFrameRateVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceInitialFrame:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceInitialFrameVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setImageSequenceRowCount:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setIsLocal:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setLightingEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setLoops:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setOrientationMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleAngle:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleAngleVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleAngularVelocity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleAngularVelocityVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleBounce:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleBounceVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleCharge:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleChargeVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleColor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleDiesOnCollision:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleFriction:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleFrictionVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleLifeSpan:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleLifeSpanVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleMass:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleMassVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleSize:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleSizeVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleVelocity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleVelocityVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setPhysicsCollisionsEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setRenderingMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSeed:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSoftParticlesEnabled:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSortingMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSpeedFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSpreadingAngle:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setStretchFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSystemSpawnedOnCollision:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSystemSpawnedOnDying:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setSystemSpawnedOnLiving:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWarmupDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setWritesToDepthBuffer:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleIntensity:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleIntensityVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setParticleColorVariation:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setEmittingDirection:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

- (void)setAcceleration:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, 2u);
}

@end