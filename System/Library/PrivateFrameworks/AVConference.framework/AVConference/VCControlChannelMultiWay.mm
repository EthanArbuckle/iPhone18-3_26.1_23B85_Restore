@interface VCControlChannelMultiWay
+ (id)allocPayoadDataFromVTPPacket:(VCBlockBuffer_t *)a3 vpktFlags:(tagVPKTFLAG *)a4 channelDataFormat:(tagVCIDSChannelDataFormat *)a5;
- (BOOL)addActiveParticipant:(unint64_t)a3 participantUUID:(id)a4 withConfiguration:(id *)a5;
- (BOOL)decryptWithMKI:(void *)a3 data:(char *)a4 size:(int)a5 sequenceNumber:(unsigned __int16)a6;
- (BOOL)encryptData:(char *)a3 size:(int)a4 sequenceNumber:(unsigned __int16)a5;
- (BOOL)isParticipantActive:(unint64_t)a3;
- (BOOL)sendReliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 timeout:(unsigned int)a6 withOptions:(id)a7 completion:(id)a8;
- (BOOL)sendReliableMessageAndWait:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5;
- (BOOL)sendReliableMessageAndWait:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 timeout:(id)a6 withOptions:(id)a7;
- (VCControlChannelMultiWay)initWithTransportSessionID:(unsigned int)a3 reportingAgent:(opaqueRTCReporting *)a4 mode:(int)a5;
- (id)copyDialogForParticipantID:(id)a3;
- (id)lastUsedMKIBytes;
- (id)remoteParticipantIDFromChannelDataFormat:(tagVCIDSChannelDataFormat *)a3;
- (int)getKeyDerivationCryptoSet:(id *)a3 withKeyMaterial:(id)a4 derivedSSRC:(unsigned int *)a5;
- (int)protocolVersionforParticipantID:(id)a3;
- (int)updateEncryption:(id *)a3 derivedSSRC:(unsigned int)a4;
- (void)addNewKeyMaterial:(id)a3;
- (void)dealloc;
- (void)deregisterPeriodicTask;
- (void)finalizeEncryption;
- (void)flushActiveMessages;
- (void)flushRealTimeReportingStats;
- (void)flushReportingStats;
- (void)initializeSRTPInfo:(tagSRTPINFO *)a3;
- (void)lastUsedMKIBytes;
- (void)messageReceived:(id)a3 participantInfo:(tagVCIDSChannelDataFormat *)a4;
- (void)periodicTask:(void *)a3;
- (void)processParticipantRemoval:(id)a3;
- (void)registerPeriodicTask;
- (void)removeActiveParticipant:(unint64_t)a3;
- (void)removeAllActiveParticipants;
- (void)reportSignificantHandshakeDelaySymptomForParticipantID:(id)a3;
- (void)scheduleAfter:(unsigned int)a3 block:(id)a4;
- (void)sendReliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5;
- (void)sendUnreliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5;
- (void)setCurrentSendMKIWithKeyMaterial:(id)a3;
- (void)setEncryptionWithEncryptionMaterial:(id *)a3;
- (void)start;
- (void)stop;
- (void)updateEncryptionWithEncryptionMaterial:(id *)a3;
- (void)updateEncryptionWithKeyMaterial:(id)a3;
- (void)updateTransactionIDWithKeyMaterial:(id)a3;
@end

@implementation VCControlChannelMultiWay

- (void)finalizeEncryption
{
  VCMediaKeyIndex_Release(&self->_currentSendMKI);
  VCMediaKeyIndex_Release(&self->_currentReceiveMKI);
  cryptors = self->_cryptors;
}

- (void)initializeSRTPInfo:(tagSRTPINFO *)a3
{
  *&a3->policy.cipherMode = xmmword_1DBD474F0;
  *&a3->policy.authenticationMode = 1;
  a3->policy.sessionAuthenticationTagLength = 4;
  a3->operatingMode = 2;
  *&a3->mediaKeyLength = 0x1000000010;
}

- (void)updateEncryptionWithEncryptionMaterial:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  var5 = a3->var5;
  if (a3->var4 >= 32)
  {
    var4 = 32;
  }

  else
  {
    var4 = a3->var4;
  }

  v14[0] = 0;
  if (var5 >= 32)
  {
    v7 = 32;
  }

  else
  {
    v7 = var5;
  }

  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  DWORD1(v12[4]) = ByteToHex(v12, 65, a3, var4);
  HIDWORD(v13) = ByteToHex(&v12[4] + 8, 65, a3->var0.var1, 14);
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = 0xAAAAAAAAAAAAAAAALL;
  [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  VCMediaKeyIndex_ReleaseAndCopyNewValue(v14, [VCMediaKeyIndex newMKIWithBytes:v11 bufferSize:16]);
  if ([(VCControlChannelMultiWay *)self updateEncryption:v12 derivedSSRC:a3->var1]< 0)
  {
    SRTPClearKeyDerivationInfo(v12);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCControlChannelMultiWay(Encryption) updateEncryptionWithEncryptionMaterial:];
      }
    }
  }

  else
  {
    if ([(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:v14[0]])
    {
      VCMediaKeyIndex_ReleaseAndCopyNewValue(&self->_currentSendMKI, v14[0]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCControlChannelMultiWay(Encryption) updateEncryptionWithEncryptionMaterial:];
      }
    }

    VCMediaKeyIndex_Release(v14);
    v10 = 0;
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    DWORD1(v8[4]) = ByteToHex(v8, 65, &a3->var2, v7);
    HIDWORD(v9) = ByteToHex(&v8[4] + 8, 65, a3->var2.var1, 14);
    [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    VCMediaKeyIndex_ReleaseAndCopyNewValue(&v10, [VCMediaKeyIndex newMKIWithBytes:v11 bufferSize:16]);
    if ([(VCControlChannelMultiWay *)self updateEncryption:v8 derivedSSRC:a3->var3]< 0)
    {
      SRTPClearKeyDerivationInfo(v12);
      SRTPClearKeyDerivationInfo(v8);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelMultiWay(Encryption) updateEncryptionWithEncryptionMaterial:];
        }
      }
    }

    else
    {
      if ([(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:v10])
      {
        VCMediaKeyIndex_ReleaseAndCopyNewValue(&self->_currentReceiveMKI, v10);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelMultiWay(Encryption) updateEncryptionWithEncryptionMaterial:];
        }
      }

      SRTPClearKeyDerivationInfo(v12);
      SRTPClearKeyDerivationInfo(v8);
    }
  }
}

- (void)updateEncryptionWithKeyMaterial:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:@"SecurityKeyIndex"];
  if ([(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:v5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelMultiWay(Encryption) updateEncryptionWithKeyMaterial:]";
        *&buf[22] = 1024;
        *&buf[24] = 146;
        *&buf[28] = 2112;
        *&buf[30] = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MKI '%@' has already been configured for this session. Ignoring duplicate", buf, 0x26u);
      }
    }
  }

  else
  {
    v18 = 0;
    v17 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    memset(buf, 0, sizeof(buf));
    v10 = 0;
    if ([(VCControlChannelMultiWay *)self getKeyDerivationCryptoSet:buf withKeyMaterial:a3 derivedSSRC:&v10]< 0)
    {
      SRTPClearKeyDerivationInfo(buf);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelMultiWay(Encryption) updateEncryptionWithKeyMaterial:];
        }
      }
    }

    else
    {
      v8 = [(VCControlChannelMultiWay *)self updateEncryption:buf derivedSSRC:v10];
      v9 = SRTPClearKeyDerivationInfo(buf);
      if (v8 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCControlChannelMultiWay(Encryption) updateEncryptionWithKeyMaterial:];
          }
        }
      }

      else if ([objc_msgSend(a3 objectForKeyedSubscript:{@"SecurityLocallyGenerated", v9), "BOOLValue"}])
      {
        [(VCControlChannelMultiWay *)self setCurrentSendMKIWithKeyMaterial:a3];
      }
    }
  }
}

- (void)setCurrentSendMKIWithKeyMaterial:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SecurityKeyIndex"];
  if (v4)
  {
    v5 = v4;
    if (!VCMediaKeyIndex_isEqual(self->_currentSendMKI, v4))
    {
      if ([(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:v5])
      {

        VCMediaKeyIndex_ReleaseAndCopyNewValue(&self->_currentSendMKI, v5);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelMultiWay(Encryption) setCurrentSendMKIWithKeyMaterial:];
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCControlChannelMultiWay(Encryption) setCurrentSendMKIWithKeyMaterial:];
    }
  }
}

