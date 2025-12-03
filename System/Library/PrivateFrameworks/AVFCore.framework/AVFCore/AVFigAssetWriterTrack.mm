@interface AVFigAssetWriterTrack
+ (AVFigAssetWriterTrack)assetWriterTrackWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass attachedAdaptor:(id)adaptor error:(id *)self0;
- (AVFigAssetWriterTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error;
- (BOOL)addPixelBuffer:(__CVBuffer *)buffer atPresentationTime:(id *)time error:(id *)error;
- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (BOOL)addTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group atPresentationTime:(id *)time error:(id *)error;
- (BOOL)beginPassReturningError:(id *)error;
- (BOOL)encoderSupportsMultiPass;
- (BOOL)isAboveHighWaterLevel;
- (BOOL)markEndOfDataReturningError:(id *)error;
- (NSDictionary)finalHDRMetadataGenerationState;
- (__CVPixelBufferPool)pixelBufferPool;
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error;
- (void)_figAssetWriterDidDropBelowLowWaterLevelForTrackID:(int)d;
- (void)_figAssetWriterFinalHDRMetadataGenerationStateAvailable:(int)available finalHDRMetadataGenerationState:(id)state;
- (void)_refreshAboveHighWaterLevel;
- (void)dealloc;
- (void)endPassWithCompletionHandler:(id)handler;
- (void)setAlternateGroupID:(signed __int16)d;
- (void)setExcludeFromAutoSelection:(BOOL)selection;
- (void)setExtendedLanguageTag:(id)tag;
- (void)setFigDimensions:(id)dimensions;
- (void)setFigMetadata:(id)metadata;
- (void)setFigTrackMatrix:(id)matrix;
- (void)setFormatDescriptions:(id)descriptions;
- (void)setLanguageCode:(id)code;
- (void)setLayer:(int64_t)layer;
- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled;
- (void)setMediaDataLocation:(id)location;
- (void)setMediaTimeScale:(int)scale;
- (void)setPreferredChunkAlignment:(int64_t)alignment;
- (void)setPreferredChunkDuration:(id *)duration;
- (void)setPreferredChunkSize:(int64_t)size;
- (void)setProvisionalAlternateGroupID:(signed __int16)d;
- (void)setSampleReferenceBaseURL:(id)l;
- (void)setTrackVolume:(float)volume;
@end

@implementation AVFigAssetWriterTrack

+ (AVFigAssetWriterTrack)assetWriterTrackWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass attachedAdaptor:(id)adaptor error:(id *)self0
{
  passCopy = pass;
  if (([type isEqualToString:@"soun"] & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"vide") & 1) == 0 && (objc_msgSend(type, "isEqualToString:", @"auxv") & 1) == 0)
  {
    objc_opt_class();
    objc_opt_class();
  }

  v16 = [objc_alloc(objc_opt_class()) initWithFigAssetWriter:writer mediaType:type mediaFileType:fileType formatSpecification:specification sourcePixelBufferAttributes:attributes multiPass:passCopy error:error];

  return v16;
}

- (AVFigAssetWriterTrack)initWithFigAssetWriter:(OpaqueFigAssetWriter *)writer mediaType:(id)type mediaFileType:(id)fileType formatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error
{
  passCopy = pass;
  v41.receiver = self;
  v41.super_class = AVFigAssetWriterTrack;
  v16 = [(AVFigAssetWriterTrack *)&v41 init];
  v17 = objc_opt_class();
  AVRequireConcreteObject(v16, a2, v17);
  if (!writer)
  {
    v29 = v16;
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D940];
    v37 = "figAssetWriter != NULL";
    goto LABEL_12;
  }

  if (!type)
  {
    v38 = v16;
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D940];
    v37 = "mediaType != nil";
    goto LABEL_12;
  }

  if (!fileType)
  {
    v39 = v16;
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D940];
    v37 = "mediaFileType != nil";
