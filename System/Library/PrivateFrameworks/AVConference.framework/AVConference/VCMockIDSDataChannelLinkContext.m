@interface VCMockIDSDataChannelLinkContext
- (VCMockIDSDataChannelLinkContext)initWithSourcePort:(signed __int16)a3;
- (unsigned)RATType;
- (unsigned)remoteRATType;
@end

@implementation VCMockIDSDataChannelLinkContext

- (VCMockIDSDataChannelLinkContext)initWithSourcePort:(signed __int16)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCMockIDSDataChannelLinkContext;
  v4 = [(VCMockIDSDataChannelLinkContext *)&v15 init];
  [(IDSDataChannelLinkContext *)v4 initWithDummyInformation];
  v5 = [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
  v4->_forceNetworkCellular = v5;
  if (v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v6;
        v18 = 2080;
        v19 = "[VCMockIDSDataChannelLinkContext initWithSourcePort:]";
        v20 = 1024;
        v21 = 111;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Mock IDS channel network type as cellular", buf, 0x1Cu);
      }
    }
  }

  v4->_networkType = VCDefaults_GetIntValueForKey(@"forceIDSLinkIPVersion", 0);
  v4->_remoteNetworkType = VCDefaults_GetIntValueForKey(@"forceIDSLinkIPVersion", 0);
  v4->_localLinkFlags = VCDefaults_GetIntValueForKey(@"forceIDSLocalLinkFlags", 0);
  v4->_idsUPlusOneMode = 0;
  v4->_estimatedPerPacketConstantOverhead = 82;
  if (VCDefaults_GetBoolValueForKey(@"enableTestNetworkRouter", 0))
  {
    v4->_linkID = v3 - 127 * (((v3 + ((-32509 * v3) >> 16)) >> 6) + (((v3 + ((-32509 * v3) >> 16)) & 0x8000) >> 15));
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      networkType = v4->_networkType;
      remoteNetworkType = v4->_remoteNetworkType;
      localLinkFlags = v4->_localLinkFlags;
      linkID = v4->_linkID;
      *buf = 136316930;
      v17 = v8;
      v18 = 2080;
      v19 = "[VCMockIDSDataChannelLinkContext initWithSourcePort:]";
      v20 = 1024;
      v21 = 123;
      v22 = 1024;
      v23 = networkType;
      v24 = 1024;
      v25 = remoteNetworkType;
      v26 = 1024;
      v27 = localLinkFlags;
      v28 = 1024;
      v29 = linkID;
      v30 = 1024;
      v31 = v3;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Mock IDS channel context forced _networkType=%u _remoteNetworkType=%u _localLinkFlags=%u _linkID=%u [sourcePort=%u]", buf, 0x3Au);
    }
  }

  return v4;
}

- (unsigned)RATType
{
  if (self->_forceNetworkCellular)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (unsigned)remoteRATType
{
  if (self->_forceNetworkCellular)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

@end