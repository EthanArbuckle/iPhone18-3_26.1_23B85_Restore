@interface AVCVideoStreamConfig
+ (BOOL)isPixelFormatValid:(unsigned int)a3 hdrMode:(unint64_t)a4;
+ (int)videoCaptureSourceFromClientCaptureSource:(int64_t)a3;
+ (int64_t)clientVideoCaptureSourceFromCaptureSource:(int)a3;
+ (int64_t)clientVideoResolutionFromResolution:(int64_t)a3;
+ (int64_t)clientVideoStreamModeFromVideoStreamType:(int64_t)a3;
+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3;
+ (int64_t)videoResolutionFromClientResolution:(int64_t)a3;
+ (int64_t)videoStreamTypeFromClientVideoStreamMode:(int64_t)a3;
- (AVCVideoStreamConfig)init;
- (BOOL)isValidForDirection:(int64_t)a3;
- (id)dictionary;
- (void)dealloc;
- (void)encodeVideoBufferDescription:(id *)a3;
- (void)setUpWithDictionary:(id)a3;
@end

@implementation AVCVideoStreamConfig

- (AVCVideoStreamConfig)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCVideoStreamConfig;
  v2 = [(AVCVideoStreamConfig *)&v4 init];
  if (v2)
  {
    v2->_txCodecFeatureListString = objc_opt_new();
    v2->_rxCodecFeatureListString = objc_opt_new();
    v2->_tilesPerFrame = 1;
    v2->_enableInterleavedEncoding = 0;
    v2->_pixelFormat = 875704438;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCVideoStreamConfig;
  [(AVCVideoStreamConfig *)&v3 dealloc];
}

- (BOOL)isValidForDirection:(int64_t)a3
{
  if ([(AVCVideoStreamConfig *)self txCodecType])
  {
    v5 = [(AVCVideoStreamConfig *)self txCodecType]!= 1;
  }

  else
  {
    v5 = 0;
  }

  if ([(AVCVideoStreamConfig *)self rxCodecType])
  {
    v6 = [(AVCVideoStreamConfig *)self rxCodecType]!= 1;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    if (v5 || v6)
    {
      goto LABEL_17;
    }
  }

  else if (v5 | ![AVCVideoStreamConfig isPixelFormatValid:[(AVCVideoStreamConfig *)self pixelFormat] hdrMode:[(AVCVideoStreamConfig *)self hdrMode]]| v6)
  {
    goto LABEL_17;
  }

  v7 = [(AVCVideoStreamConfig *)self framerate];
  if (!v7)
  {
    return v7;
  }

  v7 = [(AVCVideoStreamConfig *)self tilesPerFrame];
  if (!v7)
  {
    return v7;
  }

  if ([(AVCVideoStreamConfig *)self tilesPerFrame]> 8)
  {
LABEL_17:
    LOBYTE(v7) = 0;
    return v7;
  }

  if ([(AVCVideoStreamConfig *)self enableCVO])
  {
    v7 = [(AVCVideoStreamConfig *)self cvoExtensionID];
    if (v7)
    {
      LOBYTE(v7) = [(AVCVideoStreamConfig *)self cvoExtensionID]< 0xF;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3
{
  v3 = 102;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 100;
  }
}

+ (int64_t)videoResolutionFromClientResolution:(int64_t)a3
{
  if ((a3 - 1) > 0xC)
  {
    return 7;
  }

  else
  {
    return qword_1DBD51818[a3 - 1];
  }
}

+ (int64_t)clientVideoResolutionFromResolution:(int64_t)a3
{
  if ((a3 - 6) > 0x15)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51880[a3 - 6];
  }
}

+ (int64_t)clientVideoCaptureSourceFromCaptureSource:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 2;
  }

  else
  {
    return qword_1DBD51930[a3 - 1];
  }
}

+ (int)videoCaptureSourceFromClientCaptureSource:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1DBD519D0[a3];
  }
}

+ (int64_t)clientVideoStreamModeFromVideoStreamType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51960[a3 - 1];
  }
}

+ (int64_t)videoStreamTypeFromClientVideoStreamMode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1DBD51998[a3 - 1];
  }
}

