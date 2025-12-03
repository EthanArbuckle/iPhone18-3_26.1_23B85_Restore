@interface AVAssetReaderAudioMixOutput
+ (AVAssetReaderAudioMixOutput)assetReaderAudioMixOutputWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings;
- (AVAssetReaderAudioMixOutput)initWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings;
- (BOOL)_enableTrackExtractionReturningError:(id *)error;
- (id)_asset;
- (id)_audioCurvesForTrack:(id)track;
- (id)_audioEffectsParametersForTrack:(id)track;
- (id)_audioTimePitchAlgorithmForTrack:(id)track;
- (id)description;
- (id)mediaType;
- (opaqueMTAudioProcessingTap)_audioTapProcessorForTrack:(id)track;
- (void)_setAudioCurves:(id)curves forTrack:(id)track;
- (void)_setAudioEffectsParameters:(id)parameters forTrack:(id)track;
- (void)_setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor forTrack:(id)track;
- (void)_setAudioTimePitchAlgorithm:(id)algorithm forTrack:(id)track;
- (void)dealloc;
- (void)setAudioMix:(AVAudioMix *)audioMix;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
@end

@implementation AVAssetReaderAudioMixOutput

+ (AVAssetReaderAudioMixOutput)assetReaderAudioMixOutputWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings
{
  v4 = [objc_alloc(objc_opt_class()) initWithAudioTracks:audioTracks audioSettings:audioSettings];

  return v4;
}

- (AVAssetReaderAudioMixOutput)initWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings
{
  v49 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AVAssetReaderAudioMixOutput;
  v7 = [(AVAssetReaderOutput *)&v47 init];
  v8 = v7;
  if (!audioTracks)
  {
    v31 = v7;
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v37 = "audioTracks != nil";
LABEL_29:
    v30 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"invalid parameter not satisfying: %s", v32, v33, v34, v35, v36, v37);
    goto LABEL_26;
  }

  if (![(NSArray *)audioTracks count])
  {
    v38 = v8;
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v37 = "[audioTracks count] >= 1";
    goto LABEL_29;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = [(NSArray *)audioTracks countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v44;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(audioTracks);
      }

      v14 = *(*(&v43 + 1) + 8 * i);
      if (([objc_msgSend(v14 "mediaType")] & 1) == 0)
      {
        v20 = v8;
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = @"tracks must all have media type AVMediaTypeAudio";
        goto LABEL_25;
      }

      asset = [v14 asset];
      if (v11)
      {
        if (asset != v11)
        {
          v21 = v8;
          v27 = MEMORY[0x1E695DF30];
          v28 = *MEMORY[0x1E695D940];
          v29 = @"tracks must all be part of the same AVAsset";
          goto LABEL_25;
        }
      }

      else
      {
        v11 = asset;
      }
    }

    v10 = [(NSArray *)audioTracks countByEnumeratingWithState:&v43 objects:v48 count:16];
  }

  while (v10);
LABEL_15:
  if (v8)
  {
    v16 = objc_alloc_init(AVAssetReaderAudioMixOutputInternal);
    v8->_audioMixOutputInternal = v16;
    if (!v16)
    {

      return 0;
    }

    CFRetain(v16);
    v8->_audioMixOutputInternal->audioTracks = [(NSArray *)audioTracks copyWithZone:[(AVAssetReaderAudioMixOutput *)v8 zone]];
    v8->_audioMixOutputInternal->audioCurvesForTracks = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](audioTracks, "count")}];
    v8->_audioMixOutputInternal->audioTimePitchAlgorithmsForTracks = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](audioTracks, "count")}];
    v8->_audioMixOutputInternal->audioTapProcessorsForTracks = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](audioTracks, "count")}];
    v8->_audioMixOutputInternal->audioEffectsParametersForTracks = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](audioTracks, "count")}];
    v8->_audioMixOutputInternal->audioTimePitchAlgorithm = @"Spectral";
    if (audioSettings)
    {
      v42 = 0;
      v8->_audioMixOutputInternal->audioOutputSettings = [AVAudioOutputSettings _audioOutputSettingsWithAudioSettingsDictionary:audioSettings exceptionReason:&v42];
      audioOutputSettings = v8->_audioMixOutputInternal->audioOutputSettings;
      if (audioOutputSettings)
      {
        if (![(AVOutputSettings *)audioOutputSettings willYieldCompressedSamples])
        {
          if ([(NSDictionary *)audioSettings objectForKey:*MEMORY[0x1E6958338]])
          {
            v18 = v8;
            v27 = MEMORY[0x1E695DF30];
            v28 = *MEMORY[0x1E695D940];
            v29 = @"AVAssetReaderOutput does not support AVSampleRateConverterAudioQualityKey";
            goto LABEL_25;
          }

          return v8;
        }

        v40 = v8;
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = @"AVAssetReaderOutput does not currently support compressed output";
      }

      else
      {
        v39 = v8;
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = v42;
      }

LABEL_25:
      v30 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, v29, v22, v23, v24, v25, v26, v41);
