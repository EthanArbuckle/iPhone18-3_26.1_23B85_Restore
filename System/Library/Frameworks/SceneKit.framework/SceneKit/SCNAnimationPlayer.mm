@interface SCNAnimationPlayer
+ (SCNAnimationPlayer)animationPlayerWithAnimation:(SCNAnimation *)animation;
+ (SCNAnimationPlayer)animationPlayerWithAnimationPlayerRef:(__C3DAnimationPlayer *)ref;
+ (SCNAnimationPlayer)animationPlayerWithSCNAnimation:(id)animation;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)isAnimationForKeyPaused:(id)paused;
- (NSArray)animationKeys;
- (SCNAnimationPlayer)initWithAnimationPlayerRef:(__C3DAnimationPlayer *)ref;
- (SCNAnimationPlayer)initWithCoder:(id)coder;
- (SCNAnimationPlayer)initWithSCNAnimation:(id)animation;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scene;
- (void)_copyAnimationsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setAnimation:(id)animation;
- (void)_syncObjCAnimations;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)pauseAnimationForKey:(id)key;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)resumeAnimationForKey:(id)key;
- (void)setBlendFactor:(CGFloat)blendFactor;
- (void)setPaused:(BOOL)paused;
- (void)setSpeed:(CGFloat)speed;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation SCNAnimationPlayer

- (void)commonInit
{
  __asm { FMOV            V0.2S, #1.0 }

  *&self->_weight = _D0;
  self->_paused = 1;
}

+ (SCNAnimationPlayer)animationPlayerWithAnimation:(SCNAnimation *)animation
{
  v3 = [objc_alloc(objc_opt_class()) initWithSCNAnimation:animation];

  return v3;
}

- (SCNAnimationPlayer)initWithAnimationPlayerRef:(__C3DAnimationPlayer *)ref
{
  v7.receiver = self;
  v7.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_playerRef = v5;
    v4->_animation = [SCNAnimation animationWithC3DAnimation:C3DAnimationPlayerGetAnimation(v5)];
    v4->_weight = C3DAnimationPlayerGetWeight(ref);
    v4->_speed = C3DAnimationPlayerGetSpeed(ref);
    v4->_paused = C3DAnimationPlayerGetPaused(ref);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNAnimationPlayer *)v4 _syncObjCAnimations];
  }

  return v4;
}

+ (SCNAnimationPlayer)animationPlayerWithAnimationPlayerRef:(__C3DAnimationPlayer *)ref
{
  v3 = [[self alloc] initWithAnimationPlayerRef:ref];

  return v3;
}

- (SCNAnimationPlayer)initWithSCNAnimation:(id)animation
{
  v6.receiver = self;
  v6.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v6 init];
  if (v4)
  {
    v4->_playerRef = C3DAnimationPlayerCreateWithAnimation([animation animationRef]);
    v4->_animation = animation;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNAnimationPlayer *)v4 commonInit];
  }

  return v4;
}

+ (SCNAnimationPlayer)animationPlayerWithSCNAnimation:(id)animation
{
  v3 = [[self alloc] initWithSCNAnimation:animation];

  return v3;
}

- (void)dealloc
{
  playerRef = self->_playerRef;
  if (playerRef)
  {
    CFRelease(playerRef);
    self->_playerRef = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNAnimationPlayer;
  [(SCNAnimationPlayer *)&v4 dealloc];
}

- (void)_setAnimation:(id)animation
{
  animation = self->_animation;
  if (animation != animation)
  {

    self->_animation = animation;
    playerRef = self->_playerRef;
    if (playerRef)
    {
      CFRelease(playerRef);
      self->_playerRef = 0;
    }

    if (animation)
    {
      v7 = C3DAnimationPlayerCreateWithAnimation([animation animationRef]);
      self->_playerRef = v7;
      C3DAnimationPlayerSetWeight(v7, self->_weight);
      C3DAnimationPlayerSetSpeed(self->_playerRef, self->_speed);
      v8 = self->_playerRef;
      paused = self->_paused;

      C3DAnimationPlayerSetPaused(v8, paused);
    }
  }
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  [(SCNAnimation *)self->_animation prepareWithTarget:target implicitDuration:duration];
  playerRef = self->_playerRef;
  animationRef = [(SCNAnimation *)self->_animation animationRef];

  C3DAnimationPlayerSetAnimation(playerRef, animationRef);
}

- (id)copyWithZone:(_NSZone *)zone
{
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v4 = [objc_alloc(objc_opt_class()) initWithSCNAnimation:{-[SCNAnimationPlayer animation](self, "animation")}];
  [(SCNAnimationPlayer *)self weight];
  [v4 setWeight:?];
  [(SCNAnimationPlayer *)self speed];
  [v4 setSpeed:?];
  [v4 setPaused:{-[SCNAnimationPlayer paused](self, "paused")}];
  +[SCNTransaction commit];
  return v4;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNAnimationPlayer *)self sceneRef];
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
    __CFObject = [(SCNAnimationPlayer *)self __CFObject];
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
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
    sceneRef = [(SCNAnimationPlayer *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SCNAnimationPlayer_addAnimationPlayer_forKey___block_invoke;
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
      [SCNMaterial addAnimationPlayer:forKey:];
    }
  }
}

