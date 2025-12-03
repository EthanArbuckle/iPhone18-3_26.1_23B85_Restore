@interface AVAudioMixSweepFilterEffectParameters
+ (id)sweepFilterEffectParametersWithMinimumCutOffFrequency:(unsigned int)frequency maximumCutOffFrequency:(unsigned int)offFrequency bypassThreshold:(float)threshold sweepValue:(float)value;
- (AVAudioMixSweepFilterEffectParameters)initWithMinimumCutOffFrequency:(unsigned int)frequency maximumCutOffFrequency:(unsigned int)offFrequency bypassThreshold:(float)threshold sweepValue:(float)value;
- (BOOL)isEqual:(id)equal;
- (id)sweepFilterEffectWithSweepValue:(float)value;
- (void)dealloc;
@end

@implementation AVAudioMixSweepFilterEffectParameters

- (AVAudioMixSweepFilterEffectParameters)initWithMinimumCutOffFrequency:(unsigned int)frequency maximumCutOffFrequency:(unsigned int)offFrequency bypassThreshold:(float)threshold sweepValue:(float)value
{
  if (frequency >= offFrequency)
  {
    selfCopy5 = self;
    v16 = a2;
    selfCopy2 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "minimumCutOffFrequency < maximumCutOffFrequency";
    goto LABEL_18;
  }

  if (threshold < 0.0 || threshold > 1.0)
  {
    selfCopy5 = self;
    v16 = a2;
    selfCopy4 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "0. <= bypassThreshold && bypassThreshold <= 1.";
    goto LABEL_18;
  }

  if (value < 0.0 || value > 1.0)
  {
    selfCopy5 = self;
    v16 = a2;
    selfCopy6 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "0. <= sweepValue && sweepValue <= 1.";
LABEL_18:
    v28 = [v23 exceptionWithName:v24 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy5 userInfo:{v16, @"invalid parameter not satisfying: %s", v18, v19, v20, v21, v22, v25), 0}];
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
      v12->_sweepFilterAudioEffect->minimumCutOffFrequency = frequency;
      v12->_sweepFilterAudioEffect->maximumCutOffFrequency = offFrequency;
      v12->_sweepFilterAudioEffect->bypassThreshold = threshold;
      v12->_sweepFilterAudioEffect->sweepValue = value;
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

+ (id)sweepFilterEffectParametersWithMinimumCutOffFrequency:(unsigned int)frequency maximumCutOffFrequency:(unsigned int)offFrequency bypassThreshold:(float)threshold sweepValue:(float)value
{
  v8 = *&offFrequency;
  v9 = *&frequency;
  v10 = [self alloc];
  *&v11 = threshold;
  *&v12 = value;
  v13 = [v10 initWithMinimumCutOffFrequency:v9 maximumCutOffFrequency:v8 bypassThreshold:v11 sweepValue:v12];

  return v13;
}

- (id)sweepFilterEffectWithSweepValue:(float)value
{
  v5 = objc_opt_class();
  sweepFilterAudioEffect = self->_sweepFilterAudioEffect;
  v7 = sweepFilterAudioEffect[2];
  v8 = sweepFilterAudioEffect[3];
  LODWORD(v9) = sweepFilterAudioEffect[4];
  *&v10 = value;

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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(AVAudioMixSweepFilterEffectParameters *)self sweepValue];
  v6 = v5;
  [equal sweepValue];
  if (v6 != v7)
  {
    return 0;
  }

  minimumCutOffFrequency = [(AVAudioMixSweepFilterEffectParameters *)self minimumCutOffFrequency];
  if (minimumCutOffFrequency != [equal minimumCutOffFrequency])
  {
    return 0;
  }

  maximumCutOffFrequency = [(AVAudioMixSweepFilterEffectParameters *)self maximumCutOffFrequency];
  if (maximumCutOffFrequency != [equal maximumCutOffFrequency])
  {
    return 0;
  }

  [(AVAudioMixSweepFilterEffectParameters *)self bypassThreshold];
  v11 = v10;
  [equal bypassThreshold];
  return v11 == v12;
}

@end