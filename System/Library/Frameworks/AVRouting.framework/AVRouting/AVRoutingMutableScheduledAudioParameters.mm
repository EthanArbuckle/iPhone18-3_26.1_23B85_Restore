@interface AVRoutingMutableScheduledAudioParameters
+ (id)scheduledAudioParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
- (void)setVolume:(float)volume atTime:(id *)time;
- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range;
- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
@end

@implementation AVRoutingMutableScheduledAudioParameters

+ (id)scheduledAudioParameters
{
  v2 = objc_alloc_init(AVRoutingMutableScheduledAudioParameters);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AVRoutingScheduledAudioParameters allocWithZone:?]];
  if (v4)
  {
    [(AVRoutingScheduledAudioParameters *)v4 _setRamps:[(AVRoutingScheduledAudioParameters *)self _ramps]];
  }

  return v4;
}

- (void)_setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  v6 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v6;
  v7[2] = *&range->var1.var1;
  [(AVRoutingScheduledAudioParameters *)self _setRamp:[AVRoutingScheduledVolumeRamp volumeRampWithStartVolume:"volumeRampWithStartVolume:endVolume:timeRange:rampMode:" endVolume:v7 timeRange:mode rampMode:?]];
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
  [AVRoutingMutableScheduledAudioParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:0 rampMode:?];
}

- (void)setVolume:(float)volume atTime:(id *)time
{
  if ((time->var2 & 0x1D) != 1)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a volume setting must be numeric.", v4, v5, v6, v7, v8, v14.value), 0}];
    objc_exception_throw(v13);
  }

  start = *time;
  v14 = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v16, &start, &v14);
  *&v11 = volume;
  *&v12 = volume;
  [(AVRoutingMutableScheduledAudioParameters *)self _setVolumeRampFromStartVolume:&v16 toEndVolume:0 timeRange:v11 rampMode:v12];
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
  [AVRoutingMutableScheduledAudioParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:mode rampMode:?];
}

@end