- (int)getKeyDerivationCryptoSet:(id *)a3 withKeyMaterial:(id)a4 derivedSSRC:(unsigned int *)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = -2145255423;
  if (a3)
  {
    v9 = [a4 objectForKeyedSubscript:@"SecurityKey"];
    v10 = [a4 objectForKeyedSubscript:@"SecuritySalt"];
    if (v9 && v10 != 0)
    {
      v12 = v10;
      v13 = [a4 objectForKeyedSubscript:@"SecurityKeyIndex"];
      v24[0] = 0xAAAAAAAAAAAAAAAALL;
      v24[1] = 0xAAAAAAAAAAAAAAAALL;
      [v13 fullKeyBytes:v24];
      *a5 = v24[0];
      v14 = [v9 length];
      v15 = v14;
      v16 = 32;
      if (v14 >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v14;
      }

      v18 = [v12 length];
      v19 = v18;
      if (v18 < 0x20)
      {
        v16 = v18;
      }

      v20 = (v17 + 15) & 0x70;
      v21 = &v24[-1] - v20;
      if (v15)
      {
        memset(&v24[-1] - v20, 170, v17);
      }

      if (v19)
      {
        memset(&v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v16);
      }

      [v9 getBytes:v21 length:v17];
      [v12 getBytes:&v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) length:v16];
      a3->var1 = ByteToHex(a3, 65, v21, v17);
      a3->var3 = ByteToHex(a3->var2, 65, &v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      VCMediaKeyIndex_ReleaseAndCopyNewValue(&a3->var4, v13);
      return 0;
    }
  }

  return v5;
}

- (int)updateEncryption:(id *)a3 derivedSSRC:(unsigned int)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  p_var4 = &a3->var4;
  if ([(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:a3->var4])
  {
    [VCControlChannelMultiWay(Encryption) updateEncryption:&v18 derivedSSRC:?];
    return v18;
  }

  else
  {
    v49[0] = 0;
    memset(v48, 0, sizeof(v48));
    memset(v26, 0, sizeof(v26));
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    [(VCControlChannelMultiWay *)self initializeSRTPInfo:v26];
    DWORD2(v27) = a4;
    SRTPDeriveMediaKeyInfo(v26, v48, a3);
    if (v8)
    {
      v9 = v8;
      SRTPClearExchangeInfo(v48);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelMultiWay(Encryption) updateEncryption:v10 derivedSSRC:?];
        }
      }
    }

    else
    {
      v9 = SRTPUpdateEncryptionInfo(v26, v48, 1);
      VCMediaKeyIndex_Release(v49);
      if (v9)
      {
        SRTPClearExchangeInfo(v48);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCControlChannelMultiWay(Encryption) updateEncryption:v11 derivedSSRC:?];
          }
        }
      }

      else
      {
        LODWORD(v26[0]) |= 6u;
        v12 = [[VCCryptoInfo alloc] initWithSRTPInfo:v26];
        if (v12)
        {
          v13 = v12;
          [(NSMutableDictionary *)self->_cryptors setObject:v12 forKeyedSubscript:*p_var4];

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v16 = *p_var4;
              v18 = 136315906;
              v19 = v14;
              v20 = 2080;
              v21 = "[VCControlChannelMultiWay(Encryption) updateEncryption:derivedSSRC:]";
              v22 = 1024;
              v23 = 264;
              v24 = 2112;
              v25 = v16;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cryptor for keyIndex:%@ is updated", &v18, 0x26u);
            }
          }

          SRTPClearExchangeInfo(v48);
          return 0;
        }

        else
        {
          v9 = -2145255420;
          SRTPClearExchangeInfo(v48);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCControlChannelMultiWay(Encryption) updateEncryption:derivedSSRC:];
            }
          }
        }
      }
    }
  }

  return v9;
}

- (BOOL)encryptData:(char *)a3 size:(int)a4 sequenceNumber:(unsigned __int16)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:self->_currentSendMKI];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        currentSendMKI = self->_currentSendMKI;
        v15 = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCControlChannelMultiWay(Encryption) encryptData:size:sequenceNumber:]";
        v19 = 1024;
        v20 = 278;
        v21 = 2112;
        v22 = currentSendMKI;
        v23 = 1024;
        v24 = v5;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d encryptData: with currentSendMKI='%@', sequenceNumber=%d", &v15, 0x2Cu);
        if (!v7)
        {
          goto LABEL_10;
        }

LABEL_8:
        LOBYTE(v12) = SRTPEncryptData([v7 state]) == 0;
        return v12;
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_currentSendMKI;
      v15 = 136316162;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCControlChannelMultiWay(Encryption) encryptData:size:sequenceNumber:]";
      v19 = 1024;
      v20 = 278;
      v21 = 2112;
      v22 = v13;
      v23 = 1024;
      v24 = v5;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d encryptData: with currentSendMKI='%@', sequenceNumber=%d", &v15, 0x2Cu);
      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_13:
    LOBYTE(v12) = 0;
    return v12;
  }

  VRTraceErrorLogLevelToCSTR();
  v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    [VCControlChannelMultiWay(Encryption) encryptData:size:sequenceNumber:];
    goto LABEL_13;
  }

  return v12;
}

- (BOOL)decryptWithMKI:(void *)a3 data:(char *)a4 size:(int)a5 sequenceNumber:(unsigned __int16)a6
{
  v6 = a6;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:?];
  if (!v8)
  {
    v8 = [(NSMutableDictionary *)self->_cryptors objectForKeyedSubscript:self->_currentReceiveMKI];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        currentReceiveMKI = self->_currentReceiveMKI;
        v16 = 136316162;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCControlChannelMultiWay(Encryption) decryptWithMKI:data:size:sequenceNumber:]";
        v20 = 1024;
        v21 = 293;
        v22 = 2112;
        v23 = currentReceiveMKI;
        v24 = 1024;
        v25 = v6;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d decryptWithMKI: currentReceiveMKI='%@', sequenceNumber=%d", &v16, 0x2Cu);
        if (!v8)
        {
          goto LABEL_12;
        }

LABEL_10:
        LOBYTE(v13) = SRTPEncryptData([v8 state]) == 0;
        return v13;
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = self->_currentReceiveMKI;
      v16 = 136316162;
      v17 = v9;
      v18 = 2080;
      v19 = "[VCControlChannelMultiWay(Encryption) decryptWithMKI:data:size:sequenceNumber:]";
      v20 = 1024;
      v21 = 293;
      v22 = 2112;
      v23 = v14;
      v24 = 1024;
      v25 = v6;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d decryptWithMKI: currentReceiveMKI='%@', sequenceNumber=%d", &v16, 0x2Cu);
      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_15:
    LOBYTE(v13) = 0;
    return v13;
  }

  VRTraceErrorLogLevelToCSTR();
  v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v13)
  {
    [VCControlChannelMultiWay(Encryption) decryptWithMKI:data:size:sequenceNumber:];
    goto LABEL_15;
  }

  return v13;
}

