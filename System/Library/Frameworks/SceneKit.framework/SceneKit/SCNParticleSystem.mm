@interface SCNParticleSystem
+ (SCNParticleSystem)particleSystem;
+ (SCNParticleSystem)particleSystemNamed:(NSString *)name inDirectory:(NSString *)directory;
+ (SCNParticleSystem)particleSystemWithParticleSystemRef:(__C3DParticleSystem *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)affectedByGravity;
- (BOOL)affectedByPhysicsFields;
- (BOOL)blackPassEnabled;
- (BOOL)isAnimationForKeyPaused:(id)paused;
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
- (SCNParticleSystem)initWithCoder:(id)coder;
- (SCNParticleSystem)initWithParticleSystemRef:(__C3DParticleSystem *)ref;
- (SCNVector3)acceleration;
- (SCNVector3)emittingDirection;
- (SCNVector3)orientationDirection;
- (SCNVector4)particleColorVariation;
- (UIColor)particleColor;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)fixedTimeStep;
- (double)lightEmissionRadiusFactor;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)initPresentationSystemWithSystemRef:(__C3DParticleSystem *)ref;
- (id)name;
- (id)particleGeometries;
- (id)presentationInstance;
- (id)scene;
- (int64_t)renderingMode;
- (int64_t)seed;
- (signed)typeOfProperty:(id)property;
- (void)_copyAnimationsFrom:(id)from;
- (void)_customDecodingOfSCNParticleSystem:(id)system;
- (void)_customEncodingOfSCNParticleSystem:(id)system;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setParticleImagePath:(id)path withResolvedPath:(id)resolvedPath;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateParticleC3DImage:(id)image;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addModifierForProperties:(NSArray *)properties atStage:(SCNParticleModifierStage)stage withBlock:(SCNParticleModifierBlock)block;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleEvent:(SCNParticleEvent)event forProperties:(NSArray *)properties withBlock:(SCNParticleEventBlock)block;
- (void)pauseAnimationForKey:(id)key;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAllModifiers;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)removeModifiersOfStage:(SCNParticleModifierStage)stage;
- (void)reset;
- (void)resumeAnimationForKey:(id)key;
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
- (void)setFixedTimeStep:(double)step;
- (void)setFresnelExponent:(CGFloat)fresnelExponent;
- (void)setIdentifier:(id)identifier;
- (void)setIdleDuration:(CGFloat)idleDuration;
- (void)setIdleDurationVariation:(CGFloat)idleDurationVariation;
- (void)setImageSequenceAnimationMode:(SCNParticleImageSequenceAnimationMode)imageSequenceAnimationMode;
- (void)setImageSequenceColumnCount:(NSUInteger)imageSequenceColumnCount;
- (void)setImageSequenceFrameRate:(CGFloat)imageSequenceFrameRate;
- (void)setImageSequenceFrameRateVariation:(CGFloat)imageSequenceFrameRateVariation;
- (void)setImageSequenceInitialFrame:(CGFloat)imageSequenceInitialFrame;
- (void)setImageSequenceInitialFrameVariation:(CGFloat)imageSequenceInitialFrameVariation;
- (void)setImageSequenceRowCount:(NSUInteger)imageSequenceRowCount;
- (void)setIsLocal:(BOOL)local;
- (void)setLightEmissionRadiusFactor:(double)factor;
- (void)setLightingEnabled:(BOOL)lightingEnabled;
- (void)setLoops:(BOOL)loops;
- (void)setName:(id)name;
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
- (void)setParticleGeometries:(id)geometries;
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
- (void)setPhysicsCollisionsEnabled:(BOOL)enabled;
- (void)setPropertyControllers:(NSDictionary *)propertyControllers;
- (void)setReferenceName:(id)name;
- (void)setRenderingMode:(int64_t)mode;
- (void)setSeed:(int64_t)seed;
- (void)setSoftParticlesEnabled:(BOOL)enabled;
- (void)setSortingMode:(SCNParticleSortingMode)sortingMode;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)setSpeedFactor:(CGFloat)speedFactor;
- (void)setSpreadingAngle:(CGFloat)spreadingAngle;
- (void)setStretchFactor:(CGFloat)stretchFactor;
- (void)setSystemSpawnedOnCollision:(SCNParticleSystem *)systemSpawnedOnCollision;
- (void)setSystemSpawnedOnDying:(SCNParticleSystem *)systemSpawnedOnDying;
- (void)setSystemSpawnedOnLiving:(SCNParticleSystem *)systemSpawnedOnLiving;
- (void)setWarmupDuration:(CGFloat)warmupDuration;
- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation SCNParticleSystem

