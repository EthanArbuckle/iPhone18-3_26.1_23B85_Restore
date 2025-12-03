@interface VCConnectionIDS
+ (id)VCConnectionIDS_CDBPS:(id)s;
+ (id)VCConnectionIDS_RPS:(id)s;
+ (unsigned)worstCaseNetworkOverheadInBytesWithNumOfStreamId:(int)id isPriorityIncluded:(BOOL)included;
- (BOOL)isOnSameInterfacesAndQRSessionWithConnection:(id)connection;
- (BOOL)isOnSameQRSessionWithConnection:(id)connection;
- (BOOL)isWifiToWifi;
- (NSData)sharedDigestKey;
- (NSString)description;
- (NSString)localInterfaceName;
- (NSString)localInterfaceTypeString;
- (NSString)relaySessionToken;
- (NSString)remoteInterfaceTypeString;
- (VCConnectionIDS)initWithLinkContext:(id)context dataChannelToken:(unsigned int)token;
- (int)cellTechForSoMask:(unsigned int)mask fallbackTo:(int)to;
- (int)localConnectionType;
- (int)remoteConnectionType;
- (unsigned)applyLinkFlagsOverride:(unsigned __int16)override isLocal:(BOOL)local;
- (unsigned)updateMaxConnectionMTU:(unsigned __int16)u;
- (void)dealloc;
- (void)setCellularMTU:(int)u;
- (void)setUpVTable;
@end

@implementation VCConnectionIDS

- (void)setUpVTable
{
  self->super._vTable.sourceDestinationInfo = _VCConnectionIDS_SourceDestinationInfo;
  self->super._vTable.isLocalOnCellular = _VCConnectionIDS_IsLocalOnCellular;
  self->super._vTable.isRemoteOnCellular = _VCConnectionIDS_IsRemoteOnCellular;
  self->super._vTable.isIPv6 = _VCConnectionIDS_IsIPv6;
  self->super._vTable.isRelay = _VCConnectionIDS_IsRelay;
  self->super._vTable.matchesSourceDestinationInfo = _VCConnectionIDS_MatchesSourceDestinationInfo;
  self->super._vTable.equal = _VCConnectionIDS_Equal;
  self->super._vTable.localCellTech = _VCConnectionIDS_LocalCellTech;
  self->super._vTable.setLocalCellTech = _VCConnectionIDS_SetLocalCellTech;
  self->super._vTable.remoteCellTech = _VCConnectionIDS_RemoteCellTech;
  self->super._vTable.setRemoteCellTech = _VCConnectionIDS_SetRemoteCellTech;
  self->super._vTable.copyDescription = _VCConnectionIDS_CopyDescription;
  self->super._vTable.isLocalOnWiFiOrWired = _VCConnectionIDS_IsLocalOnWiFiOrWired;
  self->super._vTable.isRemoteOnWiFiOrWired = _VCConnectionIDS_IsRemoteOnWiFiOrWired;
  self->super._vTable.isLocalOnWiFi = _VCConnectionIDS_IsLocalOnWiFi;
  self->super._vTable.isRemoteOnWiFi = _VCConnectionIDS_IsRemoteOnWiFi;
  self->super._vTable.isLocalOnWired = _VCConnectionIDS_IsLocalOnWired;
  self->super._vTable.isRemoteOnWired = _VCConnectionIDS_IsRemoteOnWired;
  self->super._vTable.isOnSameInterfacesWithConnection = _VCConnectionIDS_IsOnSameInterfacesWithConnection;
  self->super._vTable.isEndToEndLink = _VCConnectionIDS_IsEndToEndLink;
  self->super._vTable.connectionID = _VCConnectionIDS_ConnectionID;
  self->super._vTable.isLocalExpensive = _VCConnectionIDS_IsLocalExpensive;
  self->super._vTable.isLocalConstrained = _VCConnectionIDS_IsLocalConstrained;
  self->super._vTable.isRemoteExpensive = _VCConnectionIDS_IsRemoteExpensive;
  self->super._vTable.isRemoteConstrained = _VCConnectionIDS_IsRemoteConstrained;
  self->super._vTable.reportingIPVersion = _VCConnectionIDS_ReportingIPVersion;
  self->super._vTable.reportingQRServerConfig = _VCConnectionIDS_ReportingQRServerConfig;
  self->super._vTable.reportingSliceStatus = _VCConnectionIDS_ReportingSliceStatus;
  self->super._vTable.isHopByHopEncryptionSupported = _VCConnectionIDS_IsHopByHopEncryptionSupported;
  self->super._vTable.qrExperiments = _VCConnectionIDS_QRExperiments;
}

