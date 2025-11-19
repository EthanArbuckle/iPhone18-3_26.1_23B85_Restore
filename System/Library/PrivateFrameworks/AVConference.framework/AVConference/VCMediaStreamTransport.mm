@interface VCMediaStreamTransport
+ (BOOL)isSameSRTPKey:(id)a3 newKey:(id)a4;
+ (int)SRTPCipherSuiteForVCMediaStreamCipherSuite:(int64_t)a3;
+ (int)getSRTPMediaKeyLength:(int64_t)a3;
- (BOOL)configureWithStreamConfig:(id)a3 setupInfo:(_VCMediaStreamTransportSetupInfo *)a4 reducedSizeRTCPPackets:(BOOL)a5 hopByHopEncryptRTCPPackets:(BOOL)a6 statisticsCollector:(id)a7 basebandCongestionDetector:(id)a8 error:(id *)a9;
- (BOOL)generateRTCPXRSummaryReport:(tagVCRTCPXRSummaryReport *)a3 reportCount:(char *)a4;
- (BOOL)generateRTCPXRVoIPMetricsReport:(tagVCRTCPXRVoIPMetricsReport *)a3 reportCount:(char *)a4;
- (BOOL)generateReceptionReport:(_RTCP_RECEPTION_REPORT *)a3 reportCount:(char *)a4;
- (BOOL)isDecryptionTimeoutEnabled;
- (BOOL)isRTCPSendEnabled;
- (BOOL)isRTCPTimeoutEnabled;
- (BOOL)isRTPTimeoutEnabled;
- (BOOL)isSameSRTPConfig:(id)a3;
- (BOOL)isSendingMedia:(id)a3;
- (BOOL)setupRTPForIDS:(id *)a3;
- (BOOL)setupRTPWithIPInfo:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4;
- (BOOL)setupRTPWithNWConnection:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4;
- (BOOL)setupRTPWithSockets:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4;
- (BOOL)setupRTPWithTransportSetupInfo:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4;
- (BOOL)setupSframeCryptorsWithError:(id *)a3;
- (VCMediaStreamTransport)initWithHandle:(tagHANDLE *)a3 localSSRC:(unsigned int)a4;
- (double)lastReceivedRTCPPacketTime;
- (id)rxNetworkPayloads;
- (int)getCryptoSet:(tagSRTPExchangeInfo *)a3 withMediaKey:(id)a4;
- (int)onStart;
- (int)setupRTPWithTransportStreams;
- (int)setupSRTP;
- (tagVCCryptor)createSframeCryptorWithStreamConfig:(id)a3 ssrc:(unsigned int)a4 error:(id *)a5;
- (unsigned)getExtendedSequenceNumberForSequenceNumber:(unsigned __int16)a3;
- (unsigned)getRTCPReportNTPTimeMiddle32ForReportId:(unsigned __int8)a3;
- (unsigned)idsStreamId;
- (void)dealloc;
- (void)handleEncryptionInfoChange:(id)a3;
- (void)lastReceivedRTCPPacketTime;
- (void)onStop;
- (void)registerRTPPayloadMappings;
- (void)setBasebandCongestionDetector:(id)a3;
- (void)setRtcpEnabled:(BOOL)a3;
- (void)setRtcpSendInterval:(double)a3;
- (void)setStreamDirection:(int64_t)a3;
- (void)setupSRTP;
- (void)updateLastGeneratedKeyMaterial;
@end

@implementation VCMediaStreamTransport

- (VCMediaStreamTransport)initWithHandle:(tagHANDLE *)a3 localSSRC:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaStreamTransport;
  result = [(VCMediaStreamTransport *)&v7 init];
  if (result)
  {
    result->_payloadType = 1;
    result->_rtpHandle = a3;
    result->_localSSRC = a4;
  }

  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  RTPCloseHandle();

  receiverSframeCryptor = self->_receiverSframeCryptor;
  if (receiverSframeCryptor)
  {
    CFRelease(receiverSframeCryptor);
  }

  transmitterSframeCryptor = self->_transmitterSframeCryptor;
  if (transmitterSframeCryptor)
  {
    CFRelease(transmitterSframeCryptor);
  }

  defaultMediaKeyIndex = self->_defaultMediaKeyIndex;
  if (defaultMediaKeyIndex)
  {
    CFRelease(defaultMediaKeyIndex);
  }

  v6.receiver = self;
  v6.super_class = VCMediaStreamTransport;
  [(VCMediaStreamTransport *)&v6 dealloc];
}

- (void)setBasebandCongestionDetector:(id)a3
{
  self->_basebandCongestionDetector = a3;
  rtpHandle = self->_rtpHandle;

  RTPSetBasebandCongestionDetector(rtpHandle, a3);
}

- (BOOL)isSameSRTPConfig:(id)a3
{
  v5 = [(VCMediaStreamConfig *)self->_streamConfig SRTPCipherSuite];
  if (v5 != [a3 SRTPCipherSuite])
  {
    return 0;
  }

  v6 = [(VCMediaStreamConfig *)self->_streamConfig SRTCPCipherSuite];
  if (v6 != [a3 SRTCPCipherSuite] || !+[VCMediaStreamTransport isSameSRTPKey:newKey:](VCMediaStreamTransport, "isSameSRTPKey:newKey:", -[VCMediaStreamConfig sendMediaKey](self->_streamConfig, "sendMediaKey"), objc_msgSend(a3, "sendMediaKey")))
  {
    return 0;
  }

  v7 = [(VCMediaStreamConfig *)self->_streamConfig receiveMediaKey];
  v8 = [a3 receiveMediaKey];

  return [VCMediaStreamTransport isSameSRTPKey:v7 newKey:v8];
}

- (void)updateLastGeneratedKeyMaterial
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }
}

- (void)onStop
{
  if (self->_transportStreamInfo.creationCallback)
  {
    RTPClearTransportStreams();
  }
}

