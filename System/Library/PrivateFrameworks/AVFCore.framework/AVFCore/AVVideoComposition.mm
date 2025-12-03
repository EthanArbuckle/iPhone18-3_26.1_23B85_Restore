@interface AVVideoComposition
+ (AVVideoComposition)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier;
+ (AVVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset;
+ (AVVideoComposition)videoCompositionWithPropertiesOfAsset:(id)asset videoGravity:(id)gravity;
+ (id)_mutableVideoCompositionWithAsset:(id)asset applyingCIFiltersWithHandler:(id)handler;
+ (void)initialize;
+ (void)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier completionHandler:(void *)completionHandler;
+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
- (AVVideoComposition)init;
- (BOOL)_copyFigVideoCompositor:(const void *)compositor andSession:(id *)session recyclingSession:(id)recyclingSession forFigRemaker:(BOOL)remaker error:(id *)error;
- (BOOL)_isValidReturningExceptionReason:(id *)reason;
- (BOOL)isValidForAsset:(AVAsset *)asset timeRange:(CMTimeRange *)timeRange validationDelegate:(id)validationDelegate;
- (BOOL)isValidForTracks:(id)tracks assetDuration:(id *)duration timeRange:(id *)range validationDelegate:(id)delegate;
- (CGSize)renderSize;
- (id)_deepCopy;
- (id)_postProcessingVideoLayer;
- (id)_serializableInstructions;
- (id)_trackWithTrackID:(int)d inTracks:(id)tracks;
- (id)copyWithZone:(_NSZone *)zone;
- (id)instructionForFigInstruction:(void *)instruction;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_setFrameDurationForFrameRate:(float)rate sourceTrackIDForFrameTiming:(int)timing;
- (void)dealloc;
- (void)determineValidityForAsset:(AVAsset *)asset timeRange:(CMTimeRange *)timeRange validationDelegate:(id)validationDelegate completionHandler:(void *)completionHandler;
- (void)setAnimationTool:(id)tool;
- (void)setBuiltInCompositorName:(id)name;
- (void)setColorPrimaries:(id)primaries;
- (void)setColorTransferFunction:(id)function;
- (void)setColorYCbCrMatrix:(id)matrix;
- (void)setFrameDuration:(id *)duration;
- (void)setInstructions:(id)instructions;
- (void)setLookupableSpatialVideoConfigurations:(id)configurations;
- (void)setOutputBufferDescription:(id)description;
- (void)setPerFrameHDRDisplayMetadataPolicy:(id)policy;
- (void)setSourceSampleDataTrackWindowsForTrackIDs:(id)ds;
- (void)setSourceVideoTrackWindowsForTrackIDs:(id)ds;
- (void)setSpatialVideoConfigurations:(id)configurations;
- (void)videoCompositionOutputColorPropertiesWithCustomCompositor:(id)compositor formatDescriptions:(id)descriptions colorPrimaries:(id *)primaries transferFunction:(id *)function yCbCrMatrix:(id *)matrix perFrameHDRDisplayMetadataPolicy:(id *)policy;
@end

@implementation AVVideoComposition

+ (AVVideoComposition)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset
{
  v3 = [[AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:?]];

  return v3;
}

+ (void)videoCompositionWithPropertiesOfAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__AVVideoComposition_videoCompositionWithPropertiesOfAsset_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = asset;
  v4[6] = completionHandler;
  AVLoadValuesAsynchronously(asset, &unk_1F0AD3700, v4);
}

+ (AVVideoComposition)videoCompositionWithPropertiesOfAsset:(id)asset videoGravity:(id)gravity
{
  v4 = [+[AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:videoGravity:](AVMutableVideoComposition copy:asset];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sPreferredBuiltInVideoCompositor = @"VideoCompositor_DeviceSpecific";
  }
}

