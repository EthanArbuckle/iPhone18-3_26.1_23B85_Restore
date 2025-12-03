@interface AVMutableAudioMixInputParameters
+ (AVMutableAudioMixInputParameters)audioMixInputParameters;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithAssetTrack:(id)track introFadeDuration:(id *)duration fadeOutStart:(id *)start fadeOutDuration:(id *)outDuration;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(AVAssetTrack *)track;
+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(id)track scheduledAudioParameters:(id)parameters;
- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (CMPersistentTrackID)trackID;
- (MTAudioProcessingTapRef)audioTapProcessor;
- (void)addEffect:(id)effect;
- (void)removeAllEffects;
- (void)removeEffectParameters:(id)parameters;
- (void)setAmbienceLevel:(float)level atTime:(id *)time;
- (void)setAudioTapProcessor:(MTAudioProcessingTapRef)audioTapProcessor;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setDialogLevel:(float)level atTime:(id *)time;
- (void)setDialogMixBias:(float)bias atTime:(id *)time;
- (void)setTrackID:(CMPersistentTrackID)trackID;
- (void)setVolume:(float)volume atTime:(CMTime *)time;
- (void)setVolumeRampFromStartVolume:(float)startVolume toEndVolume:(float)endVolume timeRange:(CMTimeRange *)timeRange;
- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
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

+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithTrack:(id)track scheduledAudioParameters:(id)parameters
{
  v5 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:track];
  [(AVAudioMixInputParameters *)v5 _setScheduledAudioParameters:parameters];
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

- (void)setVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = AVMutableAudioMixInputParameters;
  v6 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v6;
  v7[2] = *&range->var1.var1;
  [AVAudioMixInputParameters setVolumeRampFromStartVolume:sel_setVolumeRampFromStartVolume_toEndVolume_timeRange_rampMode_ toEndVolume:v7 timeRange:mode rampMode:?];
}

- (void)setVolume:(float)volume atTime:(CMTime *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *time;
  [(AVAudioMixInputParameters *)&v5 setVolume:&v4 atTime:?];
}

- (void)setDialogLevel:(float)level atTime:(id *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *time;
  [(AVAudioMixInputParameters *)&v5 setDialogLevel:&v4 atTime:?];
}

- (void)setAmbienceLevel:(float)level atTime:(id *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *time;
  [(AVAudioMixInputParameters *)&v5 setAmbienceLevel:&v4 atTime:?];
}

- (void)setDialogMixBias:(float)bias atTime:(id *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableAudioMixInputParameters;
  v4 = *time;
  [(AVAudioMixInputParameters *)&v5 setDialogMixBias:&v4 atTime:?];
}

- (void)addEffect:(id)effect
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 addEffect:effect];
}

- (void)removeEffectParameters:(id)parameters
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v3 removeEffect:parameters];
}

- (void)removeAllEffects
{
  v2.receiver = self;
  v2.super_class = AVMutableAudioMixInputParameters;
  [(AVAudioMixInputParameters *)&v2 removeAllEffectParameters];
}

+ (AVMutableAudioMixInputParameters)audioMixInputParametersWithAssetTrack:(id)track introFadeDuration:(id *)duration fadeOutStart:(id *)start fadeOutDuration:(id *)outDuration
{
  if ((duration->var2 & 0x1D) != 1 || (time1.start = *duration, v23 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, CMTimeCompare(&time1.start, &time2) < 0))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"introFadeDuration must be numeric and >= 0";
    goto LABEL_17;
  }

  if ((start->var2 & 0x1D) == 1)
  {
    *&time1.start.value = *&start->var0;
    time1.start.epoch = start->var3;
    *&time2.value = v23;
    time2.epoch = v14;
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = @"fadeOutStart must be >= 0 if numeric";
LABEL_17:
      v22 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v21, duration, start, outDuration, v6, v7, v23), 0}];
      objc_exception_throw(v22);
    }
  }

  if ((outDuration->var2 & 0x1D) != 1 || (*&time1.start.value = *&outDuration->var0, time1.start.epoch = outDuration->var3, *&time2.value = v23, time2.epoch = v14, CMTimeCompare(&time1.start, &time2) < 0))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"fadeOutDuration must be numeric and >= 0";
    goto LABEL_17;
  }

  v15 = objc_alloc_init(AVMutableAudioMixInputParameters);
  if (v15)
  {
    -[AVMutableAudioMixInputParameters setTrackID:](v15, "setTrackID:", [track trackID]);
    *&time1.start.value = *&duration->var0;
    time1.start.epoch = duration->var3;
    *&time2.value = v23;
    time2.epoch = v14;
    if (CMTimeCompare(&time1.start, &time2) >= 1)
    {
      *&time2.value = v23;
      time2.epoch = v14;
      duration = *duration;
      CMTimeRangeMake(&time1, &time2, &duration);
      LODWORD(v16) = 1.0;
      [(AVMutableAudioMixInputParameters *)v15 setVolumeRampFromStartVolume:&time1 toEndVolume:1 timeRange:0.0 rampMode:v16];
    }

    if ((start->var2 & 0x1D) == 1)
    {
      *&time1.start.value = *&outDuration->var0;
      time1.start.epoch = outDuration->var3;
      *&time2.value = v23;
      time2.epoch = v14;
      if (CMTimeCompare(&time1.start, &time2) >= 1)
      {
        time2 = *start;
        duration = *outDuration;
        CMTimeRangeMake(&time1, &time2, &duration);
        LODWORD(v17) = 1.0;
        [(AVMutableAudioMixInputParameters *)v15 setVolumeRampFromStartVolume:&time1 toEndVolume:1 timeRange:v17 rampMode:0.0];
      }
    }
  }

  return v15;
}

@end