- (VCControlChannelMultiWay)initWithTransportSessionID:(unsigned int)a3 reportingAgent:(opaqueRTCReporting *)a4 mode:(int)a5
{
  v43 = *MEMORY[0x1E69E9840];
  +[VCVTPWrapper startVTP];
  v9 = VTP_SocketForIDS();
  if (v9 != -1)
  {
    v10 = v9;
    v28.receiver = self;
    v28.super_class = VCControlChannelMultiWay;
    v11 = [(VCControlChannel *)&v28 init];
    if (!v11)
    {
      goto LABEL_21;
    }

    v11->_activeParticipants = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:32];
    v11->_transportSessionID = a3;
    v11->_vfdMessage = v10;
    v11->_dialogs = objc_alloc_init(MEMORY[0x1E695DF90]);
    VTP_SetSocketMode(v11->_vfdMessage, 2);
    VTP_SetPktType(v11->_vfdMessage, 0x10000);
    VTP_SetTransportSessionID(v11->_vfdMessage, v11->_transportSessionID);
    v11->super.super._reportingAgent = a4;
    [(VCControlChannelMultiWay *)v11 flushReportingStats];
    [(VCControlChannelMultiWay *)v11 registerPeriodicTask];
    if (objc_opt_class() == v11)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_20;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      transportSessionID = v11->_transportSessionID;
      *buf = 136315906;
      v30 = v14;
      v31 = 2080;
      v32 = "[VCControlChannelMultiWay initWithTransportSessionID:reportingAgent:mode:]";
      v33 = 1024;
      v34 = 207;
      v35 = 1024;
      LODWORD(v36) = transportSessionID;
      v17 = " [%s] %s:%d Created VCControlChannelMultiWay object for sessionID '%d'";
      v18 = v15;
      v19 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCControlChannelMultiWay *)v11 performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_20;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v22 = v11->_transportSessionID;
      *buf = 136316418;
      v30 = v20;
      v31 = 2080;
      v32 = "[VCControlChannelMultiWay initWithTransportSessionID:reportingAgent:mode:]";
      v33 = 1024;
      v34 = 207;
      v35 = 2112;
      v36 = v12;
      v37 = 2048;
      v38 = v11;
      v39 = 1024;
      v40 = v22;
      v17 = " [%s] %s:%d %@(%p) Created VCControlChannelMultiWay object for sessionID '%d'";
      v18 = v21;
      v19 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_20:
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v11->_sequentialKeyMaterialQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCControlChannelMultiWay.sequentialKeyMaterialQueue", 0, CustomRootQueue);
LABEL_21:
    if (!a5)
    {
      [(VCControlChannelMultiWay *)v11 initializeEncryption];
    }

    return v11;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCControlChannelMultiWay initWithTransportSessionID:reportingAgent:mode:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = self->_transportSessionID;
        *buf = 136316674;
        v30 = v24;
        v31 = 2080;
        v32 = "[VCControlChannelMultiWay initWithTransportSessionID:reportingAgent:mode:]";
        v33 = 1024;
        v34 = 188;
        v35 = 2112;
        v36 = v13;
        v37 = 2048;
        v38 = self;
        v39 = 1024;
        v40 = -1;
        v41 = 1024;
        v42 = v27;
        _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Could not create VTP socket for MW control channel (%08X) for sessionID '%d'", buf, 0x3Cu);
      }
    }
  }

  +[VCVTPWrapper stopVTP];
  return 0;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  sequentialKeyMaterialQueue = self->_sequentialKeyMaterialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__VCControlChannelMultiWay_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(sequentialKeyMaterialQueue, v3);
}

void __33__VCControlChannelMultiWay_start__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 268))
  {
    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*v2 + 64);
          LODWORD(v45.__sig) = 136315906;
          *(&v45.__sig + 4) = v7;
          *&v45.__opaque[4] = 2080;
          *&v45.__opaque[6] = "[VCControlChannelMultiWay start]_block_invoke";
          *&v45.__opaque[14] = 1024;
          *&v45.__opaque[16] = 267;
          *&v45.__opaque[20] = 1024;
          *&v45.__opaque[22] = v9;
          v10 = " [%s] %s:%d MW control channel already stopped for sessionID='%d'";
          v11 = v8;
          v12 = 34;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v45, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v2;
          v16 = *(*v2 + 64);
          LODWORD(v45.__sig) = 136316418;
          *(&v45.__sig + 4) = v13;
          *&v45.__opaque[4] = 2080;
          *&v45.__opaque[6] = "[VCControlChannelMultiWay start]_block_invoke";
          *&v45.__opaque[14] = 1024;
          *&v45.__opaque[16] = 267;
          *&v45.__opaque[20] = 2112;
          *&v45.__opaque[22] = v3;
          *&v45.__opaque[30] = 2048;
          *&v45.__opaque[32] = v15;
          *&v45.__opaque[40] = 1024;
          *&v45.__opaque[42] = v16;
          v10 = " [%s] %s:%d %@(%p) MW control channel already stopped for sessionID='%d'";
          v11 = v14;
          v12 = 54;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    *(v1 + 268) = 1;
    *(*v2 + 66) = VTP_Socket(2, 1, 6);
    v4 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:*v2];
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v45.__opaque[24] = v5;
    *&v45.__opaque[40] = v5;
    *&v45.__sig = v5;
    *&v45.__opaque[8] = v5;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    pthread_attr_init(&v45);
    pthread_attr_getschedparam(&v45, &v32);
    v32.sched_priority = 58;
    pthread_attr_setschedparam(&v45, &v32);
    pthread_attr_setschedpolicy(&v45, 4);
    if (pthread_create(*v2 + 34, &v45, receiveProc, v4))
    {
      if (objc_opt_class() == *v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __33__VCControlChannelMultiWay_start__block_invoke_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [*v2 performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v30 = *v2;
            v31 = *(*v2 + 64);
            *buf = 136316418;
            v34 = v17;
            v35 = 2080;
            v36 = "[VCControlChannelMultiWay start]_block_invoke";
            v37 = 1024;
            v38 = 263;
            v39 = 2112;
            v40 = v6;
            v41 = 2048;
            v42 = v30;
            v43 = 1024;
            v44 = v31;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create receiveProc for MW control channel for sessionID='%d'", buf, 0x36u);
          }
        }
      }
    }

    pthread_attr_destroy(&v45);
  }

  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*v2 + 64);
        LODWORD(v45.__sig) = 136315906;
        *(&v45.__sig + 4) = v20;
        *&v45.__opaque[4] = 2080;
        *&v45.__opaque[6] = "[VCControlChannelMultiWay start]_block_invoke";
        *&v45.__opaque[14] = 1024;
        *&v45.__opaque[16] = 269;
        *&v45.__opaque[20] = 1024;
        *&v45.__opaque[22] = v22;
        v23 = " [%s] %s:%d Started MW control channel for sessionID='%d'";
        v24 = v21;
        v25 = 34;
LABEL_35:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, &v45, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v28 = *v2;
        v29 = *(*v2 + 64);
        LODWORD(v45.__sig) = 136316418;
        *(&v45.__sig + 4) = v26;
        *&v45.__opaque[4] = 2080;
        *&v45.__opaque[6] = "[VCControlChannelMultiWay start]_block_invoke";
        *&v45.__opaque[14] = 1024;
        *&v45.__opaque[16] = 269;
        *&v45.__opaque[20] = 2112;
        *&v45.__opaque[22] = v19;
        *&v45.__opaque[30] = 2048;
        *&v45.__opaque[32] = v28;
        *&v45.__opaque[40] = 1024;
        *&v45.__opaque[42] = v29;
        v23 = " [%s] %s:%d %@(%p) Started MW control channel for sessionID='%d'";
        v24 = v27;
        v25 = 54;
        goto LABEL_35;
      }
    }
  }
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  sequentialKeyMaterialQueue = self->_sequentialKeyMaterialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__VCControlChannelMultiWay_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(sequentialKeyMaterialQueue, v3);
}

void __32__VCControlChannelMultiWay_stop__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 268) == 1)
  {
    *(v2 + 268) = 0;
    VTP_Close(*(*(a1 + 32) + 264));
    v3 = *(a1 + 32);
    v4 = v3[34];
    if (!v4)
    {
LABEL_26:
      [v3 flushActiveMessages];
      return;
    }

    v27 = 0;
    pthread_join(v4, &v27);

    *(*(a1 + 32) + 272) = 0;
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_25;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v19 = *(*(a1 + 32) + 256);
      *buf = 136315906;
      v29 = v17;
      v30 = 2080;
      v31 = "[VCControlChannelMultiWay stop]_block_invoke";
      v32 = 1024;
      v33 = 284;
      v34 = 1024;
      LODWORD(v35) = v19;
      v20 = " [%s] %s:%d Stopped MW control channel for sessionID='%d'";
      v21 = v18;
      v22 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_25;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v25 = *(a1 + 32);
      v26 = *(v25 + 256);
      *buf = 136316418;
      v29 = v23;
      v30 = 2080;
      v31 = "[VCControlChannelMultiWay stop]_block_invoke";
      v32 = 1024;
      v33 = 284;
      v34 = 2112;
      v35 = v5;
      v36 = 2048;
      v37 = v25;
      v38 = 1024;
      v39 = v26;
      v20 = " [%s] %s:%d %@(%p) Stopped MW control channel for sessionID='%d'";
      v21 = v24;
      v22 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_25:
    v3 = *(a1 + 32);
    goto LABEL_26;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 256);
        *buf = 136315906;
        v29 = v7;
        v30 = 2080;
        v31 = "[VCControlChannelMultiWay stop]_block_invoke";
        v32 = 1024;
        v33 = 289;
        v34 = 1024;
        LODWORD(v35) = v9;
        v10 = " [%s] %s:%d MW control channel already stopped for sessionID='%d'";
        v11 = v8;
        v12 = 34;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 256);
        *buf = 136316418;
        v29 = v13;
        v30 = 2080;
        v31 = "[VCControlChannelMultiWay stop]_block_invoke";
        v32 = 1024;
        v33 = 289;
        v34 = 2112;
        v35 = v6;
        v36 = 2048;
        v37 = v15;
        v38 = 1024;
        v39 = v16;
        v10 = " [%s] %s:%d %@(%p) MW control channel already stopped for sessionID='%d'";
        v11 = v14;
        v12 = 54;
        goto LABEL_16;
      }
    }
  }
}