- (AVVideoComposition)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v9.receiver = self;
  v9.super_class = AVVideoComposition;
  v3 = [(AVVideoComposition *)&v9 init];
  if (v3)
  {
    v4 = objc_alloc_init(AVVideoCompositionInternal);
    v3->_videoComposition = v4;
    if (v4)
    {
      CFRetain(v4);
      [(AVVideoComposition *)v3 setBuiltInCompositorName:sPreferredBuiltInVideoCompositor];
      videoComposition = v3->_videoComposition;
      v6 = MEMORY[0x1E6960C70];
      *&videoComposition->frameDuration.value = *MEMORY[0x1E6960C70];
      videoComposition->frameDuration.epoch = *(v6 + 16);
      v3->_videoComposition->sourceTrackIDForFrameTiming = 0;
      v7 = v3->_videoComposition;
      v7->renderSize.width = 0.0;
      v7->renderSize.height = 0.0;
      v3->_videoComposition->renderScale = 1.0;
      v3->_videoComposition->spatialVideoConfigurations = objc_alloc_init(MEMORY[0x1E695DEC8]);
      if (getPerFrameHDRDisplayMetadataDefault_onceToken != -1)
      {
        [AVVideoComposition init];
      }

      v3->_videoComposition->perFrameHDRDisplayMetadataPolicy = getPerFrameHDRDisplayMetadataDefault_sDefaultPerFrameHDRDisplayMetadataPolicy;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(AVVideoComposition *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [[AVVideoComposition allocWithZone:?]];
    if (v5)
    {
      [(AVVideoComposition *)v5 setBuiltInCompositorName:[(AVVideoComposition *)self builtInCompositorName]];
      [(AVVideoComposition *)v5 setCustomVideoCompositorClass:[(AVVideoComposition *)self customVideoCompositorClass]];
      if (self)
      {
        [(AVVideoComposition *)self frameDuration];
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      [(AVVideoComposition *)v5 setFrameDuration:v8, self];
      -[AVVideoComposition setSourceTrackIDForFrameTiming:](v5, "setSourceTrackIDForFrameTiming:", [v7 sourceTrackIDForFrameTiming]);
      [v7 renderSize];
      [(AVVideoComposition *)v5 setRenderSize:?];
      [v7 renderScale];
      [(AVVideoComposition *)v5 setRenderScale:?];
      -[AVVideoComposition setColorPrimaries:](v5, "setColorPrimaries:", [v7 colorPrimaries]);
      -[AVVideoComposition setColorYCbCrMatrix:](v5, "setColorYCbCrMatrix:", [v7 colorYCbCrMatrix]);
      -[AVVideoComposition setColorTransferFunction:](v5, "setColorTransferFunction:", [v7 colorTransferFunction]);
      -[AVVideoComposition setPerFrameHDRDisplayMetadataPolicy:](v5, "setPerFrameHDRDisplayMetadataPolicy:", [v7 perFrameHDRDisplayMetadataPolicy]);
      -[AVVideoComposition setInstructions:](v5, "setInstructions:", [v7 instructions]);
      -[AVVideoComposition setAnimationTool:](v5, "setAnimationTool:", [v7 animationTool]);
      -[AVVideoComposition setSourceSampleDataTrackIDs:](v5, "setSourceSampleDataTrackIDs:", [v7 sourceSampleDataTrackIDs]);
      -[AVVideoComposition setSourceVideoTrackWindowsForTrackIDs:](v5, "setSourceVideoTrackWindowsForTrackIDs:", [v7 sourceVideoTrackWindowsForTrackIDs]);
      -[AVVideoComposition setSourceSampleDataTrackWindowsForTrackIDs:](v5, "setSourceSampleDataTrackWindowsForTrackIDs:", [v7 sourceSampleDataTrackWindowsForTrackIDs]);
      -[AVVideoComposition setOutputBufferDescription:](v5, "setOutputBufferDescription:", [v7 outputBufferDescription]);
      -[AVVideoComposition setSpatialVideoConfigurations:](v5, "setSpatialVideoConfigurations:", [v7 spatialVideoConfigurations]);
      -[AVVideoComposition setLookupableSpatialVideoConfigurations:](v5, "setLookupableSpatialVideoConfigurations:", [v7 lookupableSpatialVideoConfigurations]);
    }

    return v5;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(AVVideoComposition *)[AVMutableVideoComposition allocWithZone:?]];
  if (v4)
  {
    [(AVMutableVideoComposition *)v4 setBuiltInCompositorName:[(AVVideoComposition *)self builtInCompositorName]];
    [(AVMutableVideoComposition *)v4 setCustomVideoCompositorClass:[(AVVideoComposition *)self customVideoCompositorClass]];
    if (self)
    {
      [(AVVideoComposition *)self frameDuration];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    [(AVMutableVideoComposition *)v4 setFrameDuration:v6];
    [(AVMutableVideoComposition *)v4 setSourceTrackIDForFrameTiming:[(AVVideoComposition *)self sourceTrackIDForFrameTiming]];
    [(AVVideoComposition *)self renderSize];
    [(AVMutableVideoComposition *)v4 setRenderSize:?];
    [(AVVideoComposition *)self renderScale];
    [(AVMutableVideoComposition *)v4 setRenderScale:?];
    [(AVMutableVideoComposition *)v4 setColorPrimaries:[(AVVideoComposition *)self colorPrimaries]];
    [(AVMutableVideoComposition *)v4 setColorYCbCrMatrix:[(AVVideoComposition *)self colorYCbCrMatrix]];
    [(AVMutableVideoComposition *)v4 setColorTransferFunction:[(AVVideoComposition *)self colorTransferFunction]];
    [(AVMutableVideoComposition *)v4 setPerFrameHDRDisplayMetadataPolicy:[(AVVideoComposition *)self perFrameHDRDisplayMetadataPolicy]];
    [(AVMutableVideoComposition *)v4 setInstructions:[(AVVideoComposition *)self instructions]];
    [(AVMutableVideoComposition *)v4 setAnimationTool:[(AVVideoComposition *)self animationTool]];
    [(AVMutableVideoComposition *)v4 setSourceSampleDataTrackIDs:[(AVVideoComposition *)self sourceSampleDataTrackIDs]];
    [(AVMutableVideoComposition *)v4 setSourceVideoTrackWindowsForTrackIDs:[(AVVideoComposition *)self sourceVideoTrackWindowsForTrackIDs]];
    [(AVMutableVideoComposition *)v4 setSourceSampleDataTrackWindowsForTrackIDs:[(AVVideoComposition *)self sourceSampleDataTrackWindowsForTrackIDs]];
    [(AVMutableVideoComposition *)v4 setOutputBufferDescription:[(AVVideoComposition *)self outputBufferDescription]];
    [(AVMutableVideoComposition *)v4 setSpatialVideoConfigurations:[(AVVideoComposition *)self spatialVideoConfigurations]];
    [(AVVideoComposition *)v4 setLookupableSpatialVideoConfigurations:[(AVVideoComposition *)self lookupableSpatialVideoConfigurations]];
  }

  return v4;
}

- (id)_deepCopy
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AVVideoComposition *)self mutableCopy];
  instructions = [(AVVideoComposition *)self instructions];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](instructions, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSArray *)instructions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(instructions);
        }

        _deepCopy = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _deepCopy = [_deepCopy _deepCopy];
        }

        [v5 addObject:_deepCopy];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)instructions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setInstructions:v5];
  return [v3 copy];
}