- (BOOL)configureWithStreamConfig:(id)a3 setupInfo:(_VCMediaStreamTransportSetupInfo *)a4 reducedSizeRTCPPackets:(BOOL)a5 hopByHopEncryptRTCPPackets:(BOOL)a6 statisticsCollector:(id)a7 basebandCongestionDetector:(id)a8 error:(id *)a9
{
  v90 = a7;
  v10 = a6;
  v11 = a5;
  v105 = *MEMORY[0x1E69E9840];
  LODWORD(v91) = [(VCMediaStreamTransport *)self isSameSRTPConfig:?];

  self->_streamConfig = a3;
  defaultMediaKeyIndex = self->_defaultMediaKeyIndex;
  v16 = a4->defaultMediaKeyIndex;
  self->_defaultMediaKeyIndex = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (defaultMediaKeyIndex)
  {
    CFRelease(defaultMediaKeyIndex);
  }

  if (![(VCMediaStreamTransport *)self setupRTPWithTransportSetupInfo:a4 error:a9])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_139;
      }

      v49 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v51 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v48)
        {
          return v48;
        }

        if (a9)
        {
          if (*a9)
          {
            v52 = [objc_msgSend(*a9 "description")];
          }

          else
          {
            v52 = "<nil>";
          }
        }

        else
        {
          v52 = "";
        }

        *buf = 136315906;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 153;
        *&buf[28] = 2080;
        *&buf[30] = v52;
        v69 = " [%s] %s:%d Setup error[%s]";
        goto LABEL_137;
      }

      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
      if (!v48)
      {
        return v48;
      }

      if (a9)
      {
        if (*a9)
        {
          v70 = [objc_msgSend(*a9 "description")];
        }

        else
        {
          v70 = "<nil>";
        }
      }

      else
      {
        v70 = "";
      }

      *buf = 136315906;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 153;
      *&buf[28] = 2080;
      *&buf[30] = v70;
      v80 = " [%s] %s:%d Setup error[%s]";
      v81 = v51;
      v82 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_139;
      }

      v54 = VRTraceErrorLogLevelToCSTR();
      v55 = VRTraceIsOSFaultDisabled();
      v56 = *MEMORY[0x1E6986650];
      if (v55)
      {
        v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v48)
        {
          return v48;
        }

        if (a9)
        {
          if (*a9)
          {
            v57 = [objc_msgSend(*a9 "description")];
          }

          else
          {
            v57 = "<nil>";
          }
        }

        else
        {
          v57 = "";
        }

        *buf = 136316418;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 153;
        *&buf[28] = 2112;
        *&buf[30] = v19;
        *&buf[38] = 2048;
        *&buf[40] = self;
        v103 = 2080;
        v104 = v57;
        v69 = " [%s] %s:%d %@(%p) Setup error[%s]";
        v79 = v56;
        goto LABEL_132;
      }

      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
      if (!v48)
      {
        return v48;
      }

      if (a9)
      {
        if (*a9)
        {
          v59 = [objc_msgSend(*a9 "description")];
        }

        else
        {
          v59 = "<nil>";
        }
      }

      else
      {
        v59 = "";
      }

      *buf = 136316418;
      *&buf[4] = v54;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 153;
      *&buf[28] = 2112;
      *&buf[30] = v19;
      *&buf[38] = 2048;
      *&buf[40] = self;
      v103 = 2080;
      v104 = v59;
      v80 = " [%s] %s:%d %@(%p) Setup error[%s]";
      v81 = v56;
      v82 = 58;
    }

    _os_log_fault_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_FAULT, v80, buf, v82);
    goto LABEL_139;
  }

  v89 = a9;
  setupType = a4->setupType;
  if (setupType <= 1)
  {
    if (a4->setupType)
    {
      if (setupType != 1)
      {
        goto LABEL_28;
      }

      if (![(NSString *)[(VCNetworkAddress *)[(VCMediaStreamConfig *)self->_streamConfig remoteAddress] ip] length])
      {
        *&v101.sa_len = 0xAAAAAAAAAAAAAAAALL;
        *&v101.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
        v92 = 16;
        if (getpeername(a4->var0.socketInfo.rtpSocket, &v101, &v92) != -1)
        {
          v100 = 0xAAAAAAAAAAAAAAAALL;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v98 = v20;
          v99 = v20;
          *&buf[16] = v20;
          *&buf[32] = v20;
          *buf = v20;
          v87 = a4;
          SAToIPPORT();
          IPToString();
          v21 = [(VCMediaStreamConfig *)self->_streamConfig remoteAddress];
          -[VCNetworkAddress setIp:](v21, "setIp:", [MEMORY[0x1E696AEC0] stringWithUTF8String:buf]);
          [(VCNetworkAddress *)v21 setPort:WORD2(v100)];
          -[VCNetworkAddress setInterfaceName:](v21, "setInterfaceName:", [MEMORY[0x1E696AEC0] stringWithUTF8String:&v98 + 4]);
          if (v98)
          {
            v22 = 6;
          }

          else
          {
            v22 = 4;
          }

          [(VCNetworkAddress *)v21 setIpVersion:v22];
        }
      }
    }
  }

  else
  {
    if (setupType == 6)
    {
LABEL_10:
      datagramChannelToken = a4->datagramChannelToken;
      if (datagramChannelToken)
      {
        RTPSetDestinationWithToken(self->_rtpHandle, datagramChannelToken, 0);
      }

      goto LABEL_28;
    }

    if (setupType != 3)
    {
      if (setupType != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_10;
    }
  }

  v23 = [(VCMediaStreamConfig *)self->_streamConfig remoteAddress];
  if (![(NSString *)[(VCNetworkAddress *)v23 ip] length])
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v89, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", 192], @"Invalid Parameter", @"Call with empty remoteIP address");
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v58 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v58 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_139;
      }

      v73 = VRTraceErrorLogLevelToCSTR();
      v67 = *MEMORY[0x1E6986650];
      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v48)
      {
        return v48;
      }

      if (v89)
      {
        if (*v89)
        {
          v74 = [objc_msgSend(*v89 "description")];
        }

        else
        {
          v74 = "<nil>";
        }
      }

      else
      {
        v74 = "";
      }

      *buf = 136316418;
      *&buf[4] = v73;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 195;
      *&buf[28] = 2112;
      *&buf[30] = v58;
      *&buf[38] = 2048;
      *&buf[40] = self;
      v103 = 2080;
      v104 = v74;
      v69 = " [%s] %s:%d %@(%p) error[%s]";
LABEL_131:
      v79 = v67;
LABEL_132:
      v83 = 58;
