@interface AVOfflineVideoStabilizer
+ (id)offlineVideoStabilizerWithTargetFrameDuration:(id *)a3 dataProvider:(id)a4 destinationBufferPool:(__CVPixelBufferPool *)a5 stabilizationEnabled:(BOOL)a6;
- (AVOfflineVideoStabilizer)initWithTargetFrameDuration:(id *)a3 dataProvider:(id)a4 destinationBufferPool:(__CVPixelBufferPool *)a5 stabilizationEnabled:(BOOL)a6;
- (int)_setupVISProcessor;
- (int)_validateSourcePixelBuffer:(__CVBuffer *)a3 withSampleTime:(id *)a4 metadata:(id)a5 isEndOfData:(BOOL *)a6;
- (int)_validateStabilizationMetadata:(id)a3 withSampleTime:(id *)a4 isEndOfData:(BOOL *)a5;
- (opaqueCMSampleBuffer)_copyStabilizedSampleBuffer:(id *)a3;
- (opaqueCMSampleBuffer)_createSampleBufferWithPixelBuffer:(__CVBuffer *)a3 sampleTime:(id *)a4 futureMetadata:(id)a5 status:(int *)a6;
- (opaqueCMSampleBuffer)copyStabilizedSampleBuffer:(id *)a3;
- (uint64_t)_setupVISProcessor;
- (void)_teardownVISProcessor;
- (void)dealloc;
- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4;
@end

@implementation AVOfflineVideoStabilizer

+ (id)offlineVideoStabilizerWithTargetFrameDuration:(id *)a3 dataProvider:(id)a4 destinationBufferPool:(__CVPixelBufferPool *)a5 stabilizationEnabled:(BOOL)a6
{
  v6 = a6;
  v10 = objc_alloc(objc_opt_class());
  v12 = *a3;
  return [v10 initWithTargetFrameDuration:&v12 dataProvider:a4 destinationBufferPool:a5 stabilizationEnabled:v6];
}

- (AVOfflineVideoStabilizer)initWithTargetFrameDuration:(id *)a3 dataProvider:(id)a4 destinationBufferPool:(__CVPixelBufferPool *)a5 stabilizationEnabled:(BOOL)a6
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementOfflineVideoStabilizer))
  {
    if ((a3->var2 & 1) != 0 && (time1 = *a3, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) > 0))
    {
      if (a4)
      {
        if (a5)
        {
          v18.receiver = self;
          v18.super_class = AVOfflineVideoStabilizer;
          v11 = [(AVOfflineVideoStabilizer *)&v18 init];
          v12 = v11;
          if (v11)
          {
            v13 = *&a3->var0;
            *(v11 + 3) = a3->var3;
            *(v11 + 8) = v13;
            *(v11 + 9) = 1056964608;
            *(v11 + 8) = vcvtps_s32_f32(a3->var1 / a3->var0);
            *(v11 + 5) = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a4];
            v12->_pixelBufferPool = CFRetain(a5);
            v12->_stabilizationEnabled = a6;
            v12->_outputSampleBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
            v12->_futureFrameMetadataDicts = objc_alloc_init(MEMORY[0x1E695DF70]);
            v12->_isFirstFrame = 1;
          }

          return v12;
        }

        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
      }

      else
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
  }

  v16 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v16);
  }

  NSLog(&cfstr_SuppressingExc.isa, v16);
  return 0;
}

