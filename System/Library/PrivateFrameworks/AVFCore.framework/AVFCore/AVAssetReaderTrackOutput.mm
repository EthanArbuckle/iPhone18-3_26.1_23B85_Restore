@interface AVAssetReaderTrackOutput
+ (AVAssetReaderTrackOutput)assetReaderTrackOutputWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings;
- (AVAssetReaderTrackOutput)initWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings;
- (BOOL)_enableTrackExtractionReturningError:(id *)error;
- (BOOL)_trimsSampleDurations;
- (id)_asset;
- (id)_figAssetReaderExtractionOptions;
- (id)_formatDescriptions;
- (id)description;
- (id)mediaType;
- (opaqueCMSampleBuffer)_copyNextSampleBufferForAdaptor;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (unsigned)_getUniformMediaSubtypeIfExists;
- (void)dealloc;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setLimitsImageQueueCapacityToOneFrame:(BOOL)frame;
@end

@implementation AVAssetReaderTrackOutput

+ (AVAssetReaderTrackOutput)assetReaderTrackOutputWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings
{
  v4 = [objc_alloc(objc_opt_class()) initWithTrack:track outputSettings:outputSettings];

  return v4;
}

- (AVAssetReaderTrackOutput)initWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings
{
  v61.receiver = self;
  v61.super_class = AVAssetReaderTrackOutput;
  v7 = [(AVAssetReaderOutput *)&v61 init];
  v8 = v7;
  if (!track)
  {
    v23 = v7;
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v29 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"invalid parameter not satisfying: %s", v24, v25, v26, v27, v28, "track != nil");
    goto LABEL_22;
  }

  if (v7)
  {
    v9 = objc_alloc_init(AVAssetReaderTrackOutputInternal);
    v8->_trackOutputInternal = v9;
    if (!v9)
    {

      return 0;
    }

    CFRetain(v9);
    v8->_trackOutputInternal->track = track;
    v8->_trackOutputInternal->audioTimePitchAlgorithm = @"Spectral";
    mediaType = [(AVAssetTrack *)v8->_trackOutputInternal->track mediaType];
    if (outputSettings)
    {
      v11 = mediaType;
      if ([(NSDictionary *)outputSettings objectForKey:@"AVVideoCleanApertureKey"]|| [(NSDictionary *)outputSettings objectForKey:@"AVVideoPixelAspectRatioKey"])
      {
        v30 = v8;
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v31 = objc_opt_class();
        v58 = NSStringFromClass(v31);
        v29 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"%@ does not currently support AVVideoCleanApertureKey or AVVideoPixelAspectRatioKey", v32, v33, v34, v35, v36, v58);
      }

      else
      {
        if (![(NSDictionary *)outputSettings objectForKey:@"AVVideoScalingModeKey"])
        {
          v60 = 0;
          v8->_trackOutputInternal->outputSettings = [AVOutputSettings _outputSettingsWithOutputSettingsDictionary:outputSettings mediaType:v11 exceptionReason:&v60];
          v12 = v8->_trackOutputInternal->outputSettings;
          if (!v12)
          {
            v44 = v8;
            v19 = MEMORY[0x1E695DF30];
            v20 = *MEMORY[0x1E695D940];
            v21 = v60;
            goto LABEL_21;
          }

          if (![(NSSet *)[(AVOutputSettings *)v12 compatibleMediaTypes] containsObject:v11])
          {
            v45 = v8;
            v46 = MEMORY[0x1E695DF30];
            v47 = *MEMORY[0x1E695D940];
            v53 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"Output settings are not compatible with media type %@", v48, v49, v50, v51, v52, v11);
            v54 = v46;
            v55 = v47;
            goto LABEL_23;
          }

          if ([(AVOutputSettings *)v8->_trackOutputInternal->outputSettings willYieldCompressedSamples])
          {
            v56 = v8;
            v19 = MEMORY[0x1E695DF30];
            v20 = *MEMORY[0x1E695D940];
            v21 = @"AVAssetReaderOutput does not currently support compressed output";
            goto LABEL_21;
          }

          if ([(NSDictionary *)outputSettings objectForKey:*MEMORY[0x1E6958338]])
          {
            v13 = v8;
            v19 = MEMORY[0x1E695DF30];
            v20 = *MEMORY[0x1E695D940];
            v21 = @"AVAssetReaderOutput does not support AVSampleRateConverterAudioQualityKey";
LABEL_21:
            v29 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, v21, v14, v15, v16, v17, v18, v57);
            goto LABEL_22;
          }

          return v8;
        }

        v37 = v8;
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v38 = objc_opt_class();
        v59 = NSStringFromClass(v38);
        v29 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"%@ does not currently support AVVideoScalingModeKey", v39, v40, v41, v42, v43, v59);
      }

