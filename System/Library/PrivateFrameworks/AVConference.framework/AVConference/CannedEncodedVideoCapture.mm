@interface CannedEncodedVideoCapture
- (CannedEncodedVideoCapture)initWithPath:(id)a3 shouldScaleAndPad:(BOOL)a4;
- (__CVBuffer)createPixelBufferForFrameIndex:(int)a3;
- (int)finalizeVideoCapture;
- (int)initialize;
- (int)initializeAssetReader;
- (int)loadCannedMediaAssets;
- (int)loadMetadataTrackFromList:(id)a3 error:(id)a4;
- (int)loadVideoTrackFromList:(id)a3 error:(id)a4;
- (int)setWidth:(int)a3 height:(int)a4;
- (void)attachMetadataToPixelBuffer:(__CVBuffer *)a3;
- (void)dealloc;
- (void)finalizeVideoCapture;
- (void)getFrameRate:(double *)a3 frameCount:(int *)a4 transformFlags:(unsigned int *)a5;
- (void)initialize;
- (void)initializeAssetReader;
- (void)loadCannedMediaAssets;
- (void)updateTransformFlags;
@end

@implementation CannedEncodedVideoCapture

- (CannedEncodedVideoCapture)initWithPath:(id)a3 shouldScaleAndPad:(BOOL)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CannedEncodedVideoCapture;
  v6 = [(CannedEncodedVideoCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_inputMutex, 0);
    pthread_mutex_init(&v7->_attributeMutex, 0);
    v7->_frameCount = 0;
    v7->_shouldScaleAndPad = a4;
    v7->_transformFlags = 0;
    v7->_movieURLString = a3;
    v7->_videoScaler = objc_alloc_init(VideoScaler);
    if ([(CannedEncodedVideoCapture *)v7 initialize])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [CannedEncodedVideoCapture initWithPath:shouldScaleAndPad:];
        }
      }

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_inputMutex);
  pthread_mutex_destroy(&self->_attributeMutex);

  metadataTrack = self->_metadataTrack;
  if (metadataTrack)
  {
  }

  metadataAdaptor = self->_metadataAdaptor;
  if (metadataAdaptor)
  {
  }

  readerMetadataTrackOutput = self->_readerMetadataTrackOutput;
  if (readerMetadataTrackOutput)
  {
  }

  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  rotatedPixelBufferPool = self->_rotatedPixelBufferPool;
  if (rotatedPixelBufferPool)
  {
    CFRelease(rotatedPixelBufferPool);
  }

  v8.receiver = self;
  v8.super_class = CannedEncodedVideoCapture;
  [(CannedEncodedVideoCapture *)&v8 dealloc];
}

- (int)loadVideoTrackFromList:(id)a3 error:(id)a4
{
  if (a4)
  {
    [CannedEncodedVideoCapture loadVideoTrackFromList:error:];
    return v7;
  }

  if (![a3 count])
  {
    [CannedEncodedVideoCapture loadVideoTrackFromList:error:];
    return v7;
  }

  -[CannedEncodedVideoCapture setVideoTrack:](self, "setVideoTrack:", [a3 firstObject]);
  if (!self->_videoTrack)
  {
    [CannedEncodedVideoCapture loadVideoTrackFromList:error:];
    return v7;
  }

  if (self->_shouldScaleAndPad)
  {
    [(CannedEncodedVideoCapture *)self updateTransformFlags];
  }

  return 0;
}

- (int)loadMetadataTrackFromList:(id)a3 error:(id)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (a4)
  {
    [CannedEncodedVideoCapture loadMetadataTrackFromList:error:];
    v9 = v11;
  }

  else
  {
    if ([a3 count])
    {
      -[CannedEncodedVideoCapture setMetadataTrack:](self, "setMetadataTrack:", [a3 firstObject]);
      metadataTrack = self->_metadataTrack;
      if (metadataTrack)
      {
        -[CannedEncodedVideoCapture setReaderMetadataTrackOutput:](self, "setReaderMetadataTrackOutput:", [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:metadataTrack outputSettings:0]);
        -[CannedEncodedVideoCapture setMetadataAdaptor:](self, "setMetadataAdaptor:", [MEMORY[0x1E6987E98] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:self->_readerMetadataTrackOutput]);
        [(AVAssetReader *)self->_assetReader addOutput:self->_readerMetadataTrackOutput];
      }
    }

    v9 = 0;
  }

  [v7 drain];
  return v9;
}

