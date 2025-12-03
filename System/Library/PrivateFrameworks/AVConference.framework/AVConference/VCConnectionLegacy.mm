@interface VCConnectionLegacy
- (BOOL)isLocalIPPort:(tagIPPORT *)port;
- (BOOL)isOnSameIPPortWithConnection:(id)connection;
- (BOOL)isWifiToWifi;
- (NSString)description;
- (NSString)localInterfaceTypeString;
- (NSString)remoteInterfaceTypeString;
- (VCConnectionLegacy)initWithCandidatePair:(tagCANDIDATEPAIR *)pair;
- (VCConnectionLegacy)initWithConnectionResult:(tagCONNRESULT *)result type:(unsigned int)type;
- (id)copy;
- (int)localConnectionType;
- (int)remoteConnectionType;
- (unsigned)downlinkBitrateCap;
- (unsigned)uplinkAudioBitrateCapOneToOne;
- (unsigned)uplinkBitrateCap;
- (unsigned)uplinkBitrateCapOneToOne;
- (void)dealloc;
- (void)downlinkBitrateCap;
- (void)setDownlinkBitrateCap:(unsigned int)cap;
- (void)setUpVTable;
- (void)setUplinkAudioBitrateCapOneToOne:(unsigned int)one;
- (void)setUplinkBitrateCap:(unsigned int)cap;
- (void)setUplinkBitrateCapOneToOne:(unsigned int)one;
- (void)uplinkAudioBitrateCapOneToOne;
- (void)uplinkBitrateCap;
- (void)uplinkBitrateCapOneToOne;
@end

@implementation VCConnectionLegacy

- (void)setUpVTable
{
  self->super._vTable.sourceDestinationInfo = _VCConnectionLegacy_SourceDestinationInfo;
  self->super._vTable.isLocalOnCellular = _VCConnectionLegacy_IsLocalOnCellular;
  self->super._vTable.isRemoteOnCellular = _VCConnectionLegacy_IsRemoteOnCellular;
  self->super._vTable.isIPv6 = _VCConnectionLegacy_IsIPv6;
  self->super._vTable.isRelay = _VCConnectionLegacy_IsRelay;
  self->super._vTable.matchesSourceDestinationInfo = _VCConnectionLegacy_MatchesSourceDestinationInfo;
  self->super._vTable.equal = _VCConnectionLegacy_Equal;
  self->super._vTable.localCellTech = _VCConnectionLegacy_LocalCellTech;
  self->super._vTable.setLocalCellTech = _VCConnectionLegacy_SetLocalCellTech;
  self->super._vTable.remoteCellTech = _VCConnectionLegacy_RemoteCellTech;
  self->super._vTable.setRemoteCellTech = _VCConnectionLegacy_SetRemoteCellTech;
  self->super._vTable.copyDescription = _VCConnectionLegacy_CopyDescription;
  self->super._vTable.isLocalOnWiFiOrWired = _VCConnectionLegacy_IsLocalOnWiFiOrWired;
  self->super._vTable.isRemoteOnWiFiOrWired = _VCConnectionLegacy_IsRemoteOnWiFiOrWired;
  self->super._vTable.isLocalOnWiFi = _VCConnectionLegacy_IsLocalOnWiFi;
  self->super._vTable.isRemoteOnWiFi = _VCConnectionLegacy_IsRemoteOnWiFi;
  self->super._vTable.isLocalOnWired = _VCConnectionLegacy_IsLocalOnWired;
  self->super._vTable.isRemoteOnWired = _VCConnectionLegacy_IsRemoteOnWired;
  self->super._vTable.isOnSameInterfacesWithConnection = _VCConnectionLegacy_IsOnSameInterfacesWithConnection;
  self->super._vTable.isEndToEndLink = _VCConnectionLegacy_IsEndToEndLink;
  self->super._vTable.connectionID = _VCConnectionLegacy_ConnectionID;
  self->super._vTable.isLocalExpensive = _VCConnectionLegacy_IsLocalExpensive;
  self->super._vTable.isLocalConstrained = _VCConnectionLegacy_IsLocalConstrained;
  self->super._vTable.isRemoteExpensive = _VCConnectionLegacy_IsRemoteExpensive;
  self->super._vTable.isRemoteConstrained = _VCConnectionLegacy_IsRemoteConstrained;
  self->super._vTable.reportingIPVersion = _VCConnectionLegacy_ReportingIPVersion;
  self->super._vTable.reportingQRServerConfig = _VCConnectionLegacy_ReportingQRServerConfig;
  self->super._vTable.reportingSliceStatus = _VCConnectionLegacy_ReportingSliceStatus;
  self->super._vTable.isHopByHopEncryptionSupported = _VCConnectionLegacy_IsHopByHopEncryptionSupported;
  self->super._vTable.qrExperiments = _VCConnectionLegacy_QRExperiments;
}

