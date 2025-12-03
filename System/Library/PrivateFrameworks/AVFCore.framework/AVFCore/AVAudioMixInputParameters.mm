@interface AVAudioMixInputParameters
- (AVAudioMixInputParameters)init;
- (BOOL)getAmbienceLevelRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getAmbienceLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getDialogLevelRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getDialogLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getDialogMixBiasRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getRecordingLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getRenderingStyleRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range;
- (BOOL)getVolumeRampForTime:(id *)time startVolume:(float *)volume endVolume:(float *)endVolume timeRange:(id *)range rampMode:(int64_t *)mode;
- (BOOL)isEqual:(id)equal;
- (id)_figAudioCurves;
- (id)_figProcessingEffectsScheduledParameters;
- (id)_scheduledAudioParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectParameters;
- (id)effects;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setScheduledAudioParameters:(id)parameters;
- (void)_setVolume:(float)volume atTime:(id *)time;
- (void)_setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
- (void)addEffect:(id)effect;
- (void)checkEffectPrecondition:(id)precondition;
- (void)checkEffectsPrecondition:(id)precondition;
- (void)dealloc;
- (void)setAmbienceLevel:(float)level atTime:(id *)time;
- (void)setAmbienceLoudness:(float)loudness atTime:(id *)time;
- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor;
- (void)setAudioTimePitchAlgorithm:(id)algorithm;
- (void)setDialogLevel:(float)level atTime:(id *)time;
- (void)setDialogLoudness:(float)loudness atTime:(id *)time;
- (void)setDialogMixBias:(float)bias atTime:(id *)time;
- (void)setEffectParameters:(id)parameters;
- (void)setRecordingLoudness:(float)loudness atTime:(id *)time;
- (void)setRenderingStyle:(float)style atTime:(id *)time;
- (void)setVolume:(float)volume atTime:(id *)time;
- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range;
- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
@end

@implementation AVAudioMixInputParameters