- (int)finalizeVideoCapture
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*"v024"];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6966130]];
  -[CannedEncodedVideoCapture setReaderVideoTrackOutput:](self, "setReaderVideoTrackOutput:", [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:self->_videoTrack outputSettings:v4]);
  if (!self->_readerVideoTrackOutput)
  {
    [CannedEncodedVideoCapture finalizeVideoCapture];
LABEL_7:
    v6 = v8;
    goto LABEL_4;
  }

  [(AVAssetReader *)self->_assetReader addOutput:?];
  if (![(AVAssetReader *)self->_assetReader startReading])
  {
    [CannedEncodedVideoCapture finalizeVideoCapture];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_4:
  [v3 drain];
  return v6;
}

- (int)loadCannedMediaAssets
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  if (v3)
  {
    v4 = v3;
    compressedFileAsset = self->_compressedFileAsset;
    v6 = *MEMORY[0x1E6987608];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__CannedEncodedVideoCapture_loadCannedMediaAssets__block_invoke;
    v9[3] = &unk_1E85F91F8;
    v9[5] = v4;
    v9[6] = &v10;
    v9[4] = self;
    [(AVURLAsset *)compressedFileAsset loadTracksWithMediaType:v6 completionHandler:v9];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v4);
    v7 = *(v11 + 6);
  }

  else
  {
    v7 = -2142633933;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [CannedEncodedVideoCapture loadCannedMediaAssets];
      }
    }
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __50__CannedEncodedVideoCapture_loadCannedMediaAssets__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) loadVideoTrackFromList:a2 error:a3];
  v4 = *(a1 + 48);
  if ((*(*(v4 + 8) + 24) & 0x80000000) != 0)
  {
    v9 = *(a1 + 40);

    return dispatch_semaphore_signal(v9);
  }

  else
  {
    v5 = *MEMORY[0x1E69875D0];
    v10[0] = MEMORY[0x1E69E9820];
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 8);
    v10[1] = 3221225472;
    v10[2] = __50__CannedEncodedVideoCapture_loadCannedMediaAssets__block_invoke_2;
    v10[3] = &unk_1E85F91F8;
    v12 = v4;
    v11 = v6;
    return [v7 loadTracksWithMediaType:v5 completionHandler:v10];
  }
}

intptr_t __50__CannedEncodedVideoCapture_loadCannedMediaAssets__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) loadMetadataTrackFromList:a2 error:a3];
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x80000000) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) finalizeVideoCapture];
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (int)initializeAssetReader
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_movieURLString];
  v5 = objc_alloc(MEMORY[0x1E6988168]);
  v22 = *MEMORY[0x1E6987BB8];
  v23[0] = MEMORY[0x1E695E118];
  v6 = [v5 initWithURL:v4 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];
  if (!v6)
  {
    [CannedEncodedVideoCapture initializeAssetReader];
LABEL_14:
    v13 = *buf;
    goto LABEL_9;
  }

  v7 = v6;
  [(CannedEncodedVideoCapture *)self setCompressedFileAsset:v6];

  compressedFileAsset = self->_compressedFileAsset;
  if (!compressedFileAsset)
  {
    [CannedEncodedVideoCapture initializeAssetReader];
    goto LABEL_14;
  }

  v15 = 0;
  -[CannedEncodedVideoCapture setAssetReader:](self, "setAssetReader:", [MEMORY[0x1E6987E78] assetReaderWithAsset:compressedFileAsset error:&v15]);
  if (v15)
  {
    [CannedEncodedVideoCapture initializeAssetReader];
    goto LABEL_14;
  }

  assetReader = self->_assetReader;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!assetReader)
  {
    [CannedEncodedVideoCapture initializeAssetReader];
    goto LABEL_14;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v11;
      v18 = 2080;
      v19 = "[CannedEncodedVideoCapture initializeAssetReader]";
      v20 = 1024;
      v21 = 257;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Enabling AVAssetReader preparesMediaDataForRealTimeConsumption", buf, 0x1Cu);
    }
  }

  [(AVAssetReader *)[(CannedEncodedVideoCapture *)self assetReader] setPreparesMediaDataForRealTimeConsumption:1];
  v13 = [(CannedEncodedVideoCapture *)self loadCannedMediaAssets];
LABEL_9:
  [v3 drain];
  return v13;
}

