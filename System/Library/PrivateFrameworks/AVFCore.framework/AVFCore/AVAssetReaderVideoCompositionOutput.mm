@interface AVAssetReaderVideoCompositionOutput
+ (AVAssetReaderVideoCompositionOutput)assetReaderVideoCompositionOutputWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings;
- (AVAssetReaderVideoCompositionOutput)initWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings;
- (BOOL)_enableTrackExtractionReturningError:(id *)a3;
- (BOOL)_prepareForReadingReturningError:(id *)a3;
- (BOOL)alwaysCopiesSampleData;
- (id)_asset;
- (id)_errorForOSStatus:(int)a3;
- (id)_formatDescriptions;
- (id)_videoCompositionProcessorColorProperties;
- (id)description;
- (id)makeLookupableSpatialVideoConfigurations:(id)a3;
- (id)mediaType;
- (void)_setVideoComposition:(id)a3;
- (void)_setVideoComposition:(id)a3 customVideoCompositorSession:(id)a4;
- (void)dealloc;
- (void)setVideoComposition:(AVVideoComposition *)videoComposition;
@end

@implementation AVAssetReaderVideoCompositionOutput

+ (AVAssetReaderVideoCompositionOutput)assetReaderVideoCompositionOutputWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings
{
  v4 = [objc_alloc(objc_opt_class()) initWithVideoTracks:videoTracks videoSettings:videoSettings];

  return v4;
}

- (AVAssetReaderVideoCompositionOutput)initWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings
{
  v58 = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = AVAssetReaderVideoCompositionOutput;
  v7 = [(AVAssetReaderOutput *)&v56 init];
  v8 = v7;
  if (!videoTracks)
  {
    v34 = v7;
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v33 = AVMethodExceptionReasonWithObjectAndSelector(v8, a2, @"invalid parameter not satisfying: %s", v35, v36, v37, v38, v39, "videoTracks != nil");
LABEL_32:
    objc_exception_throw([v29 exceptionWithName:v30 reason:v33 userInfo:0]);
  }

  v49 = a2;
  v50 = videoSettings;
  if (![(NSArray *)videoTracks count])
  {
    v40 = v8;
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v48 = "[videoTracks count] >= 1";
    v31 = @"invalid parameter not satisfying: %s";
LABEL_31:
    v33 = AVMethodExceptionReasonWithObjectAndSelector(v8, v49, v31, v24, v25, v26, v27, v28, v48);
    goto LABEL_32;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [(NSArray *)videoTracks countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v53;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v53 != v12)
      {
        objc_enumerationMutation(videoTracks);
      }

      v14 = *(*(&v52 + 1) + 8 * i);
      v15 = [v14 mediaType];
      if (([v15 isEqualToString:@"vide"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"auxv") & 1) == 0)
      {
        v32 = v8;
        v29 = MEMORY[0x1E695DF30];
        v30 = *MEMORY[0x1E695D940];
        v31 = @"tracks must all have media type AVMediaTypeVideo";
        goto LABEL_31;
      }

      v16 = [v14 asset];
      if (v11)
      {
        if (v16 != v11)
        {
          v23 = v8;
          v29 = MEMORY[0x1E695DF30];
          v30 = *MEMORY[0x1E695D940];
          v31 = @"tracks must all be part of the same AVAsset";
          goto LABEL_31;
        }
      }

      else
      {
        v11 = v16;
      }
    }

    v10 = [(NSArray *)videoTracks countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v10);
LABEL_16:
  if (v8)
  {
    v17 = objc_alloc_init(AVAssetReaderVideoCompositionOutputInternal);
    v8->_videoCompositionOutputInternal = v17;
    if (!v17)
    {

      return 0;
    }

    CFRetain(v17);
    v8->_videoCompositionOutputInternal->videoTracks = [(NSArray *)videoTracks copyWithZone:[(AVAssetReaderVideoCompositionOutput *)v8 zone]];
    if (v50)
    {
      if ([(NSDictionary *)v50 objectForKey:@"AVVideoCleanApertureKey"]|| [(NSDictionary *)v50 objectForKey:@"AVVideoPixelAspectRatioKey"])
      {
        v41 = v8;
        v29 = MEMORY[0x1E695DF30];
        v30 = *MEMORY[0x1E695D940];
        v42 = objc_opt_class();
        v48 = NSStringFromClass(v42);
        v31 = @"%@ does not currently support AVVideoCleanApertureKey or AVVideoPixelAspectRatioKey";
      }

      else if ([(NSDictionary *)v50 objectForKey:@"AVVideoScalingModeKey"])
      {
        v45 = v8;
        v29 = MEMORY[0x1E695DF30];
        v30 = *MEMORY[0x1E695D940];
        v46 = objc_opt_class();
        v48 = NSStringFromClass(v46);
        v31 = @"%@ does not currently support AVVideoScalingModeKey";
      }

      else
      {
        v18 = [(NSDictionary *)v50 objectForKey:@"AVVideoDecompressionPropertiesKey"];
        if (v18 && ((v19 = v18, ![v18 objectForKey:*MEMORY[0x1E69839B8]]) || objc_msgSend(v19, "count") >= 2))
        {
          v43 = v8;
          v29 = MEMORY[0x1E695DF30];
          v30 = *MEMORY[0x1E695D940];
          v44 = objc_opt_class();
          v48 = NSStringFromClass(v44);
          v31 = @"%@ does not currently support AVVideoDecompressionPropertiesKey";
        }

        else
        {
          v51 = 0;
          v8->_videoCompositionOutputInternal->videoOutputSettings = [AVVideoOutputSettings _videoOutputSettingsWithVideoSettingsDictionary:v50 exceptionReason:&v51];
          videoOutputSettings = v8->_videoCompositionOutputInternal->videoOutputSettings;
          if (videoOutputSettings)
          {
            if ([(AVOutputSettings *)videoOutputSettings willYieldCompressedSamples])
            {
              v21 = v8;
              v29 = MEMORY[0x1E695DF30];
              v30 = *MEMORY[0x1E695D940];
              v31 = @"AVAssetReaderOutput does not currently support compressed output";
              goto LABEL_31;
            }

            return v8;
          }

          v47 = v8;
          v29 = MEMORY[0x1E695DF30];
          v30 = *MEMORY[0x1E695D940];
          v31 = v51;
        }
      }

      goto LABEL_31;
    }
  }

  return v8;
}

