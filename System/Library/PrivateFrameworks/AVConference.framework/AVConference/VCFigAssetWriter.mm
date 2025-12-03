@interface VCFigAssetWriter
- (BOOL)shouldAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type;
- (BOOL)shouldFinishWritingSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type;
- (OpaqueVTCompressionSession)compressionSessionWithWidth:(unsigned int)width height:(unsigned int)height;
- (VCFigAssetWriter)initWithOutputURL:(id)l transactionID:(id)d videoCodec:(unsigned int)codec keyFrameIntervalDuration:(double)duration;
- (int)_setupWriter;
- (int)encodeAndAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)trackIDForMediaType:(unsigned __int8)type;
- (int)trackIDForWriterMode:(unsigned __int8)mode;
- (void)_setupWriter;
- (void)appendAudioBufferList:(__CFArray *)list type:(unsigned __int8)type;
- (void)appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer mediaType:(unsigned __int8)type;
- (void)appendEarlyAudioBuffers;
- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer cameraStatus:(unsigned __int8)status mediaType:(unsigned __int8)type;
- (void)collectEarlyAudioBuffer:(opaqueCMSampleBuffer *)buffer type:(unsigned __int8)type;
- (void)dealloc;
- (void)finishWritingWithHandler:(id)handler;
- (void)setMovieFragmentInterval:(id *)interval;
- (void)setStillImageTime:(id *)time;
- (void)setStillImageTimeInternal;
- (void)setupLivePhotoStillImageCameraStatusBit:(unsigned __int8)bit resize:(BOOL)resize imageSize:(CGSize)size;
- (void)writeIdentifierMetadata:(id)metadata;
@end

@implementation VCFigAssetWriter

- (VCFigAssetWriter)initWithOutputURL:(id)l transactionID:(id)d videoCodec:(unsigned int)codec keyFrameIntervalDuration:(double)duration
{
  v37 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = VCFigAssetWriter;
  v10 = [(VCObject *)&v28 init];
  if (!v10)
  {
    return v10;
  }

  if (!l)
  {
    [VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:];
    goto LABEL_15;
  }

  *(v10 + 26) = [l copy];
  if (!d)
  {
    [VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:];
    goto LABEL_15;
  }

  *(v10 + 25) = [d copy];
  v11 = MEMORY[0x1E6960C70];
  v27 = *MEMORY[0x1E6960C70];
  *(v10 + 11) = *MEMORY[0x1E6960C70];
  v12 = *(v11 + 16);
  *(v10 + 24) = v12;
  *(v10 + 56) = 0;
  *(v10 + 55) = 0;
  *(v10 + 54) = 0;
  v13 = FigSandboxRegisterURLWithProcess();
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 7;
  }

  if (v14 > VRTraceGetErrorLogLevelForModule())
  {
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_15:

    return 0;
  }

  v19 = VRTraceErrorLogLevelToCSTR();
  v20 = *MEMORY[0x1E6986650];
  v21 = *MEMORY[0x1E6986650];
  if (v13)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v10 + 26);
      if (v25)
      {
        v26 = [objc_msgSend(v25 "description")];
      }

      else
      {
        v26 = "<nil>";
      }

      *buf = 136316162;
      v30 = v19;
      v31 = 2080;
      v32 = "[VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:]";
      v33 = 1024;
      v34 = 88;
      v35 = 1024;
      *v36 = v13;
      *&v36[4] = 2080;
      *&v36[6] = v26;
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d FigSandboxRegisterURLWithProcess returned err=%d for outputURL=%s", buf, 0x2Cu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v10 + 26);
    if (v23)
    {
      v24 = [objc_msgSend(v23 "description")];
    }

    else
    {
      v24 = "<nil>";
    }

    *buf = 136316162;
    v30 = v19;
    v31 = 2080;
    v32 = "[VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:]";
    v33 = 1024;
    v34 = 88;
    v35 = 1024;
    *v36 = 0;
    *&v36[4] = 2080;
    *&v36[6] = v24;
    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigSandboxRegisterURLWithProcess returned err=%d for outputURL=%s", buf, 0x2Cu);
  }

LABEL_9:
  v10[256] = 2;
  *(v10 + 65) = 0;
  *(v10 + 66) = 0;
  *(v10 + 81) = 0;
  v10[257] = 0;
  *(v10 + 80) = codec;
  *(v10 + 41) = duration;
  *(v10 + 45) = v12;
  *(v10 + 344) = v27;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v10 + 34) = Mutable;
  if (!Mutable)
  {
    [VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:];
    goto LABEL_15;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCFigAssetWriter-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = FourccToCStr(*(v10 + 80));
      *buf = 136316162;
      v30 = v16;
      v31 = 2080;
      v32 = "[VCFigAssetWriter initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:]";
      v33 = 1024;
      v34 = 102;
      v35 = 2048;
      *v36 = v10;
      *&v36[8] = 2080;
      *&v36[10] = v18;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCFigAssetWriter-init (%p) codec=%s", buf, 0x30u);
    }
  }

  return v10;
}

