@interface AVRoutingMutableScheduledAudioParameters
+ (id)scheduledAudioParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
- (void)setVolume:(float)a3 atTime:(id *)a4;
- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5;
- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
@end

@implementation AVRoutingMutableScheduledAudioParameters

+ (id)scheduledAudioParameters
{
  v2 = objc_alloc_init(AVRoutingMutableScheduledAudioParameters);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVRoutingScheduledAudioParameters allocWithZone:?]];
  if (v4)
  {
    [(AVRoutingScheduledAudioParameters *)v4 _setRamps:[(AVRoutingScheduledAudioParameters *)self _ramps]];
  }

  return v4;
}

- (void)_setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  v6 = *&a5->var0.var3;
  v7[0] = *&a5->var0.var0;
  v7[1] = v6;
  v7[2] = *&a5->var1.var1;
  [(AVRoutingScheduledAudioParameters *)self _setRamp:[AVRoutingScheduledVolumeRamp volumeRampWithStartVolume:"volumeRampWithStartVolume:endVolume:timeRange:rampMode:" endVolume:v7 timeRange:a6 rampMode:?]];
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
  [AVRoutingMutableScheduledAudioParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:0 rampMode:?];
}

- (void)setVolume:(float)a3 atTime:(id *)a4
{
  if ((a4->var2 & 0x1D) != 1)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a volume setting must be numeric.", v4, v5, v6, v7, v8, v14.value), 0}];
    objc_exception_throw(v13);
  }

  start = *a4;
  v14 = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v16, &start, &v14);
  *&v11 = a3;
  *&v12 = a3;
  [(AVRoutingMutableScheduledAudioParameters *)self _setVolumeRampFromStartVolume:&v16 toEndVolume:0 timeRange:v11 rampMode:v12];
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
  [AVRoutingMutableScheduledAudioParameters _setVolumeRampFromStartVolume:"_setVolumeRampFromStartVolume:toEndVolume:timeRange:rampMode:" toEndVolume:v12 timeRange:a6 rampMode:?];
}

@end