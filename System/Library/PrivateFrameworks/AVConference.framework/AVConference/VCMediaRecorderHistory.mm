@interface VCMediaRecorderHistory
+ (id)fileNameForMediaType:(unsigned __int8)type dateString:(id)string;
+ (int)rewriteMovieMetadataWithURL:(id)l transactionID:(id)d;
+ (unsigned)mediaTypeFromWriterMode:(unsigned __int8)mode;
+ (unsigned)writerModeFromMediaType:(unsigned __int8)type;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)setUpStillImageWithContext:(SEL)context visibleRect:(id)rect cameraStatusBit:(CGRect *)bit imageType:(char *)type;
- (BOOL)setUpAudioBuffers;
- (BOOL)setUpDelegateQueue:(id)queue;
- (BOOL)setUpVideoBuffers;
- (VCMediaRecorderHistory)initWithDelegateQueue:(id)queue;
- (id)_getActiveWriters;
- (id)fileExtensionForMediaType:(unsigned __int8)type;
- (id)fileURLWithDirectoryURL:(id)l transactionID:(id)d type:(unsigned __int8)type;
- (id)handleCopyRequestWithTransactionID:(id)d sourceURL:(id)l errorCode:(int *)code;
- (id)writeToFileWithTimestamp:(unsigned int)timestamp transactionID:(id)d directoryURL:(id)l imageType:(int)type;
- (id)writeToLivePhotoToFileWithFrame:(__CVBuffer *)frame transactionID:(id)d directoryURL:(id)l imageType:(int)type cameraStatusBits:(unsigned __int8)bits;
- (int)imageType;
- (int)videoCodec;
- (unsigned)_mediaTypeForBuffer:(id)buffer;
- (void)appendSampleWithWriter:(id)writer buffer:(id)buffer sample:(opaqueCMSampleBuffer *)sample mediaType:(unsigned __int8)type;
- (void)cancelRequestWithTransactionID:(id)d;
- (void)cleanupTransferSession;
- (void)dealloc;
- (void)dispatchedFinishWritingAllRequests;
- (void)dispatchedStartRecordingWithContext:(id)context fileURL:(id)l completionHandler:(id)handler;
- (void)endRecording:(id)recording timestamp:(unsigned int)timestamp completionHandler:(id)handler;
- (void)flushHistoryBuffers;
- (void)handlePendingRequestSuccessWithSourceURL:(id)l;
- (void)handlePendingRequestWithError:(id)error;
- (void)handlePendingRequestsWithSourceURL:(id)l error:(id)error;
- (void)handleSinglePendingRequestWithTransactionID:(id)d sourceURL:(id)l;
- (void)historyBuffer:(id)buffer didDequeueSample:(opaqueCMSampleBuffer *)sample timestamp:(unsigned int)timestamp;
- (void)invokeStartCompletionHandler:(id)handler withErrorCode:(int)code ontoRecordingQueue:(BOOL)queue;
- (void)registerDirectoryWithURL:(id)l;
- (void)setCompletionHandler:(id)handler forTransactionID:(id)d;
- (void)setFrameRate:(float)rate;
- (void)setImageType:(int)type;
- (void)setUpAudioBuffers;
- (void)setUpCaptureFormatForWriter:(id)writer atTimestamp:(unsigned int)timestamp;
- (void)setUpVideoBuffers;
- (void)setUpWriterWithContext:(id)context fileURL:(id)l stillImageTime:(id *)time visibleRect:(CGRect)rect cameraStatusBit:(unsigned __int8)bit;
- (void)setVideoCodec:(int)codec;
- (void)setupResizingSessionsWithVisibleRect:(CGRect)rect cameraStatusBit:(unsigned __int8)bit;
- (void)startRecordingWithContext:(id)context completionHandler:(id)handler;
- (void)stopProcessingTransactionID:(id)d;
- (void)takeLivePhotoWithContext:(id)context completionHandler:(id)handler;
- (void)takePhotoWithContext:(id)context completionHandler:(id)handler;
@end

@implementation VCMediaRecorderHistory

- (BOOL)setUpDelegateQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
    self->_delegateQueue = queue;
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaRecorderHistory.delegateQueue", 0, CustomRootQueue);
    self->_delegateQueue = v6;
    if (!v6)
    {
      [VCMediaRecorderHistory setUpDelegateQueue:?];
      return v8;
    }
  }

  return 1;
}

- (BOOL)setUpAudioBuffers
{
  if (VCDefaults_GetManagedBoolValueForKey(@"enableLocalVideoRecording", 0))
  {
    v3 = 45;
  }

  else
  {
    v3 = 75;
  }

  v4 = [[VCMediaRecorderHistoryBuffer alloc] initWithDelegate:self bufferLength:v3];
  self->_localAudioBuffer = v4;
  if (v4)
  {
    v5 = [[VCMediaRecorderHistoryBuffer alloc] initWithDelegate:self bufferLength:v3];
    self->_remoteAudioBuffer = v5;
    if (v5)
    {
      SampleBufferAllocator = VCAudioBufferList_CreateSampleBufferAllocator();
      self->_audioSampleBufferAllocator = SampleBufferAllocator;
      if (SampleBufferAllocator)
      {
        return 1;
      }

      else
      {
        [VCMediaRecorderHistory setUpAudioBuffers];
        return v8;
      }
    }

    else
    {
      [VCMediaRecorderHistory setUpAudioBuffers];
      return v9;
    }
  }

  else
  {
    [VCMediaRecorderHistory setUpAudioBuffers];
    return v10;
  }
}

- (BOOL)setUpVideoBuffers
{
  self->_frameBuffer = 0;
  v3 = VCMediaRecorderUtil_AllocTransferSession();
  self->_transferSession = v3;
  if (!v3)
  {
    [VCMediaRecorderHistory setUpVideoBuffers];
    return v9;
  }

  v4 = +[VCHardwareSettings retainPixelBufferForMediaRecordingEnabled];
  self->_retainPixelBufferEnabled = v4;
  if (v4)
  {
    VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "com.apple.AVConference.VCMediaRecorderHistory.frameAllocator", &self->_frameAllocator);
    if (!self->_frameAllocator)
    {
      [VCMediaRecorderHistory setUpVideoBuffers];
      return v8;
    }
  }

  else
  {
    v6 = VCMediaRecorderUtil_AllocTransferSession();
    self->_copyTransferSession = v6;
    if (!v6)
    {
      [VCMediaRecorderHistory setUpVideoBuffers];
      return v7;
    }
  }

  return 1;
}

- (VCMediaRecorderHistory)initWithDelegateQueue:(id)queue
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaRecorderHistory;
  v4 = [(VCMediaRecorderHistory *)&v7 init];
  if (!v4)
  {
    goto LABEL_8;
  }

  if (!+[VCHardwareSettings isMediaRecordingSupported])
  {
    [VCMediaRecorderHistory initWithDelegateQueue:];
LABEL_8:

    return 0;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  *(v4 + 1) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaRecorderHistory.recordingQueue", 0, CustomRootQueue);
  if (![v4 setUpDelegateQueue:queue])
  {
    goto LABEL_8;
  }

  *(v4 + 4) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v4 + 10) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v4 + 11) = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (![v4 setUpAudioBuffers] || !objc_msgSend(v4, "setUpVideoBuffers"))
  {
    goto LABEL_8;
  }

  *(v4 + 7) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v4 + 80) = 257;
  *(v4 + 284) = 0x8000000000;
  return v4;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  if (recordingQueue)
  {
    dispatch_release(recordingQueue);
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  self->_pendingRequests = 0;
  self->_masterTransactionID = 0;
  [(VCMediaRecorderHistory *)self cleanupTransferSession];
  targetScreenAttributes = self->_targetScreenAttributes;
  if (targetScreenAttributes)
  {
    CFRelease(targetScreenAttributes);
  }

  audioSampleBufferAllocator = self->_audioSampleBufferAllocator;
  if (audioSampleBufferAllocator)
  {
    CFRelease(audioSampleBufferAllocator);
  }

  figFormat = self->_localFormat.figFormat;
  if (figFormat)
  {
    CFRelease(figFormat);
  }

  v8 = self->_remoteFormat.figFormat;
  if (v8)
  {
    CFRelease(v8);
  }

  frameAllocator = self->_frameAllocator;
  if (frameAllocator)
  {
    CFRelease(frameAllocator);
    self->_frameAllocator = 0;
  }

  v10.receiver = self;
  v10.super_class = VCMediaRecorderHistory;
  [(VCMediaRecorderHistory *)&v10 dealloc];
}

uint64_t __VCMediaRecorderHistory_AddAudioSampleBuffer_block_invoke(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 52))
  {
    v1 = 16;
  }

  VCMediaRecorderHistoryBuffer_UpdateBufferWithSample(*(*(a1 + 32) + v1), *(a1 + 40), *(a1 + 48));

  return FigSampleBufferRelease();
}