- (void)dealloc
{
  videoCompositionOutputInternal = self->_videoCompositionOutputInternal;
  if (videoCompositionOutputInternal)
  {

    v4 = self->_videoCompositionOutputInternal;
    figVideoCompositor = v4->figVideoCompositor;
    if (figVideoCompositor)
    {
      CFRelease(figVideoCompositor);
      v4 = self->_videoCompositionOutputInternal;
    }

    CFRelease(self->_videoCompositionOutputInternal);
  }

  v6.receiver = self;
  v6.super_class = AVAssetReaderVideoCompositionOutput;
  [(AVAssetReaderOutput *)&v6 dealloc];
}

- (BOOL)alwaysCopiesSampleData
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = AVAssetReaderVideoCompositionOutput;
    LOBYTE(v3) = [(AVAssetReaderOutput *)&v5 alwaysCopiesSampleData];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, videoTracks = %@>", NSStringFromClass(v4), self, -[AVAssetReaderVideoCompositionOutput videoTracks](self, "videoTracks")];
}

- (id)makeLookupableSpatialVideoConfigurations:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [[AVLookupableSpatialVideoConfiguration alloc] initWithSpatialVideoConfiguration:*(*(&v12 + 1) + 8 * v9)];
        -[AVLookupableSpatialVideoConfiguration setLookupID:](v10, "setLookupID:", [MEMORY[0x1E696AD98] numberWithInt:v8]);
        [v4 addObject:v10];
        v8 = (v8 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_setVideoComposition:(id)a3
{
  if (a3)
  {
    v18 = 0;
    if ([a3 _isValidReturningExceptionReason:&v18])
    {
      [a3 renderScale];
      if (v11 == 1.0)
      {
        goto LABEL_4;
      }

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = @"AVAssetReaderVideoCompositionOutput can't use a video composition with a renderScale other than 1.0";
    }

    else
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = v18;
    }

    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v15, v6, v7, v8, v9, v10, v17), 0}];
    objc_exception_throw(v16);
  }