- (void)dealloc
{
  [(AVOfflineVideoStabilizer *)self _teardownVISProcessor];

  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  cachedVideoFormatDescription = self->_cachedVideoFormatDescription;
  if (cachedVideoFormatDescription)
  {
    CFRelease(cachedVideoFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = AVOfflineVideoStabilizer;
  [(AVOfflineVideoStabilizer *)&v5 dealloc];
}

- (opaqueCMSampleBuffer)copyStabilizedSampleBuffer:(id *)a3
{
  v6 = 0;
  result = [(AVOfflineVideoStabilizer *)self _copyStabilizedSampleBuffer:&v6];
  if (result | v6)
  {
LABEL_4:
    if (!a3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (self->_videoOutputFrameNumber == 1)
  {
    result = [(AVOfflineVideoStabilizer *)self _copyStabilizedSampleBuffer:&v6];
    goto LABEL_4;
  }

  result = 0;
  if (!a3)
  {
    return result;
  }

LABEL_5:
  *a3 = v6;
  return result;
}

- (opaqueCMSampleBuffer)_copyStabilizedSampleBuffer:(id *)a3
{
  v26 = 0;
  v4 = [(AVWeakReference *)self->_dataProviderWeakReference referencedObject];
  p_clientMarkedEndOfMetadata = &self->_clientMarkedEndOfMetadata;
  if (self->_clientMarkedEndOfMetadata)
  {
    v6 = 0;
LABEL_11:
    if (self->_clientMarkedEndOfVideoData)
    {
      v13 = 0;
      v14 = 0;
      v15 = a3;
    }

    else
    {
      v16 = [(NSMutableArray *)self->_futureFrameMetadataDicts firstObject];
      v25 = **&MEMORY[0x1E6960C70];
      v14 = [v4 copySourcePixelBufferForFrameNumber:self->_videoOutputFrameNumber outputSampleTime:&v25 stabilizer:self];
      time = v25;
      v26 = [(AVOfflineVideoStabilizer *)self _validateSourcePixelBuffer:v14 withSampleTime:&time metadata:v16 isEndOfData:&self->_clientMarkedEndOfVideoData];
      v15 = a3;
      if (v26)
      {
        v13 = 0;
        goto LABEL_31;
      }

      if (self->_clientMarkedEndOfVideoData)
      {
        v17 = [(VISProcessor *)self->_visProcessor finishProcessing];
        v13 = 0;
        v26 = v17;
        self->_isFirstFrame = 1;
        if (v17)
        {
          goto LABEL_31;
        }
      }

      else
      {
        time = v25;
        v13 = [(AVOfflineVideoStabilizer *)self _createSampleBufferWithPixelBuffer:v14 sampleTime:&time futureMetadata:v6 status:&v26];
        if (v26)
        {
          goto LABEL_31;
        }

        visProcessor = self->_visProcessor;
        if (!visProcessor)
        {
          v26 = [(AVOfflineVideoStabilizer *)self _setupVISProcessor];
          if (v26)
          {
            goto LABEL_31;
          }

          visProcessor = self->_visProcessor;
        }

        v26 = [(VISProcessor *)visProcessor enqueueBufferForProcessing:v13];
        if (v26)
        {
          [AVOfflineVideoStabilizer _copyStabilizedSampleBuffer:];
          goto LABEL_31;
        }

        self->_isFirstFrame = 0;
        [(NSMutableArray *)self->_futureFrameMetadataDicts removeObject:v16];
        ++self->_videoOutputFrameNumber;
      }
    }

    v19 = [(NSMutableArray *)self->_outputSampleBuffers firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 != CMSampleBufferGetTypeID())
        {
          goto LABEL_31;
        }

        CMRemoveAttachment(v19, *MEMORY[0x1E6990D40]);
        CFRetain(v19);
        [(NSMutableArray *)self->_outputSampleBuffers removeObjectAtIndex:0];
      }

LABEL_32:
      v11 = v26;
      goto LABEL_33;
    }

    v26 = [v19 intValue];
    [(NSMutableArray *)self->_outputSampleBuffers removeObjectAtIndex:0];
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E6991528];
  metadataOutputFrameNumber = self->_metadataOutputFrameNumber;
  v23 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    *&v25.value = v23;
    v25.epoch = v9;
    v10 = [v4 copySourceStabilizationMetadataForFrameNumber:metadataOutputFrameNumber outputSampleTime:&v25 stabilizer:self];
    time = v25;
    v11 = [(AVOfflineVideoStabilizer *)self _validateStabilizationMetadata:v10 withSampleTime:&time isEndOfData:&self->_clientMarkedEndOfMetadata];
    v26 = v11;
    if (v11)
    {
      break;
    }

    if (*p_clientMarkedEndOfMetadata)
    {
      metadataOutputFrameNumber = self->_metadataOutputFrameNumber;
      metadataPrimingCount = self->_metadataPrimingCount;
      if (metadataOutputFrameNumber < metadataPrimingCount)
      {
        self->_metadataPrimingCount = metadataOutputFrameNumber;
        LODWORD(metadataPrimingCount) = metadataOutputFrameNumber;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
      time = v25;
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", CMTimeGetSeconds(&time)), v7}];
      time = v25;
      [v6 setObject:objc_msgSend(MEMORY[0x1E696B098] forKeyedSubscript:{"valueWithCMTime:", &time), @"CinematicFutureOutputFramePTSValue"}];
      [(NSMutableArray *)self->_futureFrameMetadataDicts addObject:v6];
      metadataOutputFrameNumber = self->_metadataOutputFrameNumber + 1;
      self->_metadataOutputFrameNumber = metadataOutputFrameNumber;
      LODWORD(metadataPrimingCount) = self->_metadataPrimingCount;
    }

    if (metadataOutputFrameNumber > metadataPrimingCount || *p_clientMarkedEndOfMetadata)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  v14 = 0;
  v19 = 0;
  v15 = a3;
LABEL_33:
  if (v11 != -11822)
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    [(AVOfflineVideoStabilizer *)self _teardownVISProcessor];
  }

  if (v15)
  {
    *v15 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

LABEL_38:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v19;
}

- (int)_setupVISProcessor
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  futureFrameMetadataDicts = self->_futureFrameMetadataDicts;
  v4 = [(NSMutableArray *)futureFrameMetadataDicts countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v4)
  {
    v5 = *v35;
    v6 = *MEMORY[0x1E69914A8];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(futureFrameMetadataDicts);
        }

        if ([*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:v6])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)futureFrameMetadataDicts countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = [(NSMutableArray *)self->_futureFrameMetadataDicts firstObject];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
  if (([v9 isEqualToString:*MEMORY[0x1E6990CA0]] & 1) == 0)
  {
    [v9 isEqualToString:*MEMORY[0x1E6990CA8]];
  }

  v10 = [objc_msgSend(MEMORY[0x1E698F770] "sharedInstance")];
  if (!v10)
  {
    [(AVOfflineVideoStabilizer *)v27 _setupVISProcessor];
    return v27[0];
  }

  v11 = v10;
  v12 = [MEMORY[0x1E6991798] VISConfigurationForVersion:v10];
  if (!v12)
  {
    [(AVOfflineVideoStabilizer *)v27 _setupVISProcessor];
    return v27[0];
  }

  v13 = v12;
  v14 = [MEMORY[0x1E6991798] VISProcessorForVersion:v11];
  self->_visProcessor = v14;
  if (!v14)
  {
    [(AVOfflineVideoStabilizer *)v27 _setupVISProcessor];
    return v27[0];
  }

  [(VISProcessor *)v14 setDelegate:self];
  [v13 setExtendedOutputRowsToFill:{-[AVOfflineVideoStabilizer _extendedRowsOfOutputBuffer](self, "_extendedRowsOfOutputBuffer")}];
  [v13 setInputPixelBufferAttributes:self->_cachedInputBufferAttributes];
  [v13 setOutputPixelBufferAttributes:CVPixelBufferPoolGetPixelBufferAttributes(self->_pixelBufferPool)];
  [v13 setTransformPlatform:0];
  v31 = *MEMORY[0x1E6990E28];
  v32 = &unk_1F1CE9F80;
  [v13 setSensorIDDict:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1)}];
  [v13 setSmoothingMethod:2];
  [v13 setSphereCorrectionEnabled:v4];
  [v13 setUseISPMotionData:1];
  [v13 setCinematicLookAheadFrameCount:self->_metadataPrimingCount];
  *&v15 = self->_lookAheadTime;
  [v13 setCinematicLookAheadTime:v15];
  [v13 setOutputPixelBufferPool:self->_pixelBufferPool];
  [v13 setGpuPriority:0];
  [v13 setMetalSubmissionAndCompletionQueuePriority:0];
  [v13 setVideoStabilizationDisabled:!self->_stabilizationEnabled];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  FigCaptureGetDeviceToCameraTransform();
  v16 = 0;
  DWORD2(v28) = v17;
  DWORD2(v29) = v18;
  *&v28 = v19;
  *&v29 = v20;
  DWORD2(v30) = v21;
  *&v30 = v22;
  v23 = v27;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      *&v23[2 * j] = *((&v28 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
    }

    ++v16;
    v23 += 6;
  }

  while (v16 != 3);
  [v13 setCameraExtrinsicMatrix:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v27, 72)}];
  [(VISProcessor *)self->_visProcessor setConfiguration:v13];
  v25 = [(VISProcessor *)self->_visProcessor prepareToProcess:0];
  if (v25)
  {
    [AVOfflineVideoStabilizer _setupVISProcessor];
  }

  return v25;
}