- (void)dealloc
{
  videoComposition = self->_videoComposition;
  if (videoComposition)
  {

    CFRelease(self->_videoComposition);
  }

  v4.receiver = self;
  v4.super_class = AVVideoComposition;
  [(AVVideoComposition *)&v4 dealloc];
}

- (void)setBuiltInCompositorName:(id)name
{
  builtInCompositorName = self->_videoComposition->builtInCompositorName;
  if (builtInCompositorName != name)
  {

    self->_videoComposition->builtInCompositorName = [name copy];
  }
}

- (BOOL)_copyFigVideoCompositor:(const void *)compositor andSession:(id *)session recyclingSession:(id)recyclingSession forFigRemaker:(BOOL)remaker error:(id *)error
{
  remakerCopy = remaker;
  if ([(AVVideoComposition *)self customVideoCompositorClass])
  {
    v13 = [AVCustomVideoCompositorSession sessionWithVideoComposition:self recyclingSession:recyclingSession];
    _copyFigVideoCompositor = [(AVCustomVideoCompositorSession *)v13 _copyFigVideoCompositor];
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  builtInCompositorName = [(AVVideoComposition *)self builtInCompositorName];
  _copyFigVideoCompositor = builtInCompositorName;
  if (remakerCopy)
  {
    if ([(OpaqueFigVideoCompositor *)builtInCompositorName isEqualToString:@"VideoCompositor_DeviceSpecific"])
    {
      v16 = MEMORY[0x1E69735E8];
    }

    else if ([(OpaqueFigVideoCompositor *)_copyFigVideoCompositor isEqualToString:@"VideoCompositor_Basic"])
    {
      v16 = MEMORY[0x1E69735E0];
    }

    else
    {
      if (![(OpaqueFigVideoCompositor *)_copyFigVideoCompositor isEqualToString:@"VideoCompositor_OpenGL"])
      {
        v13 = 0;
        _copyFigVideoCompositor = 0;
        if (!error)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v16 = MEMORY[0x1E69735F0];
    }

    builtInCompositorName = *v16;
  }

  else if (!builtInCompositorName)
  {
    goto LABEL_15;
  }

  _copyFigVideoCompositor = CFRetain(builtInCompositorName);
LABEL_15:
  v13 = 0;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!_copyFigVideoCompositor)
  {
    *error = AVLocalizedError(@"AVFoundationErrorDomain", -11841, 0);
  }

LABEL_18:
  if (session)
  {
    *session = v13;
  }

  if (compositor)
  {
    if (_copyFigVideoCompositor)
    {
      v17 = CFRetain(_copyFigVideoCompositor);
    }

    else
    {
      v17 = 0;
    }

    *compositor = v17;
  }

  if (_copyFigVideoCompositor)
  {
    CFRelease(_copyFigVideoCompositor);
  }

  return _copyFigVideoCompositor != 0;
}

- (void)setFrameDuration:(id *)duration
{
  videoComposition = self->_videoComposition;
  v4 = *&duration->var0;
  videoComposition->frameDuration.epoch = duration->var3;
  *&videoComposition->frameDuration.value = v4;
}

- (CGSize)renderSize
{
  videoComposition = self->_videoComposition;
  width = videoComposition->renderSize.width;
  height = videoComposition->renderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setInstructions:(id)instructions
{
  instructions = self->_videoComposition->instructions;
  if (instructions != instructions)
  {

    self->_videoComposition->instructions = [instructions copy];
  }
}

- (id)_postProcessingVideoLayer
{
  _postProcessingVideoLayers = [(AVVideoComposition *)self _postProcessingVideoLayers];

  return [_postProcessingVideoLayers firstObject];
}

- (void)setAnimationTool:(id)tool
{
  toolCopy = tool;

  self->_videoComposition->animationTool = tool;
}

- (void)setOutputBufferDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [description countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(description);
        }

        v10 = CFGetTypeID(*(*(&v18 + 1) + 8 * v9));
        if (v10 != CMTagCollectionGetTypeID())
        {
          v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Array elements must be of type CMTagCollectionRef", v11, v12, v13, v14, v15, v18), 0}];
          objc_exception_throw(v17);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [description countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = [description copy];

  self->_videoComposition->outputBufferDescription = v16;
}

- (void)setSpatialVideoConfigurations:(id)configurations
{
  v4 = [configurations copy];

  self->_videoComposition->spatialVideoConfigurations = v4;
}

- (void)setLookupableSpatialVideoConfigurations:(id)configurations
{
  v4 = [configurations copy];

  self->_videoComposition->lookupableSpatialVideoConfigurations = v4;
}

- (void)setSourceVideoTrackWindowsForTrackIDs:(id)ds
{
  sourceVideoTrackWindowsForTrackIDs = self->_videoComposition->sourceVideoTrackWindowsForTrackIDs;
  if (sourceVideoTrackWindowsForTrackIDs != ds)
  {

    self->_videoComposition->sourceVideoTrackWindowsForTrackIDs = [ds copy];
  }
}

- (void)setSourceSampleDataTrackWindowsForTrackIDs:(id)ds
{
  sourceSampleDataTrackWindowsForTrackIDs = self->_videoComposition->sourceSampleDataTrackWindowsForTrackIDs;
  if (sourceSampleDataTrackWindowsForTrackIDs != ds)
  {

    self->_videoComposition->sourceSampleDataTrackWindowsForTrackIDs = [ds copy];
  }
}

- (id)_serializableInstructions
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_videoComposition->instructions count];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_videoComposition->instructions;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 1;
    v20 = *v26;
    do
    {
      v7 = 0;
      v6 = v6;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        if ([(AVVideoComposition *)self customVideoCompositorClass])
        {
          memset(&v24, 0, sizeof(v24));
          if (v8)
          {
            [v8 timeRange];
          }

          v9 = MEMORY[0x1E695DF90];
          *&range.start.value = *&v24.start.value;
          range.start.epoch = v24.start.epoch;
          v10 = NSDictionaryFromCMTime(&range.start);
          range = v24;
          CMTimeRangeGetEnd(&v23, &range);
          v11 = NSDictionaryFromCMTime(&v23);
          v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "enablePostProcessing")}];
          v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "containsTweening")}];
          dictionaryRepresentation = [v9 dictionaryWithObjectsAndKeys:{v10, @"StartTime", v11, @"EndTime", v12, @"EnablePostProcessing", v13, @"ContainsTweening", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v6), @"InstructionIdentifier", 0}];
          requiredSourceTrackIDs = [v8 requiredSourceTrackIDs];
          if (requiredSourceTrackIDs)
          {
            [dictionaryRepresentation setObject:requiredSourceTrackIDs forKey:@"RequiredVideoTrackIDArray"];
          }

          passthroughTrackID = [v8 passthroughTrackID];
          if (passthroughTrackID)
          {
            [dictionaryRepresentation setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", passthroughTrackID), @"PassthroughSourceVideoTrackID"}];
          }

          if (objc_opt_respondsToSelector())
          {
            requiredSourceSampleDataTrackIDs = [v8 requiredSourceSampleDataTrackIDs];
            if (requiredSourceSampleDataTrackIDs)
            {
              [dictionaryRepresentation setObject:requiredSourceSampleDataTrackIDs forKey:@"RequiredSampleDataTrackIDArray"];
            }
          }
        }

        else
        {
          dictionaryRepresentation = [v8 dictionaryRepresentation];
        }

        [v21 addObject:dictionaryRepresentation];
        ++v6;
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  return v21;
}