LABEL_4:
  v12 = [a3 copy];

  self->_videoCompositionOutputInternal->videoComposition = v12;
  [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition setLookupableSpatialVideoConfigurations:[(AVAssetReaderVideoCompositionOutput *)self makeLookupableSpatialVideoConfigurations:[(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition spatialVideoConfigurations]]];

  self->_videoCompositionOutputInternal->sampleDataTrackIDs = [(AVVideoComposition *)v12 sourceSampleDataTrackIDs];
}

- (void)_setVideoComposition:(id)a3 customVideoCompositorSession:(id)a4
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v8, v9, v10, v11, v12, v17), 0}];
    objc_exception_throw(v16);
  }

  videoCompositionOutputInternal = self->_videoCompositionOutputInternal;
  if (videoCompositionOutputInternal->videoComposition != a3 || videoCompositionOutputInternal->customVideoCompositorSession != a4)
  {
    [(AVAssetReaderVideoCompositionOutput *)self _setVideoComposition:a3];
    v14 = a4;

    self->_videoCompositionOutputInternal->customVideoCompositorSession = a4;
    figVideoCompositor = self->_videoCompositionOutputInternal->figVideoCompositor;
    if (figVideoCompositor)
    {
      CFRelease(figVideoCompositor);
    }

    self->_videoCompositionOutputInternal->figVideoCompositor = [a4 _copyFigVideoCompositor];
  }
}

- (void)setVideoComposition:(AVVideoComposition *)videoComposition
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  if (self->_videoCompositionOutputInternal->videoComposition != videoComposition)
  {
    [(AVAssetReaderVideoCompositionOutput *)self _setVideoComposition:videoComposition];
    v15 = 0;
    v16 = 0;
    [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _copyFigVideoCompositor:&v16 andSession:&v15 recyclingSession:self->_videoCompositionOutputInternal->customVideoCompositorSession forFigRemaker:1 error:0];
    videoCompositionOutputInternal = self->_videoCompositionOutputInternal;
    figVideoCompositor = videoCompositionOutputInternal->figVideoCompositor;
    if (figVideoCompositor)
    {
      CFRelease(figVideoCompositor);
      videoCompositionOutputInternal = self->_videoCompositionOutputInternal;
    }

    videoCompositionOutputInternal->figVideoCompositor = v16;
    v13 = self->_videoCompositionOutputInternal->customVideoCompositorSession;
    self->_videoCompositionOutputInternal->customVideoCompositorSession = v15;
  }
}

- (id)mediaType
{
  v2 = [(NSArray *)self->_videoCompositionOutputInternal->videoTracks objectAtIndex:0];

  return [v2 mediaType];
}

- (id)_asset
{
  v2 = [(NSArray *)[(AVAssetReaderVideoCompositionOutput *)self videoTracks] objectAtIndex:0];

  return [v2 asset];
}

- (id)_errorForOSStatus:(int)a3
{
  if (a3 == -16180 && (customVideoCompositorSession = self->_videoCompositionOutputInternal->customVideoCompositorSession) != 0)
  {
    return [(AVCustomVideoCompositorSession *)customVideoCompositorSession getAndClearClientError];
  }

  else
  {
    return [AVAssetReader _errorForOSStatus:?];
  }
}