uint64_t __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 84);
  v5 = *(a1 + 80);
  v24 = *(a1 + 56);
  v25 = *(a1 + 72);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "_VCMediaRecorderHistory_UpdateVideoBuffer";
        *&buf[22] = 1024;
        v30 = 1185;
        v31 = 1024;
        LODWORD(v32) = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating video buffer for timestamp %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_1();
    }
  }

  if (*(v2 + 280) == 1)
  {
    SampleBufferWithPixelBuffer = FigSampleBufferRetain();
  }

  else
  {
    _VCMediaRecorderHistory_SetVisibleRect(v2, v3);
    *buf = v24;
    *&buf[16] = v25;
    SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(v3, buf);
    if (!SampleBufferWithPixelBuffer)
    {
      __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_2();
      goto LABEL_36;
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigCFDictionarySetInt32())
  {
    __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_3();
  }

  else
  {
    CMSetAttachments(SampleBufferWithPixelBuffer, Mutable, 0);
    VCMediaRecorderHistoryBuffer_UpdateBufferWithSample(*(v2 + 64), SampleBufferWithPixelBuffer, v5);
    if (*(v2 + 161) == 1)
    {
      dispatch_assert_queue_V2(*(v2 + 8));
      if (*(v2 + 160) == 1)
      {
        v11 = *(MEMORY[0x1E695F058] + 16);
        v27 = *MEMORY[0x1E695F058];
        v28 = v11;
        ImageBuffer = CMSampleBufferGetImageBuffer(SampleBufferWithPixelBuffer);
        VideoUtil_GetVisibleRect(ImageBuffer, &v27);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v35[0] = 0;
          v13 = [v2 _getActiveWriters] ? objc_msgSend(objc_msgSend(objc_msgSend(v2, "_getActiveWriters"), "description"), "UTF8String") : "<nil>";
          asprintf(v35, "%s", v13);
          if (v35[0])
          {
            __lasts = 0;
            v14 = strtok_r(v35[0], "\n", &__lasts);
            do
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v15 = VRTraceErrorLogLevelToCSTR();
                v16 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  *&buf[4] = v15;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCMediaRecorderHistory_SetUpWritersWithFirstFrame";
                  *&buf[22] = 1024;
                  v30 = 1292;
                  v31 = 2080;
                  v32 = "_getActiveWriters";
                  v33 = 2080;
                  v34 = v14;
                  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v14 = strtok_r(0, "\n", &__lasts);
            }

            while (v14);
            free(v35[0]);
          }
        }

        v37 = 0u;
        v38 = 0u;
        *v35 = 0u;
        v36 = 0u;
        v17 = [v2 _getActiveWriters];
        v18 = [v17 countByEnumeratingWithState:v35 objects:buf count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v36;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *&v35[1][8 * i];
              if (v22 != *(v2 + 40))
              {
                VCMediaWriterUtil_SetUpWriterWithCaptureFormat(v22, v4, *(v2 + 156), *(v2 + 152), *(v2 + 160), *&v27, *(&v27 + 1), *&v28, *(&v28 + 1));
              }
            }

            v19 = [v17 countByEnumeratingWithState:v35 objects:buf count:16];
          }

          while (v19);
        }
      }

      *(v2 + 161) = 0;
    }
  }

  FigSampleBufferRelease();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_36:
  CVPixelBufferRelease(*(a1 + 40));
  return FigSampleBufferRelease();
}

- (void)setFrameRate:(float)rate
{
  v6 = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCMediaRecorderHistory_setFrameRate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  rateCopy = rate;
  dispatch_async(recordingQueue, block);
}

VCMediaRecorderHistoryBuffer *__39__VCMediaRecorderHistory_setFrameRate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];

  *(*(a1 + 32) + 64) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCMediaRecorderHistory setFrameRate:]_block_invoke";
      v10 = 1024;
      v11 = 356;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d frameRate=%f", &v6, 0x26u);
    }
  }

  result = [[VCMediaRecorderHistoryBuffer alloc] initWithDelegate:*(a1 + 32) bufferLength:((*(a1 + 40) * 3.0) * 0.5)];
  *(*(a1 + 32) + 64) = result;
  return result;
}

- (void)takePhotoWithContext:(id)context completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VCMediaRecorderHistory takePhotoWithContext:completionHandler:]");
  if (context)
  {
    recordingQueue = self->_recordingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke;
    block[3] = &unk_1E85F4CA0;
    block[4] = context;
    block[5] = self;
    block[6] = handler;
    v8 = block;
LABEL_3:
    dispatch_async(recordingQueue, v8);
    return;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCMediaRecorderHistory takePhotoWithContext:completionHandler:]";
        v19 = 1024;
        v20 = 368;
        v21 = 2112;
        v22 = v9;
        v23 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid request context passed", buf, 0x30u);
        if (!handler)
        {
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    if (handler)
    {
      goto LABEL_16;
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_15;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  [VCMediaRecorderHistory takePhotoWithContext:completionHandler:];
  if (handler)
  {
LABEL_16:
    recordingQueue = self->_recordingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_2;
    v12[3] = &unk_1E85F4CF0;
    v12[4] = self;
    v12[5] = handler;
    v13 = -7;
    v8 = v12;
    goto LABEL_3;
  }
}

void __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) writeToFileWithTimestamp:objc_msgSend(*(a1 + 32) transactionID:"timestamp") directoryURL:objc_msgSend(*(a1 + 32) imageType:{"transactionID"), objc_msgSend(*(a1 + 32), "deserializeDirectoryURL"), *(*(a1 + 40) + 164)}];
  if (v2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 3;
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (v3 > VRTraceGetErrorLogLevelForModule())
    {
      goto LABEL_13;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (!v2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v5;
      v22 = 2080;
      v23 = "[VCMediaRecorderHistory takePhotoWithContext:completionHandler:]_block_invoke";
      v24 = 1024;
      v25 = 377;
      v26 = 1024;
      LODWORD(v27) = 1;
      v8 = " [%s] %s:%d photo writing to file success=%{BOOL}d";
      v9 = v6;
      v10 = 34;
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }

LABEL_19:
    v15 = 0;
    goto LABEL_25;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (v3 <= VRTraceGetErrorLogLevelForModule())
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (!v2)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        *buf = 136316418;
        v21 = v11;
        v22 = 2080;
        v23 = "[VCMediaRecorderHistory takePhotoWithContext:completionHandler:]_block_invoke";
        v24 = 1024;
        v25 = 377;
        v26 = 2112;
        v27 = v4;
        v28 = 2048;
        v29 = v16;
        v30 = 1024;
        v31 = 0;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) photo writing to file success=%{BOOL}d", buf, 0x36u);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 136316418;
      v21 = v11;
      v22 = 2080;
      v23 = "[VCMediaRecorderHistory takePhotoWithContext:completionHandler:]_block_invoke";
      v24 = 1024;
      v25 = 377;
      v26 = 2112;
      v27 = v4;
      v28 = 2048;
      v29 = v14;
      v30 = 1024;
      v31 = 1;
      v8 = " [%s] %s:%d %@(%p) photo writing to file success=%{BOOL}d";
      v9 = v12;
      v10 = 54;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v2)
  {
    goto LABEL_19;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-1 userInfo:0];
LABEL_25:
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_20;
    block[3] = &unk_1E85F4C78;
    block[5] = v15;
    block[6] = v17;
    block[4] = v2;
    dispatch_async(v18, block);
  }
}

void __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_3;
  block[3] = &unk_1E85F4CC8;
  block[4] = *(a1 + 40);
  v3 = *(a1 + 48);
  dispatch_async(v1, block);
}

uint64_t __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:*(a1 + 40) userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

- (void)takeLivePhotoWithContext:(id)context completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:]");
  if (context)
  {
    recordingQueue = self->_recordingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke;
    block[3] = &unk_1E85F4CA0;
    block[4] = context;
    block[5] = self;
    block[6] = handler;
    v8 = block;
LABEL_3:
    dispatch_async(recordingQueue, v8);
    return;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:]";
        v19 = 1024;
        v20 = 404;
        v21 = 2112;
        v22 = v9;
        v23 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid request context passed", buf, 0x30u);
        if (!handler)
        {
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    if (handler)
    {
      goto LABEL_16;
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_15;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_15;
  }

  [VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:];
  if (handler)
  {
LABEL_16:
    recordingQueue = self->_recordingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_2;
    v12[3] = &unk_1E85F4CF0;
    v12[4] = self;
    v12[5] = handler;
    v13 = -7;
    v8 = v12;
    goto LABEL_3;
  }
}

void __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transactionID];
  v3 = [*(a1 + 32) deserializeDirectoryURL];
  v4 = [*(a1 + 40) fileURLWithDirectoryURL:v3 transactionID:v2 type:3];
  if (!v3)
  {
    [*(a1 + 40) registerDirectoryWithURL:v4];
  }

  [*(a1 + 40) setCompletionHandler:*(a1 + 48) forTransactionID:v2];
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  memset(v26, 170, sizeof(v26));
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 setUpStillImageWithContext:*(a1 + 32) visibleRect:&v28 cameraStatusBit:&v27 imageType:v5[41]];
    if (v26[12])
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 48);
      if (*(v6 + 40))
      {
        if (!v7)
        {
          if (objc_opt_class() == *(a1 + 40))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_1();
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v8 = [*(a1 + 40) performSelector:sel_logPrefix];
            }

            else
            {
              v8 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v23 = *(a1 + 40);
                *buf = 136316418;
                *&buf[4] = v16;
                *&buf[12] = 2080;
                *&buf[14] = "[VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:]_block_invoke";
                *&buf[22] = 1024;
                v31 = 423;
                v32 = 2112;
                v33 = v8;
                v34 = 2048;
                v35 = v23;
                v36 = 2112;
                v37 = v2;
                _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) masterTransactionID is nil while writer is not nil, this shouldn't be happening, but setting %@ to be masterTransactionID", buf, 0x3Au);
              }
            }
          }

          *(*(a1 + 40) + 48) = [v2 copy];
          v6 = *(a1 + 40);
        }

        [*(v6 + 56) addObject:v2];
        [*(*(a1 + 40) + 40) setDirectoryURL:v3];
      }

      else
      {
        if (v7)
        {
          if (objc_opt_class() == *(a1 + 40))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_2();
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v15 = [*(a1 + 40) performSelector:sel_logPrefix];
            }

            else
            {
              v15 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v24 = *(a1 + 40);
                *buf = 136316162;
                *&buf[4] = v18;
                *&buf[12] = 2080;
                *&buf[14] = "[VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:]_block_invoke";
                *&buf[22] = 1024;
                v31 = 431;
                v32 = 2112;
                v33 = v15;
                v34 = 2048;
                v35 = v24;
                _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) masterTransactionID is not nil, this shouldn't be happening", buf, 0x30u);
              }
            }
          }
        }

        *(*(a1 + 40) + 48) = [v2 copy];
        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        *buf = *v26;
        *&buf[16] = *&v26[16];
        [v20 setUpWriterWithContext:v21 fileURL:v4 stillImageTime:buf visibleRect:v27 cameraStatusBit:{v28, v29}];
      }

      return;
    }
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_3();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        *buf = 136316162;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMediaRecorderHistory takeLivePhotoWithContext:completionHandler:]_block_invoke";
        *&buf[22] = 1024;
        v31 = 442;
        v32 = 2112;
        v33 = v9;
        v34 = 2048;
        v35 = v22;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) still image time is not valid", buf, 0x30u);
      }
    }
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-2 userInfo:0];
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(*(a1 + 40) + 24);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_21;
    v25[3] = &unk_1E85F4D18;
    v25[4] = v12;
    v25[5] = v13;
    dispatch_async(v14, v25);
  }
}

