@interface CASpringAnimation
+ (id)defaultValueForKey:(id)key;
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (BOOL)allowsOverdamping;
- (CASpringAnimation)initWithPerceptualDuration:(CFTimeInterval)perceptualDuration bounce:(CGFloat)bounce;
- (CFTimeInterval)perceptualDuration;
- (CGFloat)bounce;
- (CGFloat)damping;
- (CGFloat)mass;
- (CGFloat)stiffness;
- (double)_timeFunction:(double)function;
- (double)durationForEpsilon:(double)epsilon;
- (double)velocity;
- (unsigned)_propertyFlagsForLayer:(id)layer;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)setAllowsOverdamping:(BOOL)allowsOverdamping;
- (void)setDamping:(CGFloat)damping;
- (void)setMass:(CGFloat)mass;
- (void)setStiffness:(CGFloat)stiffness;
- (void)setVelocity:(double)velocity;
@end

@implementation CASpringAnimation

- (double)velocity
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 738, 0x12, v3);
  return *v3;
}

- (CGFloat)mass
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 507, 0x12, v3);
  return *v3;
}

- (CGFloat)stiffness
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 685, 0x12, v3);
  return *v3;
}

- (CGFloat)damping
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 178, 0x12, v3);
  return *v3;
}

- (BOOL)allowsOverdamping
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 24, 7, &v3);
  return v3 != 0;
}

+ (id)defaultValueForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 <= 506)
  {
    if (v5 == 24)
    {
      return *MEMORY[0x1E695E4C0];
    }

    if (v5 != 178)
    {
      goto LABEL_18;
    }

    v8 = MEMORY[0x1E696AD98];
    v9 = 10.0;
  }

  else
  {
    if (v5 != 738)
    {
      if (v5 == 685)
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = 100;
        goto LABEL_14;
      }

      if (v5 == 507)
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = 1;
LABEL_14:

        return [v6 numberWithInt:v7];
      }

LABEL_18:
      v11.receiver = self;
      v11.super_class = &OBJC_METACLASS___CASpringAnimation;
      return objc_msgSendSuper2(&v11, sel_defaultValueForKey_, key);
    }

    v8 = MEMORY[0x1E696AD98];
    v9 = 0.0;
  }

  return [v8 numberWithDouble:v9];
}

- (CGFloat)bounce
{
  [(CASpringAnimation *)self damping];
  v4 = v3;
  [(CASpringAnimation *)self mass];
  v6 = v5;
  [(CASpringAnimation *)self stiffness];
  v8 = v7;
  [(CASpringAnimation *)self perceptualDuration];
  v10 = v9 * v4 / (v6 * 12.5663706);
  v11 = sqrt(v8 * v6);
  if (v4 / (v11 + v11) <= 1.0)
  {
    return 1.0 - v10;
  }

  else
  {
    return 1.0 / v10 + -1.0;
  }
}

- (CFTimeInterval)perceptualDuration
{
  [(CASpringAnimation *)self stiffness];
  v4 = v3;
  v5 = *&v3 & 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  if (v5 <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [(CASpringAnimation *)self mass];
    return sqrt(v7 / v4) * 6.28318531;
  }

  return result;
}

- (CASpringAnimation)initWithPerceptualDuration:(CFTimeInterval)perceptualDuration bounce:(CGFloat)bounce
{
  v6 = [(CASpringAnimation *)self init];
  v7 = v6;
  if (v6)
  {
    [(CASpringAnimation *)v6 setAllowsOverdamping:1];
    if (perceptualDuration <= 0.0)
    {
      v8 = INFINITY;
    }

    else
    {
      v8 = 6.28318531 / perceptualDuration * (6.28318531 / perceptualDuration);
    }

    [(CASpringAnimation *)v7 setStiffness:v8];
    if (bounce >= 0.0)
    {
      v9 = 1.0 - bounce;
    }

    else
    {
      v9 = 1.0 / (bounce + 1.0);
    }

    [(CASpringAnimation *)v7 setDamping:v9 * 12.5663706 / perceptualDuration];
    [(CASpringAnimation *)v7 settlingDuration];
    [(CAAnimation *)v7 setDuration:?];
  }

  return v7;
}

- (void)setAllowsOverdamping:(BOOL)allowsOverdamping
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = allowsOverdamping;
  CAAnimation_setter(self, 0x18, 7, &v3);
}

- (void)setDamping:(CGFloat)damping
{
  v3 = damping;
  v6[1] = *MEMORY[0x1E69E9840];
  if (damping < 0.0)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    v3 = 10.0;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "CASpringAnimation damping must be greater than or equal to 0.", v6, 2u);
    }
  }

  *v6 = v3;
  CAAnimation_setter(self, 0xB2, 18, v6);
}