- (unsigned)applyLinkFlagsOverride:(unsigned __int16)override isLocal:(BOOL)local
{
  localCopy = local;
  overrideCopy = override;
  v25 = *MEMORY[0x1E69E9840];
  if (local)
  {
    v6 = @"linkFlagsOverride";
  }

  else
  {
    v6 = @"remoteLinkFlagsOverride";
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(v6, 0xFFFFFFFFLL);
  if (IntValueForKey != -1)
  {
    v8 = IntValueForKey;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = "remote";
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCConnectionIDS applyLinkFlagsOverride:isLocal:]";
        if (localCopy)
        {
          v11 = "local";
        }

        v17 = 1024;
        v18 = 125;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = overrideCopy;
        v23 = 1024;
        v24 = v8;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding %s link flags: 0x%04x -> 0x%04x", &v13, 0x32u);
      }
    }

    LOWORD(overrideCopy) = v8;
  }

  return overrideCopy;
}

- (VCConnectionIDS)initWithLinkContext:(id)context dataChannelToken:(unsigned int)token
{
  v4 = *&token;
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCConnectionIDS;
  v6 = [(VCConnection *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->super._connectionType = 2;
    v6->_linkContext = context;
    v7->_datagramChannelToken = v4;
    v7->_datagramChannel = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager datagramChannelWithChannelToken:"datagramChannelWithChannelToken:", v4];
    localRATTypeOverride = [+[VCDefaults sharedInstance](VCDefaults localRATTypeOverride];
    if ((localRATTypeOverride + 1) <= 0xA && ((1 << (localRATTypeOverride + 1)) & 0x403) != 0)
    {
      localRATTypeOverride = [(IDSDataChannelLinkContext *)v7->_linkContext RATType];
    }

    v7->_localCellTech = VCConnectionIDSCellTechForRATType(localRATTypeOverride);
    if (VCConnection_IsLocalOnCellular(v7))
    {
      v7->_localCellTech = [(VCConnectionIDS *)v7 cellTechForSoMask:[(IDSDataChannelLinkContext *)v7->_linkContext localDataSoMask] fallbackTo:v7->_localCellTech];
    }

    v7->_isQUICPod = [(IDSDataChannelLinkContext *)v7->_linkContext isQUICPod];
    v7->_remoteCellTech = VCConnectionIDSCellTechForRATType([(IDSDataChannelLinkContext *)v7->_linkContext remoteRATType]);
    if (VCConnection_IsRemoteOnCellular(v7))
    {
      v7->_remoteCellTech = [(VCConnectionIDS *)v7 cellTechForSoMask:[(IDSDataChannelLinkContext *)v7->_linkContext remoteDataSoMask] fallbackTo:v7->_remoteCellTech];
    }

    connectionType = [(IDSDataChannelLinkContext *)v7->_linkContext connectionType];
    if ((connectionType - 1) > 4)
    {
      v11 = 0;
    }

    else
    {
      v11 = dword_1DBD49B60[connectionType - 1];
    }

    v7->_type = v11;
    v7->_linkConnectionType = [(IDSDataChannelLinkContext *)v7->_linkContext connectionType];
    maxMTU = [(IDSDataChannelLinkContext *)v7->_linkContext maxMTU];
    v7->_maxConnectionMTU = maxMTU;
    v7->_connectionMTU = maxMTU;
    v13 = [(VCConnectionIDS *)v7 applyLinkFlagsOverride:[(IDSDataChannelLinkContext *)v7->_linkContext localLinkFlags]& 2 | [(IDSDataChannelLinkContext *)v7->_linkContext localLinkFlags]& 1 | ([(IDSDataChannelLinkContext *)v7->_linkContext localLinkFlags]>> 6) & 4 isLocal:1];
    [(VCConnection *)v7 setLinkFlags:v13];
    [(VCConnection *)v7 setPreviousLinkFlags:v13];
    v14 = [(VCConnectionIDS *)v7 applyLinkFlagsOverride:[(IDSDataChannelLinkContext *)v7->_linkContext remoteLinkFlags]& 2 | [(IDSDataChannelLinkContext *)v7->_linkContext remoteLinkFlags]& 1 | ([(IDSDataChannelLinkContext *)v7->_linkContext remoteLinkFlags]>> 6) & 4 isLocal:0];
    [(VCConnection *)v7 setRemoteLinkFlags:v14];
    [(VCConnection *)v7 setPreviousRemoteLinkFlags:v14];
    v7->_isLocalDelegated = ([(IDSDataChannelLinkContext *)v7->_linkContext localLinkFlags]& 4) != 0;
    v7->_isRemoteDelegated = ([(IDSDataChannelLinkContext *)v7->_linkContext remoteLinkFlags]& 4) != 0;
    v7->_isVirtualRelayLink = [(IDSDataChannelLinkContext *)v7->_linkContext isVirtualRelayLink];
    v7->_p2pEncryptionEnabled = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-p2p-encryption-enabled" userDefaultKey:@"p2pEncryptionEnabled" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
    v7->_relayProtocolStackDescription = [(IDSDataChannelLinkContext *)v7->_linkContext relayProtocolStackDescription];
    v7->_channelDataBaseProtocolStackDescription = [(IDSDataChannelLinkContext *)v7->_linkContext channelDataBaseProtocolStackDescription];
    v7->_pathMTU = [(IDSDataChannelLinkContext *)v7->_linkContext pathMTU];
    v7->super._constantConnectionOverhead = [(IDSDataChannelLinkContext *)v7->_linkContext estimatedPerPacketConstantOverhead];
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCConnectionIDS;
  [(VCConnection *)&v3 dealloc];
}

- (NSString)description
{
  v2 = _VCConnectionIDS_CopyDescription(self);

  return v2;
}

- (NSString)relaySessionToken
{
  __imHexString = [(NSData *)[(IDSDataChannelLinkContext *)self->_linkContext relaySessionToken] __imHexString];

  return [__imHexString lowercaseString];
}

- (NSData)sharedDigestKey
{
  v2 = [(NSData *)[(IDSDataChannelLinkContext *)self->_linkContext relaySessionKey] copy];

  return v2;
}

- (NSString)localInterfaceName
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  linkContext = self->_linkContext;

  return [(IDSDataChannelLinkContext *)linkContext performSelector:sel_localInterfaceName];
}

- (BOOL)isWifiToWifi
{
  v30 = *MEMORY[0x1E69E9840];
  IsLocalExpensive = VCConnection_IsLocalExpensive(self);
  IsRemoteExpensive = VCConnection_IsRemoteExpensive(self);
  IsLocalConstrained = VCConnection_IsLocalConstrained(self);
  IsRemoteConstrained = VCConnection_IsRemoteConstrained(self);
  v7 = ((IsLocalExpensive & 1) == 0 && !IsLocalConstrained || VCConnection_IsLocalOnWiFiOrWired(self)) && (((IsRemoteExpensive | IsRemoteConstrained) & 1) == 0 || VCConnection_IsRemoteOnWiFiOrWired(self));
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136317186;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCConnectionIDS isWifiToWifi]";
        v16 = 1024;
        v17 = 315;
        v18 = 1024;
        v19 = IsLocalExpensive;
        v20 = 1024;
        v21 = IsLocalConstrained;
        v22 = 1024;
        isLocalOn5G = [(VCConnectionIDS *)self isLocalOn5G];
        v24 = 1024;
        v25 = IsRemoteExpensive;
        v26 = 1024;
        v27 = IsRemoteConstrained & 1;
        v28 = 1024;
        isRemoteOn5G = [(VCConnectionIDS *)self isRemoteOn5G];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [Local] Expensive %d, constraint %d, 5G %d. [Remote] Expensive %d, constraint %d, 5G %d", &v12, 0x40u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136317186;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCConnectionIDS isWifiToWifi]";
      v16 = 1024;
      v17 = 315;
      v18 = 1024;
      v19 = IsLocalExpensive;
      v20 = 1024;
      v21 = IsLocalConstrained;
      v22 = 1024;
      isLocalOn5G = [(VCConnectionIDS *)self isLocalOn5G];
      v24 = 1024;
      v25 = IsRemoteExpensive;
      v26 = 1024;
      v27 = IsRemoteConstrained & 1;
      v28 = 1024;
      isRemoteOn5G = [(VCConnectionIDS *)self isRemoteOn5G];
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [Local] Expensive %d, constraint %d, 5G %d. [Remote] Expensive %d, constraint %d, 5G %d", &v12, 0x40u);
    }
  }

  return v7;
}

