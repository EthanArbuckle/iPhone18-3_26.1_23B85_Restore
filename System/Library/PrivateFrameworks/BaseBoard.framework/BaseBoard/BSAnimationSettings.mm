@interface BSAnimationSettings
+ (id)settingsWithDuration:(double)duration;
+ (id)settingsWithDuration:(double)duration delay:(double)delay;
+ (id)settingsWithDuration:(double)duration delay:(double)delay timingFunction:(id)function;
+ (id)settingsWithDuration:(double)duration timingFunction:(id)function;
- (BOOL)isEqual:(id)equal;
- (BSAnimationSettings)initWithCoder:(id)coder;
- (BSAnimationSettings)initWithXPCDictionary:(id)dictionary;
- (CAFrameRateRange)preferredFrameRateRange;
- (CAMediaTimingFunction)timingFunction;
- (NSString)description;
- (double)_lock_duration;
- (double)beginTime;
- (double)damping;
- (double)delay;
- (double)duration;
- (double)epsilon;
- (double)frameInterval;
- (double)initialVelocity;
- (double)mass;
- (double)progressAtTime:(double)time;
- (double)stiffness;
- (float)speed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (uint64_t)_initWithStoredDuration:(int)duration storedDurationIsDirty:(void *)dirty delay:(int)delay frameInterval:(double)interval frameRange:(double)range highFrameRateReason:(double)reason timingFunction:(float)function speed:(float)self0 beginTime:(float)self1 mass:(float)self2 stiffness:(double)self3 damping:(uint64_t)self4 epsilon:(uint64_t)self5 initialVelocity:(uint64_t)self6 isSpring:(uint64_t)self7;
- (unint64_t)hash;
- (unsigned)highFrameRateReason;
- (void)_lock_applyToCAAnimation:(uint64_t)animation;
- (void)_setEpsilon:(uint64_t)epsilon;
- (void)_setFrameInterval:(uint64_t)interval;
- (void)_setFrameRange:(float)range;
- (void)_setSpeed:(uint64_t)speed;
- (void)_setTimingFunction:(uint64_t)function;
- (void)applyToCAAnimation:(id)animation;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BSAnimationSettings

- (double)duration
{
  os_unfair_lock_lock(&self->_lock);
  _lock_duration = [(BSAnimationSettings *)self _lock_duration];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_duration;
}

- (CAFrameRateRange)preferredFrameRateRange
{
  os_unfair_lock_lock(&self->_lock);
  minimum = self->_lock_frameRange.minimum;
  maximum = self->_lock_frameRange.maximum;
  preferred = self->_lock_frameRange.preferred;
  os_unfair_lock_unlock(&self->_lock);
  v6 = minimum;
  v7 = maximum;
  v8 = preferred;
  result.preferred = v8;
  result.maximum = v7;
  result.minimum = v6;
  return result;
}

- (double)_lock_duration
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_assert_owner((self + 8));
  if (*(self + 114) == 1 && *(self + 112) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    CATransactionClass = getCATransactionClass();
    isMainThread = [MEMORY[0x1E696AF00] isMainThread];
    if (isMainThread)
    {
      [CATransactionClass activate];
    }

    else
    {
      [CATransactionClass begin];
      [CATransactionClass activateBackground:1];
    }

    v5 = objc_autoreleasePoolPush();
    animation = [getCASpringAnimationClass() animation];
    [(BSAnimationSettings *)self _lock_applyToCAAnimation:animation];

    objc_autoreleasePoolPop(v5);
    if ((isMainThread & 1) == 0)
    {
      [CATransactionClass commit];
    }

    objc_autoreleasePoolPop(v2);
  }

  return *(self + 16);
}

- (double)delay
{
  os_unfair_lock_lock(&self->_lock);
  lock_delay = self->_lock_delay;
  os_unfair_lock_unlock(&self->_lock);
  return lock_delay;
}

- (CAMediaTimingFunction)timingFunction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_timingFunction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (float)speed
{
  os_unfair_lock_lock(&self->_lock);
  lock_speed = self->_lock_speed;
  os_unfair_lock_unlock(&self->_lock);
  return lock_speed;
}

- (double)beginTime
{
  os_unfair_lock_lock(&self->_lock);
  lock_beginTime = self->_lock_beginTime;
  os_unfair_lock_unlock(&self->_lock);
  return lock_beginTime;
}

- (double)frameInterval
{
  os_unfair_lock_lock(&self->_lock);
  lock_frameInterval = self->_lock_frameInterval;
  os_unfair_lock_unlock(&self->_lock);
  return lock_frameInterval;
}

- (unsigned)highFrameRateReason
{
  os_unfair_lock_lock(&self->_lock);
  lock_highFrameRateReason = self->_lock_highFrameRateReason;
  os_unfair_lock_unlock(&self->_lock);
  return lock_highFrameRateReason;
}