- (BOOL)_isValidReturningExceptionReason:(id *)reason
{
  videoComposition = self->_videoComposition;
  if (videoComposition->renderSize.width <= 0.0 || videoComposition->renderSize.height <= 0.0)
  {
    result = 0;
    v8 = @"video composition must have a positive renderSize";
  }

  else if (videoComposition->renderScale <= 0.0)
  {
    result = 0;
    v8 = @"video composition must have a positive renderScale";
  }

  else if ((videoComposition->frameDuration.flags & 1) != 0 && (time1 = videoComposition->frameDuration, v9 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v9) >= 1))
  {
    sourceTrackIDForFrameTiming = self->_videoComposition->sourceTrackIDForFrameTiming;
    result = sourceTrackIDForFrameTiming >= 0;
    if (sourceTrackIDForFrameTiming < 0)
    {
      v8 = @"video composition must have a positive sourceTrackIDForFrameTiming";
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    result = 0;
    v8 = @"video composition must have a positive frameDuration";
  }

  if (reason)
  {
    *reason = v8;
  }

  return result;
}

- (BOOL)isValidForAsset:(AVAsset *)asset timeRange:(CMTimeRange *)timeRange validationDelegate:(id)validationDelegate
{
  tracks = [(AVAsset *)asset tracks];
  if (asset)
  {
    [(AVAsset *)asset duration];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v10 = *&timeRange->start.epoch;
  v12[0] = *&timeRange->start.value;
  v12[1] = v10;
  v12[2] = *&timeRange->duration.timescale;
  return [(AVVideoComposition *)self isValidForTracks:tracks assetDuration:v13 timeRange:v12 validationDelegate:validationDelegate];
}

- (id)_trackWithTrackID:(int)d inTracks:(id)tracks
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [tracks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(tracks);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 trackID] == d)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [tracks countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isValidForTracks:(id)tracks assetDuration:(id *)duration timeRange:(id *)range validationDelegate:(id)delegate
{
  v99 = *MEMORY[0x1E69E9840];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v12 = [tracks countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v92;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v92 != v15)
        {
          objc_enumerationMutation(tracks);
        }

        asset = [*(*(&v91 + 1) + 8 * i) asset];
        if (v14)
        {
          if (asset != v14)
          {
            v52 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Tracks must be from the same asset", v18, v19, v20, v21, v22, v53), 0}];
            objc_exception_throw(v52);
          }
        }

        else
        {
          v14 = asset;
        }
      }

      v13 = [tracks countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v23 = objc_opt_respondsToSelector();
  customVideoCompositorClass = [(AVVideoComposition *)self customVideoCompositorClass];
  if (customVideoCompositorClass && ([customVideoCompositorClass conformsToProtocol:&unk_1F0B09EF0] & 1) == 0)
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      v25 = 0;
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"customVideoCompositorClass"])
      {
        return v25;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  videoComposition = self->_videoComposition;
  if (videoComposition->renderSize.width <= 0.0 || videoComposition->renderSize.height <= 0.0)
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"renderSize"])
      {
        return 0;
      }

      v25 = 0;
      videoComposition = self->_videoComposition;
    }

    else
    {
      v25 = 0;
    }
  }

  if (videoComposition->renderScale <= 0.0)
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"renderScale"])
      {
        return 0;
      }

      v25 = 0;
      videoComposition = self->_videoComposition;
    }

    else
    {
      v25 = 0;
    }
  }

  if ((videoComposition->frameDuration.flags & 1) == 0 || (*&time1.start.value = *&videoComposition->frameDuration.value, time1.start.epoch = videoComposition->frameDuration.epoch, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start) <= 0))
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      v25 = 0;
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"frameDuration"])
      {
        return v25;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  sourceTrackIDForFrameTiming = self->_videoComposition->sourceTrackIDForFrameTiming;
  if (sourceTrackIDForFrameTiming && ![(AVVideoComposition *)self _trackWithTrackID:sourceTrackIDForFrameTiming inTracks:tracks])
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      v25 = 0;
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"sourceTrackIDForFrameTiming"])
      {
        return v25;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  if (![(NSArray *)self->_videoComposition->instructions count])
  {
    if (!delegate)
    {
      return 0;
    }

    if (v23)
    {
      v25 = 0;
      if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"instructions"])
      {
        return v25;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  if ((range->var0.var2 & 1) != 0 && (range->var1.var2 & 1) != 0 && !range->var1.var3 && (range->var1.var0 & 0x8000000000000000) == 0)
  {
    v28 = *&range->var0.var3;
    var0 = range->var0;
    memset(&v89, 0, sizeof(v89));
    v29 = *&range->var1.var1;
    *&time1.start.value = *&range->var0.var0;
    *&time1.start.epoch = v28;
    *&time1.duration.timescale = v29;
    CMTimeRangeGetEnd(&v89, &time1);
    v56 = objc_opt_respondsToSelector();
    v30 = objc_opt_respondsToSelector();
    v62 = objc_opt_respondsToSelector();
    start = var0;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = self->_videoComposition->instructions;
    v60 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (!v60)
    {
      goto LABEL_121;
    }

    v57 = 0;
    v61 = *v84;
    v54 = v30;
    v55 = v23;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v84 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v31;
        v32 = *(*(&v83 + 1) + 8 * v31);
        memset(&time1, 0, sizeof(time1));
        if (v32)
        {
          [v32 timeRange];
          if ((time1.start.flags & 1) != 0 && (time1.duration.flags & 1) != 0 && !time1.duration.epoch && (time1.duration.value & 0x8000000000000000) == 0)
          {
            range = time1;
            memset(&time2, 0, sizeof(time2));
            v33 = *&range->var0.var3;
            *&otherRange.start.value = *&range->var0.var0;
            *&otherRange.start.epoch = v33;
            *&otherRange.duration.timescale = *&range->var1.var1;
            CMTimeRangeGetIntersection(&time2, &range, &otherRange);
            if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0 || (range.start = time2.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &otherRange.start) <= 0))
            {
              range = time1;
              otherRange.start = var0;
              if (!CMTimeRangeContainsTime(&range, &otherRange.start))
              {
                *&range.start.value = *&time1.start.value;
                range.start.epoch = time1.start.epoch;
                otherRange.start = v89;
                if (CMTimeCompare(&range.start, &otherRange.start))
                {
                  goto LABEL_60;
                }
              }
            }

            *&range.start.value = *&time1.start.value;
            range.start.epoch = time1.start.epoch;
            otherRange.start = start;
            if (CMTimeCompare(&range.start, &otherRange.start) >= 1)
            {
              memset(&range, 0, sizeof(range));
              lhs = time1.start;
              rhs = start;
              CMTimeSubtract(&otherRange.start, &lhs, &rhs);
              lhs = start;
              CMTimeRangeMake(&range, &lhs, &otherRange.start);
              if (!delegate)
              {
                return 0;
              }

              if (v56)
              {
                otherRange = range;
                if (([delegate videoComposition:self shouldContinueValidatingAfterFindingEmptyTimeRange:&otherRange] & 1) == 0)
                {
                  return 0;
                }
              }

              goto LABEL_77;
            }

            if (v57 >= 1)
            {
              *&range.start.value = *&time1.start.value;
              range.start.epoch = time1.start.epoch;
              otherRange.start = start;
              if (CMTimeCompare(&range.start, &otherRange.start) < 0)
              {
                if (!delegate || (v30 & 1) != 0 && ![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidTimeRangeInInstruction:v32])
                {
                  return 0;
                }

LABEL_77:
                v25 = 0;
              }
            }

            memset(&otherRange, 0, 24);
            [v32 timeRange];
            CMTimeRangeGetEnd(&otherRange.start, &range);
            *&range.start.value = *&otherRange.start.value;
            range.start.epoch = otherRange.start.epoch;
            lhs = start;
            if (CMTimeCompare(&range.start, &lhs) >= 1)
            {
              start = otherRange.start;
            }

            if (v14)
            {
              requiredSourceTrackIDs = [v32 requiredSourceTrackIDs];
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v64 = requiredSourceTrackIDs;
              v69 = [requiredSourceTrackIDs countByEnumeratingWithState:&v74 objects:v96 count:16];
              if (v69)
              {
                v59 = v32;
                durationCopy = duration;
                v68 = *v75;
                rangeCopy = range;
                do
                {
                  for (j = 0; j != v69; ++j)
                  {
                    if (*v75 != v68)
                    {
                      objc_enumerationMutation(v64);
                    }

                    intValue = [*(*(&v74 + 1) + 8 * j) intValue];
                    animationTool = self->_videoComposition->animationTool;
                    if (!animationTool || ((v38 = [(AVVideoCompositionCoreAnimationTool *)animationTool _auxiliaryTrackID]) != 0 ? (v39 = intValue == v38) : (v39 = 0), !v39))
                    {
                      v40 = [(AVVideoComposition *)self _trackWithTrackID:intValue inTracks:tracks];
                      mediaType = [v40 mediaType];
                      if (!v40 || (v42 = mediaType, ([mediaType isEqualToString:@"vide"] & 1) == 0) && (objc_msgSend(v42, "isEqualToString:", @"auxv") & 1) == 0 && (objc_msgSend(v42, "isEqualToString:", @"scen") & 1) == 0)
                      {
                        if (!delegate)
                        {
                          return 0;
                        }

                        if (v62)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            layerInstructions = [v59 layerInstructions];
                            v70 = 0u;
                            v71 = 0u;
                            v72 = 0u;
                            v73 = 0u;
                            v65 = layerInstructions;
                            v44 = [layerInstructions countByEnumeratingWithState:&v70 objects:v95 count:16];
                            if (v44)
                            {
                              v45 = v44;
                              v46 = *v71;
LABEL_100:
                              v47 = 0;
                              while (1)
                              {
                                if (*v71 != v46)
                                {
                                  objc_enumerationMutation(v65);
                                }

                                v48 = *(*(&v70 + 1) + 8 * v47);
                                if (intValue == [v48 trackID])
                                {
                                  break;
                                }

                                if (v45 == ++v47)
                                {
                                  v45 = [v65 countByEnumeratingWithState:&v70 objects:v95 count:16];
                                  v25 = 0;
                                  if (v45)
                                  {
                                    goto LABEL_100;
                                  }

                                  goto LABEL_110;
                                }
                              }

                              if (v48 && ![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidTrackIDInInstruction:v59 layerInstruction:v48 asset:v14])
                              {
                                return 0;
                              }
                            }
                          }
                        }

                        v25 = 0;
                      }
                    }

LABEL_110:
                    range = rangeCopy;
                    duration = durationCopy;
                  }

                  v69 = [v64 countByEnumeratingWithState:&v74 objects:v96 count:16];
                }

                while (v69);
              }
            }

            ++v57;
            v30 = v54;
            v23 = v55;
            goto LABEL_60;
          }
        }

        if (!delegate || (v30 & 1) != 0 && ([delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidTimeRangeInInstruction:v32] & 1) == 0)
        {
          return 0;
        }

        v25 = 0;
