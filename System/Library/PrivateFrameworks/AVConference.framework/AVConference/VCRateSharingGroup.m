@interface VCRateSharingGroup
- (BOOL)deregisterRateSharingClient:(id)a3;
- (BOOL)isSharingGroupEmpty;
- (VCRateSharingGroup)init;
- (VCRateSharingGroup)initWithIdentifier:(id)a3 useMediaQueue:(BOOL)a4;
- (int)createMediaQueueWithIdentifier:(id)a3;
- (int)registerRateSharingClient:(id)a3 forInterfaceType:(unsigned int)a4;
- (unsigned)calculateMaxTargetBitrate;
- (unsigned)countRateControllersForInterfaceType:(id)a3;
- (void)dealloc;
- (void)handleMediaQueueSizeExceedThresholdWithQueueSize:(double)a3 mediaQueueStreamId:(unsigned int)a4 type:(int)a5;
- (void)setTargetBitrate:(unsigned int)a3 fromRateSharingClient:(id)a4;
- (void)setVCMediaQueuePeakBitrateAndMaxTargetBitrate:(unsigned int)a3;
- (void)updateShareProfileForInterfaceType:(id)a3;
@end

@implementation VCRateSharingGroup

- (VCRateSharingGroup)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCRateSharingGroup;
  v2 = [(VCObject *)&v7 init];
  if (v2)
  {
    v2->_rateSharingClientMap = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_shareProfileDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_rateSharingClientTargetBitrateDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = objc_alloc_init(VCRateControlShareProfile);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v2->_shareProfileDictionary, "setObject:forKeyedSubscript:", v3, [MEMORY[0x1E696AD98] numberWithUnsignedInt:0]);
    v4 = objc_alloc_init(VCRateControlShareProfile);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v2->_shareProfileDictionary, "setObject:forKeyedSubscript:", v4, [MEMORY[0x1E696AD98] numberWithUnsignedInt:1]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_delegateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCRateSharingGroup.delegateQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (VCRateSharingGroup)initWithIdentifier:(id)a3 useMediaQueue:(BOOL)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [VCRateSharingGroup initWithIdentifier:v9 useMediaQueue:?];
    return v9[0];
  }

  v4 = a4;
  v6 = [(VCRateSharingGroup *)self init];
  v7 = v6;
  if (v6 && v4)
  {
    if (([(VCRateSharingGroup *)v6 createMediaQueueWithIdentifier:a3]& 0x80000000) == 0)
    {
      VCMediaQueue_SetOneToOne(v7->_mediaQueue, 1);
      VCMediaQueue_Start(v7->_mediaQueue);
      return v7;
    }

    [VCRateSharingGroup initWithIdentifier:v7 useMediaQueue:v9];
    return v9[0];
  }

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  VCMediaQueue_Stop(self->_mediaQueue);
  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
  }

  v5.receiver = self;
  v5.super_class = VCRateSharingGroup;
  [(VCObject *)&v5 dealloc];
}

- (BOOL)isSharingGroupEmpty
{
  [(VCObject *)self lock];
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = -[VCRateSharingGroup countRateControllersForInterfaceType:](self, "countRateControllersForInterfaceType:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
    if (v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = v6 == 0;
  [(VCObject *)self unlock];
  return v7;
}

- (void)setVCMediaQueuePeakBitrateAndMaxTargetBitrate:(unsigned int)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_maxBitrate < a3)
  {
    if (!VCMediaQueue_SetPeakBitrate(self->_mediaQueue, a3))
    {
      self->_maxBitrate = a3;
      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          mediaQueue = self->_mediaQueue;
          maxBitrate = self->_maxBitrate;
          v17 = 136316162;
          v18 = v6;
          v19 = 2080;
          v20 = "[VCRateSharingGroup setVCMediaQueuePeakBitrateAndMaxTargetBitrate:]";
          v21 = 1024;
          v22 = 104;
          v23 = 2048;
          v24 = mediaQueue;
          v25 = 1024;
          LODWORD(v26) = maxBitrate;
          v10 = " [%s] %s:%d Peak bitrate set for mediaQueue=%p failed and _maxbitrate=%d did not change";
          v11 = v7;
          v12 = 44;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_mediaQueue;
          v16 = self->_maxBitrate;
          v17 = 136316674;
          v18 = v13;
          v19 = 2080;
          v20 = "[VCRateSharingGroup setVCMediaQueuePeakBitrateAndMaxTargetBitrate:]";
          v21 = 1024;
          v22 = 104;
          v23 = 2112;
          v24 = v5;
          v25 = 2048;
          v26 = self;
          v27 = 2048;
          v28 = v15;
          v29 = 1024;
          v30 = v16;
          v10 = " [%s] %s:%d %@(%p) Peak bitrate set for mediaQueue=%p failed and _maxbitrate=%d did not change";
          v11 = v14;
          v12 = 64;
          goto LABEL_14;
        }
      }
    }
  }
}

