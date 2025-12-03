@interface CannedRawVideoCapture
- (CannedRawVideoCapture)initWithPath:(id)path;
- (__CVBuffer)createPixelBufferForFrameIndex:(int)index;
- (int)initializeFrameResolutionArrayFromFolder:(id)folder;
- (int)setWidth:(int)width height:(int)height;
- (void)dealloc;
- (void)getFrameRate:(double *)rate frameCount:(int *)count transformFlags:(unsigned int *)flags;
@end

@implementation CannedRawVideoCapture

- (CannedRawVideoCapture)initWithPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CannedRawVideoCapture;
  v5 = [(CannedRawVideoCapture *)&v14 init];
  v6 = v5;
  if (v5)
  {
    pthread_mutex_init(&v5->_inputMutex, 0);
    pthread_mutex_init(&v6->_attributeMutex, 0);
    v7 = [(CannedRawVideoCapture *)v6 initializeFrameResolutionArrayFromFolder:path];
    v6->_shouldScaleAndPad = 0;
    v6->_videoScaler = objc_alloc_init(VideoScaler);
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = objc_opt_class();
          Name = class_getName(v11);
          v13 = sel_getName(a2);
          *buf = 136316162;
          v16 = v8;
          v17 = 2080;
          v18 = "[CannedRawVideoCapture initWithPath:]";
          v19 = 1024;
          v20 = 97;
          v21 = 2080;
          v22 = Name;
          v23 = 2080;
          v24 = v13;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s failed!", buf, 0x30u);
        }
      }

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_inputMutex);
  pthread_mutex_destroy(&self->_attributeMutex);

  currentInputFile = self->_currentInputFile;
  if (currentInputFile)
  {
    fclose(currentInputFile);
  }

  currentPixelBufferPool = self->_currentPixelBufferPool;
  if (currentPixelBufferPool)
  {
    CFRelease(currentPixelBufferPool);
  }

  rotatedPixelBufferPool = self->_rotatedPixelBufferPool;
  if (rotatedPixelBufferPool)
  {
    CFRelease(rotatedPixelBufferPool);
  }

  v6.receiver = self;
  v6.super_class = CannedRawVideoCapture;
  [(CannedRawVideoCapture *)&v6 dealloc];
}

- (int)initializeFrameResolutionArrayFromFolder:(id)folder
{
  v38 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  folderCopy = folder;
  v4 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v28 = 0x7FFFFFFF;
    v7 = *v35;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([v10 hasSuffix:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @".%s", "420v")}])
        {
          v30 = 0;
          v29 = 0.0;
          v12 = sscanf([v10 UTF8String], "%dx%dx%f", &v30 + 4, &v30, &v29) != 3 || SHIDWORD(v30) < 1;
          if (!v12 && v30 >= 1)
          {
            *&v11 = v29;
            if (v29 > 0.0)
            {
              v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v11, folderCopy, v10];
              v15 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
              v16 = v15 / ((12 * HIDWORD(v30) * v30 + (12 * HIDWORD(v30) * v30 < 0 ? 7 : 0)) >> 3);
              if (v16)
              {
                v31[0] = @"width";
                v32[0] = [MEMORY[0x1E696AD98] numberWithInt:?];
                v31[1] = @"height";
                v17 = [MEMORY[0x1E696AD98] numberWithInt:v30];
                v31[2] = @"path";
                v32[1] = v17;
                v32[2] = v14;
                [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v32, v31, 3)}];
                v18 = v28 >= v16 ? v16 : v28;
                v28 = v18;
                v11 = v29;
                if (v8 < v29)
                {
                  v8 = v29;
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v33 count:{16, v11}];
    }

    while (v6);
  }

  else
  {
    v28 = 0x7FFFFFFF;
    v8 = 0.0;
  }

  if ([array count])
  {
    pthread_mutex_lock(&self->_inputMutex);

    self->_allResolutions = array;
    v19 = v28;
    if (v28 <= 1)
    {
      v19 = 1;
    }

    self->_allFrameCount = v19;
    v20 = 10.0;
    if (v8 > 0.0)
    {
      v20 = v8;
    }

    self->_allFrameRate = v20;
    pthread_mutex_unlock(&self->_inputMutex);
    [+[VCCannedAVSync sharedCannedAVSync](VCCannedAVSync "sharedCannedAVSync")];
    return 0;
  }

  else
  {
    v21 = -2142633974;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(CannedRawVideoCapture *)v22 initializeFrameResolutionArrayFromFolder:folderCopy, v23];
      }
    }
  }

  return v21;
}

