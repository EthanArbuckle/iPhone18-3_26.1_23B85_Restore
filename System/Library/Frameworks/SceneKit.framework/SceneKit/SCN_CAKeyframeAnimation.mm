@interface SCN_CAKeyframeAnimation
- (BOOL)autoreverses;
- (BOOL)commitsOnCompletion;
- (BOOL)isAdditive;
- (BOOL)isCumulative;
- (BOOL)isRemovedOnCompletion;
- (BOOL)usesSceneTimeBase;
- (SCN_CAKeyframeAnimation)initWithCoder:(id)a3;
- (double)duration;
- (double)fadeInDuration;
- (double)fadeOutDuration;
- (double)repeatDuration;
- (double)timeOffset;
- (float)repeatCount;
- (float)speed;
- (id)animationEvents;
- (id)biasValues;
- (id)continuityValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fillMode;
- (id)keyPath;
- (id)keyTimes;
- (id)tensionValues;
- (id)timingFunction;
- (id)timingFunctions;
- (id)values;
- (void)_clearC3DCache;
- (void)_convertToCA;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAdditive:(BOOL)a3;
- (void)setAnimationEvents:(id)a3;
- (void)setAutoreverses:(BOOL)a3;
- (void)setBiasValues:(id)a3;
- (void)setC3dAnimation:(__C3DKeyframedAnimation *)a3;
- (void)setCommitsOnCompletion:(BOOL)a3;
- (void)setContinuityValues:(id)a3;
- (void)setCumulative:(BOOL)a3;
- (void)setDuration:(double)a3;
- (void)setFadeInDuration:(double)a3;
- (void)setFadeOutDuration:(double)a3;
- (void)setFillMode:(id)a3;
- (void)setKeyPath:(id)a3;
- (void)setKeyTimes:(id)a3;
- (void)setRemovedOnCompletion:(BOOL)a3;
- (void)setRepeatCount:(float)a3;
- (void)setRepeatDuration:(double)a3;
- (void)setSpeed:(float)a3;
- (void)setTensionValues:(id)a3;
- (void)setTimeOffset:(double)a3;
- (void)setTimingFunction:(id)a3;
- (void)setTimingFunctions:(id)a3;
- (void)setUsesSceneTimeBase:(BOOL)a3;
- (void)setValues:(id)a3;
@end

@implementation SCN_CAKeyframeAnimation

- (void)dealloc
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    CFRelease(c3dAnimation);
    self->_c3dAnimation = 0;
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v4 dealloc];
}