LABEL_12:
    v40 = [v35 exceptionWithName:v36 reason:AVMethodExceptionReasonWithObjectAndSelector(v16 userInfo:{a2, @"invalid parameter not satisfying: %s", v30, v31, v32, v33, v34, v37), 0}];
    objc_exception_throw(v40);
  }

  if (v16)
  {
    v16->_figAssetWriter = CFRetain(writer);
    v16->_mediaType = [type copyWithZone:{-[AVFigAssetWriterTrack zone](v16, "zone")}];
    v16->_mediaFileType = [fileType copyWithZone:{-[AVFigAssetWriterTrack zone](v16, "zone")}];
    v16->_trackID = [(AVFigAssetWriterTrack *)v16 _attachToFigAssetWriterUsingFormatSpecification:specification sourcePixelBufferAttributes:attributes multiPass:passCopy error:error];
    v16->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v16];
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = [objc_msgSend(v18 stringWithFormat:@"<%@: %p> water level queue", NSStringFromClass(v19), v16), "UTF8String"];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16->_aboveHighWaterLevelQueue = dispatch_queue_create(v20, v21);
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = [objc_msgSend(v22 stringWithFormat:@"<%@: %p> final HDRMetadataState queue", NSStringFromClass(v23), v16), "UTF8String"];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16->_finalHDRMetadataGenerationStateQueue = dispatch_queue_create(v24, v25);
    v26 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v16->_operationQueue = v26;
    [(NSOperationQueue *)v26 setName:@"com.apple.avfoundation.assetwriterinput"];
    v27 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    CFRetain(v16->_weakReference);
    [v27 addListenerWithWeakReference:v16->_weakReference callback:figAssetWriterTrackDidDropBelowLowWaterLevel name:*MEMORY[0x1E6971570] object:v16->_figAssetWriter flags:0];
    [v27 addListenerWithWeakReference:v16->_weakReference callback:figAssetWriterFinalHDRMetadataGenerationStateAvailable name:*MEMORY[0x1E6971568] object:v16->_figAssetWriter flags:0];
    if (v16->_trackID)
    {
      [(AVFigAssetWriterTrack *)v16 _refreshAboveHighWaterLevel];
    }

    else
    {

      return 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  if (self->_figAssetWriter)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakReference callback:figAssetWriterTrackDidDropBelowLowWaterLevel name:*MEMORY[0x1E6971570] object:self->_figAssetWriter];
    [v3 removeListenerWithWeakReference:self->_weakReference callback:figAssetWriterFinalHDRMetadataGenerationStateAvailable name:*MEMORY[0x1E6971568] object:self->_figAssetWriter];
    CFRelease(self->_weakReference);
    CFRelease(self->_figAssetWriter);
  }

  aboveHighWaterLevelQueue = self->_aboveHighWaterLevelQueue;
  if (aboveHighWaterLevelQueue)
  {
    dispatch_release(aboveHighWaterLevelQueue);
  }

  finalHDRMetadataGenerationStateQueue = self->_finalHDRMetadataGenerationStateQueue;
  if (finalHDRMetadataGenerationStateQueue)
  {
    dispatch_release(finalHDRMetadataGenerationStateQueue);
  }

  v6.receiver = self;
  v6.super_class = AVFigAssetWriterTrack;
  [(AVFigAssetWriterTrack *)&v6 dealloc];
}

- (__CVPixelBufferPool)pixelBufferPool
{
  v8 = 0;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v5)
  {
    v5(figAssetWriter, trackID, *MEMORY[0x1E69715D0], *MEMORY[0x1E695E480], &v8);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  CVPixelBufferPoolRelease(v6);
  return v8;
}

- (void)_figAssetWriterDidDropBelowLowWaterLevelForTrackID:(int)d
{
  if ([(AVFigAssetWriterTrack *)self trackID]== d)
  {

    [(AVFigAssetWriterTrack *)self _refreshAboveHighWaterLevel];
  }
}

- (void)_figAssetWriterFinalHDRMetadataGenerationStateAvailable:(int)available finalHDRMetadataGenerationState:(id)state
{
  if ([(AVFigAssetWriterTrack *)self trackID]== available)
  {
    finalHDRMetadataGenerationStateQueue = self->_finalHDRMetadataGenerationStateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __113__AVFigAssetWriterTrack__figAssetWriterFinalHDRMetadataGenerationStateAvailable_finalHDRMetadataGenerationState___block_invoke;
    v7[3] = &unk_1E7460DF0;
    v7[4] = self;
    v7[5] = state;
    dispatch_sync(finalHDRMetadataGenerationStateQueue, v7);
  }
}

uint64_t __113__AVFigAssetWriterTrack__figAssetWriterFinalHDRMetadataGenerationStateAvailable_finalHDRMetadataGenerationState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 80) = result;
  return result;
}