+ (id)allocPayoadDataFromVTPPacket:(VCBlockBuffer_t *)a3 vpktFlags:(tagVPKTFLAG *)a4 channelDataFormat:(tagVCIDSChannelDataFormat *)a5
{
  if (!a3)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  if (!a4)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  if (!a5)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  var2 = a3->var2;
  if (!var2)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  if ((*var2 & 0xC0) != 0x40)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  if ((*var2 & 3) != 0)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3->var2 + 1 length:a3->var1 - 1];
  if (!result)
  {
    +[VCControlChannelMultiWay allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:];
    return v10;
  }

  p_var19 = &a4->var19;
  if (!a4->var19.participantIDIsSet)
  {
    p_var19 = 0;
  }

  *a5 = p_var19;
  return result;
}

- (void)flushActiveMessages
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  dialogs = self->_dialogs;
  self->_dialogs = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_sync_exit(self);
  if (dialogs)
  {
    v4 = [(NSMutableDictionary *)dialogs allKeys];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [-[NSMutableDictionary objectForKeyedSubscript:](dialogs objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v7++)), "flushActiveTransactions"}];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }

  [(VCControlChannelMultiWay *)self flushReportingStats];
}

- (id)remoteParticipantIDFromChannelDataFormat:(tagVCIDSChannelDataFormat *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->participantID];
  }

  else
  {
    v4 = &unk_1F579B220;
  }

  objc_sync_enter(self);
  if ([+[VCDefaults supportsOneToOneMode] sharedInstance]
  {
    if ([v4 isEqualToNumber:&unk_1F579B220])
    {
      if ([-[NSMutableDictionary allKeys](self->_activeParticipants "allKeys")] == 1)
      {
        v4 = [-[NSMutableDictionary allKeys](self->_activeParticipants "allKeys")];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v8 = 136315906;
            v9 = v5;
            v10 = 2080;
            v11 = "[VCControlChannelMultiWay remoteParticipantIDFromChannelDataFormat:]";
            v12 = 1024;
            v13 = 348;
            v14 = 2112;
            v15 = v4;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Zero-valued participantID updated to: %@, when there is only one remote participant", &v8, 0x26u);
          }
        }
      }
    }
  }

  objc_sync_exit(self);
  return v4;
}

- (void)messageReceived:(id)a3 participantInfo:(tagVCIDSChannelDataFormat *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = [(VCControlChannelMultiWay *)self remoteParticipantIDFromChannelDataFormat:a4];
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 1;
  v7 = [(VCControlChannelMultiWay *)self copyDialogForParticipantID:v6];
  if (!v7)
  {
    [VCControlChannelMultiWay messageReceived:? participantInfo:?];
    return;
  }

  v8 = v7;
  v9 = [v7 processMessageData:a3 participantID:v6 topic:&v23 transactionID:&v24 messageStatus:&v25 isInternalMessage:&v22];

  if ((v22 & 1) == 0)
  {
    asyncProcessingQueue = self->super._asyncProcessingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VCControlChannelMultiWay_messageReceived_participantInfo___block_invoke;
    block[3] = &unk_1E85F6478;
    block[4] = v23;
    block[5] = self;
    block[6] = v9;
    block[7] = v24;
    block[8] = v6;
    dispatch_async(asyncProcessingQueue, block);
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportSessionID = self->_transportSessionID;
        *buf = 136317186;
        v27 = v12;
        v28 = 2080;
        v29 = "[VCControlChannelMultiWay messageReceived:participantInfo:]";
        v30 = 1024;
        v31 = 384;
        v32 = 1024;
        *v33 = transportSessionID;
        *&v33[4] = 2112;
        *&v33[6] = v23;
        *&v33[14] = 2112;
        *&v33[16] = v9;
        v34 = 2112;
        v35 = v6;
        v36 = 2112;
        v37 = v24;
        v38 = 1024;
        LODWORD(v39) = v25;
        v15 = " [%s] %s:%d messageReceived finished for sessionID='%d': topic='%@', message='%@', participantID='%@', sequenceNumber='%@', status='%d'";
        v16 = v13;
        v17 = 80;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_transportSessionID;
        *buf = 136317698;
        v27 = v18;
        v28 = 2080;
        v29 = "[VCControlChannelMultiWay messageReceived:participantInfo:]";
        v30 = 1024;
        v31 = 384;
        v32 = 2112;
        *v33 = v11;
        *&v33[8] = 2048;
        *&v33[10] = self;
        *&v33[18] = 1024;
        *&v33[20] = v20;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v9;
        v38 = 2112;
        v39 = v6;
        v40 = 2112;
        v41 = v24;
        v42 = 1024;
        v43 = v25;
        v15 = " [%s] %s:%d %@(%p) messageReceived finished for sessionID='%d': topic='%@', message='%@', participantID='%@', sequenceNumber='%@', status='%d'";
        v16 = v19;
        v17 = 100;
        goto LABEL_14;
      }
    }
  }
}

void __60__VCControlChannelMultiWay_messageReceived_participantInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"VCExternalClientDataTopic"];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v4 = MEMORY[0x1E1289F20](v3 + 168);
    [v4 controlChannel:*(a1 + 40) topic:*(a1 + 32) payload:*(a1 + 48) transactionID:objc_msgSend(*(a1 + 56) fromParticipant:{"unsignedLongValue"), *(a1 + 64)}];
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x1E1289F20](v3 + 176);
  if (objc_opt_respondsToSelector())
  {
    [v4 controlChannel:*(a1 + 40) receivedData:*(a1 + 48) transactionID:objc_msgSend(*(a1 + 56) fromParticipant:{"unsignedLongValue"), *(a1 + 64)}];
  }

  if (v4)
  {
LABEL_5:

    CFRelease(v4);
  }
}

- (BOOL)sendReliableMessageAndWait:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5
{
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCControlChannel reliableMessageResendInterval](self, "reliableMessageResendInterval")}];

  return [(VCControlChannelMultiWay *)self sendReliableMessageAndWait:a3 withTopic:a4 participantID:a5 timeout:v9 withOptions:0];
}

- (id)copyDialogForParticipantID:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_dialogs, "objectForKeyedSubscript:", [a3 stringValue]);
  if (v5)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_38;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136316418;
          v24 = v12;
          v25 = 2080;
          v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
          v27 = 1024;
          v28 = 398;
          v29 = 2112;
          v30 = v6;
          v31 = 2048;
          v32 = self;
          v33 = 2112;
          v34 = a3;
          v11 = " [%s] %s:%d %@(%p) sendMessage: found existing dialog for participantID='%@'";
LABEL_27:
          v17 = v13;
          v18 = 58;
          goto LABEL_28;
        }

        goto LABEL_38;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      v23 = 136316418;
      v24 = v12;
      v25 = 2080;
      v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
      v27 = 1024;
      v28 = 398;
      v29 = 2112;
      v30 = v6;
      v31 = 2048;
      v32 = self;
      v33 = 2112;
      v34 = a3;
      v21 = " [%s] %s:%d %@(%p) sendMessage: found existing dialog for participantID='%@'";
LABEL_35:
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, v21, &v23, 0x3Au);
      goto LABEL_38;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_38;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [VCControlChannelMultiWay copyDialogForParticipantID:];
      }

      goto LABEL_38;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v23 = 136315906;
    v24 = v8;
    v25 = 2080;
    v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
    v27 = 1024;
    v28 = 398;
    v29 = 2112;
    v30 = a3;
    v11 = " [%s] %s:%d sendMessage: found existing dialog for participantID='%@'";
