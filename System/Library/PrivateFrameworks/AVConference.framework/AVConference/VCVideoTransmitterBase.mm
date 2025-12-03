@interface VCVideoTransmitterBase
- (VCVideoTransmitterBase)initWithConfig:(id)config;
- (void)dealloc;
@end

@implementation VCVideoTransmitterBase

- (VCVideoTransmitterBase)initWithConfig:(id)config
{
  v38 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCVideoTransmitterBase;
  v4 = [(VCVideoTransmitterBase *)&v19 init];
  if (v4)
  {
    if ([config framerate] <= 0x3C && objc_msgSend(config, "framerate"))
    {
      v4->_targetFramerate = [config framerate];
    }

    v4->_txMaxBitrate = [config txMaxBitrate];
    v4->_txMinBitrate = [config txMinBitrate];
    v4->_temporaryMaximumBitrate = [config txMinBitrate];
    if ([config videoResolution] == 27)
    {
      v4->_encodingWidth = [config customWidth];
      customHeight = [config customHeight];
      encodingWidth = v4->_encodingWidth;
    }

    else
    {
      +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [config videoResolution]);
      encodingWidth = v7;
      v4->_encodingWidth = v7;
      customHeight = v8;
    }

    v4->_encodingHeight = customHeight;
    if ([config captureSource] == 3)
    {
      [VideoUtil getBestCaptureSizeForEncodingSize:encodingWidth, customHeight];
      encodingWidth = v9;
      customHeight = v10;
    }

    v4->_captureWidth = encodingWidth;
    v4->_captureHeight = customHeight;
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoTransmitterBase-initialized");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        logPrefix = [config logPrefix];
        captureWidth = v4->_captureWidth;
        captureHeight = v4->_captureHeight;
        v16 = v4->_encodingWidth;
        encodingHeight = v4->_encodingHeight;
        *buf = 136317186;
        v21 = v11;
        v22 = 2080;
        v23 = "[VCVideoTransmitterBase initWithConfig:]";
        v24 = 1024;
        v25 = 71;
        v26 = 2048;
        v27 = v4;
        v28 = 2112;
        v29 = logPrefix;
        v30 = 1024;
        v31 = captureWidth;
        v32 = 1024;
        v33 = captureHeight;
        v34 = 1024;
        v35 = v16;
        v36 = 1024;
        v37 = encodingHeight;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVideoTransmitterBase-initialized (%p) %@ capture = %dx%d, encode = %dx%d", buf, 0x48u);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCVideoTransmitterBase;
  [(VCVideoTransmitterBase *)&v2 dealloc];
}

@end