void __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_3;
  block[3] = &unk_1E85F4CC8;
  block[4] = *(a1 + 40);
  v3 = *(a1 + 48);
  dispatch_async(v1, block);
}

uint64_t __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:*(a1 + 40) userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

+ (unsigned)mediaTypeFromWriterMode:(unsigned __int8)mode
{
  if ((mode - 1) >= 4u)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCMediaRecorderHistory mediaTypeFromWriterMode:];
      }
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    return 0x5040203u >> (8 * ((mode - 1) & 0x1F));
  }

  return v3;
}

+ (unsigned)writerModeFromMediaType:(unsigned __int8)type
{
  if ((type - 2) >= 4u)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaRecorderHistory *)v5 writerModeFromMediaType:type, v6];
      }
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    return 0x4030102u >> (8 * ((type - 2) & 0x1F));
  }

  return v3;
}

- (void)invokeStartCompletionHandler:(id)handler withErrorCode:(int)code ontoRecordingQueue:(BOOL)queue
{
  v13 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v8 = __88__VCMediaRecorderHistory_invokeStartCompletionHandler_withErrorCode_ontoRecordingQueue___block_invoke;
    v9 = &unk_1E85F4CF0;
    codeCopy = code;
    selfCopy = self;
    handlerCopy = handler;
    recordingQueue = self->_recordingQueue;
    if (queue)
    {
      dispatch_assert_queue_not_V2(recordingQueue);
      dispatch_async(self->_recordingQueue, v7);
    }

    else
    {
      dispatch_assert_queue_V2(recordingQueue);
      v8(v7);
    }
  }
}

void __88__VCMediaRecorderHistory_invokeStartCompletionHandler_withErrorCode_ontoRecordingQueue___block_invoke(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__VCMediaRecorderHistory_invokeStartCompletionHandler_withErrorCode_ontoRecordingQueue___block_invoke_2;
  block[3] = &unk_1E85F4D18;
  v5 = *(a1 + 40);
  block[4] = v3;
  block[5] = v5;
  dispatch_async(v4, block);
}

- (void)startRecordingWithContext:(id)context completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (!context)
  {
    [VCMediaRecorderHistory startRecordingWithContext:buf completionHandler:?];
LABEL_10:
    [(VCMediaRecorderHistory *)self invokeStartCompletionHandler:handler withErrorCode:*buf ontoRecordingQueue:1];
    return;
  }

  mediaType = [context mediaType];
  if (![VCMediaRecorderHistory isRecordingOnlyMediaType:mediaType])
  {
    [VCMediaRecorderHistory startRecordingWithContext:mediaType completionHandler:buf];
    goto LABEL_10;
  }

  timestamp = [context timestamp];
  transactionID = [context transactionID];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = v10;
      v17 = 2080;
      v18 = "[VCMediaRecorderHistory startRecordingWithContext:completionHandler:]";
      v19 = 1024;
      v20 = 590;
      v21 = 1024;
      v22 = timestamp;
      v23 = 2112;
      v24 = VCMediaRecorderUtil_DescriptionForMediaType(mediaType);
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d timestamp=%d, mediaType=%@", buf, 0x2Cu);
    }
  }

  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCMediaRecorderHistory_startRecordingWithContext_completionHandler___block_invoke;
  block[3] = &unk_1E85F4D40;
  block[4] = context;
  block[5] = self;
  v14 = mediaType;
  block[6] = transactionID;
  block[7] = handler;
  dispatch_async(recordingQueue, block);
}

uint64_t __70__VCMediaRecorderHistory_startRecordingWithContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deserializeDirectoryURL];
  v3 = [*(a1 + 40) fileURLWithDirectoryURL:v2 transactionID:*(a1 + 48) type:*(a1 + 64)];
  if (!v2)
  {
    [*(a1 + 40) registerDirectoryWithURL:v3];
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);

  return [v4 dispatchedStartRecordingWithContext:v5 fileURL:v3 completionHandler:v6];
}

- (void)endRecording:(id)recording timestamp:(unsigned int)timestamp completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCMediaRecorderHistory endRecording:timestamp:completionHandler:]";
      v18 = 1024;
      v19 = 613;
      v20 = 1024;
      timestampCopy = timestamp;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d timestamp=%d", buf, 0x22u);
    }
  }

  recordingQueue = self->_recordingQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__VCMediaRecorderHistory_endRecording_timestamp_completionHandler___block_invoke;
  v12[3] = &unk_1E85F4D68;
  v12[4] = self;
  v12[5] = recording;
  v12[6] = handler;
  timestampCopy2 = timestamp;
  dispatch_async(recordingQueue, v12);
  [(VCMediaRecorderHistory *)self stopProcessingTransactionID:recording];
}

void __67__VCMediaRecorderHistory_endRecording_timestamp_completionHandler___block_invoke(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setCompletionHandler:*(a1 + 48) forTransactionID:*(a1 + 40)];
    v4 = *(a1 + 56);

    [v3 setEndRTPTimestampWithTimestamp:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-5 userInfo:0];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __67__VCMediaRecorderHistory_endRecording_timestamp_completionHandler___block_invoke_cold_1();
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__VCMediaRecorderHistory_endRecording_timestamp_completionHandler___block_invoke_27;
      block[3] = &unk_1E85F4D18;
      block[4] = v5;
      block[5] = v6;
      dispatch_async(v7, block);
    }
  }
}

- (id)_getActiveWriters
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = v3;
  if (self->_writer)
  {
    [v3 addObject:?];
  }

  [v4 addObjectsFromArray:{-[NSMutableDictionary allValues](self->_writers, "allValues")}];
  return v4;
}

- (void)historyBuffer:(id)buffer didDequeueSample:(opaqueCMSampleBuffer *)sample timestamp:(unsigned int)timestamp
{
  v46 = *MEMORY[0x1E69E9840];
  if (!sample)
  {
    [VCMediaRecorderHistory historyBuffer:? didDequeueSample:? timestamp:?];
    return;
  }

  v6 = *&timestamp;
  v9 = [(VCMediaRecorderHistory *)self _mediaTypeForBuffer:?];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      __str = 0;
      v11 = -[VCMediaRecorderHistory _getActiveWriters](self, "_getActiveWriters") ? [objc_msgSend(-[VCMediaRecorderHistory _getActiveWriters](self "_getActiveWriters")] : "<nil>";
      asprintf(&__str, "%s", v11);
      if (__str)
      {
        __lasts = 0;
        v18 = strtok_r(__str, "\n", &__lasts);
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            v21 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v37 = v19;
                v38 = 2080;
                v39 = "[VCMediaRecorderHistory historyBuffer:didDequeueSample:timestamp:]";
                v40 = 1024;
                v41 = 651;
                v42 = 2080;
                v43 = "_getActiveWriters";
                v44 = 2080;
                v45 = v18;
                _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v37 = v19;
              v38 = 2080;
              v39 = "[VCMediaRecorderHistory historyBuffer:didDequeueSample:timestamp:]";
              v40 = 1024;
              v41 = 651;
              v42 = 2080;
              v43 = "_getActiveWriters";
              v44 = 2080;
              v45 = v18;
              _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v18 = strtok_r(0, "\n", &__lasts);
        }

        while (v18);
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      __str = 0;
      uTF8String = [(__CFString *)v10 UTF8String];
      v13 = -[VCMediaRecorderHistory _getActiveWriters](self, "_getActiveWriters") ? [objc_msgSend(-[VCMediaRecorderHistory _getActiveWriters](self "_getActiveWriters")] : "<nil>";
      asprintf(&__str, "%s(%p) %s", uTF8String, self, v13);
      if (__str)
      {
        __lasts = 0;
        v14 = strtok_r(__str, "\n", &__lasts);
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            v17 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v37 = v15;
                v38 = 2080;
                v39 = "[VCMediaRecorderHistory historyBuffer:didDequeueSample:timestamp:]";
                v40 = 1024;
                v41 = 651;
                v42 = 2080;
                v43 = "_getActiveWriters";
                v44 = 2080;
                v45 = v14;
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v37 = v15;
              v38 = 2080;
              v39 = "[VCMediaRecorderHistory historyBuffer:didDequeueSample:timestamp:]";
              v40 = 1024;
              v41 = 651;
              v42 = 2080;
              v43 = "_getActiveWriters";
              v44 = 2080;
              v45 = v14;
              _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v14 = strtok_r(0, "\n", &__lasts);
        }

        while (v14);
LABEL_33:
        free(__str);
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  _getActiveWriters = [(VCMediaRecorderHistory *)self _getActiveWriters];
  v23 = [_getActiveWriters countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(_getActiveWriters);
        }

        v27 = *(*(&v32 + 1) + 8 * i);
        if (self->_localAudioBuffer == buffer && [*(*(&v32 + 1) + 8 * i) shouldFinishWritingSampleBuffer:sample RTPtimeStamp:v6 mediaType:v9])
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __67__VCMediaRecorderHistory_historyBuffer_didDequeueSample_timestamp___block_invoke;
          v28[3] = &unk_1E85F4D90;
          v28[4] = self;
          [v27 finishWritingWithHandler:v28];
        }

        else if ([v27 shouldAppendSampleBuffer:sample RTPtimeStamp:v6 mediaType:v9])
        {
          [(VCMediaRecorderHistory *)self appendSampleWithWriter:v27 buffer:buffer sample:sample mediaType:v9];
        }
      }

      v24 = [_getActiveWriters countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v24);
  }
}

