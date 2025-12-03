@interface VCSessionBitrateArbiter
- (BOOL)rangeCheck:(unsigned int)check;
- (VCSessionBitrateArbiter)init;
- (unsigned)bitrateForStoreBagKey:(id)key connectionType:(int)type currentBitrate:(unsigned int)bitrate isExpensive:(BOOL)expensive;
- (void)dealloc;
- (void)readHardwareValues;
- (void)readStoreBagValues;
@end

@implementation VCSessionBitrateArbiter

- (VCSessionBitrateArbiter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSessionBitrateArbiter;
  v2 = [(VCSessionBitrateArbiter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VCSessionBitrateArbiter *)v2 readHardwareValues];
    [(VCSessionBitrateArbiter *)v3 readStoreBagValues];
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionBitrateArbiter;
  [(VCSessionBitrateArbiter *)&v3 dealloc];
}

- (BOOL)rangeCheck:(unsigned int)check
{
  v3 = check - 100000;
  if (check - 100000 >= 0x5F98A9 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCSessionBitrateArbiter *)v5 rangeCheck:check, v6];
    }
  }

  return v3 < 0x5F98A9;
}

- (void)readHardwareValues
{
  *&self->_maxBitrate2GUplink = xmmword_1DBD49C40;
  *&self->_maxBitrateExpensiveUplink = xmmword_1DBD49C50;
  *&self->_maxBitrateWiFiUplink = vdup_n_s32(0x611F48u);
}

- (unsigned)bitrateForStoreBagKey:(id)key connectionType:(int)type currentBitrate:(unsigned int)bitrate isExpensive:(BOOL)expensive
{
  expensiveCopy = expensive;
  v29 = *MEMORY[0x1E69E9840];
  v11 = 1000 * [-[NSDictionary objectForKeyedSubscript:](self->_currentSettings "objectForKeyedSubscript:"intValue"")];
  if ([(VCSessionBitrateArbiter *)self rangeCheck:v11])
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (bitrate)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316674;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCSessionBitrateArbiter bitrateForStoreBagKey:connectionType:currentBitrate:isExpensive:]";
          v22 = 1024;
          v23 = 93;
          v24 = 2112;
          *v25 = key;
          *&v25[8] = 1024;
          *v26 = type;
          *&v26[4] = 1024;
          *&v26[6] = expensiveCopy;
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding %@ for connection type %d isExpensive %d with storebag value of %d", &v18, 0x38u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316674;
          v19 = v15;
          v20 = 2080;
          v21 = "[VCSessionBitrateArbiter bitrateForStoreBagKey:connectionType:currentBitrate:isExpensive:]";
          v22 = 1024;
          v23 = 96;
          v24 = 1024;
          *v25 = type;
          *&v25[4] = 1024;
          *&v25[6] = expensiveCopy;
          *v26 = 2112;
          *&v26[2] = key;
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Hardware does not support connection type %d isExpensive %d, ignored %@ storebag value of %d", &v18, 0x38u);
        }
      }

      LODWORD(v11) = 0;
    }
  }

  else
  {
    LODWORD(v11) = bitrate;
  }

  return v11;
}

- (void)readStoreBagValues
{
  v15 = *MEMORY[0x1E69E9840];
  self->_currentSettings = +[GKSConnectivitySettings getAllSettings];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentSettings = self->_currentSettings;
      if (currentSettings)
      {
        uTF8String = [(NSString *)[(NSDictionary *)currentSettings description] UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSessionBitrateArbiter readStoreBagValues]";
      v11 = 1024;
      v12 = 106;
      v13 = 2080;
      v14 = uTF8String;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Current bag settings: %s\n", &v7, 0x26u);
    }
  }

  self->_maxBitrate2GUplink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-2g-uplink" connectionType:0 currentBitrate:self->_maxBitrate2GUplink isExpensive:1];
  self->_maxBitrate2GDownlink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-2g-downlink" connectionType:0 currentBitrate:self->_maxBitrate2GDownlink isExpensive:1];
  self->_maxBitrate3GUplink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-3g-uplink" connectionType:1 currentBitrate:self->_maxBitrate3GUplink isExpensive:1];
  self->_maxBitrate3GDownlink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-3g-downlink" connectionType:1 currentBitrate:self->_maxBitrate3GDownlink isExpensive:1];
  self->_maxBitrateExpensiveUplink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-lte-uplink" connectionType:2 currentBitrate:self->_maxBitrateExpensiveUplink isExpensive:1];
  self->_maxBitrateNonExpensiveUplink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-nonexpensive-uplink" connectionType:6 currentBitrate:self->_maxBitrateNonExpensiveUplink isExpensive:0];
  self->_maxBitrateExpensiveDownlink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-lte-downlink" connectionType:2 currentBitrate:self->_maxBitrateExpensiveDownlink isExpensive:1];
  self->_maxBitrateNonExpensiveDownlink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-nonexpensive-downlink" connectionType:6 currentBitrate:self->_maxBitrateNonExpensiveDownlink isExpensive:0];
  if ((VRTraceIsInternalOSInstalled() & 1) == 0)
  {
    self->_maxBitrateWiFiUplink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-wifi-uplink" connectionType:3 currentBitrate:self->_maxBitrateWiFiUplink isExpensive:0];
  }

  self->_maxBitrateWiFiDownlink = [(VCSessionBitrateArbiter *)self bitrateForStoreBagKey:@"vc-max-bitrate-wifi-downlink" connectionType:3 currentBitrate:self->_maxBitrateWiFiDownlink isExpensive:0];
}

- (void)rangeCheck:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCSessionBitrateArbiter rangeCheck:]";
  v7 = 1024;
  v8 = 66;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCSessionBitrateArbiter: value %d failed bitrate range check, ignored", &v3, 0x22u);
}

@end