LABEL_21:
    v17 = v9;
    v18 = 38;
LABEL_28:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v11, &v23, v18);
    goto LABEL_38;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_38;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [VCControlChannelMultiWay copyDialogForParticipantID:];
      }

      goto LABEL_38;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v23 = 136315906;
    v24 = v15;
    v25 = 2080;
    v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
    v27 = 1024;
    v28 = 400;
    v29 = 2112;
    v30 = a3;
    v11 = " [%s] %s:%d sendMessage: could not find existing dialog for participantID='%@'";
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_38;
  }

  v19 = VRTraceErrorLogLevelToCSTR();
  v13 = *MEMORY[0x1E6986650];
  v20 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    v23 = 136316418;
    v24 = v19;
    v25 = 2080;
    v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
    v27 = 1024;
    v28 = 400;
    v29 = 2112;
    v30 = v7;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = a3;
    v21 = " [%s] %s:%d %@(%p) sendMessage: could not find existing dialog for participantID='%@'";
    goto LABEL_35;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136316418;
    v24 = v19;
    v25 = 2080;
    v26 = "[VCControlChannelMultiWay copyDialogForParticipantID:]";
    v27 = 1024;
    v28 = 400;
    v29 = 2112;
    v30 = v7;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = a3;
    v11 = " [%s] %s:%d %@(%p) sendMessage: could not find existing dialog for participantID='%@'";
    goto LABEL_27;
  }

LABEL_38:
  objc_sync_exit(self);
  return v5;
}

- (BOOL)sendReliableMessageAndWait:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 timeout:(id)a6 withOptions:(id)a7
{
  v57 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportSessionID = self->_transportSessionID;
        *buf = 136316674;
        v48 = v14;
        v49 = 2080;
        v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
        v51 = 1024;
        v52 = 407;
        v53 = 2112;
        v54 = a3;
        v55 = 1024;
        *v56 = transportSessionID;
        *&v56[4] = 2048;
        *&v56[6] = a5;
        *&v56[14] = 2112;
        *&v56[16] = a6;
        v17 = " [%s] %s:%d VCControlChannelMultiWay: sendReliableMessageAndWait: message '%@' for sessionID '%d', participantID '%llu', timeout '%@'";
        v18 = v15;
        v19 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_transportSessionID;
        *buf = 136317186;
        v48 = v20;
        v49 = 2080;
        v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
        v51 = 1024;
        v52 = 407;
        v53 = 2112;
        v54 = v13;
        v55 = 2048;
        *v56 = self;
        *&v56[8] = 2112;
        *&v56[10] = a3;
        *&v56[18] = 1024;
        *&v56[20] = v22;
        *&v56[24] = 2048;
        *&v56[26] = a5;
        *&v56[34] = 2112;
        *&v56[36] = a6;
        v17 = " [%s] %s:%d %@(%p) VCControlChannelMultiWay: sendReliableMessageAndWait: message '%@' for sessionID '%d', participantID '%llu', timeout '%@'";
        v18 = v21;
        v19 = 84;
        goto LABEL_11;
      }
    }
  }

  if (!self->_isRunning)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v33 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v33 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v27)
      {
        return v27;
      }

      *buf = 136316930;
      v48 = v39;
      v49 = 2080;
      v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
      v51 = 1024;
      v52 = 410;
      v53 = 2112;
      v54 = v33;
      v55 = 2048;
      *v56 = self;
      *&v56[8] = 2112;
      *&v56[10] = a3;
      *&v56[18] = 2112;
      *&v56[20] = a4;
      *&v56[28] = 2048;
      *&v56[30] = a5;
      v37 = " [%s] %s:%d %@(%p) Attempt to send reliable message=%@ with topic=%@ to participantID=%llu when Control Channel is not started. Ignoring...";
      v38 = v40;
      v41 = 78;
      goto LABEL_47;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      return v27;
    }

    *buf = 136316418;
    v48 = v35;
    v49 = 2080;
    v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
    v51 = 1024;
    v52 = 410;
    v53 = 2112;
    v54 = a3;
    v55 = 2112;
    *v56 = a4;
    *&v56[8] = 2048;
    *&v56[10] = a5;
    v37 = " [%s] %s:%d Attempt to send reliable message=%@ with topic=%@ to participantID=%llu when Control Channel is not started. Ignoring...";
    v38 = v36;
LABEL_46:
    v41 = 58;
LABEL_47:
    _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, v37, buf, v41);
    goto LABEL_18;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  v24 = [(VCControlChannelMultiWay *)self copyDialogForParticipantID:v23];
  v25 = v24;
  if (!v24)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v27)
        {
          return v27;
        }

        [VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:];
      }

      goto LABEL_18;
    }

    if (objc_opt_respondsToSelector())
    {
      v34 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v34 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_18:
      LOBYTE(v27) = 0;
      return v27;
    }

    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      return v27;
    }

    *buf = 136316418;
    v48 = v42;
    v49 = 2080;
    v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
    v51 = 1024;
    v52 = 413;
    v53 = 2112;
    v54 = v34;
    v55 = 2048;
    *v56 = self;
    *&v56[8] = 2048;
    *&v56[10] = a5;
    v37 = " [%s] %s:%d %@(%p) Could not create dialog for unknown participantID='%llu'";
    v38 = v43;
    goto LABEL_46;
  }

  v26 = [v24 sendReliableMessage:a3 withTopic:a4 timeout:a6 withOptions:a7];

  if (v26)
  {
    LOBYTE(v27) = 1;
    return v27;
  }

  objc_sync_enter(self);
  v28 = [(NSMutableDictionary *)self->_activeParticipants objectForKeyedSubscript:v23];
  objc_sync_exit(self);
  if (!v28 || self->_didSubmitCCReliableDataNotReceivedSymptom)
  {
    goto LABEL_18;
  }

  [(VCObject *)self reportingAgent];
  v45[1] = @"SymptomReporterOptionalKeyCCMEssageTopic";
  v46[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a5, @"SymptomReporterOptionalKeyParticipantID"}];
  v29 = @"NoTopic";
  if (a4)
  {
    v29 = a4;
  }

  v46[1] = v29;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  reportingSymptom();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
      *buf = 136316162;
      v48 = v30;
      v49 = 2080;
      v50 = "[VCControlChannelMultiWay sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:]";
      v51 = 1024;
      v52 = 427;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      *v56 = a4;
      _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d Generated 'CCReliableDataNotReceived' symptom for participantID=%@ with topic=%@", buf, 0x30u);
    }
  }

  LOBYTE(v27) = 0;
  self->_didSubmitCCReliableDataNotReceivedSymptom = 1;
  return v27;
}

- (BOOL)sendReliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 timeout:(unsigned int)a6 withOptions:(id)a7 completion:(id)a8
{
  v27 = *MEMORY[0x1E69E9840];
  if (a8)
  {
    asyncProcessingQueue = self->super._asyncProcessingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__VCControlChannelMultiWay_sendReliableMessage_withTopic_participantID_timeout_withOptions_completion___block_invoke;
    block[3] = &unk_1E85F8B00;
    block[4] = self;
    block[5] = a3;
    v16 = a6;
    block[6] = a4;
    block[7] = a7;
    block[8] = a8;
    block[9] = a5;
    dispatch_async(asyncProcessingQueue, block);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCControlChannelMultiWay sendReliableMessage:withTopic:participantID:timeout:withOptions:completion:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCControlChannelMultiWay sendReliableMessage:withTopic:participantID:timeout:withOptions:completion:]";
        v21 = 1024;
        v22 = 441;
        v23 = 2112;
        v24 = v12;
        v25 = 2048;
        v26 = self;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) completion should not be nil", buf, 0x30u);
      }
    }
  }

  return a8 != 0;
}