LABEL_26:
      objc_exception_throw([v27 exceptionWithName:v28 reason:v30 userInfo:0]);
    }
  }

  return v8;
}

- (void)dealloc
{
  audioMixOutputInternal = self->_audioMixOutputInternal;
  if (audioMixOutputInternal)
  {

    CFRelease(self->_audioMixOutputInternal);
  }

  v4.receiver = self;
  v4.super_class = AVAssetReaderAudioMixOutput;
  [(AVAssetReaderOutput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, audioTracks = %@, audioSettings = %@>", NSStringFromClass(v4), self, -[AVAssetReaderAudioMixOutput audioTracks](self, "audioTracks"), -[AVAssetReaderAudioMixOutput audioSettings](self, "audioSettings")];
}

- (id)_audioCurvesForTrack:(id)track
{
  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"track must be one of the tracks used to create the receiver", v6, v7, v8, v9, v10, v14), 0}];
    objc_exception_throw(v13);
  }

  audioCurvesForTracks = self->_audioMixOutputInternal->audioCurvesForTracks;

  return [(NSMutableDictionary *)audioCurvesForTracks objectForKey:track];
}

- (void)_setAudioCurves:(id)curves forTrack:(id)track
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = @"cannot be called after reading has started";
    goto LABEL_12;
  }

  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"track must be one of the tracks used to create the receiver";
LABEL_12:
    v17 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v8, v9, v10, v11, v12, v18), 0}];
    objc_exception_throw(v17);
  }

  audioCurvesForTracks = self->_audioMixOutputInternal->audioCurvesForTracks;
  if (curves)
  {

    [(NSMutableDictionary *)audioCurvesForTracks setObject:curves forKey:track];
  }

  else
  {

    [(NSMutableDictionary *)audioCurvesForTracks removeObjectForKey:track];
  }
}

- (id)_audioEffectsParametersForTrack:(id)track
{
  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"track must be one of the tracks used to create the receiver", v6, v7, v8, v9, v10, v14), 0}];
    objc_exception_throw(v13);
  }

  audioEffectsParametersForTracks = self->_audioMixOutputInternal->audioEffectsParametersForTracks;

  return [(NSMutableDictionary *)audioEffectsParametersForTracks objectForKey:track];
}

- (void)_setAudioEffectsParameters:(id)parameters forTrack:(id)track
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = @"cannot be called after reading has started";
    goto LABEL_12;
  }

  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"track must be one of the tracks used to create the receiver";
LABEL_12:
    v17 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v8, v9, v10, v11, v12, v18), 0}];
    objc_exception_throw(v17);
  }

  audioEffectsParametersForTracks = self->_audioMixOutputInternal->audioEffectsParametersForTracks;
  if (parameters)
  {

    [(NSMutableDictionary *)audioEffectsParametersForTracks setObject:parameters forKey:track];
  }

  else
  {

    [(NSMutableDictionary *)audioEffectsParametersForTracks removeObjectForKey:track];
  }
}

- (id)_audioTimePitchAlgorithmForTrack:(id)track
{
  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"track must be one of the tracks used to create the receiver", v6, v7, v8, v9, v10, v14), 0}];
    objc_exception_throw(v13);
  }

  audioTimePitchAlgorithmsForTracks = self->_audioMixOutputInternal->audioTimePitchAlgorithmsForTracks;

  return [(NSMutableDictionary *)audioTimePitchAlgorithmsForTracks objectForKey:track];
}

- (void)_setAudioTimePitchAlgorithm:(id)algorithm forTrack:(id)track
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = @"cannot be called after reading has started";
    goto LABEL_14;
  }

  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"track must be one of the tracks used to create the receiver";
    goto LABEL_14;
  }

  audioMixOutputInternal = self->_audioMixOutputInternal;
  audioTimePitchAlgorithmsForTracks = audioMixOutputInternal->audioTimePitchAlgorithmsForTracks;
  if (algorithm)
  {
    valid = AVGetValidAudioTimePitchAlgorithms();
    if ([valid containsObject:algorithm])
    {

      [(NSMutableDictionary *)audioTimePitchAlgorithmsForTracks setObject:algorithm forKey:track];
      return;
    }

    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v21 = [objc_msgSend(valid "allObjects")];
    v19 = @"audioTimePitchAlgorithm must be one of: %@";
LABEL_14:
    v20 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v19, v8, v9, v10, v11, v12, v21), 0}];
    objc_exception_throw(v20);
  }

  v16 = audioMixOutputInternal->audioTimePitchAlgorithmsForTracks;

  [(NSMutableDictionary *)v16 removeObjectForKey:track];
}