LABEL_138:
      _os_log_error_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_ERROR, v69, buf, v83);
      goto LABEL_139;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_139;
    }

    v71 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x1E6986650];
    v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      return v48;
    }

    if (v89)
    {
      if (*v89)
      {
        v72 = [objc_msgSend(*v89 "description")];
      }

      else
      {
        v72 = "<nil>";
      }
    }

    else
    {
      v72 = "";
    }

    *buf = 136315906;
    *&buf[4] = v71;
    *&buf[12] = 2080;
    *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
    *&buf[22] = 1024;
    *&buf[24] = 195;
    *&buf[28] = 2080;
    *&buf[30] = v72;
    v69 = " [%s] %s:%d error[%s]";
LABEL_137:
    v79 = v51;
    v83 = 38;
    goto LABEL_138;
  }

  v100 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v98 = v24;
  v99 = v24;
  *&buf[16] = v24;
  *&buf[32] = v24;
  *buf = v24;
  [(NSString *)[(VCNetworkAddress *)v23 ip] UTF8String];
  v88 = a8;
  v25 = a3;
  v26 = a4;
  [(VCNetworkAddress *)v23 port];
  MakeIPPORT();
  IPToString();
  v27 = RTPGetPacketMultiplexMode();
  v28 = v11;
  v29 = v10;
  rtpHandle = self->_rtpHandle;
  v31 = [(VCNetworkAddress *)v23 isIPv6];
  v32 = v27 == 2;
  a4 = v26;
  a3 = v25;
  a8 = v88;
  if (v32)
  {
    v33 = WORD2(v100);
  }

  else
  {
    v33 = WORD2(v100) + 1;
  }

  v34 = rtpHandle;
  v10 = v29;
  v11 = v28;
  RTPSetDestination(v34, v31, buf, WORD2(v100), v33, 0, 1);
LABEL_28:
  RTPSetStreamDirection(self->_rtpHandle, [(VCMediaStreamConfig *)self->_streamConfig direction]);
  self->_rtcpXREnabled = VCDefaults_GetBoolValueForKey(@"rtcpXrEnabled", [(VCMediaStreamConfig *)self->_streamConfig isRTCPXREnabled]);
  RTPSetRTCPEnabled(self->_rtpHandle, [(VCMediaStreamConfig *)self->_streamConfig isRTCPEnabled]);
  RTPSetRTCPXREnabled(self->_rtpHandle, self->_rtcpXREnabled);
  [(VCMediaStreamConfig *)self->_streamConfig rtcpSendInterval];
  RTPSetRTCPSendInterval(v35);
  isSRTPInitialized = self->_isSRTPInitialized;
  if (!(v91 & 1 | !isSRTPInitialized))
  {
    SRTPCleanUpEncryption();
    isSRTPInitialized = self->_isSRTPInitialized;
  }

  v37 = v89;
  if ((isSRTPInitialized & v91 & 1) == 0)
  {
    v38 = [(VCMediaStreamTransport *)self setupSRTP];
    if ((v38 & 0x80000000) == 0)
    {
      self->_isSRTPInitialized = 1;
      goto LABEL_33;
    }

    v60 = v38;
    v61 = v38;
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", 234];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", v89, 32018, 238, v61, v62, @"Failed to setup SRTP encryption", [MEMORY[0x1E696AEC0] stringWithFormat:@"setupSRTP failed with error %d", v60]);
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v63 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v63 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_139;
      }

      v77 = VRTraceErrorLogLevelToCSTR();
      v67 = *MEMORY[0x1E6986650];
      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v48)
      {
        return v48;
      }

      if (v89)
      {
        if (*v89)
        {
          v78 = [objc_msgSend(*v89 "description")];
        }

        else
        {
          v78 = "<nil>";
        }
      }

      else
      {
        v78 = "";
      }

      *buf = 136316418;
      *&buf[4] = v77;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 237;
      *&buf[28] = 2112;
      *&buf[30] = v63;
      *&buf[38] = 2048;
      *&buf[40] = self;
      v103 = 2080;
      v104 = v78;
      v69 = " [%s] %s:%d %@(%p) SRTP setup error[%s]";
      goto LABEL_131;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_139;
    }

    v75 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x1E6986650];
    v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      return v48;
    }

    if (v89)
    {
      if (*v89)
      {
        v76 = [objc_msgSend(*v89 "description")];
      }

      else
      {
        v76 = "<nil>";
      }
    }

    else
    {
      v76 = "";
    }

    *buf = 136315906;
    *&buf[4] = v75;
    *&buf[12] = 2080;
    *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
    *&buf[22] = 1024;
    *&buf[24] = 237;
    *&buf[28] = 2080;
    *&buf[30] = v76;
    v69 = " [%s] %s:%d SRTP setup error[%s]";
    goto LABEL_137;
  }

LABEL_33:
  if (![(VCMediaStreamTransport *)self setupSframeCryptorsWithError:v37])
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v53 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v53 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_139;
      }

      v66 = VRTraceErrorLogLevelToCSTR();
      v67 = *MEMORY[0x1E6986650];
      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v48)
      {
        return v48;
      }

      v68 = *v37;
      *buf = 136316418;
      *&buf[4] = v66;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 245;
      *&buf[28] = 2112;
      *&buf[30] = v53;
      *&buf[38] = 2048;
      *&buf[40] = self;
      v103 = 2112;
      v104 = v68;
      v69 = " [%s] %s:%d %@(%p) SFrame cryptors setup error[%@]";
      goto LABEL_131;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v64 = VRTraceErrorLogLevelToCSTR();
      v65 = *MEMORY[0x1E6986650];
      v48 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v48)
      {
        return v48;
      }

      [VCMediaStreamTransport configureWithStreamConfig:v64 setupInfo:v37 reducedSizeRTCPPackets:v65 hopByHopEncryptRTCPPackets:? statisticsCollector:? basebandCongestionDetector:? error:?];
    }

