@interface SCNTechnique
+ (SCNTechnique)techniqueBySequencingTechniques:(NSArray *)techniques;
+ (SCNTechnique)techniqueWithDictionary:(NSDictionary *)dictionary;
+ (SCNTechnique)techniqueWithTechniqueRef:(__C3DFXTechnique *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)isAnimationForKeyPaused:(id)paused;
- (NSArray)animationKeys;
- (SCNTechnique)initWithCoder:(id)coder;
- (SCNTechnique)initWithTechniqueRef:(__C3DFXTechnique *)ref;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPresentationTechniqueWithTechniqueRef:(__C3DFXTechnique *)ref;
- (id)passAtIndex:(unint64_t)index;
- (id)presentationInstance;
- (id)scene;
- (id)valueForUndefinedKey:(id)key;
- (void)_copyAnimationsFrom:(id)from;
- (void)_customDecodingOfSCNTechnique:(id)technique;
- (void)_customEncodingOfSCNTechnique:(id)technique;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setupPasses;
- (void)_syncObjCAnimations;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)pauseAnimationForKey:(id)key;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)resumeAnimationForKey:(id)key;
- (void)setLibrary:(id)library;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)setValue:(id)value forSymbolNamed:(id)named;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation SCNTechnique

- (id)initPresentationTechniqueWithTechniqueRef:(__C3DFXTechnique *)ref
{
  v7.receiver = self;
  v7.super_class = SCNTechnique;
  v4 = [(SCNTechnique *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) |= 1u;
    v4->_technique = CFRetain(ref);
    *&v5->_valueForSymbolLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (SCNTechnique)initWithTechniqueRef:(__C3DFXTechnique *)ref
{
  v7.receiver = self;
  v7.super_class = SCNTechnique;
  v4 = [(SCNTechnique *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_technique = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    *&v4->_valueForSymbolLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(self + 8) & 1) == 0)
  {
    technique = self->_technique;
    if (technique)
    {
      C3DEntitySetObjCWrapper(technique, 0);
    }
  }

  v4 = self->_technique;
  if (v4)
  {
    CFRelease(v4);
    self->_technique = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  passes = self->_passes;
  v6 = [(NSArray *)passes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(passes);
        }

        [*(*(&v11 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSArray *)passes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SCNTechnique;
  [(SCNTechnique *)&v10 dealloc];
}

+ (SCNTechnique)techniqueWithDictionary:(NSDictionary *)dictionary
{
  if (dictionary && [(NSDictionary *)dictionary count])
  {
    v4 = C3DFXTechniqueCreateWithDescription(dictionary, 0);
    v5 = [[SCNTechnique alloc] initWithTechniqueRef:v4];
    CFRelease(v4);
    return v5;
  }

  else
  {
    NSLog(&cfstr_FailedToLoadTe.isa, a2, dictionary);
    return 0;
  }
}

+ (SCNTechnique)techniqueBySequencingTechniques:(NSArray *)techniques
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](techniques, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(NSArray *)techniques countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(techniques);
        }

        [v4 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v8++), "techniqueRef")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)techniques countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  result = C3DFXTechniqueCreateBySequencingTechniques(v4, 0);
  if (result)
  {
    v10 = result;
    v11 = [[SCNTechnique alloc] initWithTechniqueRef:result];
    CFRelease(v10);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(NSArray *)techniques countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(techniques);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          os_unfair_lock_lock((v16 + 32));
          v17 = *(v16 + 24);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __48__SCNTechnique_techniqueBySequencingTechniques___block_invoke;
          v18[3] = &unk_2782FC900;
          v18[4] = v11;
          [v17 enumerateKeysAndObjectsUsingBlock:v18];
          os_unfair_lock_unlock((v16 + 32));
          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSArray *)techniques countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }

    return v11;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [SCNTechnique techniqueWithDictionary:[(SCNTechnique *)self dictionaryRepresentation]];

  return v3;
}