- (void)_teardownVISProcessor
{
  visProcessor = self->_visProcessor;
  if (visProcessor)
  {
    [(VISProcessor *)visProcessor finishProcessing];
    v4 = self->_visProcessor;
  }
}

- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4
{
  if (a3)
  {
    outputSampleBuffers = self->_outputSampleBuffers;

LABEL_4:
    [(NSMutableArray *)outputSampleBuffers addObject:?];
    return;
  }

  if (a4)
  {
    v6 = self->_outputSampleBuffers;
    [MEMORY[0x1E696AD98] numberWithInt:*&a4];
    outputSampleBuffers = v6;

    goto LABEL_4;
  }
}

- (int)_validateStabilizationMetadata:(id)a3 withSampleTime:(id *)a4 isEndOfData:(BOOL *)a5
{
  if (a3)
  {
    if (a4->var2)
    {
      if (!self->_requiredMetadataKeys)
      {
        v8 = objc_alloc(MEMORY[0x1E695DFD8]);
        self->_requiredMetadataKeys = [v8 initWithObjects:{*MEMORY[0x1E69910A8], *MEMORY[0x1E6990FA8], *MEMORY[0x1E69914A0], *MEMORY[0x1E6990FC8], *MEMORY[0x1E6991018], *MEMORY[0x1E6991498], *MEMORY[0x1E69914B8], *MEMORY[0x1E69914B0], 0}];
      }

      if (!self->_optionalMetadataKeys)
      {
        v9 = objc_alloc(MEMORY[0x1E695DFD8]);
        self->_optionalMetadataKeys = [v9 initWithObjects:{*MEMORY[0x1E69914C0], *MEMORY[0x1E69914A8], *MEMORY[0x1E6991050], *MEMORY[0x1E6991118], *MEMORY[0x1E6991150], 0}];
      }

      v10 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a3, "allKeys")}];
      [v10 minusSet:self->_requiredMetadataKeys];
      [v10 minusSet:self->_optionalMetadataKeys];
      [v10 count];
      if ([v10 count] || (v11 = objc_msgSend(MEMORY[0x1E695DFA8], "setWithSet:", self->_requiredMetadataKeys), objc_msgSend(v11, "minusSet:", objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "allKeys"))), objc_msgSend(v11, "count"), (v12 = objc_msgSend(v11, "count")) != 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3();
        LODWORD(v12) = -11822;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
      LODWORD(v12) = FigSignalErrorAtGM();
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (a5)
  {
    *a5 = a3 == 0;
  }

  return v12;
}