uint64_t __103__VCControlChannelMultiWay_sendReliableMessage_withTopic_participantID_timeout_withOptions_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendReliableMessageAndWait:*(a1 + 40) withTopic:*(a1 + 48) participantID:*(a1 + 72) timeout:objc_msgSend(MEMORY[0x1E696AD98] withOptions:{"numberWithUnsignedInt:", *(a1 + 80)), *(a1 + 56)}];
  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)sendReliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportSessionID = self->_transportSessionID;
        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[VCControlChannelMultiWay sendReliableMessage:withTopic:participantID:]";
        v25 = 1024;
        v26 = 453;
        v27 = 2112;
        v28 = a3;
        v29 = 1024;
        *v30 = transportSessionID;
        *&v30[4] = 2048;
        *&v30[6] = a5;
        v13 = " [%s] %s:%d VCControlChannelMultiWay: sendReliableMessage: message '%@' for sessionID '%d', participantID '%llu's";
        v14 = v11;
        v15 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_transportSessionID;
        *buf = 136316930;
        v22 = v16;
        v23 = 2080;
        v24 = "[VCControlChannelMultiWay sendReliableMessage:withTopic:participantID:]";
        v25 = 1024;
        v26 = 453;
        v27 = 2112;
        v28 = v9;
        v29 = 2048;
        *v30 = self;
        *&v30[8] = 2112;
        *&v30[10] = a3;
        v31 = 1024;
        v32 = v18;
        v33 = 2048;
        v34 = a5;
        v13 = " [%s] %s:%d %@(%p) VCControlChannelMultiWay: sendReliableMessage: message '%@' for sessionID '%d', participantID '%llu's";
        v14 = v17;
        v15 = 74;
        goto LABEL_11;
      }
    }
  }

  asyncProcessingQueue = self->super._asyncProcessingQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__VCControlChannelMultiWay_sendReliableMessage_withTopic_participantID___block_invoke;
  v20[3] = &unk_1E85F4AB8;
  v20[4] = self;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a5;
  dispatch_async(asyncProcessingQueue, v20);
}

uint64_t __72__VCControlChannelMultiWay_sendReliableMessage_withTopic_participantID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sendReliableMessageAndWait:*(a1 + 40) withTopic:*(a1 + 48) participantID:*(a1 + 56)];
  v3 = [objc_msgSend(*(a1 + 40) "VCCCPayloadKey")];
  v4 = *(a1 + 32);
  if (v3)
  {
    Weak = objc_loadWeak((v4 + 168));
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) VCCCString];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];

    return [Weak controlChannel:v6 sendReliableMessage:v7 didSucceed:v2 toParticipant:v8];
  }

  else
  {
    v10 = objc_loadWeak((v4 + 176));
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) VCCCData];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];

      return [v10 controlChannel:v11 sendReliableData:v12 didSucceed:v2 toParticipant:v13];
    }
  }

  return result;
}

- (void)sendUnreliableMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportSessionID = self->_transportSessionID;
        *buf = 136316418;
        v22 = v10;
        v23 = 2080;
        v24 = "[VCControlChannelMultiWay sendUnreliableMessage:withTopic:participantID:]";
        v25 = 1024;
        v26 = 469;
        v27 = 2112;
        v28 = a3;
        v29 = 1024;
        *v30 = transportSessionID;
        *&v30[4] = 2048;
        *&v30[6] = a5;
        v13 = " [%s] %s:%d VCControlChannelMultiWay: sendUnreliableMessage: message '%@' for sessionID '%d', participantID '%llu'";
        v14 = v11;
        v15 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_transportSessionID;
        *buf = 136316930;
        v22 = v16;
        v23 = 2080;
        v24 = "[VCControlChannelMultiWay sendUnreliableMessage:withTopic:participantID:]";
        v25 = 1024;
        v26 = 469;
        v27 = 2112;
        v28 = v9;
        v29 = 2048;
        *v30 = self;
        *&v30[8] = 2112;
        *&v30[10] = a3;
        v31 = 1024;
        v32 = v18;
        v33 = 2048;
        v34 = a5;
        v13 = " [%s] %s:%d %@(%p) VCControlChannelMultiWay: sendUnreliableMessage: message '%@' for sessionID '%d', participantID '%llu'";
        v14 = v17;
        v15 = 74;
        goto LABEL_11;
      }
    }
  }

  asyncProcessingQueue = self->super._asyncProcessingQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__VCControlChannelMultiWay_sendUnreliableMessage_withTopic_participantID___block_invoke;
  v20[3] = &unk_1E85F4AB8;
  v20[4] = self;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a5;
  dispatch_async(asyncProcessingQueue, v20);
}

void __74__VCControlChannelMultiWay_sendUnreliableMessage_withTopic_participantID___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) copyDialogForParticipantID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 56))}];
  if (v3)
  {
    v4 = v3;
    [v3 sendUnreliableMessage:*(a1 + 40) withTopic:*(a1 + 48) sessionID:*(*(a1 + 32) + 256) participantID:objc_msgSend(MEMORY[0x1E696AD98] transactionDelegate:{"numberWithUnsignedLongLong:", *(a1 + 56)), *(a1 + 32)}];
  }

  else
  {
    __74__VCControlChannelMultiWay_sendUnreliableMessage_withTopic_participantID___block_invoke_cold_1(v2);
  }
}

- (BOOL)addActiveParticipant:(unint64_t)a3 participantUUID:(id)a4 withConfiguration:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    [VCControlChannelMultiWay addActiveParticipant:&v39 participantUUID:? withConfiguration:?];
    return v39;
  }

  objc_sync_enter(self);
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_activeParticipants, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_30;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v39 = 136315906;
      v40 = v35;
      v41 = 2080;
      v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
      v43 = 1024;
      v44 = 488;
      v45 = 2048;
      v46 = a3;
      v28 = " [%s] %s:%d API misuse! Participant '%llu' has alrady been added to the list of active participants! Ignoring...";
      v29 = v36;
      v30 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v34 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v34 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_30;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v39 = 136316418;
      v40 = v37;
      v41 = 2080;
      v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
      v43 = 1024;
      v44 = 488;
      v45 = 2112;
      v46 = v34;
      v47 = 2048;
      v48 = self;
      v49 = 2048;
      v50 = a3;
      v28 = " [%s] %s:%d %@(%p) API misuse! Participant '%llu' has alrady been added to the list of active participants! Ignoring...";
      v29 = v38;
      v30 = 58;
    }

    goto LABEL_29;
  }

  var0 = a5->var0;
  if (var0 != 2)
  {
    if (var0 == 1)
    {
      v10 = [VCControlChannelDialogV1 alloc];
      v11 = -[VCControlChannelDialogV1 initWithSessionID:participantID:participantUUID:optionalTopics:participantConfig:transactionDelegate:](v10, "initWithSessionID:participantID:participantUUID:optionalTopics:participantConfig:transactionDelegate:", self->_transportSessionID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3], a4, self->super._optionalTopics, a5, self);
      goto LABEL_7;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_30;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v39 = 136315906;
      v40 = v26;
      v41 = 2080;
      v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
      v43 = 1024;
      v44 = 499;
      v45 = 1024;
      LODWORD(v46) = var0;
      v28 = " [%s] %s:%d Wrong version of protocol supplied '%u'. Ignoring...";
      v29 = v27;
      v30 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_30;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v39 = 136316418;
      v40 = v31;
      v41 = 2080;
      v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
      v43 = 1024;
      v44 = 499;
      v45 = 2112;
      v46 = v15;
      v47 = 2048;
      v48 = self;
      v49 = 1024;
      LODWORD(v50) = var0;
      v28 = " [%s] %s:%d %@(%p) Wrong version of protocol supplied '%u'. Ignoring...";
      v29 = v32;
      v30 = 54;
    }

LABEL_29:
    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v39, v30);
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v12 = [VCControlChannelDialogV2 alloc];
  v11 = -[VCControlChannelDialogV2 initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:](v12, "initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:", self->_transportSessionID, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3], a4, a5, self);
LABEL_7:
  [(VCObject *)v11 setReportingAgent:self->super.super._reportingAgent];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_dialogs, "setObject:forKeyedSubscript:", v11, [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a3), "stringValue"}]);

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:var0];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_activeParticipants, "setObject:forKeyedSubscript:", v13, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_21;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    transportSessionID = self->_transportSessionID;
    v39 = 136316162;
    v40 = v16;
    v41 = 2080;
    v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
    v43 = 1024;
    v44 = 506;
    v45 = 2048;
    v46 = a3;
    v47 = 1024;
    LODWORD(v48) = transportSessionID;
    v19 = " [%s] %s:%d addActiveParticipant:'%llu' for sessionID '%d'";
    v20 = v17;
    v21 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_21;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v24 = self->_transportSessionID;
    v39 = 136316674;
    v40 = v22;
    v41 = 2080;
    v42 = "[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:]";
    v43 = 1024;
    v44 = 506;
    v45 = 2112;
    v46 = v14;
    v47 = 2048;
    v48 = self;
    v49 = 2048;
    v50 = a3;
    v51 = 1024;
    v52 = v24;
    v19 = " [%s] %s:%d %@(%p) addActiveParticipant:'%llu' for sessionID '%d'";
    v20 = v23;
    v21 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v39, v21);
