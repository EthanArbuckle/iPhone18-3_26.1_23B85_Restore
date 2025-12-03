@interface BSUIAnimationFactory
+ (double)globalSlowDownFactor;
+ (id)factoryWithAnimationAttributes:(id)attributes;
+ (id)factoryWithDuration:(double)duration;
+ (id)factoryWithDuration:(double)duration delay:(double)delay;
+ (id)factoryWithDuration:(double)duration delay:(double)delay timingFunction:(id)function;
+ (id)factoryWithDuration:(double)duration timingFunction:(id)function;
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping;
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon;
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon initialVelocity:(double)velocity;
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon timingFunction:(id)function;
+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping timingFunction:(id)function;
+ (id)factoryWithSettings:(id)settings;
+ (id)factoryWithSettings:(id)settings timingFunction:(id)function;
+ (void)addAlongsideAnimations:(id)animations completion:(id)completion;
+ (void)animateWithFactory:(id)factory additionalDelay:(double)delay options:(unint64_t)options actions:(id)actions completion:(id)completion;
+ (void)animateWithSettings:(id)settings actions:(id)actions;
+ (void)animateWithSettings:(id)settings actions:(id)actions completion:(id)completion;
+ (void)animateWithSettings:(id)settings options:(unint64_t)options actions:(id)actions;
+ (void)animateWithSettings:(id)settings options:(unint64_t)options actions:(id)actions completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (BSAnimationSettings)effectiveSettings;
- (BSUIAnimationFactory)factoryWithTimingFunction:(id)function;
- (BSUIAnimationFactory)init;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (void)_initWithSettings:(void *)settings;
- (void)applySettingsToCAAnimation:(id)animation;
@end

@implementation BSUIAnimationFactory

+ (double)globalSlowDownFactor
{
  v2 = +[BSUIAnimationFactoryDomain rootSettings];
  [v2 effectiveSlowDownFactor];
  v4 = v3;

  return v4;
}

- (void)_initWithSettings:(void *)settings
{
  v3 = a2;
  if (settings)
  {
    v7.receiver = settings;
    v7.super_class = BSUIAnimationFactory;
    settings = objc_msgSendSuper2(&v7, sel_init);
    if (settings)
    {
      v4 = [v3 copy];
      v5 = settings[2];
      settings[2] = v4;
    }
  }

  return settings;
}

- (BSUIAnimationFactory)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BSUIAnimationFactory.m" lineNumber:56 description:@"attempt to create a nil factory"];

  return [(BSUIAnimationFactory *)self _initWithSettings:?];
}