- (void)dispatchedFinishWritingAllRequests
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  _getActiveWriters = [(VCMediaRecorderHistory *)self _getActiveWriters];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v5 = _getActiveWriters ? [objc_msgSend(_getActiveWriters "description")] : "<nil>";
      asprintf(&__str, "%s", v5);
      if (__str)
      {
        __lasts = 0;
        v12 = strtok_r(__str, "\n", &__lasts);
        v13 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v30 = v14;
              v31 = 2080;
              v32 = "[VCMediaRecorderHistory dispatchedFinishWritingAllRequests]";
              v33 = 1024;
              v34 = 669;
              v35 = 2080;
              v36 = "_getActiveWriters";
              v37 = 2080;
              v38 = v12;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v12 = strtok_r(0, "\n", &__lasts);
        }

        while (v12);
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      uTF8String = [(__CFString *)v4 UTF8String];
      v7 = _getActiveWriters ? [objc_msgSend(_getActiveWriters "description")] : "<nil>";
      asprintf(&__str, "%s(%p) %s", uTF8String, self, v7);
      if (__str)
      {
        __lasts = 0;
        v8 = strtok_r(__str, "\n", &__lasts);
        v9 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v30 = v10;
              v31 = 2080;
              v32 = "[VCMediaRecorderHistory dispatchedFinishWritingAllRequests]";
              v33 = 1024;
              v34 = 669;
              v35 = 2080;
              v36 = "_getActiveWriters";
              v37 = 2080;
              v38 = v8;
              _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v8 = strtok_r(0, "\n", &__lasts);
        }

        while (v8);
LABEL_26:
        free(__str);
      }
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [_getActiveWriters countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(_getActiveWriters);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __60__VCMediaRecorderHistory_dispatchedFinishWritingAllRequests__block_invoke;
        v21[3] = &unk_1E85F4D90;
        v21[4] = self;
        [v20 finishWritingWithHandler:v21];
      }

      v17 = [_getActiveWriters countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v17);
  }
}

void __VCMediaRecorderHistory_StopProcessingAllRequests_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) dispatchedFinishWritingAllRequests];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v3;
        v13 = 2080;
        v14 = "VCMediaRecorderHistory_StopProcessingAllRequests_block_invoke";
        v15 = 1024;
        v16 = 685;
        v5 = " [%s] %s:%d Flushing all requests.";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "VCMediaRecorderHistory_StopProcessingAllRequests_block_invoke";
        v15 = 1024;
        v16 = 685;
        v17 = 2112;
        v18 = v2;
        v19 = 2048;
        v20 = v10;
        v5 = " [%s] %s:%d %@(%p) Flushing all requests.";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }
}

void __VCMediaRecorderHistory_ClearHistoryBuffer_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) flushHistoryBuffers];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(*(a1 + 32) + 80) count];
        v13 = 136315906;
        v14 = v3;
        v15 = 2080;
        v16 = "VCMediaRecorderHistory_ClearHistoryBuffer_block_invoke";
        v17 = 1024;
        v18 = 696;
        v19 = 2048;
        v20 = v5;
        v6 = " [%s] %s:%d completionHandlerCount=%lu";
        v7 = v4;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [*(v11 + 80) count];
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "VCMediaRecorderHistory_ClearHistoryBuffer_block_invoke";
        v17 = 1024;
        v18 = 696;
        v19 = 2112;
        v20 = v2;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        v6 = " [%s] %s:%d %@(%p) completionHandlerCount=%lu";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)stopProcessingTransactionID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCMediaRecorderHistory_stopProcessingTransactionID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = d;
  dispatch_async(recordingQueue, block);
}

void __54__VCMediaRecorderHistory_stopProcessingTransactionID___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) flushHistoryBuffers];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (([(__CFString *)v2 finishWritingInvoked]& 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__VCMediaRecorderHistory_stopProcessingTransactionID___block_invoke_2;
    v14[3] = &unk_1E85F4D90;
    v14[4] = *(a1 + 32);
    [(__CFString *)v2 finishWritingWithHandler:v14];
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(*(a1 + 32) + 80) count];
        *buf = 136316162;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCMediaRecorderHistory stopProcessingTransactionID:]_block_invoke";
        v19 = 1024;
        v20 = 714;
        v21 = 2112;
        v22 = v2;
        v23 = 2048;
        v24 = v6;
        v7 = " [%s] %s:%d writer=%@ completionHandlerCount=%lu";
        v8 = v5;
        v9 = 48;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = [*(v12 + 80) count];
        *buf = 136316674;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCMediaRecorderHistory stopProcessingTransactionID:]_block_invoke";
        v19 = 1024;
        v20 = 714;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = v12;
        v25 = 2112;
        v26 = v2;
        v27 = 2048;
        v28 = v13;
        v7 = " [%s] %s:%d %@(%p) writer=%@ completionHandlerCount=%lu";
        v8 = v11;
        v9 = 68;
        goto LABEL_13;
      }
    }
  }
}

- (void)cancelRequestWithTransactionID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCMediaRecorderHistory_cancelRequestWithTransactionID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = d;
  dispatch_sync(recordingQueue, block);
}

uint64_t __57__VCMediaRecorderHistory_cancelRequestWithTransactionID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCMediaRecorderHistory cancelRequestWithTransactionID:]_block_invoke";
        v18 = 1024;
        v19 = 721;
        v20 = 2112;
        v21 = v2;
        v6 = " [%s] %s:%d currentWriter=%@";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 136316418;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCMediaRecorderHistory cancelRequestWithTransactionID:]_block_invoke";
        v18 = 1024;
        v19 = 721;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = v11;
        v24 = 2112;
        v25 = v2;
        v6 = " [%s] %s:%d %@(%p) currentWriter=%@";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__VCMediaRecorderHistory_cancelRequestWithTransactionID___block_invoke_35;
  v13[3] = &unk_1E85F4D90;
  v13[4] = *(a1 + 40);
  return [(__CFString *)v2 finishWritingWithHandler:v13];
}

void __57__VCMediaRecorderHistory_cancelRequestWithTransactionID___block_invoke_35(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCMediaRecorderHistory cancelRequestWithTransactionID:]_block_invoke";
      v9 = 1024;
      v10 = 723;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d , %@", &v5, 0x26u);
    }
  }
}

- (int)imageType
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCMediaRecorderHistory_imageType__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(recordingQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setImageType:(int)type
{
  v6 = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCMediaRecorderHistory_setImageType___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  typeCopy = type;
  dispatch_sync(recordingQueue, block);
}

void __39__VCMediaRecorderHistory_setImageType___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 164);
      v5 = *(a1 + 40);
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCMediaRecorderHistory setImageType:]_block_invoke";
      v10 = 1024;
      v11 = 738;
      v12 = 1024;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting image type from %d to %d", &v6, 0x28u);
    }
  }

  *(*(a1 + 32) + 164) = *(a1 + 40);
}

- (int)videoCodec
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 128;
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCMediaRecorderHistory_videoCodec__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(recordingQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVideoCodec:(int)codec
{
  v6 = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCMediaRecorderHistory_setVideoCodec___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  codecCopy = codec;
  dispatch_sync(recordingQueue, block);
}

void __40__VCMediaRecorderHistory_setVideoCodec___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 288);
      v5 = *(a1 + 40);
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCMediaRecorderHistory setVideoCodec:]_block_invoke";
      v10 = 1024;
      v11 = 753;
      v12 = 1024;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting video codec from %d to %d", &v6, 0x28u);
    }
  }

  *(*(a1 + 32) + 288) = *(a1 + 40);
}