+ (id)VCConnectionIDS_RPS:(id)s
{
  if (!s)
  {
    +[VCConnectionIDS VCConnectionIDS_RPS:];
    return v6;
  }

  v3 = *(s + 44);
  if (!v3)
  {
    +[VCConnectionIDS VCConnectionIDS_RPS:];
    return v6;
  }

  v4 = v3;

  return v4;
}

+ (id)VCConnectionIDS_CDBPS:(id)s
{
  if (!s)
  {
    +[VCConnectionIDS VCConnectionIDS_CDBPS:];
    return v6;
  }

  v3 = *(s + 45);
  if (!v3)
  {
    +[VCConnectionIDS VCConnectionIDS_CDBPS:];
    return v6;
  }

  v4 = v3;

  return v4;
}

+ (unsigned)worstCaseNetworkOverheadInBytesWithNumOfStreamId:(int)id isPriorityIncluded:(BOOL)included
{
  if (included)
  {
    v4 = 45;
  }

  else
  {
    v4 = 44;
  }

  return ((id > 1) | (2 * id)) + v4 + 56;
}

- (int)localConnectionType
{
  if (VCConnection_IsLocalOnWiFiOrWired(self))
  {
    return 3;
  }

  VCConnection_LocalCellTech(self);

  return GetConnectionTypeFromCellTech();
}

