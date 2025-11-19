@interface VCVideoTransmitterConfig
- (VCVideoTransmitterConfig)init;
- (id)description;
- (void)addCustomFeatureListString:(id)a3 payload:(int)a4;
- (void)dealloc;
- (void)init;
- (void)setMediaControlInfoGenerator:(void *)a3;
@end

@implementation VCVideoTransmitterConfig

- (VCVideoTransmitterConfig)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCVideoTransmitterConfig;
  v2 = [(VCVideoTransmitterConfig *)&v7 init];
  if (v2)
  {
    v2->_customFeatureListStrings = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = malloc_type_calloc(9uLL, 0x40uLL, 0x1020040340A6574uLL);
    v2->_streamConfigs = v3;
    if (!v3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoTransmitterConfig *)v4 init];
        }
      }

      return 0;
    }
  }

  return v2;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  if (objc_opt_class())
  {
    v4 = [objc_msgSend(objc_opt_class() "description")];
  }

  else
  {
    v4 = "<nil>";
  }

  return [v5 stringWithFormat:@"{ %s: videoResolution:%ld codecType:%ld framerate:%lu txMaxBitrate:%lu txMinBitrate:%lu keyFrameInterval:%lu recommendedMTU:%lu cvoExtensionID:%lu enableCVO:%d customWidth %lu, customHeight %lu, pixelFormat: %s}", v4, self->_videoResolution, self->_codecType, self->_framerate, self->_txMaxBitrate, self->_txMinBitrate, self->_keyFrameInterval, self->_recommendedMTU, self->_cvoExtensionID, self->_enableCVO, self->_customWidth, self->_customHeight, FourccToCStr(self->_pixelFormat)];
}

- (void)setMediaControlInfoGenerator:(void *)a3
{
  mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    CFRelease(mediaControlInfoGenerator);
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_mediaControlInfoGenerator = v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  free(self->_streamConfigs);

  mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    CFRelease(mediaControlInfoGenerator);
  }

  v4.receiver = self;
  v4.super_class = VCVideoTransmitterConfig;
  [(VCVideoTransmitterConfig *)&v4 dealloc];
}

- (void)addCustomFeatureListString:(id)a3 payload:(int)a4
{
  customFeatureListStrings = self->_customFeatureListStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4];

  [(NSMutableDictionary *)customFeatureListStrings setObject:a3 forKeyedSubscript:v6];
}

- (void)init
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoTransmitterConfig init]";
  v6 = 1024;
  v7 = 125;
  v8 = 1024;
  v9 = 576;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d calloc(%d) failed", &v2, 0x22u);
}

@end