- (id)writeToFileWithTimestamp:(unsigned int)timestamp transactionID:(id)d directoryURL:(id)l imageType:(int)type
{
  v6 = *&type;
  v9 = *&timestamp;
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaRecorderHistory writeToFileWithTimestamp:transactionID:directoryURL:imageType:];
    }
  }

  v11 = [(VCMediaRecorderHistoryBuffer *)self->_frameBuffer getClosestSampleForTimestamp:v9];
  ImageBuffer = CMSampleBufferGetImageBuffer(v11);
  v13 = CVPixelBufferRetain(ImageBuffer);
  valuePtr = 0;
  v14 = CMGetAttachment(v11, @"bCameraStatusBits", 0);
  CFNumberGetValue(v14, kCFNumberSInt8Type, &valuePtr);
  v15 = [VideoUtil convertPixelBuffer:v13 toImageType:v6 withAssetIdentifier:0 cameraStatusBits:valuePtr allowTimeMetaData:0];
  CVPixelBufferRelease(v13);
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaRecorderHistory writeToFileWithTimestamp:transactionID:directoryURL:imageType:];
      }
    }

    return 0;
  }

  v16 = [(VCMediaRecorderHistory *)self fileURLWithDirectoryURL:l transactionID:d type:1];
  if (([v15 writeToURL:v16 atomically:1] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (d)
        {
          v19 = [objc_msgSend(d "description")];
        }

        else
        {
          v19 = "<nil>";
        }

        *buf = 136316162;
        v23 = v17;
        v24 = 2080;
        v25 = "[VCMediaRecorderHistory writeToFileWithTimestamp:transactionID:directoryURL:imageType:]";
        v26 = 1024;
        v27 = 784;
        v28 = 2080;
        v29 = v19;
        v30 = 1024;
        v31 = v9;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d write to file failed url is nil for transationID %s, timestamp %d", buf, 0x2Cu);
      }
    }

    return 0;
  }

  return v16;
}

- (id)writeToLivePhotoToFileWithFrame:(__CVBuffer *)frame transactionID:(id)d directoryURL:(id)l imageType:(int)type cameraStatusBits:(unsigned __int8)bits
{
  bitsCopy = bits;
  v8 = *&type;
  v44 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  Width = CVPixelBufferGetWidth(frame);
  Height = CVPixelBufferGetHeight(frame);
  v15 = self->_bufferPoolResolution.width == Width && self->_bufferPoolResolution.height == Height;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      resize = self->_resize;
      *v32 = 136316162;
      *&v32[4] = v16;
      v33 = 2080;
      v34 = "[VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:]";
      v35 = 1024;
      v36 = 804;
      v37 = 1024;
      *v38 = resize;
      *&v38[4] = 1024;
      *&v38[6] = v15;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _resize=%d framesMatchLivePhotoResolution=%d", v32, 0x28u);
    }
  }

  v19 = v15 | ~self->_resize;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v19)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136316162;
        *&v32[4] = v21;
        v33 = 2080;
        v34 = "[VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:]";
        v35 = 1024;
        v36 = 810;
        v37 = 2048;
        *v38 = Width;
        *&v38[8] = 2048;
        v39 = Height;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping Live Photo crop for input frame (%fx%f)", v32, 0x30u);
      }
    }

    ResizeFrame = CVBufferRetain(frame);
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_bufferPoolResolution.width;
        v27 = self->_bufferPoolResolution.height;
        *v32 = 136316674;
        *&v32[4] = v24;
        v33 = 2080;
        v34 = "[VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:]";
        v35 = 1024;
        v36 = 806;
        v37 = 2048;
        *v38 = Width;
        *&v38[8] = 2048;
        v39 = Height;
        v40 = 2048;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cropping input frame (%fx%f) to Live Photo resolution (%fx%f)", v32, 0x44u);
      }
    }

    ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(frame, self->_transferSession, self->_bufferPool);
    if (!ResizeFrame)
    {
      [VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:v32 transactionID:? directoryURL:? imageType:? cameraStatusBits:?];
      return *v32;
    }
  }

  v28 = [VideoUtil convertPixelBuffer:ResizeFrame toImageType:v8 withAssetIdentifier:d cameraStatusBits:bitsCopy allowTimeMetaData:0];
  v29 = [(VCMediaRecorderHistory *)self fileURLWithDirectoryURL:l transactionID:d type:1];
  v30 = [v28 writeToURL:v29 atomically:1];
  CVPixelBufferRelease(ResizeFrame);
  if ((v30 & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:];
      }
    }

    return 0;
  }

  return v29;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)setUpStillImageWithContext:(SEL)context visibleRect:(id)rect cameraStatusBit:(CGRect *)bit imageType:(char *)type
{
  v7 = *&a7;
  v40 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  timestamp = [rect timestamp];
  transactionID = [rect transactionID];
  v15 = [(VCMediaRecorderHistoryBuffer *)self->_frameBuffer getClosestSampleForTimestamp:timestamp];
  *retstr = **&MEMORY[0x1E6960C70];
  v16 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:transactionID];
  if (v15)
  {
    v17 = FigSampleBufferRetain();
    v18 = CMGetAttachment(v17, @"bCameraStatusBits", 0);
    CFNumberGetValue(v18, kCFNumberSInt8Type, type);
    ImageBuffer = CMSampleBufferGetImageBuffer(v17);
    CVBufferRetain(ImageBuffer);
    VideoUtil_GetVisibleRect(ImageBuffer, bit);
    if (self->_resize)
    {
      [(VCMediaRecorderHistory *)self setupResizingSessionsWithVisibleRect:*type cameraStatusBit:bit->origin.x, bit->origin.y, bit->size.width, bit->size.height];
    }

    v20 = -[VCMediaRecorderHistory writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:](self, "writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:", ImageBuffer, transactionID, [rect deserializeDirectoryURL], v7, *type);
    CVBufferRelease(ImageBuffer);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v31 = v21;
        v32 = 2080;
        v33 = "[VCMediaRecorderHistory setUpStillImageWithContext:visibleRect:cameraStatusBit:imageType:]";
        v34 = 1024;
        v35 = 858;
        v36 = 1024;
        v37 = v20 != 0;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d write to file %d stillImageURL:%@", buf, 0x2Cu);
      }
    }

    if (v20)
    {
      CMSampleBufferGetPresentationTimeStamp(retstr, v17);
      FigSampleBufferRelease();
      return [(NSMutableDictionary *)self->_stillImageURLs setObject:v20 forKeyedSubscript:transactionID];
    }

    else
    {
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-1 userInfo:0];
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91__VCMediaRecorderHistory_setUpStillImageWithContext_visibleRect_cameraStatusBit_imageType___block_invoke;
      block[3] = &unk_1E85F4D18;
      block[4] = v26;
      block[5] = v16;
      dispatch_async(delegateQueue, block);
      return FigSampleBufferRelease();
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaRecorderHistory setUpStillImageWithContext:visibleRect:cameraStatusBit:imageType:];
      }
    }

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-2 userInfo:0];
    v25 = self->_delegateQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__VCMediaRecorderHistory_setUpStillImageWithContext_visibleRect_cameraStatusBit_imageType___block_invoke_36;
    v28[3] = &unk_1E85F4D18;
    v28[4] = v24;
    v28[5] = v16;
    dispatch_async(v25, v28);
  }

  return result;
}

- (void)setupResizingSessionsWithVisibleRect:(CGRect)rect cameraStatusBit:(unsigned __int8)bit
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  p_bufferPool = &self->_bufferPool;
  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
    self->_bufferPool = 0;
    self->_bufferPoolResolution = *MEMORY[0x1E695F060];
  }

  v12 = VCMediaWriterUtil_CalculateImageSizeWithVisibleRect(bit, self->_captureWidth, self->_captureHeight, x, y, width, height);
  v14 = v13;
  if (VCMediaRecorderUtil_SetupBufferPool(@"AVConference:MediaRecorderResize", p_bufferPool, v12, v13))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaRecorderHistory setupResizingSessionsWithVisibleRect:cameraStatusBit:];
      }
    }
  }

  self->_bufferPoolResolution.width = v12;
  self->_bufferPoolResolution.height = v14;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136317186;
      v18 = v15;
      v19 = 2080;
      v20 = "[VCMediaRecorderHistory setupResizingSessionsWithVisibleRect:cameraStatusBit:]";
      v21 = 1024;
      v22 = 893;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v14;
      v27 = 2048;
      v28 = x;
      v29 = 2048;
      v30 = y;
      v31 = 2048;
      v32 = width;
      v33 = 2048;
      v34 = height;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaRecorderHistory visible Width is %f, height %f rect (%f,%f) (%fx%f)", &v17, 0x58u);
    }
  }
}

- (void)setUpWriterWithContext:(id)context fileURL:(id)l stillImageTime:(id *)time visibleRect:(CGRect)rect cameraStatusBit:(unsigned __int8)bit
{
  bitCopy = bit;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  block[6] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  transactionID = [context transactionID];
  v17 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:transactionID];
  v18 = VCMediaWriterUtil_NewWriter(l, transactionID, [VideoUtil videoCodecForPayload:self->_videoCodec], 30.0);
  self->_writer = v18;
  if (v18)
  {
    -[VCMovieWriterProtocol setDirectoryURL:](self->_writer, "setDirectoryURL:", [context deserializeDirectoryURL]);
    if (context)
    {
      [context movieFragmentInterval];
    }

    else
    {
      v25 = 0uLL;
      v26 = 0;
    }

    writer = self->_writer;
    v23 = v25;
    var3 = v26;
    [(VCMovieWriterProtocol *)writer setMovieFragmentInterval:&v23];
    VCMediaWriterUtil_SetUpWriterWithCaptureFormat(self->_writer, bitCopy, self->_captureWidth, self->_captureHeight, self->_resize, x, y, width, height);
    [(VCMovieWriterProtocol *)self->_writer setupWriterWithMode:1];
    v22 = self->_writer;
    v23 = *&time->var0;
    var3 = time->var3;
    [(VCMovieWriterProtocol *)v22 setStillImageTime:&v23];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:-3 userInfo:0];
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__VCMediaRecorderHistory_setUpWriterWithContext_fileURL_stillImageTime_visibleRect_cameraStatusBit___block_invoke;
    block[3] = &unk_1E85F4D18;
    block[4] = v19;
    block[5] = v17;
    dispatch_async(delegateQueue, block);
  }
}

