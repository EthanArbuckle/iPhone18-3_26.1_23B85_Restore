@interface SCNMorpher
+ (Class)SCNUID_classForElementOfArray:(id)a3;
+ (SCNMorpher)morpherWithMorphRef:(__C3DMorph *)a3;
+ (id)morpher;
+ (id)weightIndexStringForIndex:(int64_t)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)_validateTargetsAndInBetweens:(void *)a3 inBetweenCounts:(void *)a4 inBetweenWeights:;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (CGFloat)weightForTargetAtIndex:(NSUInteger)targetIndex;
- (CGFloat)weightForTargetNamed:(NSString *)targetName;
- (NSArray)animationKeys;
- (NSArray)targets;
- (NSArray)weights;
- (SCNMorpher)init;
- (SCNMorpher)initWithCoder:(id)a3;
- (SCNMorpher)initWithMorphRef:(__C3DMorph *)a3;
- (SCNMorpherCalculationMode)calculationMode;
- (__C3DAnimationManager)animationManager;
- (__C3DScene)sceneRef;
- (double)_presentationWeightForTargetAtIndex:(unint64_t)a3 token:(const void *)a4;
- (float)weightIncrementalThreshold;
- (id)_scnAnimationForKey:(id)a3;
- (id)_sortTargetsAndInBetweens:(void *)a3 inBetweenCounts:(void *)a4 inBetweenWeights:;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)a3;
- (id)correctives;
- (id)identifier;
- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)a3;
- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)a3;
- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)a3;
- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)a3;
- (id)initPresentationMorpherWithMorphRef:(__C3DMorph *)a3;
- (id)name;
- (id)presentationMorpher;
- (id)scene;
- (id)targetsAndInBetween;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)_weightIndexForTargetNamed:(id)a3;
- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)a3;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customDecodingOfSCNMorpher:(id)a3;
- (void)_customEncodingOfSCNMorpher:(id)a3;
- (void)_didDecodeSCNMorpher:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateCorrectivesAndInBetween:(id)a3;
- (void)_updateTargetsAndInBetween:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)clearCorrectives;
- (void)clearInBetweens;
- (void)convertToAdditiveWithBaseGeometry:(id)a3;
- (void)convertToSparseWithBaseGeometry:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setCalculationMode:(SCNMorpherCalculationMode)calculationMode;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setTargets:(NSArray *)targets;
- (void)setTargetsAndInBetweens:(id)a3 inBetweenCounts:(id)a4 inBetweenWeights:(id)a5 correctives:(id)a6 driverCounts:(id)a7 driverIndices:(id)a8 inBetweenCounts:(id)a9 inBetweenWeights:(id)a10;
- (void)setUnifiesNormals:(BOOL)unifiesNormals;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setWeight:(CGFloat)weight forTargetAtIndex:(NSUInteger)targetIndex;
- (void)setWeight:(CGFloat)weight forTargetNamed:(NSString *)targetName;
- (void)setWeightIncrementalThreshold:(float)a3;
- (void)setWeights:(NSArray *)weights;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNMorpher

- (SCNMorpher)init
{
  v5.receiver = self;
  v5.super_class = SCNMorpher;
  v2 = [(SCNMorpher *)&v5 init];
  if (v2)
  {
    v3 = C3DMorphCreate();
    v2->_morpher = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMorpher *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNMorpher)initWithMorphRef:(__C3DMorph *)a3
{
  v7.receiver = self;
  v7.super_class = SCNMorpher;
  v4 = [(SCNMorpher *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_morpher = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMorpher *)v4 _syncObjCModel];
    [(SCNMorpher *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationMorpherWithMorphRef:(__C3DMorph *)a3
{
  v7.receiver = self;
  v7.super_class = SCNMorpher;
  v4 = [(SCNMorpher *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) |= 1u;
    v4->_morpher = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNMorpher)morpherWithMorphRef:(__C3DMorph *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithMorphRef:a3];

    return v6;
  }

  return result;
}

+ (id)morpher
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)clearInBetweens
{
  self->_mainTargetsAndInBetweens = 0;
  self->_inBetweenCounts = 0;
  self->_inBetweenInfluenceWeights = 0;
}

- (void)clearCorrectives
{
  self->_correctiveInBetweenInfluenceWeights = 0;
  *&self->_correctiveDriverIndices = 0u;
  *&self->_correctivesAndInBetweens = 0u;
}

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    if ((*(self + 16) & 1) == 0)
    {
      C3DEntitySetObjCWrapper(morpher, 0);
      morpher = self->_morpher;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __21__SCNMorpher_dealloc__block_invoke;
    v5[3] = &__block_descriptor_40_e8_v16__0d8l;
    v5[4] = morpher;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v5];
  }

  [(SCNMorpher *)self clearInBetweens];
  [(SCNMorpher *)self clearCorrectives];

  free(self->_weights);
  v4.receiver = self;
  v4.super_class = SCNMorpher;
  [(SCNMorpher *)&v4 dealloc];
}

