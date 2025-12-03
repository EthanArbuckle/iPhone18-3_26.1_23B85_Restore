@interface ADExecutor
- (ADExecutor)init;
- (__CVBuffer)allocateIOBufferForEspressoDescriptor:(id)descriptor;
- (__CVBuffer)inferencePixelBufferForDescriptor:(id)descriptor inputUserBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)inferencePixelBufferForDescriptor:(id)descriptor outputUserBuffer:(__CVBuffer *)buffer;
- (id)getIntermediateWithName:(id)name;
- (int64_t)convertIntrinsicsFrom:(__CVBuffer *)from cropBy:(CGRect)by to:(__CVBuffer *)to;
- (int64_t)preAllocateInferencePixelBufferForDescriptor:(id)descriptor;
- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi descriptorForROI:(id)i exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference inferenceDescriptor:(id)descriptor;
- (int64_t)setInferencePixelBuffer:(__CVBuffer *)buffer forEspressoDescriptor:(id)descriptor;
- (int64_t)solveRotationPreference:(unint64_t)preference;
- (void)dealloc;
- (void)frameExecutionEnd;
- (void)frameExecutionStart;
@end

@implementation ADExecutor

- (int64_t)setInferencePixelBuffer:(__CVBuffer *)buffer forEspressoDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v7 = [(ADEspressoRunnerProtocol *)self->_espressoRunner registerPixelBuffer:buffer forDescriptor:descriptorCopy];
  if (!v7)
  {
    ownedInferenceBuffers = self->_ownedInferenceBuffers;
    name = [descriptorCopy name];
    [(NSMutableDictionary *)ownedInferenceBuffers setObject:buffer forKey:name];
  }

  return v7;
}

- (__CVBuffer)inferencePixelBufferForDescriptor:(id)descriptor outputUserBuffer:(__CVBuffer *)buffer
{
  descriptorCopy = descriptor;
  if (buffer)
  {
    v7 = *buffer;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ADExecutor *)self inferencePixelBufferForDescriptor:descriptorCopy inputUserBuffer:v7];
  v9 = v8;
  if (buffer && !*buffer)
  {
    *buffer = CVPixelBufferRetain(v8);
  }

  return v9;
}

- (__CVBuffer)inferencePixelBufferForDescriptor:(id)descriptor inputUserBuffer:(__CVBuffer *)buffer
{
  descriptorCopy = descriptor;
  ownedInferenceBuffers = self->_ownedInferenceBuffers;
  name = [descriptorCopy name];
  bufferCopy = [(NSMutableDictionary *)ownedInferenceBuffers objectForKeyedSubscript:name];

  if ([(ADExecutorParameters *)self->_executorParameters bufferCopyPolicy])
  {
    if ([descriptorCopy conformedByPixelBuffer:buffer forLayout:self->_layout] && !self->_rotationConstant)
    {
      if ([(ADEspressoRunnerProtocol *)self->_espressoRunner registerPixelBuffer:buffer forDescriptor:descriptorCopy])
      {
        bufferCopy = 0;
      }

      else
      {
        bufferCopy = buffer;
      }
    }

    else if ([(ADExecutorParameters *)self->_executorParameters bufferCopyPolicy]== 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Buffer copy policy is ForceNoCopy, but user buffer does not match the descriptor", v11, 2u);
      }

      bufferCopy = 0;
    }

    else if (([descriptorCopy conformedByPixelBuffer:bufferCopy forLayout:self->_layout] & 1) == 0)
    {
      bufferCopy = [(ADExecutor *)self allocateIOBufferForEspressoDescriptor:descriptorCopy];
    }
  }

  return bufferCopy;
}

- (int64_t)preAllocateInferencePixelBufferForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(ADExecutorParameters *)self->_executorParameters bufferCopyPolicy])
  {
    v5 = 0;
  }

  else if ([(ADExecutor *)self allocateIOBufferForEspressoDescriptor:descriptorCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = -22950;
  }

  return v5;
}