- (double)mass
{
  if (!self->_isSpring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAnimationSettings.m" lineNumber:741 description:@"cannot call mass if not a spring animation"];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_mass = self->_lock_mass;
  os_unfair_lock_unlock(&self->_lock);
  return lock_mass;
}

- (double)stiffness
{
  if (!self->_isSpring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAnimationSettings.m" lineNumber:749 description:@"cannot call stiffness if not a spring animation"];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_stiffness = self->_lock_stiffness;
  os_unfair_lock_unlock(&self->_lock);
  return lock_stiffness;
}

- (double)damping
{
  if (!self->_isSpring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAnimationSettings.m" lineNumber:757 description:@"cannot call damping if not a spring animation"];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_damping = self->_lock_damping;
  os_unfair_lock_unlock(&self->_lock);
  return lock_damping;
}

- (double)initialVelocity
{
  if (!self->_isSpring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAnimationSettings.m" lineNumber:773 description:@"cannot call initialVelocity if not a spring animation"];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_initialVelocity = self->_lock_initialVelocity;
  os_unfair_lock_unlock(&self->_lock);
  return lock_initialVelocity;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  isSpring = self->_isSpring;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (isSpring)
  {
    lock_mass = self->_lock_mass;
    lock_stiffness = self->_lock_stiffness;
    lock_damping = self->_lock_damping;
    lock_epsilon = self->_lock_epsilon;
    lock_initialVelocity = self->_lock_initialVelocity;
    lock_storedDurationIsDirty = self->_lock_storedDurationIsDirty;
    if (lock_storedDurationIsDirty)
    {
      v12 = &stru_1F03A1A98;
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (duration=%f)", -[BSAnimationSettings _lock_duration](self)];
    }

    v13 = [v4 stringWithFormat:@"<%@:%p mass=%f stiffness=%f damping=%f epsilon=%f initialVelocity=%f %@delay=%f interval=%f range={%f, %f, %f} reason=%i timing=%@ speed=%f beginTime=%f>", v5, self, *&lock_mass, *&lock_stiffness, *&lock_damping, *&lock_epsilon, *&lock_initialVelocity, v12, *&self->_lock_delay, *&self->_lock_frameInterval, self->_lock_frameRange.minimum, self->_lock_frameRange.maximum, self->_lock_frameRange.preferred, self->_lock_highFrameRateReason, self->_lock_timingFunction, self->_lock_speed, *&self->_lock_beginTime];
    if (!lock_storedDurationIsDirty)
    {
    }
  }

  else
  {
    v13 = [v4 stringWithFormat:@"<%@:%p duration=%f delay=%f interval=%f range={%f, %f, %f} reason=%i timing=%@ speed=%f beginTime=%f>", v5, self, -[BSAnimationSettings _lock_duration](self), *&self->_lock_delay, *&self->_lock_frameInterval, self->_lock_frameRange.minimum, self->_lock_frameRange.maximum, self->_lock_frameRange.preferred, self->_lock_highFrameRateReason, self->_lock_timingFunction, self->_lock_speed, *&self->_lock_beginTime];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (double)epsilon
{
  if (!self->_isSpring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAnimationSettings.m" lineNumber:765 description:@"cannot call epsilon if not a spring animation"];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_epsilon = self->_lock_epsilon;
  os_unfair_lock_unlock(&self->_lock);
  return lock_epsilon;
}

- (uint64_t)_initWithStoredDuration:(int)duration storedDurationIsDirty:(void *)dirty delay:(int)delay frameInterval:(double)interval frameRange:(double)range highFrameRateReason:(double)reason timingFunction:(float)function speed:(float)self0 beginTime:(float)self1 mass:(float)self2 stiffness:(double)self3 damping:(uint64_t)self4 epsilon:(uint64_t)self5 initialVelocity:(uint64_t)self6 isSpring:(uint64_t)self7
{
  dirtyCopy = dirty;
  if (!self)
  {
    v39 = 0;
    goto LABEL_13;
  }

  v35 = objc_opt_class();
  if (delay)
  {
    if (v35 != objc_opt_class())
    {
      if (v35 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__initWithStoredDuration_storedDurationIsDirty_delay_frameInterval_frameRange_highFrameRateReason_timingFunction_speed_beginTime_mass_stiffness_damping_epsilon_initialVelocity_isSpring_ object:self file:@"BSAnimationSettings.m" lineNumber:85 description:{@"invalid class type: %@", v35}];
LABEL_15:

        goto LABEL_8;
      }

      goto LABEL_8;
    }

LABEL_9:
    v37 = 1;
    goto LABEL_10;
  }

  if (v35 == objc_opt_class())
  {
    goto LABEL_9;
  }

  if (v35 != objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__initWithStoredDuration_storedDurationIsDirty_delay_frameInterval_frameRange_highFrameRateReason_timingFunction_speed_beginTime_mass_stiffness_damping_epsilon_initialVelocity_isSpring_ object:self file:@"BSAnimationSettings.m" lineNumber:91 description:{@"invalid class type: %@", v35}];
    goto LABEL_15;
  }

LABEL_8:
  v37 = 0;
LABEL_10:
  v41.receiver = self;
  v41.super_class = BSAnimationSettings;
  v38 = objc_msgSendSuper2(&v41, sel_init);
  v39 = v38;
  if (v38)
  {
    *(v38 + 2) = 0;
    *(v38 + 113) = v37;
    *(v38 + 114) = delay;
    *(v38 + 112) = a2;
    *(v38 + 2) = interval;
    *(v38 + 3) = range;
    *(v38 + 4) = reason;
    *(v38 + 10) = function;
    *(v38 + 11) = speed;
    *(v38 + 12) = time;
    *(v38 + 13) = duration;
    objc_storeStrong(v38 + 7, dirty);
    [(BSAnimationSettings *)v39 _setTimingFunction:?];
    *(v39 + 12) = mass;
    *(v39 + 64) = stiffness;
    if (*(v39 + 114) == 1)
    {
      *(v39 + 72) = spring;
      *(v39 + 80) = a18;
      *(v39 + 88) = a19;
      *(v39 + 96) = a20;
      [(BSAnimationSettings *)v39 _setEpsilon:a20];
      *(v39 + 104) = a21;
    }
  }

LABEL_13:

  return v39;
}

- (void)_setTimingFunction:(uint64_t)function
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (function)
  {
    if (!v3 && (*(function + 114) & 1) != 0)
    {
      CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v6 = getkCAMediaTimingFunctionLinearSymbolLoc_ptr;
      v20 = getkCAMediaTimingFunctionLinearSymbolLoc_ptr;
      if (!getkCAMediaTimingFunctionLinearSymbolLoc_ptr)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __getkCAMediaTimingFunctionLinearSymbolLoc_block_invoke;
        v15[3] = &unk_1E72CABA8;
        v16 = &v17;
        v7 = QuartzCoreLibrary();
        v18[3] = dlsym(v7, "kCAMediaTimingFunctionLinear");
        getkCAMediaTimingFunctionLinearSymbolLoc_ptr = *(v16[1] + 24);
        v6 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v6)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAMediaTimingFunctionLinear(void)"];
        [currentHandler handleFailureInFunction:v14 file:@"BSAnimationSettings.m" lineNumber:24 description:{@"%s", dlerror()}];

        __break(1u);
      }

      v8 = *v6;
      v4 = [CAMediaTimingFunctionClass functionWithName:v8];
    }

    os_unfair_lock_lock((function + 8));
    v9 = *(function + 56);
    if (v9 != v4)
    {
      if (v9 && v4)
      {
        v10 = 0;
        v11 = 1;
        while (1)
        {
          v12 = v10;
          v15[0] = 0;
          v17 = 0;
          [*(function + 56) getControlPointAtIndex:v11 values:v15];
          [v4 getControlPointAtIndex:v11 values:&v17];
          if (vabds_f32(*v15, *&v17) >= 0.00000011921 || vabds_f32(*(v15 + 1), *(&v17 + 1)) >= 0.00000011921)
          {
            break;
          }

          v10 = 1;
          v11 = 2;
          if (v12)
          {
            goto LABEL_17;
          }
        }
      }

      objc_storeStrong((function + 56), v4);
      *(function + 112) = 1;
    }

LABEL_17:
    os_unfair_lock_unlock((function + 8));
  }
}

- (void)_setEpsilon:(uint64_t)epsilon
{
  if (epsilon)
  {
    v3 = fabs(a2);
    v4 = fmin(fmax(a2, 0.0001), 0.5);
    if (v3 >= 2.22044605e-16)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.001;
    }

    os_unfair_lock_lock((epsilon + 8));
    if (vabdd_f64(*(epsilon + 96), v5) >= 2.22044605e-16)
    {
      *(epsilon + 96) = v5;
      *(epsilon + 112) = 1;
    }

    os_unfair_lock_unlock((epsilon + 8));
  }
}

+ (id)settingsWithDuration:(double)duration
{
  v4 = [self alloc];
  v8 = [(BSAnimationSettings *)v4 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:0 frameInterval:duration frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v5 epsilon:v6 initialVelocity:v7 isSpring:0, 0, 0, 0.0, 0];

  return v8;
}

+ (id)settingsWithDuration:(double)duration timingFunction:(id)function
{
  functionCopy = function;
  v7 = [self alloc];
  v11 = [(BSAnimationSettings *)v7 _initWithStoredDuration:0 storedDurationIsDirty:functionCopy delay:0 frameInterval:duration frameRange:0.0 highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v8 epsilon:v9 initialVelocity:v10 isSpring:0, 0, 0, 0.0, 0];

  return v11;
}

+ (id)settingsWithDuration:(double)duration delay:(double)delay
{
  v6 = [self alloc];
  v10 = [(BSAnimationSettings *)v6 _initWithStoredDuration:0 storedDurationIsDirty:0 delay:0 frameInterval:duration frameRange:delay highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v7 epsilon:v8 initialVelocity:v9 isSpring:0, 0, 0, 0.0, 0];

  return v10;
}

+ (id)settingsWithDuration:(double)duration delay:(double)delay timingFunction:(id)function
{
  functionCopy = function;
  v9 = [self alloc];
  v13 = [(BSAnimationSettings *)v9 _initWithStoredDuration:0 storedDurationIsDirty:functionCopy delay:0 frameInterval:duration frameRange:delay highFrameRateReason:0.0 timingFunction:0.0 speed:0.0 beginTime:0.0 mass:1.0 stiffness:0.0 damping:v10 epsilon:v11 initialVelocity:v12 isSpring:0, 0, 0, 0.0, 0];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = off_1E72CA528;
    if (!self->_isSpring)
    {
      v4 = off_1E72CA300;
    }

    v5 = [(__objc2_class *)*v4 allocWithZone:zone];
    v9 = [(BSAnimationSettings *)v5 _initWithStoredDuration:self->_lock_highFrameRateReason storedDurationIsDirty:self->_lock_timingFunction delay:self->_isSpring frameInterval:self->_lock_storedDuration frameRange:self->_lock_delay highFrameRateReason:self->_lock_frameInterval timingFunction:self->_lock_frameRange.minimum speed:self->_lock_frameRange.maximum beginTime:self->_lock_frameRange.preferred mass:self->_lock_speed stiffness:self->_lock_beginTime damping:v6 epsilon:v7 initialVelocity:v8 isSpring:*&self->_lock_mass, *&self->_lock_stiffness, *&self->_lock_damping, self->_lock_epsilon, *&self->_lock_initialVelocity];

    os_unfair_lock_unlock(&self->_lock);
    return v9;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = off_1E72CA468;
  if (!self->_isSpring)
  {
    v5 = off_1E72CA420;
  }

  v6 = [(__objc2_class *)*v5 allocWithZone:zone];
  v10 = [(BSAnimationSettings *)v6 _initWithStoredDuration:self->_lock_highFrameRateReason storedDurationIsDirty:self->_lock_timingFunction delay:self->_isSpring frameInterval:self->_lock_storedDuration frameRange:self->_lock_delay highFrameRateReason:self->_lock_frameInterval timingFunction:self->_lock_frameRange.minimum speed:self->_lock_frameRange.maximum beginTime:self->_lock_frameRange.preferred mass:self->_lock_speed stiffness:self->_lock_beginTime damping:v7 epsilon:v8 initialVelocity:v9 isSpring:*&self->_lock_mass, *&self->_lock_stiffness, *&self->_lock_damping, self->_lock_epsilon, *&self->_lock_initialVelocity];

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v12[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_isSpring || !self->_lock_storedDurationIsDirty)
  {
    [coderCopy encodeDouble:@"l" forKey:-[BSAnimationSettings _lock_duration](self)];
  }

  if (self->_lock_delay != 0.0)
  {
    [coderCopy encodeDouble:@"w" forKey:?];
  }

  if (self->_lock_frameInterval != 0.0)
  {
    [coderCopy encodeDouble:@"f" forKey:?];
  }

  minimum = self->_lock_frameRange.minimum;
  if (minimum != 0.0 || self->_lock_frameRange.maximum != 0.0 || self->_lock_frameRange.preferred != 0.0)
  {
    [coderCopy encodeInt:minimum forKey:@"fl"];
    [coderCopy encodeInt:self->_lock_frameRange.maximum forKey:@"fh"];
    [coderCopy encodeInt:self->_lock_frameRange.preferred forKey:@"fp"];
  }

  lock_highFrameRateReason = self->_lock_highFrameRateReason;
  if (lock_highFrameRateReason)
  {
    [coderCopy encodeInt32:lock_highFrameRateReason forKey:@"fr"];
  }

  lock_timingFunction = self->_lock_timingFunction;
  if (lock_timingFunction)
  {
    v11 = 0;
    v12[0] = 0;
    [(CAMediaTimingFunction *)lock_timingFunction getControlPointAtIndex:1 values:&v11];
    [(CAMediaTimingFunction *)self->_lock_timingFunction getControlPointAtIndex:2 values:v12];
    for (i = 0; i != 4; ++i)
    {
      LODWORD(v8) = *(&v12[-1] + i);
      [coderCopy encodeFloat:kBSAnimationSettingsTimingPointsStrings[i] forKey:v8];
    }
  }

  lock_speed = self->_lock_speed;
  if (lock_speed != 1.0)
  {
    [coderCopy encodeDouble:@"p" forKey:lock_speed];
  }

  if (self->_lock_beginTime != 0.0)
  {
    [coderCopy encodeDouble:@"t" forKey:?];
  }

  if (self->_isSpring)
  {
    if (self->_lock_mass != 0.0)
    {
      [coderCopy encodeDouble:@"m" forKey:?];
    }

    if (self->_lock_stiffness != 0.0)
    {
      [coderCopy encodeDouble:@"s" forKey:?];
    }

    if (self->_lock_damping != 0.0)
    {
      [coderCopy encodeDouble:@"d" forKey:?];
    }

    [coderCopy encodeDouble:@"e" forKey:self->_lock_epsilon];
    if (self->_lock_initialVelocity != 0.0)
    {
      [coderCopy encodeDouble:@"v" forKey:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BSAnimationSettings)initWithCoder:(id)coder
{
  v56 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v8 = coderCopy;
  v53 = 0;
  if (coderCopy)
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __37__BSAnimationSettings_initWithCoder___block_invoke;
    v51[3] = &unk_1E72CB910;
    v9 = coderCopy;
    v52 = v9;
    v10 = MEMORY[0x193AE5AC0](v51);
    v11 = (v10)[2](v10, @"l", &v53 + 1, 0.0);
    v12 = (v10)[2](v10, @"w", 0, 0.0);
    v13 = (v10)[2](v10, @"f", 0, 0.0);
    v14 = [v9 decodeIntForKey:@"fl"];
    v15 = [v9 decodeIntForKey:@"fh"];
    v16 = [v9 decodeIntForKey:@"fp"];
    v17 = [v9 decodeInt32ForKey:@"fr"];
    v18 = 0;
    v19 = v15;
    v20 = 1;
    do
    {
      v20 &= [v9 containsValueForKey:kBSAnimationSettingsTimingPointsStrings[v18++]];
    }

    while (v18 != 4);
    v49 = v13;
    v50 = v12;
    v48 = v19;
    if (v20)
    {
      v21 = 0;
      v54 = 0;
      v55 = 0;
      do
      {
        [v9 decodeFloatForKey:kBSAnimationSettingsTimingPointsStrings[v21]];
        *(&v54 + v21++) = v22;
      }

      while (v21 != 4);
      CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
      LODWORD(v25) = HIDWORD(v54);
      LODWORD(v24) = v54;
      LODWORD(v27) = HIDWORD(v55);
      LODWORD(v26) = v55;
      v28 = [CAMediaTimingFunctionClass functionWithControlPoints:v24 :v25 :v26 :v27];
      v29 = v11;
    }

    else
    {
      v29 = v11;
      v28 = 0;
    }

    v45 = (v10)[2](v10, @"p", 0, 1.0);
    v39 = (v10)[2](v10, @"t", 0, 0.0);
    v40 = (v10)[2](v10, @"m", &v53, 0.0);
    v41 = (v10)[2](v10, @"s", &v53, 0.0);
    v42 = (v10)[2](v10, @"d", &v53, 0.0);
    v43 = (v10)[2](v10, @"e", &v53, 0.0);
    v44 = (v10)[2](v10, @"v", &v53, 0.0);

    v31 = v45;
    v30 = v53;
    v35 = HIBYTE(v53) ^ 1;
    v33 = v29;
    v36 = v49;
    v34 = v50;
    v37 = v48;
    v32 = v14;
    v38 = v16;
  }

  else
  {
    v30 = 0;
    v17 = 0;
    v28 = 0;
    v31 = 1.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 1;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0.0;
    v44 = 0;
  }

  v46 = [(BSAnimationSettings *)self _initWithStoredDuration:v17 storedDurationIsDirty:v28 delay:v30 & 1 frameInterval:v33 frameRange:v34 highFrameRateReason:v36 timingFunction:v32 speed:v37 beginTime:v38 mass:v31 stiffness:v39 damping:v5 epsilon:v6 initialVelocity:v7 isSpring:v40, v41, v42, v43, v44];

  return v46;
}

double __37__BSAnimationSettings_initWithCoder___block_invoke(uint64_t a1, void *a2, _BYTE *a3, double a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsValueForKey:v7])
  {
    if (a3)
    {
      *a3 = 1;
    }

    [*(a1 + 32) decodeDoubleForKey:v7];
    a4 = v8;
  }

  return a4;
}

- (BSAnimationSettings)initWithXPCDictionary:(id)dictionary
{
  v81 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v72 = 0;
  v69 = dictionaryCopy;
  if (dictionaryCopy)
  {
    selfCopy = self;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __45__BSAnimationSettings_initWithXPCDictionary___block_invoke;
    v70[3] = &unk_1E72CB938;
    v8 = dictionaryCopy;
    v71 = v8;
    v9 = MEMORY[0x193AE5AC0](v70);
    v10 = (v9)[2](v9, "l", &v72 + 1, 0.0);
    v11 = (v9)[2](v9, "w", 0, 0.0);
    v12 = (v9)[2](v9, "f", 0, 0.0);
    v13 = xpc_dictionary_get_value(v8, "r");
    v14 = v13;
    v66 = v11;
    v67 = v10;
    v65 = v12;
    if (v13)
    {
      LODWORD(v74) = 0;
      v73 = 0;
      if (object_getClass(v13) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v14) == 3)
      {
        v15 = 0;
        v63 = 1;
        v16 = MEMORY[0x1E69E9EB0];
        do
        {
          while (1)
          {
            v17 = xpc_array_get_value(v14, v15);
            if (object_getClass(v17) == v16)
            {
              break;
            }

            v63 = 0;
            if (v15++ == 2)
            {
              goto LABEL_20;
            }
          }

          value = xpc_int64_get_value(v17);
          if (value <= 0xFFFFFFFF80000000)
          {
            v19 = 0xFFFFFFFF80000000;
          }

          else
          {
            v19 = value;
          }

          if (v19 >= 0x7FFFFFFF)
          {
            LODWORD(v19) = 0x7FFFFFFF;
          }

          *(&v73 + v15) = v19;

          ++v15;
        }

        while (v15 != 3);
        if (v63)
        {
          v34 = v73;
          v38 = SHIDWORD(v73);
          v39 = v74;
          goto LABEL_24;
        }
      }

LABEL_20:
      v40 = BSLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v76 = "[BSAnimationSettings initWithXPCDictionary:]";
        v77 = 2114;
        v78 = v14;
        _os_log_error_impl(&dword_18FEF6000, v40, OS_LOG_TYPE_ERROR, "%s the encoded frameRange format is unknown -> %{public}@", buf, 0x16u);
      }
    }

    v39 = 0.0;
    v38 = 0.0;
    v34 = 0.0;
LABEL_24:
    v41 = xpc_dictionary_get_value(v8, "x");
    v42 = v41;
    v62 = v38;
    v64 = v39;
    if (v41)
    {
      if (object_getClass(v41) == MEMORY[0x1E69E9EB0])
      {
        v23 = xpc_int64_get_value(v42);
LABEL_31:
        v44 = xpc_dictionary_get_value(v8, "t");
        v45 = v44;
        if (v44)
        {
          v73 = 0;
          v74 = 0;
          if (object_getClass(v44) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v45) == 4)
          {
            v46 = 0;
            v47 = 1;
            v48 = MEMORY[0x1E69E9E88];
            do
            {
              v49 = xpc_array_get_value(v45, v46);
              if (object_getClass(v49) != v48 || ((v50 = xpc_double_get_value(v49), v50 >= 0.0) ? (v51 = v50 > 1.0) : (v51 = 1), v51))
              {
                v47 = 0;
              }

              else
              {
                v52 = v50;
                *(&v73 + v46) = v52;
              }

              ++v46;
            }

            while (v46 != 4);
            if (v47)
            {
              CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
              LODWORD(v55) = HIDWORD(v73);
              LODWORD(v54) = v73;
              LODWORD(v57) = HIDWORD(v74);
              LODWORD(v56) = v74;
              v22 = [CAMediaTimingFunctionClass functionWithControlPoints:v54 :v55 :v56 :v57];
LABEL_49:
              v59 = (v9)[2](v9, "p", 0, 1.0);
              v32 = (v9)[2](v9, "t0", 0, 0.0);
              v31 = (v9)[2](v9, "m", &v72, 0.0);
              v30 = (v9)[2](v9, "s", &v72, 0.0);
              v29 = (v9)[2](v9, "d", &v72, 0.0);
              v27 = (v9)[2](v9, "e", &v72, 0.0);
              v26 = (v9)[2](v9, "v", &v72, 0.0);

              v25 = v59;
              v21 = v72;
              v28 = HIBYTE(v72) ^ 1;
              self = selfCopy;
              v36 = v66;
              v37 = v67;
              v35 = v65;
              v33 = v62;
              v24 = v64;
              goto LABEL_50;
            }
          }

          v58 = BSLogCommon();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v76 = "[BSAnimationSettings initWithXPCDictionary:]";
            v77 = 2114;
            v78 = v45;
            _os_log_error_impl(&dword_18FEF6000, v58, OS_LOG_TYPE_ERROR, "%s the encoded timingFunction format is unknown -> %{public}@", buf, 0x16u);
          }
        }

        v22 = 0;
        goto LABEL_49;
      }

      v43 = BSLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v76 = "[BSAnimationSettings initWithXPCDictionary:]";
        v77 = 2080;
        v78 = "x";
        v79 = 2112;
        v80 = v42;
        _os_log_error_impl(&dword_18FEF6000, v43, OS_LOG_TYPE_ERROR, "%{public}s the encoded format for %s is unknown -> %@", buf, 0x20u);
      }
    }

    v23 = 0;
    goto LABEL_31;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0.0;
  v25 = 1.0;
  v26 = 0;
  v27 = 0.0;
  v28 = 1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