- (int)initialize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CannedEncodedVideoCapture *)self initializeAssetReader];
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [CannedEncodedVideoCapture initialize];
      }
    }
  }

  else
  {
    pthread_mutex_lock(&self->_inputMutex);
    [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
    self->_allFrameRate = v4;
    videoTrack = self->_videoTrack;
    if (videoTrack)
    {
      [(AVAssetTrack *)videoTrack timeRange];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    time = *&v15[1];
    Seconds = CMTimeGetSeconds(&time);
    [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
    self->_allFrameCount = (Seconds * v7 + 0.5);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        allFrameRate = self->_allFrameRate;
        LODWORD(time.value) = 136315906;
        *(&time.value + 4) = v8;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "[CannedEncodedVideoCapture initialize]";
        HIWORD(time.epoch) = 1024;
        v17 = 280;
        v18 = 2048;
        v19 = allFrameRate;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d frame rate is %f", &time, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        allFrameCount = self->_allFrameCount;
        LODWORD(time.value) = 136315906;
        *(&time.value + 4) = v11;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "[CannedEncodedVideoCapture initialize]";
        HIWORD(time.epoch) = 1024;
        v17 = 281;
        v18 = 1024;
        LODWORD(v19) = allFrameCount;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d video contains %d frames", &time, 0x22u);
      }
    }

    pthread_mutex_unlock(&self->_inputMutex);
    [+[VCCannedAVSync sharedCannedAVSync](VCCannedAVSync "sharedCannedAVSync")];
  }

  return v3;
}

- (int)setWidth:(int)a3 height:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_attributeMutex);
  self->_width = v5;
  self->_height = v4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "[CannedEncodedVideoCapture setWidth:height:]";
      v18 = 1024;
      v19 = 299;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v4;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting width: %d height: %d", &v14, 0x28u);
    }
  }

  p_pixelBufferPool = &self->_pixelBufferPool;
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
    *p_pixelBufferPool = 0;
  }

  rotatedPixelBufferPool = self->_rotatedPixelBufferPool;
  if (rotatedPixelBufferPool)
  {
    CFRelease(rotatedPixelBufferPool);
    self->_rotatedPixelBufferPool = 0;
  }

  if ([CannedVideoCapture createPixelBufferPool:&self->_pixelBufferPool withWidth:v5 height:v4])
  {
    v12 = -2142633980;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [CannedEncodedVideoCapture setWidth:height:];
      }
    }
  }

  else
  {
    v12 = [CannedVideoCapture createPixelBufferPool:&self->_rotatedPixelBufferPool withWidth:v4 height:v5];
    if (v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [CannedEncodedVideoCapture setWidth:height:];
        }
      }

      v12 = -2142633980;
      if (*p_pixelBufferPool)
      {
        CFRelease(*p_pixelBufferPool);
        *p_pixelBufferPool = 0;
      }
    }
  }

  pthread_mutex_unlock(&self->_attributeMutex);
  return v12;
}

- (void)attachMetadataToPixelBuffer:(__CVBuffer *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(AVAssetReaderOutputMetadataAdaptor *)self->_metadataAdaptor nextTimedMetadataGroup];
  v5 = MEMORY[0x1E6987FE0];
  v6 = [(AVTimedMetadataGroup *)v4 items];
  v7 = [v5 metadataItemsFromArray:v6 filteredByIdentifier:*MEMORY[0x1E6960388]];
  v8 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [v8 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * v12++), "value")}];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }

  VCVideoUtil_AttachMetadata(v8, a3);
}