- (BOOL)_prepareForReadingReturningError:(id *)a3
{
  v5 = [(AVAssetReaderVideoCompositionOutput *)self videoComposition];
  if (!v5)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*** AVAssetReaderVideoCompositionOutput.videoComposition needs to be set" userInfo:0]);
  }

  v6 = v5;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v7 = [(AVWeakReference *)[(AVAssetReaderOutput *)self _weakReferenceToAssetReader] referencedObject];
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v8 = [(AVAssetReaderVideoCompositionOutput *)self _asset];
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  if ([(AVVideoComposition *)v6 isValidForAsset:v8 timeRange:v13 validationDelegate:0])
  {
    v12.receiver = self;
    v12.super_class = AVAssetReaderVideoCompositionOutput;
    return [(AVAssetReaderOutput *)&v12 _prepareForReadingReturningError:a3];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:-11841 userInfo:0];
    if (a3)
    {
      v11 = v10;
      result = 0;
      *a3 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_formatDescriptions
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVAssetReaderVideoCompositionOutput *)self videoTracks];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "formatDescriptions")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_videoCompositionProcessorColorProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition videoCompositionOutputColorPropertiesWithCustomCompositor:self->_videoCompositionOutputInternal->customVideoCompositorSession formatDescriptions:[(AVAssetReaderVideoCompositionOutput *)self _formatDescriptions] colorPrimaries:&v10 transferFunction:&v9 yCbCrMatrix:&v8 perFrameHDRDisplayMetadataPolicy:&v7];
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6973B58]];
  }

  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6973B60]];
  }

  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6973B68]];
  }

  v4 = [v7 isEqual:@"PerFrameHDRDisplayMetadataPolicy_Generate"];
  v5 = MEMORY[0x1E6973B50];
  if (v4)
  {
    v5 = MEMORY[0x1E6973B48];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x1E6973B70]];
  return v3;
}

- (BOOL)_enableTrackExtractionReturningError:(id *)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v68 = -1;
  v4 = [(AVAssetReaderVideoCompositionOutput *)self videoTracks];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v4, "count")}];
  v6 = [(AVAssetReaderOutput *)self _figAssetReaderExtractionOptions];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = [(NSArray *)v4 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v65;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(v4);
        }

        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(*(&v64 + 1) + 8 * i), "trackID"))}];
      }

      v8 = [(NSArray *)v4 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v8);
  }

  videoOutputSettings = self->_videoCompositionOutputInternal->videoOutputSettings;
  v12 = [(NSDictionary *)[(AVVideoOutputSettings *)videoOutputSettings videoSettingsDictionary] objectForKey:@"AVVideoDecompressionPropertiesKey"];
  v13 = *MEMORY[0x1E69839B8];
  v14 = [v12 objectForKey:*MEMORY[0x1E69839B8]];
  if (v14)
  {
    v15 = v14;
    v6 = [(NSDictionary *)v6 mutableCopy];
    [(NSDictionary *)v6 setValue:v15 forKey:v13];
  }

  v16 = [AVAssetReaderOutput _figAssetReaderVideoScalingPropertiesFromVideoSettings:videoOutputSettings withFormatDescription:[(AVAssetReaderVideoCompositionOutput *)self _formatDescriptions]];
  if ([(AVOutputSettings *)videoOutputSettings willYieldCompressedSamples])
  {
    LODWORD(v17) = [(AVVideoOutputSettings *)videoOutputSettings videoCodecType];
    v58 = [(AVVideoOutputSettings *)videoOutputSettings videoEncoderSpecification];
    v18 = [(AVVideoOutputSettings *)videoOutputSettings pixelTransferProperties];
    v19 = [(AVVideoOutputSettings *)videoOutputSettings videoCompressionProperties];
    if (v18)
    {
      v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v19];
      [v19 setObject:v18 forKey:*MEMORY[0x1E6983798]];
    }

    v20 = [(AVVideoOutputSettings *)videoOutputSettings width];
    v59 = [(AVVideoOutputSettings *)videoOutputSettings height];
    v21 = 0;
    v22 = 0;
