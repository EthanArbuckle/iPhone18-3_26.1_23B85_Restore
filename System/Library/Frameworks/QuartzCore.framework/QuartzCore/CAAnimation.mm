@interface CAAnimation
+ (BOOL)CA_encodesPropertyConditionally:(unsigned int)conditionally type:(int)type;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (CAAnimation)animation;
+ (id)defaultValueForKey:(NSString *)key;
+ (void)CAMLParserStartElement:(id)element;
- (BOOL)CAMLTypeSupportedForKey:(id)key;
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (BOOL)autoreverses;
- (BOOL)discretizesTime;
- (BOOL)isCompleteForTime:(double)time;
- (BOOL)isEnabled;
- (BOOL)isRemovedOnCompletion;
- (BOOL)shouldArchiveValueForKey:(NSString *)key;
- (CAFrameRateRange)preferredFrameRateRange;
- (CAMediaTimingFunction)timingFunction;
- (NSString)beginTimeMode;
- (NSString)fillMode;
- (double)beginTime;
- (double)duration;
- (double)frameInterval;
- (double)repeatDuration;
- (double)timeOffset;
- (float)preferredFrameRateRangeMaximum;
- (float)preferredFrameRateRangeMinimum;
- (float)preferredFrameRateRangePreferred;
- (float)repeatCount;
- (float)speed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)delegate;
- (id)valueForKey:(id)key;
- (id)valueForUndefinedKey:(id)key;
- (unsigned)highFrameRateReason;
- (void)dealloc;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBeginTime:(double)time;
- (void)setBeginTimeMode:(id)mode;
- (void)setDefaultDuration:(double)duration;
- (void)setDelegate:(id)delegate;
- (void)setDiscretizesTime:(BOOL)time;
- (void)setDuration:(double)duration;
- (void)setEnabled:(BOOL)enabled;
- (void)setFillMode:(id)mode;
- (void)setFrameInterval:(double)interval;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange;
- (void)setPreferredFrameRateRangeMaximum:(float)maximum;
- (void)setPreferredFrameRateRangeMinimum:(float)minimum;
- (void)setPreferredFrameRateRangePreferred:(float)preferred;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setRemovedOnCompletion:(BOOL)removedOnCompletion;
- (void)setRepeatCount:(float)count;
- (void)setRepeatDuration:(double)duration;
- (void)setSpeed:(float)speed;
- (void)setTimeOffset:(double)offset;
- (void)setTimingFunction:(CAMediaTimingFunction *)timingFunction;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation CAAnimation

- (double)duration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 211, 0x12, v3);
  return *v3;
}

- (id)delegate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 182, 2, v3);
  return v3[0];
}

- (BOOL)isRemovedOnCompletion
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 601, 7, &v3);
  return v3 != 0;
}

+ (CAAnimation)animation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (double)beginTime
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 65, 0x12, v3);
  return *v3;
}

- (double)timeOffset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 705, 0x12, v3);
  return *v3;
}

- (double)repeatDuration
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 605, 0x12, v3);
  return *v3;
}

- (float)speed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 671, 0x11, &v3);
  return v3;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_attr)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v3)
    {
      v3 = CA::Transaction::create(self);
    }

    v4 = *(v3 + 29);
    *(v3 + 29) = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    attr = self->_attr;
    if (attr)
    {
      CA::AttrList::free(attr, a2);
    }

    self->_attr = 0;
    CA::Transaction::unlock(v3);
  }

  CAMediaTimingInvalidate(self);
  v6.receiver = self;
  v6.super_class = CAAnimation;
  [(CAAnimation *)&v6 dealloc];
}

- (BOOL)autoreverses
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 56, 7, &v3);
  return v3 != 0;
}

- (NSString)fillMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 250, 3, v3);
  return v3[0];
}

- (float)repeatCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 604, 0x11, &v3);
  return v3;
}

- (unsigned)highFrameRateReason
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 300, 0xC, &v3);
  return v3;
}

- (NSString)beginTimeMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 66, 3, v3);
  return v3[0];
}

- (BOOL)isEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 234, 7, &v3);
  return v3 != 0;
}

- (CAMediaTimingFunction)timingFunction
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 706, 2, v3);
  return v3[0];
}

- (CAFrameRateRange)preferredFrameRateRange
{
  [(CAAnimation *)self preferredFrameRateRangeMinimum];
  v4 = v3;
  [(CAAnimation *)self preferredFrameRateRangeMaximum];
  v6 = v5;
  [(CAAnimation *)self preferredFrameRateRangePreferred];
  v8 = v7;
  v9 = v4;
  v10 = v6;
  result.preferred = v8;
  result.maximum = v10;
  result.minimum = v9;
  return result;
}