- (void)setName:(id)a3
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNMorpher setName:];
    }
  }

  else if (a3 | self->_name)
  {
    if (([a3 isEqual:?] & 1) == 0)
    {

      self->_name = [a3 copy];
      v5 = [(SCNMorpher *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __22__SCNMorpher_setName___block_invoke;
      v7[3] = &unk_2782FC950;
      v7[4] = self;
      v7[5] = a3;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
    }
  }
}

CFStringRef __22__SCNMorpher_setName___block_invoke(uint64_t a1)
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

  v4 = [(SCNMorpher *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  Name = C3DEntityGetName([(SCNMorpher *)self __CFObject]);
  if (v5)
  {
    C3DSceneUnlock(v5);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNMorpher *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNMorpher *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNMorpher *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNMorpher *)self sceneRef];
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
    v8 = [(SCNMorpher *)self __CFObject];
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
    v8 = [(SCNMorpher *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SCNMorpher_addAnimationPlayer_forKey___block_invoke;
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

void __40__SCNMorpher_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 32);

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
    [(SCNMorpher *)self addAnimationPlayer:v7 forKey:v5];

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
  v3 = [(SCNMorpher *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SCNMorpher_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SCNMorpher_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    v5 = [(SCNMorpher *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SCNMorpher_removeAnimationForKey___block_invoke;
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
    v7 = [(SCNMorpher *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SCNMorpher_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = [(SCNMorpher *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMorpher *)self __CFObject];
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
  v3 = [(SCNMorpher *)self _scnAnimationForKey:a3];
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
        [(SCNMorpher *)self addAnimationPlayer:v11 forKey:v10];
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
  v9 = [(SCNMorpher *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNMorpher *)self animationManager];
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
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNMorpher_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNMorpher_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNMorpher *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SCNMorpher_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __39__SCNMorpher_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  v5 = [(SCNMorpher *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNMorpher *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNMorpher *)self animationManager];
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

    v15 = [(SCNMorpher *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__SCNMorpher_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __62__SCNMorpher_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SCNMorpher_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __35__SCNMorpher_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNMorpher *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SCNMorpher_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __31__SCNMorpher_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)_syncObjCModel
{
  v3 = [(SCNMorpher *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  morpher = self->_morpher;
  if (!morpher)
  {
    goto LABEL_32;
  }

  self->_unifyNormal = C3DMorphGetMorphNormals(self->_morpher) ^ 1;
  self->_useSparseTargets = C3DMorphIsUsingSparseTargets(morpher);
  v6 = C3DMorphCopyMainTargets(morpher);
  if (v6)
  {
    v7 = v6;

    [(SCNMorpher *)self clearInBetweens];
    [(SCNMorpher *)self clearCorrectives];
    self->_mainTargets = _createSCNGeometryArrayFromC3DGeometryArray(v7);
    Count = CFArrayGetCount(v7);
    v9 = Count < 1;
    if (Count >= 1)
    {
      v10 = Count;
      self->_weightCount = Count;
      v11 = 0;
      self->_weights = malloc_type_realloc(self->_weights, 4 * Count, 0x100004052888210uLL);
      do
      {
        self->_weights[v11] = C3DMorphGetWeightAtIndex(morpher, v11);
        ++v11;
      }

      while (v10 != v11);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 1;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  C3DMorpherGetExtraTargetInfo(morpher, &v32);
  v12 = DWORD1(v32);
  if (DWORD1(v32))
  {
    v13 = (v32 + DWORD1(v32));
    OverrideMaterial = C3DGeometryGetOverrideMaterial(morpher);
    self->_mainTargetsAndInBetweens = _createSCNGeometrySubArrayFromC3DGeometryArray(OverrideMaterial, 0, v13);
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_inBetweenCounts = [v15 initWithCapacity:v32];
    if (v32)
    {
      v16 = 0;
      do
      {
        -[NSArray addObject:](self->_inBetweenCounts, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(&v32 + 1) + 4 * v16++)]);
      }

      while (v16 < v32);
    }

    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_inBetweenInfluenceWeights = [v17 initWithCapacity:DWORD1(v32)];
    v12 = DWORD1(v32);
    if (DWORD1(v32))
    {
      v19 = 0;
      do
      {
        LODWORD(v18) = *(v33 + 4 * v19);
        -[NSArray addObject:](self->_inBetweenInfluenceWeights, "addObject:", [MEMORY[0x277CCABB0] numberWithFloat:v18]);
        ++v19;
        v12 = DWORD1(v32);
      }

      while (v19 < DWORD1(v32));
    }
  }

  if (DWORD2(v33))
  {
    v20 = (v12 + v32);
    v21 = (DWORD2(v35) + DWORD2(v33));
    v22 = C3DGeometryGetOverrideMaterial(morpher);
    self->_correctivesAndInBetweens = _createSCNGeometrySubArrayFromC3DGeometryArray(v22, v20, v21);
    v23 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_correctiveDriverCounts = [v23 initWithCapacity:DWORD2(v33)];
    if (DWORD2(v33))
    {
      v24 = 0;
      do
      {
        -[NSArray addObject:](self->_correctiveDriverCounts, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v34 + 4 * v24++)]);
      }

      while (v24 < DWORD2(v33));
    }

    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    self->_correctiveDriverIndices = [v25 initWithCapacity:DWORD2(v34)];
    if (DWORD2(v34))
    {
      v26 = 0;
      do
      {
        -[NSArray addObject:](self->_correctiveDriverIndices, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v35 + 4 * v26++)]);
      }

      while (v26 < DWORD2(v34));
    }

    if (DWORD2(v35))
    {
      v27 = objc_alloc(MEMORY[0x277CBEB18]);
      self->_correctiveInBetweenCounts = [v27 initWithCapacity:DWORD2(v33)];
      if (DWORD2(v33))
      {
        v28 = 0;
        do
        {
          -[NSArray addObject:](self->_correctiveInBetweenCounts, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v36 + 4 * v28++)]);
        }

        while (v28 < DWORD2(v33));
      }

      v29 = objc_alloc(MEMORY[0x277CBEB18]);
      self->_correctiveInBetweenInfluenceWeights = [v29 initWithCapacity:DWORD2(v35)];
      if (DWORD2(v35))
      {
        v31 = 0;
        do
        {
          LODWORD(v30) = *(*(&v36 + 1) + 4 * v31);
          -[NSArray addObject:](self->_correctiveInBetweenInfluenceWeights, "addObject:", [MEMORY[0x277CCABB0] numberWithFloat:v30]);
          ++v31;
        }

        while (v31 < DWORD2(v35));
      }
    }
  }

  self->_calculationMode = C3DMorphGetCalculationMode(morpher) == 1;
  if (v9)
  {
LABEL_32:
    free(self->_weights);
    self->_weightCount = 0;
  }

  [(SCNMorpher *)self _syncEntityObjCModel];
  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)presentationMorpher
{
  if ((*(self + 16) & 1) == 0)
  {
    v2 = [[SCNMorpher alloc] initPresentationMorpherWithMorphRef:*(self + 1)];

    return v2;
  }

  return self;
}

- (void)setTargets:(NSArray *)targets
{
  [(SCNMorpher *)self clearInBetweens];
  [(SCNMorpher *)self clearCorrectives];

  self->_mainTargets = [(NSArray *)targets copy];
  self->_mainTargetNamesToIndexes = 0;
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__SCNMorpher_setTargets___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = targets;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __25__SCNMorpher_setTargets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) morphRef];
  if (v2)
  {
    v3 = v2;
    C3DGeometryArrayFromSCNGeometryArray = _createC3DGeometryArrayFromSCNGeometryArray(*(a1 + 40));
    C3DMorphSetTargets(v3, C3DGeometryArrayFromSCNGeometryArray, *(*(a1 + 32) + 161));
  }
}

- (NSArray)targets
{
  if ((*(self + 16) & 1) == 0)
  {
    if ([(NSArray *)self->_mainTargets count])
    {
      return self->_mainTargets;
    }

    else
    {
      return MEMORY[0x277CBEBF8];
    }
  }

  v4 = [(SCNMorpher *)self sceneRef];
  v5 = v4;
  if (v4)
  {
    C3DSceneLock(v4);
  }

  morpher = self->_morpher;
  if (!morpher || (v7 = C3DMorphCopyMainTargets(morpher)) == 0)
  {
    SCNGeometryArrayFromC3DGeometryArray = 0;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = v7;
  SCNGeometryArrayFromC3DGeometryArray = _createSCNGeometryArrayFromC3DGeometryArray(v7);
  CFRelease(v8);
  if (v5)
  {
LABEL_11:
    C3DSceneUnlock(v5);
  }

LABEL_12:
  result = SCNGeometryArrayFromC3DGeometryArray;
  if (!result)
  {
    return MEMORY[0x277CBEBF8];
  }

  return result;
}

- (NSArray)weights
{
  if (*(self + 16))
  {
    v10 = [(SCNMorpher *)self sceneRef];
    v11 = v10;
    if (v10)
    {
      C3DSceneLock(v10);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      WeightCount = C3DMorphGetWeightCount(self->_morpher);
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:WeightCount];
      if (WeightCount >= 1)
      {
        for (i = 0; i != WeightCount; ++i)
        {
          *&v16 = C3DMorphGetWeightAtIndex(morpher, i);
          -[NSArray addObject:](v14, "addObject:", [MEMORY[0x277CCABB0] numberWithFloat:v16]);
        }
      }

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
LABEL_17:
        if (v14)
        {
          return v14;
        }

        else
        {
          return MEMORY[0x277CBEBF8];
        }
      }
    }

    C3DSceneUnlock(v11);
    goto LABEL_17;
  }

  v3 = [(NSArray *)self->_mainTargets count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_weightCount];
  v6 = self->_weightCount;
  if (v6)
  {
    for (j = 0; j < v6; ++j)
    {
      *&v5 = self->_weights[j];
      -[NSArray addObject:](v4, "addObject:", [MEMORY[0x277CCABB0] numberWithFloat:v5]);
      v6 = self->_weightCount;
    }
  }

  v8 = v3 > v6;
  v9 = v3 - v6;
  if (v8)
  {
    do
    {
      [(NSArray *)v4 addObject:&unk_282E0FD10];
      --v9;
    }

    while (v9);
  }

  return v4;
}

- (void)setWeights:(NSArray *)weights
{
  v5 = [(NSArray *)weights count];
  self->_weightCount = v5;
  v6 = self->_weights;
  if (v5)
  {
    self->_weights = malloc_type_realloc(v6, 4 * v5, 0x100004052888210uLL);
    if (self->_weightCount)
    {
      v7 = 0;
      do
      {
        [-[NSArray objectAtIndexedSubscript:](weights objectAtIndexedSubscript:{v7), "floatValue"}];
        weightCount = self->_weightCount;
        self->_weights[v7++] = v9;
      }

      while (v7 < weightCount);
    }
  }

  else
  {
    free(v6);
    self->_weights = 0;
  }

  v10 = [(SCNMorpher *)self sceneRef];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __25__SCNMorpher_setWeights___block_invoke;
  v11[3] = &unk_2782FC950;
  v11[4] = self;
  v11[5] = weights;
  [SCNTransaction postCommandWithContext:v10 object:self applyBlock:v11];
}

void __25__SCNMorpher_setWeights___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) morphRef];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) count];
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{i), "floatValue"}];
        C3DMorphSetWeightAtIndex(v3, i, v7);
      }
    }
  }
}