- (id)fileExtensionForMediaType:(unsigned __int8)type
{
  typeCopy = type;
  dispatch_assert_queue_V2(self->_recordingQueue);
  if ((typeCopy - 2) < 4)
  {
    return @"MOV";
  }

  if (typeCopy != 1)
  {
    return 0;
  }

  if (self->_imageType)
  {
    return @"heic";
  }

  return @"JPG";
}

+ (id)fileNameForMediaType:(unsigned __int8)type dateString:(id)string
{
  if (type == 5)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"moments_%@-audio", string, v5];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_recording_%@", VCMediaRecorderUtil_FilePrefixForMediaType(type), string];
  }
}

- (id)fileURLWithDirectoryURL:(id)l transactionID:(id)d type:(unsigned __int8)type
{
  typeCopy = type;
  v37[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!l)
  {
    v10 = MEMORY[0x1E695DFF8];
    v37[0] = NSTemporaryDirectory();
    v37[1] = @"avconference";
    lCopy = [v10 fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v37, 2)}];
  }

  date = [MEMORY[0x1E695DF00] date];
  v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v12 setDateFormat:@"MM_dd_HH_mm_ss"];
  [v12 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "localeWithLocaleIdentifier:", @"en_US_POSIX"}];
  v13 = [v12 stringFromDate:date];

  v14 = [(VCMediaRecorderHistory *)self fileExtensionForMediaType:typeCopy];
  if (!l)
  {
    lCopy = [lCopy URLByAppendingPathComponent:d];
    [objc_msgSend(objc_msgSend(lCopy "URLByStandardizingPath")];
    VCDiskUtils_CreateDirectory();
  }

  v15 = [objc_msgSend(lCopy URLByAppendingPathComponent:{+[VCMediaRecorderHistory fileNameForMediaType:dateString:](VCMediaRecorderHistory, "fileNameForMediaType:dateString:", typeCopy, v13)), "URLByAppendingPathExtension:", v14}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315906;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCMediaRecorderHistory fileURLWithDirectoryURL:transactionID:type:]";
        v29 = 1024;
        v30 = 978;
        v31 = 2112;
        v32 = v15;
        v19 = " [%s] %s:%d filePath=%@";
        v20 = v18;
        v21 = 38;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316418;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCMediaRecorderHistory fileURLWithDirectoryURL:transactionID:type:]";
        v29 = 1024;
        v30 = 978;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        selfCopy = self;
        v35 = 2112;
        v36 = v15;
        v19 = " [%s] %s:%d %@(%p) filePath=%@";
        v20 = v23;
        v21 = 58;
        goto LABEL_15;
      }
    }
  }

  return v15;
}

+ (int)rewriteMovieMetadataWithURL:(id)l transactionID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v6;
      v19 = 2080;
      v20 = "+[VCMediaRecorderHistory rewriteMovieMetadataWithURL:transactionID:]";
      v21 = 1024;
      v22 = 986;
      v23 = 2112;
      dCopy = d;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d for %@", &v17, 0x26u);
    }
  }

  MetaDataArrayWithIndentifier = VCMediaWriterUtil_GetMetaDataArrayWithIndentifier(d);
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], MetaDataArrayWithIndentifier, 1uLL);
  ValueAtIndex = CFArrayGetValueAtIndex(DeepCopy, 0);
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6971F90]);
  CFArrayGetValueAtIndex(Value, 0);
  FigCFDictionarySetValue();
  v12 = FigMetadataRewriterDictionaryCreateFromFigMetadataPropertyArray();
  v13 = FigRewriteMetadata();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316418;
      v18 = v14;
      v19 = 2080;
      v20 = "+[VCMediaRecorderHistory rewriteMovieMetadataWithURL:transactionID:]";
      v21 = 1024;
      v22 = 994;
      v23 = 2112;
      dCopy = v12;
      v25 = 2112;
      dCopy2 = d;
      v27 = 2112;
      lCopy = l;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d rewriteMovieMetadata %@ for transactionID %@ with URL %@", &v17, 0x3Au);
    }
  }

  if (DeepCopy)
  {
    CFRelease(DeepCopy);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCMediaRecorderHistory rewriteMovieMetadataWithURL:transactionID:];
      }
    }
  }

  return v13;
}

- (id)handleCopyRequestWithTransactionID:(id)d sourceURL:(id)l errorCode:(int *)code
{
  v55 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  v40 = 0;
  if ([-[VCMovieWriterProtocol transactionID](self->_writer "transactionID")])
  {
    *code = -7;
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      transactionID = [(VCMovieWriterProtocol *)self->_writer transactionID];
      *buf = 136316674;
      v42 = v29;
      v43 = 2080;
      v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
      v45 = 1024;
      v46 = 1021;
      v47 = 2112;
      dCopy3 = v20;
      v49 = 2048;
      selfCopy5 = self;
      v51 = 2112;
      dCopy4 = d;
      v53 = 2112;
      lCopy2 = transactionID;
      v27 = " [%s] %s:%d %@(%p) Redundant copy - proposed transactionID=%@ matches main writer transactionID=%@";
LABEL_61:
      v28 = v30;
      v34 = 68;
      goto LABEL_62;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    transactionID2 = [(VCMovieWriterProtocol *)self->_writer transactionID];
    *buf = 136316162;
    v42 = v24;
    v43 = 2080;
    v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
    v45 = 1024;
    v46 = 1021;
    v47 = 2112;
    dCopy3 = d;
    v49 = 2112;
    selfCopy5 = transactionID2;
    v27 = " [%s] %s:%d Redundant copy - proposed transactionID=%@ matches main writer transactionID=%@";
    v28 = v25;
    goto LABEL_49;
  }

  v9 = [VCMediaRecorderHistory mediaTypeFromWriterMode:[(VCMovieWriterProtocol *)self->_writer writerMode]];
  if (!v9)
  {
    *code = -10;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v42 = v32;
        v43 = 2080;
        v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
        v45 = 1024;
        v46 = 1024;
        v47 = 2112;
        dCopy3 = v21;
        v49 = 2048;
        selfCopy5 = self;
        v27 = " [%s] %s:%d %@(%p) Failed to retrieve valid mediaType from writerMode";
        v28 = v33;
LABEL_49:
        v34 = 48;
LABEL_62:
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v27, buf, v34);
      }
    }

    return 0;
  }

  v10 = [(VCMediaRecorderHistory *)self fileURLWithDirectoryURL:[(VCMovieWriterProtocol *)self->_writer directoryURL] transactionID:d type:v9];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v42 = v12;
        v43 = 2080;
        v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
        v45 = 1024;
        v46 = 1028;
        v47 = 2112;
        dCopy3 = d;
        v49 = 2112;
        selfCopy5 = l;
        v14 = " [%s] %s:%d copying live photo for transactionID=%@, sourceURL=%@";
        v15 = v13;
        v16 = 48;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v42 = v17;
        v43 = 2080;
        v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
        v45 = 1024;
        v46 = 1028;
        v47 = 2112;
        dCopy3 = v11;
        v49 = 2048;
        selfCopy5 = self;
        v51 = 2112;
        dCopy4 = d;
        v53 = 2112;
        lCopy2 = l;
        v14 = " [%s] %s:%d %@(%p) copying live photo for transactionID=%@, sourceURL=%@";
        v15 = v18;
        v16 = 68;
        goto LABEL_13;
      }
    }
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    *code = -8;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v42 = v35;
        v43 = 2080;
        v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
        v45 = 1024;
        v46 = 1030;
        v47 = 2112;
        dCopy3 = v22;
        v49 = 2048;
        selfCopy5 = self;
        v51 = 2112;
        dCopy4 = v40;
        v27 = " [%s] %s:%d %@(%p) copying file failed with error=%@";
        v28 = v36;
        v34 = 58;
        goto LABEL_62;
      }
    }

    return 0;
  }

  if ([VCMediaRecorderHistory rewriteMovieMetadataWithURL:v10 transactionID:d])
  {
    *code = -9;
    if (v10)
    {
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && !v40)
      {
        return 0;
      }

      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v23 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
        }

        else
        {
          v23 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v39 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136316674;
        v42 = v39;
        v43 = 2080;
        v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
        v45 = 1024;
        v46 = 1040;
        v47 = 2112;
        dCopy3 = v23;
        v49 = 2048;
        selfCopy5 = self;
        v51 = 2112;
        dCopy4 = v10;
        v53 = 2112;
        lCopy2 = v40;
        v27 = " [%s] %s:%d %@(%p) Failed to remove destinationURL=%@ error=%@";
        goto LABEL_61;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      v42 = v37;
      v43 = 2080;
      v44 = "[VCMediaRecorderHistory handleCopyRequestWithTransactionID:sourceURL:errorCode:]";
      v45 = 1024;
      v46 = 1040;
      v47 = 2112;
      dCopy3 = v10;
      v49 = 2112;
      selfCopy5 = v40;
      v27 = " [%s] %s:%d Failed to remove destinationURL=%@ error=%@";
      v28 = v38;
      goto LABEL_49;
    }
  }

  return v10;
}