- (__CVBuffer)allocateIOBufferForEspressoDescriptor:(id)descriptor
{
  v12 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = [(ADEspressoRunnerProtocol *)self->_espressoRunner createAndRegisterPixelBufferForDescriptor:descriptorCopy];
  if (v5)
  {
    ownedInferenceBuffers = self->_ownedInferenceBuffers;
    name = [descriptorCopy name];
    [(NSMutableDictionary *)ownedInferenceBuffers setObject:v5 forKey:name];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    name2 = [descriptorCopy name];
    v10 = 138412290;
    v11 = name2;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed allocating a pixel buffer for channel %@", &v10, 0xCu);
  }

  return v5;
}

- (id)getIntermediateWithName:(id)name
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v20 = nameCopy;
  [(ADExecutor *)self getIntermediates];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v21 = v5;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      v8 = 0;
      v19 = v6;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"name"];
        if ([v10 isEqualToString:nameCopy])
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          allKeys = [v9 allKeys];
          v12 = v7;
          v13 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            v14 = *v23;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(allKeys);
                }

                v16 = *(*(&v22 + 1) + 8 * i);
                if (([v16 isEqualToString:@"name"] & 1) == 0)
                {
                  v17 = [v9 objectForKeyedSubscript:v16];

                  nameCopy = v20;
                  v5 = v21;

                  goto LABEL_21;
                }
              }

              v13 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          nameCopy = v20;
          v5 = v21;
          v7 = v12;
          v6 = v19;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v17 = 0;
    }

    while (v6);
  }

  else
  {
    v17 = 0;
  }

LABEL_21:

  return v17;
}

- (int64_t)convertIntrinsicsFrom:(__CVBuffer *)from cropBy:(CGRect)by to:(__CVBuffer *)to
{
  v59[2] = *MEMORY[0x277D85DE8];
  if (!from)
  {
    return -22953;
  }

  x = by.origin.x;
  y = by.origin.y;
  Attachment = CVBufferGetAttachment(from, @"Calibration Data", 0);
  if (!Attachment)
  {
    return -22953;
  }

  v10 = Attachment;
  CFRetain(Attachment);
  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    CFRelease(v10);
    return -22953;
  }

  v12 = [v10 objectForKeyedSubscript:@"Sensors"];
  v13 = [v12 objectForKeyedSubscript:@"Intrinsics"];
  allKeys = [v13 allKeys];
  firstObject = [allKeys firstObject];

  v16 = [v10 objectForKeyedSubscript:@"Sensors"];
  v17 = [v16 objectForKeyedSubscript:@"Intrinsics"];
  v18 = [v17 objectForKeyedSubscript:firstObject];

  if (v18)
  {
    v19 = [v18 objectForKeyedSubscript:@"Pinhole"];
    v20 = [v19 objectForKeyedSubscript:@"Principal Point"];
    v21 = [v20 objectForKeyedSubscript:@"Data"];

    v22 = [v18 objectForKeyedSubscript:@"Pinhole"];
    v23 = [v22 objectForKeyedSubscript:@"Focal Length"];
    v24 = [v23 objectForKeyedSubscript:@"Data"];

    v25 = -22953;
    if (v21 && v24)
    {
      v26 = [v24 objectAtIndex:0];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v21 objectAtIndex:0];
      [v29 doubleValue];
      v31 = v30;
      v32 = [v21 objectAtIndex:1];
      [v32 doubleValue];
      v34 = v33;

      Width = CVPixelBufferGetWidth(from);
      Height = CVPixelBufferGetHeight(from);
      v37 = CVPixelBufferGetWidth(to);
      v38 = CVPixelBufferGetHeight(to);
      v39 = Width;
      v40 = v37;
      if (Width / Height == v37 / v38)
      {
        v42 = v31 - x;
        v43 = v40 / v39;
        v58[0] = @"Principal Point";
        v56 = @"Data";
        v55[0] = [MEMORY[0x277CCABB0] numberWithDouble:v42 * (v40 / v39)];
        v50 = v55[0];
        v49 = [MEMORY[0x277CCABB0] numberWithDouble:(v34 - y) * v43];
        v55[1] = v49;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
        v57 = v48;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v58[1] = @"Focal Length";
        v59[0] = v47;
        v53 = @"Data";
        v44 = [MEMORY[0x277CCABB0] numberWithDouble:v28 * v43];
        v52 = v44;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v54 = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v59[1] = v46;
        CVBufferSetAttachment(to, @"Calibration Data", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2], kCVAttachmentMode_ShouldPropagate);

        v25 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot convert intrinsics when aspect ratios don't match", buf, 2u);
        }

        v25 = -22951;
      }
    }
  }

  else
  {
    v25 = -22953;
  }

  return v25;
}