- (void)setName:(id)name
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setName:];
    }
  }

  else if (name | self->_name)
  {
    if (([name isEqual:?] & 1) == 0)
    {

      self->_name = [name copy];
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __29__SCNParticleSystem_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = name;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Name = C3DEntityGetName([(SCNParticleSystem *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)identifier
{
  __CFObject = [(SCNParticleSystem *)self __CFObject];

  C3DEntitySetID(__CFObject, identifier);
}

- (id)identifier
{
  __CFObject = [(SCNParticleSystem *)self __CFObject];

  return C3DEntityGetID(__CFObject);
}

- (void)_syncEntityObjCModel
{
  __CFObject = [(SCNParticleSystem *)self __CFObject];

  self->_name = C3DEntityGetName(__CFObject);
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNParticleSystem *)self __CFObject];

  return C3DGetScene(__CFObject);
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

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{key), "animation"}] == animation;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    __CFObject = [(SCNParticleSystem *)self __CFObject];
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SCNTechnique __removeAnimation:v9 forKey:?];
      }
    }

    C3DEntityRemoveAnimationForKey(__CFObject, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:player forKey:keyCopy];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SCNParticleSystem_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = player;
    v10[5] = self;
    v10[6] = keyCopy;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
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

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = [SCNAnimation animationWithCAAnimation:animationCopy];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:animationCopy];
    [(SCNParticleSystem *)self addAnimationPlayer:v7 forKey:keyCopy];

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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCNParticleSystem_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SCNParticleSystem_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = duration;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SCNParticleSystem_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = key;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SCNParticleSystem_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = key;
    *&v8[6] = duration;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  allKeys = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)allKeys count])
  {
    return allKeys;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_syncObjCAnimations
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  __CFObject = [(SCNParticleSystem *)self __CFObject];
  if (__CFObject)
  {
    v6 = __CFObject;
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
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

- (id)animationForKey:(id)key
{
  v3 = [(SCNParticleSystem *)self _scnAnimationForKey:key];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{keyCopy), "animation"}];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animationKeys = [from animationKeys];
  v6 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(animationKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(from animationPlayerForKey:{v10), "copy"}];
        [(SCNParticleSystem *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [(SCNOrderedDictionary *)animations objectForKey:keyCopy];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  __CFObject = [(SCNParticleSystem *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNParticleSystem *)self animationManager];
    if (animationManager)
    {
      v12 = animationManager;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, key, animationCopy, nodeCopy, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)key
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNParticleSystem_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNParticleSystem_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SCNParticleSystem_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
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

- (BOOL)isAnimationForKeyPaused:(id)paused
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNParticleSystem *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNParticleSystem *)self animationManager];
    if (animationManager)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(animationManager, v8, paused);
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

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:object];
    [(C3DBinding *)v13 setKeyPathDst:path];
    [(C3DBinding *)v13 setKeyPathSrc:keyPath];
    [(C3DBinding *)v13 setOptions:options];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:path];

    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SCNParticleSystem_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
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

- (void)unbindAnimatablePath:(id)path
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNParticleSystem_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SCNParticleSystem_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __38__SCNParticleSystem_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