- (opaqueMTAudioProcessingTap)_audioTapProcessorForTrack:(id)track
{
  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"track must be one of the tracks used to create the receiver", v6, v7, v8, v9, v10, v14), 0}];
    objc_exception_throw(v13);
  }

  audioTapProcessorsForTracks = self->_audioMixOutputInternal->audioTapProcessorsForTracks;

  return [(NSMutableDictionary *)audioTapProcessorsForTracks objectForKey:track];
}

- (void)_setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor forTrack:(id)track
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = @"cannot be called after reading has started";
    goto LABEL_12;
  }

  if (![(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] containsObject:track])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"track must be one of the tracks used to create the receiver";
LABEL_12:
    v17 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v8, v9, v10, v11, v12, v18), 0}];
    objc_exception_throw(v17);
  }

  audioTapProcessorsForTracks = self->_audioMixOutputInternal->audioTapProcessorsForTracks;
  if (processor)
  {

    [(NSMutableDictionary *)audioTapProcessorsForTracks setObject:processor forKey:track];
  }

  else
  {

    [(NSMutableDictionary *)audioTapProcessorsForTracks removeObjectForKey:track];
  }
}

- (void)setAudioMix:(AVAudioMix *)audioMix
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v21), 0}];
    objc_exception_throw(v20);
  }

  v11 = self->_audioMixOutputInternal->audioMix;
  if (v11 != audioMix)
  {

    self->_audioMixOutputInternal->audioMix = [(AVAudioMix *)audioMix copyWithZone:[(AVAssetReaderAudioMixOutput *)self zone]];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    audioTracks = [(AVAssetReaderAudioMixOutput *)self audioTracks];
    v13 = [(NSArray *)audioTracks countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(audioTracks);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = -[AVAudioMix audioMixInputParametersForTrackID:](self->_audioMixOutputInternal->audioMix, "audioMixInputParametersForTrackID:", [v17 trackID]);
          audioTapProcessor = [v18 audioTapProcessor];
          -[AVAssetReaderAudioMixOutput _setAudioCurves:forTrack:](self, "_setAudioCurves:forTrack:", [v18 _figAudioCurves], v17);
          -[AVAssetReaderAudioMixOutput _setAudioTimePitchAlgorithm:forTrack:](self, "_setAudioTimePitchAlgorithm:forTrack:", [v18 audioTimePitchAlgorithm], v17);
          [(AVAssetReaderAudioMixOutput *)self _setAudioTapProcessor:audioTapProcessor forTrack:v17];
          -[AVAssetReaderAudioMixOutput _setAudioEffectsParameters:forTrack:](self, "_setAudioEffectsParameters:forTrack:", [v18 effects], v17);
        }

        v14 = [(NSArray *)audioTracks countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v26);
    v16 = v13;
    v17 = v14;
    goto LABEL_8;
  }

  valid = AVGetValidAudioTimePitchAlgorithms();
  if (([valid containsObject:audioTimePitchAlgorithm] & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [objc_msgSend(valid "allObjects")];
    v15 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"audioTimePitchAlgorithm must be one of: %@", v21, v22, v23, v24, v25, v20);
    v16 = v18;
    v17 = v19;
LABEL_8:
    objc_exception_throw([v16 exceptionWithName:v17 reason:v15 userInfo:0]);
  }

  v12 = self->_audioMixOutputInternal->audioTimePitchAlgorithm;
  if (v12 != audioTimePitchAlgorithm)
  {

    self->_audioMixOutputInternal->audioTimePitchAlgorithm = [(NSString *)audioTimePitchAlgorithm copy];
  }
}

- (id)mediaType
{
  v2 = [(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] objectAtIndex:0];

  return [v2 mediaType];
}

- (id)_asset
{
  v2 = [(NSArray *)[(AVAssetReaderAudioMixOutput *)self audioTracks] objectAtIndex:0];

  return [v2 asset];
}