- (AVAudioMixInputParameters)init
{
  v5.receiver = self;
  v5.super_class = AVAudioMixInputParameters;
  v2 = [(AVAudioMixInputParameters *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVAudioMixInputParametersInternal);
    v2->_inputParameters = v3;
    if (v3)
    {
      CFRetain(v3);
      v2->_inputParameters->scheduledAudioParameters = 0;
      v2->_inputParameters->trackID = 0;
      v2->_inputParameters->tap = 0;
      v2->_inputParameters->effects = [MEMORY[0x1E695DF70] array];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  inputParameters = self->_inputParameters;
  if (inputParameters)
  {
    tap = inputParameters->tap;
    if (tap)
    {
      CFRelease(tap);
      inputParameters = self->_inputParameters;
    }

    CFRelease(self->_inputParameters);
  }

  v5.receiver = self;
  v5.super_class = AVAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, track ID = %d, audioTimePitchAlgorithm: %@, audioTapProcessor: %p, volume mix: %@>", NSStringFromClass(v4), self, -[AVAudioMixInputParameters trackID](self, "trackID"), -[AVAudioMixInputParameters audioTimePitchAlgorithm](self, "audioTimePitchAlgorithm"), -[AVAudioMixInputParameters audioTapProcessor](self, "audioTapProcessor"), -[AVAudioMixInputParameters _volumeCurveAsString](self, "_volumeCurveAsString")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(AVAudioMixInputParameters *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [[AVAudioMixInputParameters allocWithZone:?]];
    v6 = v5;
    if (v5)
    {
      [(AVAudioMixInputParameters *)v5 setTrackID:self->_inputParameters->trackID];
      [(AVAudioMixInputParameters *)v6 _setScheduledAudioParameters:self->_inputParameters->scheduledAudioParameters];
      [(AVAudioMixInputParameters *)v6 setAudioTimePitchAlgorithm:self->_inputParameters->audioTimePitchAlgorithm];
      [(AVAudioMixInputParameters *)v6 setAudioTapProcessor:self->_inputParameters->tap];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      effects = self->_inputParameters->effects;
      v8 = [(NSMutableArray *)effects countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(effects);
            }

            [(AVAudioMixInputParameters *)v6 addEffect:*(*(&v13 + 1) + 8 * i)];
          }

          v9 = [(NSMutableArray *)effects countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    return v6;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(AVAudioMixInputParameters *)[AVMutableAudioMixInputParameters allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    [(AVMutableAudioMixInputParameters *)v4 setTrackID:self->_inputParameters->trackID];
    [(AVAudioMixInputParameters *)v5 _setScheduledAudioParameters:self->_inputParameters->scheduledAudioParameters];
    [(AVMutableAudioMixInputParameters *)v5 setAudioTimePitchAlgorithm:self->_inputParameters->audioTimePitchAlgorithm];
    [(AVMutableAudioMixInputParameters *)v5 setAudioTapProcessor:self->_inputParameters->tap];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    effects = self->_inputParameters->effects;
    v7 = [(NSMutableArray *)effects countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(effects);
          }

          [(AVMutableAudioMixInputParameters *)v5 addEffect:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)effects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  inputParameters = self->_inputParameters;
  v6 = *(equal + 1);
  if (inputParameters->trackID != *(v6 + 8))
  {
    goto LABEL_12;
  }

  scheduledAudioParameters = inputParameters->scheduledAudioParameters;
  v8 = *(v6 + 16);
  if (scheduledAudioParameters)
  {
    v9 = [(AVScheduledAudioParameters *)scheduledAudioParameters isEqual:v8];
    if (!v9)
    {
      return v9;
    }

    inputParameters = self->_inputParameters;
  }

  else if (v8)
  {
    goto LABEL_12;
  }

  audioTimePitchAlgorithm = inputParameters->audioTimePitchAlgorithm;
  v11 = *(equal + 1);
  v12 = v11[3];
  if (audioTimePitchAlgorithm)
  {
    v9 = [(NSString *)audioTimePitchAlgorithm isEqualToString:v12];
    if (!v9)
    {
      return v9;
    }

    inputParameters = self->_inputParameters;
    v11 = *(equal + 1);
    goto LABEL_11;
  }

  if (v12)
  {
LABEL_12:
    LOBYTE(v9) = 0;
    return v9;
  }

LABEL_11:
  if (inputParameters->tap != v11[4])
  {
    goto LABEL_12;
  }

  effects = inputParameters->effects;
  if (effects == v11[5] || (v9 = [(NSMutableArray *)effects isEqual:?]) != 0)
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (unint64_t)hash
{
  inputParameters = self->_inputParameters;
  trackID = inputParameters->trackID;
  v5 = [(AVScheduledAudioParameters *)inputParameters->scheduledAudioParameters hash];
  v6 = self->_inputParameters;
  tap = v6->tap;
  if (tap)
  {
    v8 = CFHash(tap);
    v6 = self->_inputParameters;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 ^ trackID ^ v8 ^ [(NSString *)v6->audioTimePitchAlgorithm hash];
  return v9 ^ [(NSMutableArray *)self->_inputParameters->effects hash];
}

- (void)setAudioTimePitchAlgorithm:(id)algorithm
{
  v4 = [algorithm copy];

  self->_inputParameters->audioTimePitchAlgorithm = v4;
}

- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor
{
  if (processor)
  {
    CFRetain(processor);
  }

  inputParameters = self->_inputParameters;
  tap = inputParameters->tap;
  if (tap)
  {
    CFRelease(tap);
    inputParameters = self->_inputParameters;
  }

  inputParameters->tap = processor;
}

- (void)checkEffectPrecondition:(id)precondition
{
  if (precondition && ([precondition isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(precondition, "isMemberOfClass:", objc_opt_class()) & 1) == 0 && (objc_msgSend(precondition, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Sent unknown effect type", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }
}

- (id)effectParameters
{
  result = [(NSMutableArray *)self->_inputParameters->effects count];
  if (result)
  {
    v4 = [(NSMutableArray *)self->_inputParameters->effects objectAtIndexedSubscript:0];

    return v4;
  }

  return result;
}

- (void)setEffectParameters:(id)parameters
{
  [(AVAudioMixInputParameters *)self checkEffectPrecondition:?];
  v6 = [parameters copy];
  [(NSMutableArray *)self->_inputParameters->effects removeAllObjects];
  v5 = v6;
  if (v6)
  {
    [(NSMutableArray *)self->_inputParameters->effects addObject:v6];
    v5 = v6;
  }
}

- (id)effects
{
  v2 = self->_inputParameters->effects;

  return v2;
}

- (void)checkEffectsPrecondition:(id)precondition
{
  [(AVAudioMixInputParameters *)self checkEffectPrecondition:?];
  v6 = [precondition isMemberOfClass:objc_opt_class()];
  effects = [(AVAudioMixInputParameters *)self effects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AVAudioMixInputParameters_checkEffectsPrecondition___block_invoke;
  v15[3] = &unk_1E7464B68;
  v16 = v6;
  v15[4] = precondition;
  if ([objc_msgSend(effects indexesOfObjectsPassingTest:{v15), "count"}])
  {
    if (v6)
    {
      v13 = @"Sent same instance of AVAudioMixProcessingEffect multiple times";
    }

    else
    {
      v13 = @"Sent multiple instance of an effect type";
    }

    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v8, v9, v10, v11, v12, v15[0]), 0}];
    objc_exception_throw(v14);
  }
}

uint64_t __54__AVAudioMixInputParameters_checkEffectsPrecondition___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 isEqual:a2];
  }

  else
  {
    v5 = objc_opt_class();

    return [v2 isMemberOfClass:v5];
  }
}

- (void)addEffect:(id)effect
{
  [(AVAudioMixInputParameters *)self checkEffectsPrecondition:?];
  v5 = [effect copy];
  [(NSMutableArray *)self->_inputParameters->effects addObject:v5];
}

- (void)_setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (!scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
    scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  }

  v12 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v12;
  *&v12 = endVolume;
  [(AVMutableScheduledAudioParameters *)scheduledAudioParameters setVolumeRampFromStartVolume:v13 toEndVolume:mode == 1 timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&range->var1.var1) rampMode:LODWORD(volume))), *&v12];
}

- (void)_setVolume:(float)volume atTime:(id *)time
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (!scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
    scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  }

  v8 = *&time->var0;
  var3 = time->var3;
  [(AVMutableScheduledAudioParameters *)scheduledAudioParameters setVolume:&v8 atTime:COERCE_DOUBLE(__PAIR64__(DWORD1(v8), LODWORD(volume)))];
}

- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a volume ramp must have a numeric start time and a numeric duration.", v5, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v10;
  v12[2] = *&range->var1.var1;
  [AVAudioMixInputParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:0 rampMode:?];
}

- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a volume ramp must have a numeric start time and a numeric duration.", mode, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v10;
  v12[2] = *&range->var1.var1;
  [AVAudioMixInputParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:mode rampMode:?];
}

- (void)setVolume:(float)volume atTime:(id *)time
{
  if ((time->var2 & 0x1D) != 1)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a volume setting must be numeric.", v4, v5, v6, v7, v8, v10.var0), 0}];
    objc_exception_throw(v9);
  }

  v10 = *time;
  [(AVAudioMixInputParameters *)self _setVolume:&v10 atTime:?];
}

- (BOOL)getVolumeRampForTime:(id *)time startVolume:(float *)volume endVolume:(float *)endVolume timeRange:(id *)range rampMode:(int64_t *)mode
{
  v11 = 0;
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (scheduledAudioParameters)
  {
    v10 = *time;
    LODWORD(scheduledAudioParameters) = [(AVScheduledAudioParameters *)scheduledAudioParameters getVolumeRampForTime:&v10 startVolume:volume endVolume:endVolume timeRange:range rampMode:&v11];
    if (mode)
    {
      if (scheduledAudioParameters)
      {
        *mode = v11 == 1;
        LOBYTE(scheduledAudioParameters) = 1;
      }
    }
  }

  return scheduledAudioParameters;
}