- (int)setWidth:(int)width height:(int)height
{
  v55 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_attributeMutex);
  if (*&self->_width != __PAIR64__(height, width))
  {
    self->_width = width;
    self->_height = height;
    pthread_mutex_lock(&self->_inputMutex);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    allResolutions = self->_allResolutions;
    v11 = [(NSArray *)allResolutions countByEnumeratingWithState:&v51 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v29 = 0;
      v13 = 0;
      v14 = *v52;
      v30 = 120;
      v31 = 160;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(allResolutions);
          }

          v16 = *(*(&v51 + 1) + 8 * i);
          v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"width", v29), "intValue"}];
          v18 = [objc_msgSend(v16 objectForKeyedSubscript:{@"height", "intValue"}];
          if (v17 <= self->_width && v18 <= self->_height && v18 * v17 > v13)
          {
            v29 = v16;
            v13 = v18 * v17;
            v30 = v18;
            v31 = v17;
          }
        }

        v12 = [(NSArray *)allResolutions countByEnumeratingWithState:&v51 objects:v50 count:16];
      }

      while (v12);
    }

    else
    {
      v29 = 0;
      v30 = 120;
      v31 = 160;
    }

    currentResolution = v29;
    self->_currentResolution = currentResolution;
    currentInputFile = self->_currentInputFile;
    if (currentInputFile)
    {
      fclose(currentInputFile);
      self->_currentInputFile = 0;
      currentResolution = self->_currentResolution;
    }

    if (currentResolution)
    {
      bzero(buf, 0x400uLL);
      [-[NSDictionary objectForKeyedSubscript:](currentResolution objectForKeyedSubscript:{@"path", "getCString:maxLength:encoding:", buf, 1024, 4}];
      self->_currentInputFile = fopen(buf, "rb");
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if ([v29 objectForKey:@"path"])
          {
            v24 = [objc_msgSend(objc_msgSend(v29 objectForKey:{@"path", "description"), "UTF8String"}];
          }

          else
          {
            v24 = "<nil>";
          }

          *v32 = 136315906;
          v33 = v22;
          v34 = 2080;
          v35 = "[CannedRawVideoCapture setWidth:height:]";
          v36 = 1024;
          v37 = 256;
          v38 = 2080;
          v39 = v24;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reading from %s", v32, 0x26u);
        }
      }
    }

    p_currentPixelBufferPool = &self->_currentPixelBufferPool;
    currentPixelBufferPool = self->_currentPixelBufferPool;
    if (currentPixelBufferPool)
    {
      CFRelease(currentPixelBufferPool);
      *p_currentPixelBufferPool = 0;
    }

    rotatedPixelBufferPool = self->_rotatedPixelBufferPool;
    if (rotatedPixelBufferPool)
    {
      CFRelease(rotatedPixelBufferPool);
      self->_rotatedPixelBufferPool = 0;
    }

    if ([CannedVideoCapture createPixelBufferPool:&self->_currentPixelBufferPool withWidth:v31 height:v30, v29])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [CannedRawVideoCapture setWidth:height:];
        }
      }
    }

    else
    {
      v9 = [CannedVideoCapture createPixelBufferPool:&self->_rotatedPixelBufferPool withWidth:v30 height:v31];
      if (!v9)
      {
LABEL_45:
        pthread_mutex_unlock(&self->_inputMutex);
        goto LABEL_46;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [CannedRawVideoCapture setWidth:height:];
        }
      }

      if (*p_currentPixelBufferPool)
      {
        CFRelease(*p_currentPixelBufferPool);
        *p_currentPixelBufferPool = 0;
      }
    }

    v9 = -2142633980;
    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v41 = v7;
      v42 = 2080;
      v43 = "[CannedRawVideoCapture setWidth:height:]";
      v44 = 1024;
      v45 = 204;
      v46 = 1024;
      widthCopy = width;
      v48 = 1024;
      heightCopy = height;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No width/height change (%dx%d). Skipping re-initialization.", buf, 0x28u);
    }
  }

  v9 = 0;
LABEL_46:
  pthread_mutex_unlock(&self->_attributeMutex);
  return v9;
}