- (void)setValue:(id)value forSymbolNamed:(id)named
{
  if ((*(self + 8) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_valueForSymbolLock);
    valueForSymbol = self->_valueForSymbol;
    if (valueForSymbol)
    {
      if (value)
      {
LABEL_4:
        [(NSMutableDictionary *)valueForSymbol setObject:value forKey:named];
LABEL_9:
        os_unfair_lock_unlock(&self->_valueForSymbolLock);
        sceneRef = [(SCNTechnique *)self sceneRef];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __40__SCNTechnique_setValue_forSymbolNamed___block_invoke;
        v10[3] = &unk_2782FC928;
        v10[4] = self;
        v10[5] = named;
        v10[6] = value;
        [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:named applyBlock:v10];
        return;
      }
    }

    else
    {
      valueForSymbol = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_valueForSymbol = valueForSymbol;
      if (value)
      {
        goto LABEL_4;
      }
    }

    [(NSMutableDictionary *)valueForSymbol removeObjectForKey:named];
    goto LABEL_9;
  }

  v8 = scn_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SCNTechnique setValue:v8 forSymbolNamed:?];
  }
}

void __40__SCNTechnique_setValue_forSymbolNamed___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  C3DFXTechniqueGetValueForSymbol(*(a1[4] + 2), a1[5], &v12);
  if (v12)
  {
    if (v12 != 5)
    {
      SCNWriteValueToTypedBytes(a1[6], v13, v12);
      v7 = a1[5];
      v8 = *(a1[4] + 2);
      v9 = v13;
LABEL_8:
      C3DFXTechniqueSetValueForSymbol(v8, v7, v9);
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = a1[6];
      v3 = [v2 contents];
      if (v3)
      {
        v4 = v3;
        v5 = C3DFXSamplerCreate();
        TextureSampler = C3DEffectSlotGetTextureSampler([v2 effectSlot]);
        C3DFXSamplerSetTextureSampler(v5, TextureSampler);
        if ([v4 conformsToProtocol:&unk_282E56760])
        {
          C3DFXSamplerSetTexture(v5, v4);
        }

        else
        {
          C3DFXSamplerSetImage(v5, [SCNMaterialProperty copyC3DImageFromImage:v4]);
        }

        goto LABEL_13;
      }

      v7 = a1[5];
      v8 = *(a1[4] + 2);
      v9 = 0;
      goto LABEL_8;
    }

    v10 = [SCNMaterialProperty copyC3DImageFromImage:a1[6]];
    if (v10)
    {
      v5 = v10;
LABEL_13:
      C3DFXTechniqueSetValueForSymbol(*(a1[4] + 2), a1[5], v5);
      CFRelease(v5);
    }
  }

LABEL_14:
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", [a1[4] sceneRef], 0, 1u);
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 8))
  {
    +[SCNTransaction lock];
    v13 = 0;
    ValueForSymbol = C3DFXTechniqueGetValueForSymbol(self->_technique, key, &v13);
    v12 = SCNNSValueFromTypedBytes(ValueForSymbol, v13, v8, v9, v10, v11);
    +[SCNTransaction unlock];
    return v12;
  }

  else
  {
    os_unfair_lock_lock(&self->_valueForSymbolLock);
    v5 = [(NSMutableDictionary *)self->_valueForSymbol valueForKey:key];
    os_unfair_lock_unlock(&self->_valueForSymbolLock);

    return v5;
  }
}

- (void)setLibrary:(id)library
{
  v5 = self->_library;
  if (v5 != library)
  {
    v9[10] = v3;
    v9[11] = v4;

    self->_library = library;
    sceneRef = [(SCNTechnique *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNTechnique_setLibrary___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = self;
    v9[5] = library;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
  }
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNTechnique *)self __CFObject];

  return C3DGetScene(__CFObject);
}

- (id)scene
{
  result = [(SCNTechnique *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNTechnique *)self sceneRef];
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
    __CFObject = [(SCNTechnique *)self __CFObject];
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
    sceneRef = [(SCNTechnique *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SCNTechnique_addAnimationPlayer_forKey___block_invoke;
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
      [SCNTechnique addAnimationPlayer:v9 forKey:?];
    }
  }
}