- (float)preferredFrameRateRangeMinimum
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 574, 0x11, &v3);
  return v3;
}

- (float)preferredFrameRateRangeMaximum
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 573, 0x11, &v3);
  return v3;
}

- (float)preferredFrameRateRangePreferred
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 575, 0x11, &v3);
  return v3;
}

- (BOOL)discretizesTime
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 201, 7, &v3);
  return v3 != 0;
}

- (void)setPreferredFrameRateRangePreferred:(float)preferred
{
  v4 = *MEMORY[0x1E69E9840];
  preferredCopy = preferred;
  CAAnimation_setter(self, 0x23F, 17, &preferredCopy);
}

- (void)setPreferredFrameRateRangeMaximum:(float)maximum
{
  v4 = *MEMORY[0x1E69E9840];
  maximumCopy = maximum;
  CAAnimation_setter(self, 0x23D, 17, &maximumCopy);
}

- (void)setPreferredFrameRateRangeMinimum:(float)minimum
{
  v4 = *MEMORY[0x1E69E9840];
  minimumCopy = minimum;
  CAAnimation_setter(self, 0x23E, 17, &minimumCopy);
}

- (void)setDelegate:(id)delegate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = delegate;
  CAAnimation_setter(self, 0xB6, 2, v3);
}

- (void)setTimingFunction:(CAMediaTimingFunction *)timingFunction
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = timingFunction;
  CAAnimation_setter(self, 0x2C2, 2, v3);
}

- (void)setRemovedOnCompletion:(BOOL)removedOnCompletion
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = removedOnCompletion;
  CAAnimation_setter(self, 0x259, 7, &v3);
}

- (void)setFillMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = mode;
  CAAnimation_setter(self, 0xFA, 3, v3);
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  v4 = *MEMORY[0x1E69E9840];
  autoreversesCopy = autoreverses;
  CAAnimation_setter(self, 0x38, 7, &autoreversesCopy);
}

- (void)setRepeatDuration:(double)duration
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = duration;
  CAAnimation_setter(self, 0x25D, 18, v3);
}

- (void)setRepeatCount:(float)count
{
  v4 = *MEMORY[0x1E69E9840];
  countCopy = count;
  CAAnimation_setter(self, 0x25C, 17, &countCopy);
}

- (void)setSpeed:(float)speed
{
  v4 = *MEMORY[0x1E69E9840];
  speedCopy = speed;
  CAAnimation_setter(self, 0x29F, 17, &speedCopy);
}

- (void)setDuration:(double)duration
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = duration;
  CAAnimation_setter(self, 0xD3, 18, v3);
}

- (void)setTimeOffset:(double)offset
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = offset;
  CAAnimation_setter(self, 0x2C1, 18, v3);
}

- (void)setBeginTime:(double)time
{
  v3[1] = *MEMORY[0x1E69E9840];
  *v3 = time;
  CAAnimation_setter(self, 0x41, 18, v3);
}

- (id)debugDescription
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  string = [MEMORY[0x1E696AD60] string];
  v5 = objc_opt_class();
  [(__CFString *)string appendFormat:@"<%@:%p; ", NSStringFromClass(v5), self];
  v6 = *(v3 + 29);
  *(v3 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  attr = self->_attr;
  if (attr)
  {
    CA::AttrList::append_description(*attr, string);
  }

  CA::Transaction::unlock(v3);
  [(__CFString *)string appendString:@">"];
  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v4;
  if (v4)
  {
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(v4);
    }

    *(v6 + 4) = 0;
    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v9 = *(v6 + 1);
    if (v9)
    {
      CA::AttrList::free(v9, v5);
    }

    attr = self->_attr;
    if (attr)
    {
      v11 = *(attr + 1) & 7;
      if (v11 == 7)
      {
        attr = CA::AttrList::copy_(attr);
      }

      else
      {
        *(attr + 1) = *(attr + 1) & 0xFFFFFFFFFFFFFFF8 | (v11 + 1);
      }
    }

    *(v6 + 1) = attr;
    CA::Transaction::unlock(v7);
  }

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = value;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(self);
  }

  v7 = CAInternAtom(key, 1);
  [(CAAnimation *)self willChangeValueForKey:key, v10[0]];
  v8 = *(v6 + 29);
  *(v6 + 29) = v8 + 1;
  if (!v8)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  attr = self->_attr;
  if (!attr)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    attr = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  self->_attr = CA::AttrList::set(attr, v7, 2, v10);
  CA::Transaction::unlock(v6);

  [(CAAnimation *)self didChangeValueForKey:key];
}