- (void)_refreshAboveHighWaterLevel
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v5)
  {
    if (![(AVFigAssetWriterTrack *)self isAboveHighWaterLevel])
    {
      return;
    }

    goto LABEL_5;
  }

  v6 = v5(figAssetWriter, trackID);
  if ((((v6 == 0) ^ [(AVFigAssetWriterTrack *)self isAboveHighWaterLevel]) & 1) == 0)
  {
LABEL_5:
    [(AVFigAssetWriterTrack *)self willChangeValueForKey:@"aboveHighWaterLevel"];
    aboveHighWaterLevelQueue = self->_aboveHighWaterLevelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AVFigAssetWriterTrack__refreshAboveHighWaterLevel__block_invoke;
    block[3] = &unk_1E7463880;
    block[4] = self;
    block[5] = figAssetWriter;
    v9 = trackID;
    dispatch_sync(aboveHighWaterLevelQueue, block);
    [(AVFigAssetWriterTrack *)self didChangeValueForKey:@"aboveHighWaterLevel"];
  }
}

uint64_t __52__AVFigAssetWriterTrack__refreshAboveHighWaterLevel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 96);
  if (v7)
  {
    result = v7(v2, v3);
    LOBYTE(v7) = result != 0;
  }

  *(*(a1 + 32) + 56) = v7;
  return result;
}

- (BOOL)encoderSupportsMultiPass
{
  BOOLean = 0;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v5)
  {
    return 0;
  }

  v6 = v5(figAssetWriter, trackID, *MEMORY[0x1E69715C0], *MEMORY[0x1E695E480], &BOOLean);
  v7 = BOOLean;
  if (v6)
  {
    v8 = 0;
    if (!BOOLean)
    {
      return v8;
    }

    goto LABEL_4;
  }

  v8 = CFBooleanGetValue(BOOLean) != 0;
  v7 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v7);
  }

  return v8;
}

- (BOOL)isAboveHighWaterLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  aboveHighWaterLevelQueue = self->_aboveHighWaterLevelQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVFigAssetWriterTrack_isAboveHighWaterLevel__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(aboveHighWaterLevelQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDictionary)finalHDRMetadataGenerationState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  finalHDRMetadataGenerationStateQueue = self->_finalHDRMetadataGenerationStateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVFigAssetWriterTrack_finalHDRMetadataGenerationState__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(finalHDRMetadataGenerationStateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __56__AVFigAssetWriterTrack_finalHDRMetadataGenerationState__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)beginPassReturningError:(id *)error
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v7)
  {
    v8 = v7(figAssetWriter, trackID, 0);
    if (!error)
    {
      return v8 == 0;
    }
  }

  else
  {
    v8 = -12782;
    if (!error)
    {
      return v8 == 0;
    }
  }

  if (v8)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v8, 0);
  }

  return v8 == 0;
}

- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_7;
  }

  v10 = v9(figAssetWriter, trackID, buffer);
  v11 = v10;
  if (v10 > -12143)
  {
    if (v10 == -12142)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D930];
      v14 = @"Must start a session (using -[AVAssetWriter startSessionAtSourceTime:) first";
      goto LABEL_13;
    }

    if (!v10)
    {
      [(AVFigAssetWriterTrack *)self _refreshAboveHighWaterLevel];
      return 1;
    }

    goto LABEL_7;
  }

  if (v10 == -12413)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"Input buffer must be in an uncompressed format when outputSettings is not nil";
    goto LABEL_13;
  }

  if (v10 != -12330)
  {
LABEL_7:
    v15 = [AVAssetWriter _errorForOSStatus:v11];
    goto LABEL_14;
  }

  v12 = MEMORY[0x1E695DF30];
  v13 = *MEMORY[0x1E695D940];
  v14 = @"First input buffer must have an appropriate kCMSampleBufferAttachmentKey_TrimDurationAtStart since the codec has encoder delay";
LABEL_13:
  v15 = AVErrorForClientProgrammingError([v12 exceptionWithName:v13 reason:v14 userInfo:0]);
LABEL_14:
  v17 = v15;
  [(AVFigAssetWriterTrack *)self _refreshAboveHighWaterLevel];
  result = 0;
  if (error)
  {
    *error = v17;
  }

  return result;
}