void __42__SCNTechnique_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
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
    [(SCNTechnique *)self addAnimationPlayer:v7 forKey:keyCopy];

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
  sceneRef = [(SCNTechnique *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SCNTechnique_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNTechnique *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SCNTechnique_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    sceneRef = [(SCNTechnique *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__SCNTechnique_removeAnimationForKey___block_invoke;
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
    sceneRef = [(SCNTechnique *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SCNTechnique_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CFTypeIsC3DEntity(cfObject)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. sync animations: cftype is not an entity", &v1, 0xCu);
}

- (id)animationForKey:(id)key
{
  v3 = [(SCNTechnique *)self _scnAnimationForKey:key];
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
        [(SCNTechnique *)self addAnimationPlayer:v11 forKey:v10];
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
  __CFObject = [(SCNTechnique *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNTechnique *)self animationManager];
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
  sceneRef = [(SCNTechnique *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCNTechnique_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNTechnique *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNTechnique_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNTechnique *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__SCNTechnique_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
}

void __41__SCNTechnique_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  sceneRef = [(SCNTechnique *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNTechnique *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNTechnique *)self animationManager];
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

    sceneRef = [(SCNTechnique *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__SCNTechnique_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
  }
}

void __64__SCNTechnique_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  sceneRef = [(SCNTechnique *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCNTechnique_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __37__SCNTechnique_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  sceneRef = [(SCNTechnique *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNTechnique_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __33__SCNTechnique_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (id)presentationInstance
{
  if ((*(self + 8) & 1) == 0)
  {
    v2 = [[SCNTechnique alloc] initPresentationTechniqueWithTechniqueRef:*(self + 2)];

    return v2;
  }

  return self;
}

+ (SCNTechnique)techniqueWithTechniqueRef:(__C3DFXTechnique *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithTechniqueRef:ref];

    return v6;
  }

  return result;
}

- (void)_setupPasses
{
  self->_passes = objc_alloc_init(MEMORY[0x277CBEB18]);
  PassCount = C3DFXTechniqueGetPassCount(self->_technique);
  if (PassCount >= 1)
  {
    v4 = PassCount;
    for (i = 0; i != v4; ++i)
    {
      v6 = [[SCNPass alloc] initWithFXPass:C3DFXTechniqueGetPassAtIndex(self->_technique technique:i), self];
      [(NSArray *)self->_passes addObject:v6];
    }
  }
}

- (id)passAtIndex:(unint64_t)index
{
  passes = self->_passes;
  if (!passes)
  {
    [(SCNTechnique *)self _setupPasses];
    passes = self->_passes;
  }

  if ([(NSArray *)passes count]<= index)
  {
    return 0;
  }

  v6 = self->_passes;

  return [(NSArray *)v6 objectAtIndexedSubscript:index];
}

- (void)_customEncodingOfSCNTechnique:(id)technique
{
  [technique encodeObject:-[SCNTechnique dictionaryRepresentation](self forKey:{"dictionaryRepresentation"), @"description"}];
  os_unfair_lock_lock(&self->_valueForSymbolLock);
  [technique encodeObject:self->_valueForSymbol forKey:@"valueForSymbol"];

  os_unfair_lock_unlock(&self->_valueForSymbolLock);
}

- (void)_customDecodingOfSCNTechnique:(id)technique
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [technique decodeObjectOfClasses:SCNPlistClasses() forKey:@"description"];
  if (v5)
  {
    v6 = C3DFXTechniqueCreateWithDescription(v5, 0);
    self->_technique = v6;
    if (v6)
    {
      C3DEntitySetObjCWrapper(v6, self);
    }
  }

  v7 = [technique decodeObjectOfClasses:SCNPlistClasses() forKey:@"valueForSymbol"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        -[SCNTechnique setValue:forSymbolNamed:](self, "setValue:forSymbolNamed:", [v7 objectForKey:*(*(&v12 + 1) + 8 * v11)], *(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)encodeWithCoder:(id)coder
{
  [(SCNTechnique *)self _customEncodingOfSCNTechnique:?];

  SCNEncodeAnimations(coder, self);
}

- (SCNTechnique)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNTechnique;
  v4 = [(SCNTechnique *)&v7 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v4->_valueForSymbolLock._os_unfair_lock_opaque = 0;
    [(SCNTechnique *)v4 _customDecodingOfSCNTechnique:coder];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeAnimations(coder, v4);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setValue:(uint64_t)a1 forSymbolNamed:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "[SCNTechnique setValue:forSymbolNamed:]";
  v4 = 1024;
  v5 = 161;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", &v2, 0x1Cu);
}

- (void)__removeAnimation:(os_log_t)log forKey:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CFTypeIsC3DEntity(cfObject)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. __removeAnimationForKey: cftype is not an entity", &v1, 0xCu);
}

- (void)addAnimationPlayer:(uint64_t)a1 forKey:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: attempt to add a null animation player on %@", &v2, 0xCu);
}

- (void)addAnimation:(uint64_t)a1 forKey:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: attempt to add a null animation on %@", &v2, 0xCu);
}

@end