LABEL_139:
    LOBYTE(v48) = 0;
    return v48;
  }

  if ([(NSString *)[(VCMediaStreamConfig *)self->_streamConfig cName] length])
  {
    RTPSetCName(self->_rtpHandle, [(NSString *)[(VCMediaStreamConfig *)self->_streamConfig cName] UTF8String]);
  }

  v88 = a8;
  if ([(VCMediaStreamConfig *)self->_streamConfig defaultRemoteSSRC])
  {
    RTPSetRemoteSSRC(self->_rtpHandle, [(VCMediaStreamConfig *)[(VCMediaStreamTransport *)self streamConfig] defaultRemoteSSRC]);
  }

  [(VCMediaStreamTransport *)self registerRTPPayloadMappings];
  v39 = [(VCMediaStreamTransport *)self rxNetworkPayloads];
  v40 = [v39 count];
  v91 = &v85;
  v41 = (4 * v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v85 - v41;
  if (v40)
  {
    memset(&v85 - v41, 170, 4 * v40);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v43 = [v39 countByEnumeratingWithState:&v94 objects:v93 count:16];
  if (v43)
  {
    v44 = v43;
    v85 = a3;
    v86 = v11;
    LODWORD(v89) = v10;
    v87 = a4;
    v11 = 0;
    v45 = *v95;
    do
    {
      v46 = 0;
      v47 = v11;
      do
      {
        if (*v95 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v11 = v47 + 1;
        *&v42[4 * v47++] = [*(*(&v94 + 1) + 8 * v46++) intValue];
      }

      while (v44 != v46);
      v44 = [v39 countByEnumeratingWithState:&v94 objects:v93 count:16];
    }

    while (v44);
    RTPSetRxPayloadList(self->_rtpHandle, v11, v42);
    a4 = v87;
    LOBYTE(v10) = v89;
    LOBYTE(v11) = v86;
    a3 = v85;
  }

  if ([a3 cellularUniqueTag])
  {
    RTPSetCellularUniqueTag(self->_rtpHandle, [a3 cellularUniqueTag]);
  }

  RTPSetSourceRate(self->_rtpHandle, a4->sourceRate);
  RTCPReducedSizePackets(self->_rtpHandle, v11);
  RTCPSetHopByHopEncryptionEnabled(self->_rtpHandle, v10);
  RTCPSetEnableReceptionFromMultipleSSRC(self->_rtpHandle, a4->var0.ipInfo.srcIPPORT.szIfName[14]);
  RTPSetStatisticsCollector(self->_rtpHandle, v90);
  [(VCMediaStreamTransport *)self setBasebandCongestionDetector:v88];
  LOBYTE(v48) = 1;
  return v48;
}

- (BOOL)isSendingMedia:(id)a3
{
  v4 = [a3 direction];
  if (v4 != 1)
  {
    LOBYTE(v4) = [a3 direction] == 3;
  }

  return v4;
}

- (tagVCCryptor)createSframeCryptorWithStreamConfig:(id)a3 ssrc:(unsigned int)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v13 = 0;
  if (![a3 securityKeyHolder])
  {
    v10 = @"Invalid SecurityKeyHolder";
    v9 = -2143748095;
LABEL_6:
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a5, 32038, 118, v9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", 301], @"Create SFrame cryptor failed", v10);
    return v13;
  }

  v14 = bswap32(a4);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:4];
  v9 = VCCryptor_Create(*MEMORY[0x1E695E480], [a3 sframeCipherSuite], v8, objc_msgSend(a3, "securityKeyHolder"), 0, &v13);
  if (v9 < 0)
  {
    v10 = @"VCCryptor_Create failed";
  }

  else
  {
    v10 = 0;
  }

  v11 = v13;
  if (!v13)
  {
    goto LABEL_6;
  }

  return v11;
}

- (BOOL)setupSframeCryptorsWithError:(id *)a3
{
  receiverSframeCryptor = self->_receiverSframeCryptor;
  if (receiverSframeCryptor)
  {
    CFRelease(receiverSframeCryptor);
    self->_receiverSframeCryptor = 0;
  }

  transmitterSframeCryptor = self->_transmitterSframeCryptor;
  if (transmitterSframeCryptor)
  {
    CFRelease(transmitterSframeCryptor);
    self->_transmitterSframeCryptor = 0;
  }

  if (![(VCMediaStreamConfig *)self->_streamConfig sframeCipherSuite])
  {
    goto LABEL_9;
  }

  v7 = [(VCMediaStreamTransport *)self createSframeCryptorWithStreamConfig:self->_streamConfig ssrc:[(VCMediaStreamConfig *)self->_streamConfig defaultRemoteSSRC] error:a3];
  self->_receiverSframeCryptor = v7;
  if (v7)
  {
    if (![(VCMediaStreamTransport *)self isSendingMedia:self->_streamConfig]|| (v8 = [(VCMediaStreamTransport *)self createSframeCryptorWithStreamConfig:self->_streamConfig ssrc:self->_localSSRC error:a3], (self->_transmitterSframeCryptor = v8) != 0))
    {
LABEL_9:
      LOBYTE(v9) = 1;
      return v9;
    }

    [VCMediaStreamTransport setupSframeCryptorsWithError:];
  }

  else
  {
    [VCMediaStreamTransport setupSframeCryptorsWithError:];
  }

  v10 = self->_receiverSframeCryptor;
  if (v10)
  {
    CFRelease(v10);
    self->_receiverSframeCryptor = 0;
  }

  v9 = self->_transmitterSframeCryptor;
  if (v9)
  {
    CFRelease(v9);
    LOBYTE(v9) = 0;
    self->_transmitterSframeCryptor = 0;
  }

  return v9;
}

+ (int)getSRTPMediaKeyLength:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return -1;
  }

  else
  {
    return dword_1DBD4F350[a3];
  }
}

