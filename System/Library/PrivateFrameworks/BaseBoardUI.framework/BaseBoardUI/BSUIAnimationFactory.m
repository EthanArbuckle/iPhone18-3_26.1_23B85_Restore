@interface BSUIAnimationFactory
+ (double)globalSlowDownFactor;
+ (id)factoryWithAnimationAttributes:(id)a3;
+ (id)factoryWithDuration:(double)a3;
+ (id)factoryWithDuration:(double)a3 delay:(double)a4;
+ (id)factoryWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5;
+ (id)factoryWithDuration:(double)a3 timingFunction:(id)a4;
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5;
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6;
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 initialVelocity:(double)a7;
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 timingFunction:(id)a7;
+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 timingFunction:(id)a6;
+ (id)factoryWithSettings:(id)a3;
+ (id)factoryWithSettings:(id)a3 timingFunction:(id)a4;
+ (void)addAlongsideAnimations:(id)a3 completion:(id)a4;
+ (void)animateWithFactory:(id)a3 additionalDelay:(double)a4 options:(unint64_t)a5 actions:(id)a6 completion:(id)a7;
+ (void)animateWithSettings:(id)a3 actions:(id)a4;
+ (void)animateWithSettings:(id)a3 actions:(id)a4 completion:(id)a5;
+ (void)animateWithSettings:(id)a3 options:(unint64_t)a4 actions:(id)a5;
+ (void)animateWithSettings:(id)a3 options:(unint64_t)a4 actions:(id)a5 completion:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BSAnimationSettings)effectiveSettings;
- (BSUIAnimationFactory)factoryWithTimingFunction:(id)a3;
- (BSUIAnimationFactory)init;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (void)_initWithSettings:(void *)a1;
- (void)applySettingsToCAAnimation:(id)a3;
@end

@implementation BSUIAnimationFactory

+ (double)globalSlowDownFactor
{
  v2 = +[BSUIAnimationFactoryDomain rootSettings];
  [v2 effectiveSlowDownFactor];
  v4 = v3;

  return v4;
}

- (void)_initWithSettings:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BSUIAnimationFactory;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[2];
      a1[2] = v4;
    }
  }

  return a1;
}

- (BSUIAnimationFactory)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSUIAnimationFactory.m" lineNumber:56 description:@"attempt to create a nil factory"];

  return [(BSUIAnimationFactory *)self _initWithSettings:?];
}

+ (id)factoryWithSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BSUIAnimationFactory *)[a1 alloc] _initWithSettings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)factoryWithSettings:(id)a3 timingFunction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 setTimingFunction:v7];
    v9 = [(BSUIAnimationFactory *)[a1 alloc] _initWithSettings:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)factoryWithDuration:(double)a3
{
  v4 = [MEMORY[0x1E698E608] settingsWithDuration:a3];
  v5 = [a1 factoryWithSettings:v4];

  return v5;
}

+ (id)factoryWithDuration:(double)a3 delay:(double)a4
{
  v5 = [MEMORY[0x1E698E608] settingsWithDuration:a3 delay:a4];
  v6 = [a1 factoryWithSettings:v5];

  return v6;
}

+ (id)factoryWithDuration:(double)a3 timingFunction:(id)a4
{
  v5 = [MEMORY[0x1E698E608] settingsWithDuration:a4 timingFunction:a3];
  v6 = [a1 factoryWithSettings:v5];

  return v6;
}