- (int)_setupWriter
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6971580], *MEMORY[0x1E695E4D0]);
  CFRunLoopGetCurrent();
  v6 = FigAssetWriterCreateWithURL();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    [(VCFigAssetWriter *)ErrorLogLevelForModule _setupWriter];
    goto LABEL_48;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      outputURL = self->_outputURL;
      if (outputURL)
      {
        v11 = [-[NSURL description](outputURL "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      LODWORD(buf.value) = 136315906;
      *(&buf.value + 4) = v8;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "[VCFigAssetWriter _setupWriter]";
      HIWORD(buf.epoch) = 1024;
      v42 = 127;
      v43 = 2080;
      v44 = *&v11;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d created FigAssetWriter for outputPath=%s", &buf, 0x26u);
    }
  }

  p_movieFragmentInterval = &self->_movieFragmentInterval;
  if (self->_movieFragmentInterval.flags)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *&buf.value = *&p_movieFragmentInterval->value;
        buf.epoch = self->_movieFragmentInterval.epoch;
        Seconds = CMTimeGetSeconds(&buf);
        LODWORD(buf.value) = 136315906;
        *(&buf.value + 4) = v13;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "[VCFigAssetWriter _setupWriter]";
        HIWORD(buf.epoch) = 1024;
        v42 = 131;
        v43 = 2048;
        v44 = Seconds;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting movieFragmentInterval=%f", &buf, 0x26u);
      }
    }

    *&buf.value = *&p_movieFragmentInterval->value;
    buf.epoch = self->_movieFragmentInterval.epoch;
    v16 = CMTimeCopyAsDictionary(&buf, v4);
    assetWriter = self->_assetWriter;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v18)
    {
      v19 = v18(assetWriter, *MEMORY[0x1E6971C18], v16);
      if (!v16)
      {
LABEL_17:
        if (v19)
        {
          [VCFigAssetWriter _setupWriter];
          goto LABEL_48;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v19 = -12782;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v16);
    goto LABEL_17;
  }

LABEL_18:
  if (VCMediaWriterUtil_IsMediaExpected(1, self->_writerMode))
  {
    v20 = self->_assetWriter;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v21 || v21(v20, *MEMORY[0x1E6971678], 0, &self->_localAudioTrackID))
    {
      [VCFigAssetWriter _setupWriter];
      goto LABEL_48;
    }

    [v3 appendFormat:@"localAudioTrackID=%d", self->_localAudioTrackID];
  }

  if (VCMediaWriterUtil_IsMediaExpected(2, self->_writerMode))
  {
    v22 = self->_assetWriter;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v23 || v23(v22, *MEMORY[0x1E6971678], 0, &self->_remoteAudioTrackID))
    {
      [VCFigAssetWriter _setupWriter];
      goto LABEL_48;
    }

    v24 = [v3 length];
    v25 = @", ";
    if (!v24)
    {
      v25 = &stru_1F570E008;
    }

    [v3 appendFormat:@"%@remoteAudioTrackID=%d", v25, self->_remoteAudioTrackID];
  }

  if (self->_writerMode - 1 <= 1)
  {
    v26 = self->_assetWriter;
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v27 || v27(v26, 1835365473, &self->_metadataTrackID))
    {
      [VCFigAssetWriter _setupWriter];
    }

    else
    {
      v28 = self->_assetWriter;
      metadataTrackID = self->_metadataTrackID;
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v30 || v30(v28, metadataTrackID, *MEMORY[0x1E6971D78], &unk_1F579BE80))
      {
        [VCFigAssetWriter _setupWriter];
      }

      else
      {
        v31 = self->_assetWriter;
        v32 = self->_metadataTrackID;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v33 || v33(v31, v32, *MEMORY[0x1E6971D38], *MEMORY[0x1E695E4C0]))
        {
          [VCFigAssetWriter _setupWriter];
        }

        else
        {
          [(VCFigAssetWriter *)self writeIdentifierMetadata:self->_transactionID];
          v34 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
          self->_earlyRemoteAudioBuffers = v34;
          if (v34)
          {
            v35 = [v3 length];
            v36 = @", ";
            if (!v35)
            {
              v36 = &stru_1F570E008;
            }

            [v3 appendFormat:@"%@metadataTrackID=%d", v36, self->_metadataTrackID];
            goto LABEL_39;
          }

          [(VCFigAssetWriter *)&buf _setupWriter];
        }
      }
    }

LABEL_48:
    value = buf.value;
    goto LABEL_49;
  }

LABEL_39:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315906;
      *(&buf.value + 4) = v37;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "[VCFigAssetWriter _setupWriter]";
      HIWORD(buf.epoch) = 1024;
      v42 = 162;
      v43 = 2112;
      v44 = *&v3;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", &buf, 0x26u);
    }
  }

  value = 0;
LABEL_49:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  [(VCFigAssetWriter *)self finishWritingWithHandler:0];

  earlyLocalAudioBuffers = self->_earlyLocalAudioBuffers;
  if (earlyLocalAudioBuffers)
  {
    CFRelease(earlyLocalAudioBuffers);
  }

  earlyRemoteAudioBuffers = self->_earlyRemoteAudioBuffers;
  if (earlyRemoteAudioBuffers)
  {
    CFRelease(earlyRemoteAudioBuffers);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v6 = self->_transferSession;
    if (v6)
    {
      CFRelease(v6);
      self->_transferSession = 0;
    }
  }

  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    VTCompressionSessionInvalidate(compressionSession);
    v8 = self->_compressionSession;
    if (v8)
    {
      CFRelease(v8);
      self->_compressionSession = 0;
    }
  }

  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
    self->_bufferPool = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCFigAssetWriter-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCFigAssetWriter dealloc]";
      v17 = 1024;
      v18 = 190;
      v19 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCFigAssetWriter-dealloc (%p)", buf, 0x26u);
    }
  }

  v12.receiver = self;
  v12.super_class = VCFigAssetWriter;
  [(VCObject *)&v12 dealloc];
}

- (void)setupLivePhotoStillImageCameraStatusBit:(unsigned __int8)bit resize:(BOOL)resize imageSize:(CGSize)size
{
  self->_stillImageCameraStatusBit = bit;
  self->_resize = resize;
  if (resize)
  {
    height = size.height;
    width = size.width;
    self->_transferSession = VCMediaRecorderUtil_AllocTransferSession();

    VCMediaRecorderUtil_SetupBufferPool(@"AVConference:FigAssetWriter", &self->_bufferPool, width, height);
  }
}