+ (int)SRTPCipherSuiteForVCMediaStreamCipherSuite:(int64_t)a3
{
  if ((a3 + 1) >= 0xD)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (BOOL)isSameSRTPKey:(id)a3 newKey:(id)a4
{
  if (a3)
  {
    return [a3 isEqualToData:a4];
  }

  else
  {
    return a4 == 0;
  }
}

- (int)getCryptoSet:(tagSRTPExchangeInfo *)a3 withMediaKey:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = [(VCMediaStreamConfig *)self->_streamConfig SRTPCipherSuite];
  v8 = [(VCMediaStreamConfig *)self->_streamConfig SRTCPCipherSuite];
  v9 = [VCMediaStreamTransport getSRTPMediaKeyLength:v7];
  if (v9 <= [VCMediaStreamTransport getSRTPMediaKeyLength:v8])
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [VCMediaStreamTransport getSRTPMediaKeyLength:v10];
  v12 = (v11 + 14);
  v13 = (v12 + 15) & 0x1FFFFFFF0;
  v14 = &buf[-v13];
  if (v11 != -14)
  {
    memset(&buf[-v13], 170, v12);
  }

  if (v7 | v8)
  {
    if (v12 != [a4 length])
    {
      v17 = -2145255423;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v17;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v17;
        }

        v22 = [a4 length];
        *buf = 136316162;
        v30 = v20;
        v31 = 2080;
        v32 = "[VCMediaStreamTransport getCryptoSet:withMediaKey:]";
        v33 = 1024;
        v34 = 397;
        v35 = 1024;
        *v36 = v12;
        *&v36[4] = 1024;
        *&v36[6] = v22;
        v23 = " [%s] %s:%d unexpected media key/salt length (expected[%d], given[%d])";
        v24 = v21;
        v25 = 40;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
        }

        else
        {
          v19 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v17;
        }

        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v17;
        }

        v28 = [a4 length];
        *buf = 136316674;
        v30 = v26;
        v31 = 2080;
        v32 = "[VCMediaStreamTransport getCryptoSet:withMediaKey:]";
        v33 = 1024;
        v34 = 397;
        v35 = 2112;
        *v36 = v19;
        *&v36[8] = 2048;
        v37 = self;
        v38 = 1024;
        v39 = v12;
        v40 = 1024;
        v41 = v28;
        v23 = " [%s] %s:%d %@(%p) unexpected media key/salt length (expected[%d], given[%d])";
        v24 = v27;
        v25 = 60;
      }

      _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      return v17;
    }

    [a4 getBytes:v14 length:v12];
  }

  else
  {
    bzero(v14, v12);
  }

  ByteToHex(a3, 65, v14, v11);
  ByteToHex(a3->var1, 29, &v14[v11], 14);
  var2 = a3->var2;
  defaultMediaKeyIndex = self->_defaultMediaKeyIndex;
  a3->var2 = defaultMediaKeyIndex;
  if (defaultMediaKeyIndex)
  {
    CFRetain(defaultMediaKeyIndex);
  }

  if (var2)
  {
    CFRelease(var2);
  }

  return 0;
}

- (int)setupSRTP
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = SRTPPrepareEncryption();
  if ((v3 & 0x80000000) == 0)
  {
    if (![+[VCDefaults forceDisableMediaEncryption] sharedInstance]
    {
      goto LABEL_25;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315650;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport setupSRTP]";
      *&buf[22] = 1024;
      *&buf[24] = 441;
      v9 = " [%s] %s:%d Disabling rtp and rtcp encryption";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136316162;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMediaStreamTransport setupSRTP]";
      *&buf[22] = 1024;
      *&buf[24] = 441;
      *&buf[28] = 2112;
      *&buf[30] = v4;
      *&buf[38] = 2048;
      *&buf[40] = self;
      v9 = " [%s] %s:%d %@(%p) Disabling rtp and rtcp encryption";
      v10 = v15;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_24:
    [(VCMediaStreamConfig *)self->_streamConfig setSRTPCipherSuite:0];
    [(VCMediaStreamConfig *)self->_streamConfig setSRTCPCipherSuite:0];
LABEL_25:
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    memset(buf, 0, sizeof(buf));
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v16 = [(VCMediaStreamTransport *)self getCryptoSet:buf withMediaKey:[(VCMediaStreamConfig *)self->_streamConfig sendMediaKey]];
    if (v16 < 0)
    {
      [(VCMediaStreamTransport *)self setupSRTP];
    }

    else
    {
      v17 = [(VCMediaStreamTransport *)self getCryptoSet:v66 withMediaKey:[(VCMediaStreamConfig *)[(VCMediaStreamTransport *)self streamConfig] receiveMediaKey]];
      if ((v17 & 0x80000000) == 0)
      {
        v18 = [VCMediaStreamTransport SRTPCipherSuiteForVCMediaStreamCipherSuite:[(VCMediaStreamConfig *)self->_streamConfig SRTPCipherSuite]];
        v19 = [VCMediaStreamTransport SRTPCipherSuiteForVCMediaStreamCipherSuite:[(VCMediaStreamConfig *)self->_streamConfig SRTCPCipherSuite]];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_38;
          }

          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v23 = _VCMediaStreamTransport_CipherSuiteAsString(v18);
          v24 = _VCMediaStreamTransport_CipherSuiteAsString(v19);
          v25 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)self->_streamConfig multiwayConfig] isOneToOne];
          v26 = FourccToCStr([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)self->_streamConfig multiwayConfig] streamGroupID]);
          v50 = 136316674;
          v51 = v21;
          v52 = 2080;
          v53 = "[VCMediaStreamTransport setupSRTP]";
          v54 = 1024;
          v55 = 458;
          v56 = 2112;
          v57 = v23;
          v58 = 2112;
          v59 = v24;
          v60 = 1024;
          *v61 = v25;
          *&v61[4] = 2080;
          *&v61[6] = v26;
          v27 = " [%s] %s:%d Configuring srtpCipherSuite=%@, srtcpCipherSuite=%@, isOneToOne=%{BOOL}d, streamGroupID=%s";
          v28 = v22;
          v29 = 64;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v20 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
          }

          else
          {
            v20 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_38;
          }

          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v32 = _VCMediaStreamTransport_CipherSuiteAsString(v18);
          v33 = _VCMediaStreamTransport_CipherSuiteAsString(v19);
          v34 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)self->_streamConfig multiwayConfig] isOneToOne];
          v35 = FourccToCStr([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)self->_streamConfig multiwayConfig] streamGroupID]);
          v50 = 136317186;
          v51 = v30;
          v52 = 2080;
          v53 = "[VCMediaStreamTransport setupSRTP]";
          v54 = 1024;
          v55 = 458;
          v56 = 2112;
          v57 = v20;
          v58 = 2048;
          v59 = self;
          v60 = 2112;
          *v61 = v32;
          *&v61[8] = 2112;
          *&v61[10] = v33;
          v62 = 1024;
          v63 = v34;
          v64 = 2080;
          v65 = v35;
          v27 = " [%s] %s:%d %@(%p) Configuring srtpCipherSuite=%@, srtcpCipherSuite=%@, isOneToOne=%{BOOL}d, streamGroupID=%s";
          v28 = v31;
          v29 = 84;
        }

        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, &v50, v29);