- (int64_t)_weightIndexForTargetNamed:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  mainTargetNamesToIndexes = self->_mainTargetNamesToIndexes;
  if (!mainTargetNamesToIndexes)
  {
    v15 = a3;
    v5 = [(SCNMorpher *)self targets];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 name])
          {
            [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInteger:", v9++), objc_msgSend(v12, "name")}];
          }
        }

        v8 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    mainTargetNamesToIndexes = [v6 copy];
    self->_mainTargetNamesToIndexes = mainTargetNamesToIndexes;
    a3 = v15;
  }

  v13 = [(NSDictionary *)mainTargetNamesToIndexes objectForKeyedSubscript:a3];
  if (v13)
  {
    return [v13 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setWeight:(CGFloat)weight forTargetNamed:(NSString *)targetName
{
  v6 = [(SCNMorpher *)self _weightIndexForTargetNamed:targetName];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SCNMorpher *)self setWeight:v6 forTargetAtIndex:weight];
  }
}

- (CGFloat)weightForTargetNamed:(NSString *)targetName
{
  v4 = [(SCNMorpher *)self _weightIndexForTargetNamed:targetName];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  [(SCNMorpher *)self weightForTargetAtIndex:v4];
  return result;
}

+ (id)weightIndexStringForIndex:(int64_t)a3
{
  if (weightIndexStringForIndex__onceToken != -1)
  {
    +[SCNMorpher weightIndexStringForIndex:];
  }

  if (a3 > 127)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"weights[%d]", a3];
  }

  else
  {
    return weightIndexStringForIndex__s_strings[a3];
  }
}

uint64_t __40__SCNMorpher_weightIndexStringForIndex___block_invoke()
{
  for (i = 0; i != 128; ++i)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"weights[%d]", i];
    weightIndexStringForIndex__s_strings[i] = result;
  }

  return result;
}

- (void)setWeight:(CGFloat)weight forTargetAtIndex:(NSUInteger)targetIndex
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(self + 16))
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCNMorpher setWeight:forTargetAtIndex:];
    }
  }

  else
  {
    v7 = [(NSArray *)self->_mainTargets count];
    if (v7 <= targetIndex)
    {
      v14 = v7;
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = self;
        v19 = 1024;
        v20 = targetIndex;
        v21 = 1024;
        v22 = v14;
        _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: %@ setWeight:forTargetAtIndex:%d - index out of bounds (%d)", buf, 0x18u);
      }
    }

    else
    {
      if (self->_weightCount <= targetIndex)
      {
        v8 = malloc_type_realloc(self->_weights, 4 * (targetIndex + 1), 0x100004052888210uLL);
        self->_weights = v8;
        bzero(&v8[self->_weightCount], 4 * (targetIndex + 1 - self->_weightCount));
        self->_weightCount = targetIndex + 1;
      }

      weights = self->_weights;
      if (weights[targetIndex] != weight)
      {
        v10 = weight;
        weights[targetIndex] = v10;
        v11 = [SCNMorpher weightIndexStringForIndex:targetIndex];
        v12 = [(SCNMorpher *)self sceneRef];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __41__SCNMorpher_setWeight_forTargetAtIndex___block_invoke;
        v16[3] = &unk_2782FE238;
        v16[4] = self;
        v16[5] = targetIndex;
        *&v16[6] = weight;
        [SCNTransaction postCommandWithContext:v12 object:self key:@"weights" subscriptIndex:targetIndex derivedKeyPath:v11 applyBlock:v16];
      }
    }
  }
}

void __41__SCNMorpher_setWeight_forTargetAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) morphRef];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    C3DMorphSetWeightAtIndex(v2, v3, v4);
  }
}

- (CGFloat)weightForTargetAtIndex:(NSUInteger)targetIndex
{
  if (*(self + 16))
  {
    v6 = [(SCNMorpher *)self sceneRef];
    v7 = v6;
    if (v6)
    {
      C3DSceneLock(v6);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      WeightAtIndex = C3DMorphGetWeightAtIndex(morpher, targetIndex);
      if (!v7)
      {
        return WeightAtIndex;
      }
    }

    else
    {
      WeightAtIndex = 0.0;
      if (!v7)
      {
        return WeightAtIndex;
      }
    }

    C3DSceneUnlock(v7);
    return WeightAtIndex;
  }

  WeightAtIndex = 0.0;
  if (self->_weightCount > targetIndex)
  {
    return self->_weights[targetIndex];
  }

  return WeightAtIndex;
}

- (double)_presentationWeightForTargetAtIndex:(unint64_t)a3 token:(const void *)a4
{
  if (*a4 != [(SCNMorpher *)self sceneRef])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNMorpher *)v6 _presentationWeightForTargetAtIndex:v7 token:v8, v9, v10, v11, v12, v13];
    }
  }

  morpher = self->_morpher;
  if (morpher)
  {
    return C3DMorphGetWeightAtIndex(morpher, a3);
  }

  else
  {
    return 0.0;
  }
}