- (void)setTargetBitrate:(unsigned int)a3 fromRateSharingClient:(id)a4
{
  if (a4)
  {
    v5 = *&a3;
    [(VCObject *)self lock];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a4];
    -[NSMutableDictionary setObject:forKey:](self->_rateSharingClientTargetBitrateDict, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v5], v7);
    if (self->_maxBitrate != v5)
    {
      [(VCRateSharingGroup *)self setVCMediaQueuePeakBitrateAndMaxTargetBitrate:[(VCRateSharingGroup *)self calculateMaxTargetBitrate]];
    }

    [(VCObject *)self unlock];
  }
}

- (int)createMediaQueueWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 170, sizeof(v12));
  v8 = xmmword_1DBD45B08;
  v9 = unk_1DBD45B18;
  v10 = xmmword_1DBD45B28;
  v11 = unk_1DBD45B38;
  *&v12[24] = [a3 UTF8String];
  v12[32] = [+[VCDefaults sharedInstance](VCDefaults mediaQueueDumpEnabled];
  v6[4] = *v12;
  v6[5] = *&v12[16];
  v6[6] = *&v12[32];
  v7 = *&v12[48];
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  v4 = VCMediaQueue_Create(&self->_mediaQueue, v6);
  if (v4)
  {
    [VCRateSharingGroup createMediaQueueWithIdentifier:?];
  }

  else
  {
    VCMediaQueue_SetMediaQueueSizeThresholdExceededBlock(self->_mediaQueue, self, &__block_literal_global_9);
  }

  return v4;
}

uint64_t __53__VCRateSharingGroup_createMediaQueueWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 handleMediaQueueSizeExceedThresholdWithQueueSize:? mediaQueueStreamId:? type:?];
  }

  return result;
}

- (void)handleMediaQueueSizeExceedThresholdWithQueueSize:(double)a3 mediaQueueStreamId:(unsigned int)a4 type:(int)a5
{
  v36[2] = *MEMORY[0x1E69E9840];
  v9 = objc_opt_class();
  if (a5 == 1)
  {
    if (v9 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v26 = 136316162;
      v27 = v12;
      v28 = 2080;
      v29 = "[VCRateSharingGroup handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
      v30 = 1024;
      v31 = 150;
      v32 = 1024;
      *v33 = a4;
      *&v33[4] = 2048;
      *&v33[6] = a3;
      v14 = " [%s] %s:%d VCMediaQueue size threshold exceeded for mediaQueueStreamId=%u queueSizeInSecond=%f - FLUSHING!";
      v15 = v13;
      v16 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v26 = 136316674;
      v27 = v22;
      v28 = 2080;
      v29 = "[VCRateSharingGroup handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
      v30 = 1024;
      v31 = 150;
      v32 = 2112;
      *v33 = v10;
      *&v33[8] = 2048;
      *&v33[10] = self;
      *&v33[18] = 1024;
      v34 = a4;
      v35 = 2048;
      *v36 = a3;
      v14 = " [%s] %s:%d %@(%p) VCMediaQueue size threshold exceeded for mediaQueueStreamId=%u queueSizeInSecond=%f - FLUSHING!";
      v15 = v23;
      v16 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v26, v16);
LABEL_19:
    VCMediaQueue_FlushPacketsInStream(self->_mediaQueue, a4, 1u);
    return;
  }

  if (v9 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v26 = 136316418;
    v27 = v17;
    v28 = 2080;
    v29 = "[VCRateSharingGroup handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
    v30 = 1024;
    v31 = 154;
    v32 = 1024;
    *v33 = a5;
    *&v33[4] = 1024;
    *&v33[6] = a4;
    *&v33[10] = 2048;
    *&v33[12] = a3;
    v19 = " [%s] %s:%d Should not handle media queue threshold exceeded with type=%d for mediaQueueStreamId=%u queueSize=%f!";
    v20 = v18;
    v21 = 50;
LABEL_25:
    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, &v26, v21);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
  }

  else
  {
    v11 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v26 = 136316930;
      v27 = v24;
      v28 = 2080;
      v29 = "[VCRateSharingGroup handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
      v30 = 1024;
      v31 = 154;
      v32 = 2112;
      *v33 = v11;
      *&v33[8] = 2048;
      *&v33[10] = self;
      *&v33[18] = 1024;
      v34 = a5;
      v35 = 1024;
      LODWORD(v36[0]) = a4;
      WORD2(v36[0]) = 2048;
      *(v36 + 6) = a3;
      v19 = " [%s] %s:%d %@(%p) Should not handle media queue threshold exceeded with type=%d for mediaQueueStreamId=%u queueSize=%f!";
      v20 = v25;
      v21 = 70;
      goto LABEL_25;
    }
  }
}

