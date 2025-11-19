@interface AVAudioMixInputParameters
- (AVAudioMixInputParameters)init;
- (BOOL)getAmbienceLevelRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getAmbienceLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getDialogLevelRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getDialogLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getDialogMixBiasRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getRecordingLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getRenderingStyleRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6;
- (BOOL)getVolumeRampForTime:(id *)a3 startVolume:(float *)a4 endVolume:(float *)a5 timeRange:(id *)a6 rampMode:(int64_t *)a7;
- (BOOL)isEqual:(id)a3;
- (id)_figAudioCurves;
- (id)_figProcessingEffectsScheduledParameters;
- (id)_scheduledAudioParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectParameters;
- (id)effects;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setScheduledAudioParameters:(id)a3;
- (void)_setVolume:(float)a3 atTime:(id *)a4;
- (void)_setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
- (void)addEffect:(id)a3;
- (void)checkEffectPrecondition:(id)a3;
- (void)checkEffectsPrecondition:(id)a3;
- (void)dealloc;
- (void)setAmbienceLevel:(float)a3 atTime:(id *)a4;
- (void)setAmbienceLoudness:(float)a3 atTime:(id *)a4;
- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)a3;
- (void)setAudioTimePitchAlgorithm:(id)a3;
- (void)setDialogLevel:(float)a3 atTime:(id *)a4;
- (void)setDialogLoudness:(float)a3 atTime:(id *)a4;
- (void)setDialogMixBias:(float)a3 atTime:(id *)a4;
- (void)setEffectParameters:(id)a3;
- (void)setRecordingLoudness:(float)a3 atTime:(id *)a4;
- (void)setRenderingStyle:(float)a3 atTime:(id *)a4;
- (void)setVolume:(float)a3 atTime:(id *)a4;
- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5;
- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  inputParameters = self->_inputParameters;
  v6 = *(a3 + 1);
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
  v11 = *(a3 + 1);
  v12 = v11[3];
  if (audioTimePitchAlgorithm)
  {
    v9 = [(NSString *)audioTimePitchAlgorithm isEqualToString:v12];
    if (!v9)
    {
      return v9;
    }

    inputParameters = self->_inputParameters;
    v11 = *(a3 + 1);
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

- (void)setAudioTimePitchAlgorithm:(id)a3
{
  v4 = [a3 copy];

  self->_inputParameters->audioTimePitchAlgorithm = v4;
}

- (void)setAudioTapProcessor:(opaqueMTAudioProcessingTap *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  inputParameters = self->_inputParameters;
  tap = inputParameters->tap;
  if (tap)
  {
    CFRelease(tap);
    inputParameters = self->_inputParameters;
  }

  inputParameters->tap = a3;
}

- (void)checkEffectPrecondition:(id)a3
{
  if (a3 && ([a3 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()) & 1) == 0 && (objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
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

- (void)setEffectParameters:(id)a3
{
  [(AVAudioMixInputParameters *)self checkEffectPrecondition:?];
  v6 = [a3 copy];
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

- (void)checkEffectsPrecondition:(id)a3
{
  [(AVAudioMixInputParameters *)self checkEffectPrecondition:?];
  v6 = [a3 isMemberOfClass:objc_opt_class()];
  v7 = [(AVAudioMixInputParameters *)self effects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AVAudioMixInputParameters_checkEffectsPrecondition___block_invoke;
  v15[3] = &unk_1E7464B68;
  v16 = v6;
  v15[4] = a3;
  if ([objc_msgSend(v7 indexesOfObjectsPassingTest:{v15), "count"}])
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

- (void)addEffect:(id)a3
{
  [(AVAudioMixInputParameters *)self checkEffectsPrecondition:?];
  v5 = [a3 copy];
  [(NSMutableArray *)self->_inputParameters->effects addObject:v5];
}

- (void)_setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (!scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
    scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  }

  v12 = *&a5->var0.var3;
  v13[0] = *&a5->var0.var0;
  v13[1] = v12;
  *&v12 = a4;
  [(AVMutableScheduledAudioParameters *)scheduledAudioParameters setVolumeRampFromStartVolume:v13 toEndVolume:a6 == 1 timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&a5->var1.var1) rampMode:LODWORD(a3))), *&v12];
}

- (void)_setVolume:(float)a3 atTime:(id *)a4
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (!scheduledAudioParameters)
  {
    self->_inputParameters->scheduledAudioParameters = objc_alloc_init(AVMutableScheduledAudioParameters);
    scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  }

  v8 = *&a4->var0;
  var3 = a4->var3;
  [(AVMutableScheduledAudioParameters *)scheduledAudioParameters setVolume:&v8 atTime:COERCE_DOUBLE(__PAIR64__(DWORD1(v8), LODWORD(a3)))];
}

- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5
{
  if ((a5->var0.var2 & 0x1D) != 1 || (a5->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a volume ramp must have a numeric start time and a numeric duration.", v5, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&a5->var0.var3;
  v12[0] = *&a5->var0.var0;
  v12[1] = v10;
  v12[2] = *&a5->var1.var1;
  [AVAudioMixInputParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:0 rampMode:?];
}

- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  if ((a5->var0.var2 & 0x1D) != 1 || (a5->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a volume ramp must have a numeric start time and a numeric duration.", a6, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&a5->var0.var3;
  v12[0] = *&a5->var0.var0;
  v12[1] = v10;
  v12[2] = *&a5->var1.var1;
  [AVAudioMixInputParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:a6 rampMode:?];
}

- (void)setVolume:(float)a3 atTime:(id *)a4
{
  if ((a4->var2 & 0x1D) != 1)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a volume setting must be numeric.", v4, v5, v6, v7, v8, v10.var0), 0}];
    objc_exception_throw(v9);
  }

  v10 = *a4;
  [(AVAudioMixInputParameters *)self _setVolume:&v10 atTime:?];
}

- (BOOL)getVolumeRampForTime:(id *)a3 startVolume:(float *)a4 endVolume:(float *)a5 timeRange:(id *)a6 rampMode:(int64_t *)a7
{
  v11 = 0;
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  if (scheduledAudioParameters)
  {
    v10 = *a3;
    LODWORD(scheduledAudioParameters) = [(AVScheduledAudioParameters *)scheduledAudioParameters getVolumeRampForTime:&v10 startVolume:a4 endVolume:a5 timeRange:a6 rampMode:&v11];
    if (a7)
    {
      if (scheduledAudioParameters)
      {
        *a7 = v11 == 1;
        LOBYTE(scheduledAudioParameters) = 1;
      }
    }
  }

  return scheduledAudioParameters;
}

- (void)setDialogLevel:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogLevelRamp dialogLevelRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogLevelRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setAmbienceLevel:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVAmbienceLevelRamp ambienceLevelRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getAmbienceLevelRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setDialogMixBias:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1.start, &time2))
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "CMTIME_COMPARE_INLINE(time, ==, kCMTimeZero)";
    goto LABEL_9;
  }

  if (a3 < 0.0 || a3 > 1.0)
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogMixBiasRamp dialogMixBiasRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogMixBiasRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setDialogLoudness:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVDialogLoudnessRamp dialogLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getDialogLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setAmbienceLoudness:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVAmbienceLoudnessRamp ambienceLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getAmbienceLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setRecordingLoudness:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVRecordingLoudnessRamp recordingLoudnessRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getRecordingLoudnessRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)setRenderingStyle:(float)a3 atTime:(id *)a4
{
  time1.start = *a4;
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

  time2 = *a4;
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&time1, &time2, &duration);
  *&v13 = a3;
  *&v14 = a3;
  [(AVScheduledAudioParameters *)self->_inputParameters->scheduledAudioParameters _setRamp:[AVRenderingStyleRamp renderingStyleRampWithStartValue:&time1 endValue:v13 timeRange:v14]];
}

- (BOOL)getRenderingStyleRampForTime:(id *)a3 startValue:(float *)a4 endValue:(float *)a5 timeRange:(id *)a6
{
  scheduledAudioParameters = self->_inputParameters->scheduledAudioParameters;
  v11 = objc_opt_class();
  v17 = *a3;
  v12 = [(AVScheduledAudioParameters *)scheduledAudioParameters _getRampOfClass:v11 forTime:&v17 timeRange:a6];
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      [v12 startFloatValue];
      *a4 = v14;
    }

    if (a5)
    {
      [v13 endFloatValue];
      *a5 = v15;
    }
  }

  return v13 != 0;
}

- (void)_setScheduledAudioParameters:(id)a3
{
  v4 = [a3 mutableCopy];

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