- (void)setStiffness:(CGFloat)stiffness
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (stiffness <= 0.0)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v4 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v5[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "CASpringAnimation stiffness must be greater than 0.", v5, 2u);
    }

    stiffness = 100.0;
  }

  *v5 = stiffness;
  CAAnimation_setter(self, 0x2AD, 18, v5);
}

- (void)setMass:(CGFloat)mass
{
  v3 = mass;
  v6[1] = *MEMORY[0x1E69E9840];
  if (mass <= 0.0)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    v3 = 1.0;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "CASpringAnimation mass must be greater than 0.", v6, 2u);
    }
  }

  *v6 = v3;
  CAAnimation_setter(self, 0x1FB, 18, v6);
}

- (double)_timeFunction:(double)function
{
  v15 = *MEMORY[0x1E69E9840];
  [(CASpringAnimation *)self mass:0];
  v6 = v5;
  [(CASpringAnimation *)self stiffness];
  v8 = v7;
  [(CASpringAnimation *)self damping];
  v10 = v9;
  [(CASpringAnimation *)self velocity];
  CA::Render::SpringAnimation::State::update(&v14, v6, v8, v10, v11, [(CASpringAnimation *)self allowsOverdamping]);
  [(CAAnimation *)self duration];
  return CA::Render::SpringAnimation::State::eval(&v14, v12 * function);
}

- (unsigned)_propertyFlagsForLayer:(id)layer
{
  keyPath = [(CAPropertyAnimation *)self keyPath];

  return animation_property_flags(keyPath, layer);
}

- (void)_copyRenderAnimationForLayer:(id)layer
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xF0uLL, 0xDEEC3011uLL);
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = 1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 9) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 8) = 0;
    v5[92] &= ~1u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 18) = 0;
    *(v5 + 3) = 53;
    ++dword_1ED4EAB0C;
    *v5 = &unk_1EF202C70;
    *(v5 + 152) = xmmword_183E21540;
    *(v5 + 168) = xmmword_183E21550;
    if (![(CASpringAnimation *)self _setCARenderAnimation:v5 layer:layer])
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      return 0;
    }
  }

  else
  {
    [(CASpringAnimation *)self _setCARenderAnimation:0 layer:layer];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CASpringAnimation;
  v6 = [(CABasicAnimation *)&v12 _setCARenderAnimation:animation layer:layer];
  if (v6)
  {
    [(CASpringAnimation *)self mass];
    *(animation + 19) = v7;
    [(CASpringAnimation *)self stiffness];
    *(animation + 20) = v8;
    [(CASpringAnimation *)self damping];
    *(animation + 21) = v9;
    [(CASpringAnimation *)self velocity];
    *(animation + 22) = v10;
    *(animation + 184) = [(CASpringAnimation *)self allowsOverdamping];
  }

  return v6;
}

- (double)durationForEpsilon:(double)epsilon
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  *v24 = 0u;
  v22 = 0u;
  [(CASpringAnimation *)self mass];
  v6 = v5;
  [(CASpringAnimation *)self stiffness];
  v8 = v7;
  [(CASpringAnimation *)self damping];
  v10 = v9;
  [(CASpringAnimation *)self velocity];
  CA::Render::SpringAnimation::State::update(&v22, v6, v8, v10, v11, [(CASpringAnimation *)self allowsOverdamping]);
  v12 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v13 = INFINITY;
  }

  else
  {
    v14 = fmax(epsilon, 0.000001);
    if (*(&v22 + 1) >= 1.0)
    {
      v13 = -1.0;
      v16 = INFINITY;
      for (i = 0.0; ; i = i + 0.1)
      {
        v18 = CA::Render::SpringAnimation::State::eval(&v22, i);
        if (COERCE__INT64(fabs(1.0 - v18)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        v19 = vabdd_f64(1.0, v18);
        if (v16 >= v14)
        {
          if (v19 < v16)
          {
            v13 = i;
            v16 = v19;
          }
        }

        else if (v19 >= v14)
        {
          v16 = INFINITY;
        }

        else if (i - v13 > 1.0)
        {
          goto LABEL_16;
        }
      }

      v13 = 0.0;
    }

    else
    {
      v15 = log(v14 / (fabs(v24[0]) + fabs(*(&v23 + 1))));
      v13 = fmax(-v15 / (*&v22 * v12), 0.0);
    }
  }

LABEL_16:
  [(CAAnimation *)self speed];
  if (v20 == 0.0)
  {
    return 3.40282347e38;
  }

  else
  {
    return fmin(fabs(v13 / v20), 3.40282347e38);
  }
}

- (void)setVelocity:(double)velocity
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = velocity;
  CAAnimation_setter(self, 0x2E2, 18, v3);
}

@end