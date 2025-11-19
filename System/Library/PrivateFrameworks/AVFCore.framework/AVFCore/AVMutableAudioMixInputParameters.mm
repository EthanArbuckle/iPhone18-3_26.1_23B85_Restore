@interface AVMutableAudioMixInputParameters
+ (AVMutableAudioMixInputParameters)audioMixInputParameters;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithAssetTrack:(id)a3 introFadeDuration:(id *)a4 fadeOutStart:(id *)a5 fadeOutDuration:(id *)a6;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(AVAssetTrack *)track;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(id)a3 scheduledAudioParameters:(id)a4;
- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (CMPersistentTrackID)trackID;
- (MTAudioProcessingTapRef)audioTapProcessor;
- (void)addEffect:(id)a3;
- (void)removeAllEffects;
- (void)removeEffectParameters:(id)a3;
- (void)setAmbienceLevel:(float)a3 atTime:(id *)a4;
- (void)setAudioTapProcessor:(MTAudioProcessingTapRef)audioTapProcessor;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setDialogLevel:(float)a3 atTime:(id *)a4;
- (void)setDialogMixBias:(float)a3 atTime:(id *)a4;
- (void)setTrackID:(CMPersistentTrackID)trackID;
- (void)setVolume:(float)volume atTime:(CMTime *)time;
- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
- (void)setVolumeRampFromStartVolume:(float)startVolume toEndVolume:(float)endVolume timeRange:(CMTimeRange *)timeRange;
@end

@implementation AVMutableAudioMixInputParameters

+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(AVAssetTrack *)track
{
  v4 = objc_alloc_init(AVMutableAudioMixInputParameters);
  if (track)
  {
    [(AVMutableAudioMixInputParameters *)v4 setTrackID:[(AVAssetTrack *)track trackID]];
  }

  return v4;
}

+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(id)a3 scheduledAudioParameters:(id)a4
{
  v5 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:a3];
  [(AVAudioMixInputParameters *)v5 _setScheduledAudioParameters:a4];
  return v5;
}

+ (AVMutableAudioMixInputParameters)audioMixInputParameters
{
  v2 = objc_alloc_init(AVMutableAudioMixInputParameters);

  return v2;
}

- (CMPersistentTrackID)trackID
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  return [(AVAudioMixInputParameters *)&v3 trackID];
}

- (void)setTrackID:(CMPersistentTrackID)trackID
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 setTrackID:*&trackID];
}

- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  return [(AVAudioMixInputParameters *)&v3 audioTimePitchAlgorithm];
}

- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 setAudioTimePitchAlgorithm:audioTimePitchAlgorithm];
}

- (MTAudioProcessingTapRef)audioTapProcessor
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  return [(AVAudioMixInputParameters *)&v3 audioTapProcessor];
}

- (void)setAudioTapProcessor:(MTAudioProcessingTapRef)audioTapProcessor
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 setAudioTapProcessor:audioTapProcessor];
}

- (void)setVolumeRampFromStartVolume:(float)startVolume toEndVolume:(float)endVolume timeRange:(CMTimeRange *)timeRange
{
  v7.receiver = self;
  v7.super_class = AVMutableAudioMixInputParameters;
  v5 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v5;
  v6[2] = *&timeRange->duration.timescale;
  [AVAudioMixInputParameters setVolumeRampFromStartVolume:sel_setVolumeRampFromStartVolume_toEndVolume_timeRange_ toEndVolume:v6 timeRange:?];
}

- (void)setVolumeRampFromStartVolume:(float)a3 toEndVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  v8.receiver = self;
  v8.super_class = AVMutableAudioMixInputParameters;
  v6 = *&a5->var0.var3;
  v7[0] = *&a5->var0.var0;
  v7[1] = v6;
  v7[2] = *&a5->var1.var1;
  [AVAudioMixInputParameters setVolumeRampFromStartVolume:sel_setVolumeRampFromStartVolume_toEndVolume_timeRange_rampMode_ toEndVolume:v7 timeRange:a6 rampMode:?];
}

- (void)setVolume:(float)volume atTime:(CMTime *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *time;
  [(AVAudioMixInputParameters *)&v5 setVolume:&v4 atTime:?];
}

- (void)setDialogLevel:(float)a3 atTime:(id *)a4
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *a4;
  [(AVAudioMixInputParameters *)&v5 setDialogLevel:&v4 atTime:?];
}

- (void)setAmbienceLevel:(float)a3 atTime:(id *)a4
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *a4;
  [(AVAudioMixInputParameters *)&v5 setAmbienceLevel:&v4 atTime:?];
}

- (void)setDialogMixBias:(float)a3 atTime:(id *)a4
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *a4;
  [(AVAudioMixInputParameters *)&v5 setDialogMixBias:&v4 atTime:?];
}

- (void)addEffect:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 addEffect:a3];
}

- (void)removeEffectParameters:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 removeEffect:a3];
}

- (void)removeAllEffects
{
  v2.receiver = self;
  v2.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v2 removeAllEffectParameters];
}

+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithAssetTrack:(id)a3 introFadeDuration:(id *)a4 fadeOutStart:(id *)a5 fadeOutDuration:(id *)a6
{
  if ((a4->var2 & 0x1D) != 1 || (time1.start = *a4, v23 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, CMTimeCompare(&time1.start, &time2) < 0))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"introFadeDuration must be numeric and >= 0";
    goto LABEL_17;
  }

  if ((a5->var2 & 0x1D) == 1)
  {
    *&time1.start.value = *&a5->var0;
    time1.start.epoch = a5->var3;
    *&time2.value = v23;
    time2.epoch = v14;
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = @"fadeOutStart must be >= 0 if numeric";
LABEL_17:
      v22 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v21, a4, a5, a6, v6, v7, v23), 0}];
      objc_exception_throw(v22);
    }
  }

  if ((a6->var2 & 0x1D) != 1 || (*&time1.start.value = *&a6->var0, time1.start.epoch = a6->var3, *&time2.value = v23, time2.epoch = v14, CMTimeCompare(&time1.start, &time2) < 0))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"fadeOutDuration must be numeric and >= 0";
    goto LABEL_17;
  }

  v15 = objc_alloc_init(AVMutableAudioMixInputParameters);
  if (v15)
  {
    -[AVMutableAudioMixInputParameters setTrackID:](v15, "setTrackID:", [a3 trackID]);
    *&time1.start.value = *&a4->var0;
    time1.start.epoch = a4->var3;
    *&time2.value = v23;
    time2.epoch = v14;
    if (CMTimeCompare(&time1.start, &time2) >= 1)
    {
      *&time2.value = v23;
      time2.epoch = v14;
      duration = *a4;
      CMTimeRangeMake(&time1, &time2, &duration);
      LODWORD(v16) = 1.0;
      [(AVMutableAudioMixInputParameters *)v15 setVolumeRampFromStartVolume:&time1 toEndVolume:1 timeRange:0.0 rampMode:v16];
    }

    if ((a5->var2 & 0x1D) == 1)
    {
      *&time1.start.value = *&a6->var0;
      time1.start.epoch = a6->var3;
      *&time2.value = v23;
      time2.epoch = v14;
      if (CMTimeCompare(&time1.start, &time2) >= 1)
      {
        time2 = *a5;
        duration = *a6;
        CMTimeRangeMake(&time1, &time2, &duration);
        LODWORD(v17) = 1.0;
        [(AVMutableAudioMixInputParameters *)v15 setVolumeRampFromStartVolume:&time1 toEndVolume:1 timeRange:v17 rampMode:0.0];
      }
    }
  }

  return v15;
}

@end