- (id)targetsAndInBetween
{
  result = self->_mainTargetsAndInBetweens;
  if (!result)
  {
    return self->_mainTargets;
  }

  return result;
}

- (id)correctives
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(NSArray *)self->_correctivesAndInBetweens count])
  {
    return 0;
  }

  if (![(NSArray *)self->_correctiveInBetweenCounts count])
  {
    return self->_correctivesAndInBetweens;
  }

  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_correctiveDriverCounts, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
  v5 = [(NSArray *)correctiveInBetweenCounts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(correctiveInBetweenCounts);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
        [v3 addObject:{-[NSArray objectAtIndexedSubscript:](self->_correctivesAndInBetweens, "objectAtIndexedSubscript:", v7 - 1)}];
      }

      v6 = [(NSArray *)correctiveInBetweenCounts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateTargetsAndInBetween:(id)a3
{
  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  v6 = [(NSArray *)mainTargetsAndInBetweens count];
  if (v6 != [a3 count])
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMorpher *)v7 _updateTargetsAndInBetween:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  [(SCNMorpher *)self setTargetsAndInBetweens:a3 inBetweenCounts:self->_inBetweenCounts inBetweenWeights:self->_inBetweenInfluenceWeights correctives:self->_correctivesAndInBetweens driverCounts:self->_correctiveDriverCounts driverIndices:self->_correctiveDriverIndices inBetweenCounts:self->_correctiveInBetweenCounts inBetweenWeights:self->_correctiveInBetweenInfluenceWeights];
}

- (void)_updateCorrectivesAndInBetween:(id)a3
{
  v5 = [(NSArray *)self->_correctivesAndInBetweens count];
  if (v5 != [a3 count])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNMorpher *)v6 _updateCorrectivesAndInBetween:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  [(SCNMorpher *)self setTargetsAndInBetweens:mainTargetsAndInBetweens inBetweenCounts:self->_inBetweenCounts inBetweenWeights:self->_inBetweenInfluenceWeights correctives:a3 driverCounts:self->_correctiveDriverCounts driverIndices:self->_correctiveDriverIndices inBetweenCounts:self->_correctiveInBetweenCounts inBetweenWeights:self->_correctiveInBetweenInfluenceWeights];
}

- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_inBetweenCounts count])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndexedSubscript:](self->_inBetweenCounts objectAtIndexedSubscript:{a3), "unsignedIntegerValue"}];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    return 0;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    do
    {
      v7 += [-[NSArray objectAtIndexedSubscript:](self->_inBetweenCounts objectAtIndexedSubscript:{v8++), "unsignedIntegerValue"}];
    }

    while (a3 != v8);
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;

  return [(NSArray *)mainTargetsAndInBetweens subarrayWithRange:v7, v6];
}

- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_inBetweenCounts count])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndexedSubscript:](self->_inBetweenCounts objectAtIndexedSubscript:{a3), "unsignedIntegerValue"}];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    return 0;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    do
    {
      v7 = v7 + [-[NSArray objectAtIndexedSubscript:](self->_inBetweenCounts objectAtIndexedSubscript:{v8++), "unsignedIntegerValue"}] - 1;
    }

    while (a3 != v8);
  }

  inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;

  return [(NSArray *)inBetweenInfluenceWeights subarrayWithRange:v7, v6];
}

- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_correctiveDriverCounts count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(NSArray *)self->_correctiveDriverCounts objectAtIndexedSubscript:a3];

  return [v5 unsignedIntegerValue];
}

- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_correctiveDriverCounts count])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndexedSubscript:](self->_correctiveDriverCounts objectAtIndexedSubscript:{a3), "unsignedIntegerValue"}];
  if (![(NSArray *)self->_correctiveDriverIndices count])
  {
    return 0;
  }

  v6 = 0;
  if (a3)
  {
    v7 = 0;
    do
    {
      v6 += [-[NSArray objectAtIndexedSubscript:](self->_correctiveDriverCounts objectAtIndexedSubscript:{v7++), "unsignedIntegerValue"}];
    }

    while (a3 != v7);
  }

  correctiveDriverIndices = self->_correctiveDriverIndices;

  return [(NSArray *)correctiveDriverIndices subarrayWithRange:v6, v5];
}

- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_correctiveInBetweenCounts count])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndexedSubscript:](self->_correctiveInBetweenCounts objectAtIndexedSubscript:{a3), "unsignedIntegerValue"}];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    return 0;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    do
    {
      v7 += [-[NSArray objectAtIndexedSubscript:](self->_correctiveInBetweenCounts objectAtIndexedSubscript:{v8++), "unsignedIntegerValue"}];
    }

    while (a3 != v8);
  }

  correctivesAndInBetweens = self->_correctivesAndInBetweens;

  return [(NSArray *)correctivesAndInBetweens subarrayWithRange:v7, v6];
}

- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)a3
{
  if (![(NSArray *)self->_correctiveInBetweenCounts count])
  {
    return 0;
  }

  v5 = [-[NSArray objectAtIndexedSubscript:](self->_correctiveInBetweenCounts objectAtIndexedSubscript:{a3), "unsignedIntegerValue"}];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    return 0;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    do
    {
      v7 = v7 + [-[NSArray objectAtIndexedSubscript:](self->_correctiveInBetweenCounts objectAtIndexedSubscript:{v8++), "unsignedIntegerValue"}] - 1;
    }

    while (a3 != v8);
  }

  correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;

  return [(NSArray *)correctiveInBetweenInfluenceWeights subarrayWithRange:v7, v6];
}