- (void)encodeVideoBufferDescription:(id *)a3
{
  if (a3)
  {
    empty = xpc_array_create_empty();
    if (empty)
    {
      v6 = empty;
      if ([(NSArray *)self->_videoBufferDescription count])
      {
        v7 = 0;
        v8 = *MEMORY[0x1E695E480];
        while (1)
        {
          v9 = [(NSArray *)self->_videoBufferDescription objectAtIndexedSubscript:v7];
          if (!v9)
          {
            [AVCVideoStreamConfig encodeVideoBufferDescription:];
            goto LABEL_9;
          }

          v10 = CMTagCollectionCopyAsDictionary(v9, v8);
          if (!v10)
          {
            break;
          }

          v11 = v10;
          v12 = _CFXPCCreateXPCObjectFromCFObject();
          CFRelease(v11);
          xpc_array_append_value(v6, v12);
          xpc_release(v12);
          if (++v7 >= [(NSArray *)self->_videoBufferDescription count])
          {
            goto LABEL_8;
          }
        }

        [AVCVideoStreamConfig encodeVideoBufferDescription:];
      }

      else
      {
LABEL_8:
        xpc_dictionary_set_value(*a3, "vcMediaStreamVideoBufferDescriptionXPCArgs", v6);
      }

LABEL_9:
      xpc_release(v6);
    }

    else
    {
      [AVCVideoStreamConfig encodeVideoBufferDescription:];
    }
  }

  else
  {
    [AVCVideoStreamConfig encodeVideoBufferDescription:];
  }
}

- (void)setUpWithDictionary:(id)a3
{
  self->_txCodecType = +[AVCVideoStreamConfig clientCodecTypeWithCodecType:](AVCVideoStreamConfig, "clientCodecTypeWithCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXCodecType", "integerValue"}]);
  self->_rxCodecType = +[AVCVideoStreamConfig clientCodecTypeWithCodecType:](AVCVideoStreamConfig, "clientCodecTypeWithCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXCodecType", "integerValue"}]);
  self->_videoResolution = +[AVCVideoStreamConfig clientVideoResolutionFromResolution:](AVCVideoStreamConfig, "clientVideoResolutionFromResolution:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamVideoResolution", "integerValue"}]);
  self->_synchronizationSourceStreamToken = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamSyncStreamToken", "integerValue"}];
  self->_framerate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamFramerate", "integerValue"}];
  self->_txMaxBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXMaxBitrate", "integerValue"}];
  self->_txMinBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTXMinBitrate", "integerValue"}];
  self->_rxMaxBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXMaxBitrate", "integerValue"}];
  self->_rxMinBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRXMinBitrate", "integerValue"}];
  self->_txCodecFeatureListString = [a3 objectForKeyedSubscript:@"vcMediaStreamTxCodecFeatureListString"];
  self->_rxCodecFeatureListString = [a3 objectForKeyedSubscript:@"vcMediaStreamRxCodecFeatureListString"];
  self->_keyFrameInterval = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamKeyFrameInterval", "integerValue"}];
  self->_remoteVideoInitialOrientation = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamRemoteVideoInitialOrientation", "integerValue"}];
  self->_enableCVO = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEnableCVO", "BOOLValue"}];
  self->_cvoExtensionID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCVOExtensionID", "unsignedIntegerValue"}];
  self->_isVideoProtected = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsVideoProtected", "BOOLValue"}];
  self->_videoStreamMode = +[AVCVideoStreamConfig clientVideoStreamModeFromVideoStreamType:](AVCVideoStreamConfig, "clientVideoStreamModeFromVideoStreamType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamVideoStreamMode", "integerValue"}]);
  self->_captureSource = +[AVCVideoStreamConfig clientVideoCaptureSourceFromCaptureSource:](AVCVideoStreamConfig, "clientVideoCaptureSourceFromCaptureSource:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCaptureSource", "integerValue"}]);
  self->_captureSourceID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCaptureSourceID", "integerValue"}];
  self->_screenDisplayID = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamDisplayID", "unsignedIntegerValue"}];
  self->_tilesPerFrame = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTilesPerFrame", "integerValue"}];
  self->_enableInterleavedEncoding = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamEnableInterleavedEncoding", "BOOLValue"}];
  self->_pixelFormat = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamPixelFormat", "unsignedIntegerValue"}];
  self->_ltrpEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsltrpEnabled", "BOOLValue"}];
  if (self->_videoResolution == 12)
  {
    self->_customWidth = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCustomWidth", "integerValue"}];
    self->_customHeight = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamCustomHeight", "integerValue"}];
  }

  self->_hdrMode = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamHDRMode", "integerValue"}];
  v5 = [a3 objectForKeyedSubscript:@"vcRemoteDeviceName"];
  if ([v5 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v6 = 0;
  }

  else
  {
    v6 = [a3 objectForKeyedSubscript:@"vcRemoteDeviceName"];
  }

  self->_remoteDeviceName = v6;
  self->_latencySensitiveModeEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamLatencySensitiveMode", "BOOLValue"}];
  v7 = [a3 objectForKeyedSubscript:@"vcMediaStreamProfileLevel"];
  if ([v7 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v8 = 0;
  }

  else
  {
    v8 = [a3 objectForKeyedSubscript:@"vcMediaStreamProfileLevel"];
  }

  self->_profileLevel = v8;
  self->_fecEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsFECEnabled", "BOOLValue"}];
  self->_rtxEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamIsRTXEnabled", "BOOLValue"}];
  self->_transportProtocolType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTransportProtocolType", "integerValue"}];
  self->_shouldSendBlackFramesOnClearScreen = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamShouldSendBlackFramesOnClearScreen", "BOOLValue"}];
  self->_foveationEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamFoveationEnabled", "BOOLValue"}];
  v9 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDEncryptionContext"];
  if ([v9 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDEncryptionContext"];
  }

  self->_pdEncryptionContext = v10;
  v11 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDDecryptionContext"];
  if ([v11 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v12 = 0;
  }

  else
  {
    v12 = [a3 objectForKeyedSubscript:@"vcMediaStreamPDDecryptionContext"];
  }

  self->_pdDecryptionContext = v12;
  [a3 objectForKeyedSubscript:@"vcMediaStreamVideoBufferDescription"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [a3 objectForKeyedSubscript:@"vcMediaStreamVideoBufferDescription"];
  }

  else
  {
    v13 = 0;
  }

  self->_videoBufferDescription = v13;
}

- (id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  if ([VCDefaults BOOLeanValueForKey:@"force444" defaultValue:0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = v3;
        v47 = 2080;
        v48 = "[AVCVideoStreamConfig dictionary]";
        v49 = 1024;
        v50 = 1498;
        v51 = 2112;
        v52 = @"force444";
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ set. Setting _pixelFormat to 444f", buf, 0x26u);
      }
    }

    v5 = 875836518;
  }

  else if ([VCDefaults BOOLeanValueForKey:@"force444-10bit" defaultValue:0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = v6;
        v47 = 2080;
        v48 = "[AVCVideoStreamConfig dictionary]";
        v49 = 1024;
        v50 = 1501;
        v51 = 2112;
        v52 = @"force444-10bit";
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%@] set. Setting _pixelFormat to 444f 10-bit", buf, 0x26u);
      }
    }

    v5 = 2019963956;
  }

  else
  {
    if (![VCDefaults BOOLeanValueForKey:@"force420" defaultValue:0])
    {
      goto LABEL_17;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = v8;
        v47 = 2080;
        v48 = "[AVCVideoStreamConfig dictionary]";
        v49 = 1024;
        v50 = 1504;
        v51 = 2112;
        v52 = @"force420";
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ set. Setting _pixelFormat to 420f", buf, 0x26u);
      }
    }

    v5 = 875704422;
  }

  self->_pixelFormat = v5;