void __48__SCNAnimationPlayer_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 36));
    [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 36);

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
    [(SCNAnimationPlayer *)self addAnimationPlayer:v7 forKey:keyCopy];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SCNAnimationPlayer_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SCNAnimationPlayer_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    sceneRef = [(SCNAnimationPlayer *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__SCNAnimationPlayer_removeAnimationForKey___block_invoke;
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
    sceneRef = [(SCNAnimationPlayer *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SCNAnimationPlayer_removeAnimationForKey_blendOutDuration___block_invoke;
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
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  __CFObject = [(SCNAnimationPlayer *)self __CFObject];
  if (__CFObject)
  {
    v6 = __CFObject;
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
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

- (id)animationForKey:(id)key
{
  v3 = [(SCNAnimationPlayer *)self _scnAnimationForKey:key];
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
        [(SCNAnimationPlayer *)self addAnimationPlayer:v11 forKey:v10];
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
  __CFObject = [(SCNAnimationPlayer *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNAnimationPlayer *)self animationManager];
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
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNAnimationPlayer_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNAnimationPlayer_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SCNAnimationPlayer_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
}

void __47__SCNAnimationPlayer_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNAnimationPlayer *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNAnimationPlayer *)self animationManager];
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

    sceneRef = [(SCNAnimationPlayer *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SCNAnimationPlayer_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
  }
}

void __70__SCNAnimationPlayer_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNAnimationPlayer_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __43__SCNAnimationPlayer_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  sceneRef = [(SCNAnimationPlayer *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SCNAnimationPlayer_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __39__SCNAnimationPlayer_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNAnimationPlayer *)self __CFObject];

  return C3DGetScene(__CFObject);
}

- (id)scene
{
  result = [(SCNAnimationPlayer *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (void)setBlendFactor:(CGFloat)blendFactor
{
  if (self->_weight != blendFactor)
  {
    v5 = blendFactor;
    self->_weight = v5;
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] key:3221225472 applyBlock:__37__SCNAnimationPlayer_setBlendFactor___block_invoke, &unk_2782FB7D0, self, *&blendFactor, v3, v4];
  }
}

float __37__SCNAnimationPlayer_setBlendFactor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationPlayerSetWeight(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setSpeed:(CGFloat)speed
{
  if (self->_speed != speed)
  {
    v5 = speed;
    self->_speed = v5;
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] key:3221225472 applyBlock:__31__SCNAnimationPlayer_setSpeed___block_invoke, &unk_2782FB7D0, self, *&speed, v3, v4];
  }
}

float __31__SCNAnimationPlayer_setSpeed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationPlayerSetSpeed(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    LOBYTE(v5) = paused;
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] applyBlock:3221225472, __32__SCNAnimationPlayer_setPaused___block_invoke, &unk_2782FB7F8, self, v5, v3, v4];
  }
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeDouble:@"weight" forKey:self->_weight];
  [coder encodeDouble:@"speed" forKey:self->_speed];
  [coder encodeBool:self->_paused forKey:@"paused"];

  SCNEncodeAnimations(coder, self);
}

- (SCNAnimationPlayer)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v9 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"weight"];
    *&v6 = v6;
    v4->_weight = *&v6;
    [coder decodeDoubleForKey:@"speed"];
    *&v7 = v7;
    v4->_speed = *&v7;
    v4->_paused = [coder decodeBoolForKey:@"paused"];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeAnimations(coder, v4);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end