+ (id)factoryWithSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    v5 = [(BSUIAnimationFactory *)[self alloc] _initWithSettings:settingsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)factoryWithSettings:(id)settings timingFunction:(id)function
{
  settingsCopy = settings;
  functionCopy = function;
  if (settingsCopy)
  {
    v8 = [settingsCopy mutableCopy];
    [v8 setTimingFunction:functionCopy];
    v9 = [(BSUIAnimationFactory *)[self alloc] _initWithSettings:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)factoryWithDuration:(double)duration
{
  v4 = [MEMORY[0x1E698E608] settingsWithDuration:duration];
  v5 = [self factoryWithSettings:v4];

  return v5;
}

+ (id)factoryWithDuration:(double)duration delay:(double)delay
{
  v5 = [MEMORY[0x1E698E608] settingsWithDuration:duration delay:delay];
  v6 = [self factoryWithSettings:v5];

  return v6;
}

+ (id)factoryWithDuration:(double)duration timingFunction:(id)function
{
  v5 = [MEMORY[0x1E698E608] settingsWithDuration:function timingFunction:duration];
  v6 = [self factoryWithSettings:v5];

  return v6;
}

+ (id)factoryWithDuration:(double)duration delay:(double)delay timingFunction:(id)function
{
  v6 = [MEMORY[0x1E698E608] settingsWithDuration:function delay:duration timingFunction:delay];
  v7 = [self factoryWithSettings:v6];

  return v7;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping
{
  v6 = [MEMORY[0x1E698E780] settingsWithMass:mass stiffness:stiffness damping:damping];
  v7 = [self factoryWithSettings:v6];

  return v7;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon
{
  v7 = [MEMORY[0x1E698E780] settingsWithMass:mass stiffness:stiffness damping:damping epsilon:epsilon];
  v8 = [self factoryWithSettings:v7];

  return v8;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon initialVelocity:(double)velocity
{
  v8 = [MEMORY[0x1E698E780] settingsWithMass:mass stiffness:stiffness damping:damping epsilon:epsilon initialVelocity:velocity];
  v9 = [self factoryWithSettings:v8];

  return v9;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping timingFunction:(id)function
{
  v7 = [MEMORY[0x1E698E780] settingsWithMass:function stiffness:mass damping:stiffness timingFunction:damping];
  v8 = [self factoryWithSettings:v7];

  return v8;
}

+ (id)factoryWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping epsilon:(double)epsilon timingFunction:(id)function
{
  v8 = [MEMORY[0x1E698E780] settingsWithMass:function stiffness:mass damping:stiffness epsilon:damping timingFunction:epsilon];
  v9 = [self factoryWithSettings:v8];

  return v9;
}

- (BSUIAnimationFactory)factoryWithTimingFunction:(id)function
{
  functionCopy = function;
  v5 = [(BSAnimationSettings *)self->_settings mutableCopy];
  [v5 setTimingFunction:functionCopy];
  v6 = [objc_opt_class() factoryWithSettings:v5];

  return v6;
}

uint64_t __79__BSUIAnimationFactory__animateWithAdditionalDelay_options_actions_completion___block_invoke(uint64_t result, double a2, double a3, double a4)
{
  if (*(result + 32))
  {
    LODWORD(a2) = *(result + 40);
    LODWORD(a3) = *(result + 44);
    LODWORD(a4) = *(result + 48);
    return [MEMORY[0x1E69DD250] _modifyAnimationsWithPreferredFrameRateRange:*(result + 52) updateReason:a2 animations:{a3, a4}];
  }

  return result;
}

- (BSAnimationSettings)effectiveSettings
{
  if (-[BSAnimationSettings isSpringAnimation](self->_settings, "isSpringAnimation") & 1) != 0 || ([objc_opt_class() globalSlowDownFactor], (BSFloatIsOne()))
  {
    v3 = [(BSAnimationSettings *)self->_settings copy];
  }

  else
  {
    v3 = [(BSAnimationSettings *)self->_settings mutableCopy];
    [v3 duration];
    v5 = v4;
    [objc_opt_class() globalSlowDownFactor];
    [v3 setDuration:v5 * v6];
  }

  return v3;
}

- (void)applySettingsToCAAnimation:(id)animation
{
  animationCopy = animation;
  if ([(BSAnimationSettings *)self->_settings isSpringAnimation])
  {
    [(BSAnimationSettings *)self->_settings mass];
    [animationCopy setMass:?];
    [(BSAnimationSettings *)self->_settings stiffness];
    [animationCopy setStiffness:?];
    [(BSAnimationSettings *)self->_settings damping];
    [animationCopy setDamping:?];
    [(BSAnimationSettings *)self->_settings initialVelocity];
    [animationCopy setInitialVelocity:?];
  }

  [objc_opt_class() globalSlowDownFactor];
  v5 = v4;
  [(BSAnimationSettings *)self->_settings speed];
  v7 = v6;
  if (v6 != 1.0 || (BSFloatIsOne() & 1) == 0)
  {
    v8 = v7 / v5;
    *&v8 = v8;
    [animationCopy setSpeed:v8];
  }

  [(BSAnimationSettings *)self->_settings beginTime];
  if (v9 != 0.0)
  {
    [animationCopy setBeginTime:?];
    [animationCopy setBeginTimeMode:*MEMORY[0x1E69795B0]];
  }

  [(BSAnimationSettings *)self->_settings frameInterval];
  if (v10 != 0.0)
  {
    [animationCopy setFrameInterval:?];
  }

  [(BSAnimationSettings *)self->_settings preferredFrameRateRange];
  minimum = v20.minimum;
  maximum = v20.maximum;
  preferred = v20.preferred;
  if (!CAFrameRateRangeIsEqualToRange(v20, *MEMORY[0x1E69792B8]))
  {
    v22.minimum = 0.0;
    v22.maximum = 0.0;
    v22.preferred = 0.0;
    v21.minimum = minimum;
    v21.maximum = maximum;
    v21.preferred = preferred;
    if (!CAFrameRateRangeIsEqualToRange(v21, v22))
    {
      *&v14 = minimum;
      *&v15 = maximum;
      *&v16 = preferred;
      [animationCopy setPreferredFrameRateRange:{v14, v15, v16}];
    }
  }

  highFrameRateReason = [(BSAnimationSettings *)self->_settings highFrameRateReason];
  if (highFrameRateReason | [animationCopy highFrameRateReason])
  {
    [animationCopy setHighFrameRateReason:highFrameRateReason];
  }
}

+ (void)animateWithFactory:(id)factory additionalDelay:(double)delay options:(unint64_t)options actions:(id)actions completion:(id)completion
{
  factoryCopy = factory;
  actionsCopy = actions;
  completionCopy = completion;
  if (factoryCopy)
  {
    v14 = actionsCopy;
    v15 = completionCopy;
    [factoryCopy[2] preferredFrameRateRange];
    minimum = v38.minimum;
    maximum = v38.maximum;
    preferred = v38.preferred;
    if (CAFrameRateRangeIsEqualToRange(v38, *MEMORY[0x1E69792B8]) || (v40.minimum = 0.0, v40.maximum = 0.0, v40.preferred = 0.0, v39.minimum = minimum, v39.maximum = maximum, v39.preferred = preferred, CAFrameRateRangeIsEqualToRange(v39, v40)))
    {
      v19 = 0;
    }

    else
    {
      highFrameRateReason = [factoryCopy[2] highFrameRateReason];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __79__BSUIAnimationFactory__animateWithAdditionalDelay_options_actions_completion___block_invoke;
      v32[3] = &unk_1E76B7E50;
      v33 = v14;
      v34 = minimum;
      v35 = maximum;
      v36 = preferred;
      v37 = highFrameRateReason;
      v19 = MEMORY[0x1A58E5D00](v32);
    }

    v22 = MEMORY[0x1E69DD250];
    [factoryCopy[2] duration];
    v24 = v23;
    [factoryCopy[2] delay];
    v26 = v25;
    [objc_opt_class() globalSlowDownFactor];
    if (v19)
    {
      v28 = v19;
    }

    else
    {
      v28 = v14;
    }

    [v22 _animateWithDuration:options | 0x60000 delay:factoryCopy options:v28 factory:v15 animations:v24 completion:(v26 + delay) * v27];
  }

  else
  {
    v20 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __86__BSUIAnimationFactory_animateWithFactory_additionalDelay_options_actions_completion___block_invoke;
    v29[3] = &unk_1E76B7E78;
    v30 = actionsCopy;
    v31 = completionCopy;
    [v20 performWithoutAnimation:v29];
  }
}

uint64_t __86__BSUIAnimationFactory_animateWithFactory_additionalDelay_options_actions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

+ (void)animateWithSettings:(id)settings actions:(id)actions
{
  actionsCopy = actions;
  v6 = [self factoryWithSettings:settings];
  [self animateWithFactory:v6 additionalDelay:0 options:actionsCopy actions:0 completion:0.0];
}

+ (void)animateWithSettings:(id)settings actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v9 = [self factoryWithSettings:settings];
  [self animateWithFactory:v9 additionalDelay:0 options:actionsCopy actions:completionCopy completion:0.0];
}

+ (void)animateWithSettings:(id)settings options:(unint64_t)options actions:(id)actions
{
  actionsCopy = actions;
  v8 = [self factoryWithSettings:settings];
  [self animateWithFactory:v8 additionalDelay:options options:actionsCopy actions:0 completion:0.0];
}

+ (void)animateWithSettings:(id)settings options:(unint64_t)options actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v11 = [self factoryWithSettings:settings];
  [self animateWithFactory:v11 additionalDelay:options options:actionsCopy actions:completionCopy completion:0.0];
}

+ (void)addAlongsideAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (animationsCopy)
  {
    animationsCopy[2]();
  }

  if (completionCopy && ([MEMORY[0x1E69DD250] _addCompletion:completionCopy] & 1) == 0)
  {
    completionCopy[2](completionCopy, 1);
  }
}

+ (id)factoryWithAnimationAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [_BSUIAnimationAttributesFactory alloc];
  v6 = attributesCopy;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithAttributes_ object:v5 file:@"BSUIAnimationFactory.m" lineNumber:361 description:@"must pass in valid attributes"];
    }

    v8 = [(BSUIAnimationFactory *)v5 _initWithSettings:?];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, attributes);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  isSpringAnimation = [(BSAnimationSettings *)self->_settings isSpringAnimation];
  v7 = 0x1E69794A8;
  if (!isSpringAnimation)
  {
    v7 = 0x1E6979318;
  }

  animation = [*v7 animation];
  [(BSUIAnimationFactory *)self applySettingsToCAAnimation:animation];
  [animation setKeyPath:pathCopy];

  return animation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(BSAnimationSettings *)self->_settings isEqual:equalCopy[2]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end