- (id)valueForUndefinedKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = CAInternAtom(key, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  attr = self->_attr;
  if (attr)
  {
    v11[0] = 0;
    v9 = CA::AttrList::get(attr, v6, 1, v11);
    CA::Transaction::unlock(v5);
    if (v9)
    {
      return v11[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CA::Transaction::unlock(v5);
    return 0;
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  v7 = +[CAAnimation superclass];

  CAObject_setValueForKey(self, v7, value, key);
}

- (id)valueForKey:(id)key
{
  v5 = +[CAAnimation superclass];

  return CAObject_valueForKey(self, v5, key);
}

- (BOOL)shouldArchiveValueForKey:(NSString *)key
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = CAInternAtom(key, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  attr = self->_attr;
  if (attr)
  {
    while (1)
    {
      attr = *attr;
      v9 = attr != 0;
      if (!attr)
      {
        break;
      }

      if ((attr[2] & 0xFFFFFF) == v6)
      {
        v9 = 1;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  CA::Transaction::unlock(v5);
  return v9;
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)preferredFrameRateRange
{
  preferred = preferredFrameRateRange.preferred;
  maximum = preferredFrameRateRange.maximum;
  minimum = preferredFrameRateRange.minimum;
  if (!CAFrameRateRangeIsValid(preferredFrameRateRange.minimum, preferredFrameRateRange.maximum, preferredFrameRateRange.preferred))
  {
    preferred = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid range (minimum: %.2f maximum: %.2f preferred: %.2f)", minimum, maximum, preferred];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:preferred userInfo:0]);
  }

  *&v7 = minimum;
  [(CAAnimation *)self setPreferredFrameRateRangeMinimum:v7];
  *&v8 = maximum;
  [(CAAnimation *)self setPreferredFrameRateRangeMaximum:v8];
  *&v9 = preferred;

  [(CAAnimation *)self setPreferredFrameRateRangePreferred:v9];
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  *(animation + 2) = self;
  v6 = CAMediaTimingCopyRenderTiming(self);
  if (v6)
  {
    v7 = *(animation + 5);
    if (v7 != v6)
    {
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      v8 = v6;
      if (!atomic_fetch_add(v6 + 2, 1u))
      {
        v8 = 0;
        atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
      }

      *(animation + 5) = v8;
    }
  }

  v9 = [(CAAnimation *)self isEnabled:v23];
  if ([(CAAnimation *)self isRemovedOnCompletion])
  {
    v10 = v9 | 8;
  }

  else
  {
    v10 = v9;
  }

  timingFunction = [(CAAnimation *)self timingFunction];
  if (timingFunction)
  {
    [(CAMediaTimingFunction *)timingFunction _getPoints:&v23];
    v13 = CA::Render::Vector::new_vector(4, &v23, v12);
    v14 = *(animation + 6);
    if (v14 != v13)
    {
      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v14 + 16))(v14);
      }

      if (v13)
      {
        v15 = v13;
        if (!atomic_fetch_add(v13 + 2, 1u))
        {
          v15 = 0;
          atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
        }
      }

      else
      {
        v15 = 0;
      }

      *(animation + 6) = v15;
    }

    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }
  }

  [(CAAnimation *)self preferredFrameRateRange];
  *(animation + 6) = v16;
  *(animation + 7) = v17;
  *(animation + 8) = v18;
  if (CAHighFrameRateRestrictionEnabled(void)::once != -1)
  {
    dispatch_once(&CAHighFrameRateRestrictionEnabled(void)::once, &__block_literal_global_6_18959);
  }

  if (CAHighFrameRateRestrictionEnabled(void)::enabled == 1)
  {
    highFrameRateReason = [(CAAnimation *)self highFrameRateReason];
    v10 |= 0x8000u;
    if (!highFrameRateReason)
    {
      if (CADeviceDisableMinimumFrameDurationOnPhone::once != -1)
      {
        dispatch_once(&CADeviceDisableMinimumFrameDurationOnPhone::once, &__block_literal_global_165);
      }

      if (CADeviceDisableMinimumFrameDurationOnPhone::disabled)
      {
        highFrameRateReason = 65537;
      }

      else
      {
        highFrameRateReason = 0;
      }
    }

    *(animation + 22) = highFrameRateReason;
  }

  if (byte_1ED4E9848 == 1)
  {
    *(animation + 3) = vdup_n_s32(0x42F00000u);
    *(animation + 8) = 1123024896;
    if (!*(animation + 22))
    {
      *(animation + 22) = 1;
    }
  }

  discretizesTime = [(CAAnimation *)self discretizesTime];
  v21 = v10 | 0x80;
  if (!discretizesTime)
  {
    v21 = v10;
  }

  if (v21)
  {
    *(animation + 3) |= v21 << 8;
  }

  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  return 1;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v4 = objc_opt_class();

  return CAObject_automaticallyNotifiesObserversForKey(v4, key);
}

+ (BOOL)CA_encodesPropertyConditionally:(unsigned int)conditionally type:(int)type
{
  v4 = conditionally == 182;
  if (type == 4)
  {
    v4 = 1;
  }

  return type == 1 || v4;
}

+ (id)defaultValueForKey:(NSString *)key
{
  v3 = CAInternAtom(key, 1);
  if (v3 > 249)
  {
    if (v3 > 670)
    {
      if (v3 == 725)
      {
        return @"fade";
      }

      if (v3 == 671)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 250)
      {
        return @"removed";
      }

      if (v3 == 601)
      {
        return *MEMORY[0x1E695E4D0];
      }
    }

    return 0;
  }

  if (v3 > 233)
  {
    if (v3 != 234)
    {
      if (v3 != 238)
      {
        return 0;
      }

LABEL_15:
      result = +[CAAnimation defaultValueForKey:]::one;
      if (!+[CAAnimation defaultValueForKey:]::one)
      {
        result = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
        +[CAAnimation defaultValueForKey:]::one = result;
      }

      return result;
    }

    return *MEMORY[0x1E695E4D0];
  }

  if (v3 != 66)
  {
    if (v3 == 88)
    {
      return @"linear";
    }

    return 0;
  }

  return @"non-zero";
}

- (BOOL)isCompleteForTime:(double)time
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = time;
  return mapAnimationTime(self, v5, &v4) ^ 1;
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  v4 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  CAAnimation_setter(self, 0x12C, 12, &reasonCopy);
}