- (void)setTargetsAndInBetweens:(id)a3 inBetweenCounts:(id)a4 inBetweenWeights:(id)a5 correctives:(id)a6 driverCounts:(id)a7 driverIndices:(id)a8 inBetweenCounts:(id)a9 inBetweenWeights:(id)a10
{
  v17 = a9;
  v71 = *MEMORY[0x277D85DE8];
  v66 = a4;
  v67 = a3;
  v64 = a6;
  v65 = a5;
  v18 = [a4 count];
  v19 = [a6 count];
  v20 = v19;
  if (v19)
  {
    v55 = a8;
    v54 = v19 != 0;
    v21 = [v17 count] != 0;
    if (!v18)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  if (v18)
  {
    v55 = a8;
    v54 = v19 != 0;
    v21 = 0;
LABEL_29:
    if ([(SCNMorpher *)self _validateTargetsAndInBetweens:a3 inBetweenCounts:a4 inBetweenWeights:a5])
    {
      v50 = v20;
      v52 = a7;
      [(SCNMorpher *)self _sortTargetsAndInBetweens:&v66 inBetweenCounts:&v65 inBetweenWeights:?];
      v51 = v21;
      if (v21)
      {
        [(SCNMorpher *)self _sortTargetsAndInBetweens:&a9 inBetweenCounts:&a10 inBetweenWeights:?];
      }

      v40 = objc_alloc(MEMORY[0x277CBEB18]);
      v41 = v66;
      v42 = [v40 initWithCapacity:{-[NSArray count](v66, "count")}];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v60 objects:v70 count:16];
      v23 = v67;
      if (v43)
      {
        v44 = v43;
        v45 = 0;
        v46 = *v61;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v61 != v46)
            {
              objc_enumerationMutation(v41);
            }

            v45 += [*(*(&v60 + 1) + 8 * i) unsignedIntegerValue];
            if (v45 - 1 >= [(NSArray *)v23 count])
            {
              v48 = scn_default_log();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                [SCNMorpher setTargetsAndInBetweens:buf inBetweenCounts:&v69 inBetweenWeights:v48 correctives:? driverCounts:? driverIndices:? inBetweenCounts:? inBetweenWeights:?];
              }
            }

            [(NSArray *)v42 addObject:[(NSArray *)v23 objectAtIndexedSubscript:v45 - 1]];
          }

          v44 = [(NSArray *)v41 countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v44);
      }

      self->_mainTargets = v42;
      mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
      if (mainTargetsAndInBetweens != v23)
      {

        self->_mainTargetsAndInBetweens = [(NSArray *)v23 copy];
      }

      v53 = 1;
      a7 = v52;
      LOBYTE(v21) = v51;
      v20 = v50;
      goto LABEL_7;
    }

    v39 = scn_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21BEF7000, v39, OS_LOG_TYPE_ERROR, "Error: invalid in-between buffer, ignoring in-betweens", buf, 2u);
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_3:
    if (!v21)
    {
LABEL_4:
      mainTargets = self->_mainTargets;
      v23 = v67;
      if (mainTargets != v67)
      {

        self->_mainTargets = [(NSArray *)v23 copy];
      }

      v53 = 0;
      self->_mainTargetsAndInBetweens = 0;
LABEL_7:

      self->_mainTargetNamesToIndexes = 0;
      free(self->_weights);
      self->_weightCount = 0;
      self->_weights = 0;
      inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;
      v25 = v65;
      if (inBetweenInfluenceWeights != v65)
      {

        self->_inBetweenInfluenceWeights = [(NSArray *)v25 copy];
      }

      inBetweenCounts = self->_inBetweenCounts;
      v27 = v66;
      if (inBetweenCounts != v66)
      {

        self->_inBetweenCounts = [(NSArray *)v27 copy];
      }

      correctivesAndInBetweens = self->_correctivesAndInBetweens;
      v29 = v64;
      if (correctivesAndInBetweens != v64)
      {

        self->_correctivesAndInBetweens = [(NSArray *)v29 copy];
      }

      correctiveDriverCounts = self->_correctiveDriverCounts;
      if (correctiveDriverCounts != a7)
      {

        self->_correctiveDriverCounts = [a7 copy];
      }

      correctiveDriverIndices = self->_correctiveDriverIndices;
      if (correctiveDriverIndices != v55)
      {

        self->_correctiveDriverIndices = [(NSArray *)v55 copy];
      }

      v32 = a7;
      correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
      v34 = a9;
      if (correctiveInBetweenCounts != a9)
      {

        self->_correctiveInBetweenCounts = [v34 copy];
      }

      correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;
      v36 = a10;
      if (correctiveInBetweenInfluenceWeights != a10)
      {

        self->_correctiveInBetweenInfluenceWeights = [v36 copy];
      }

      if (v20)
      {
        v23 = [(NSArray *)v23 arrayByAddingObjectsFromArray:v29];
      }

      C3DGeometryArrayFromSCNGeometryArray = _createC3DGeometryArrayFromSCNGeometryArray(v23);
      v38 = [(SCNMorpher *)self sceneRef];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __143__SCNMorpher_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights___block_invoke;
      v56[3] = &unk_2783003A8;
      v57 = v53;
      v56[4] = v27;
      v56[5] = v25;
      v58 = v54;
      v56[6] = v67;
      v56[7] = v32;
      v59 = v21;
      v56[8] = v55;
      v56[9] = v34;
      v56[10] = v36;
      v56[11] = self;
      v56[12] = C3DGeometryArrayFromSCNGeometryArray;
      [SCNTransaction postCommandWithContext:v38 object:self applyBlock:v56];

      return;
    }

LABEL_32:
    [(SCNMorpher *)self _sortTargetsAndInBetweens:&a9 inBetweenCounts:&a10 inBetweenWeights:?];
    goto LABEL_4;
  }

  [(SCNMorpher *)self setTargets:a3];
}

void __143__SCNMorpher_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights___block_invoke(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = [*(a1 + 32) count];
    v3 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
    v31 = v2;
    if (v2)
    {
      v4 = 0;
      do
      {
        v3[v4] = [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{v4), "intValue"}];
        ++v4;
      }

      while (v31 != v4);
    }

    v5 = [*(a1 + 40) count];
    v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    if (v5)
    {
      for (i = 0; i != v5; v6[i++] = v8)
      {
        [objc_msgSend(*(a1 + 40) objectAtIndexedSubscript:{i), "floatValue"}];
      }
    }
  }

  else
  {
    v6 = 0;
    v3 = 0;
    v5 = 0;
    v31 = [*(a1 + 48) count];
  }

  v30 = v5;
  if (*(a1 + 105) == 1)
  {
    v9 = [*(a1 + 56) count];
    v10 = 4 * v9;
    v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        v11[j] = [objc_msgSend(*(a1 + 56) objectAtIndexedSubscript:{j), "intValue"}];
      }
    }

    v28 = v9;
    v13 = [*(a1 + 64) count];
    v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    if (v13)
    {
      for (k = 0; k != v13; ++k)
      {
        v14[k] = [objc_msgSend(*(a1 + 64) objectAtIndexedSubscript:{k), "intValue"}];
      }
    }

    if (*(a1 + 106))
    {
      v16 = malloc_type_malloc(v10, 0x100004052888210uLL);
      if (v28)
      {
        for (m = 0; m != v28; ++m)
        {
          v16[m] = [objc_msgSend(*(a1 + 72) objectAtIndexedSubscript:{m), "intValue"}];
        }
      }

      v18 = [*(a1 + 80) count];
      v19 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
      if (v18)
      {
        v20 = 0;
        v29 = v18;
        do
        {
          [objc_msgSend(*(a1 + 80) objectAtIndexedSubscript:{v20), "floatValue"}];
          v19[v20++] = v21;
        }

        while (v18 != v20);
      }

      else
      {
        v29 = 0;
      }

      v22 = v13;
      v23 = v28;
    }

    else
    {
      v19 = 0;
      v16 = 0;
      v29 = 0;
      v22 = v13;
      v23 = v28;
    }
  }

  else
  {
    v19 = 0;
    v16 = 0;
    v29 = 0;
    v14 = 0;
    v22 = 0;
    v11 = 0;
    v23 = 0;
  }

  v24 = [*(a1 + 88) morphRef];
  v25 = *(a1 + 96);
  v26 = *(*(a1 + 88) + 161);
  v32[0] = __PAIR64__(v30, v31);
  v32[1] = v3;
  v32[2] = v6;
  v33 = v23;
  v34 = 0;
  v35 = v11;
  v36 = v22;
  v37 = 0;
  v38 = v14;
  v39 = v29;
  v40 = 0;
  v41 = v16;
  v42 = v19;
  C3DMorphSetTargetsWithExtraTargetInfo(v24, v25, v26, v32);
  free(v3);
  free(v6);
  free(v11);
  free(v14);
  free(v16);
  free(v19);
  if (v31)
  {
      ;
    }
  }
}