LABEL_38:
        SRTPUseEncryption(self->_rtpHandle, buf, v66, v18, v19, 2u);
        v5 = v36;
        v37 = objc_opt_class();
        if ((v5 & 0x80000000) == 0)
        {
          if (v37 == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_50;
            }

            v39 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            v50 = 136315650;
            v51 = v39;
            v52 = 2080;
            v53 = "[VCMediaStreamTransport setupSRTP]";
            v54 = 1024;
            v55 = 467;
            v41 = " [%s] %s:%d SRTPUseEncryption completed";
            v42 = v40;
            v43 = 28;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v38 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
            }

            else
            {
              v38 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_50;
            }

            v44 = VRTraceErrorLogLevelToCSTR();
            v45 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            v50 = 136316162;
            v51 = v44;
            v52 = 2080;
            v53 = "[VCMediaStreamTransport setupSRTP]";
            v54 = 1024;
            v55 = 467;
            v56 = 2112;
            v57 = v38;
            v58 = 2048;
            v59 = self;
            v41 = " [%s] %s:%d %@(%p) SRTPUseEncryption completed";
            v42 = v45;
            v43 = 48;
          }

          _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, v41, &v50, v43);
LABEL_50:
          self->_encryptionInfoReceived = 0;
LABEL_51:
          SRTPClearExchangeInfo(buf);
          SRTPClearExchangeInfo(v66);
          return v5;
        }

        if (v37 == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCMediaStreamTransport setupSRTP];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v47 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
          }

          else
          {
            v47 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v48 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v50 = 136316162;
              v51 = v48;
              v52 = 2080;
              v53 = "[VCMediaStreamTransport setupSRTP]";
              v54 = 1024;
              v55 = 461;
              v56 = 2112;
              v57 = v47;
              v58 = 2048;
              v59 = self;
              _os_log_error_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SRTPUseEncryption failed", &v50, 0x30u);
            }
          }
        }

LABEL_56:
        SRTPCancelEncryption();
        goto LABEL_51;
      }

      [(VCMediaStreamTransport *)self setupSRTP];
    }

    v5 = v50;
    goto LABEL_56;
  }

  v5 = v3;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamTransport setupSRTP];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMediaStreamTransport setupSRTP]";
        *&buf[22] = 1024;
        *&buf[24] = 435;
        *&buf[28] = 2112;
        *&buf[30] = v6;
        *&buf[38] = 2048;
        *&buf[40] = self;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SRTPPrepareEncryption failed", buf, 0x30u);
      }
    }
  }

  return v5;
}

- (BOOL)setupRTPWithSockets:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4
{
  rtcpSocket = a3->var0.socketInfo.rtcpSocket;
  rtpSocket = a3->var0.socketInfo.rtpSocket;
  if (rtcpSocket == rtpSocket)
  {
    v9 = RTPSetPacketMultiplexMode(self->_rtpHandle, 2);
    if (v9 < 0)
    {
      v11 = 487;
      goto LABEL_8;
    }

    rtpSocket = a3->var0.socketInfo.rtpSocket;
    rtcpSocket = a3->var0.socketInfo.rtcpSocket;
  }

  v9 = RTPSetSockets(self->_rtpHandle, rtpSocket, rtcpSocket);
  if ((v9 & 0x80000000) == 0)
  {
    return 1;
  }

  v11 = 500;
LABEL_8:
  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a4, 32016, 105, v9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", v11], @"Could not setup RTP", @"RTPSetSockets failed");
  return 0;
}

- (BOOL)setupRTPWithNWConnection:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4
{
  v7 = RTPSetPacketMultiplexMode(self->_rtpHandle, 2);
  if (v7 < 0)
  {
    v9 = @"RTPSetSockets failed";
    v10 = 572;
  }

  else
  {
    v7 = RTPSetNWConnections(self->_rtpHandle, a3->var0.transportStreamInfo.context);
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }

    v9 = @"RTPSetNWConnections failed";
    v10 = 584;
  }

  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a4, 32016, 105, v7, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", v10], @"Could not setup RTP", v9);
  return 0;
}

- (BOOL)setupRTPForIDS:(id *)a3
{
  v4 = RTPSetPacketMultiplexMode(self->_rtpHandle, 2);
  if (v4 < 0)
  {
    v6 = @"RTP set multiplex mode failed";
    v7 = 600;
  }

  else
  {
    v4 = RTPCreateSocketsForIDS();
    if ((v4 & 0x80000000) == 0)
    {
      return 1;
    }

    v6 = @"RTP set IDS descriptor";
    v7 = 612;
  }

  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32016, 105, v4, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", v7], @"Could not setup RTP", v6);
  return 0;
}

- (BOOL)setupRTPWithIPInfo:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4
{
  RTPCreateSocketsRetryBind(self->_rtpHandle, &a3->var0.socketInfo, (&a3->var0.nwConnection + 5), 0);
  v6 = v5;
  if (v5 < 0)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a4, 32016, 105, v5, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", 627], @"Could not setup RTP", @"RTPCreateSocketsRetryBind failed");
  }

  return v6 >= 0;
}

- (BOOL)setupRTPWithTransportSetupInfo:(_VCMediaStreamTransportSetupInfo *)a3 error:(id *)a4
{
  setupType = a3->setupType;
  if (setupType <= 2)
  {
    if (setupType == 1)
    {

      return [VCMediaStreamTransport setupRTPWithSockets:"setupRTPWithSockets:error:" error:?];
    }

    else
    {
      if (setupType != 2)
      {
LABEL_20:
        +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamTransport.m", 658], @"Setup type not set", @"Invalid setup type");
        return 0;
      }

      return [(VCMediaStreamTransport *)self setupRTPForIDS:a4];
    }
  }

  else
  {
    switch(setupType)
    {
      case 3u:

        return [VCMediaStreamTransport setupRTPWithIPInfo:"setupRTPWithIPInfo:error:" error:?];
      case 4u:

        return [VCMediaStreamTransport setupRTPWithNWConnection:"setupRTPWithNWConnection:error:" error:?];
      case 5u:
        v5 = *&a3->var0.socketInfo.rtpSocket;
        *&self->_transportStreamInfo.isReceiveExternallyScheduled = *(&a3->var0.nwConnection + 2);
        *&self->_transportStreamInfo.context = v5;
        return 1;
      default:
        goto LABEL_20;
    }
  }
}