- (int)registerRateSharingClient:(id)a3 forInterfaceType:(unsigned int)a4
{
  v4 = *&a4;
  v37 = *MEMORY[0x1E69E9840];
  if (a4 < 2)
  {
    ++self->_currentRateSharingClientID;
    [(VCObject *)self lock];
    if (-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]))
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientMap objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v4)), "addObject:", a3}];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{a3, 0}];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_rateSharingClientMap, "setObject:forKeyedSubscript:", v8, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
    }

    -[VCRateSharingGroup updateShareProfileForInterfaceType:](self, "updateShareProfileForInterfaceType:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
    [(VCObject *)self unlock];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentRateSharingClientID;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentRateSharingClientID;
      }

      currentRateSharingClientID = self->_currentRateSharingClientID;
      *buf = 136316418;
      v23 = v10;
      v24 = 2080;
      v25 = "[VCRateSharingGroup registerRateSharingClient:forInterfaceType:]";
      v26 = 1024;
      v27 = 174;
      v28 = 2048;
      v29 = a3;
      v30 = 1024;
      *v31 = currentRateSharingClientID;
      *&v31[4] = 1024;
      *&v31[6] = v4;
      v13 = " [%s] %s:%d Registered rateSharingClient=%p with ID=%d for interface type=%u";
      v14 = v11;
      v15 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return self->_currentRateSharingClientID;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return self->_currentRateSharingClientID;
      }

      v21 = self->_currentRateSharingClientID;
      *buf = 136316930;
      v23 = v19;
      v24 = 2080;
      v25 = "[VCRateSharingGroup registerRateSharingClient:forInterfaceType:]";
      v26 = 1024;
      v27 = 174;
      v28 = 2112;
      v29 = v9;
      v30 = 2048;
      *v31 = self;
      *&v31[8] = 2048;
      v32 = a3;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v4;
      v13 = " [%s] %s:%d %@(%p) Registered rateSharingClient=%p with ID=%d for interface type=%u";
      v14 = v20;
      v15 = 70;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    return self->_currentRateSharingClientID;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRateSharingGroup registerRateSharingClient:forInterfaceType:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v23 = v16;
        v24 = 2080;
        v25 = "[VCRateSharingGroup registerRateSharingClient:forInterfaceType:]";
        v26 = 1024;
        v27 = 161;
        v28 = 2112;
        v29 = v6;
        v30 = 2048;
        *v31 = self;
        *&v31[8] = 1024;
        LODWORD(v32) = v4;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Registering with an invalid interface type=%u", buf, 0x36u);
      }
    }
  }

  return -1;
}

- (void)updateShareProfileForInterfaceType:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(VCRateSharingGroup *)self countRateControllersForInterfaceType:?];
  v6 = [(NSMutableDictionary *)self->_shareProfileDictionary objectForKeyedSubscript:a3];
  v7 = v6;
  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  [v6 setRateSharingCount:v8];
  [v7 setReservedBitrate:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableDictionary *)self->_rateSharingClientMap objectForKeyedSubscript:a3];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __57__VCRateSharingGroup_updateShareProfileForInterfaceType___block_invoke;
        block[3] = &unk_1E85F3E30;
        block[4] = v14;
        block[5] = self;
        block[6] = a3;
        dispatch_async(delegateQueue, block);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v11);
  }
}

uint64_t __57__VCRateSharingGroup_updateShareProfileForInterfaceType___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [objc_msgSend(*(a1[5] + 168) objectForKeyedSubscript:{a1[6]), "copy"}];

  return [v1 setShareProfile:v2];
}

- (unsigned)countRateControllersForInterfaceType:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_rateSharingClientMap objectForKeyedSubscript:?];
  if (v5)
  {
    LODWORD(v5) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientMap objectForKeyedSubscript:{a3), "count"}];
  }

  return v5;
}