- (VCConnectionLegacy)initWithConnectionResult:(tagCONNRESULT *)result type:(unsigned int)type
{
  v23 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCConnectionLegacy;
  v6 = [(VCConnection *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->super._connectionType = 1;
    v8 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
    v7->_connectionResult = v8;
    memcpy(v8, result, sizeof(tagCONNRESULT));
    v9 = 48;
    if ((v7->_connectionResult->mbSrc.iFlags & 1) == 0)
    {
      v9 = 28;
    }

    v7->super._constantConnectionOverhead = v9;
    v7->_type = type;
    v7->super._priority = -1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [(NSString *)[(VCConnectionLegacy *)v7 description] UTF8String];
        *buf = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCConnectionLegacy initWithConnectionResult:type:]";
        v19 = 1024;
        v20 = 127;
        v21 = 2080;
        v22 = uTF8String;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: initWithConnectionResult: %s", buf, 0x26u);
      }
    }
  }

  return v7;
}

- (VCConnectionLegacy)initWithCandidatePair:(tagCANDIDATEPAIR *)pair
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v9[1], 0, 288);
  v8 = 0u;
  v9[0] = 0u;
  v3 = pair->var0.var1 == 5;
  LODWORD(v8) = pair->var0.var2;
  DWORD1(v9[0]) = v3;
  WORD5(v9[0]) = pair->var15;
  v4 = *&pair->var0.var7.szIfName[12];
  *(v9 + 12) = *&pair->var0.var7.iFlags;
  *(&v9[1] + 12) = v4;
  *(&v9[2] + 12) = *&pair->var0.var7.IP.abIPv6[12];
  *(&v9[5] + 12) = pair->var0.var6;
  v5 = *&pair->var1.var7.iFlags;
  v6 = *&pair->var1.var7.szIfName[12];
  *(&v9[5] + 4) = *&pair->var1.var7.IP.abIPv6[12];
  *(&v9[4] + 4) = v6;
  *(&v9[3] + 4) = v5;
  *(&v9[8] + 4) = pair->var1.var6;
  return [(VCConnectionLegacy *)self initWithConnectionResult:&v8 type:0];
}

- (id)copy
{
  v3 = [[VCConnectionLegacy alloc] initWithConnectionResult:[(VCConnectionLegacy *)self connectionResult] type:[(VCConnectionLegacy *)self type]];
  v3->super._priority = VCConnection_Priority(self);
  v3->_waitToBeNominated = [(VCConnectionLegacy *)self waitToBeNominated];
  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  connectionResult = self->_connectionResult;
  if (connectionResult)
  {
    free(connectionResult);
  }

  v4.receiver = self;
  v4.super_class = VCConnectionLegacy;
  [(VCConnection *)&v4 dealloc];
}