- (int64_t)solveRotationPreference:(unint64_t)preference
{
  v5 = [MEMORY[0x277CED0C0] isLandscapeSize:{self->_inputRoi.size.width, self->_inputRoi.size.height}];
  v6 = (self->_layout != 255) & (v5 ^ [MEMORY[0x277CED0C0] isLandscape:self->_layout]);
  if (preference == 2)
  {
    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (preference != 1)
    {
      if (!preference)
      {
        v7 = self->_inputOrientation - 2;
        if (v7 < 7)
        {
          v8 = &unk_240407F00;
          return v8[v7];
        }
      }

      return 0;
    }

    inputOrientation = self->_inputOrientation;
    if (v6)
    {
      v7 = inputOrientation - 5;
      if (inputOrientation - 5 < 4)
      {
        v8 = &unk_2404071A8;
        return v8[v7];
      }

      return 0;
    }

    return 2 * (inputOrientation - 3 < 2);
  }
}

- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi descriptorForROI:(id)i exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference inferenceDescriptor:(id)descriptor
{
  v10 = *&orientation;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v48 = *MEMORY[0x277D85DE8];
  iCopy = i;
  descriptorCopy = descriptor;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v34 = 134219520;
      typeCopy2 = type;
      v36 = 2048;
      v37 = x;
      v38 = 2048;
      v39 = y;
      v40 = 2048;
      v41 = width;
      v42 = 2048;
      v43 = height;
      v44 = 1024;
      v45 = v10;
      v46 = 2048;
      preferenceCopy2 = preference;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "preparing executor with engine %lu, roi: (%f,%f,%f,%f) orientation %d, rotation preference %lu", &v34, 0x44u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v34 = 134219520;
    typeCopy2 = type;
    v36 = 2048;
    v37 = x;
    v38 = 2048;
    v39 = y;
    v40 = 2048;
    v41 = width;
    v42 = 2048;
    v43 = height;
    v44 = 1024;
    v45 = v10;
    v46 = 2048;
    preferenceCopy2 = preference;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "preparing executor with engine %lu, roi: (%f,%f,%f,%f) orientation %d, rotation preference %lu", &v34, 0x44u);
  }

  if ([(ADExecutor *)self doesSupportBufferCopyPolicy:[(ADExecutorParameters *)self->_executorParameters bufferCopyPolicy]])
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    if (CGRectIsEmpty(v49))
    {
      v19 = 255;
    }

    else
    {
      v21 = [iCopy layoutForSize:{width, height}];
      v19 = [MEMORY[0x277CED0C0] adjustLayout:v21 sourceOrientation:v10 toRotationPreference:preference];
    }

    if ([(ADExecutorParameters *)self->_executorParameters bufferCopyPolicy]== 2)
    {
      [iCopy sizeForLayout:v19];
      if (x != 0.0 || y != 0.0 || width != v22 || height != v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v34) = 0;
          v24 = MEMORY[0x277D86220];
          v25 = "Cannot prepare executor that requires crop/scale when buffer copy policy is ForceNoCopy";
          goto LABEL_32;
        }