- (void)finishWritingWithHandler:(id)handler
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  self->_finishWritingInvoked = 1;
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    v33 = **&MEMORY[0x1E6960C70];
    VTCompressionSessionCompleteFrames(compressionSession, &v33);
    VTCompressionSessionInvalidate(self->_compressionSession);
    v6 = self->_compressionSession;
    if (v6)
    {
      CFRelease(v6);
      self->_compressionSession = 0;
    }
  }

  assetWriter = self->_assetWriter;
  if (!assetWriter)
  {
    goto LABEL_19;
  }

  self->_state = 2;
  [(VCFigAssetWriter *)self setStillImageTimeInternal];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      outputURL = self->_outputURL;
      if (outputURL)
      {
        v11 = [-[NSURL description](outputURL "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      LODWORD(v33.value) = 136315906;
      *(&v33.value + 4) = v8;
      LOWORD(v33.flags) = 2080;
      *(&v33.flags + 2) = "[VCFigAssetWriter finishWritingWithHandler:]";
      HIWORD(v33.epoch) = 1024;
      v34 = 218;
      v35 = 2080;
      *v36 = v11;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d finishWritingWithHandler for path=%s", &v33, 0x26u);
    }
  }

  v12 = self->_assetWriter;
  v13 = [(VCFigAssetWriter *)self trackIDForWriterMode:self->_writerMode];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v14)
  {
    v15 = -12782;
    goto LABEL_25;
  }

  v15 = v14(v12, v13);
  if (v15)
  {
LABEL_25:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v24 = self->_outputURL;
        if (v24)
        {
          v25 = [-[NSURL description](v24 "description")];
        }

        else
        {
          v25 = "<nil>";
        }

        LODWORD(v33.value) = 136316162;
        *(&v33.value + 4) = v22;
        LOWORD(v33.flags) = 2080;
        *(&v33.flags + 2) = "[VCFigAssetWriter finishWritingWithHandler:]";
        HIWORD(v33.epoch) = 1024;
        v34 = 220;
        v35 = 1024;
        *v36 = v15;
        v36[2] = 2080;
        *&v36[3] = v25;
        v32 = " [%s] %s:%d FigAssetWriterMarkEndOfDataForTrack error=%d outputURL=%s";
        goto LABEL_46;
      }
    }

    goto LABEL_47;
  }

  v16 = self->_assetWriter;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v17)
  {
    v18 = v17(v16);
    if (!v18)
    {
      FigBaseObject = FigAssetWriterGetFigBaseObject();
      if (FigBaseObject)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v20)
        {
          v21 = v20(FigBaseObject);
          if (!v21)
          {
            CFRelease(self->_assetWriter);
            self->_assetWriter = 0;
LABEL_19:
            if (handler)
            {
              (*(handler + 2))(handler, self->_outputURL, 0);
            }

            if (assetWriter)
            {
              VCMediaRecorderUtil_PrintMediaURL(self->_outputURL, 7);
            }

            objc_sync_exit(self);
            return;
          }
        }

        else
        {
          v21 = -12782;
        }
      }

      else
      {
        v21 = -12780;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v30 = self->_outputURL;
          if (v30)
          {
            v31 = [-[NSURL description](v30 "description")];
          }

          else
          {
            v31 = "<nil>";
          }

          LODWORD(v33.value) = 136316162;
          *(&v33.value + 4) = v29;
          LOWORD(v33.flags) = 2080;
          *(&v33.flags + 2) = "[VCFigAssetWriter finishWritingWithHandler:]";
          HIWORD(v33.epoch) = 1024;
          v34 = 224;
          v35 = 1024;
          *v36 = v21;
          v36[2] = 2080;
          *&v36[3] = v31;
          v32 = " [%s] %s:%d FigAssetWriterInvalidate error=%d outputURL=%s";
LABEL_46:
          _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v32, &v33, 0x2Cu);
          goto LABEL_47;
        }
      }

      goto LABEL_47;
    }
  }

  else
  {
    v18 = -12782;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v27 = self->_outputURL;
      if (v27)
      {
        v28 = [-[NSURL description](v27 "description")];
      }

      else
      {
        v28 = "<nil>";
      }

      LODWORD(v33.value) = 136316162;
      *(&v33.value + 4) = v26;
      LOWORD(v33.flags) = 2080;
      *(&v33.flags + 2) = "[VCFigAssetWriter finishWritingWithHandler:]";
      HIWORD(v33.epoch) = 1024;
      v34 = 222;
      v35 = 1024;
      *v36 = v18;
      v36[2] = 2080;
      *&v36[3] = v28;
      v32 = " [%s] %s:%d FigAssetWriterFinish error=%d outputURL=%s";
      goto LABEL_46;
    }
  }

LABEL_47:
  objc_sync_exit(self);
  if (handler)
  {
    (*(handler + 2))(handler, 0, [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMovieWriter" code:-1 userInfo:0]);
  }
}

- (int)trackIDForMediaType:(unsigned __int8)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.isa + *off_1E85F9A30[(type - 1)]);
  }
}

- (int)trackIDForWriterMode:(unsigned __int8)mode
{
  if (self->_writerMode - 3 >= 2)
  {
    v3 = &OBJC_IVAR___VCFigAssetWriter__videoTrackID;
  }

  else
  {
    v3 = &OBJC_IVAR___VCFigAssetWriter__localAudioTrackID;
  }

  return *(&self->super.super.isa + *v3);
}