+ (SCNParticleSystem)particleSystem
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (SCNParticleSystem)particleSystemNamed:(NSString *)name inDirectory:(NSString *)directory
{
  pathExtension = [(NSString *)name pathExtension];
  v7 = SCNGetResourceBundle();
  stringByDeletingPathExtension = [(NSString *)name stringByDeletingPathExtension];
  if ([(NSString *)pathExtension length])
  {
    v9 = pathExtension;
  }

  else
  {
    v9 = @"scnp";
  }

  v10 = [v7 URLForResource:stringByDeletingPathExtension withExtension:v9 subdirectory:directory];
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

- (SCNParticleSystem)initWithParticleSystemRef:(__C3DParticleSystem *)ref
{
  v6.receiver = self;
  v6.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v6 init];
  if (v4)
  {
    v4->_particleSystem = CFRetain(ref);
    if (ref)
    {
      C3DEntitySetObjCWrapper(ref, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNParticleSystem *)v4 _syncObjCModel];
    [(SCNParticleSystem *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationSystemWithSystemRef:(__C3DParticleSystem *)ref
{
  v6.receiver = self;
  v6.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v6 init];
  if (v4)
  {
    v4->_particleSystem = CFRetain(ref);
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  particleSystemRef = [(SCNParticleSystem *)self particleSystemRef];
  self->_emissionDuration = C3DParticleSystemGetEmissionDuration(particleSystemRef);
  self->_emissionDurationVariation = C3DParticleSystemGetEmissionDurationVariation(particleSystemRef);
  self->_idleDuration = C3DParticleSystemGetIdleDuration(particleSystemRef);
  self->_idleDurationVariation = C3DParticleSystemGetIdleDurationVariation(particleSystemRef);
  self->_birthRate = C3DParticleSystemGetBirthRate(particleSystemRef);
  self->_birthRateVariation = C3DParticleSystemGetBirthRateVariation(particleSystemRef);
  self->_warmupDuration = C3DParticleSystemGetWarmupDuration(particleSystemRef);
  EmitterShape = C3DParticleSystemGetEmitterShape(particleSystemRef);
  if (EmitterShape)
  {
    [(SCNParticleSystem *)self setEmitterShape:[SCNGeometry geometryWithGeometryRef:EmitterShape]];
  }

  self->_birthLocation = C3DParticleSystemGetBirthLocation(particleSystemRef);
  self->_birthDirection = C3DParticleSystemGetBirthDirection(particleSystemRef);
  EmittingDirection = C3DParticleSystemGetEmittingDirection(particleSystemRef);
  *&self->_emittingDirection.x = EmittingDirection.n128_u64[0];
  LODWORD(self->_emittingDirection.z) = EmittingDirection.n128_u32[2];
  OrientationDirection = C3DParticleSystemGetOrientationDirection(particleSystemRef);
  *&self->_orientationDirection.x = OrientationDirection.n128_u64[0];
  LODWORD(self->_orientationDirection.z) = OrientationDirection.n128_u32[2];
  Acceleration = C3DParticleSystemGetAcceleration(particleSystemRef);
  *&self->_acceleration.x = Acceleration.n128_u64[0];
  LODWORD(self->_acceleration.z) = Acceleration.n128_u32[2];
  self->_spreadingAngle = C3DParticleSystemGetSpreadingAngle(particleSystemRef);
  self->_loops = C3DParticleSystemGetLoops(particleSystemRef);
  self->_isLocal = C3DParticleSystemGetIsLocal(particleSystemRef);
  self->_affectedByGravity = C3DParticleSystemGetAffectedByGravity(particleSystemRef);
  self->_affectedByPhysicsFields = C3DParticleSystemGetAffectedByPhysicsFields(particleSystemRef);
  self->_physicsCollisionsEnabled = C3DParticleSystemGetPhysicsCollisionsEnabled(particleSystemRef);
  self->_lightingEnabled = C3DParticleSystemGetLightingEnabled(particleSystemRef);
  self->_softParticlesEnabled = C3DParticleSystemGetSoftParticlesEnabled(particleSystemRef);
  self->_particleDiesOnCollision = C3DParticleSystemGetParticleDiesOnCollision(particleSystemRef);
  self->_blackPassEnabled = C3DParticleSystemGetBlackPassEnabled(particleSystemRef);
  self->_writesToDepthBuffer = C3DParticleSystemGetWritesToDepthBuffer(particleSystemRef);
  self->_particleAngle = C3DParticleSystemGetParticleAngle(particleSystemRef);
  self->_particleAngleVariation = C3DParticleSystemGetParticleAngleVariation(particleSystemRef);
  self->_particleVelocity = C3DParticleSystemGetParticleVelocity(particleSystemRef);
  self->_particleVelocityVariation = C3DParticleSystemGetParticleVelocityVariation(particleSystemRef);
  self->_particleAngularVelocity = C3DParticleSystemGetParticleAngularVelocity(particleSystemRef);
  self->_particleAngularVelocityVariation = C3DParticleSystemGetParticleAngularVelocityVariation(particleSystemRef);
  self->_particleLifeSpan = C3DParticleSystemGetParticleLifeSpan(particleSystemRef);
  self->_particleLifeSpanVariation = C3DParticleSystemGetParticleLifeSpanVariation(particleSystemRef);
  self->_particleBounce = C3DParticleSystemGetParticleBounce(particleSystemRef);
  self->_particleBounceVariation = C3DParticleSystemGetParticleBounceVariation(particleSystemRef);
  self->_particleFriction = C3DParticleSystemGetParticleFriction(particleSystemRef);
  self->_particleFrictionVariation = C3DParticleSystemGetParticleFrictionVariation(particleSystemRef);
  ParticleColor = C3DParticleSystemGetParticleColor(particleSystemRef);
  [(SCNParticleSystem *)self setParticleColor:C3DColor4ToRGBCFColor(ParticleColor)];
  self->_particleColorVariation = C3DParticleSystemGetParticleColorVariation(particleSystemRef);
  self->_particleSize = C3DParticleSystemGetParticleSize(particleSystemRef);
  self->_particleSizeVariation = C3DParticleSystemGetParticleSizeVariation(particleSystemRef);
  self->_particleIntensity = C3DParticleSystemGetParticleIntensity(particleSystemRef);
  self->_particleIntensityVariation = C3DParticleSystemGetParticleIntensityVariation(particleSystemRef);
  self->_seed = C3DParticleSystemGetSeed(particleSystemRef);
  self->_blendMode = C3DParticleSystemGetBlendMode(particleSystemRef);
  self->_renderingMode = C3DParticleSystemGetRenderingMode(particleSystemRef);
  self->_orientationMode = C3DParticleSystemGetOrientationMode(particleSystemRef);
  self->_imageSequenceAnimationMode = C3DParticleSystemGetImageSequenceAnimationMode(particleSystemRef);
  self->_sortingMode = C3DParticleSystemGetSortingMode(particleSystemRef);
  self->_particleMass = C3DParticleSystemGetParticleMass(particleSystemRef);
  self->_particleMassVariation = C3DParticleSystemGetParticleMassVariation(particleSystemRef);
  self->_dampingFactor = C3DParticleSystemGetDampingFactor(particleSystemRef);
  self->_speedFactor = C3DParticleSystemGetSpeedFactor(particleSystemRef);
  self->_fixedTimeStep = C3DParticleSystemGetFixedTimeStep(particleSystemRef);
  self->_stretchFactor = C3DParticleSystemGetStretchFactor(particleSystemRef);
  self->_imageSequenceRowCount = C3DParticleSystemGetImageSequenceRowCount(particleSystemRef);
  self->_imageSequenceColumnCount = C3DParticleSystemGetImageSequenceColumnCount(particleSystemRef);
  self->_imageSequenceInitialFrame = C3DParticleSystemGetImageSequenceInitialFrame(particleSystemRef);
  self->_imageSequenceInitialFrameVariation = C3DParticleSystemGetImageSequenceInitialFrameVariation(particleSystemRef);
  self->_imageSequenceFrameRate = C3DParticleSystemGetImageSequenceFrameRate(particleSystemRef);
  self->_imageSequenceFrameRateVariation = C3DParticleSystemGetImageSequenceFrameRateVariation(particleSystemRef);
  [(SCNParticleSystem *)self _syncEntityObjCModel];
  if (v4)
  {

    C3DSceneUnlock(v4);
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

+ (SCNParticleSystem)particleSystemWithParticleSystemRef:(__C3DParticleSystem *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithParticleSystemRef:ref];

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

- (signed)typeOfProperty:(id)property
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

  v6 = [v4 objectForKey:property];
  if (v6)
  {
    LOWORD(v6) = [v6 intValue];
  }

  return v6;
}

- (void)setParticleGeometries:(id)geometries
{
  if (*(self + 16))
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setParticleGeometries:];
    }
  }

  else if (self->_particleGeometries != geometries)
  {
    self->_particleGeometries = geometries;
    sceneRef = [(SCNParticleSystem *)self sceneRef];

    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:&__block_literal_global_71];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __38__SCNParticleSystem_setColliderNodes___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = colliderNodes;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNParticleSystem_setPropertyControllers___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = propertyControllers;
    v7[5] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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

- (void)_updateParticleC3DImage:(id)image
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNParticleSystem__updateParticleC3DImage___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = image;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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

- (void)_setParticleImagePath:(id)path withResolvedPath:(id)resolvedPath
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

    self->_particleImage = path;

    [(SCNParticleSystem *)self _updateParticleC3DImage:resolvedPath];
  }
}

- (SCNVector3)orientationDirection
{
  if (*(self + 16))
  {
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v6 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__SCNParticleSystem_setOrientationDirection___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"orientationDirection" applyBlock:v9];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetLightEmissionRadiusFactor(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
  LightEmissionRadiusFactor = C3DParticleSystemGetLightEmissionRadiusFactor(self->_particleSystem);
  C3DSceneUnlock(v5);
  return LightEmissionRadiusFactor;
}

- (void)setLightEmissionRadiusFactor:(double)factor
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setLightEmissionRadiusFactor:];
    }
  }

  else if (self->_lightEmissionRadiusFactor != factor)
  {
    self->_lightEmissionRadiusFactor = factor;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setLightEmissionRadiusFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = factor;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fixedTimeStep" applyBlock:v7];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v6 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNParticleSystem_setAffectedByGravity___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = affectedByGravity;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"affectedByGravity" applyBlock:v7];
  }
}