- (BOOL)addPixelBuffer:(__CVBuffer *)buffer atPresentationTime:(id *)time error:(id *)error
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v23 = *time;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v11)
  {
    v24 = v23;
    v12 = v11(figAssetWriter, trackID, buffer, &v24);
    if (v12 == -12142)
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D930];
      v15 = objc_opt_class();
      v21 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithClassAndSelector(v15 userInfo:{sel_appendPixelBuffer_withPresentationTime_, @"Must start a session (using -[AVAssetWriter startSessionAtSourceTime:) before appending pixel buffers", v16, v17, v18, v19, v20, v23.var0), 0}];
      objc_exception_throw(v21);
    }
  }

  else
  {
    v12 = 4294954514;
  }

  [(AVFigAssetWriterTrack *)self _refreshAboveHighWaterLevel];
  if (error)
  {
    *error = [AVAssetWriter _errorForOSStatus:v12];
  }

  return v12 == 0;
}

- (BOOL)addTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group atPresentationTime:(id *)time error:(id *)error
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v25 = *time;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (v11)
  {
    v26 = v25;
    v12 = v11(figAssetWriter, trackID, group, &v26);
    if (v12 == -15596)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D930];
      v16 = objc_opt_class();
      v22 = @"Must use IOSurface backed CVPixelBuffer for taggedPixelBufferGroup";
LABEL_10:
      v24 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithClassAndSelector(v16 userInfo:{sel_appendTaggedPixelBufferGroup_withPresentationTime_, v22, v17, v18, v19, v20, v21, v25.var0), 0}];
      objc_exception_throw(v24);
    }

    v13 = v12;
    if (v12 == -12142)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D930];
      v16 = objc_opt_class();
      v22 = @"Must start a session (using -[AVAssetWriter startSessionAtSourceTime:) before appending tagged buffer groups";
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  [(AVFigAssetWriterTrack *)self _refreshAboveHighWaterLevel];
  if (error)
  {
    *error = [AVAssetWriter _errorForOSStatus:v13];
  }

  return v13 == 0;
}

- (void)endPassWithCompletionHandler:(id)handler
{
  v5 = [[AVAssetWriterInputFigAssetWriterEndPassOperation alloc] initWithFigAssetWriter:[(AVFigAssetWriterTrack *)self figAssetWriter] trackID:[(AVFigAssetWriterTrack *)self trackID]];
  [(AVAssetWriterInputFigAssetWriterEndPassOperation *)v5 setName:@"com.apple.avfoundation.assetwriterinput.endpass"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVFigAssetWriterTrack_endPassWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7462650;
  v6[4] = v5;
  v6[5] = handler;
  [(AVAssetWriterInputFigAssetWriterEndPassOperation *)v5 setCompletionBlock:v6];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
}

uint64_t __54__AVFigAssetWriterTrack_endPassWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status] == 2;
  v4 = [*(a1 + 32) descriptionForNextPass];
  v5 = [*(a1 + 32) error];
  v6 = *(v2 + 16);

  return v6(v2, v3, v4, v5);
}

- (BOOL)markEndOfDataReturningError:(id *)error
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v7)
  {
    v8 = v7(figAssetWriter, trackID);
    if (!error)
    {
      return v8 == 0;
    }

    goto LABEL_5;
  }

  v8 = 4294954514;
  if (error)
  {
LABEL_5:
    *error = [AVAssetWriter _errorForOSStatus:v8];
  }

  return v8 == 0;
}

- (void)setFigMetadata:(id)metadata
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = *MEMORY[0x1E69715C8];

    v7(figAssetWriter, trackID, v8, metadata);
  }
}

- (void)setFigTrackMatrix:(id)matrix
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971E20];

    v7(figAssetWriter, trackID, v8, matrix);
  }
}

- (void)setMediaTimeScale:(int)scale
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:scale];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971D78];

    v8(figAssetWriter, trackID, v9, v7);
  }
}

- (void)setFigDimensions:(id)dimensions
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971E10];

    v7(figAssetWriter, trackID, v8, dimensions);
  }
}

- (void)setLanguageCode:(id)code
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971D68];

    v7(figAssetWriter, trackID, v8, code);
  }
}

- (void)setExtendedLanguageTag:(id)tag
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971D10];

    v7(figAssetWriter, trackID, v8, tag);
  }
}