uint64_t __73__SCNMorpher__sortTargetsAndInBetweens_inBetweenCounts_inBetweenWeights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue") + *(a1 + 40)), "floatValue"}];
  v6 = v5;
  [objc_msgSend(*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(a3, "unsignedIntegerValue") + *(a1 + 40)), "floatValue"}];
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (void)setCalculationMode:(SCNMorpherCalculationMode)calculationMode
{
  if (*(self + 16))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNMorpher setCalculationMode:];
    }
  }

  else if (self->_calculationMode != calculationMode)
  {
    self->_calculationMode = calculationMode;
    v5 = [(SCNMorpher *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SCNMorpher_setCalculationMode___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    v7[5] = calculationMode;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v7];
  }
}

uint64_t __33__SCNMorpher_setCalculationMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) morphRef];
  if (result)
  {
    v3 = *(a1 + 40) == 1;

    return C3DMorphSetCalculationMode(result, v3);
  }

  return result;
}

- (SCNMorpherCalculationMode)calculationMode
{
  if (*(self + 16))
  {
    v4 = [(SCNMorpher *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v3 = (C3DMorphGetCalculationMode(morpher) == 1);
      if (!v5)
      {
        return v3;
      }
    }

    else
    {
      v3 = SCNMorpherCalculationModeNormalized;
      if (!v5)
      {
        return v3;
      }
    }

    C3DSceneUnlock(v5);
    return v3;
  }

  return self->_calculationMode;
}

- (void)setUnifiesNormals:(BOOL)unifiesNormals
{
  if (self->_unifyNormal != unifiesNormals)
  {
    v10 = v3;
    v11 = v4;
    self->_unifyNormal = unifiesNormals;
    v7 = [(SCNMorpher *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__SCNMorpher_setUnifiesNormals___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = unifiesNormals;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

uint64_t __32__SCNMorpher_setUnifiesNormals___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) morphRef];
  if (result)
  {
    v3 = (*(a1 + 40) & 1) == 0;

    return C3DMorphSetMorphNormals(result, v3);
  }

  return result;
}

- (float)weightIncrementalThreshold
{
  v3 = [(SCNMorpher *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
    WeightIncrementalThreshold = C3DMorphGetWeightIncrementalThreshold(self->_morpher);
    C3DSceneUnlock(v4);
    return WeightIncrementalThreshold;
  }

  else
  {
    morpher = self->_morpher;

    return C3DMorphGetWeightIncrementalThreshold(morpher);
  }
}

- (void)setWeightIncrementalThreshold:(float)a3
{
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNMorpher_setWeightIncrementalThreshold___block_invoke;
  v6[3] = &unk_2782FF898;
  v6[4] = self;
  v7 = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __44__SCNMorpher_setWeightIncrementalThreshold___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) morphRef];
  v3 = *(a1 + 40);

  C3DMorphSetWeightIncrementalThreshold(v2, v3);
}

- (void)convertToAdditiveWithBaseGeometry:(id)a3
{
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SCNMorpher_convertToAdditiveWithBaseGeometry___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

uint64_t __48__SCNMorpher_convertToAdditiveWithBaseGeometry___block_invoke(uint64_t a1)
{
  result = C3DMorphConvertToCalculationMode([*(a1 + 32) morphRef], objc_msgSend(*(a1 + 40), "geometryRef"), 1, &__block_literal_global_32_0);
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _syncObjCModel];
  }

  return result;
}