+ (id)factoryWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5
{
  v6 = [MEMORY[0x1E698E608] settingsWithDuration:a5 delay:a3 timingFunction:a4];
  v7 = [a1 factoryWithSettings:v6];

  return v7;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5
{
  v6 = [MEMORY[0x1E698E780] settingsWithMass:a3 stiffness:a4 damping:a5];
  v7 = [a1 factoryWithSettings:v6];

  return v7;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6
{
  v7 = [MEMORY[0x1E698E780] settingsWithMass:a3 stiffness:a4 damping:a5 epsilon:a6];
  v8 = [a1 factoryWithSettings:v7];

  return v8;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 initialVelocity:(double)a7
{
  v8 = [MEMORY[0x1E698E780] settingsWithMass:a3 stiffness:a4 damping:a5 epsilon:a6 initialVelocity:a7];
  v9 = [a1 factoryWithSettings:v8];

  return v9;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 timingFunction:(id)a6
{
  v7 = [MEMORY[0x1E698E780] settingsWithMass:a6 stiffness:a3 damping:a4 timingFunction:a5];
  v8 = [a1 factoryWithSettings:v7];

  return v8;
}

+ (id)factoryWithMass:(double)a3 stiffness:(double)a4 damping:(double)a5 epsilon:(double)a6 timingFunction:(id)a7
{
  v8 = [MEMORY[0x1E698E780] settingsWithMass:a7 stiffness:a3 damping:a4 epsilon:a5 timingFunction:a6];
  v9 = [a1 factoryWithSettings:v8];

  return v9;
}

- (BSUIAnimationFactory)factoryWithTimingFunction:(id)a3
{
  v4 = a3;
  v5 = [(BSAnimationSettings *)self->_settings mutableCopy];
  [v5 setTimingFunction:v4];
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

- (void)applySettingsToCAAnimation:(id)a3
{
  v18 = a3;
  if ([(BSAnimationSettings *)self->_settings isSpringAnimation])
  {
    [(BSAnimationSettings *)self->_settings mass];
    [v18 setMass:?];
    [(BSAnimationSettings *)self->_settings stiffness];
    [v18 setStiffness:?];
    [(BSAnimationSettings *)self->_settings damping];
    [v18 setDamping:?];
    [(BSAnimationSettings *)self->_settings initialVelocity];
    [v18 setInitialVelocity:?];
  }

  [objc_opt_class() globalSlowDownFactor];
  v5 = v4;
  [(BSAnimationSettings *)self->_settings speed];
  v7 = v6;
  if (v6 != 1.0 || (BSFloatIsOne() & 1) == 0)
  {
    v8 = v7 / v5;
    *&v8 = v8;
    [v18 setSpeed:v8];
  }

  [(BSAnimationSettings *)self->_settings beginTime];
  if (v9 != 0.0)
  {
    [v18 setBeginTime:?];
    [v18 setBeginTimeMode:*MEMORY[0x1E69795B0]];
  }

  [(BSAnimationSettings *)self->_settings frameInterval];
  if (v10 != 0.0)
  {
    [v18 setFrameInterval:?];
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
      [v18 setPreferredFrameRateRange:{v14, v15, v16}];
    }
  }

  v17 = [(BSAnimationSettings *)self->_settings highFrameRateReason];
  if (v17 | [v18 highFrameRateReason])
  {
    [v18 setHighFrameRateReason:v17];
  }
}

+ (void)animateWithFactory:(id)a3 additionalDelay:(double)a4 options:(unint64_t)a5 actions:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (v11)
  {
    v14 = v12;
    v15 = v13;
    [v11[2] preferredFrameRateRange];
    minimum = v38.minimum;
    maximum = v38.maximum;
    preferred = v38.preferred;
    if (CAFrameRateRangeIsEqualToRange(v38, *MEMORY[0x1E69792B8]) || (v40.minimum = 0.0, v40.maximum = 0.0, v40.preferred = 0.0, v39.minimum = minimum, v39.maximum = maximum, v39.preferred = preferred, CAFrameRateRangeIsEqualToRange(v39, v40)))
    {
      v19 = 0;
    }

    else
    {
      v21 = [v11[2] highFrameRateReason];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __79__BSUIAnimationFactory__animateWithAdditionalDelay_options_actions_completion___block_invoke;
      v32[3] = &unk_1E76B7E50;
      v33 = v14;
      v34 = minimum;
      v35 = maximum;
      v36 = preferred;
      v37 = v21;
      v19 = MEMORY[0x1A58E5D00](v32);
    }

    v22 = MEMORY[0x1E69DD250];
    [v11[2] duration];
    v24 = v23;
    [v11[2] delay];
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

    [v22 _animateWithDuration:a5 | 0x60000 delay:v11 options:v28 factory:v15 animations:v24 completion:(v26 + a4) * v27];
  }

  else
  {
    v20 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __86__BSUIAnimationFactory_animateWithFactory_additionalDelay_options_actions_completion___block_invoke;
    v29[3] = &unk_1E76B7E78;
    v30 = v12;
    v31 = v13;
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

+ (void)animateWithSettings:(id)a3 actions:(id)a4
{
  v7 = a4;
  v6 = [a1 factoryWithSettings:a3];
  [a1 animateWithFactory:v6 additionalDelay:0 options:v7 actions:0 completion:0.0];
}

+ (void)animateWithSettings:(id)a3 actions:(id)a4 completion:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [a1 factoryWithSettings:a3];
  [a1 animateWithFactory:v9 additionalDelay:0 options:v10 actions:v8 completion:0.0];
}

+ (void)animateWithSettings:(id)a3 options:(unint64_t)a4 actions:(id)a5
{
  v9 = a5;
  v8 = [a1 factoryWithSettings:a3];
  [a1 animateWithFactory:v8 additionalDelay:a4 options:v9 actions:0 completion:0.0];
}

+ (void)animateWithSettings:(id)a3 options:(unint64_t)a4 actions:(id)a5 completion:(id)a6
{
  v12 = a5;
  v10 = a6;
  v11 = [a1 factoryWithSettings:a3];
  [a1 animateWithFactory:v11 additionalDelay:a4 options:v12 actions:v10 completion:0.0];
}

+ (void)addAlongsideAnimations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6)
  {
    v6[2]();
  }

  if (v5 && ([MEMORY[0x1E69DD250] _addCompletion:v5] & 1) == 0)
  {
    v5[2](v5, 1);
  }
}

+ (id)factoryWithAnimationAttributes:(id)a3
{
  v4 = a3;
  v5 = [_BSUIAnimationAttributesFactory alloc];
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__initWithAttributes_ object:v5 file:@"BSUIAnimationFactory.m" lineNumber:361 description:@"must pass in valid attributes"];
    }

    v8 = [(BSUIAnimationFactory *)v5 _initWithSettings:?];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a3);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(BSAnimationSettings *)self->_settings isSpringAnimation];
  v7 = 0x1E69794A8;
  if (!v6)
  {
    v7 = 0x1E6979318;
  }

  v8 = [*v7 animation];
  [(BSUIAnimationFactory *)self applySettingsToCAAnimation:v8];
  [v8 setKeyPath:v5];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(BSAnimationSettings *)self->_settings isEqual:v4[2]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end