- (int)remoteConnectionType
{
  if (VCConnection_IsRemoteOnWiFiOrWired(self))
  {
    return 3;
  }

  VCConnection_RemoteCellTech(self);

  return GetConnectionTypeFromCellTech();
}

- (NSString)localInterfaceTypeString
{
  VCConnection_IsLocalOnCellular(self);
  VCConnection_LocalCellTech(self);
  v3 = CelltechToStr();
  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:v3];
}

- (NSString)remoteInterfaceTypeString
{
  VCConnection_IsRemoteOnCellular(self);
  VCConnection_RemoteCellTech(self);
  v3 = CelltechToStr();
  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:v3];
}

- (void)setCellularMTU:(int)u
{
  if (VCConnection_IsLocalOnCellular(self))
  {
    self->_connectionMTU = u;
  }
}

- (unsigned)updateMaxConnectionMTU:(unsigned __int16)u
{
  uCopy = u;
  v28 = *MEMORY[0x1E69E9840];
  if ((VCConnection_IsLocalOnCellular(self) & 1) != 0 || VCConnection_IsRemoteOnCellular(self))
  {
    connectionMTU = self->_connectionMTU;
    if (VCConnection_IsIPv6(self))
    {
      v6 = 1280;
    }

    else
    {
      v6 = 1450;
    }

    if (connectionMTU)
    {
      v7 = connectionMTU;
    }

    else
    {
      v7 = uCopy;
    }

    v8 = v7;
    if (v7 >= v6)
    {
      v8 = v6;
    }

    v9 = v7;
    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    if (v10 != uCopy)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136316674;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCConnectionIDS updateMaxConnectionMTU:]";
          v18 = 1024;
          v19 = 506;
          v20 = 1024;
          v21 = uCopy;
          v22 = 1024;
          v23 = v10;
          v24 = 1024;
          IsLocalOnCellular = VCConnection_IsLocalOnCellular(self);
          v26 = 1024;
          v27 = v9;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d UpdateMTU MTU: %d -> %d Cellular: %d/%d", &v14, 0x34u);
        }
      }

      self->_maxConnectionMTU = v10;
      LOWORD(uCopy) = v10;
    }
  }

  return uCopy;
}

- (BOOL)isOnSameQRSessionWithConnection:(id)connection
{
  v16 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    connectionQRSessionID = [(VCConnectionIDS *)self connectionQRSessionID];
    connectionQRSessionID2 = [connection connectionQRSessionID];
    if (connectionQRSessionID && connectionQRSessionID2)
    {

      LOBYTE(connectionQRSessionID2) = [connectionQRSessionID isEqual:connectionQRSessionID2];
    }

    else
    {
      LOBYTE(connectionQRSessionID2) = (connectionQRSessionID | connectionQRSessionID2) == 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        LODWORD(connectionQRSessionID2) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (!connectionQRSessionID2)
        {
          return connectionQRSessionID2;
        }

        v10 = 136315650;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCConnectionIDS isOnSameQRSessionWithConnection:]";
        v14 = 1024;
        v15 = 536;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: connection to check is nil", &v10, 0x1Cu);
      }

      else
      {
        LODWORD(connectionQRSessionID2) = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (!connectionQRSessionID2)
        {
          return connectionQRSessionID2;
        }

        [VCConnectionIDS isOnSameQRSessionWithConnection:];
      }
    }

    LOBYTE(connectionQRSessionID2) = 0;
  }

  return connectionQRSessionID2;
}