- (void)handleSinglePendingRequestWithTransactionID:(id)d sourceURL:(id)l
{
  v56 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  v39 = 0;
  v7 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:d];
  if (v7)
  {
    v8 = v7;
    writer = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:d];
    v10 = writer;
    if (!writer)
    {
      writer = self->_writer;
    }

    directoryURL = [(VCMovieWriterProtocol *)writer directoryURL];
    lCopy = l;
    if (!v10)
    {
      lCopy = [(VCMediaRecorderHistory *)self handleCopyRequestWithTransactionID:d sourceURL:l errorCode:&v39];
    }

    v13 = objc_opt_class();
    if (lCopy)
    {
      if (v13 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_18;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v17 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:d];
        *buf = 136316418;
        v41 = v15;
        v42 = 2080;
        v43 = "[VCMediaRecorderHistory handleSinglePendingRequestWithTransactionID:sourceURL:]";
        v44 = 1024;
        v45 = 1069;
        v46 = 2112;
        lCopy2 = lCopy;
        v48 = 2112;
        selfCopy2 = d;
        v50 = 2112;
        lCopy3 = v17;
        v18 = " [%s] %s:%d destinationURL=%@ transactionID=%@ writer=%@";
        v19 = v16;
        v20 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
        }

        else
        {
          v14 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_18;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v23 = [(NSMutableDictionary *)self->_writers objectForKeyedSubscript:d];
        *buf = 136316930;
        v41 = v21;
        v42 = 2080;
        v43 = "[VCMediaRecorderHistory handleSinglePendingRequestWithTransactionID:sourceURL:]";
        v44 = 1024;
        v45 = 1069;
        v46 = 2112;
        lCopy2 = v14;
        v48 = 2048;
        selfCopy2 = self;
        v50 = 2112;
        lCopy3 = lCopy;
        v52 = 2112;
        dCopy4 = d;
        v54 = 2112;
        v55 = v23;
        v18 = " [%s] %s:%d %@(%p) destinationURL=%@ transactionID=%@ writer=%@";
        v19 = v22;
        v20 = 78;
      }

      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_18:
      v24 = [(NSMutableDictionary *)self->_stillImageURLs objectForKeyedSubscript:d];
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__VCMediaRecorderHistory_handleSinglePendingRequestWithTransactionID_sourceURL___block_invoke;
      block[3] = &unk_1E85F4DB8;
      block[4] = v24;
      block[5] = lCopy;
      block[6] = directoryURL;
      block[7] = v8;
      v26 = block;
      goto LABEL_19;
    }

    if (v13 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3 || (v28 = VRTraceErrorLogLevelToCSTR(), v29 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_33:
        if (v39)
        {
          v35 = v39;
        }

        else
        {
          v35 = -7;
        }

        v39 = v35;
        v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderHistory" code:v35 userInfo:0];
        delegateQueue = self->_delegateQueue;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __80__VCMediaRecorderHistory_handleSinglePendingRequestWithTransactionID_sourceURL___block_invoke_2;
        v37[3] = &unk_1E85F4D18;
        v37[4] = v36;
        v37[5] = v8;
        v26 = v37;
LABEL_19:
        dispatch_async(delegateQueue, v26);
        if (!d)
        {
          return;
        }

        goto LABEL_20;
      }

      *buf = 136316162;
      v41 = v28;
      v42 = 2080;
      v43 = "[VCMediaRecorderHistory handleSinglePendingRequestWithTransactionID:sourceURL:]";
      v44 = 1024;
      v45 = 1068;
      v46 = 2112;
      lCopy2 = l;
      v48 = 2112;
      selfCopy2 = d;
      v30 = " [%s] %s:%d Failed to obtain a valid destinationURL for sourceURL=%@ transactionID=%@";
      v31 = v29;
      v32 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_33;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 136316674;
      v41 = v33;
      v42 = 2080;
      v43 = "[VCMediaRecorderHistory handleSinglePendingRequestWithTransactionID:sourceURL:]";
      v44 = 1024;
      v45 = 1068;
      v46 = 2112;
      lCopy2 = v27;
      v48 = 2048;
      selfCopy2 = self;
      v50 = 2112;
      lCopy3 = l;
      v52 = 2112;
      dCopy4 = d;
      v30 = " [%s] %s:%d %@(%p) Failed to obtain a valid destinationURL for sourceURL=%@ transactionID=%@";
      v31 = v34;
      v32 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_33;
  }

  [VCMediaRecorderHistory handleSinglePendingRequestWithTransactionID:d sourceURL:?];
  if (d)
  {
LABEL_20:
    [(NSMutableDictionary *)self->_completionHandlers setObject:0 forKeyedSubscript:d];
    [(NSMutableDictionary *)self->_stillImageURLs setObject:0 forKeyedSubscript:d];
  }
}

void __80__VCMediaRecorderHistory_handleSinglePendingRequestWithTransactionID_sourceURL___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);
}

- (void)handlePendingRequestWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingRequests = self->_pendingRequests;
  v6 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(pendingRequests);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_completionHandlers objectForKeyedSubscript:v10];
        if (v11)
        {
          delegateQueue = self->_delegateQueue;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __56__VCMediaRecorderHistory_handlePendingRequestWithError___block_invoke;
          v13[3] = &unk_1E85F4D18;
          v13[4] = error;
          v13[5] = v11;
          dispatch_async(delegateQueue, v13);
        }

        if (v10)
        {
          [(NSMutableDictionary *)self->_completionHandlers setObject:0 forKeyedSubscript:v10];
          [(NSMutableDictionary *)self->_stillImageURLs setObject:0 forKeyedSubscript:v10];
        }
      }

      v7 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)handlePendingRequestSuccessWithSourceURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pendingRequests = self->_pendingRequests;
  v6 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(pendingRequests);
        }

        [(VCMediaRecorderHistory *)self handleSinglePendingRequestWithTransactionID:*(*(&v11 + 1) + 8 * i) sourceURL:l];
      }

      v7 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)handlePendingRequestsWithSourceURL:(id)l error:(id)error
{
  v5[7] = *MEMORY[0x1E69E9840];
  recordingQueue = self->_recordingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__VCMediaRecorderHistory_handlePendingRequestsWithSourceURL_error___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = error;
  v5[5] = self;
  v5[6] = l;
  dispatch_async(recordingQueue, v5);
}

void __67__VCMediaRecorderHistory_handlePendingRequestsWithSourceURL_error___block_invoke(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 handlePendingRequestWithError:?];
  }

  else
  {
    [v2 handlePendingRequestSuccessWithSourceURL:a1[6]];
  }

  v4 = [*(a1[5] + 80) objectForKeyedSubscript:*(a1[5] + 48)];
  v5 = [*(a1[5] + 88) objectForKeyedSubscript:*(a1[5] + 48)];
  if (v4)
  {
    v6 = v5;
    v7 = [objc_msgSend(*(a1[5] + 32) objectForKeyedSubscript:{*(a1[5] + 48)), "directoryURL"}];
    v8 = *(a1[5] + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCMediaRecorderHistory_handlePendingRequestsWithSourceURL_error___block_invoke_2;
    block[3] = &unk_1E85F4DE0;
    block[7] = v7;
    block[8] = v4;
    v9 = a1[6];
    block[4] = v6;
    block[5] = v9;
    block[6] = a1[4];
    dispatch_async(v8, block);
  }

  v10 = a1[5];
  if (*(v10 + 48))
  {
    [*(v10 + 80) setObject:0 forKeyedSubscript:?];
    [*(a1[5] + 88) setObject:0 forKeyedSubscript:*(a1[5] + 48)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v11 = a1[5];
    v12 = v11[5];
    if (v12)
    {
      v13 = [objc_msgSend(v12 "description")];
      v11 = a1[5];
    }

    else
    {
      v13 = "<nil>";
    }

    v14 = v11[4];
    if (v14)
    {
      v15 = [objc_msgSend(v14 "description")];
      v11 = a1[5];
    }

    else
    {
      v15 = "<nil>";
    }

    v16 = v11[7];
    v17 = v16 ? [objc_msgSend(v16 "description")] : "<nil>";
    asprintf(&__str, "writer=%s writers=%s pendingRequests=%s", v13, v15, v17);
    if (__str)
    {
      __lasts = 0;
      v18 = strtok_r(__str, "\n", &__lasts);
      v19 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v26 = v20;
            v27 = 2080;
            v28 = "[VCMediaRecorderHistory handlePendingRequestsWithSourceURL:error:]_block_invoke";
            v29 = 1024;
            v30 = 1138;
            v31 = 2080;
            v32 = "";
            v33 = 2080;
            v34 = v18;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v18 = strtok_r(0, "\n", &__lasts);
      }

      while (v18);
      free(__str);
    }
  }

  [*(a1[5] + 32) removeAllObjects];
  [*(a1[5] + 56) removeAllObjects];

  *(a1[5] + 40) = 0;
  *(a1[5] + 48) = 0;
}

void __67__VCMediaRecorderHistory_handlePendingRequestsWithSourceURL_error___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 56);
}

- (void)flushHistoryBuffers
{
  v2 = 0;
  v3 = 0;
  v9[3] = *MEMORY[0x1E69E9840];
  localAudioBuffer = self->_localAudioBuffer;
  remoteAudioBuffer = self->_remoteAudioBuffer;
  v9[0] = self->_frameBuffer;
  v9[1] = localAudioBuffer;
  v9[2] = remoteAudioBuffer;
  do
  {
    v6 = VCMediaRecorderHistoryBuffer_DequeueOneFrame(v9[v2]) | v3;
    v7 = v2 == 2;
    v8 = v2 != 2;
    if (v2 == 2)
    {
      v2 = 0;
    }

    else
    {
      ++v2;
    }

    v3 = v8 & v6;
  }

  while (!v7 || (v6 & 1) != 0);
}

- (unsigned)_mediaTypeForBuffer:(id)buffer
{
  if (self->_frameBuffer == buffer)
  {
    return 3;
  }

  if (self->_localAudioBuffer == buffer)
  {
    return 1;
  }

  return 2 * (self->_remoteAudioBuffer == buffer);
}