- (BOOL)shouldAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type
{
  v17 = *MEMORY[0x1E69E9840];
  IsMediaExpected = VCMediaWriterUtil_IsMediaExpected(type, self->_writerMode);
  if (IsMediaExpected)
  {
    if (self->_writerMode - 2 > 2)
    {
      if ((self->_startTime.flags & 1) == 0)
      {
        stillImageTime = self->_stillImageTime;
        Seconds = CMTimeGetSeconds(&stillImageTime);
        CMSampleBufferGetPresentationTimeStamp(&stillImageTime, buffer);
        if (Seconds - CMTimeGetSeconds(&stillImageTime) <= 1.0)
        {
LABEL_10:
          LOBYTE(IsMediaExpected) = 1;
          return IsMediaExpected;
        }
      }

      CMSampleBufferGetPresentationTimeStamp(&stillImageTime, buffer);
      v11 = CMTimeGetSeconds(&stillImageTime);
      stillImageTime = self->_startTime;
      LOBYTE(IsMediaExpected) = v11 - CMTimeGetSeconds(&stillImageTime) < 3.0;
    }

    else
    {
      state = self->_state;
      if (state - 1 < 2)
      {
        if (self->_isEndRTPTimestampSet && self->_endRTPTimeStamp < stamp)
        {
LABEL_20:
          LOBYTE(IsMediaExpected) = 0;
          return IsMediaExpected;
        }

        goto LABEL_10;
      }

      if (state)
      {
        goto LABEL_20;
      }

      startRTPTimeStamp = self->_startRTPTimeStamp;
      v13 = stamp - startRTPTimeStamp < 0x7FFFFFFF && stamp < startRTPTimeStamp;
      if (stamp <= startRTPTimeStamp && !v13)
      {
        goto LABEL_20;
      }

      LOBYTE(IsMediaExpected) = 1;
      self->_state = 1;
    }
  }

  return IsMediaExpected;
}

- (BOOL)shouldFinishWritingSampleBuffer:(opaqueCMSampleBuffer *)buffer RTPtimeStamp:(unsigned int)stamp mediaType:(unsigned __int8)type
{
  v16 = *MEMORY[0x1E69E9840];
  IsMediaExpected = VCMediaWriterUtil_IsMediaExpected(type, self->_writerMode);
  if (IsMediaExpected)
  {
    if (self->_writerMode - 2 > 2)
    {
      if (buffer)
      {
        CMSampleBufferGetPresentationTimeStamp(&startTime, buffer);
        Seconds = CMTimeGetSeconds(&startTime);
        startTime = self->_startTime;
        if (Seconds - CMTimeGetSeconds(&startTime) > 3.0)
        {
LABEL_14:
          LOBYTE(IsMediaExpected) = 1;
          return IsMediaExpected;
        }
      }
    }

    else if (self->_state == 1 && self->_isEndRTPTimestampSet)
    {
      endRTPTimeStamp = self->_endRTPTimeStamp;
      v10 = stamp >= endRTPTimeStamp;
      v11 = stamp - endRTPTimeStamp;
      if (v11 != 0 && v10)
      {
        goto LABEL_14;
      }

      if (!v10 && v11 < 0x7FFFFFFF)
      {
        goto LABEL_14;
      }
    }

    LOBYTE(IsMediaExpected) = 0;
  }

  return IsMediaExpected;
}

- (OpaqueVTCompressionSession)compressionSessionWithWidth:(unsigned int)width height:(unsigned int)height
{
  v35[1] = *MEMORY[0x1E69E9840];
  v35[0] = 0;
  valuePtr = width;
  height = height;
  v32 = VCVideoUtil_DefaultCameraCapturePixelFormat();
  codec = self->_codec;
  keyFrameIntervalDuration = self->_keyFrameIntervalDuration;
  if (codec == 1752589105)
  {
    v6 = 3000000;
  }

  else
  {
    v6 = 4000000;
  }

  v30 = v6;
  if (VCDefaults_GetManagedBoolValueForKey(@"enableLocalVideoRecording", 0))
  {
    if (self->_codec == 1752589105)
    {
      v6 = 12000000;
    }

    else
    {
      v6 = 20000000;
    }

    v30 = v6;
  }

  selfCopy = self;
  v28 = 1;
  v29 = v6 >> 3;
  v7 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  v9 = CFNumberCreate(v7, kCFNumberIntType, &height);
  v10 = CFNumberCreate(v7, kCFNumberIntType, &v32);
  v11 = CFNumberCreate(v7, kCFNumberFloat64Type, &keyFrameIntervalDuration);
  propertyValue = CFNumberCreate(v7, kCFNumberIntType, &v30);
  v12 = CFNumberCreate(v7, kCFNumberIntType, &v29);
  v13 = CFNumberCreate(v7, kCFNumberIntType, &v28);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v15 = v12;
  CFArrayAppendValue(Mutable, v12);
  CFArrayAppendValue(Mutable, v13);
  value = v8;
  if (v8)
  {
    v16 = v9;
    if (v9)
    {
      v17 = v11;
      v18 = v10;
      if (v10)
      {
        v19 = theDict;
        if (!v17)
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        if (!propertyValue)
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        if (!v15)
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        if (!v13)
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        if (!Mutable)
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        CFDictionaryAddValue(theDict, *MEMORY[0x1E6966208], value);
        CFDictionaryAddValue(theDict, *MEMORY[0x1E69660B8], v16);
        CFDictionaryAddValue(theDict, *MEMORY[0x1E6966130], v10);
        if (VTCompressionSessionCreate(v7, valuePtr, height, selfCopy->_codec, 0, theDict, 0, 0, 0, v35))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        v20 = *MEMORY[0x1E695E4D0];
        if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69837F0], *MEMORY[0x1E695E4D0]))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
          goto LABEL_37;
        }

        v21 = selfCopy->_codec;
        if (v21 == 1752589105)
        {
          if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69837D0], *MEMORY[0x1E6983FA0]))
          {
            [VCFigAssetWriter compressionSessionWithWidth:height:];
            goto LABEL_37;
          }
        }

        else
        {
          if (v21 != 1635148593)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCFigAssetWriter compressionSessionWithWidth:v23 height:&selfCopy->_codec];
              }
            }