- (void)setMarksOutputTrackAsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  if (enabledCopy)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971CF0];
    v10 = *v7;

    v8(figAssetWriter, trackID, v9, v10);
  }
}

- (void)setLayer:(int64_t)layer
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:layer];
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E69738D0];

    v7(figAssetWriter, trackID, v8, v4);
  }
}

- (void)setAlternateGroupID:(signed __int16)d
{
  dCopy = d;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:dCopy];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971CD0];

    v8(figAssetWriter, trackID, v9, v7);
  }
}

- (void)setProvisionalAlternateGroupID:(signed __int16)d
{
  dCopy = d;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:dCopy];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971DD8];

    v8(figAssetWriter, trackID, v9, v7);
  }
}

- (void)setExcludeFromAutoSelection:(BOOL)selection
{
  selectionCopy = selection;
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  if (selectionCopy)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971D00];
    v10 = *v7;

    v8(figAssetWriter, trackID, v9, v10);
  }
}

- (void)setPreferredChunkDuration:(id *)duration
{
  v4 = *MEMORY[0x1E695E480];
  v9 = *duration;
  v5 = CMTimeCopyAsDictionary(&v9, v4);
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v8(figAssetWriter, trackID, *MEMORY[0x1E6971DB0], v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)setPreferredChunkAlignment:(int64_t)alignment
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971DA0];

    v8(figAssetWriter, trackID, v9, v7);
  }
}

- (void)setPreferredChunkSize:(int64_t)size
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v8)
  {
    v9 = *MEMORY[0x1E6971DC0];

    v8(figAssetWriter, trackID, v9, v7);
  }
}

- (void)setMediaDataLocation:(id)location
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E4D0];
  if ([location isEqualToString:@"AVAssetWriterInputMediaDataLocationBeforeMainMediaDataNotInterleaved"])
  {
    v6 = *MEMORY[0x1E69734F0];
    v20[0] = *MEMORY[0x1E69734F8];
    v20[1] = v6;
    v21[0] = &unk_1F0AD34D8;
    v21[1] = &unk_1F0AD34F0;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v8 = 1;
  }

  else
  {
    v9 = [location isEqualToString:@"AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData"];
    v8 = 0;
    v7 = 0;
    if (v9)
    {
      v5 = *MEMORY[0x1E695E4C0];
    }
  }

  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v12)
  {
    v12(figAssetWriter, trackID, *MEMORY[0x1E6971DE0], v7);
  }

  figAssetWriter2 = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID2 = [(AVFigAssetWriterTrack *)self trackID];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v16)
  {
    v16(figAssetWriter2, trackID2, *MEMORY[0x1E6971D70], v15);
  }

  figAssetWriter3 = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID3 = [(AVFigAssetWriterTrack *)self trackID];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v19)
  {
    v19(figAssetWriter3, trackID3, *MEMORY[0x1E6971D38], v5);
  }
}

- (void)setSampleReferenceBaseURL:(id)l
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971DF8];

    v7(figAssetWriter, trackID, v8, l);
  }
}

- (void)setFormatDescriptions:(id)descriptions
{
  figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
  trackID = [(AVFigAssetWriterTrack *)self trackID];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = *MEMORY[0x1E6971D18];

    v7(figAssetWriter, trackID, v8, descriptions);
  }
}

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)specification sourcePixelBufferAttributes:(id)attributes multiPass:(BOOL)pass error:(id *)error
{
  v13 = 0;
  v8 = [(AVFigAssetWriterTrack *)self figAssetWriter:specification];
  v9 = CMMediaTypeFromAVMediaType([(AVFigAssetWriterTrack *)self mediaType]);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(v8, v9, &v13);
    if (!error)
    {
      return v13;
    }
  }

  else
  {
    v11 = -12782;
    if (!error)
    {
      return v13;
    }
  }

  if (v11)
  {
    *error = [AVAssetWriter _errorForOSStatus:?];
  }

  return v13;
}

- (void)setTrackVolume:(float)volume
{
  valuePtr = volume;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    figAssetWriter = [(AVFigAssetWriterTrack *)self figAssetWriter];
    trackID = [(AVFigAssetWriterTrack *)self trackID];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v8(figAssetWriter, trackID, *MEMORY[0x1E6971E30], v5);
    }

    CFRelease(v5);
  }
}

@end