LABEL_60:
        v31 = v63 + 1;
      }

      while (v63 + 1 != v60);
      v49 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v97 count:16];
      v60 = v49;
      if (!v49)
      {
        if (v57)
        {
          goto LABEL_136;
        }

LABEL_121:
        if (!delegate)
        {
          return 0;
        }

        if (v23)
        {
          v25 = 0;
          if (![delegate videoComposition:self shouldContinueValidatingAfterFindingInvalidValueForKey:@"instructions"])
          {
            return v25;
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_136:
        flags = v89.flags;
        if ((v89.flags & 0x1D) != 1)
        {
          v89 = *duration;
          flags = v89.flags;
        }

        if ((flags & 0x1D) == 1)
        {
          time1.start = start;
          time2.start = v89;
          if (CMTimeCompare(&time1.start, &time2.start) < 0)
          {
            memset(&time1, 0, sizeof(time1));
            range.start = v89;
            otherRange.start = start;
            CMTimeSubtract(&time2.start, &range.start, &otherRange.start);
            range.start = start;
            CMTimeRangeMake(&time1, &range.start, &time2.start);
            if (((delegate != 0) & v56) == 1)
            {
              time2 = time1;
              [delegate videoComposition:self shouldContinueValidatingAfterFindingEmptyTimeRange:&time2];
            }

            return 0;
          }
        }

        return v25;
      }
    }
  }

  return v25;
}