LABEL_37:
            CFRelease(value);
            if (!v16)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983668], *MEMORY[0x1E6983C90]))
          {
            [VCFigAssetWriter compressionSessionWithWidth:height:];
            goto LABEL_37;
          }

          if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69837D0], *MEMORY[0x1E6983F20]))
          {
            [VCFigAssetWriter compressionSessionWithWidth:height:];
            goto LABEL_37;
          }
        }

        if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983530], v20))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983700], v17))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983558], propertyValue))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69835E0], Mutable))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69835B0], *MEMORY[0x1E6965DB8]))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E6983878], *MEMORY[0x1E6965F50]))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        else if (VTSessionSetProperty(v35[0], *MEMORY[0x1E69838B8], *MEMORY[0x1E6965FD0]))
        {
          [VCFigAssetWriter compressionSessionWithWidth:height:];
        }

        goto LABEL_37;
      }

      [VCFigAssetWriter compressionSessionWithWidth:height:];
    }

    else
    {
      [VCFigAssetWriter compressionSessionWithWidth:height:];
      v17 = v11;
      v18 = v10;
    }

    v19 = theDict;
    goto LABEL_37;
  }

  [VCFigAssetWriter compressionSessionWithWidth:height:];
  v17 = v11;
  v16 = v9;
  v18 = v10;
  v19 = theDict;
  if (v16)
  {
LABEL_38:
    CFRelease(v16);
  }

LABEL_39:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (propertyValue)
  {
    CFRelease(propertyValue);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v35[0];
}

- (int)encodeAndAppendSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v17 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  if (!self->_compressionSession)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  if (!self->_assetWriter)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  if (!self->_videoTrackID)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  v6 = ImageBuffer;
  memset(&v16, 170, sizeof(v16));
  CMSampleBufferGetPresentationTimeStamp(&v16, buffer);
  memset(&v15, 170, sizeof(v15));
  CMSampleBufferGetDuration(&v15, buffer);
  compressionSession = self->_compressionSession;
  outputHandler[0] = MEMORY[0x1E69E9820];
  outputHandler[1] = 3221225472;
  outputHandler[2] = __48__VCFigAssetWriter_encodeAndAppendSampleBuffer___block_invoke;
  outputHandler[3] = &unk_1E85F9A10;
  outputHandler[4] = self;
  v13 = 0;
  v14 = v16;
  presentationTimeStamp = v16;
  v10 = v15;
  v8 = VTCompressionSessionEncodeFrameWithOutputHandler(compressionSession, v6, &presentationTimeStamp, &v10, 0, 0, outputHandler);
  result = 0;
  if (v8)
  {
    [VCFigAssetWriter encodeAndAppendSampleBuffer:];
    return presentationTimeStamp.value;
  }

  return result;
}

void __48__VCFigAssetWriter_encodeAndAppendSampleBuffer___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCFigAssetWriter_encodeAndAppendSampleBuffer___block_invoke_cold_1();
      }
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  v8 = *(v6 + 216);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if ((!v9 || v9(v7, v8, a4)) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v14 = *(a1 + 44);
      Seconds = CMTimeGetSeconds(&v14);
      LODWORD(v14.value) = 136316162;
      *(&v14.value + 4) = v10;
      LOWORD(v14.flags) = 2080;
      *(&v14.flags + 2) = "[VCFigAssetWriter encodeAndAppendSampleBuffer:]_block_invoke";
      HIWORD(v14.epoch) = 1024;
      v15 = 448;
      v16 = 1024;
      v17 = v12;
      v18 = 2048;
      v19 = Seconds;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d FigAssetWriterAddSampleBuffer failed with err=%d timestamp=%f", &v14, 0x2Cu);
    }
  }
}

- (void)collectEarlyAudioBuffer:(opaqueCMSampleBuffer *)buffer type:(unsigned __int8)type
{
  if (type == 2)
  {
    earlyRemoteAudioBuffers = self->_earlyRemoteAudioBuffers;
    if (!earlyRemoteAudioBuffers)
    {
      [VCFigAssetWriter collectEarlyAudioBuffer:type:];
      return;
    }

    goto LABEL_6;
  }

  if (type == 1)
  {
    earlyRemoteAudioBuffers = self->_earlyLocalAudioBuffers;
    if (!earlyRemoteAudioBuffers)
    {
      [VCFigAssetWriter collectEarlyAudioBuffer:type:];
      return;
    }

LABEL_6:

    CFArrayAppendValue(earlyRemoteAudioBuffers, buffer);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCFigAssetWriter collectEarlyAudioBuffer:type:];
    }
  }
}

- (void)appendEarlyAudioBuffers
{
  [(VCFigAssetWriter *)self appendAudioBufferList:self->_earlyLocalAudioBuffers type:1];
  earlyRemoteAudioBuffers = self->_earlyRemoteAudioBuffers;

  [(VCFigAssetWriter *)self appendAudioBufferList:earlyRemoteAudioBuffers type:2];
}

- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer cameraStatus:(unsigned __int8)status mediaType:(unsigned __int8)type
{
  v44 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    [VCFigAssetWriter appendVideoSampleBuffer:v43 cameraStatus:? mediaType:?];
    goto LABEL_37;
  }

  statusCopy = status;
  if (self->_writerMode == 1 && self->_stillImageCameraStatusBit != status)
  {
    [VCFigAssetWriter appendVideoSampleBuffer:v43 cameraStatus:? mediaType:?];
    goto LABEL_37;
  }

  if (self->_resize)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    memset(v43, 170, 24);
    CMSampleBufferGetPresentationTimeStamp(v43, buffer);
    ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(ImageBuffer, self->_transferSession, self->_bufferPool);
    v40 = *v43;
    *&v41 = *&v43[16];
    v10 = createSampleBufferWithPixelBuffer(ResizeFrame, &v40);
  }

  else
  {
    v10 = FigSampleBufferRetain();
    ResizeFrame = 0;
  }

  objc_sync_enter(self);
  if (!self->_videoTrackID)
  {
    v20 = CMSampleBufferGetImageBuffer(v10);
    Width = CVPixelBufferGetWidth(v20);
    v22 = CMSampleBufferGetImageBuffer(v10);
    v23 = [(VCFigAssetWriter *)self compressionSessionWithWidth:Width height:CVPixelBufferGetHeight(v22)];
    self->_compressionSession = v23;
    if (!v23)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
        }
      }

      goto LABEL_35;
    }

    assetWriter = self->_assetWriter;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v25 || v25(assetWriter, 1986618469, &self->_videoTrackID))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
        }
      }

      goto LABEL_35;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoTrackID = self->_videoTrackID;
        outputURL = self->_outputURL;
        if (outputURL)
        {
          v30 = [-[NSURL description](outputURL "description")];
        }

        else
        {
          v30 = "<nil>";
        }

        *v43 = 136316162;
        *&v43[4] = v26;
        *&v43[12] = 2080;
        *&v43[14] = "[VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:]";
        *&v43[22] = 1024;
        *&v43[24] = 513;
        *&v43[28] = 1024;
        *&v43[30] = videoTrackID;
        *&v43[34] = 2080;
        *&v43[36] = v30;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added native video trackID=%d for output path=%s", v43, 0x2Cu);
      }
    }

    *&v34 = -1;
    *(&v34 + 1) = -1;
    *&v43[16] = v34;
    *&v43[32] = v34;
    *v43 = v34;
    videoOrientationInRadiansForCameraStatusBits(statusCopy, v43);
    v40 = *v43;
    v41 = *&v43[16];
    v42 = *&v43[32];
    v35 = FigCreate3x3MatrixArrayFromCGAffineTransform();
    if (!v35)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
        }
      }

      goto LABEL_35;
    }

    v36 = self->_assetWriter;
    v37 = self->_videoTrackID;
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    v39 = v38 ? v38(v36, v37, *MEMORY[0x1E6971E20], v35) : -12782;
    CFRelease(v35);
    if (v39)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
        }
      }

      goto LABEL_35;
    }
  }

  p_startTime = &self->_startTime;
  if (self->_startTime.flags)
  {
    goto LABEL_32;
  }

  CMSampleBufferGetPresentationTimeStamp(v43, v10);
  *&p_startTime->value = *v43;
  self->_startTime.epoch = *&v43[16];
  v12 = self->_assetWriter;
  v40 = *&p_startTime->value;
  *&v41 = self->_startTime.epoch;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v13)
  {
    v14 = -12782;
    goto LABEL_23;
  }

  *v43 = v40;
  *&v43[16] = v41;
  v14 = v13(v12, v43);
  if (v14)
  {
LABEL_23:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v40 = *&p_startTime->value;
        *&v41 = self->_startTime.epoch;
        Seconds = CMTimeGetSeconds(&v40);
        *v43 = 136316162;
        *&v43[4] = v31;
        *&v43[12] = 2080;
        *&v43[14] = "[VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:]";
        *&v43[22] = 1024;
        *&v43[24] = 527;
        *&v43[28] = 1024;
        *&v43[30] = v14;
        *&v43[34] = 2048;
        *&v43[36] = Seconds;
        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d FigAssetWriterBeginSession failed with err=%d start time=%f", v43, 0x2Cu);
      }
    }

    goto LABEL_35;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v40 = *&p_startTime->value;
      *&v41 = self->_startTime.epoch;
      v17 = CMTimeGetSeconds(&v40);
      v18 = self->_outputURL;
      if (v18)
      {
        v19 = [-[NSURL description](v18 "description")];
      }

      else
      {
        v19 = "<nil>";
      }

      *v43 = 136316162;
      *&v43[4] = v15;
      *&v43[12] = 2080;
      *&v43[14] = "[VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:]";
      *&v43[22] = 1024;
      *&v43[24] = 528;
      *&v43[28] = 2048;
      *&v43[30] = v17;
      *&v43[38] = 2080;
      *&v43[40] = v19;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigAssetWriterBeginSession start time=%f path=%s", v43, 0x30u);
    }
  }

  [(VCFigAssetWriter *)self appendEarlyAudioBuffers];
LABEL_32:
  if (self->_videoTrackID)
  {
    if (self->_compressionSession)
    {
      if ([(VCFigAssetWriter *)self encodeAndAppendSampleBuffer:v10])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
          }
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCFigAssetWriter appendVideoSampleBuffer:cameraStatus:mediaType:];
    }
  }

LABEL_35:
  objc_sync_exit(self);
  if (ResizeFrame)
  {
    CVPixelBufferRelease(ResizeFrame);
  }

LABEL_37:
  FigSampleBufferRelease();
}