- (BOOL)affectedByPhysicsFields
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_affectedByPhysicsFields;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setAffectedByPhysicsFields___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = affectedByPhysicsFields;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (SCNParticleBirthDirection)birthDirection
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthDirection;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetBirthDirection(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setBirthDirection___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = birthDirection;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (SCNParticleBirthLocation)birthLocation
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthLocation;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetBirthLocation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setBirthLocation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = birthLocation;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)birthRate
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_birthRate;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetBirthRate(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNParticleSystem_setBirthRate___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = birthRate;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"birthRate" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetBirthRateVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__SCNParticleSystem_setBirthRateVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = birthRateVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"birthRateVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setBlackPassEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = blackPassEnabled;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (SCNParticleBlendMode)blendMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_blendMode;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetBlendMode(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNParticleSystem_setBlendMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = blendMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)dampingFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_dampingFactor;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetDampingFactor(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setDampingFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = dampingFactor;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"dampingFactor" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetEmissionDuration(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setEmissionDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = emissionDuration;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"emissionDuration" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetEmissionDurationVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setEmissionDurationVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = emissionDurationVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"emissionDurationVariation" applyBlock:v7];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__SCNParticleSystem_setEmitterShape___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = emitterShape;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v6 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetFixedTimeStep(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
  FixedTimeStep = C3DParticleSystemGetFixedTimeStep(self->_particleSystem);
  C3DSceneUnlock(v5);
  return FixedTimeStep;
}

- (void)setFixedTimeStep:(double)step
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setFixedTimeStep:];
    }
  }

  else if (self->_fixedTimeStep != step)
  {
    self->_fixedTimeStep = step;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setFixedTimeStep___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = step;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fixedTimeStep" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetFresnelExponent(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setFresnelExponent___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = fresnelExponent;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fresnelExponent" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetIdleDuration(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setIdleDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = idleDuration;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"idleDuration" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetIdleDurationVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setIdleDurationVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = idleDurationVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"idleDurationVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceAnimationMode(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNParticleSystem_setImageSequenceAnimationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceAnimationMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (NSUInteger)imageSequenceColumnCount
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceColumnCount;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceColumnCount(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNParticleSystem_setImageSequenceColumnCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceColumnCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceColumnCount" applyBlock:v7];
  }
}

- (CGFloat)imageSequenceFrameRate
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_imageSequenceFrameRate;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceFrameRate(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNParticleSystem_setImageSequenceFrameRate___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceFrameRate;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceFrameRate" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceFrameRateVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SCNParticleSystem_setImageSequenceFrameRateVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceFrameRateVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceFrameRateVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceInitialFrame(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setImageSequenceInitialFrame___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceInitialFrame;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceInitialFrame" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceInitialFrameVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__SCNParticleSystem_setImageSequenceInitialFrameVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = imageSequenceInitialFrameVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceInitialFrameVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetImageSequenceRowCount(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setImageSequenceRowCount___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = imageSequenceRowCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"imageSequenceRowCount" applyBlock:v7];
  }
}

- (BOOL)isLocal
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_isLocal;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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

- (void)setIsLocal:(BOOL)local
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setIsLocal:];
    }
  }

  else if (self->_isLocal != local)
  {
    self->_isLocal = local;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__SCNParticleSystem_setIsLocal___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    localCopy = local;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"isLocal" applyBlock:v7];
  }
}

- (BOOL)lightingEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_lightingEnabled;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setLightingEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = lightingEnabled;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (BOOL)loops
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_loops;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__SCNParticleSystem_setLoops___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = loops;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"loops" applyBlock:v7];
  }
}