- (int)_validateSourcePixelBuffer:(__CVBuffer *)a3 withSampleTime:(id *)a4 metadata:(id)a5 isEndOfData:(BOOL *)a6
{
  if (!a3)
  {
    result = 0;
    goto LABEL_7;
  }

  if ((a4->var2 & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
LABEL_13:
    FigDebugAssert3();
    result = -11822;
    goto LABEL_7;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = [a5 objectForKeyedSubscript:@"CinematicFutureOutputFramePTSValue"];
  if (v9)
  {
    [v9 CMTimeValue];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  time1 = v13;
  time2 = *a4;
  result = CMTimeCompare(&time1, &time2);
  if (result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    goto LABEL_13;
  }

LABEL_7:
  if (a6)
  {
    *a6 = a3 == 0;
  }

  return result;
}

- (opaqueCMSampleBuffer)_createSampleBufferWithPixelBuffer:(__CVBuffer *)a3 sampleTime:(id *)a4 futureMetadata:(id)a5 status:(int *)a6
{
  sampleBufferOut = 0;
  sampleTiming.presentationTimeStamp = *a4;
  sampleTiming.decodeTimeStamp = sampleTiming.presentationTimeStamp;
  sampleTiming.duration = self->_targetFrameDuration;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!self->_cachedInputBufferAttributes)
  {
    self->_cachedInputBufferAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(a3)], *MEMORY[0x1E6966208]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(a3)], *MEMORY[0x1E69660B8]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a3)], *MEMORY[0x1E6966130]);
  }

  p_cachedVideoFormatDescription = &self->_cachedVideoFormatDescription;
  cachedVideoFormatDescription = self->_cachedVideoFormatDescription;
  v13 = *MEMORY[0x1E695E480];
  v14 = 1;
  while (1)
  {
    v15 = v14;
    if (cachedVideoFormatDescription)
    {
      goto LABEL_7;
    }

    v16 = CMVideoFormatDescriptionCreateForImageBuffer(v13, a3, &self->_cachedVideoFormatDescription);
    if (v16)
    {
      break;
    }

    cachedVideoFormatDescription = *p_cachedVideoFormatDescription;
LABEL_7:
    v17 = CMSampleBufferCreateForImageBuffer(v13, a3, 1u, 0, 0, cachedVideoFormatDescription, &sampleTiming, &sampleBufferOut);
    v18 = v17;
    if (v17 != -12743)
    {
      if (!v17)
      {
LABEL_13:
        if (self->_isFirstFrame)
        {
          futureFrameMetadataDicts = self->_futureFrameMetadataDicts;
          if ([(NSMutableArray *)futureFrameMetadataDicts count]> self->_metadataPrimingCount)
          {
            futureFrameMetadataDicts = [(NSMutableArray *)self->_futureFrameMetadataDicts subarrayWithRange:0];
          }

          [v10 setObject:futureFrameMetadataDicts forKeyedSubscript:*MEMORY[0x1E69912F0]];
        }

        if (a5)
        {
          [v10 setObject:a5 forKeyedSubscript:*MEMORY[0x1E69912E8]];
        }

        CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6990D40], v10, 1u);
      }

      if (!a6)
      {
        goto LABEL_22;
      }

LABEL_21:
      *a6 = v18;
      goto LABEL_22;
    }

    if (*p_cachedVideoFormatDescription)
    {
      CFRelease(*p_cachedVideoFormatDescription);
      *p_cachedVideoFormatDescription = 0;
    }

    cachedVideoFormatDescription = 0;
    v14 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v16;
  if (a6)
  {
    goto LABEL_21;
  }

LABEL_22:

  return sampleBufferOut;
}

- (uint64_t)_copyStabilizedSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();
  return FigDebugAssert3();
}

- (uint64_t)_setupVISProcessor
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end