- (void)appendAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer mediaType:(unsigned __int8)type
{
  typeCopy = type;
  v38 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_assetWriter)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCFigAssetWriter appendAudioSampleBuffer:mediaType:];
      }
    }

    goto LABEL_25;
  }

  if (!buffer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCFigAssetWriter appendAudioSampleBuffer:mediaType:];
      }
    }

    goto LABEL_25;
  }

  memset(&v33, 170, sizeof(v33));
  CMSampleBufferGetPresentationTimeStamp(&v33, buffer);
  p_startTime = &self->_startTime;
  if (self->_startTime.flags)
  {
    goto LABEL_12;
  }

  if (!VCMediaWriterUtil_IsAudioOnly(self->_writerMode))
  {
    [(VCFigAssetWriter *)self collectEarlyAudioBuffer:buffer type:typeCopy];
    goto LABEL_12;
  }

  v8 = *&v33.value;
  *&p_startTime->value = *&v33.value;
  epoch = v33.epoch;
  self->_startTime.epoch = v33.epoch;
  assetWriter = self->_assetWriter;
  *&v32.value = v8;
  v32.epoch = epoch;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v11)
  {
    v12 = -12782;
    goto LABEL_23;
  }

  time1 = v32;
  v12 = v11(assetWriter, &time1);
  if (v12)
  {
LABEL_23:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *&v32.value = *&p_startTime->value;
        v32.epoch = self->_startTime.epoch;
        Seconds = CMTimeGetSeconds(&v32);
        LODWORD(time1.value) = 136316162;
        *(&time1.value + 4) = v28;
        LOWORD(time1.flags) = 2080;
        *(&time1.flags + 2) = "[VCFigAssetWriter appendAudioSampleBuffer:mediaType:]";
        HIWORD(time1.epoch) = 1024;
        v35 = 555;
        v36 = 1024;
        *v37 = v12;
        *&v37[4] = 2048;
        *&v37[6] = Seconds;
        v25 = " [%s] %s:%d FigAssetWriterBeginSession failed with err=%d start time=%f";
        v26 = v29;
        v27 = 44;
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *&v32.value = *&p_startTime->value;
      v32.epoch = self->_startTime.epoch;
      v15 = CMTimeGetSeconds(&v32);
      outputURL = self->_outputURL;
      if (outputURL)
      {
        v17 = [-[NSURL description](outputURL "description")];
      }

      else
      {
        v17 = "<nil>";
      }

      LODWORD(time1.value) = 136316162;
      *(&time1.value + 4) = v13;
      LOWORD(time1.flags) = 2080;
      *(&time1.flags + 2) = "[VCFigAssetWriter appendAudioSampleBuffer:mediaType:]";
      HIWORD(time1.epoch) = 1024;
      v35 = 556;
      v36 = 2048;
      *v37 = v15;
      *&v37[8] = 2080;
      *&v37[10] = v17;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FigAssetWriterBeginSession start time=%f path=%s", &time1, 0x30u);
    }
  }

LABEL_12:
  if (self->_startTime.flags)
  {
    *&time1.value = *&p_startTime->value;
    time1.epoch = self->_startTime.epoch;
    v32 = v33;
    if (CMTimeCompare(&time1, &v32) <= 0)
    {
      v18 = [(VCFigAssetWriter *)self trackIDForMediaType:typeCopy];
      if (v18)
      {
        v19 = self->_assetWriter;
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v20)
        {
          v21 = v20(v19, v18, buffer);
          if (!v21)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v21 = -12782;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CMSampleBufferGetPresentationTimeStamp(&v32, buffer);
            v24 = CMTimeGetSeconds(&v32);
            LODWORD(time1.value) = 136316418;
            *(&time1.value + 4) = v22;
            LOWORD(time1.flags) = 2080;
            *(&time1.flags + 2) = "[VCFigAssetWriter appendAudioSampleBuffer:mediaType:]";
            HIWORD(time1.epoch) = 1024;
            v35 = 568;
            v36 = 1024;
            *v37 = v21;
            *&v37[4] = 2048;
            *&v37[6] = v24;
            *&v37[14] = 1024;
            *&v37[16] = typeCopy;
            v25 = " [%s] %s:%d FigAssetWriterAddSampleBuffer failed with err=%d timestamp=%f type=%d";
            v26 = v23;
            v27 = 50;
LABEL_29:
            _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, v25, &time1, v27);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCFigAssetWriter appendAudioSampleBuffer:v31 mediaType:?];
        }
      }
    }
  }

LABEL_25:
  objc_sync_exit(self);
}

- (void)writeIdentifierMetadata:(id)metadata
{
  v20 = *MEMORY[0x1E69E9840];
  if (metadata)
  {
    MetaDataArrayWithIndentifier = VCMediaWriterUtil_GetMetaDataArrayWithIndentifier(metadata);
    assetWriter = self->_assetWriter;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v6 || v6(assetWriter, *MEMORY[0x1E6971C00], MetaDataArrayWithIndentifier))
    {
      [VCFigAssetWriter writeIdentifierMetadata:];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        outputURL = self->_outputURL;
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCFigAssetWriter writeIdentifierMetadata:]";
        v14 = 1024;
        v15 = 581;
        v16 = 2112;
        v17 = MetaDataArrayWithIndentifier;
        v18 = 2112;
        v19 = outputURL;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Wrote metadata for FigAssetWriter %@ with URL %@", &v10, 0x30u);
      }
    }
  }

  else
  {
    [VCFigAssetWriter writeIdentifierMetadata:];
  }
}