LABEL_22:
      v53 = v29;
      v54 = v19;
      v55 = v20;
LABEL_23:
      objc_exception_throw([v54 exceptionWithName:v55 reason:v53 userInfo:0]);
    }
  }

  return v8;
}

- (void)dealloc
{
  trackOutputInternal = self->_trackOutputInternal;
  if (trackOutputInternal)
  {

    CFRelease(self->_trackOutputInternal);
  }

  v4.receiver = self;
  v4.super_class = AVAssetReaderTrackOutput;
  [(AVAssetReaderOutput *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, track = %@, outputSettings = %@>", NSStringFromClass(v4), self, -[AVAssetReaderTrackOutput track](self, "track"), -[AVAssetReaderTrackOutput outputSettings](self, "outputSettings")];
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

  v12 = self->_trackOutputInternal->audioTimePitchAlgorithm;
  if (v12 != audioTimePitchAlgorithm)
  {

    self->_trackOutputInternal->audioTimePitchAlgorithm = [(NSString *)audioTimePitchAlgorithm copy];
  }
}

- (void)setLimitsImageQueueCapacityToOneFrame:(BOOL)frame
{
  if (([-[AVAssetReaderTrackOutput mediaType](self "mediaType")] & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"cannot use limitsImageQueueCapacityToOneFrame for non video media type";
    goto LABEL_6;
  }

  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"cannot be called after reading has started";
LABEL_6:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  self->_trackOutputInternal->limitsImageQueueCapacityToOneFrame = frame;
}

- (id)mediaType
{
  track = [(AVAssetReaderTrackOutput *)self track];

  return [(AVAssetTrack *)track mediaType];
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  if ([(AVAssetReaderTrackOutput *)self _isAttachedToAdaptor])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot copy sample buffers when attached to an adaptor", v4, v5, v6, v7, v8, v11.receiver), 0}];
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = AVAssetReaderTrackOutput;
  return [(AVAssetReaderOutput *)&v11 copyNextSampleBuffer];
}

- (opaqueCMSampleBuffer)_copyNextSampleBufferForAdaptor
{
  v3.receiver = self;
  v3.super_class = AVAssetReaderTrackOutput;
  return [(AVAssetReaderOutput *)&v3 copyNextSampleBuffer];
}

- (id)_asset
{
  track = [(AVAssetReaderTrackOutput *)self track];

  return [(AVAssetTrack *)track asset];
}

- (BOOL)_trimsSampleDurations
{
  if (self->_trackOutputInternal->outputSettings)
  {
    return 1;
  }

  mediaType = [(AVAssetReaderTrackOutput *)self mediaType];

  return [mediaType isEqual:@"soun"];
}

- (id)_formatDescriptions
{
  track = [(AVAssetReaderTrackOutput *)self track];

  return [(AVAssetTrack *)track formatDescriptions];
}

- (id)_figAssetReaderExtractionOptions
{
  v32.receiver = self;
  v32.super_class = AVAssetReaderTrackOutput;
  v4 = [(NSDictionary *)[(AVAssetReaderOutput *)&v32 _figAssetReaderExtractionOptions] mutableCopy];
  appliesPreferredTrackTransform = [(AVAssetReaderTrackOutput *)self appliesPreferredTrackTransform];
  v6 = MEMORY[0x1E6971388];
  if (!appliesPreferredTrackTransform)
  {
    v6 = MEMORY[0x1E69713A0];
  }

  [v4 setObject:*v6 forKey:*MEMORY[0x1E6971370]];
  outputSettings = self->_trackOutputInternal->outputSettings;
  if (([-[AVAssetReaderTrackOutput mediaType](self "mediaType")] & 1) == 0 && (objc_msgSend(-[AVAssetReaderTrackOutput mediaType](self, "mediaType"), "isEqualToString:", @"auxv") & 1) == 0 && !objc_msgSend(-[AVAssetReaderTrackOutput mediaType](self, "mediaType"), "isEqualToString:", @"scen"))
  {
    if (![(AVAssetReaderTrackOutput *)self limitsImageQueueCapacityToOneFrame])
    {
      return v4;
    }

    goto LABEL_32;
  }

  v8 = [-[AVOutputSettings frameRateConversionAlgorithm](outputSettings "frameRateConversionAlgorithm")];
  v9 = MEMORY[0x1E69735F8];
  if (!v8)
  {
    v9 = MEMORY[0x1E6973600];
  }

  [v4 setObject:*v9 forKey:*MEMORY[0x1E6973620]];
  if ([(AVOutputSettings *)outputSettings conformsToProtocol:&unk_1F0B00DD8])
  {
    fieldMode = [(AVOutputSettings *)outputSettings fieldMode];
    if (fieldMode)
    {
      [v4 setObject:fieldMode forKey:*MEMORY[0x1E6971358]];
    }
  }

  if ([(AVOutputSettings *)outputSettings conformsToProtocol:&unk_1F0B00DD8])
  {
    decompressionProperties = [(AVOutputSettings *)outputSettings decompressionProperties];
    if (decompressionProperties)
    {
      [v4 setObject:decompressionProperties forKey:*MEMORY[0x1E6971348]];
    }
  }

  v12 = [(NSDictionary *)[(AVAssetReaderTrackOutput *)self outputSettings] objectForKey:@"AVVideoEmitSequencesAtSyncFramesOnly"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"AVVideoEmitSequencesAtSyncFramesOnly value must be NSNumber";
      goto LABEL_37;
    }

    [v4 setObject:v12 forKey:*MEMORY[0x1E6973610]];
  }

  v18 = [(NSDictionary *)[(AVAssetReaderTrackOutput *)self outputSettings] objectForKey:@"AVVideoMinimumIntervalForSyncFrames"];
  if (v18)
  {
    [v4 setObject:v18 forKey:*MEMORY[0x1E6973618]];
  }

  v19 = [(NSDictionary *)[(AVAssetReaderTrackOutput *)self outputSettings] objectForKey:@"AVVideoAverageIntervalForSyncFramesKey"];
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"AVVideoAverageIntervalForSyncFramesKey value must be NSDictionary";
      goto LABEL_37;
    }

    [v4 setObject:v20 forKey:*MEMORY[0x1E6973608]];
    if (v18)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"cannot use AVVideoMinimumIntervalForSyncFrames and AVVideoAverageIntervalForSyncFramesKey at the same time";
      goto LABEL_37;
    }
  }

  v21 = [(NSDictionary *)[(AVAssetReaderTrackOutput *)self outputSettings] objectForKey:@"AVVideoDecompressionPropertiesKey"];
  v22 = *MEMORY[0x1E69839B8];
  v23 = [v21 objectForKey:*MEMORY[0x1E69839B8]];
  if (v23)
  {
    [v4 setObject:v23 forKey:v22];
  }

  v24 = [(NSDictionary *)[(AVAssetReaderTrackOutput *)self outputSettings] objectForKey:@"AVVideoDecompressionPropertiesKey"];
  v25 = *MEMORY[0x1E69839B0];
  v26 = [v24 objectForKey:*MEMORY[0x1E69839B0]];
  if (v26)
  {
    [v4 setObject:v26 forKey:v25];
  }

  if ([(AVAssetReaderTrackOutput *)self limitsImageQueueCapacityToOneFrame])
  {
    if (v12)
    {
      if ([v12 integerValue] == 1)
      {
        [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971360]];
        return v4;
      }

      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"cannot use limitsImageQueueCapacityToOneFrame without AVVideoEmitSequencesAtSyncFramesOnly set to 1";
LABEL_37:
      v31 = [v28 exceptionWithName:v29 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v30, v13, v14, v15, v16, v17, v32.receiver), 0}];
      objc_exception_throw(v31);
    }