- (void)registerRTPPayloadMappings
{
  v35 = *MEMORY[0x1E69E9840];
  RTPResetPayloadMapping();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(VCMediaStreamConfig *)self->_streamConfig allTxPayloadMap];
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 unsignedIntValue];
        v10 = [-[NSDictionary objectForKeyedSubscript:](-[VCMediaStreamConfig allTxPayloadMap](self->_streamConfig "allTxPayloadMap")];
        if (v10 == 0xFFFF)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        v12 = [-[NSDictionary objectForKeyedSubscript:](-[VCMediaStreamConfig allRxPayloadMap](self->_streamConfig "allRxPayloadMap")];
        if (v12 == 0xFFFF)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        RTPAddMappingForPayload(self->_rtpHandle, v11, v13, v9);
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [(VCMediaStreamConfig *)self->_streamConfig allRxPayloadMap];
  v15 = [(NSDictionary *)v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v20 = [v19 unsignedIntValue];
        v21 = [-[NSDictionary objectForKeyedSubscript:](-[VCMediaStreamConfig allRxPayloadMap](self->_streamConfig "allRxPayloadMap")];
        if (v21 == 0xFFFF)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        v23 = [-[NSDictionary objectForKeyedSubscript:](-[VCMediaStreamConfig allTxPayloadMap](self->_streamConfig "allTxPayloadMap")];
        if (v23 == 0xFFFF)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        RTPAddMappingForPayload(self->_rtpHandle, v24, v22, v20);
      }

      v16 = [(NSDictionary *)v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v16);
  }
}

- (id)rxNetworkPayloads
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(VCMediaStreamConfig *)self->_streamConfig rxPayloadMap];
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 unsignedIntValue];
        v11 = [-[NSDictionary objectForKeyedSubscript:](-[VCMediaStreamConfig rxPayloadMap](self->_streamConfig "rxPayloadMap")];
        if (v11 == 0xFFFF)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v12)}];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (double)lastReceivedRTCPPacketTime
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = NAN;
  v3 = RTPGetLatestRTCPTimestamp(self->_rtpHandle, &v9);
  if (v3 < 0)
  {
    v5 = v3;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStreamTransport lastReceivedRTCPPacketTime];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v11 = v7;
          v12 = 2080;
          v13 = "[VCMediaStreamTransport lastReceivedRTCPPacketTime]";
          v14 = 1024;
          v15 = 712;
          v16 = 2112;
          v17 = v6;
          v18 = 2048;
          v19 = self;
          v20 = 1024;
          v21 = v5;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to retrieve last RTCP timesamp. error=%d", buf, 0x36u);
        }
      }
    }
  }

  return v9;
}

- (void)handleEncryptionInfoChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_isSRTPInitialized)
  {
    if ([(VCMediaStreamConfig *)self->_streamConfig SRTPCipherSuite])
    {
      v5 = SRTPUpdateKeyMaterial(self->_rtpHandle, a3) == 0;
    }

    else
    {
      v5 = 1;
    }

    self->_encryptionInfoReceived = v5;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStreamTransport handleEncryptionInfoChange:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaStreamTransport *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCMediaStreamTransport handleEncryptionInfoChange:]";
          v13 = 1024;
          v14 = 721;
          v15 = 2112;
          v16 = v6;
          v17 = 2048;
          v18 = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) SRTP should be initialized first before we can update security key material", &v9, 0x30u);
        }
      }
    }

    self->_encryptionInfoReceived = 0;
  }
}

- (void)setRtcpEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(VCMediaStreamConfig *)self->_streamConfig isRTCPEnabled]!= a3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig setRtcpEnabled:v3];
    rtpHandle = self->_rtpHandle;

    RTPSetRTCPEnabled(rtpHandle, v3);
  }
}

- (void)setRtcpSendInterval:(double)a3
{
  [(VCMediaStreamConfig *)self->_streamConfig rtcpSendInterval];
  if (v5 != a3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig setRtcpSendInterval:a3];

    RTPSetRTCPSendInterval(a3);
  }
}

- (BOOL)isRTCPSendEnabled
{
  v3 = [(VCMediaStreamConfig *)self->_streamConfig isRTCPEnabled];
  if (v3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig rtcpSendInterval];
    LOBYTE(v3) = v4 > 0.0;
  }

  return v3;
}

- (BOOL)isRTPTimeoutEnabled
{
  v3 = [(VCMediaStreamConfig *)self->_streamConfig isRTPTimeOutEnabled];
  if (v3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig rtpTimeOutInterval];
    LOBYTE(v3) = v4 > 0.0;
  }

  return v3;
}

- (BOOL)isRTCPTimeoutEnabled
{
  v3 = [(VCMediaStreamConfig *)self->_streamConfig isRTCPTimeOutEnabled];
  if (v3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig rtcpTimeOutInterval];
    LOBYTE(v3) = v4 > 0.0;
  }

  return v3;
}

- (BOOL)isDecryptionTimeoutEnabled
{
  v3 = [(VCMediaStreamConfig *)self->_streamConfig isDecryptionTimeOutEnabled];
  if (v3)
  {
    [(VCMediaStreamConfig *)self->_streamConfig decryptionTimeOutInterval];
    LOBYTE(v3) = v4 > 0.0;
  }

  return v3;
}

- (void)setStreamDirection:(int64_t)a3
{
  RTPSetStreamDirection(self->_rtpHandle, a3);
  streamConfig = self->_streamConfig;

  [(VCMediaStreamConfig *)streamConfig setDirection:a3];
}

- (unsigned)idsStreamId
{
  v2 = [(VCMediaStreamConfig *)self->_streamConfig multiwayConfig];

  return [(VCMediaStreamMultiwayConfig *)v2 idsStreamID];
}

- (BOOL)generateReceptionReport:(_RTCP_RECEPTION_REPORT *)a3 reportCount:(char *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*a4)
  {
    return 0;
  }

  v6 = RTCPInitializeReceptionReportBlock(self->_rtpHandle, a3);
  v7 = v6 >= 0;
  if (v6 < 0)
  {
    v9 = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v12 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        v14 = 136316674;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCMediaStreamTransport generateReceptionReport:reportCount:]";
        v18 = 1024;
        v19 = 921;
        v20 = 2080;
        v21 = v12;
        v22 = 2048;
        v23 = self;
        v24 = 2080;
        v25 = "[VCMediaStreamTransport generateReceptionReport:reportCount:]";
        v26 = 1024;
        v27 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s[%p] %s failed to generate the reception report: status=%d", &v14, 0x40u);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  *a4 = v8;
  return v7;
}