- (SCNParticleOrientationMode)orientationMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_orientationMode;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetOrientationMode(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SCNParticleSystem_setOrientationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = orientationMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)particleAngle
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleAngle;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleAngle(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setParticleAngle___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngle;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleAngle" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleAngleVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCNParticleSystem_setParticleAngleVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngleVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleAngleVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleAngularVelocity(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleAngularVelocity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngularVelocity;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleAngularVelocity" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleAngularVelocityVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SCNParticleSystem_setParticleAngularVelocityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleAngularVelocityVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleAngularVelocityVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleBounce(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setParticleBounce___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleBounce;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleBounce" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleBounceVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleBounceVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleBounceVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleBounceVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleCharge(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setParticleCharge___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleCharge;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleCharge" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleChargeVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleChargeVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleChargeVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleChargeVariation" applyBlock:v7];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __38__SCNParticleSystem_setParticleColor___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = particleColor;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleColor" applyBlock:v8];
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SCNParticleSystem_setParticleDiesOnCollision___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = particleDiesOnCollision;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)particleFriction
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleFriction;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleFriction(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleFriction___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleFriction;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleFriction" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleFrictionVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleFrictionVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleFrictionVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleFrictionVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleLifeSpan(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleLifeSpan___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleLifeSpan;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleLifeSpan" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleLifeSpanVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleLifeSpanVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleLifeSpanVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleLifeSpanVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleMass(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setParticleMass___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleMass;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleMass" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleMassVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setParticleMassVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleMassVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleMassVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleSize(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNParticleSystem_setParticleSize___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleSize;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleSize" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleSizeVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNParticleSystem_setParticleSizeVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleSizeVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleSizeVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleVelocity(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SCNParticleSystem_setParticleVelocity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleVelocity;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleVelocity" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleVelocityVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__SCNParticleSystem_setParticleVelocityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleVelocityVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleVelocityVariation" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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

- (void)setPhysicsCollisionsEnabled:(BOOL)enabled
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setPhysicsCollisionsEnabled:];
    }
  }

  else if (self->_physicsCollisionsEnabled != enabled)
  {
    self->_physicsCollisionsEnabled = enabled;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__SCNParticleSystem_setPhysicsCollisionsEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    enabledCopy = enabled;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (int64_t)renderingMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_renderingMode;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetRenderingMode(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
  RenderingMode = C3DParticleSystemGetRenderingMode(self->_particleSystem);
  C3DSceneUnlock(v5);
  return RenderingMode;
}

- (void)setRenderingMode:(int64_t)mode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setRenderingMode:];
    }
  }

  else if (self->_renderingMode != mode)
  {
    self->_renderingMode = mode;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setRenderingMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = mode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (int64_t)seed
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_seed;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetSeed(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
  Seed = C3DParticleSystemGetSeed(self->_particleSystem);
  C3DSceneUnlock(v5);
  return Seed;
}

- (void)setSeed:(int64_t)seed
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSeed:];
    }
  }

  else if (self->_seed != seed)
  {
    self->_seed = seed;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__SCNParticleSystem_setSeed___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = seed;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (BOOL)softParticlesEnabled
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_softParticlesEnabled;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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

- (void)setSoftParticlesEnabled:(BOOL)enabled
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem setSoftParticlesEnabled:];
    }
  }

  else if (self->_softParticlesEnabled != enabled)
  {
    self->_softParticlesEnabled = enabled;
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SCNParticleSystem_setSoftParticlesEnabled___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    enabledCopy = enabled;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (SCNParticleSortingMode)sortingMode
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_sortingMode;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetSortingMode(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNParticleSystem_setSortingMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = sortingMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)speedFactor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_speedFactor;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetSpeedFactor(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNParticleSystem_setSpeedFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = speedFactor;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"speedFactor" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetSpreadingAngle(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setSpreadingAngle___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = spreadingAngle;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"spreadingAngle" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetStretchFactor(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SCNParticleSystem_setStretchFactor___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = stretchFactor;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"stretchFactor" applyBlock:v7];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__SCNParticleSystem_setSystemSpawnedOnCollision___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnCollision;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__SCNParticleSystem_setSystemSpawnedOnDying___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnDying;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __46__SCNParticleSystem_setSystemSpawnedOnLiving___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = systemSpawnedOnLiving;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetWarmupDuration(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SCNParticleSystem_setWarmupDuration___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = warmupDuration;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"warmupDuration" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNParticleSystem_setWritesToDepthBuffer___block_invoke;
    v7[3] = &unk_2782FB7F8;
    v7[4] = self;
    v8 = writesToDepthBuffer;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (CGFloat)particleIntensity
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_particleIntensity;
  }

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleIntensity(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SCNParticleSystem_setParticleIntensity___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleIntensity;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleIntensity" applyBlock:v7];
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

  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (!sceneRef)
  {
    return C3DParticleSystemGetParticleIntensityVariation(self->_particleSystem);
  }

  v5 = sceneRef;
  C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNParticleSystem *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SCNParticleSystem_setParticleIntensityVariation___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = particleIntensityVariation;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleIntensityVariation" applyBlock:v7];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47__SCNParticleSystem_setParticleColorVariation___block_invoke;
      v10[3] = &unk_2782FE238;
      v10[4] = self;
      v11 = x;
      v12 = y;
      v13 = z;
      v14 = w;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"particleColorVariation" applyBlock:v10];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __42__SCNParticleSystem_setEmittingDirection___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"emittingDirection" applyBlock:v9];
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
      sceneRef = [(SCNParticleSystem *)self sceneRef];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __37__SCNParticleSystem_setAcceleration___block_invoke;
      v9[3] = &unk_2782FB848;
      v9[4] = self;
      v10 = x;
      v11 = y;
      v12 = z;
      [SCNTransaction postCommandWithContext:sceneRef object:self key:@"acceleration" applyBlock:v9];
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  if (sceneRef)
  {
    [SCNTransaction postCommandWithContext:MEMORY[0x277D85DD0] object:3221225472 applyBlock:__26__SCNParticleSystem_reset__block_invoke, &unk_2782FB7D0, self, sceneRef];
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SCNParticleSystem_handleEvent_forProperties_withBlock___block_invoke;
  v10[3] = &unk_2782FEE90;
  v10[6] = block;
  v10[7] = event;
  v10[4] = self;
  v10[5] = properties;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SCNParticleSystem_addModifierForProperties_atStage_withBlock___block_invoke;
  v10[3] = &unk_2782FEEB8;
  v10[6] = block;
  v10[7] = stage;
  v10[4] = properties;
  v10[5] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
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
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNParticleSystem_removeModifiersOfStage___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = stage;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)removeAllModifiers
{
  sceneRef = [(SCNParticleSystem *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SCNParticleSystem_removeAllModifiers__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)setReferenceName:(id)name
{
  referenceName = self->_referenceName;
  if (referenceName != name)
  {

    self->_referenceName = name;
  }
}

- (void)_customEncodingOfSCNParticleSystem:(id)system
{
  [system encodeBool:self->_loops forKey:@"loops"];
  particleColor = self->_particleColor;
  if (particleColor)
  {
    SCNEncodeUnsafeObjectForKey(system, particleColor, @"particleColor");
  }

  particleImage = self->_particleImage;
  if (particleImage)
  {

    SCNEncodeImageContentsForKey(system, particleImage, @"particleImage");
  }
}

- (void)_customDecodingOfSCNParticleSystem:(id)system
{
  if ([system containsValueForKey:@"loops"])
  {
    -[SCNParticleSystem setLoops:](self, "setLoops:", [system decodeBoolForKey:@"loops"]);
  }

  [(SCNParticleSystem *)self setParticleColor:SCNDecodeUnsecureColor(system, @"particleColor")];
  v5 = SCNDecodeImageContents(system, @"particleImage");
  if (v5)
  {
    v6 = v5;
    v7 = SCNEnclosingURLForSceneDecoder(system);
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

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 16))
  {
    [(SCNParticleSystem *)self _syncObjCModel];
  }

  if ([(SCNParticleSystem *)self _isAReference])
  {
    referenceName = [(SCNParticleSystem *)self referenceName];

    [coder encodeObject:referenceName forKey:@"referenceName"];
  }

  else
  {
    [(SCNParticleSystem *)self _customEncodingOfSCNParticleSystem:coder];
    name = self->_name;
    if (name)
    {
      [coder encodeObject:name forKey:@"name"];
    }

    [coder encodeDouble:@"emissionDuration" forKey:self->_emissionDuration];
    [coder encodeDouble:@"emissionDurationVariation" forKey:self->_emissionDurationVariation];
    [coder encodeDouble:@"idleDuration" forKey:self->_idleDuration];
    [coder encodeDouble:@"idleDurationVariation" forKey:self->_idleDurationVariation];
    [coder encodeDouble:@"birthRate" forKey:self->_birthRate];
    [coder encodeDouble:@"birthRateVariation" forKey:self->_birthRateVariation];
    [coder encodeDouble:@"warmupDuration" forKey:self->_warmupDuration];
    emitterShape = self->_emitterShape;
    if (emitterShape)
    {
      [coder encodeObject:emitterShape forKey:@"emitterShape"];
    }

    [coder encodeInteger:self->_birthLocation forKey:@"birthLocation"];
    [coder encodeInteger:self->_birthDirection forKey:@"birthDirection"];
    SCNEncodeVector3(coder, @"emittingDirection", self->_emittingDirection.x, self->_emittingDirection.y, self->_emittingDirection.z);
    SCNEncodeVector3(coder, @"orientationDirection", self->_orientationDirection.x, self->_orientationDirection.y, self->_orientationDirection.z);
    SCNEncodeVector3(coder, @"acceleration", self->_acceleration.x, self->_acceleration.y, self->_acceleration.z);
    [coder encodeDouble:@"spreadingAngle" forKey:self->_spreadingAngle];
    [coder encodeBool:self->_isLocal forKey:@"isLocal"];
    [coder encodeBool:self->_affectedByGravity forKey:@"affectedByGravity"];
    [coder encodeBool:self->_affectedByPhysicsFields forKey:@"affectedByPhysicsFields"];
    [coder encodeBool:self->_physicsCollisionsEnabled forKey:@"physicsCollisionsEnabled"];
    [coder encodeBool:self->_lightingEnabled forKey:@"lightingEnabled"];
    [coder encodeBool:self->_softParticlesEnabled forKey:@"softParticlesEnabled"];
    [coder encodeBool:self->_particleDiesOnCollision forKey:@"particleDiesOnCollision"];
    [coder encodeBool:self->_blackPassEnabled forKey:@"blackPassEnabled"];
    [coder encodeBool:self->_writesToDepthBuffer forKey:@"writesToDepthBuffer"];
    [coder encodeDouble:@"particleAngle" forKey:self->_particleAngle];
    [coder encodeDouble:@"particleAngleVariation" forKey:self->_particleAngleVariation];
    [coder encodeDouble:@"particleVelocity" forKey:self->_particleVelocity];
    [coder encodeDouble:@"particleVelocityVariation" forKey:self->_particleVelocityVariation];
    [coder encodeDouble:@"particleAngularVelocity" forKey:self->_particleAngularVelocity];
    [coder encodeDouble:@"particleAngularVelocityVariation" forKey:self->_particleAngularVelocityVariation];
    [coder encodeDouble:@"particleLifeSpan" forKey:self->_particleLifeSpan];
    [coder encodeDouble:@"particleLifeSpanVariation" forKey:self->_particleLifeSpanVariation];
    [coder encodeDouble:@"particleBounce" forKey:self->_particleBounce];
    [coder encodeDouble:@"particleBounceVariation" forKey:self->_particleBounceVariation];
    [coder encodeDouble:@"particleFriction" forKey:self->_particleFriction];
    [coder encodeDouble:@"particleFrictionVariation" forKey:self->_particleFrictionVariation];
    [coder encodeDouble:@"particleCharge" forKey:self->_particleCharge];
    [coder encodeDouble:@"particleChargeVariation" forKey:self->_particleChargeVariation];
    SCNEncodeVector4(coder, @"particleColorVariation", self->_particleColorVariation.x, self->_particleColorVariation.y, self->_particleColorVariation.z, self->_particleColorVariation.w);
    systemSpawnedOnCollision = self->_systemSpawnedOnCollision;
    if (systemSpawnedOnCollision)
    {
      [coder encodeObject:systemSpawnedOnCollision forKey:@"systemSpawnedOnCollision"];
    }

    systemSpawnedOnDying = self->_systemSpawnedOnDying;
    if (systemSpawnedOnDying)
    {
      [coder encodeObject:systemSpawnedOnDying forKey:@"systemSpawnedOnDying"];
    }

    systemSpawnedOnLiving = self->_systemSpawnedOnLiving;
    if (systemSpawnedOnLiving)
    {
      [coder encodeObject:systemSpawnedOnLiving forKey:@"systemSpawnedOnLiving"];
    }

    [coder encodeDouble:@"particleSize" forKey:self->_particleSize];
    [coder encodeDouble:@"particleSizeVariation" forKey:self->_particleSizeVariation];
    [coder encodeDouble:@"particleIntensity" forKey:self->_particleIntensity];
    [coder encodeDouble:@"particleIntensityVariation" forKey:self->_particleIntensityVariation];
    [coder encodeInteger:self->_seed forKey:@"seed"];
    [coder encodeInteger:self->_blendMode forKey:@"blendMode"];
    [coder encodeInteger:self->_renderingMode forKey:@"renderingMode"];
    [coder encodeInteger:self->_orientationMode forKey:@"orientationMode"];
    [coder encodeInteger:self->_imageSequenceAnimationMode forKey:@"imageSequenceAnimationMode"];
    particleGeometries = self->_particleGeometries;
    if (particleGeometries)
    {
      [coder encodeObject:particleGeometries forKey:@"particleGeometries"];
    }

    colliderNodes = self->_colliderNodes;
    if (colliderNodes)
    {
      [coder encodeObject:colliderNodes forKey:@"colliderNodes"];
    }

    propertyControllers = self->_propertyControllers;
    if (propertyControllers)
    {
      [coder encodeObject:propertyControllers forKey:@"propertyControllers"];
    }

    [coder encodeInteger:self->_sortingMode forKey:@"sortingMode"];
    [coder encodeDouble:@"particleMass" forKey:self->_particleMass];
    [coder encodeDouble:@"particleMassVariation" forKey:self->_particleMassVariation];
    [coder encodeDouble:@"dampingFactor" forKey:self->_dampingFactor];
    [coder encodeDouble:@"speedFactor" forKey:self->_speedFactor];
    [coder encodeDouble:@"fixedTimeStep" forKey:self->_fixedTimeStep];
    [coder encodeDouble:@"stretchFactor" forKey:self->_stretchFactor];
    [coder encodeDouble:@"fresnelExponent" forKey:self->_fresnelExponent];
    [coder encodeInteger:self->_imageSequenceColumnCount forKey:@"imageSequenceColumnCount"];
    [coder encodeInteger:self->_imageSequenceRowCount forKey:@"imageSequenceRowCount"];
    [coder encodeDouble:@"imageSequenceInitialFrame" forKey:self->_imageSequenceInitialFrame];
    [coder encodeDouble:@"imageSequenceInitialFrameVariation" forKey:self->_imageSequenceInitialFrameVariation];
    [coder encodeDouble:@"imageSequenceFrameRate" forKey:self->_imageSequenceFrameRate];
    [coder encodeDouble:@"imageSequenceFrameRateVariation" forKey:self->_imageSequenceFrameRateVariation];
    SCNEncodeEntity(coder, self);

    SCNEncodeAnimations(coder, self);
  }
}

- (SCNParticleSystem)initWithCoder:(id)coder
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SCNParticleSystem;
  v4 = [(SCNParticleSystem *)&v17 init];
  if (v4)
  {
    if ([coder containsValueForKey:@"referenceName"])
    {
      -[SCNParticleSystem setReferenceName:](v4, "setReferenceName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"referenceName"]);
      if ([(SCNParticleSystem *)v4 referenceName])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [objc_msgSend(coder "assetCatalog")];
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
    [(SCNParticleSystem *)v4 _customDecodingOfSCNParticleSystem:coder];
    -[SCNParticleSystem setName:](v4, "setName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    [coder decodeDoubleForKey:@"emissionDuration"];
    [(SCNParticleSystem *)v4 setEmissionDuration:?];
    [coder decodeDoubleForKey:@"emissionDurationVariation"];
    [(SCNParticleSystem *)v4 setEmissionDurationVariation:?];
    [coder decodeDoubleForKey:@"idleDuration"];
    [(SCNParticleSystem *)v4 setIdleDuration:?];
    [coder decodeDoubleForKey:@"idleDurationVariation"];
    [(SCNParticleSystem *)v4 setIdleDurationVariation:?];
    [coder decodeDoubleForKey:@"birthRate"];
    [(SCNParticleSystem *)v4 setBirthRate:?];
    [coder decodeDoubleForKey:@"birthRateVariation"];
    [(SCNParticleSystem *)v4 setBirthRateVariation:?];
    [coder decodeDoubleForKey:@"warmupDuration"];
    [(SCNParticleSystem *)v4 setWarmupDuration:?];
    -[SCNParticleSystem setEmitterShape:](v4, "setEmitterShape:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"emitterShape"]);
    -[SCNParticleSystem setBirthLocation:](v4, "setBirthLocation:", [coder decodeIntegerForKey:@"birthLocation"]);
    -[SCNParticleSystem setBirthDirection:](v4, "setBirthDirection:", [coder decodeIntegerForKey:@"birthDirection"]);
    *&v11 = SCNDecodeVector3(coder, @"emittingDirection");
    [(SCNParticleSystem *)v4 setEmittingDirection:v11];
    *&v12 = SCNDecodeVector3(coder, @"orientationDirection");
    [(SCNParticleSystem *)v4 setOrientationDirection:v12];
    *&v13 = SCNDecodeVector3(coder, @"acceleration");
    [(SCNParticleSystem *)v4 setAcceleration:v13];
    [coder decodeDoubleForKey:@"spreadingAngle"];
    [(SCNParticleSystem *)v4 setSpreadingAngle:?];
    -[SCNParticleSystem setIsLocal:](v4, "setIsLocal:", [coder decodeBoolForKey:@"isLocal"]);
    -[SCNParticleSystem setAffectedByGravity:](v4, "setAffectedByGravity:", [coder decodeBoolForKey:@"affectedByGravity"]);
    -[SCNParticleSystem setAffectedByPhysicsFields:](v4, "setAffectedByPhysicsFields:", [coder decodeBoolForKey:@"affectedByPhysicsFields"]);
    -[SCNParticleSystem setPhysicsCollisionsEnabled:](v4, "setPhysicsCollisionsEnabled:", [coder decodeBoolForKey:@"physicsCollisionsEnabled"]);
    -[SCNParticleSystem setLightingEnabled:](v4, "setLightingEnabled:", [coder decodeBoolForKey:@"lightingEnabled"]);
    -[SCNParticleSystem setSoftParticlesEnabled:](v4, "setSoftParticlesEnabled:", [coder decodeBoolForKey:@"softParticlesEnabled"]);
    -[SCNParticleSystem setParticleDiesOnCollision:](v4, "setParticleDiesOnCollision:", [coder decodeBoolForKey:@"particleDiesOnCollision"]);
    -[SCNParticleSystem setBlackPassEnabled:](v4, "setBlackPassEnabled:", [coder decodeBoolForKey:@"blackPassEnabled"]);
    [coder decodeDoubleForKey:@"particleAngle"];
    [(SCNParticleSystem *)v4 setParticleAngle:?];
    [coder decodeDoubleForKey:@"particleAngleVariation"];
    [(SCNParticleSystem *)v4 setParticleAngleVariation:?];
    [coder decodeDoubleForKey:@"particleVelocity"];
    [(SCNParticleSystem *)v4 setParticleVelocity:?];
    [coder decodeDoubleForKey:@"particleVelocityVariation"];
    [(SCNParticleSystem *)v4 setParticleVelocityVariation:?];
    [coder decodeDoubleForKey:@"particleAngularVelocity"];
    [(SCNParticleSystem *)v4 setParticleAngularVelocity:?];
    [coder decodeDoubleForKey:@"particleAngularVelocityVariation"];
    [(SCNParticleSystem *)v4 setParticleAngularVelocityVariation:?];
    [coder decodeDoubleForKey:@"particleLifeSpan"];
    [(SCNParticleSystem *)v4 setParticleLifeSpan:?];
    [coder decodeDoubleForKey:@"particleLifeSpanVariation"];
    [(SCNParticleSystem *)v4 setParticleLifeSpanVariation:?];
    [coder decodeDoubleForKey:@"particleBounce"];
    [(SCNParticleSystem *)v4 setParticleBounce:?];
    [coder decodeDoubleForKey:@"particleBounceVariation"];
    [(SCNParticleSystem *)v4 setParticleBounceVariation:?];
    [coder decodeDoubleForKey:@"particleFriction"];
    [(SCNParticleSystem *)v4 setParticleFriction:?];
    [coder decodeDoubleForKey:@"particleFrictionVariation"];
    [(SCNParticleSystem *)v4 setParticleFrictionVariation:?];
    [coder decodeDoubleForKey:@"particleCharge"];
    [(SCNParticleSystem *)v4 setParticleCharge:?];
    [coder decodeDoubleForKey:@"particleChargeVariation"];
    [(SCNParticleSystem *)v4 setParticleChargeVariation:?];
    *&v14 = SCNDecodeVector4(coder, @"particleColorVariation");
    [(SCNParticleSystem *)v4 setParticleColorVariation:v14];
    -[SCNParticleSystem setSystemSpawnedOnCollision:](v4, "setSystemSpawnedOnCollision:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnCollision"]);
    -[SCNParticleSystem setSystemSpawnedOnDying:](v4, "setSystemSpawnedOnDying:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnDying"]);
    -[SCNParticleSystem setSystemSpawnedOnLiving:](v4, "setSystemSpawnedOnLiving:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"systemSpawnedOnLiving"]);
    [coder decodeDoubleForKey:@"particleSize"];
    [(SCNParticleSystem *)v4 setParticleSize:?];
    [coder decodeDoubleForKey:@"particleSizeVariation"];
    [(SCNParticleSystem *)v4 setParticleSizeVariation:?];
    if ([coder containsValueForKey:@"particleIntensity"])
    {
      [coder decodeDoubleForKey:@"particleIntensity"];
      [(SCNParticleSystem *)v4 setParticleIntensity:?];
      [coder decodeDoubleForKey:@"particleIntensityVariation"];
      [(SCNParticleSystem *)v4 setParticleIntensityVariation:?];
    }

    if ([coder containsValueForKey:@"writesToDepthBuffer"])
    {
      -[SCNParticleSystem setWritesToDepthBuffer:](v4, "setWritesToDepthBuffer:", [coder decodeBoolForKey:@"writesToDepthBuffer"]);
    }

    -[SCNParticleSystem setSeed:](v4, "setSeed:", [coder decodeIntegerForKey:@"seed"]);
    -[SCNParticleSystem setBlendMode:](v4, "setBlendMode:", [coder decodeIntegerForKey:@"blendMode"]);
    -[SCNParticleSystem setRenderingMode:](v4, "setRenderingMode:", [coder decodeIntegerForKey:@"renderingMode"]);
    -[SCNParticleSystem setOrientationMode:](v4, "setOrientationMode:", [coder decodeIntegerForKey:@"orientationMode"]);
    -[SCNParticleSystem setImageSequenceAnimationMode:](v4, "setImageSequenceAnimationMode:", [coder decodeIntegerForKey:@"imageSequenceAnimationMode"]);
    -[SCNParticleSystem setParticleGeometries:](v4, "setParticleGeometries:", [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"particleGeometries"]);
    -[SCNParticleSystem setColliderNodes:](v4, "setColliderNodes:", [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colliderNodes"]);
    v15 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    -[SCNParticleSystem setPropertyControllers:](v4, "setPropertyControllers:", [coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v18, 4)), @"propertyControllers"}]);
    -[SCNParticleSystem setSortingMode:](v4, "setSortingMode:", [coder decodeIntegerForKey:@"sortingMode"]);
    [coder decodeDoubleForKey:@"particleMass"];
    [(SCNParticleSystem *)v4 setParticleMass:?];
    [coder decodeDoubleForKey:@"particleMassVariation"];
    [(SCNParticleSystem *)v4 setParticleMassVariation:?];
    [coder decodeDoubleForKey:@"dampingFactor"];
    [(SCNParticleSystem *)v4 setDampingFactor:?];
    [coder decodeDoubleForKey:@"speedFactor"];
    [(SCNParticleSystem *)v4 setSpeedFactor:?];
    [coder decodeDoubleForKey:@"fixedTimeStep"];
    [(SCNParticleSystem *)v4 setFixedTimeStep:?];
    [coder decodeDoubleForKey:@"stretchFactor"];
    [(SCNParticleSystem *)v4 setStretchFactor:?];
    [coder decodeDoubleForKey:@"fresnelExponent"];
    [(SCNParticleSystem *)v4 setFresnelExponent:?];
    -[SCNParticleSystem setImageSequenceColumnCount:](v4, "setImageSequenceColumnCount:", [coder decodeIntegerForKey:@"imageSequenceColumnCount"]);
    -[SCNParticleSystem setImageSequenceRowCount:](v4, "setImageSequenceRowCount:", [coder decodeIntegerForKey:@"imageSequenceRowCount"]);
    [coder decodeDoubleForKey:@"imageSequenceInitialFrame"];
    [(SCNParticleSystem *)v4 setImageSequenceInitialFrame:?];
    [coder decodeDoubleForKey:@"imageSequenceInitialFrameVariation"];
    [(SCNParticleSystem *)v4 setImageSequenceInitialFrameVariation:?];
    [coder decodeDoubleForKey:@"imageSequenceFrameRate"];
    [(SCNParticleSystem *)v4 setImageSequenceFrameRate:?];
    [coder decodeDoubleForKey:@"imageSequenceFrameRateVariation"];
    [(SCNParticleSystem *)v4 setImageSequenceFrameRateVariation:?];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(coder, v4);
    SCNDecodeAnimations(coder, v4);
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