- (void)determineValidityForAsset:(AVAsset *)asset timeRange:(CMTimeRange *)timeRange validationDelegate:(id)validationDelegate completionHandler:(void *)completionHandler
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__AVVideoComposition_determineValidityForAsset_timeRange_validationDelegate_completionHandler___block_invoke;
  v7[3] = &unk_1E7463900;
  v7[4] = self;
  v7[5] = asset;
  v6 = *&timeRange->start.epoch;
  v8 = *&timeRange->start.value;
  v9 = v6;
  v10 = *&timeRange->duration.timescale;
  v7[6] = validationDelegate;
  v7[7] = completionHandler;
  AVLoadValuesAsynchronously(asset, &unk_1F0AD3718, v7);
}

- (void)_setFrameDurationForFrameRate:(float)rate sourceTrackIDForFrameTiming:(int)timing
{
  v4 = *&timing;
  if (rate == 0.0)
  {
    CMTimeMake(&v10, 1, 30);
    v8 = *&v10.value;
    epoch = v10.epoch;
  }

  else
  {
    CMTimeMakeWithSeconds(&v7, 1.0 / rate, 90000);
    v8 = *&v7.value;
    epoch = v7.epoch;
  }

  v9 = epoch;
  [(AVVideoComposition *)self setFrameDuration:&v8];
  if (dyld_program_sdk_at_least())
  {
    [(AVVideoComposition *)self setSourceTrackIDForFrameTiming:v4];
  }
}