- (BOOL)isOnSameInterfacesAndQRSessionWithConnection:(id)connection
{
  v30 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (connection)
  {
    v6 = MEMORY[0x1E6986640];
    v7 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      v10 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136316162;
          v21 = v8;
          v22 = 2080;
          v23 = "[VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:]";
          v24 = 1024;
          v25 = 554;
          v26 = 2080;
          uTF8String = [(NSString *)[(VCConnectionIDS *)self description] UTF8String];
          v28 = 2080;
          v29 = [objc_msgSend(connection "description")];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesAndQRSessionWithConnection: %s vs. %s", &v20, 0x30u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136316162;
        v21 = v8;
        v22 = 2080;
        v23 = "[VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:]";
        v24 = 1024;
        v25 = 554;
        v26 = 2080;
        uTF8String = [(NSString *)[(VCConnectionIDS *)self description] UTF8String];
        v28 = 2080;
        v29 = [objc_msgSend(connection "description")];
        _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameInterfacesAndQRSessionWithConnection: %s vs. %s", &v20, 0x30u);
      }
    }

    if (VCConnection_IsOnSameInterfacesWithConnection(self))
    {
      v14 = [(VCConnectionIDS *)self isOnSameQRSessionWithConnection:connection];
    }

    else
    {
      v14 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *v7;
      v17 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = "NO";
          v21 = v15;
          v20 = 136315906;
          v23 = "[VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:]";
          v22 = 2080;
          if (v14)
          {
            v18 = "YES";
          }

          v24 = 1024;
          v25 = 556;
          v26 = 2080;
          uTF8String = v18;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesAndQRSessionWithConnection: %s", &v20, 0x26u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(VCConnectionIDS *)v15 isOnSameInterfacesAndQRSessionWithConnection:v14, v16];
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315650;
          v21 = v11;
          v22 = 2080;
          v23 = "[VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:]";
          v24 = 1024;
          v25 = 551;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: connection to check is nil", &v20, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:];
      }
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (int)cellTechForSoMask:(unsigned int)mask fallbackTo:(int)to
{
  if (mask)
  {
    to = 5;
  }

  if ((mask & 8) != 0)
  {
    toCopy = 9;
  }

  else
  {
    toCopy = to;
  }

  if ((mask & 4) != 0)
  {
    return 8;
  }

  else
  {
    return toCopy;
  }
}

+ (void)VCConnectionIDS_RPS:.cold.1()
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

  OUTLINED_FUNCTION_11_11(&stru_1F570E008);
}

+ (void)VCConnectionIDS_RPS:.cold.2()
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

  OUTLINED_FUNCTION_11_11(&stru_1F570E008);
}

+ (void)VCConnectionIDS_CDBPS:.cold.1()
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

  OUTLINED_FUNCTION_11_11(&stru_1F570E008);
}

+ (void)VCConnectionIDS_CDBPS:.cold.2()
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

  OUTLINED_FUNCTION_11_11(&stru_1F570E008);
}

- (void)isOnSameQRSessionWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: connection to check is nil", v2, v3, v4, v5, v6);
}

- (void)isOnSameInterfacesAndQRSessionWithConnection:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = "NO";
  v5 = a1;
  v4 = 136315906;
  v7 = "[VCConnectionIDS isOnSameInterfacesAndQRSessionWithConnection:]";
  v6 = 2080;
  v8 = 1024;
  v9 = 556;
  if (a2)
  {
    v3 = "YES";
  }

  v10 = 2080;
  v11 = v3;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameInterfacesAndQRSessionWithConnection: %s", &v4, 0x26u);
}

- (void)isOnSameInterfacesAndQRSessionWithConnection:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: connection to check is nil", v2, v3, v4, v5, v6);
}

@end