- (BOOL)isLocalIPPort:(tagIPPORT *)port
{
  v22 = *MEMORY[0x1E69E9840];
  connectionResult = self->_connectionResult;
  if (connectionResult)
  {
    if ((connectionResult->mbLocal.iFlags & 1) == (port->iFlags & 1))
    {
      if (connectionResult->mbLocal.iFlags)
      {
        if (*&connectionResult->mbLocal.IP.dwIPv4 == *&port->IP.dwIPv4 && *&connectionResult->mbLocal.IP.abIPv6[8] == *&port->IP.abIPv6[8])
        {
          goto LABEL_5;
        }
      }

      else if (connectionResult->mbLocal.IP.dwIPv4 == port->IP.dwIPv4)
      {
LABEL_5:
        v4 = connectionResult->mbLocal.wPort == port->wPort;
        goto LABEL_15;
      }
    }

    v4 = 0;
LABEL_15:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = "NO";
          v15 = v9;
          v14 = 136315906;
          v17 = "[VCConnectionLegacy isLocalIPPort:]";
          v16 = 2080;
          if (v4)
          {
            v12 = "YES";
          }

          v18 = 1024;
          v19 = 175;
          v20 = 2080;
          v21 = v12;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isLocalIPPort: %s", &v14, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [VCConnectionLegacy isLocalIPPort:];
      }
    }

    return v4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v5;
        v16 = 2080;
        v17 = "[VCConnectionLegacy isLocalIPPort:]";
        v18 = 1024;
        v19 = 171;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isLocalIPPort: NO", &v14, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [VCConnectionLegacy isLocalIPPort:];
    }
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (BOOL)isOnSameIPPortWithConnection:(id)connection
{
  v33 = *MEMORY[0x1E69E9840];
  connectionResult = self->_connectionResult;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (connection && connectionResult)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136316162;
          v24 = v7;
          v25 = 2080;
          v26 = "[VCConnectionLegacy isOnSameIPPortWithConnection:]";
          v27 = 1024;
          v28 = 200;
          v29 = 2080;
          uTF8String = [(NSString *)[(VCConnectionLegacy *)self description] UTF8String];
          v31 = 2080;
          v32 = [objc_msgSend(connection "description")];
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: %s vs. %s", &v23, 0x30u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v23 = 136316162;
        v24 = v7;
        v25 = 2080;
        v26 = "[VCConnectionLegacy isOnSameIPPortWithConnection:]";
        v27 = 1024;
        v28 = 200;
        v29 = 2080;
        uTF8String = [(NSString *)[(VCConnectionLegacy *)self description] UTF8String];
        v31 = 2080;
        v32 = [objc_msgSend(connection "description")];
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: %s vs. %s", &v23, 0x30u);
      }
    }

    v14 = self->_connectionResult;
    v15 = *(connection + 36);
    if ((v14->mbLocal.iFlags & 1) == (*(v15 + 28) & 1))
    {
      if (v14->mbLocal.iFlags)
      {
        if (*&v14->mbLocal.IP.dwIPv4 != *(v15 + 48) || *&v14->mbLocal.IP.abIPv6[8] != *(v15 + 56))
        {
          goto LABEL_40;
        }
      }

      else if (v14->mbLocal.IP.dwIPv4 != *(v15 + 48))
      {
        goto LABEL_40;
      }

      if (v14->mbLocal.wPort != *(v15 + 64) || (v14->mbDst.iFlags & 1) != (*(v15 + 148) & 1))
      {
        goto LABEL_40;
      }

      if (v14->mbDst.iFlags)
      {
        if (*&v14->mbDst.IP.dwIPv4 != *(v15 + 168) || *&v14->mbDst.IP.abIPv6[8] != *(v15 + 176))
        {
          goto LABEL_40;
        }
      }

      else if (v14->mbDst.IP.dwIPv4 != *(v15 + 168))
      {
        goto LABEL_40;
      }

      if (v14->mbDst.wPort == *(v15 + 184) && v14->bIfRelay == *(v15 + 20))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136315650;
            v24 = v18;
            v25 = 2080;
            v26 = "[VCConnectionLegacy isOnSameIPPortWithConnection:]";
            v27 = 1024;
            v28 = 205;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: YES", &v23, 0x1Cu);
          }
        }

        LOBYTE(v13) = 1;
        return v13;
      }
    }

LABEL_40:
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        v13 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (!v13)
        {
          return v13;
        }

        [VCConnectionLegacy isOnSameIPPortWithConnection:];
        goto LABEL_45;
      }

      v13 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v23 = 136315650;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCConnectionLegacy isOnSameIPPortWithConnection:]";
        v27 = 1024;
        v28 = 209;
        goto LABEL_44;
      }

      return v13;
    }

LABEL_45:
    LOBYTE(v13) = 0;
    return v13;
  }

  if (ErrorLogLevelForModule < 8)
  {
    goto LABEL_45;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  v11 = *MEMORY[0x1E6986650];
  v12 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (!v13)
    {
      return v13;
    }

    [VCConnectionLegacy isOnSameIPPortWithConnection:];
    goto LABEL_45;
  }

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v23 = 136315650;
    v24 = v10;
    v25 = 2080;
    v26 = "[VCConnectionLegacy isOnSameIPPortWithConnection:]";
    v27 = 1024;
    v28 = 197;
LABEL_44:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: NO", &v23, 0x1Cu);
    goto LABEL_45;
  }

  return v13;
}

- (BOOL)isWifiToWifi
{
  IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(self);
  if (IsLocalOnWiFi)
  {

    LOBYTE(IsLocalOnWiFi) = VCConnection_IsRemoteOnWiFi(self);
  }

  return IsLocalOnWiFi;
}