- (void)setColorPrimaries:(id)primaries
{
  colorPrimaries = self->_videoComposition->colorPrimaries;
  if (colorPrimaries != primaries)
  {

    self->_videoComposition->colorPrimaries = [primaries copy];
  }
}

- (void)setColorYCbCrMatrix:(id)matrix
{
  colorYCbCrMatrix = self->_videoComposition->colorYCbCrMatrix;
  if (colorYCbCrMatrix != matrix)
  {

    self->_videoComposition->colorYCbCrMatrix = [matrix copy];
  }
}

- (void)setColorTransferFunction:(id)function
{
  colorTransferFunction = self->_videoComposition->colorTransferFunction;
  if (colorTransferFunction != function)
  {

    self->_videoComposition->colorTransferFunction = [function copy];
  }
}

- (void)setPerFrameHDRDisplayMetadataPolicy:(id)policy
{
  perFrameHDRDisplayMetadataPolicy = self->_videoComposition->perFrameHDRDisplayMetadataPolicy;
  if (perFrameHDRDisplayMetadataPolicy != policy)
  {

    self->_videoComposition->perFrameHDRDisplayMetadataPolicy = [policy copy];
  }
}

- (void)videoCompositionOutputColorPropertiesWithCustomCompositor:(id)compositor formatDescriptions:(id)descriptions colorPrimaries:(id *)primaries transferFunction:(id *)function yCbCrMatrix:(id *)matrix perFrameHDRDisplayMetadataPolicy:(id *)policy
{
  colorPrimaries = [(AVVideoComposition *)self colorPrimaries];
  colorTransferFunction = [(AVVideoComposition *)self colorTransferFunction];
  colorYCbCrMatrix = [(AVVideoComposition *)self colorYCbCrMatrix];
  perFrameHDRDisplayMetadataPolicy = [(AVVideoComposition *)self perFrameHDRDisplayMetadataPolicy];
  if (compositor)
  {
    [compositor supportsWideColorSourceFrames];
    [compositor supportsHDRSourceFrames];
  }

  CMFormatDescriptionGetWidestGamutAndLargestDynamicRangeColorPropertiesFromFormatDescriptions();
  if (colorPrimaries)
  {
    v16 = colorPrimaries;
  }

  else
  {
    v16 = 0;
  }

  if (colorTransferFunction)
  {
    v17 = colorTransferFunction;
  }

  else
  {
    v17 = 0;
  }

  if (colorYCbCrMatrix)
  {
    v18 = colorYCbCrMatrix;
  }

  else
  {
    v18 = 0;
  }

  if ([(AVVideoComposition *)self animationTool]&& ![(AVVideoCompositionCoreAnimationTool *)[(AVVideoComposition *)self animationTool] _auxiliaryTrackID]&& (([(__CFString *)v17 isEqualToString:@"ITU_R_2100_HLG"]& 1) != 0 || ([(__CFString *)v17 isEqualToString:@"SMPTE_ST_2084_PQ"]& 1) != 0 || [(__CFString *)v17 isEqualToString:@"Linear"]))
  {
    v16 = @"ITU_R_709_2";
    v17 = @"ITU_R_709_2";
    v18 = @"ITU_R_709_2";
  }

  if (primaries)
  {
    *primaries = v16;
  }

  if (function)
  {
    *function = v17;
  }

  if (matrix)
  {
    *matrix = v18;
  }

  if (policy)
  {
    *policy = perFrameHDRDisplayMetadataPolicy;
  }
}