LABEL_17:
  v17[0] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCVideoStreamConfig codecTypeWithClientCodecType:](AVCVideoStreamConfig, "codecTypeWithClientCodecType:", self->_txCodecType, @"vcMediaStreamTXCodecType"}];
  v16[1] = @"vcMediaStreamRXCodecType";
  v17[1] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCVideoStreamConfig codecTypeWithClientCodecType:](AVCVideoStreamConfig, "codecTypeWithClientCodecType:", self->_rxCodecType)}];
  v16[2] = @"vcMediaStreamVideoResolution";
  v17[2] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCVideoStreamConfig videoResolutionFromClientResolution:](AVCVideoStreamConfig, "videoResolutionFromClientResolution:", self->_videoResolution)}];
  v16[3] = @"vcMediaStreamSyncStreamToken";
  v17[3] = [MEMORY[0x1E696AD98] numberWithInteger:self->_synchronizationSourceStreamToken];
  v16[4] = @"vcMediaStreamFramerate";
  v17[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_framerate];
  v16[5] = @"vcMediaStreamTXMaxBitrate";
  v17[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_txMaxBitrate];
  v16[6] = @"vcMediaStreamTXMinBitrate";
  v17[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_txMinBitrate];
  v16[7] = @"vcMediaStreamRXMaxBitrate";
  v17[7] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_rxMaxBitrate];
  v16[8] = @"vcMediaStreamRXMinBitrate";
  v17[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_rxMinBitrate];
  v16[9] = @"vcMediaStreamTxCodecFeatureListString";
  v16[10] = @"vcMediaStreamRxCodecFeatureListString";
  v18 = *&self->_txCodecFeatureListString;
  v16[11] = @"vcMediaStreamKeyFrameInterval";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keyFrameInterval];
  v16[12] = @"vcMediaStreamRemoteVideoInitialOrientation";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_remoteVideoInitialOrientation];
  v16[13] = @"vcMediaStreamEnableCVO";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableCVO];
  v16[14] = @"vcMediaStreamCVOExtensionID";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cvoExtensionID];
  v16[15] = @"vcMediaStreamIsVideoProtected";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVideoProtected];
  v16[16] = @"vcMediaStreamVideoStreamMode";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCVideoStreamConfig videoStreamTypeFromClientVideoStreamMode:](AVCVideoStreamConfig, "videoStreamTypeFromClientVideoStreamMode:", self->_videoStreamMode)}];
  v16[17] = @"vcMediaStreamCaptureSource";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[AVCVideoStreamConfig videoCaptureSourceFromClientCaptureSource:](AVCVideoStreamConfig, "videoCaptureSourceFromClientCaptureSource:", self->_captureSource)}];
  v16[18] = @"vcMediaStreamCaptureSourceID";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_captureSourceID];
  v16[19] = @"vcMediaStreamDisplayID";
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_screenDisplayID];
  v16[20] = @"vcMediaStreamCustomWidth";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_customWidth];
  v16[21] = @"vcMediaStreamCustomHeight";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_customHeight];
  v16[22] = @"vcMediaStreamTilesPerFrame";
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_tilesPerFrame];
  v16[23] = @"vcMediaStreamEnableInterleavedEncoding";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableInterleavedEncoding];
  v16[24] = @"vcMediaStreamPixelFormat";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pixelFormat];
  v16[25] = @"vcMediaStreamIsltrpEnabled";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_ltrpEnabled];
  v16[26] = @"vcMediaStreamHDRMode";
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hdrMode];
  v16[27] = @"vcRemoteDeviceName";
  remoteDeviceName = self->_remoteDeviceName;
  if (!remoteDeviceName)
  {
    remoteDeviceName = [MEMORY[0x1E695DFB0] null];
  }

  v35 = remoteDeviceName;
  v16[28] = @"vcMediaStreamProfileLevel";
  profileLevel = self->_profileLevel;
  if (!profileLevel)
  {
    profileLevel = [MEMORY[0x1E695DFB0] null];
  }

  v36 = profileLevel;
  v16[29] = @"vcMediaStreamIsFECEnabled";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_fecEnabled];
  v16[30] = @"vcMediaStreamIsRTXEnabled";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_rtxEnabled];
  v16[31] = @"vcMediaStreamTransportProtocolType";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportProtocolType];
  v16[32] = @"vcMediaStreamShouldSendBlackFramesOnClearScreen";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSendBlackFramesOnClearScreen];
  v16[33] = @"vcMediaStreamFoveationEnabled";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:self->_foveationEnabled];
  v16[34] = @"vcMediaStreamPDEncryptionContext";
  pdEncryptionContext = self->_pdEncryptionContext;
  if (!pdEncryptionContext)
  {
    pdEncryptionContext = [MEMORY[0x1E695DFB0] null];
  }

  v42 = pdEncryptionContext;
  v16[35] = @"vcMediaStreamPDDecryptionContext";
  pdDecryptionContext = self->_pdDecryptionContext;
  if (!pdDecryptionContext)
  {
    pdDecryptionContext = [MEMORY[0x1E695DFB0] null];
  }

  v43 = pdDecryptionContext;
  v16[36] = @"vcMediaStreamVideoBufferDescription";
  videoBufferDescription = self->_videoBufferDescription;
  if (!videoBufferDescription)
  {
    videoBufferDescription = [MEMORY[0x1E695DFB0] null];
  }

  v44 = videoBufferDescription;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:37];
}

+ (BOOL)isPixelFormatValid:(unsigned int)a3 hdrMode:(unint64_t)a4
{
  if (a3 <= 875836533)
  {
    if (a3 == 875704422 || a3 == 875704438)
    {
      goto LABEL_9;
    }

    v4 = 875836518;
LABEL_8:
    if (a3 == v4)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (a3 <= 2016686639)
  {
    if (a3 == 875836534)
    {
LABEL_9:
      LOBYTE(v5) = a4 == 0;
      return v5;
    }

    v4 = 1751411059;
    goto LABEL_8;
  }

  if (a3 == 2016686640)
  {
    LOBYTE(v5) = a4 - 1 < 2;
    return v5;
  }

  if (a3 == 2019963956)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

LABEL_14:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    +[AVCVideoStreamConfig isPixelFormatValid:hdrMode:];
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (void)encodeVideoBufferDescription:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)encodeVideoBufferDescription:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)encodeVideoBufferDescription:.cold.3()
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

- (void)encodeVideoBufferDescription:.cold.4()
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

+ (void)isPixelFormatValid:hdrMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

@end