- (void)convertToSparseWithBaseGeometry:(id)a3
{
  v5 = [(SCNMorpher *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SCNMorpher_convertToSparseWithBaseGeometry___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

uint64_t __46__SCNMorpher_convertToSparseWithBaseGeometry___block_invoke(uint64_t a1)
{
  result = C3DMorphConvertToSparse([*(a1 + 32) morphRef], objc_msgSend(*(a1 + 40), "geometryRef"), 1, &__block_literal_global_32_0);
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _syncObjCModel];
  }

  return result;
}

- (__C3DScene)sceneRef
{
  v2 = [(SCNMorpher *)self __CFObject];

  return C3DGetScene(v2);
}

- (id)scene
{
  result = [(SCNMorpher *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v4[161] = self->_useSparseTargets;
  if (self->_inBetweenCounts || self->_correctiveDriverCounts)
  {
    mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
    if (!mainTargetsAndInBetweens)
    {
      mainTargetsAndInBetweens = self->_mainTargets;
    }

    [v4 setTargetsAndInBetweens:mainTargetsAndInBetweens inBetweenCounts:self->_correctiveInBetweenCounts inBetweenWeights:self->_correctiveInBetweenInfluenceWeights correctives:? driverCounts:? driverIndices:? inBetweenCounts:? inBetweenWeights:?];
  }

  else
  {
    [v4 setTargets:{-[SCNMorpher targets](self, "targets")}];
  }

  weightCount = self->_weightCount;
  if (weightCount)
  {
    for (i = 0; i != weightCount; ++i)
    {
      [(SCNMorpher *)self weightForTargetAtIndex:i];
      [v4 setWeight:i forTargetAtIndex:?];
    }
  }

  [v4 setCalculationMode:{-[SCNMorpher calculationMode](self, "calculationMode")}];
  [v4 setName:{-[SCNMorpher name](self, "name")}];
  [v4 setIdentifier:{-[SCNMorpher identifier](self, "identifier")}];
  [v4 setUnifiesNormals:{-[SCNMorpher unifiesNormals](self, "unifiesNormals")}];
  [v4 _copyAnimationsFrom:self];
  +[SCNTransaction commitImmediate];
  return v4;
}

- (void)_customDecodingOfSCNMorpher:(id)a3
{
  v4 = C3DMorphCreate();
  self->_morpher = v4;
  if (v4)
  {

    C3DEntitySetObjCWrapper(v4, self);
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 rangeOfString:@"weights["] || (v6 = v5, objc_msgSend(a3, "length") < 2) || (v7 = objc_msgSend(a3, "substringFromIndex:", v6), v8 = objc_msgSend(v7, "rangeOfString:", @"]"), v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12.receiver = self;
    v12.super_class = SCNMorpher;
    return [(SCNMorpher *)&v12 valueForUndefinedKey:a3];
  }

  else
  {
    -[SCNMorpher weightForTargetAtIndex:](self, "weightForTargetAtIndex:", [objc_msgSend(v7 substringToIndex:{v8), "integerValue"}]);
    *&v10 = v10;
    v11 = MEMORY[0x277CCABB0];

    return [v11 numberWithFloat:v10];
  }
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if (*(self + 16))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMorpher setValue:forUndefinedKey:];
    }
  }

  else if ([a4 rangeOfString:@"weights["] || (v8 = v7, objc_msgSend(a4, "length") < 2) || (v9 = objc_msgSend(a4, "substringFromIndex:", v8), v10 = objc_msgSend(v9, "rangeOfString:", @"]"), v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v15.receiver = self;
    v15.super_class = SCNMorpher;
    [(SCNMorpher *)&v15 setValue:a3 forUndefinedKey:a4];
  }

  else
  {
    v12 = [objc_msgSend(v9 substringToIndex:{v10), "integerValue"}];
    [a3 floatValue];
    v14 = v13;

    [(SCNMorpher *)self setWeight:v12 forTargetAtIndex:v14];
  }
}

- (void)_customEncodingOfSCNMorpher:(id)a3
{
  WeightsSource = C3DMorphGetWeightsSource(self->_morpher);
  if (WeightsSource)
  {
    ID = C3DEntityGetID(WeightsSource);
    if (ID)
    {

      [a3 encodeObject:ID forKey:@"weightID"];
    }
  }
}

- (void)_didDecodeSCNMorpher:(id)a3
{
  v4 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"weightID"];
  if (v4)
  {
    v5 = v4;
    WeightsSource = C3DMorphGetWeightsSource(self->_morpher);
    if (WeightsSource)
    {

      C3DEntitySetID(WeightsSource, v5);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 16))
  {
    [(SCNMorpher *)self _syncObjCModel];
  }

  [(SCNMorpher *)self _customEncodingOfSCNMorpher:a3];
  [a3 encodeInteger:self->_calculationMode forKey:@"calculationMode"];
  [a3 encodeBool:self->_useSparseTargets forKey:@"useSparseTargets"];
  if (self->_weightCount)
  {
    [a3 encodeObject:-[SCNMorpher weights](self forKey:{"weights"), @"weights"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 skipMorphTargets];
  }

  else
  {
    v5 = 0;
  }

  if ([(NSArray *)self->_inBetweenCounts count])
  {
    p_inBetweenInfluenceWeights = &self->_inBetweenInfluenceWeights;
    if ([(NSArray *)self->_inBetweenInfluenceWeights count])
    {
      if ((v5 & 1) == 0)
      {
        [a3 encodeObject:self->_mainTargetsAndInBetweens forKey:@"targets"];
      }

      [a3 encodeObject:self->_inBetweenCounts forKey:@"inBetweenCounts"];
      v7 = @"inBetweenInfluenceWeights";
      goto LABEL_15;
    }
  }

  if ((v5 & 1) == 0)
  {
    p_inBetweenInfluenceWeights = &self->_mainTargets;
    v7 = @"targets";
LABEL_15:
    [a3 encodeObject:*p_inBetweenInfluenceWeights forKey:v7];
  }

  if ([(NSArray *)self->_correctiveDriverCounts count]&& [(NSArray *)self->_correctiveDriverIndices count])
  {
    if ((v5 & 1) == 0)
    {
      [a3 encodeObject:self->_correctivesAndInBetweens forKey:@"correctives"];
    }

    [a3 encodeObject:self->_correctiveDriverCounts forKey:@"correctiveDriverCounts"];
    [a3 encodeObject:self->_correctiveDriverIndices forKey:@"correctiveDriverIndices"];
    if ([(NSArray *)self->_correctiveInBetweenCounts count]&& [(NSArray *)self->_correctiveInBetweenInfluenceWeights count])
    {
      [a3 encodeObject:self->_correctiveInBetweenCounts forKey:@"correctiveInBetweenCounts"];
      [a3 encodeObject:self->_correctiveInBetweenInfluenceWeights forKey:@"correctiveInBetweenInfluenceWeights"];
    }
  }

  name = self->_name;
  if (name)
  {
    [a3 encodeObject:name forKey:@"name"];
  }

  [a3 encodeBool:!self->_unifyNormal forKey:@"shouldMorphNormals"];
  SCNEncodeEntity(a3, self);

  SCNEncodeAnimations(a3, self);
}

- (SCNMorpher)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SCNMorpher;
  v4 = [(SCNMorpher *)&v36 init];
  if (!v4)
  {
    return v4;
  }

  v5 = 0x2782F9000uLL;
  v6 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  [(SCNMorpher *)v4 _customDecodingOfSCNMorpher:a3];
  v4->_useSparseTargets = [a3 decodeBoolForKey:@"useSparseTargets"];
  -[SCNMorpher setCalculationMode:](v4, "setCalculationMode:", [a3 decodeIntegerForKey:@"calculationMode"]);
  v7 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"inBetweenCounts"];
  v8 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"inBetweenInfluenceWeights"];
  if (v7 | v8)
  {
    v10 = v8;
    goto LABEL_16;
  }

  v29 = v6;
  v7 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"channelTargetCounts"];
  v9 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"channelTargetWeights"];
  if (![v7 count] || !objc_msgSend(v9, "count"))
  {
    v10 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  v10 = [MEMORY[0x277CBEB18] array];
  if (![v7 count])
  {
LABEL_15:
    v6 = v29;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = [objc_msgSend(v7 objectAtIndexedSubscript:{v12), "unsignedIntegerValue"}];
    v14 = v13 - 1;
    if (v13 != 1)
    {
      v15 = v14 + v11;
      do
      {
        [v10 addObject:{objc_msgSend(v9, "objectAtIndexedSubscript:", v11++)}];
        --v14;
      }

      while (v14);
      v11 = v15;
    }

    ++v11;
    ++v12;
  }

  while (v12 < [v7 count]);
  v5 = 0x2782F9000;
  v6 = v29;
LABEL_16:
  v16 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correctiveDriverCounts"];
  [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correctiveDriverIndices"];
  v17 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correctiveInBetweenCounts"];
  v31 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correctiveInBetweenInfluenceWeights"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [a3 allTargetsFromAnimCodec];
    if (v18)
    {
      v19 = v18;
      if ([v17 count])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v20 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (!v20)
        {
          v27 = 0;
          goto LABEL_33;
        }

        v21 = v20;
        v30 = v6;
        v22 = 0;
        v23 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v17);
            }

            v22 += [*(*(&v32 + 1) + 8 * i) unsignedIntegerValue];
          }

          v21 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v21);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v30 = v6;
        v22 = [v16 count];
        if (v22)
        {
LABEL_27:
          v25 = [v19 count] - v22;
          v26 = [v19 subarrayWithRange:{0, v25}];
          v27 = [v19 subarrayWithRange:{v25, v22}];
          v19 = v26;
LABEL_31:
          v5 = 0x2782F9000;
          v6 = v30;
          goto LABEL_33;
        }
      }

      v27 = 0;
      goto LABEL_31;
    }
  }

  v19 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"targets"];
  v27 = [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"correctives"];