+ (AVVideoComposition)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier
{
  if (!asset)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "asset";
    goto LABEL_8;
  }

  if (!applier)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = "handler";
LABEL_8:
    v13 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", applier, v4, v5, v6, v7, v12), 0}];
    objc_exception_throw(v13);
  }

  v8 = [objc_msgSend(self "_mutableVideoCompositionWithAsset:"copy" applyingCIFiltersWithHandler:?")];

  return v8;
}

+ (void)videoCompositionWithAsset:(AVAsset *)asset applyingCIFiltersWithHandler:(void *)applier completionHandler:(void *)completionHandler
{
  if (!asset)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "asset != nil";
    goto LABEL_8;
  }

  if (!applier)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "applier != nil";
    goto LABEL_8;
  }

  if (!completionHandler)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "completionHandler != nil";
LABEL_8:
    v11 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", applier, completionHandler, v5, v6, v7, v10), 0}];
    objc_exception_throw(v11);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __124__AVVideoComposition_AVVideoCompositionFiltering__videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E7463928;
  v12[4] = self;
  v12[5] = asset;
  v12[6] = applier;
  v12[7] = completionHandler;
  AVLoadValuesAsynchronously(asset, &unk_1F0AD3730, v12);
}

uint64_t __78__AVVideoComposition_videoCompositionWithPropertiesOfAsset_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_1_8();
  if (!v1)
  {
    [*(v0 + 32) videoCompositionWithPropertiesOfAsset:*(v0 + 40)];
  }

  OUTLINED_FUNCTION_0_11();

  return v2();
}

- (id)instructionForFigInstruction:(void *)instruction
{
  if (![(NSArray *)self->_videoComposition->instructions count])
  {
    return 0;
  }

  v5 = [objc_msgSend(instruction objectForKey:{@"InstructionIdentifier", "intValue"}] - 1;
  if ([(NSArray *)self->_videoComposition->instructions count]<= v5)
  {
    return 0;
  }

  instructions = self->_videoComposition->instructions;

  return [(NSArray *)instructions objectAtIndex:v5];
}

uint64_t __95__AVVideoComposition_determineValidityForAsset_timeRange_validationDelegate_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_1_8();
  if (!v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 80);
    v7[0] = *(v0 + 64);
    v7[1] = v5;
    v7[2] = *(v0 + 96);
    [v2 isValidForAsset:v3 timeRange:v7 validationDelegate:v4];
  }

  return (*(*(v0 + 56) + 16))();
}

+ (id)_mutableVideoCompositionWithAsset:(id)asset applyingCIFiltersWithHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = [asset tracksWithMediaType:@"vide"];
  v7 = OUTLINED_FUNCTION_4_0();
  v9 = [v8 countByEnumeratingWithState:v7 objects:? count:?];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *duration.epoch;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*duration.epoch != v11)
    {
      objc_enumerationMutation(v6);
    }

    v13 = *(*&duration.timescale + 8 * v12);
    if ([v13 isEnabled])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v6 countByEnumeratingWithState:&duration objects:&v33 count:16];
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }

  if (!v13)
  {
    return 0;
  }

  v15 = [AVCoreImageFilterVideoCompositionInstruction alloc];
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v33, &start, &duration);
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "trackID")}];
  v16 = -[AVCoreImageFilterVideoCompositionInstruction initWithTimeRange:sourceTrackIDs:handler:](v15, "initWithTimeRange:sourceTrackIDs:handler:", &v33, [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1], handler);
  [v13 preferredTransform];
  v33 = v28;
  [(AVCoreImageFilterVideoCompositionInstruction *)v16 setSourceTrackPreferredTransform:&v33];
  v14 = [AVMutableVideoComposition videoCompositionWithPropertiesOfAsset:asset];
  [(AVMutableVideoComposition *)v14 setCustomVideoCompositorClass:objc_opt_class()];
  v31 = v16;
  -[AVMutableVideoComposition setInstructions:](v14, "setInstructions:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1]);
  [v13 naturalSize];
  v18 = v17;
  v20 = v19;
  [v13 preferredTransform];
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v18;
  v35.size.height = v20;
  v36 = CGRectApplyAffineTransform(v35, &v33);
  width = v36.size.width;
  height = v36.size.height;
  [v13 nominalFrameRate];
  v24 = v23;
  trackID = [v13 trackID];
  LODWORD(v26) = v24;
  [(AVVideoComposition *)v14 _setFrameDurationForFrameRate:trackID sourceTrackIDForFrameTiming:v26];
  [(AVMutableVideoComposition *)v14 setRenderSize:width, height];
  return v14;
}

uint64_t __124__AVVideoComposition_AVVideoCompositionFiltering__videoCompositionWithAsset_applyingCIFiltersWithHandler_completionHandler___block_invoke()
{
  OUTLINED_FUNCTION_1_8();
  if (!v1)
  {
    [*(v0 + 32) videoCompositionWithAsset:*(v0 + 40) applyingCIFiltersWithHandler:*(v0 + 48)];
  }

  OUTLINED_FUNCTION_0_11();

  return v2();
}

@end