- (void)_convertToCA
{
  v38 = *MEMORY[0x277D85DE8];
  self->_caReady = 1;
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    v4 = CFRetain(c3dAnimation);
    Controller = C3DKeyframedAnimationGetController(v4);
    ValueType = C3DKeyframeControllerGetValueType(Controller);
    KeyCount = C3DKeyframeControllerGetKeyCount(Controller);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount];
    HasTCB = C3DKeyframeControllerHasTCB(Controller);
    if (KeyCount)
    {
      v11 = !HasTCB;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = 0;
      do
      {
        TensionAtIndex = C3DKeyframeControllerGetTensionAtIndex(Controller, v12);
        ContinuityAtIndex = C3DKeyframeControllerGetContinuityAtIndex(Controller, v12);
        BiasAtIndex = C3DKeyframeControllerGetBiasAtIndex(Controller, v12);
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", TensionAtIndex)}];
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", ContinuityAtIndex)}];
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", BiasAtIndex)}];
        ++v12;
      }

      while (KeyCount != v12);
    }

    v36 = 0u;
    v37 = 0u;
    __dst = 0u;
    v35 = 0u;
    if (C3DKeyframeControllerHasTimingFunctions(Controller))
    {
      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount - 1];
      if (KeyCount == 1)
      {
        *&v23 = C3DAnimationGetDuration(v4);
        goto LABEL_17;
      }

      v32 = v4;
      v33 = self;
      v17 = 0;
      do
      {
        TimingFunctionAtIndex = C3DKeyframeControllerGetTimingFunctionAtIndex(Controller, v17);
        LODWORD(v19) = *TimingFunctionAtIndex;
        LODWORD(v20) = TimingFunctionAtIndex[1];
        LODWORD(v21) = TimingFunctionAtIndex[2];
        LODWORD(v22) = TimingFunctionAtIndex[3];
        [v16 addObject:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithControlPoints::::", v19, v20, v21, v22)}];
        ++v17;
      }

      while (KeyCount - 1 != v17);
      v4 = v32;
    }

    else
    {
      v16 = 0;
    }

    *&v23 = C3DAnimationGetDuration(v4);
    if (!KeyCount)
    {
LABEL_22:
      [(SCN_CAKeyframeAnimation *)self setKeyTimes:v8, v23, v32, v33, __dst, v35, v36, v37];
      [(SCN_CAKeyframeAnimation *)self setValues:v9];
      [(SCN_CAKeyframeAnimation *)self setContinuityValues:0];
      [(SCN_CAKeyframeAnimation *)self setTensionValues:0];
      [(SCN_CAKeyframeAnimation *)self setBiasValues:0];
      [(SCN_CAKeyframeAnimation *)self setTimingFunctions:v16];
      [(SCN_CAKeyframeAnimation *)self setDuration:C3DKeyframeControllerGetDuration(Controller)];
      CAPropertyAnimationSetupWithSCNAnimation(self, v4);
LABEL_24:
      [(SCN_CAKeyframeAnimation *)self setC3dAnimation:v4, v32, v33];
      CFRelease(v4);
      return;
    }

LABEL_17:
    v24 = 0;
    if (*&v23 == 0.0)
    {
      *&v23 = 1.0;
    }

    v25 = *&v23;
    while (1)
    {
      KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(Controller, v24);
      C3DKeyframeControllerGetValueAtIndex(Controller, v24, &__dst);
      [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", KeyTimeAtIndex / v25)}];
      v31 = SCNNSValueFromTypedBytes(&__dst, ValueType, v27, v28, v29, v30);
      if (!v31)
      {
        break;
      }

      [v9 addObject:v31];
      if (KeyCount == ++v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }
}

- (void)_clearC3DCache
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    CFRelease(c3dAnimation);
  }

  self->_c3dAnimation = 0;
}

- (id)values
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 values];
}

- (void)setValues:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setValues:a3];
}

- (id)keyTimes
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 keyTimes];
}

- (void)setKeyTimes:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setKeyTimes:a3];
}

- (id)timingFunctions
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 timingFunctions];
}

- (void)setTimingFunctions:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setTimingFunctions:a3];
}

- (id)tensionValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 tensionValues];
}

- (void)setTensionValues:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setTensionValues:a3];
}

- (id)continuityValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 continuityValues];
}

- (void)setContinuityValues:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setContinuityValues:a3];
}

- (id)biasValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 biasValues];
}

- (void)setBiasValues:(id)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setBiasValues:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_caReady || !self->_c3dAnimation)
  {
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v7 copyWithZone:a3];
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    Copy = C3DAnimationCreateCopy(self->_c3dAnimation);
    [v4 setC3dAnimation:Copy];
    CFRelease(Copy);
    [v4 setKeyPath:{-[SCN_CAKeyframeAnimation keyPath](self, "keyPath")}];
    [v4 setDelegate:{-[SCN_CAKeyframeAnimation delegate](self, "delegate")}];
  }

  return v4;
}

- (id)description
{
  if (self->_caReady)
  {
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 description];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    [(SCN_CAKeyframeAnimation *)self duration];
    return [v4 stringWithFormat:@"SCN_CAKeyframeAnimation %p (duration=%f, keyPath:%@)", self, v5, -[SCN_CAKeyframeAnimation keyPath](self, "keyPath")];
  }
}

- (void)setC3dAnimation:(__C3DKeyframedAnimation *)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation != a3)
  {
    if (c3dAnimation)
    {
      CFRelease(c3dAnimation);
      self->_c3dAnimation = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_c3dAnimation = v6;
  }
}