- (void)setBeginTimeMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = mode;
  CAAnimation_setter(self, 0x42, 3, v3);
}

- (void)setDiscretizesTime:(BOOL)time
{
  v4 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  CAAnimation_setter(self, 0xC9, 7, &timeCopy);
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  CAAnimation_setter(self, 0xEA, 7, &enabledCopy);
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  *&v3 = second;
  *&v4 = second;
  *&v5 = second;
  [(CAAnimation *)self setPreferredFrameRateRange:v3, v4, v5];
}

- (double)frameInterval
{
  [(CAAnimation *)self preferredFrameRateRangePreferred];
  if (v2)
  {
    return 1.0 / v2;
  }

  else
  {
    return 0.0;
  }
}

- (void)setFrameInterval:(double)interval
{
  v5 = 0.0;
  if (interval != 0.0)
  {
    v3 = 1.0;
    v5 = 1.0 / interval;
    interval = round(1.0 / interval);
    LODWORD(v5) = 1.0;
    if (interval >= 1.0)
    {
      *&v5 = interval;
    }
  }

  LODWORD(interval) = LODWORD(v5);
  LODWORD(v3) = LODWORD(v5);
  [(CAAnimation *)self setPreferredFrameRateRange:v5, interval, v3];
}

- (BOOL)CAMLTypeSupportedForKey:(id)key
{
  os_unfair_lock_lock(&[CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::lock);
  v5 = [CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::keys;
  if (![CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::keys)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::keys = v5;
  }

  if (([v5 containsObject:key] & 1) == 0)
  {
    if (!CAObject_CAMLTypeSupportedForKey(self, key))
    {
      v6 = 0;
      goto LABEL_8;
    }

    [-[CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::keys addObject:key];
  }

  v6 = 1;
LABEL_8:
  os_unfair_lock_unlock(&[CAAnimation(CAAnimationPrivate) CAMLTypeSupportedForKey:]::lock);
  return v6;
}

- (void)setDefaultDuration:(double)duration
{
  [(CAAnimation *)self duration];
  if (v5 <= 0.0)
  {

    [(CAAnimation *)self setDuration:duration];
  }
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = objc_alloc_init(self);
  [element setElementValue:v4];
}

@end