- (void)setDialogLevel:(float)level atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = level;
  *&v14 = level;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogLevelRamp dialogLevelRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogLevelRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setAmbienceLevel:(float)level atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = level;
  *&v14 = level;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVAmbienceLevelRamp ambienceLevelRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getAmbienceLevelRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setDialogMixBias:(float)bias atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)";
    goto LABEL_9;
  }

  if (bias < 0.0 || bias > 1.0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "dialogMixBias >= 0.0 && dialogMixBias <= 1.0";
LABEL_9:
    v18 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, v17), 0}];
    objc_exception_throw(v18);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = bias;
  *&v14 = bias;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogMixBiasRamp dialogMixBiasRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogMixBiasRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setDialogLoudness:(float)loudness atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = loudness;
  *&v14 = loudness;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogLoudnessRamp dialogLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setAmbienceLoudness:(float)loudness atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = loudness;
  *&v14 = loudness;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVAmbienceLoudnessRamp ambienceLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getAmbienceLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setRecordingLoudness:(float)loudness atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = loudness;
  *&v14 = loudness;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVRecordingLoudnessRamp recordingLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getRecordingLoudnessRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)setRenderingStyle:(float)style atTime:(id *)time
{
  time1.start = *time;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)"), 0}];
    objc_exception_throw(v15);
  }

  if (!self->_inputParameters->scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
  }

  time2 = *time;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = style;
  *&v14 = style;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVRenderingStyleRamp renderingStyleRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getRenderingStyleRampForTime:(id *)time startValue:(float *)value endValue:(float *)endValue timeRange:(id *)range
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *time;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:range];
  v13 = v12;
  if (v12)
  {
    if (value)
    {
      [v12 startFloatValue];
      *value = v14;
    }

    if (endValue)
    {
      [v13 endFloatValue];
      *endValue = v15;
    }
  }

  return v13 != 0;
}

- (void)_setScheduledAudioParameters:(id)parameters
{
  v4 = [parameters mutableCopy];

  self->_inputParameters->scheduledAudioParameters = v4;
}

- (id)_scheduledAudioParameters
{
  v2 = [(AVMutableScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters copy];

  return v2;
}

- (id)_figProcessingEffectsScheduledParameters
{
  v3 = [(NSMutableArray *)self->_inputParameters->effects indexesOfObjectsPassingTest:&__block_literal_global_16];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AVAudioMixInputParameters__figProcessingEffectsScheduledParameters__block_invoke_2;
  v6[3] = &unk_1E7464B90;
  v6[4] = self;
  v6[5] = v4;
  [v3 enumerateIndexesUsingBlock:v6];
  return [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:*MEMORY[0x1E69716A8]];
}

uint64_t __69__AVAudioMixInputParameters__figProcessingEffectsScheduledParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isMemberOfClass:v3];
}

uint64_t __69__AVAudioMixInputParameters__figProcessingEffectsScheduledParameters__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 40);
  v5 = [v3 _figSchedule];
  v6 = [v3 _figIdentifier];

  return [v4 setObject:v5 forKey:v6];
}

- (id)_figAudioCurves
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVAudioMixInputParameters _figProcessingEffectsScheduledParameters](self, "_figProcessingEffectsScheduledParameters")}];
  [v3 addEntriesFromDictionary:{-[AVScheduledAudioParameters _figAudioCurves](self->_inputParameters->scheduledAudioParameters, "_figAudioCurves")}];
  return v3;
}

@end