- (void)setDuration:(double)a3
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      v7 = a3;
      C3DAnimationSetDuration(c3dAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v9 setDuration:a3];
    return;
  }

  v8 = a3;

  C3DAnimationSetDuration(c3dAnimation, v8);
}

- (double)duration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetDuration(self->_c3dAnimation);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v3 duration];
  return result;
}

- (void)setKeyPath:(id)a3
{
  if (!self->_c3dAnimation)
  {
    goto LABEL_5;
  }

  v5 = C3DCreatePathComponentsFromString(a3);
  C3DAnimationSetKeyPath(self->_c3dAnimation, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (self->_caReady)
  {
LABEL_5:
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 setKeyPath:a3];
  }
}

- (id)keyPath
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation && (KeyPath = C3DAnimationGetKeyPath(c3dAnimation)) != 0)
  {
    v5 = C3DCreatePathFromComponents(KeyPath);

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v7 keyPath];
  }
}

- (void)setRepeatCount:(float)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    C3DAnimationSetRepeatCount(c3dAnimation, a3);
  }

  if (self->_caReady)
  {
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    *&v6 = a3;
    [(SCN_CAKeyframeAnimation *)&v7 setRepeatCount:v6];
  }
}

- (float)repeatCount
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetRepeatCount(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 repeatCount];
  }

  return result;
}

- (void)setRepeatDuration:(double)a3
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setRepeatDuration:a3];
}

- (double)repeatDuration
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v4 repeatDuration];
  return result;
}

- (void)setAutoreverses:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetAutoreverses(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setAutoreverses:v3];
    return;
  }

  C3DAnimationSetAutoreverses(c3dAnimation, a3);
}

- (BOOL)autoreverses
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetAutoreverses(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 autoreverses];
  }
}

- (void)setTimeOffset:(double)a3
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetTimeOffset(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setTimeOffset:a3];
    return;
  }

  C3DAnimationSetTimeOffset(c3dAnimation, a3);
}

- (double)timeOffset
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetTimeOffset(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 timeOffset];
  }

  return result;
}

- (void)setSpeed:(float)a3
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetSpeed(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    *&v7 = a3;
    [(SCN_CAKeyframeAnimation *)&v8 setSpeed:v7];
    return;
  }

  C3DAnimationSetSpeed(c3dAnimation, a3);
}

- (float)speed
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetSpeed(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 speed];
  }

  return result;
}

- (void)setFadeInDuration:(double)a3
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      v7 = a3;
      C3DAnimationSetFadeInDuration(c3dAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setFadeInDuration:a3];
    return;
  }

  v8 = a3;

  C3DAnimationSetFadeInDuration(c3dAnimation, v8);
}

- (double)fadeInDuration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetFadeInDuration(self->_c3dAnimation);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(CAAnimation *)&v3 fadeInDuration];
  return result;
}

- (void)setFadeOutDuration:(double)a3
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      v7 = a3;
      C3DAnimationSetFadeOutDuration(c3dAnimation, v7);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setFadeOutDuration:a3];
    return;
  }

  v8 = a3;

  C3DAnimationSetFadeOutDuration(c3dAnimation, v8);
}

- (double)fadeOutDuration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetFadeOutDuration(self->_c3dAnimation);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(CAAnimation *)&v3 fadeOutDuration];
  return result;
}

- (void)setRemovedOnCompletion:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetRemoveOnCompletion(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setRemovedOnCompletion:v3];
    return;
  }

  C3DAnimationSetRemoveOnCompletion(c3dAnimation, a3);
}

- (BOOL)isRemovedOnCompletion
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetRemoveOnCompletion(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isRemovedOnCompletion];
  }
}

- (void)setCommitsOnCompletion:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetCommitWhenDone(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v7 setCommitsOnCompletion:v3];
    return;
  }

  C3DAnimationSetCommitWhenDone(c3dAnimation, a3);
}

- (BOOL)commitsOnCompletion
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetCommitWhenDone(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v6 commitsOnCompletion];
  }
}