LABEL_32:
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"cannot use limitsImageQueueCapacityToOneFrame without AVVideoEmitSequencesAtSyncFramesOnly";
    goto LABEL_37;
  }

  return v4;
}

- (unsigned)_getUniformMediaSubtypeIfExists
{
  v16 = *MEMORY[0x1E69E9840];
  formatDescriptions = [(AVAssetTrack *)[(AVAssetReaderTrackOutput *)self track] formatDescriptions];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSArray *)formatDescriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(formatDescriptions);
      }

      MediaSubType = CMFormatDescriptionGetMediaSubType(*(*(&v11 + 1) + 8 * v7));
      v5 = MediaSubType;
      if (v8)
      {
        if (v8 != MediaSubType)
        {
          break;
        }
      }

      ++v7;
      v8 = MediaSubType;
      if (v4 == v7)
      {
        v4 = [(NSArray *)formatDescriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        return v5;
      }
    }
  }

  return 0;
}

- (BOOL)_enableTrackExtractionReturningError:(id *)error
{
  v44 = -1;
  _figAssetReader = [(AVAssetReaderOutput *)self _figAssetReader];
  trackID = [(AVAssetTrack *)[(AVAssetReaderTrackOutput *)self track] trackID];
  _figAssetReaderExtractionOptions = [(AVAssetReaderTrackOutput *)self _figAssetReaderExtractionOptions];
  outputSettings = self->_trackOutputInternal->outputSettings;
  if (!outputSettings)
  {
    _attachedAdaptor = [(AVAssetReaderTrackOutput *)self _attachedAdaptor];
    if (!_attachedAdaptor)
    {
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v22)
      {
        v21 = 4294954514;
        if (error)
        {
          goto LABEL_19;
        }

        return 0;
      }

      v16 = v22(_figAssetReader, trackID, _figAssetReaderExtractionOptions, &v44);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (([-[AVAssetReaderTrackOutput mediaType](self "mediaType")] & 1) != 0 || (objc_msgSend(-[AVAssetReaderTrackOutput mediaType](self, "mediaType"), "isEqualToString:", @"auxv") & 1) != 0 || objc_msgSend(-[AVAssetReaderTrackOutput mediaType](self, "mediaType"), "isEqualToString:", @"scen"))
  {
    if ([(AVOutputSettings *)outputSettings willYieldCompressedSamples])
    {
      v38 = trackID;
      v9 = _figAssetReaderExtractionOptions;
      videoCodecType = [(AVOutputSettings *)outputSettings videoCodecType];
      width = [(AVOutputSettings *)outputSettings width];
      height = [(AVOutputSettings *)outputSettings height];
      videoEncoderSpecification = [(AVOutputSettings *)outputSettings videoEncoderSpecification];
      pixelTransferProperties = [(AVOutputSettings *)outputSettings pixelTransferProperties];
      videoCompressionProperties = [(AVOutputSettings *)outputSettings videoCompressionProperties];
      if (pixelTransferProperties)
      {
        videoCompressionProperties = [MEMORY[0x1E695DF90] dictionaryWithDictionary:videoCompressionProperties];
        [videoCompressionProperties setObject:pixelTransferProperties forKey:*MEMORY[0x1E6983798]];
      }

      [(AVOutputSettings *)outputSettings minimumFrameDuration];
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v15)
      {
        v39 = v42;
        *&v40 = v43;
        v16 = v15(_figAssetReader, v38, width, height, 0, videoCodecType, videoEncoderSpecification, videoCompressionProperties, 0, &v39, v9, &v44);
        goto LABEL_17;
      }

LABEL_14:
      v21 = 4294954514;
      goto LABEL_18;
    }

    pixelBufferAttributes = [(AVOutputSettings *)outputSettings pixelBufferAttributes];
    v19 = [AVAssetReaderOutput _figAssetReaderVideoScalingPropertiesFromVideoSettings:outputSettings withFormatDescription:[(AVAssetReaderTrackOutput *)self _formatDescriptions]];
    [(AVOutputSettings *)outputSettings minimumFrameDuration];
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v20)
    {
      goto LABEL_14;
    }

    v39 = v42;
    *&v40 = v43;
    v16 = v20(_figAssetReader, trackID, pixelBufferAttributes, v19, &v39, _figAssetReaderExtractionOptions, &v44);
LABEL_17:
    v21 = v16;
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_38:
    v32 = v44;
    goto LABEL_39;
  }

  if ([-[AVAssetReaderTrackOutput mediaType](self "mediaType")])
  {
    willYieldCompressedSamples = [(AVOutputSettings *)outputSettings willYieldCompressedSamples];
    formatDescriptions = [(AVAssetTrack *)[(AVAssetReaderTrackOutput *)self track] formatDescriptions];
    if ([(NSArray *)formatDescriptions count])
    {
      v27 = [(NSArray *)formatDescriptions objectAtIndex:0];
    }

    else
    {
      v27 = 0;
    }

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    *&v42 = 0;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{AVAssetReaderGetFigAssetReaderAudioTimePitchAlgorithmForAudioTimePitchAlgorithm(self->_trackOutputInternal->audioTimePitchAlgorithm), *MEMORY[0x1E6971320], 0}];
    [(AVOutputSettings *)outputSettings getAudioStreamBasicDescription:&v39 forAudioFileTypeID:0 sourceFormatDescription:v27];
    v34 = [(AVOutputSettings *)outputSettings copyAudioChannelLayoutForSourceFormatDescription:v27 audioChannelLayoutSize:&v42];
    audioOptions = [(AVOutputSettings *)outputSettings audioOptions];
    if (willYieldCompressedSamples)
    {
      v36 = FigAssetReaderEnableReencodedAudioExtractionFromTrack(_figAssetReader, trackID, &v39, v42, v34, audioOptions, v33, _figAssetReaderExtractionOptions, &v44);
    }

    else
    {
      v36 = FigAssetReaderEnableDecodedAudioExtractionFromTrackWithAudioOptions(_figAssetReader, trackID, &v39, v42, v34, audioOptions, v33, _figAssetReaderExtractionOptions, &v44);
    }

    v21 = v36;
    free(v34);
    if (v21)
    {
LABEL_18:
      if (error)
      {
LABEL_19:
        v23 = [AVAssetReader _errorForOSStatus:v21];
        result = 0;
        *error = v23;
        return result;
      }

      return 0;
    }

    goto LABEL_38;
  }

  if ([-[AVAssetReaderTrackOutput mediaType](self "mediaType")])
  {
    _getUniformMediaSubtypeIfExists = [(AVAssetReaderTrackOutput *)self _getUniformMediaSubtypeIfExists];
    v29 = 1634301044;
    goto LABEL_29;
  }

  if ([-[AVAssetReaderTrackOutput mediaType](self "mediaType")])
  {
    _getUniformMediaSubtypeIfExists = [(AVAssetReaderTrackOutput *)self _getUniformMediaSubtypeIfExists];
    v29 = 1664495672;
LABEL_29:
    if (_getUniformMediaSubtypeIfExists != v29)
    {
      goto LABEL_32;
    }

    _attachedAdaptor2 = [(AVAssetReaderTrackOutput *)self _attachedAdaptor];
    if (!_attachedAdaptor2)
    {
      goto LABEL_32;
    }

    v31 = _attachedAdaptor2;
    if ([(NSDictionary *)[(AVOutputSettings *)outputSettings outputSettingsDictionary] count])
    {
      goto LABEL_32;
    }

    _attachedAdaptor = v31;
LABEL_11:
    v16 = [_attachedAdaptor addExtractionForOutput:self figAssetReader:_figAssetReader options:_figAssetReaderExtractionOptions withOutputExtactionID:&v44];
    goto LABEL_17;
  }

LABEL_32:
  v32 = 0xFFFFFFFFLL;
LABEL_39:
  [(AVAssetReaderOutput *)self _setExtractionID:v32];
  return 1;
}

@end