- (BOOL)_enableTrackExtractionReturningError:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  v57 = -1;
  audioTracks = [(AVAssetReaderAudioMixOutput *)self audioTracks];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](audioTracks, "count")}];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{AVAssetReaderGetFigAssetReaderAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(self->_audioMixOutputInternal->audioTimePitchAlgorithm), *MEMORY[0x1E6971320], 0}];
  _figAssetReaderExtractionOptions = [(AVAssetReaderOutput *)self _figAssetReaderExtractionOptions];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = audioTracks;
  v5 = [(NSArray *)audioTracks countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
    v8 = *MEMORY[0x1E69713F0];
    v42 = *MEMORY[0x1E69713D8];
    v9 = *MEMORY[0x1E69713E8];
    v10 = *MEMORY[0x1E69713E0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = [MEMORY[0x1E695DF90] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", objc_msgSend(v12, "trackID")), v8}];
        v14 = [(AVAssetReaderAudioMixOutput *)self _audioCurvesForTrack:v12];
        if (v14)
        {
          [v13 setObject:v14 forKey:v42];
        }

        v15 = [(AVAssetReaderAudioMixOutput *)self _audioTimePitchAlgorithmForTrack:v12];
        if (v15)
        {
          [v13 setObject:AVAssetReaderGetFigAssetReaderAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(v15) forKey:v9];
        }

        v16 = [(AVAssetReaderAudioMixOutput *)self _audioTapProcessorForTrack:v12];
        if (v16)
        {
          [v13 setObject:v16 forKey:v10];
        }

        v17 = [(AVAssetReaderAudioMixOutput *)self _audioEffectsParametersForTrack:v12];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 indexOfObjectPassingTest:&__block_literal_global_7];
          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v13 setObject:objc_msgSend(objc_msgSend(v18 forKey:{"objectAtIndexedSubscript:", v19), "data"), @"AssetReaderSource_CinematicAudioParameters"}];
          }
        }

        [v43 addObject:v13];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v6);
  }

  audioOutputSettings = self->_audioMixOutputInternal->audioOutputSettings;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  audioTracks2 = [(AVAssetReaderAudioMixOutput *)self audioTracks];
  v23 = [(NSArray *)audioTracks2 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(audioTracks2);
        }

        [v21 addObjectsFromArray:{objc_msgSend(*(*(&v45 + 1) + 8 * j), "formatDescriptions")}];
      }

      v24 = [(NSArray *)audioTracks2 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v24);
  }

  formatDescriptionOut = 0;
  v27 = CMAudioFormatDescriptionCreateSummary(*MEMORY[0x1E695E480], v21, 0, &formatDescriptionOut);
  v28 = formatDescriptionOut;
  if (v27)
  {
    v29 = 0;
LABEL_33:
    free(v29);
    goto LABEL_34;
  }

  if (audioOutputSettings)
  {
    [(AVOutputSettings *)audioOutputSettings willYieldCompressedSamples];
    [(AVAudioOutputSettings *)audioOutputSettings getAudioStreamBasicDescription:&v54 forAudioFileTypeID:0 sourceFormatDescription:formatDescriptionOut];
    v29 = [(AVAudioOutputSettings *)audioOutputSettings copyAudioChannelLayoutForSourceFormatDescription:formatDescriptionOut audioChannelLayoutSize:&v53];
    audioOutputSettings = [(AVAudioOutputSettings *)audioOutputSettings audioOptions];
  }

  else
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(formatDescriptionOut);
    v31 = *&StreamBasicDescription->mBitsPerChannel;
    v32 = *&StreamBasicDescription->mBytesPerPacket;
    v54 = *&StreamBasicDescription->mSampleRate;
    v55 = v32;
    v56 = v31;
    v29 = AVCopyBestAudioChannelLayoutFromFormatDescription(formatDescriptionOut, &v53);
  }

  _figAssetReader = [(AVAssetReaderOutput *)self _figAssetReader];
  v34 = v53;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v35)
  {
    v27 = 4294954514;
    goto LABEL_33;
  }

  v27 = v35(_figAssetReader, v43, &v54, v34, v29, audioOutputSettings, v39, _figAssetReaderExtractionOptions, &v57);
  free(v29);
  if (!v27)
  {
    [(AVAssetReaderOutput *)self _setExtractionID:v57];
    return 1;
  }

LABEL_34:
  if (!error)
  {
    return 0;
  }

  v37 = [AVAssetReader _errorForOSStatus:v27];
  result = 0;
  *error = v37;
  return result;
}

uint64_t __68__AVAssetReaderAudioMixOutput__enableTrackExtractionReturningError___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isMemberOfClass:v3];
}

@end