- (__CVBuffer)createPixelBufferForFrameIndex:(int)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v25 = 0;
  frameCount = self->_frameCount;
  if (frameCount > a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
      }
    }

    if ([(CannedEncodedVideoCapture *)self initializeAssetReader])
    {
      [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
      goto LABEL_33;
    }

    frameCount = 0;
    self->_frameCount = 0;
  }

  if (frameCount >= a3)
  {
LABEL_19:
    v15 = [(AVAssetReaderTrackOutput *)self->_readerVideoTrackOutput copyNextSampleBuffer];
    if (v15)
    {
      goto LABEL_24;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
      }
    }

    self->_frameCount = 0;
    if ([(CannedEncodedVideoCapture *)self initializeAssetReader])
    {
      [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
    }

    else
    {
LABEL_24:
      ++self->_frameCount;
      ImageBuffer = CMSampleBufferGetImageBuffer(v15);
      if (ImageBuffer)
      {
        v17 = ImageBuffer;
        Width = CVPixelBufferGetWidth(ImageBuffer);
        Height = CVPixelBufferGetHeight(v17);
        pthread_mutex_lock(&self->_attributeMutex);
        videoScaler = self->_videoScaler;
        if (self->_shouldScaleAndPad)
        {
          v21 = VideoScaler_FixedAspectRatioScaleAndPadPixelBuffer(videoScaler, v17, Width, Height, self->_width, self->_height, self->_pixelBufferPool, &v25);
        }

        else
        {
          v21 = [(VideoScaler *)videoScaler convertAndScalePixelBuffer:v17 toWidth:self->_width toHeight:self->_height withPixelFormat:*"v024" usingPixelBufferPool:self->_pixelBufferPool andStoreTo:&v25];
        }

        v22 = v21;
        pthread_mutex_unlock(&self->_attributeMutex);
        if (v22 < 0)
        {
          [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
        }

        else if (self->_metadataAdaptor)
        {
          [(CannedEncodedVideoCapture *)self attachMetadataToPixelBuffer:v25];
        }
      }

      else
      {
        [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E6986640];
    v9 = MEMORY[0x1E6986650];
    *&v6 = 136315650;
    v24 = v6;
    while (1)
    {
      v10 = [(AVAssetReaderTrackOutput *)self->_readerVideoTrackOutput copyNextSampleBuffer];
      if (!v10)
      {
        break;
      }

      CFRelease(v10);
      ++self->_frameCount;
      metadataAdaptor = self->_metadataAdaptor;
      if (metadataAdaptor && ![(AVAssetReaderOutputMetadataAdaptor *)metadataAdaptor nextTimedMetadataGroup]&& VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v9;
        v14 = *v9;
        if (*v8 == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v27 = v12;
            v28 = 2080;
            v29 = "[CannedEncodedVideoCapture createPixelBufferForFrameIndex:]";
            v30 = 1024;
            v31 = 379;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d empty metadataGroup while skipping frames", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = v24;
          v27 = v12;
          v28 = 2080;
          v29 = "[CannedEncodedVideoCapture createPixelBufferForFrameIndex:]";
          v30 = 1024;
          v31 = 379;
          _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d empty metadataGroup while skipping frames", buf, 0x1Cu);
        }
      }

      if (self->_frameCount >= a3)
      {
        goto LABEL_19;
      }
    }

    [CannedEncodedVideoCapture createPixelBufferForFrameIndex:];
  }

LABEL_33:
  [v5 drain];
  return v25;
}

- (void)getFrameRate:(double *)a3 frameCount:(int *)a4 transformFlags:(unsigned int *)a5
{
  pthread_mutex_lock(&self->_inputMutex);
  if (a3)
  {
    *a3 = self->_allFrameRate;
  }

  if (a4)
  {
    *a4 = self->_allFrameCount;
  }

  *a5 = self->_transformFlags;

  pthread_mutex_unlock(&self->_inputMutex);
}

- (void)updateTransformFlags
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Video track transform is invalid", v2, v3, v4, v5, v6);
}

- (void)initWithPath:shouldScaleAndPad:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d failed!", v2, v3, v4, v5, v6);
}

- (void)loadVideoTrackFromList:error:.cold.1()
{
  OUTLINED_FUNCTION_11_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to load video tracks error=%@", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

- (void)loadVideoTrackFromList:error:.cold.2()
{
  OUTLINED_FUNCTION_12_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)loadVideoTrackFromList:error:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)loadMetadataTrackFromList:error:.cold.1()
{
  OUTLINED_FUNCTION_11_18();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to load metadata tracks error=%@", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

- (void)finalizeVideoCapture
{
  OUTLINED_FUNCTION_12_12();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)loadCannedMediaAssets
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create the semaphore", v2, v3, v4, v5, v6);
}

- (void)initializeAssetReader
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unablle to load assed url=%@", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

- (void)initialize
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize AssetReader", v2, v3, v4, v5, v6);
}

- (void)setWidth:height:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[CannedEncodedVideoCapture setWidth:height:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d PixelBuffer pool creation failed(%d)", v3, *v4, "[CannedEncodedVideoCapture setWidth:height:]" >> 16, 311);
}

- (void)setWidth:height:.cold.2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[CannedEncodedVideoCapture setWidth:height:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Rotated PixelBuffer pool creation failed(%d)", v3, *v4, "[CannedEncodedVideoCapture setWidth:height:]" >> 16, 322);
}

- (void)createPixelBufferForFrameIndex:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d requested frameIndex smaller than previously decoded frame index, rewind the video to the beginning", v2, v3, v4, v5, v6);
}

- (void)createPixelBufferForFrameIndex:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize AssetReader", v2, v3, v4, v5, v6);
    }
  }
}

- (void)createPixelBufferForFrameIndex:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d error: copyNextSampleBuffer returned NULL", v2, v3, v4, v5, v6);
}

- (void)createPixelBufferForFrameIndex:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize AssetReader", v2, v3, v4, v5, v6);
    }
  }
}

- (void)createPixelBufferForFrameIndex:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d failed to rescale pixel buffer", v2, v3, v4, v5, v6);
    }
  }
}

- (void)createPixelBufferForFrameIndex:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d error: copyNextSampleBuffer failed", v2, v3, v4, v5, v6);
    }
  }
}

- (void)createPixelBufferForFrameIndex:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d error: copyNextSampleBuffer returned NULL (while skipping frames)", v2, v3, v4, v5, v6);
    }
  }
}

@end