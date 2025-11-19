@interface SCNAnimationPlayer
+ (SCNAnimationPlayer)animationPlayerWithAnimation:(SCNAnimation *)animation;
+ (SCNAnimationPlayer)animationPlayerWithAnimationPlayerRef:(__C3DAnimationPlayer *)a3;
+ (SCNAnimationPlayer)animationPlayerWithSCNAnimation:(id)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (NSArray)animationKeys;
- (SCNAnimationPlayer)initWithAnimationPlayerRef:(__C3DAnimationPlayer *)a3;
- (SCNAnimationPlayer)initWithCoder:(id)a3;
- (SCNAnimationPlayer)initWithSCNAnimation:(id)a3;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)scene;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setAnimation:(id)a3;
- (void)_syncObjCAnimations;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pauseAnimationForKey:(id)a3;
- (void)prepareWithTarget:(id)a3 implicitDuration:(double)a4;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setBlendFactor:(CGFloat)blendFactor;
- (void)setPaused:(BOOL)paused;
- (void)setSpeed:(CGFloat)speed;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)unbindAnimatablePath:(id)a3;
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

- (SCNAnimationPlayer)initWithAnimationPlayerRef:(__C3DAnimationPlayer *)a3
{
  v7.receiver = self;
  v7.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_playerRef = v5;
    v4->_animation = [SCNAnimation animationWithC3DAnimation:C3DAnimationPlayerGetAnimation(v5)];
    v4->_weight = C3DAnimationPlayerGetWeight(a3);
    v4->_speed = C3DAnimationPlayerGetSpeed(a3);
    v4->_paused = C3DAnimationPlayerGetPaused(a3);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNAnimationPlayer *)v4 _syncObjCAnimations];
  }

  return v4;
}

+ (SCNAnimationPlayer)animationPlayerWithAnimationPlayerRef:(__C3DAnimationPlayer *)a3
{
  v3 = [[a1 alloc] initWithAnimationPlayerRef:a3];

  return v3;
}

- (SCNAnimationPlayer)initWithSCNAnimation:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v6 init];
  if (v4)
  {
    v4->_playerRef = C3DAnimationPlayerCreateWithAnimation([a3 animationRef]);
    v4->_animation = a3;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNAnimationPlayer *)v4 commonInit];
  }

  return v4;
}

+ (SCNAnimationPlayer)animationPlayerWithSCNAnimation:(id)a3
{
  v3 = [[a1 alloc] initWithSCNAnimation:a3];

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

- (void)_setAnimation:(id)a3
{
  animation = self->_animation;
  if (animation != a3)
  {

    self->_animation = a3;
    playerRef = self->_playerRef;
    if (playerRef)
    {
      CFRelease(playerRef);
      self->_playerRef = 0;
    }

    if (a3)
    {
      v7 = C3DAnimationPlayerCreateWithAnimation([a3 animationRef]);
      self->_playerRef = v7;
      C3DAnimationPlayerSetWeight(v7, self->_weight);
      C3DAnimationPlayerSetSpeed(self->_playerRef, self->_speed);
      v8 = self->_playerRef;
      paused = self->_paused;

      C3DAnimationPlayerSetPaused(v8, paused);
    }
  }
}

- (void)prepareWithTarget:(id)a3 implicitDuration:(double)a4
{
  [(SCNAnimation *)self->_animation prepareWithTarget:a3 implicitDuration:a4];
  playerRef = self->_playerRef;
  v6 = [(SCNAnimation *)self->_animation animationRef];

  C3DAnimationPlayerSetAnimation(playerRef, v6);
}

- (id)copyWithZone:(_NSZone *)a3
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
    v8 = [(SCNAnimationPlayer *)self __CFObject];
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
    v8 = [(SCNAnimationPlayer *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SCNAnimationPlayer_addAnimationPlayer_forKey___block_invoke;
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
    [(SCNAnimationPlayer *)self addAnimationPlayer:v7 forKey:v5];

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
  v3 = [(SCNAnimationPlayer *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__SCNAnimationPlayer_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SCNAnimationPlayer_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    v5 = [(SCNAnimationPlayer *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__SCNAnimationPlayer_removeAnimationForKey___block_invoke;
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
    v7 = [(SCNAnimationPlayer *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SCNAnimationPlayer_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = [(SCNAnimationPlayer *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNAnimationPlayer *)self __CFObject];
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
  v3 = [(SCNAnimationPlayer *)self _scnAnimationForKey:a3];
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
        [(SCNAnimationPlayer *)self addAnimationPlayer:v11 forKey:v10];
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
  v9 = [(SCNAnimationPlayer *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNAnimationPlayer *)self animationManager];
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
  v5 = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNAnimationPlayer_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNAnimationPlayer_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNAnimationPlayer *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SCNAnimationPlayer_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
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

- (BOOL)isAnimationForKeyPaused:(id)a3
{
  v5 = [(SCNAnimationPlayer *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNAnimationPlayer *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNAnimationPlayer *)self animationManager];
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

    v15 = [(SCNAnimationPlayer *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SCNAnimationPlayer_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
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

- (void)unbindAnimatablePath:(id)a3
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  v5 = [(SCNAnimationPlayer *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNAnimationPlayer_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
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
  v3 = [(SCNAnimationPlayer *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SCNAnimationPlayer_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __39__SCNAnimationPlayer_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNAnimationPlayer *)self __CFObject];

  return C3DGetScene(v2);
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeDouble:@"weight" forKey:self->_weight];
  [a3 encodeDouble:@"speed" forKey:self->_speed];
  [a3 encodeBool:self->_paused forKey:@"paused"];

  SCNEncodeAnimations(a3, self);
}

- (SCNAnimationPlayer)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SCNAnimationPlayer;
  v4 = [(SCNAnimationPlayer *)&v9 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [a3 decodeDoubleForKey:@"weight"];
    *&v6 = v6;
    v4->_weight = *&v6;
    [a3 decodeDoubleForKey:@"speed"];
    *&v7 = v7;
    v4->_speed = *&v7;
    v4->_paused = [a3 decodeBoolForKey:@"paused"];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeAnimations(a3, v4);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end