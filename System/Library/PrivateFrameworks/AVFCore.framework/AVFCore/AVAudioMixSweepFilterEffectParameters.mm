@interface AVAudioMixSweepFilterEffectParameters
+ (id)sweepFilterEffectParametersWithMinimumCutOffFrequency:(unsigned int)a3 maximumCutOffFrequency:(unsigned int)a4 bypassThreshold:(float)a5 sweepValue:(float)a6;
- (AVAudioMixSweepFilterEffectParameters)initWithMinimumCutOffFrequency:(unsigned int)a3 maximumCutOffFrequency:(unsigned int)a4 bypassThreshold:(float)a5 sweepValue:(float)a6;
- (BOOL)isEqual:(id)a3;
- (id)sweepFilterEffectWithSweepValue:(float)a3;
- (void)dealloc;
@end

@implementation AVAudioMixSweepFilterEffectParameters

- (AVAudioMixSweepFilterEffectParameters)initWithMinimumCutOffFrequency:(unsigned int)a3 maximumCutOffFrequency:(unsigned int)a4 bypassThreshold:(float)a5 sweepValue:(float)a6
{
  if (a3 >= a4)
  {
    v15 = self;
    v16 = a2;
    v17 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "minimumCutOffFrequency < maximumCutOffFrequency";
    goto LABEL_18;
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v15 = self;
    v16 = a2;
    v26 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "0. <= bypassThreshold && bypassThreshold <= 1.";
    goto LABEL_18;
  }

  if (a6 < 0.0 || a6 > 1.0)
  {
    v15 = self;
    v16 = a2;
    v27 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "0. <= sweepValue && sweepValue <= 1.";
LABEL_18:
    v28 = [v23 exceptionWithName:v24 reason:AVMethodExceptionReasonWithObjectAndSelector(v15 userInfo:{v16, @"invalid parameter not satisfying: %s", v18, v19, v20, v21, v22, v25), 0}];
    objc_exception_throw(v28);
  }

  v29.receiver = self;
  v29.super_class = AVAudioMixSweepFilterEffectParameters;
  v12 = [(AVAudioMixEffect *)&v29 init];
  if (v12)
  {
    v13 = objc_alloc_init(AVAudioMixSweepFilterEffectParametersInternal);
    v12->_sweepFilterAudioEffect = v13;
    if (v13)
    {
      CFRetain(v13);
      v12->_sweepFilterAudioEffect->minimumCutOffFrequency = a3;
      v12->_sweepFilterAudioEffect->maximumCutOffFrequency = a4;
      v12->_sweepFilterAudioEffect->bypassThreshold = a5;
      v12->_sweepFilterAudioEffect->sweepValue = a6;
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

+ (id)sweepFilterEffectParametersWithMinimumCutOffFrequency:(unsigned int)a3 maximumCutOffFrequency:(unsigned int)a4 bypassThreshold:(float)a5 sweepValue:(float)a6
{
  v8 = *&a4;
  v9 = *&a3;
  v10 = [a1 alloc];
  *&v11 = a5;
  *&v12 = a6;
  v13 = [v10 initWithMinimumCutOffFrequency:v9 maximumCutOffFrequency:v8 bypassThreshold:v11 sweepValue:v12];

  return v13;
}

- (id)sweepFilterEffectWithSweepValue:(float)a3
{
  v5 = objc_opt_class();
  sweepFilterAudioEffect = self->_sweepFilterAudioEffect;
  v7 = sweepFilterAudioEffect[2];
  v8 = sweepFilterAudioEffect[3];
  LODWORD(v9) = sweepFilterAudioEffect[4];
  *&v10 = a3;

  return [v5 sweepFilterEffectParametersWithMinimumCutOffFrequency:v7 maximumCutOffFrequency:v8 bypassThreshold:v9 sweepValue:v10];
}

- (void)dealloc
{
  sweepFilterAudioEffect = self->_sweepFilterAudioEffect;
  if (sweepFilterAudioEffect)
  {

    CFRelease(self->_sweepFilterAudioEffect);
  }

  v4.receiver = self;
  v4.super_class = AVAudioMixSweepFilterEffectParameters;
  [(AVAudioMixSweepFilterEffectParameters *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(AVAudioMixSweepFilterEffectParameters *)self sweepValue];
  v6 = v5;
  [a3 sweepValue];
  if (v6 != v7)
  {
    return 0;
  }

  v8 = [(AVAudioMixSweepFilterEffectParameters *)self minimumCutOffFrequency];
  if (v8 != [a3 minimumCutOffFrequency])
  {
    return 0;
  }

  v9 = [(AVAudioMixSweepFilterEffectParameters *)self maximumCutOffFrequency];
  if (v9 != [a3 maximumCutOffFrequency])
  {
    return 0;
  }

  [(AVAudioMixSweepFilterEffectParameters *)self bypassThreshold];
  v11 = v10;
  [a3 bypassThreshold];
  return v11 == v12;
}

@end