- (void)setUsesSceneTimeBase:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetIsSceneTimeBased(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v7 setUsesSceneTimeBase:v3];
    return;
  }

  C3DAnimationSetIsSceneTimeBased(c3dAnimation, a3);
}

- (BOOL)usesSceneTimeBase
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetIsSceneTimeBased(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v6 usesSceneTimeBase];
  }
}

- (void)setFillMode:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = _CAToC3DFillMode(a3);
      C3DAnimationSetFillModeMask(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v8 setFillMode:a3];
    return;
  }

  v7 = _CAToC3DFillMode(a3);

  C3DAnimationSetFillModeMask(c3dAnimation, v7);
}

- (id)fillMode
{
  if (self->_c3dAnimation)
  {
    FillModeMask = C3DAnimationGetFillModeMask(self->_c3dAnimation);

    return _C3DToCAFillMode(FillModeMask);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v4 fillMode];
  }
}

- (void)setAnimationEvents:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = _CAToC3DAnimationEvents(a3);
      C3DAnimationSetAnimationEvents(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8 = [a3 copy];
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setAnimationEvents:v8];

    return;
  }

  v7 = _CAToC3DAnimationEvents(a3);

  C3DAnimationSetAnimationEvents(c3dAnimation, v7);
}

- (id)animationEvents
{
  if (self->_c3dAnimation)
  {
    AnimationEvents = C3DAnimationGetAnimationEvents(self->_c3dAnimation);

    return _C3DToCAAnimationEvents(AnimationEvents);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v4 animationEvents];
  }
}

- (void)setTimingFunction:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = C3DTimingFunctionFromCAMediaTimingFunction(a3);
      C3DAnimationSetTimingFunction(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v8 setTimingFunction:a3];
    return;
  }

  v7 = C3DTimingFunctionFromCAMediaTimingFunction(a3);

  C3DAnimationSetTimingFunction(c3dAnimation, v7);
}

- (id)timingFunction
{
  if (self->_c3dAnimation)
  {
    result = C3DAnimationGetTimingFunction(self->_c3dAnimation);
    if (result)
    {

      return CAMediaTimingFunctionFromC3DTimingFunction(result);
    }
  }

  else
  {
    v3.receiver = self;
    v3.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v3 timingFunction];
  }

  return result;
}

- (void)setAdditive:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetAdditive(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setAdditive:v3];
    return;
  }

  C3DAnimationSetAdditive(c3dAnimation, a3);
}

- (BOOL)isAdditive
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetAdditive(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isAdditive];
  }
}

- (void)setCumulative:(BOOL)a3
{
  v3 = a3;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetCumulative(c3dAnimation, a3);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setCumulative:v3];
    return;
  }

  C3DAnimationSetCumulative(c3dAnimation, a3);
}

- (BOOL)isCumulative
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetCumulative(c3dAnimation);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isCumulative];
  }
}

- (void)encodeWithCoder:(id)a3
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation || (c3dAnimation = CAAnimationToC3DAnimation(self, 0)) != 0)
  {
    v6 = C3DCopyPropertyList(c3dAnimation, 0, 0, 0);
    [a3 encodeObject:v6 forKey:@"c3dAnimation"];
  }

  [(SCN_CAKeyframeAnimation *)self duration];
  [a3 encodeDouble:@"duration" forKey:?];
  [a3 encodeObject:-[SCN_CAKeyframeAnimation keyPath](self forKey:{"keyPath"), @"keyPath"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation isCumulative](self forKey:{"isCumulative"), @"cumulative"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation isAdditive](self forKey:{"isAdditive"), @"additive"}];
  [a3 encodeObject:-[SCN_CAKeyframeAnimation timingFunction](self forKey:{"timingFunction"), @"timingFunction"}];
  [a3 encodeObject:-[SCN_CAKeyframeAnimation fillMode](self forKey:{"fillMode"), @"fillMode"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation usesSceneTimeBase](self forKey:{"usesSceneTimeBase"), @"usesSceneTimeBase"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation commitsOnCompletion](self forKey:{"commitsOnCompletion"), @"commitsOnCompletion"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation isRemovedOnCompletion](self forKey:{"isRemovedOnCompletion"), @"removedOnCompletion"}];
  [a3 encodeBool:-[SCN_CAKeyframeAnimation autoreverses](self forKey:{"autoreverses"), @"autoreverses"}];
  [(SCN_CAKeyframeAnimation *)self fadeInDuration];
  [a3 encodeDouble:@"fadeInDuration" forKey:?];
  [(SCN_CAKeyframeAnimation *)self fadeOutDuration];
  [a3 encodeDouble:@"fadeOutDuration" forKey:?];
  [(SCN_CAKeyframeAnimation *)self speed];
  [a3 encodeDouble:@"speed" forKey:v7];
  [(SCN_CAKeyframeAnimation *)self timeOffset];
  [a3 encodeDouble:@"timeOffset" forKey:?];
  [(SCN_CAKeyframeAnimation *)self repeatCount];
  v9 = v8;

  [a3 encodeDouble:@"repeatCount" forKey:v9];
}