- (BOOL)generateRTCPXRSummaryReport:(tagVCRTCPXRSummaryReport *)a3 reportCount:(char *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a4)
  {
    v5 = RTCPGetSummaryReportBlock(self->_rtpHandle, a3, 50);
    v6 = v5 >= 0;
    if (v5 < 0)
    {
      v10 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCMediaStreamTransport generateRTCPXRSummaryReport:reportCount:]";
          v18 = 1024;
          v19 = 937;
          v20 = 1024;
          v21 = v10;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to generate the RTCP XR Statistics Summary Report: status=%d", &v14, 0x22u);
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    *a4 = v7;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCMediaStreamTransport generateRTCPXRSummaryReport:reportCount:]";
        v18 = 1024;
        v19 = 929;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No slot available for RTCP XR Statistics Summary Report Block", &v14, 0x1Cu);
      }
    }

    return 0;
  }

  return v6;
}

- (BOOL)generateRTCPXRVoIPMetricsReport:(tagVCRTCPXRVoIPMetricsReport *)a3 reportCount:(char *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a4)
  {
    v5 = RTCPGetVoIPMetricsReportBlock(self->_rtpHandle, a3);
    v6 = v5 >= 0;
    if (v5 < 0)
    {
      v10 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCMediaStreamTransport generateRTCPXRVoIPMetricsReport:reportCount:]";
          v18 = 1024;
          v19 = 953;
          v20 = 1024;
          v21 = v10;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to generate the RTCP XR VoIP Metrics Report: status=%d", &v14, 0x22u);
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    *a4 = v7;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCMediaStreamTransport generateRTCPXRVoIPMetricsReport:reportCount:]";
        v18 = 1024;
        v19 = 945;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No slot available for RTCP XR VoIP Metrics Report Block", &v14, 0x1Cu);
      }
    }

    return 0;
  }

  return v6;
}

- (unsigned)getRTCPReportNTPTimeMiddle32ForReportId:(unsigned __int8)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v5 = RTCPGetReportNTPTimeMiddle32(self->_rtpHandle, a3, &v11);
  if (v5 < 0)
  {
    v6 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v9 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        *buf = 136316930;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCMediaStreamTransport getRTCPReportNTPTimeMiddle32ForReportId:]";
        v16 = 1024;
        v17 = 963;
        v18 = 2080;
        v19 = v9;
        v20 = 2048;
        v21 = self;
        v22 = 2080;
        v23 = "[VCMediaStreamTransport getRTCPReportNTPTimeMiddle32ForReportId:]";
        v24 = 1024;
        v25 = v3;
        v26 = 1024;
        v27 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s[%p] %s failed to retrieve the report[%d] time: status=%d", buf, 0x46u);
      }
    }
  }

  return v11;
}

- (unsigned)getExtendedSequenceNumberForSequenceNumber:(unsigned __int16)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = RTPGetExtendedSequenceNumber(self->_rtpHandle, a3, &v10);
  if (v4 < 0)
  {
    v5 = v4;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (objc_opt_class())
        {
          v8 = [objc_msgSend(objc_opt_class() "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        *buf = 136316674;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCMediaStreamTransport getExtendedSequenceNumberForSequenceNumber:]";
        v15 = 1024;
        v16 = 972;
        v17 = 2080;
        v18 = v8;
        v19 = 2048;
        v20 = self;
        v21 = 2080;
        v22 = "[VCMediaStreamTransport getExtendedSequenceNumberForSequenceNumber:]";
        v23 = 1024;
        v24 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s[%p] %s failed to retrieve extended sequence number: status=%d", buf, 0x40u);
      }
    }
  }

  return v10;
}

- (int)onStart
{
  if (self->_transportStreamInfo.creationCallback)
  {
    v3 = [(VCMediaStreamTransport *)self setupRTPWithTransportStreams];
    if (v3 < 0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  RTPResetHandle();
  [(VCMediaStreamTransport *)self updateLastGeneratedKeyMaterial];
  return v3;
}

- (int)setupRTPWithTransportStreams
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 0;
  cf = 0;
  v18 = 0;
  if (self->_transportStreamInfo.creationCallback)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = v3;
    if (self->_payloadType == 1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 4;
    }

    if (self->_payloadType == 1)
    {
      v6 = 5;
    }

    else
    {
      v6 = 3;
    }

    if (self->_transportStreamInfo.isReceiveExternallyScheduled)
    {
      [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsReceiveExternallyScheduled"];
    }

    if (self->_transportStreamInfo.requiresLargeReceiveBuffer)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RequiresLargeReceiveBuffer"];
    }

    if ([(VCMediaStreamConfig *)self->_streamConfig dscpTag])
    {
      [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", -[VCMediaStreamConfig dscpTag](self->_streamConfig, "dscpTag")), @"DSCPTag"}];
    }

    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_transportStreamInfo.transportStreamIndex), @"TransportStreamIndex"}];
    v7 = (self->_transportStreamInfo.creationCallback)(self->_transportStreamInfo.context, v6, v4, &cf);
    if (v7 < 0)
    {
      goto LABEL_22;
    }

    v7 = (self->_transportStreamInfo.creationCallback)(self->_transportStreamInfo.context, v5, v4, &v19);
    if (v7 < 0)
    {
      goto LABEL_22;
    }

    if (self->_payloadType || ![(VCMediaStreamConfig *)self->_streamConfig cellularUniqueTag])
    {
      v8 = 0;
    }

    else
    {
      v7 = (self->_transportStreamInfo.creationCallback)(self->_transportStreamInfo.context, 1, v4, &v18);
      if (v7 < 0)
      {
LABEL_22:
        v9 = v7;
        goto LABEL_23;
      }

      v8 = v18;
    }

    v7 = RTPSetTransportStreams(self->_rtpHandle, cf, v19, v8);
    goto LABEL_22;
  }

  v9 = -2143748035;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      v21 = 136315650;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCMediaStreamTransport setupRTPWithTransportStreams]";
      v25 = 1024;
      v26 = 514;
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v12, v13, v14, v15, v16, v17);
    }
  }

  v4 = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v9;
}

- (void)configureWithStreamConfig:(os_log_t)log setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCMediaStreamTransport configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:]";
  v8 = 1024;
  v9 = 245;
  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d SFrame cryptors setup error[%@]", &v4, 0x26u);
}

- (void)setupSframeCryptorsWithError:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupSframeCryptorsWithError:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupSRTP
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)lastReceivedRTCPPacketTime
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCMediaStreamTransport lastReceivedRTCPPacketTime]";
  v6 = 1024;
  v7 = 712;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to retrieve last RTCP timesamp. error=%d", v3, 0x22u);
}

- (void)handleEncryptionInfoChange:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end