LABEL_29:
        v20 = -22957;
        goto LABEL_30;
      }
    }

    self->_inputRoi.origin.x = x;
    self->_inputRoi.origin.y = y;
    self->_inputRoi.size.width = width;
    self->_inputRoi.size.height = height;
    self->_inputOrientation = v10;
    self->_rotationPreference = preference;
    if (v19 == 254)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v34) = 0;
        v24 = MEMORY[0x277D86220];
        v25 = "Cannot prepare executor with unknown layout";
LABEL_32:
        _os_log_error_impl(&dword_2402F6000, v24, OS_LOG_TYPE_ERROR, v25, &v34, 2u);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (self->_layout == v19 && self->_engineType == type && self->_espressoRunner)
    {
      v20 = 0;
    }

    else
    {
      self->_engineType = type;
      self->_layout = v19;
      v26 = MEMORY[0x277CED060];
      networkURL = [descriptorCopy networkURL];
      absoluteString = [networkURL absoluteString];
      engineType = self->_engineType;
      v30 = [descriptorCopy configurationNameForLayout:self->_layout];
      v31 = [v26 espressoRunnerForPath:absoluteString forEngine:engineType configurationName:v30];
      espressoRunner = self->_espressoRunner;
      self->_espressoRunner = v31;

      self->_rotationConstant = [(ADExecutor *)self solveRotationPreference:self->_rotationPreference];
      if (self->_espressoRunner)
      {
        v20 = 0;
      }

      else
      {
        v20 = -22960;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v34) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "executor does not support the requested buffer copy policy", &v34, 2u);
    }

    v20 = -22953;
  }

LABEL_30:

  return v20;
}

- (void)frameExecutionEnd
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_currFrameStartTime];
  self->_totalFrameTime = v4 + self->_totalFrameTime;

  ++self->_framesCompleted;
}

- (void)frameExecutionStart
{
  v3 = [MEMORY[0x277CBEAA8] now];
  currFrameStartTime = self->_currFrameStartTime;
  self->_currFrameStartTime = v3;

  ++self->_framesStarted;
}

- (void)dealloc
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"ExecutorName";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v23[0] = v4;
  v22[1] = @"FramesStarted";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_framesStarted];
  v23[1] = v5;
  v22[2] = @"FramesCompleted";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self->_framesCompleted];
  v23[2] = v6;
  v22[3] = @"AverageFrameTime";
  framesCompleted = self->_framesCompleted;
  if (framesCompleted)
  {
    v8 = self->_totalFrameTime / framesCompleted * 1000.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v23[3] = v9;
  v22[4] = @"Process";
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v23[4] = processName;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __21__ADExecutor_dealloc__block_invoke;
  v18 = &unk_278CA1538;
  v13 = v12;
  v19 = v13;
  if ((AnalyticsSendEventLazy() & 1) == 0 && ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = @"com.apple.AppleDepth.ExecutorStatistics";
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed sending event %@ to CoreAnalytics", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = ADExecutor;
  [(ADExecutor *)&v14 dealloc];
}

- (ADExecutor)init
{
  v10.receiver = self;
  v10.super_class = ADExecutor;
  v2 = [(ADExecutor *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277CBF3A0];
    *(v2 + 24) = *(MEMORY[0x277CBF3A0] + 16);
    *(v2 + 8) = v4;
    *(v2 + 16) = 255;
    *(v2 + 10) = 1;
    hasANE = [MEMORY[0x277CEE958] hasANE];
    v6 = 2;
    if (hasANE)
    {
      v6 = 4;
    }

    v3->_engineType = v6;
    v7 = objc_opt_new();
    ownedInferenceBuffers = v3->_ownedInferenceBuffers;
    v3->_ownedInferenceBuffers = v7;
  }

  return v3;
}

@end