LABEL_21:
  v25 = 1;
LABEL_31:
  objc_sync_exit(self);
  return v25;
}

- (void)processParticipantRemoval:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableDictionary *)self->_activeParticipants removeObjectForKey:a3];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_dialogs, "objectForKeyedSubscript:", [a3 stringValue]);
  -[NSMutableDictionary removeObjectForKey:](self->_dialogs, "removeObjectForKey:", [a3 stringValue]);
  objc_sync_exit(self);

  [v5 flushActiveTransactions];
}

- (void)removeActiveParticipant:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [(VCControlChannelMultiWay *)self processParticipantRemoval:v5];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportSessionID = self->_transportSessionID;
        *buf = 136316162;
        v19 = v7;
        v20 = 2080;
        v21 = "[VCControlChannelMultiWay removeActiveParticipant:]";
        v22 = 1024;
        v23 = 528;
        v24 = 2048;
        v25 = a3;
        v26 = 1024;
        LODWORD(v27) = transportSessionID;
        v10 = " [%s] %s:%d removeActiveParticipant:Removed participant '%llu' for sessionID '%d'";
        v11 = v8;
        v12 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_transportSessionID;
        *buf = 136316674;
        v19 = v13;
        v20 = 2080;
        v21 = "[VCControlChannelMultiWay removeActiveParticipant:]";
        v22 = 1024;
        v23 = 528;
        v24 = 2112;
        v25 = v6;
        v26 = 2048;
        v27 = self;
        v28 = 2048;
        v29 = a3;
        v30 = 1024;
        v31 = v15;
        v10 = " [%s] %s:%d %@(%p) removeActiveParticipant:Removed participant '%llu' for sessionID '%d'";
        v11 = v14;
        v12 = 64;
        goto LABEL_11;
      }
    }
  }

  asyncProcessingQueue = self->super._asyncProcessingQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__VCControlChannelMultiWay_removeActiveParticipant___block_invoke;
  v17[3] = &unk_1E85F37F0;
  v17[4] = self;
  v17[5] = v5;
  dispatch_async(asyncProcessingQueue, v17);
}

uint64_t __52__VCControlChannelMultiWay_removeActiveParticipant___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 168));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [Weak controlChannel:v3 clearTransactionCacheForParticipant:v4];
}

- (void)removeAllActiveParticipants
{
  v40 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v3 = [(NSMutableDictionary *)self->_activeParticipants allKeys];
  objc_sync_exit(self);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v3;
  v5 = [v3 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v5)
  {
    v7 = *v37;
    *&v6 = 136316162;
    v20 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        [(VCControlChannelMultiWay *)self processParticipantRemoval:v9, v20];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              transportSessionID = self->_transportSessionID;
              *buf = v20;
              v22 = v17;
              v23 = 2080;
              v24 = "[VCControlChannelMultiWay removeAllActiveParticipants]";
              v25 = 1024;
              v26 = 542;
              v27 = 2112;
              v28 = v9;
              v29 = 1024;
              LODWORD(v30) = transportSessionID;
              v14 = v18;
              v15 = " [%s] %s:%d Removed participant '%@' for sessionID '%d'";
              v16 = 44;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v10 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v10 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = self->_transportSessionID;
              *buf = 136316674;
              v22 = v11;
              v23 = 2080;
              v24 = "[VCControlChannelMultiWay removeAllActiveParticipants]";
              v25 = 1024;
              v26 = 542;
              v27 = 2112;
              v28 = v10;
              v29 = 2048;
              v30 = self;
              v31 = 2112;
              v32 = v9;
              v33 = 1024;
              v34 = v13;
              v14 = v12;
              v15 = " [%s] %s:%d %@(%p) Removed participant '%@' for sessionID '%d'";
              v16 = 64;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
              continue;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v5);
  }
}

- (void)scheduleAfter:(unsigned int)a3 block:(id)a4
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = dispatch_time(0, 1000000000 * a3);
  asyncProcessingQueue = self->super._asyncProcessingQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VCControlChannelMultiWay_scheduleAfter_block___block_invoke;
  v8[3] = &unk_1E85F7268;
  v8[4] = a4;
  dispatch_after(v6, asyncProcessingQueue, v8);
}

uint64_t __48__VCControlChannelMultiWay_scheduleAfter_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateTransactionIDWithKeyMaterial:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a3 objectForKeyedSubscript:{@"SecurityLocallyGenerated", "BOOLValue"}])
  {
    return;
  }

  if (self->_currentSendMKI)
  {
    if (VCMediaKeyIndex_isEqual(self->_currentSendMKI, [a3 objectForKeyedSubscript:@"SecurityKeyIndex"]))
    {
      return;
    }

    p_transactionID = &self->_transactionID;
    do
    {
      v6 = *p_transactionID;
      v7 = (*p_transactionID & 0xFFFFFFFFFFFF0000) + 0x10000;
      v8 = *p_transactionID;
      atomic_compare_exchange_strong_explicit(p_transactionID, &v8, v7, memory_order_relaxed, memory_order_relaxed);
    }

    while (v8 != v6);
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136316418;
          v27 = v24;
          v28 = 2080;
          v29 = "[VCControlChannelMultiWay updateTransactionIDWithKeyMaterial:]";
          v30 = 1024;
          v31 = 574;
          v32 = 2112;
          v33 = v9;
          v34 = 2048;
          v35 = self;
          v36 = 2048;
          v37 = v7;
          v18 = " [%s] %s:%d %@(%p) Reset transactionID=%llu";
          v20 = v25;
          goto LABEL_29;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v26 = 136315906;
    v27 = v19;
    v28 = 2080;
    v29 = "[VCControlChannelMultiWay updateTransactionIDWithKeyMaterial:]";
    v30 = 1024;
    v31 = 574;
    v32 = 2048;
    v33 = v7;
    v18 = " [%s] %s:%d Reset transactionID=%llu";
LABEL_20:
    v20 = v17;
    v21 = 38;
LABEL_30:
    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v18, &v26, v21);
    return;
  }

  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SecurityMaxSequenceNumber", "unsignedLongLongValue"}];
  v11 = v10;
  v12 = &self->_transactionID;
  do
  {
    v13 = *v12;
    v14 = *v12;
    atomic_compare_exchange_strong_explicit(v12, &v14, v10, memory_order_relaxed, memory_order_relaxed);
  }

  while (v14 != v13);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v26 = 136315906;
    v27 = v16;
    v28 = 2080;
    v29 = "[VCControlChannelMultiWay updateTransactionIDWithKeyMaterial:]";
    v30 = 1024;
    v31 = 562;
    v32 = 2048;
    v33 = v11;
    v18 = " [%s] %s:%d Initialized transactionID=%llu";
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136316418;
      v27 = v22;
      v28 = 2080;
      v29 = "[VCControlChannelMultiWay updateTransactionIDWithKeyMaterial:]";
      v30 = 1024;
      v31 = 562;
      v32 = 2112;
      v33 = v15;
      v34 = 2048;
      v35 = self;
      v36 = 2048;
      v37 = v11;
      v18 = " [%s] %s:%d %@(%p) Initialized transactionID=%llu";
      v20 = v23;
LABEL_29:
      v21 = 58;
      goto LABEL_30;
    }
  }
}

- (void)addNewKeyMaterial:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (self->_isEncryptionEnabled)
  {
    sequentialKeyMaterialQueue = self->_sequentialKeyMaterialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VCControlChannelMultiWay_addNewKeyMaterial___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a3;
    dispatch_async(sequentialKeyMaterialQueue, block);
  }
}

uint64_t __46__VCControlChannelMultiWay_addNewKeyMaterial___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateTransactionIDWithKeyMaterial:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 updateEncryptionWithKeyMaterial:v3];
}