- (SCN_CAKeyframeAnimation)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SCN_CAKeyframeAnimation;
  v4 = [(SCN_CAKeyframeAnimation *)&v11 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [a3 decodeObjectOfClasses:SCNPlistClasses() forKey:@"c3dAnimation"];
    v7 = C3DKeyframedAnimationCreate();
    if (C3DInitWithPropertyList(v7, v6, 0, 0))
    {
      [(SCN_CAKeyframeAnimation *)v4 setC3dAnimation:v7];
      if (v7)
      {
        CFRelease(v7);
      }

      -[SCN_CAKeyframeAnimation setKeyPath:](v4, "setKeyPath:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"]);
      [a3 decodeDoubleForKey:@"duration"];
      [(SCN_CAKeyframeAnimation *)v4 setDuration:?];
      -[SCN_CAKeyframeAnimation setCumulative:](v4, "setCumulative:", [a3 decodeBoolForKey:@"cumulative"]);
      -[SCN_CAKeyframeAnimation setAdditive:](v4, "setAdditive:", [a3 decodeBoolForKey:@"additive"]);
      -[SCN_CAKeyframeAnimation setTimingFunction:](v4, "setTimingFunction:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timingFunction"]);
      -[SCN_CAKeyframeAnimation setFillMode:](v4, "setFillMode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fillMode"]);
      -[SCN_CAKeyframeAnimation setUsesSceneTimeBase:](v4, "setUsesSceneTimeBase:", [a3 decodeBoolForKey:@"usesSceneTimeBase"]);
      -[SCN_CAKeyframeAnimation setCommitsOnCompletion:](v4, "setCommitsOnCompletion:", [a3 decodeBoolForKey:@"commitsOnCompletion"]);
      -[SCN_CAKeyframeAnimation setRemovedOnCompletion:](v4, "setRemovedOnCompletion:", [a3 decodeBoolForKey:@"removedOnCompletion"]);
      -[SCN_CAKeyframeAnimation setAutoreverses:](v4, "setAutoreverses:", [a3 decodeBoolForKey:@"autoreverses"]);
      [a3 decodeDoubleForKey:@"fadeInDuration"];
      [(SCN_CAKeyframeAnimation *)v4 setFadeInDuration:?];
      [a3 decodeDoubleForKey:@"fadeOutDuration"];
      [(SCN_CAKeyframeAnimation *)v4 setFadeOutDuration:?];
      [a3 decodeDoubleForKey:@"speed"];
      *&v8 = v8;
      [(SCN_CAKeyframeAnimation *)v4 setSpeed:v8];
      [a3 decodeDoubleForKey:@"timeOffset"];
      [(SCN_CAKeyframeAnimation *)v4 setTimeOffset:?];
      [a3 decodeDoubleForKey:@"repeatCount"];
      *&v9 = v9;
      [(SCN_CAKeyframeAnimation *)v4 setRepeatCount:v9];
      [SCNTransaction setImmediateMode:v5];
    }

    else
    {
      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }
  }

  return v4;
}

@end