- (void)setStillImageTime:(id *)time
{
  v12 = *MEMORY[0x1E69E9840];
  p_stillImageTime = &self->_stillImageTime;
  var3 = time->var3;
  *&self->_stillImageTime.value = *&time->var0;
  self->_stillImageTime.epoch = var3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *p_stillImageTime;
      Seconds = CMTimeGetSeconds(&v8);
      LODWORD(v8.value) = 136315906;
      *(&v8.value + 4) = v5;
      LOWORD(v8.flags) = 2080;
      *(&v8.flags + 2) = "[VCFigAssetWriter setStillImageTime:]";
      HIWORD(v8.epoch) = 1024;
      v9 = 588;
      v10 = 2048;
      v11 = Seconds;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _stillImageTime=%f", &v8, 0x26u);
    }
  }
}

- (void)setMovieFragmentInterval:(id *)interval
{
  var3 = interval->var3;
  *&self->_movieFragmentInterval.value = *&interval->var0;
  self->_movieFragmentInterval.epoch = var3;
}

- (void)appendAudioBufferList:(__CFArray *)list type:(unsigned __int8)type
{
  if (list)
  {
    typeCopy = type;
    if (CFArrayGetCount(list) >= 1)
    {
      v7 = 0;
      do
      {
        [(VCFigAssetWriter *)self appendAudioSampleBuffer:CFArrayGetValueAtIndex(list mediaType:v7++), typeCopy];
      }

      while (v7 < CFArrayGetCount(list));
    }

    CFArrayRemoveAllValues(list);
  }
}

- (void)setStillImageTimeInternal
{
  v20 = *MEMORY[0x1E69E9840];
  stillImageTime = self->_stillImageTime;
  QuickTimeMovieStillImageTimeSampleBuffer = FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(&stillImageTime, 0);
  if (!QuickTimeMovieStillImageTimeSampleBuffer)
  {
    goto LABEL_14;
  }

  assetWriter = self->_assetWriter;
  metadataTrackID = self->_metadataTrackID;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v6)
  {
    v13 = -12782;
    goto LABEL_8;
  }

  v7 = v6(assetWriter, metadataTrackID, QuickTimeMovieStillImageTimeSampleBuffer);
  if (v7)
  {
    v13 = v7;
LABEL_8:
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_14;
    }

    VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    v19 = v13;
    v15 = " [%s] %s:%d FigAssetWriterAddSampleBuffer failed with error=%d";
    v16 = v14;
LABEL_16:
    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, &stillImageTime, 0x22u);
    goto LABEL_14;
  }

  v8 = self->_assetWriter;
  v9 = self->_metadataTrackID;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v10)
  {
    v11 = v10(v8, v9);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
  }

  else
  {
    v12 = -12782;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v19 = v12;
      v15 = " [%s] %s:%d FigAssetWriterMarkEndOfDataForTrack failed with error=%d";
      v16 = v17;
      goto LABEL_16;
    }
  }

LABEL_14:
  FigSampleBufferRelease();
}

- (void)initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithOutputURL:transactionID:videoCodec:keyFrameIntervalDuration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)_setupWriter
{
  OUTLINED_FUNCTION_22_10();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      if (*v0)
      {
        [objc_msgSend(*v0 "description")];
      }

      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_15_17();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
    }
  }

  OUTLINED_FUNCTION_23_9();
}

- (void)compressionSessionWithWidth:height:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)compressionSessionWithWidth:(uint64_t)a1 height:(int *)a2 .cold.14(uint64_t a1, int *a2)
{
  FourccToCStr(*a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)compressionSessionWithWidth:height:.cold.15()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.18()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.20()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)compressionSessionWithWidth:height:.cold.22()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)encodeAndAppendSampleBuffer:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

- (void)encodeAndAppendSampleBuffer:.cold.2()
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

  OUTLINED_FUNCTION_19_2();
}

- (void)encodeAndAppendSampleBuffer:.cold.3()
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

  OUTLINED_FUNCTION_19_2();
}

- (void)encodeAndAppendSampleBuffer:.cold.4()
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

  OUTLINED_FUNCTION_19_2();
}

- (void)encodeAndAppendSampleBuffer:.cold.5()
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

  OUTLINED_FUNCTION_19_2();
}

- (void)encodeAndAppendSampleBuffer:.cold.6()
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

  OUTLINED_FUNCTION_19_2();
}

void __48__VCFigAssetWriter_encodeAndAppendSampleBuffer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d VTCompressionSessionEncodeFrame handler status=%d", v3, v4, v5, v6);
}

- (void)collectEarlyAudioBuffer:type:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)collectEarlyAudioBuffer:type:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)collectEarlyAudioBuffer:type:.cold.3()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Attempting to append early audio buffer with type=%d", v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:(void *)a1 cameraStatus:mediaType:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.2()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d FigAssetWriterSetFormatWriterTrackProperty kFigFormatWriterTrackProperty_TrackMatrix failed with err=%d", v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.3()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to encode and append sample buffer with err=%d", v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VTCompressionSession not ready", v2, v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d video track ID was invalid", v2, v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d could not create 3x3 matrix array", v2, v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.7()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d FigAssetWriterAddNativeTrack failed with err=%d", v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:cameraStatus:mediaType:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VTCompressionSession not created", v2, v3, v4, v5, v6);
}

- (void)appendVideoSampleBuffer:(void *)a1 cameraStatus:mediaType:.cold.9(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)appendAudioSampleBuffer:(uint64_t)a1 mediaType:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d invalid track id for type=%d", v3, *(&v3 + 1), v4, 566);
}

- (void)appendAudioSampleBuffer:mediaType:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fail to append audio sample buffer. sample buffer is NULL", v2, v3, v4, v5, v6);
}

- (void)appendAudioSampleBuffer:mediaType:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d fail to append audio sample buffer. asset writer is NULL", v2, v3, v4, v5, v6);
}

- (void)writeIdentifierMetadata:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)writeIdentifierMetadata:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

@end