- (void)appendSampleWithWriter:(id)writer buffer:(id)buffer sample:(opaqueCMSampleBuffer *)sample mediaType:(unsigned __int8)type
{
  typeCopy = type;
  v12 = *MEMORY[0x1E69E9840];
  if (self->_frameBuffer == buffer)
  {
    valuePtr = 0;
    if (sample)
    {
      v9 = CMGetAttachment(sample, @"bCameraStatusBits", 0);
      CFNumberGetValue(v9, kCFNumberSInt8Type, &valuePtr);
      v10 = valuePtr;
    }

    else
    {
      v10 = 0;
    }

    [writer appendVideoSampleBuffer:sample cameraStatus:v10 mediaType:typeCopy];
  }

  else
  {

    [writer appendAudioSampleBuffer:sample mediaType:type];
  }
}

- (void)registerDirectoryWithURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v3URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
  v5 = FigSandboxRegisterDirectoryURL();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (uRLByDeletingLastPathComponent)
      {
        v10 = [objc_msgSend(uRLByDeletingLastPathComponent "description")];
      }

      else
      {
        v10 = "<nil>";
      }

      v15 = 136316162;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCMediaRecorderHistory registerDirectoryWithURL:]";
      v19 = 1024;
      v20 = 1321;
      v21 = 1024;
      v22 = v5;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigSandboxRegisterDirectoryURL returned %d for %s", &v15, 0x2Cu);
    }
  }

  v11 = FigSandboxRegisterDirectoryURL();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v3URLByDeletingLastPathComponent)
      {
        v14 = [objc_msgSend(v3URLByDeletingLastPathComponent "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      v15 = 136316162;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCMediaRecorderHistory registerDirectoryWithURL:]";
      v19 = 1024;
      v20 = 1323;
      v21 = 1024;
      v22 = v11;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigSandboxRegisterDirectoryURL returned %d for %s", &v15, 0x2Cu);
    }
  }
}

- (void)setCompletionHandler:(id)handler forTransactionID:(id)d
{
  v6 = _Block_copy(handler);
  [(NSMutableDictionary *)self->_completionHandlers setObject:v6 forKeyedSubscript:d];

  _Block_release(v6);
}

- (void)cleanupTransferSession
{
  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v4 = self->_transferSession;
    if (v4)
    {
      CFRelease(v4);
      self->_transferSession = 0;
    }
  }

  copyTransferSession = self->_copyTransferSession;
  if (copyTransferSession)
  {
    VTPixelTransferSessionInvalidate(copyTransferSession);
    v6 = self->_copyTransferSession;
    if (v6)
    {
      CFRelease(v6);
      self->_copyTransferSession = 0;
    }
  }

  CVPixelBufferPoolRelease(self->_bufferPool);
  self->_bufferPool = 0;
  self->_bufferPoolResolution = *MEMORY[0x1E695F060];
  CVPixelBufferPoolRelease(self->_copyPool);
  self->_copyPool = 0;
}

- (void)setUpCaptureFormatForWriter:(id)writer atTimestamp:(unsigned int)timestamp
{
  v4 = *&timestamp;
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  v7 = [(VCMediaRecorderHistoryBuffer *)self->_frameBuffer getClosestSampleForTimestamp:v4];
  if (v7)
  {
    v8 = v7;
    valuePtr = 0;
    v9 = CMGetAttachment(v7, @"bCameraStatusBits", 0);
    CFNumberGetValue(v9, kCFNumberSInt8Type, &valuePtr);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *MEMORY[0x1E695F058];
    v13 = v10;
    ImageBuffer = CMSampleBufferGetImageBuffer(v8);
    VideoUtil_GetVisibleRect(ImageBuffer, &v12);
    VCMediaWriterUtil_SetUpWriterWithCaptureFormat(writer, valuePtr, self->_captureWidth, self->_captureHeight, self->_resize, *&v12, *(&v12 + 1), *&v13, *(&v13 + 1));
  }
}

- (void)dispatchedStartRecordingWithContext:(id)context fileURL:(id)l completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordingQueue);
  timestamp = [context timestamp];
  transactionID = [context transactionID];
  v11 = +[VCMediaRecorderHistory writerModeFromMediaType:](VCMediaRecorderHistory, "writerModeFromMediaType:", [context mediaType]);
  if ([(NSMutableDictionary *)self->_writers objectForKeyedSubscript:transactionID])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315906;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      OUTLINED_FUNCTION_16_3();
      v28 = transactionID;
      v18 = " [%s] %s:%d writer for transactionID=%@ exists";
      v19 = v17;
      v20 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCMediaRecorderHistory *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136316418;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      OUTLINED_FUNCTION_16_3();
      v28 = v15;
      v29 = 2048;
      selfCopy = self;
      v31 = v23;
      v32 = transactionID;
      v18 = " [%s] %s:%d %@(%p) writer for transactionID=%@ exists";
      v19 = v22;
      v20 = 58;
    }

    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_18:
    v14 = 4294967292;
    goto LABEL_7;
  }

  v12 = VCMediaWriterUtil_NewWriter(l, transactionID, [VideoUtil videoCodecForPayload:self->_videoCodec], 1.0);
  if (v12)
  {
    v13 = v12;
    [v12 setDirectoryURL:{objc_msgSend(context, "deserializeDirectoryURL")}];
    if (context)
    {
      [context movieFragmentInterval];
    }

    else
    {
      v24 = 0uLL;
      v25 = 0;
    }

    *buf = v24;
    v27 = v25;
    [v13 setMovieFragmentInterval:buf];
    [v13 setupWriterWithMode:v11];
    [v13 setStartRTPTimeStamp:timestamp];
    [(VCMediaRecorderHistory *)self setUpCaptureFormatForWriter:v13 atTimestamp:timestamp];
    [(NSMutableDictionary *)self->_writers setObject:v13 forKeyedSubscript:transactionID];

    [(NSMutableArray *)self->_pendingRequests addObject:transactionID];
    v14 = 0;
  }

  else
  {
    v14 = 4294967293;
  }

LABEL_7:
  [(VCMediaRecorderHistory *)self invokeStartCompletionHandler:handler withErrorCode:v14 ontoRecordingQueue:0];
}

- (void)setUpDelegateQueue:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v6 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate delegateQueue=%@.", &v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpAudioBuffers
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setUpVideoBuffers
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)initWithDelegateQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Updating video buffer for timestamp %d", v1, 0x22u);
}

uint64_t __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  return FigSampleBufferRelease();
}

void __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)takePhotoWithContext:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __65__VCMediaRecorderHistory_takePhotoWithContext_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 377;
  v4 = v0;
  v5 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d photo writing to file success=%{BOOL}d", v2, 0x22u);
}

- (void)takeLivePhotoWithContext:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __69__VCMediaRecorderHistory_takeLivePhotoWithContext_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)mediaTypeFromWriterMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)writerModeFromMediaType:(NSObject *)a3 .cold.1(uint64_t a1, unsigned __int8 a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  VCMediaRecorderUtil_DescriptionForMediaType(a2);
  OUTLINED_FUNCTION_11();
  v7 = v4;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v8 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Passed unexpected mediaType=%@", v6, 0x26u);
}

- (void)startRecordingWithContext:(unsigned __int8)a1 completionHandler:(_DWORD *)a2 .cold.1(unsigned __int8 a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      VCMediaRecorderUtil_DescriptionForMediaType(a1);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *a2 = -6;
}

- (void)startRecordingWithContext:(void *)a1 completionHandler:(_DWORD *)a2 .cold.2(void *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v15 = 584;
    OUTLINED_FUNCTION_11_1();
LABEL_12:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v11;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v16 = v4;
      v17 = 2048;
      v18 = a1;
      v5 = &dword_1DB56E000;
      v8 = " [%s] %s:%d %@(%p) Invalid request context passed";
      v9 = &v13;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = -7;
}

void __67__VCMediaRecorderHistory_endRecording_timestamp_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)historyBuffer:(void *)a1 didDequeueSample:timestamp:.cold.1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v13 = 647;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v9;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v14 = v2;
      v15 = 2048;
      v16 = a1;
      v3 = &dword_1DB56E000;
      v6 = " [%s] %s:%d %@(%p) sample is NULL";
      v7 = &v11;
      v4 = v10;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }
}

- (void)writeToFileWithTimestamp:transactionID:directoryURL:imageType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)writeToFileWithTimestamp:transactionID:directoryURL:imageType:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)writeToLivePhotoToFileWithFrame:(void *)a1 transactionID:directoryURL:imageType:cameraStatusBits:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)writeToLivePhotoToFileWithFrame:transactionID:directoryURL:imageType:cameraStatusBits:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setUpStillImageWithContext:visibleRect:cameraStatusBit:imageType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupResizingSessionsWithVisibleRect:cameraStatusBit:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)rewriteMovieMetadataWithURL:transactionID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)handleCopyRequestWithTransactionID:sourceURL:errorCode:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)handleSinglePendingRequestWithTransactionID:(void *)a1 sourceURL:(__CFString *)a2 .cold.1(void *a1, __CFString *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        v15 = v6;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_29();
        v16 = a2;
        v7 = " [%s] %s:%d handler for transactionID=%@ not found";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v10;
        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_29();
        v16 = v4;
        v17 = 2048;
        v18 = a1;
        v19 = v12;
        v20 = a2;
        v7 = " [%s] %s:%d %@(%p) handler for transactionID=%@ not found";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }
}

@end