- (void)setEncryptionWithEncryptionMaterial:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_isEncryptionEnabled)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x10810000000;
    v12[3] = &unk_1DBF04739;
    v3 = *&a3->var2.var2;
    v25 = *&a3->var2.var1[15];
    v26 = v3;
    v27 = *&a3->var5;
    v4 = *&a3->var2.var0[32];
    v21 = *&a3->var2.var0[16];
    v22 = v4;
    v5 = *&a3->var2.var0[64];
    v23 = *&a3->var2.var0[48];
    v24 = v5;
    v6 = *&a3->var0.var1[15];
    v17 = *&a3->var0.var0[64];
    v18 = v6;
    v7 = *a3->var2.var0;
    v19 = *&a3->var0.var2;
    v20 = v7;
    v8 = *&a3->var0.var0[16];
    v13 = *a3->var0.var0;
    v14 = v8;
    v9 = *&a3->var0.var0[48];
    v15 = *&a3->var0.var0[32];
    v16 = v9;
    sequentialKeyMaterialQueue = self->_sequentialKeyMaterialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__VCControlChannelMultiWay_setEncryptionWithEncryptionMaterial___block_invoke;
    v11[3] = &unk_1E85F3868;
    v11[4] = self;
    v11[5] = v12;
    dispatch_async(sequentialKeyMaterialQueue, v11);
    _Block_object_dispose(v12, 8);
  }
}

- (BOOL)isParticipantActive:(unint64_t)a3
{
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_activeParticipants, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]) != 0;
  objc_sync_exit(self);
  return v5;
}

- (id)lastUsedMKIBytes
{
  v15 = *MEMORY[0x1E69E9840];
  currentSendMKI = self->_currentSendMKI;
  if (currentSendMKI)
  {
    *v8 = 0;
    *&v8[8] = 0;
    VCMediaKeyIndex_FullKeyBytes(currentSendMKI, v8);
    return [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
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
          [VCControlChannelMultiWay lastUsedMKIBytes];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCControlChannelMultiWay *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v8 = 136316162;
          *&v8[4] = v6;
          *&v8[12] = 2080;
          *&v8[14] = "[VCControlChannelMultiWay lastUsedMKIBytes]";
          v9 = 1024;
          v10 = 617;
          v11 = 2112;
          v12 = v5;
          v13 = 2048;
          v14 = self;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) currentSendMKI is nil", v8, 0x30u);
        }
      }
    }

    return 0;
  }
}

- (int)protocolVersionforParticipantID:(id)a3
{
  objc_sync_enter(self);
  if (a3)
  {
    v5 = [(NSMutableDictionary *)self->_activeParticipants objectForKeyedSubscript:a3];
    if (v5)
    {
      LODWORD(a3) = [v5 unsignedIntValue];
    }

    else
    {
      LODWORD(a3) = 0;
    }
  }

  objc_sync_exit(self);
  return a3;
}

- (void)reportSignificantHandshakeDelaySymptomForParticipantID:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  sequentialKeyMaterialQueue = self->_sequentialKeyMaterialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__VCControlChannelMultiWay_reportSignificantHandshakeDelaySymptomForParticipantID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(sequentialKeyMaterialQueue, block);
}

- (void)periodicTask:(void *)a3
{
  v5 = micro();
  lastUpdateTimestamp = self->super._lastUpdateTimestamp;
  self->super._lastUpdateTimestamp = v5;
  v7 = v5 - lastUpdateTimestamp;
  add_explicit = atomic_fetch_add_explicit(&self->super._bytesSent, 0, memory_order_relaxed);
  v9 = add_explicit - self->super._lastProcessedBytesSent;
  self->super._lastProcessedBytesSent = add_explicit;
  if (v7 == 0.0)
  {
    v13 = 0;
    self->super._maxSentRate = 0;
  }

  else
  {
    v10 = v9 / v7;
    maxSentRate = self->super._maxSentRate;
    if (v10 > maxSentRate)
    {
      maxSentRate = v9 / v7;
    }

    self->super._maxSentRate = maxSentRate;
    minSentRate = self->super._minSentRate;
    if (v10 > minSentRate)
    {
      v10 = minSentRate;
    }

    v13 = v10;
  }

  self->super._minSentRate = v13;
  self->super._bytesSentToReport += v9;
  v14 = atomic_fetch_add_explicit(&self->super._bytesReceived, 0, memory_order_relaxed);
  v15 = v14 - self->super._lastProcessedBytesReceived;
  self->super._lastProcessedBytesReceived = v14;
  if (v7 == 0.0)
  {
    v19 = 0;
    self->super._maxReceivedRate = 0;
  }

  else
  {
    v16 = v15 / v7;
    maxReceivedRate = self->super._maxReceivedRate;
    if (v16 > maxReceivedRate)
    {
      maxReceivedRate = v16;
    }

    self->super._maxReceivedRate = maxReceivedRate;
    minReceivedRate = self->super._minReceivedRate;
    if (v16 > minReceivedRate)
    {
      v16 = minReceivedRate;
    }

    v19 = v16;
  }

  self->super._minReceivedRate = v19;
  self->super._bytesReceivedToReport += v15;
  if (a3)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._minSentRate), @"CCMinBytesSent"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._maxSentRate), @"CCMaxBytesSent"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._bytesSentToReport), @"CCRawBytesSent"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._minReceivedRate), @"CCMinBytesReceived"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._maxReceivedRate), @"CCMaxBytesReceived"}];
    [a3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->super._bytesReceivedToReport), @"CCRawBytesReceived"}];

    [(VCControlChannelMultiWay *)self flushRealTimeReportingStats];
  }
}

- (void)registerPeriodicTask
{
  [(VCObject *)self reportingAgent];

  reportingRegisterPeriodicTaskWeak();
}

- (void)deregisterPeriodicTask
{
  [(VCObject *)self reportingAgent];

  reportingUnregisterPeriodicTask();
}

- (void)flushRealTimeReportingStats
{
  self->super._minSentRate = 0x7FFFFFFF;
  self->super._minReceivedRate = 0x7FFFFFFF;
  self->super._maxSentRate = 0;
  self->super._maxReceivedRate = 0;
  self->super._bytesSentToReport = 0;
  self->super._bytesReceivedToReport = 0;
}

- (void)flushReportingStats
{
  atomic_fetch_and_explicit(&self->super._bytesSent, 0, memory_order_relaxed);
  atomic_fetch_and_explicit(&self->super._bytesReceived, 0, memory_order_relaxed);
  self->super._lastProcessedBytesReceived = 0;
  self->super._lastProcessedBytesSent = 0;
  [(VCControlChannelMultiWay *)self flushRealTimeReportingStats];
}

_BYTE *__83__VCControlChannelMultiWay_reportSignificantHandshakeDelaySymptomForParticipantID___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result[268] == 1)
  {
    [result reportingAgent];
    v3 = *(a1 + 40);
    v4 = @"SymptomReporterOptionalKeyParticipantID";
    v5[0] = v3;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    return reportingSymptom();
  }

  return result;
}

- (void)initWithTransportSessionID:reportingAgent:mode:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __33__VCControlChannelMultiWay_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.3()
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

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.4()
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

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.5()
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

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.6()
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

  OUTLINED_FUNCTION_20();
}

+ (void)allocPayoadDataFromVTPPacket:vpktFlags:channelDataFormat:.cold.7()
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

  OUTLINED_FUNCTION_20();
}

- (void)messageReceived:(void *)a1 participantInfo:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)copyDialogForParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d sendMessage: found existing dialog for participantID='%@'");
}

- (void)copyDialogForParticipantID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d sendMessage: could not find existing dialog for participantID='%@'");
}

- (void)sendReliableMessageAndWait:withTopic:participantID:timeout:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)sendReliableMessage:withTopic:participantID:timeout:withOptions:completion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 441;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d completion should not be nil", v1, 0x1Cu);
}

void __74__VCControlChannelMultiWay_sendUnreliableMessage_withTopic_participantID___block_invoke_cold_1(id *a1)
{
  if (objc_opt_class() == *a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)addActiveParticipant:(void *)a1 participantUUID:(_BYTE *)a2 withConfiguration:.cold.1(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      v9 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)lastUsedMKIBytes
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 617;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d currentSendMKI is nil", v1, 0x1Cu);
}

@end