LABEL_50:
  v60 = [(BSAnimationSettings *)self _initWithStoredDuration:v23 storedDurationIsDirty:v22 delay:v21 & 1 frameInterval:v37 frameRange:v36 highFrameRateReason:v35 timingFunction:v34 speed:v33 beginTime:v24 mass:v25 stiffness:v32 damping:v5 epsilon:v6 initialVelocity:v7 isSpring:v31, v30, v29, v27, v26];

  return v60;
}

double __45__BSAnimationSettings_initWithXPCDictionary___block_invoke(uint64_t a1, const char *a2, _BYTE *a3, double value)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = xpc_dictionary_get_value(*(a1 + 32), a2);
  v8 = v7;
  if (v7)
  {
    if (object_getClass(v7) == MEMORY[0x1E69E9E88])
    {
      if (a3)
      {
        *a3 = 1;
      }

      value = xpc_double_get_value(v8);
    }

    else
    {
      v9 = BSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446722;
        v12 = "[BSAnimationSettings initWithXPCDictionary:]_block_invoke";
        v13 = 2080;
        v14 = a2;
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_ERROR, "%{public}s the encoded format for %s is unknown -> %@", &v11, 0x20u);
      }
    }
  }

  return value;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (dictionaryCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_isSpring || !self->_lock_storedDurationIsDirty)
    {
      _lock_duration = [(BSAnimationSettings *)self _lock_duration];
      xpc_dictionary_set_double(dictionaryCopy, "l", _lock_duration);
    }

    lock_delay = self->_lock_delay;
    if (lock_delay != 0.0)
    {
      xpc_dictionary_set_double(dictionaryCopy, "w", lock_delay);
    }

    lock_frameInterval = self->_lock_frameInterval;
    if (lock_frameInterval != 0.0)
    {
      xpc_dictionary_set_double(dictionaryCopy, "f", lock_frameInterval);
    }

    if (self->_lock_frameRange.minimum != 0.0 || self->_lock_frameRange.maximum != 0.0 || self->_lock_frameRange.preferred != 0.0)
    {
      v8 = xpc_array_create(0, 0);
      v9 = xpc_int64_create(self->_lock_frameRange.minimum);
      xpc_array_append_value(v8, v9);

      v10 = xpc_int64_create(self->_lock_frameRange.maximum);
      xpc_array_append_value(v8, v10);

      v11 = xpc_int64_create(self->_lock_frameRange.preferred);
      xpc_array_append_value(v8, v11);

      xpc_dictionary_set_value(dictionaryCopy, "r", v8);
    }

    lock_highFrameRateReason = self->_lock_highFrameRateReason;
    if (lock_highFrameRateReason)
    {
      xpc_dictionary_set_int64(dictionaryCopy, "x", lock_highFrameRateReason);
    }

    lock_timingFunction = self->_lock_timingFunction;
    if (lock_timingFunction)
    {
      v23 = 0;
      v24[0] = 0;
      [(CAMediaTimingFunction *)lock_timingFunction getControlPointAtIndex:1 values:&v23];
      [(CAMediaTimingFunction *)self->_lock_timingFunction getControlPointAtIndex:2 values:v24];
      v14 = xpc_array_create(0, 0);
      for (i = 0; i != 16; i += 4)
      {
        v16 = xpc_double_create(*(&v24[-1] + i));
        xpc_array_append_value(v14, v16);
      }

      xpc_dictionary_set_value(dictionaryCopy, "t", v14);
    }

    lock_speed = self->_lock_speed;
    if (lock_speed != 1.0)
    {
      xpc_dictionary_set_double(dictionaryCopy, "p", lock_speed);
    }

    lock_beginTime = self->_lock_beginTime;
    if (lock_beginTime != 0.0)
    {
      xpc_dictionary_set_double(dictionaryCopy, "t0", lock_beginTime);
    }

    if (self->_isSpring)
    {
      lock_mass = self->_lock_mass;
      if (lock_mass != 0.0)
      {
        xpc_dictionary_set_double(dictionaryCopy, "m", lock_mass);
      }

      lock_stiffness = self->_lock_stiffness;
      if (lock_stiffness != 0.0)
      {
        xpc_dictionary_set_double(dictionaryCopy, "s", lock_stiffness);
      }

      lock_damping = self->_lock_damping;
      if (lock_damping != 0.0)
      {
        xpc_dictionary_set_double(dictionaryCopy, "d", lock_damping);
      }

      xpc_dictionary_set_double(dictionaryCopy, "e", self->_lock_epsilon);
      lock_initialVelocity = self->_lock_initialVelocity;
      if (lock_initialVelocity != 0.0)
      {
        xpc_dictionary_set_double(dictionaryCopy, "v", lock_initialVelocity);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_lock_applyToCAAnimation:(uint64_t)animation
{
  v3 = a2;
  if (!animation || (os_unfair_lock_assert_owner((animation + 8)), !v3))
  {
LABEL_24:

    return;
  }

  if (*(animation + 56))
  {
    [v3 setTimingFunction:?];
  }

  if (*(animation + 32) != 0.0)
  {
    [v3 setFrameInterval:?];
  }

  if (*(animation + 40) != 0.0 || *(animation + 44) != 0.0 || *(animation + 48) != 0.0)
  {
    [v3 setPreferredFrameRateRange:?];
  }

  if (*(animation + 52) | [v3 highFrameRateReason])
  {
    [v3 setHighFrameRateReason:?];
  }

  v4 = *(animation + 64);
  if (v4 == 0.0)
  {
LABEL_18:
    if (*(animation + 114) == 1 && (getCASpringAnimationClass(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v3;
      LODWORD(v8) = *(animation + 12);
      [v7 setSpeed:v8];
      [v7 setMass:*(animation + 72)];
      [v7 setStiffness:*(animation + 80)];
      [v7 setDamping:*(animation + 88)];
      [v7 setInitialVelocity:*(animation + 104)];
      if (*(animation + 112) == 1)
      {
        [v7 durationForEpsilon:*(animation + 96)];
        *(animation + 16) = v9;
        *(animation + 112) = 0;
      }

      [(BSAnimationSettings *)animation _lock_duration];
      [v7 setDuration:?];
    }

    else
    {
      LODWORD(v4) = *(animation + 12);
      [v3 setSpeed:v4];
      [(BSAnimationSettings *)animation _lock_duration];
      [v3 setDuration:?];
    }

    goto LABEL_24;
  }

  [v3 setBeginTime:?];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getkCAAnimationNonZeroSymbolLoc_ptr;
  v15 = getkCAAnimationNonZeroSymbolLoc_ptr;
  if (!getkCAAnimationNonZeroSymbolLoc_ptr)
  {
    v6 = QuartzCoreLibrary();
    v13[3] = dlsym(v6, "kCAAnimationNonZero");
    getkCAAnimationNonZeroSymbolLoc_ptr = v13[3];
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v5)
  {
    [v3 setBeginTimeMode:*v5];
    goto LABEL_18;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAAnimationNonZero(void)"];
  [currentHandler handleFailureInFunction:v11 file:@"BSAnimationSettings.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_setFrameInterval:(uint64_t)interval
{
  if (interval)
  {
    os_unfair_lock_lock((interval + 8));
    if (vabdd_f64(*(interval + 32), a2) >= 2.22044605e-16)
    {
      *(interval + 32) = a2;
      *(interval + 112) = 1;
    }

    os_unfair_lock_unlock((interval + 8));
  }
}

- (void)_setFrameRange:(float)range
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    if (*(self + 40) != a2 || *(self + 44) != range || *(self + 48) != a4)
    {
      *(self + 40) = a2;
      *(self + 44) = range;
      *(self + 48) = a4;
      *(self + 112) = 1;
    }

    os_unfair_lock_unlock((self + 8));
  }
}

- (void)_setSpeed:(uint64_t)speed
{
  if (speed)
  {
    os_unfair_lock_lock((speed + 8));
    if (vabds_f32(*(speed + 12), a2) >= 0.00000011921)
    {
      *(speed + 12) = a2;
      *(speed + 112) = 1;
    }

    os_unfair_lock_unlock((speed + 8));
  }
}

- (void)applyToCAAnimation:(id)animation
{
  animationCopy = animation;
  os_unfair_lock_lock(&self->_lock);
  [(BSAnimationSettings *)self _lock_applyToCAAnimation:animationCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)progressAtTime:(double)time
{
  os_unfair_lock_lock(&self->_lock);
  v5 = 0.0;
  if (self->_lock_delay <= time)
  {
    v6 = objc_autoreleasePoolPush();
    if (self->_isSpring)
    {
      CATransactionClass = getCATransactionClass();
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        [CATransactionClass activate];
        CATransactionClass = 0;
      }

      else
      {
        [CATransactionClass begin];
        [CATransactionClass activateBackground:1];
      }

      animation = [getCASpringAnimationClass() animation];
      [(BSAnimationSettings *)self _lock_applyToCAAnimation:animation];
    }

    else
    {
      animation = 0;
      CATransactionClass = 0;
    }

    _lock_duration = [(BSAnimationSettings *)self _lock_duration];
    lock_delay = self->_lock_delay;
    v5 = 1.0;
    if (_lock_duration + lock_delay > time)
    {
      v5 = 0.0;
      if (_lock_duration > 0.0)
      {
        v11 = fmax((time - lock_delay) / _lock_duration, 0.0);
        v5 = fmin(v11, 1.0);
        lock_timingFunction = self->_lock_timingFunction;
        if (lock_timingFunction)
        {
          *&v11 = v5;
          [(CAMediaTimingFunction *)lock_timingFunction _solveForInput:v11];
          v11 = fmax(v13, 0.0);
          v5 = fmin(v11, 1.0);
        }

        if (animation)
        {
          *&v11 = v5;
          [animation _solveForInput:v11];
          v5 = v14;
        }
      }
    }

    if (CATransactionClass)
    {
      [CATransactionClass commit];
    }

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (unint64_t)hash
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = +[BSHashBuilder builder];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_isSpring)
  {
    v4 = [v3 appendDouble:-[BSAnimationSettings _lock_duration](self)];
  }

  v5 = [v3 appendDouble:self->_lock_delay];
  v6 = [v3 appendDouble:self->_lock_frameInterval];
  v7 = [v3 appendInt64:self->_lock_frameRange.minimum];
  v8 = [v3 appendInt64:self->_lock_frameRange.maximum];
  v9 = [v3 appendInt64:self->_lock_frameRange.preferred];
  v10 = [v3 appendInt64:self->_lock_highFrameRateReason];
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v11;
    v28[0] = 0;
    [(CAMediaTimingFunction *)self->_lock_timingFunction getControlPointAtIndex:v12 values:v28];
    LODWORD(v14) = v28[0];
    v15 = [v3 appendFloat:v14];
    LODWORD(v16) = HIDWORD(v28[0]);
    v17 = [v15 appendFloat:v16];

    v11 = 1;
    v12 = 2;
  }

  while ((v13 & 1) == 0);
  *&v18 = self->_lock_speed;
  v19 = [v3 appendFloat:{2, v18}];
  v20 = [v3 appendDouble:self->_lock_beginTime];
  if (self->_isSpring)
  {
    v21 = [v3 appendCGFloat:self->_lock_mass];
    v22 = [v3 appendCGFloat:self->_lock_stiffness];
    v23 = [v3 appendCGFloat:self->_lock_damping];
    v24 = [v3 appendCGFloat:self->_lock_epsilon];
    v25 = [v3 appendCGFloat:self->_lock_initialVelocity];
  }

  os_unfair_lock_unlock(&self->_lock);
  v26 = [v3 hash];

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  v21[1] = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  p_lock = &self->_lock;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (self->_isSpring != v6->_isSpring)
      {
        v9 = 0;
LABEL_41:

        goto LABEL_42;
      }

      if (self >= v6)
      {
        os_unfair_lock_lock(&v6->_lock);
        v8 = &self->_lock;
      }

      else
      {
        os_unfair_lock_lock(&self->_lock);
        v8 = &v7->_lock;
      }

      os_unfair_lock_lock(v8);
      v10 = v7;
      os_unfair_lock_assert_owner(&self->_lock);
      os_unfair_lock_assert_owner(&v10->_lock);
      if (!self->_isSpring)
      {
        _lock_duration = [(BSAnimationSettings *)self _lock_duration];
        if (vabdd_f64(_lock_duration, [(BSAnimationSettings *)v10 _lock_duration]) >= 2.22044605e-16)
        {
          goto LABEL_34;
        }
      }

      if (vabdd_f64(self->_lock_delay, v10->_lock_delay) >= 2.22044605e-16 || vabdd_f64(self->_lock_frameInterval, v10->_lock_frameInterval) >= 2.22044605e-16)
      {
        goto LABEL_34;
      }

      v9 = 0;
      if (self->_lock_frameRange.minimum != v10->_lock_frameRange.minimum || self->_lock_frameRange.maximum != v10->_lock_frameRange.maximum || self->_lock_frameRange.preferred != v10->_lock_frameRange.preferred)
      {
        goto LABEL_35;
      }

      if (self->_lock_highFrameRateReason == v10->_lock_highFrameRateReason)
      {
        lock_timingFunction = self->_lock_timingFunction;
        v13 = v10->_lock_timingFunction;
        if (lock_timingFunction != v13)
        {
          v9 = 0;
          if (lock_timingFunction && v13)
          {
            v14 = 0;
            v15 = 1;
            while (1)
            {
              v16 = v14;
              v20 = 0;
              v21[0] = 0;
              [(CAMediaTimingFunction *)self->_lock_timingFunction getControlPointAtIndex:v15 values:v21];
              [(CAMediaTimingFunction *)v10->_lock_timingFunction getControlPointAtIndex:v15 values:&v20];
              if (vabds_f32(*v21, *&v20) >= 0.00000011921 || vabds_f32(*(v21 + 1), *(&v20 + 1)) >= 0.00000011921)
              {
                goto LABEL_34;
              }

              v14 = 1;
              v15 = 2;
              if (v16)
              {
                goto LABEL_25;
              }
            }
          }

LABEL_35:
          v17 = self < v7;

          if (v17)
          {
            v18 = &v10->_lock;
          }

          else
          {
            v18 = p_lock;
          }

          if (!v17)
          {
            p_lock = &v10->_lock;
          }

          os_unfair_lock_unlock(v18);
          os_unfair_lock_unlock(p_lock);
          goto LABEL_41;
        }

LABEL_25:
        if (vabds_f32(self->_lock_speed, v10->_lock_speed) < 0.00000011921 && vabdd_f64(self->_lock_beginTime, v10->_lock_beginTime) < 2.22044605e-16 && (!self->_isSpring || vabdd_f64(self->_lock_mass, v10->_lock_mass) < 2.22044605e-16 && vabdd_f64(self->_lock_stiffness, v10->_lock_stiffness) < 2.22044605e-16 && vabdd_f64(self->_lock_damping, v10->_lock_damping) < 2.22044605e-16 && vabdd_f64(self->_lock_epsilon, v10->_lock_epsilon) < 2.22044605e-16 && vabdd_f64(self->_lock_initialVelocity, v10->_lock_initialVelocity) < 2.22044605e-16))
        {
          v9 = 1;
          goto LABEL_35;
        }
      }

LABEL_34:
      v9 = 0;
      goto LABEL_35;
    }

    v9 = 0;
  }

LABEL_42:

  return v9;
}

@end