LABEL_18:
    if (!self->_videoCompositionOutputInternal->figVideoCompositor)
    {
      v33 = AVLocalizedError(@"AVFoundationErrorDomain", -11841, 0);
      v17 = 0;
      v69 = v33;
      goto LABEL_39;
    }

    v60 = [(AVAssetReaderOutput *)self _figAssetReader];
    v56 = [(AVAssetReaderVideoCompositionOutput *)self sampleDataTrackIDs];
    v55 = AVVideoCompositionSerializeSourceTrackWindows([(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition sourceVideoTrackWindowsForTrackIDs]);
    v28 = AVVideoCompositionSerializeSourceTrackWindows([(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition sourceSampleDataTrackWindowsForTrackIDs]);
    videoCompositionOutputInternal = self->_videoCompositionOutputInternal;
    figVideoCompositor = videoCompositionOutputInternal->figVideoCompositor;
    v54 = v28;
    v52 = [(AVVideoComposition *)videoCompositionOutputInternal->videoComposition _serializableInstructions];
    v30 = [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _hasLayerAsAuxiliaryTrack];
    videoComposition = self->_videoCompositionOutputInternal->videoComposition;
    if (v30)
    {
      v32 = [(AVVideoComposition *)videoComposition _auxiliaryTrackLayer];
    }

    else
    {
      if (![(AVVideoComposition *)videoComposition _hasPostProcessingLayers])
      {
        v51 = 0;
        goto LABEL_26;
      }

      v32 = [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _postProcessingRootLayer];
    }

    v51 = v32;
LABEL_26:
    if ([(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _hasLayerAsAuxiliaryTrack])
    {
      v50 = [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _auxiliaryTrackID];
    }

    else
    {
      v50 = 0;
    }

    v57 = v16;
    v34 = v6;
    if ([(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _hasPostProcessingLayers])
    {
      v49 = [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition _postProcessingVideoLayers];
    }

    else
    {
      v49 = 0;
    }

    v35 = v22;
    v36 = self->_videoCompositionOutputInternal->videoComposition;
    v37 = v20;
    if (v36)
    {
      [(AVVideoComposition *)v36 frameDuration];
      v36 = self->_videoCompositionOutputInternal->videoComposition;
    }

    else
    {
      v62 = 0uLL;
      v63 = 0;
    }

    v38 = [(AVVideoComposition *)v36 sourceTrackIDForFrameTiming];
    [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition renderSize];
    v40 = v39;
    [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition renderSize];
    v42 = v41;
    v43 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (v43)
    {
      v70 = v62;
      v71 = v63;
      HIDWORD(v48) = v37;
      HIDWORD(v47) = v40;
      LODWORD(v48) = v42;
      LODWORD(v47) = v38;
      v17 = v43(v60, v5, v56, v55, v54, figVideoCompositor, v52, v51, v50, v49, 0, 0, &v70, v47, v48, v59, v35, v57, v17, v58, v19, 0, v21, v34, &v68);
    }

    else
    {
      v17 = 4294954514;
    }

    goto LABEL_38;
  }

  v22 = [(AVVideoOutputSettings *)videoOutputSettings pixelBufferAttributes];
  [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition renderSize];
  v20 = v23;
  [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition renderSize];
  v25 = v24;
  v21 = [(AVAssetReaderVideoCompositionOutput *)self _videoCompositionProcessorColorProperties];
  v26 = [(AVVideoComposition *)self->_videoCompositionOutputInternal->videoComposition outputBufferDescription];
  [v21 setValue:v26 forKey:*MEMORY[0x1E6973B78]];
  [v21 setValue:AVLookupableSpatialVideoConfigurationMakeSerializableArray(-[AVVideoComposition lookupableSpatialVideoConfigurations](self->_videoCompositionOutputInternal->videoComposition forKey:{"lookupableSpatialVideoConfigurations")), *MEMORY[0x1E6973B80]}];
  customVideoCompositorSession = self->_videoCompositionOutputInternal->customVideoCompositorSession;
  if (!customVideoCompositorSession)
  {
    v59 = v25;
    v19 = 0;
    v58 = 0;
    LODWORD(v17) = 0;
    goto LABEL_18;
  }

  v17 = 0;
  if ([(AVCustomVideoCompositorSession *)customVideoCompositorSession commitCustomVideoCompositorPropertiesAndReturnError:&v69])
  {
    v59 = v25;
    v19 = 0;
    v58 = 0;
    goto LABEL_18;
  }

LABEL_38:
  v33 = v69;
LABEL_39:
  if (v17)
  {
    v44 = 0;
  }

  else
  {
    v44 = v33 == 0;
  }

  v45 = v44;
  if (v44)
  {
    [(AVAssetReaderOutput *)self _setExtractionID:v68];
  }

  else if (a3)
  {
    if (!v33)
    {
      v33 = [AVAssetReader _errorForOSStatus:v17];
    }

    *a3 = v33;
  }

  return v45;
}

@end