- (unsigned)calculateMaxTargetBitrate
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rateSharingClientTargetBitrateDict = self->_rateSharingClientTargetBitrateDict;
  v4 = [(NSMutableDictionary *)rateSharingClientTargetBitrateDict countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(rateSharingClientTargetBitrateDict);
      }

      v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientTargetBitrateDict objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i)), "intValue"}];
      if (v6 <= v9)
      {
        v6 = v9;
      }
    }

    v5 = [(NSMutableDictionary *)rateSharingClientTargetBitrateDict countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v5);
  return v6;
}

- (BOOL)deregisterRateSharingClient:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_rateSharingClientMap;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v45;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v45 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v44 + 1) + 8 * i);
      if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientMap objectForKeyedSubscript:{v10), "containsObject:", a3}])
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a3];
        v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientTargetBitrateDict objectForKeyedSubscript:{v11), "intValue"}];
        [(NSMutableDictionary *)self->_rateSharingClientTargetBitrateDict removeObjectForKey:v11];
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_rateSharingClientMap objectForKeyedSubscript:{v10), "removeObject:", a3}];
        if (v12 == self->_maxBitrate)
        {
          [(VCRateSharingGroup *)self setVCMediaQueuePeakBitrateAndMaxTargetBitrate:[(VCRateSharingGroup *)self calculateMaxTargetBitrate]];
        }

        [(VCRateSharingGroup *)self updateShareProfileForInterfaceType:v10];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v10 unsignedIntValue];
              *buf = 136316162;
              v30 = v20;
              v31 = 2080;
              v32 = "[VCRateSharingGroup deregisterRateSharingClient:]";
              v33 = 1024;
              v34 = 226;
              v35 = 2048;
              v36 = a3;
              v37 = 1024;
              LODWORD(v38) = v22;
              v17 = v21;
              v18 = " [%s] %s:%d De-registered rateSharingClient=%p for interface type=%u";
              v19 = 44;
LABEL_18:
              _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
            }
          }
        }

        else
        {
          v13 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v13 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v10 unsignedIntValue];
              *buf = 136316674;
              v30 = v14;
              v31 = 2080;
              v32 = "[VCRateSharingGroup deregisterRateSharingClient:]";
              v33 = 1024;
              v34 = 226;
              v35 = 2112;
              v36 = v13;
              v37 = 2048;
              v38 = self;
              v39 = 2048;
              v40 = a3;
              v41 = 1024;
              v42 = v16;
              v17 = v15;
              v18 = " [%s] %s:%d %@(%p) De-registered rateSharingClient=%p for interface type=%u";
              v19 = 64;
              goto LABEL_18;
            }
          }
        }

        v7 = 1;
        continue;
      }
    }

    v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v43 count:16];
  }

  while (v6);
  if (v7)
  {
    v23 = 1;
    goto LABEL_35;
  }

LABEL_24:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRateSharingGroup deregisterRateSharingClient:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v24 = [(VCRateSharingGroup *)self performSelector:sel_logPrefix];
    }

    else
    {
      v24 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v30 = v25;
        v31 = 2080;
        v32 = "[VCRateSharingGroup deregisterRateSharingClient:]";
        v33 = 1024;
        v34 = 230;
        v35 = 2112;
        v36 = v24;
        v37 = 2048;
        v38 = self;
        v39 = 2048;
        v40 = a3;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) De-registering an unregistered rateSharingClient=%p", buf, 0x3Au);
      }
    }
  }

  v23 = 0;
LABEL_35:
  [(VCObject *)self unlock];
  return v23;
}

- (void)initWithIdentifier:(void *)a1 useMediaQueue:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      OUTLINED_FUNCTION_0();
      v7 = 68;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sharing group failed to create VCMediaQueue", &v5, 0x1Cu);
    }
  }

  *a2 = 0;
}

- (void)initWithIdentifier:(uint64_t)a1 useMediaQueue:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 64;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sharing group init failed due to nil identifier", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

- (void)createMediaQueueWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      OUTLINED_FUNCTION_6();
      v7 = 132;
      v8 = 2048;
      v9 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCMediaQueue failed for VCRateSharingGroup=%p", &v4, 0x26u);
    }
  }
}

- (void)registerRateSharingClient:forInterfaceType:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v4 = 161;
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Registering with an invalid interface type=%u", v3, 0x22u);
}

- (void)deregisterRateSharingClient:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 230;
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d De-registering an unregistered rateSharingClient=%p", v2, 0x26u);
}

@end