- (NSString)description
{
  v13 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[15] = v3;
  v12[14] = v3;
  v12[13] = v3;
  v12[11] = v3;
  v12[12] = v3;
  v12[9] = v3;
  v12[10] = v3;
  v12[7] = v3;
  v12[8] = v3;
  v12[5] = v3;
  v12[6] = v3;
  v12[3] = v3;
  v12[4] = v3;
  v12[1] = v3;
  v12[2] = v3;
  v11[15] = v3;
  v12[0] = v3;
  v11[13] = v3;
  v11[14] = v3;
  v11[11] = v3;
  v11[12] = v3;
  v11[9] = v3;
  v11[10] = v3;
  v11[7] = v3;
  v11[8] = v3;
  v11[5] = v3;
  v11[6] = v3;
  v11[3] = v3;
  v11[4] = v3;
  v11[1] = v3;
  v11[2] = v3;
  v10[15] = v3;
  v11[0] = v3;
  v10[13] = v3;
  v10[14] = v3;
  v10[11] = v3;
  v10[12] = v3;
  v10[9] = v3;
  v10[10] = v3;
  v10[7] = v3;
  v10[8] = v3;
  v10[5] = v3;
  v10[6] = v3;
  v10[3] = v3;
  v10[4] = v3;
  v10[1] = v3;
  v10[2] = v3;
  v9[15] = v3;
  v10[0] = v3;
  v9[13] = v3;
  v9[14] = v3;
  v9[11] = v3;
  v9[12] = v3;
  v9[9] = v3;
  v9[10] = v3;
  v9[7] = v3;
  v9[8] = v3;
  v9[5] = v3;
  v9[6] = v3;
  v9[3] = v3;
  v9[4] = v3;
  v9[1] = v3;
  v9[2] = v3;
  v9[0] = v3;
  _VCConnectionLegacy_IPPortToString(&self->_connectionResult->mbLocal, v12);
  _VCConnectionLegacy_IPPortToString(&self->_connectionResult->mbSrc, v11);
  _VCConnectionLegacy_IPPortToString(&self->_connectionResult->mbDst, v10);
  _VCConnectionLegacy_IPPortToString(&self->_connectionResult->mbRemote, v9);
  v4 = *MEMORY[0x1E695E480];
  if (VCConnection_IsRelay(self))
  {
    v5 = "RELAY";
  }

  else
  {
    v5 = "NOT RELAY";
  }

  if (VCConnection_IsLocalOnWiFi(self))
  {
    v6 = "WiFi";
  }

  else
  {
    v6 = "Cell";
  }

  if (VCConnection_IsRemoteOnWiFi(self))
  {
    v7 = "WiFi";
  }

  else
  {
    v7 = "Cell";
  }

  return CFStringCreateWithFormat(v4, 0, @"[%s %s(%s)<>%s<===>%s<>%s(%s)]", v5, v12, v6, v11, v10, v9, v7);
}

- (int)localConnectionType
{
  if (VCConnection_IsLocalOnWiFi(self))
  {
    return 3;
  }

  VCConnection_LocalCellTech(self);

  return GetConnectionTypeFromCellTech();
}

- (int)remoteConnectionType
{
  if (VCConnection_IsRemoteOnWiFi(self))
  {
    return 3;
  }

  VCConnection_RemoteCellTech(self);

  return GetConnectionTypeFromCellTech();
}

- (unsigned)downlinkBitrateCap
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy downlinkBitrateCap];
    }
  }

  return 0;
}

- (unsigned)uplinkBitrateCap
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy uplinkBitrateCap];
    }
  }

  return 0;
}

- (void)setDownlinkBitrateCap:(unsigned int)cap
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy setDownlinkBitrateCap:];
    }
  }
}

- (void)setUplinkBitrateCap:(unsigned int)cap
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy setUplinkBitrateCap:];
    }
  }
}

- (unsigned)uplinkAudioBitrateCapOneToOne
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy uplinkAudioBitrateCapOneToOne];
    }
  }

  return 0;
}

- (void)setUplinkAudioBitrateCapOneToOne:(unsigned int)one
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy setUplinkAudioBitrateCapOneToOne:];
    }
  }
}

- (unsigned)uplinkBitrateCapOneToOne
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy uplinkBitrateCapOneToOne];
    }
  }

  return 0;
}

- (void)setUplinkBitrateCapOneToOne:(unsigned int)one
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCConnectionLegacy setUplinkBitrateCapOneToOne:];
    }
  }
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

- (void)isLocalIPPort:.cold.1()
{
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)isLocalIPPort:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: isLocalIPPort: NO", v2, v3, v4, v5, v6);
}

- (void)isOnSameIPPortWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: NO", v2, v3, v4, v5, v6);
}

- (void)isOnSameIPPortWithConnection:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCConnection: isOnSameIPPortWithConnection: NO", v2, v3, v4, v5, v6);
}

- (void)downlinkBitrateCap
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Downlink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)uplinkBitrateCap
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)setDownlinkBitrateCap:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Setting downlink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)setUplinkBitrateCap:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Setting uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)uplinkAudioBitrateCapOneToOne
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)setUplinkAudioBitrateCapOneToOne:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Setting uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)uplinkBitrateCapOneToOne
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

- (void)setUplinkBitrateCapOneToOne:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Setting uplink bitrate cap is not implemented for legacy VCConnection", v2, v3, v4, v5, v6);
}

@end