LABEL_33:
  if (v7 | v27)
  {
    [SCNMorpher setTargetsAndInBetweens:v4 inBetweenCounts:"setTargetsAndInBetweens:inBetweenCounts:inBetweenWeights:correctives:driverCounts:driverIndices:inBetweenCounts:inBetweenWeights:" inBetweenWeights:v19 correctives:v7 driverCounts:v10 driverIndices:v17 inBetweenCounts:v31 inBetweenWeights:?];
  }

  else
  {
    [(SCNMorpher *)v4 setTargets:v19];
  }

  -[SCNMorpher setWeights:](v4, "setWeights:", [a3 scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"weights"]);
  -[SCNMorpher setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
  if ([a3 containsValueForKey:@"shouldMorphNormals"])
  {
    -[SCNMorpher setUnifiesNormals:](v4, "setUnifiesNormals:", [a3 decodeBoolForKey:@"shouldMorphNormals"] ^ 1);
  }

  v4->_animationsLock._os_unfair_lock_opaque = 0;
  SCNDecodeEntity(a3, v4);
  SCNDecodeAnimations(a3, v4);
  [(SCNMorpher *)v4 _didDecodeSCNMorpher:a3];
  [*(v5 + 3728) setImmediateMode:v6];
  return v4;
}

+ (Class)SCNUID_classForElementOfArray:(id)a3
{
  if (([a3 isEqualToString:@"weights"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"channelTargetWeights") & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", @"channelTargetCounts"))
  {
    return 0;
  }

  return objc_opt_class();
}

- (BOOL)_validateTargetsAndInBetweens:(void *)a3 inBetweenCounts:(void *)a4 inBetweenWeights:
{
  v29 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6 = OUTLINED_FUNCTION_5_6(result, a2, a3, a4);
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = 0;
      v11 = MEMORY[0];
      *&v7 = 136315138;
      v21 = v7;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = [*(8 * i) unsignedIntegerValue];
          v9 += v13;
          if (v9 - 1 >= [a2 count])
          {
            v14 = scn_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = v21;
              v24 = "inBetweenIndex < targetsAndInBetweens.count";
              _os_log_fault_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Invalid in-between count (out of bounds) passed to morpher initialization", buf, 0xCu);
            }
          }

          v15 = [a2 count];
          if (v9 - 1 >= v15)
          {
            return 0;
          }

          v10 = v10 + v13 - 1;
        }

        v8 = OUTLINED_FUNCTION_5_6(v15, v16, v17, v18);
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

    if ([a4 count] != v10)
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = [a4 count];
        *buf = 136315650;
        v24 = "inBetweenWeights.count == inBetweenCountValidation";
        v25 = 1024;
        v26 = v20;
        v27 = 1024;
        v28 = v10;
        _os_log_fault_impl(&dword_21BEF7000, v19, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Expected %u in-betweens but found %u", buf, 0x18u);
      }
    }

    return [a4 count] == v10;
  }

  return result;
}

- (id)_sortTargetsAndInBetweens:(void *)a3 inBetweenCounts:(void *)a4 inBetweenWeights:
{
  v118 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v8;
    v74 = v7;
    result = [v8 countByEnumeratingWithState:&v98 objects:v117 count:16];
    if (result)
    {
      v10 = result;
      v56 = a2;
      v58 = a3;
      v60 = a4;
      v11 = 0;
      v12 = *v99;
      v13 = 1;
      do
      {
        v14 = 0;
        do
        {
          if (*v99 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v98 + 1) + 8 * v14) unsignedIntegerValue];
          if (v15 >= 2)
          {
            v16 = v15 - 1;
            v17 = 0.0;
            v18 = v11;
            v19 = v15 - 1;
            while (1)
            {
              [objc_msgSend(v9 objectAtIndexedSubscript:{v18), "floatValue"}];
              if (v17 > v20)
              {
                break;
              }

              ++v18;
              v17 = v20;
              if (!--v19)
              {
                goto LABEL_13;
              }
            }

            v13 = 0;
LABEL_13:
            v11 += v16;
          }

          v14 = v14 + 1;
        }

        while (v14 != v10);
        result = [obj countByEnumeratingWithState:&v98 objects:v117 count:16];
        v10 = result;
      }

      while (result);
      if ((v13 & 1) == 0)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v74, "count")}];
        v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v31 = OUTLINED_FUNCTION_7_1(v23, v24, v25, v26, v27, v28, v29, v30, v56, v58, v60, v62, v64, v66, v68, v70, obj, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, 0, 0, 0, 0, 0, 0, 0, 0, v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
        if (v31)
        {
          v32 = v31;
          v33 = 0;
          v34 = 0;
          v71 = *v92;
          v63 = &v86;
          v35 = 0x277CCA000uLL;
          do
          {
            v36 = 0;
            v65 = v32;
            do
            {
              if (*v92 != v71)
              {
                objc_enumerationMutation(obja);
              }

              v37 = [*(v91 + 8 * v36) unsignedIntegerValue];
              v38 = v33;
              if (v37 >= 2)
              {
                v69 = v36;
                [v21 removeAllObjects];
                v39 = 0;
                v67 = v37;
                v40 = v37 - 1;
                do
                {
                  [v21 addObject:{objc_msgSend(*(v35 + 2992), "numberWithUnsignedInteger:", v39++)}];
                }

                while (v40 != v39);
                v84 = MEMORY[0x277D85DD0];
                v85 = 3221225472;
                v86 = __73__SCNMorpher__sortTargetsAndInBetweens_inBetweenCounts_inBetweenWeights___block_invoke;
                v87 = &unk_2783003D0;
                v88 = v9;
                v89 = v34;
                [v21 sortUsingComparator:&v84];
                v41 = [v21 countByEnumeratingWithState:OUTLINED_FUNCTION_4_6() objects:? count:?];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v78;
                  do
                  {
                    v44 = v21;
                    for (i = 0; i != v42; ++i)
                    {
                      if (*v78 != v43)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v46 = [*(v77 + 8 * i) unsignedIntegerValue];
                      [v22 addObject:{objc_msgSend(v75, "objectAtIndexedSubscript:", v46 + v33)}];
                      [v23 addObject:{objc_msgSend(v9, "objectAtIndexedSubscript:", v46 + v34)}];
                    }

                    v21 = v44;
                    v42 = [v44 countByEnumeratingWithState:&v76 objects:&v102 count:16];
                  }

                  while (v42);
                }

                v32 = v65;
                v37 = v67;
                v38 = v33 + v67 - 1;
                v35 = 0x277CCA000;
                v36 = v69;
              }

              v47 = [v22 addObject:{objc_msgSend(v75, "objectAtIndexedSubscript:", v38)}];
              v33 += v37;
              v34 = v34 + v37 - 1;
              ++v36;
            }

            while (v36 != v32);
            v32 = OUTLINED_FUNCTION_7_1(v47, v48, v49, v50, v51, v52, v53, v54, v57, v59, v61, v63, v65, v67, v69, v71, obja, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
          }

          while (v32);
        }

        v55 = v22;
        result = v23;
        *v57 = v55;
        *v59 = obja;
        *v61 = result;
      }
    }
  }

  return result;
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setWeight:forTargetAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setTargetsAndInBetweens:(os_log_t)log inBetweenCounts:inBetweenWeights:correctives:driverCounts:driverIndices:inBetweenCounts:inBetweenWeights:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "inBetweenIndex < targetsAndInBetweens.count";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Invalid in-between count (out of bounds) passed to morpher initialization", buf, 0xCu);
}

- (void)setCalculationMode:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setValue:forUndefinedKey:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end