- (__CVBuffer)createPixelBufferForFrameIndex:(int)index
{
  v32 = *MEMORY[0x1E69E9840];
  valuePtr = index;
  pthread_mutex_lock(&self->_inputMutex);
  LODWORD(v4) = [-[NSDictionary objectForKeyedSubscript:](self->_currentResolution objectForKeyedSubscript:{@"width", "intValue"}];
  v5 = [-[NSDictionary objectForKeyedSubscript:](self->_currentResolution objectForKeyedSubscript:{@"height", "intValue"}];
  v7 = v4 < 1 || v5 < 1;
  if (v7)
  {
    v8 = 120;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v4 = 160;
  }

  else
  {
    v4 = v4;
  }

  pixelBufferOut = 0;
  v9 = *MEMORY[0x1E695E480];
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_currentPixelBufferPool, &pixelBufferOut))
  {
    pthread_mutex_unlock(&self->_inputMutex);
    return 0;
  }

  else
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F50], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FD0], kCVAttachmentMode_ShouldPropagate);
    v11 = CFNumberCreate(v9, kCFNumberIntType, &valuePtr);
    if (v11)
    {
      v12 = v11;
      CVBufferSetAttachment(pixelBufferOut, @"FrameIndex", v11, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v12);
    }

    currentInputFile = self->_currentInputFile;
    if (currentInputFile)
    {
      fseeko(currentInputFile, (valuePtr * (12 * v4 * v8)) / 8, 0);
    }

    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    if (BaseAddressOfPlane)
    {
      v15 = BaseAddressOfPlane;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
      if (v4 == BytesPerRowOfPlane)
      {
        v17 = self->_currentInputFile;
        if (v17)
        {
          fread(v15, v8, v4, v17);
        }

        else
        {
          bzero(v15, (v8 * v4));
        }
      }

      else
      {
        v18 = BytesPerRowOfPlane;
        if (v8 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v8;
        }

        do
        {
          v20 = self->_currentInputFile;
          if (v20)
          {
            fread(v15, 1uLL, v4, v20);
          }

          else
          {
            bzero(v15, v4);
          }

          v15 += v18;
          --v19;
        }

        while (v19);
      }
    }

    v21 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    if (v21)
    {
      v22 = v21;
      v23 = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL);
      v24 = v4 & 0xFFFFFFFE;
      if (v24 == v23)
      {
        v25 = self->_currentInputFile;
        v26 = v8 >> 1;
        if (v25)
        {
          fread(v22, v26, v23, v25);
        }

        else
        {
          bzero(v22, v26 * v23);
        }
      }

      else if (v8 >= 2)
      {
        v27 = v8 >> 1;
        v28 = v23;
        do
        {
          v29 = self->_currentInputFile;
          if (v29)
          {
            fread(v22, 1uLL, v24, v29);
          }

          else
          {
            bzero(v22, v24);
          }

          v22 += v28;
          --v27;
        }

        while (v27);
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    pthread_mutex_unlock(&self->_inputMutex);
    return pixelBufferOut;
  }
}

- (void)getFrameRate:(double *)rate frameCount:(int *)count transformFlags:(unsigned int *)flags
{
  pthread_mutex_lock(&self->_inputMutex);
  if (rate)
  {
    *rate = self->_allFrameRate;
  }

  if (count)
  {
    *count = self->_allFrameCount;
  }

  *flags = 0;

  pthread_mutex_unlock(&self->_inputMutex);
}

- (void)initializeFrameResolutionArrayFromFolder:(os_log_t)log .cold.1(uint64_t a1, void *a2, os_log_t log)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = [objc_msgSend(a2 "description")];
  }

  else
  {
    v5 = "<nil>";
  }

  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  v9 = "[CannedRawVideoCapture initializeFrameResolutionArrayFromFolder:]";
  v10 = 1024;
  v11 = 176;
  v12 = 2080;
  v13 = v5;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d There are no valid raw video files in the specified folder %s", &v6, 0x26u);
}

- (void)setWidth:height:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "[CannedRawVideoCapture setWidth:height:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d PixelBuffer pool creation failed(%d)", v2, *v3, "[CannedRawVideoCapture setWidth:height:]" >> 16, 268);
}

- (void)setWidth:height:.cold.2()
{
  OUTLINED_FUNCTION_3();
  *&v3[6] = "[CannedRawVideoCapture setWidth:height:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Rotated PixelBuffer pool creation failed(%d)", v2, *v3, "[CannedRawVideoCapture setWidth:height:]" >> 16, 280);
}

@end