@interface VCSecureDataChannel
- (VCSecureDataChannel)initWithLocalCallID:(unsigned int)a3 remoteCallID:(unsigned int)a4 isCaller:(BOOL)a5 sharedSecret:(id)a6 error:(id *)a7;
- (int)convertData:(id)a3 toEncryptedData:(id *)a4 encrypted:(BOOL)a5;
- (int)convertEncryptedData:(id)a3 toData:(id *)a4 encrypted:(BOOL)a5;
- (int)sendData:(id)a3 messageType:(unsigned int)a4 encrypted:(BOOL)a5;
- (int)setupWithSharedSecret:(id)a3 isCaller:(BOOL)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation VCSecureDataChannel

- (VCSecureDataChannel)initWithLocalCallID:(unsigned int)a3 remoteCallID:(unsigned int)a4 isCaller:(BOOL)a5 sharedSecret:(id)a6 error:(id *)a7
{
  v9 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = VCSecureDataChannel;
  v12 = [(VCSecureDataChannel *)&v38 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v12->_localCallID = a3;
  v12->_remoteCallID = a4;
  v12->_maxUDPPayloadSize = VCMaxUDPPayloadSize(1280, 1);
  if ([(VCSecureDataChannel *)v13 setupWithSharedSecret:a6 isCaller:v9 error:a7]< 0)
  {

    return 0;
  }

  v14 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v13];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke;
  v37[3] = &unk_1E85F9140;
  v37[4] = v14;
  v15 = +[VCTransport sharedInstance];
  v13->_transport = v15;
  [(VCTransport *)v15 registerDataReceivedHandler:v37 forCallID:v13->_localCallID];
  if (v13->tlsRecord)
  {
    if (objc_opt_class() == v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(VCSecureDataChannel *)v13 maxEncryptedDataSize];
          *buf = 136315906;
          v40 = v17;
          v41 = 2080;
          v42 = "[VCSecureDataChannel initWithLocalCallID:remoteCallID:isCaller:sharedSecret:error:]";
          v43 = 1024;
          v44 = 74;
          v45 = 2048;
          v46 = v19;
          v20 = " [%s] %s:%d maxEncryptedDataSize = %ld";
          v21 = v18;
          v22 = 38;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCSecureDataChannel *)v13 performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(VCSecureDataChannel *)v13 maxEncryptedDataSize];
          *buf = 136316418;
          v40 = v23;
          v41 = 2080;
          v42 = "[VCSecureDataChannel initWithLocalCallID:remoteCallID:isCaller:sharedSecret:error:]";
          v43 = 1024;
          v44 = 74;
          v45 = 2112;
          v46 = v16;
          v47 = 2048;
          v48 = v13;
          v49 = 2048;
          v50 = v25;
          v20 = " [%s] %s:%d %@(%p) maxEncryptedDataSize = %ld";
          v21 = v24;
          v22 = 58;
          goto LABEL_15;
        }
      }
    }
  }

  if (objc_opt_class() == v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(VCSecureDataChannel *)v13 maxUnencryptedDataSize];
        *buf = 136315906;
        v40 = v27;
        v41 = 2080;
        v42 = "[VCSecureDataChannel initWithLocalCallID:remoteCallID:isCaller:sharedSecret:error:]";
        v43 = 1024;
        v44 = 76;
        v45 = 2048;
        v46 = v29;
        v30 = " [%s] %s:%d maxUnencryptedDataSize = %ld";
        v31 = v28;
        v32 = 38;
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCSecureDataChannel *)v13 performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(VCSecureDataChannel *)v13 maxUnencryptedDataSize];
        *buf = 136316418;
        v40 = v33;
        v41 = 2080;
        v42 = "[VCSecureDataChannel initWithLocalCallID:remoteCallID:isCaller:sharedSecret:error:]";
        v43 = 1024;
        v44 = 76;
        v45 = 2112;
        v46 = v26;
        v47 = 2048;
        v48 = v13;
        v49 = 2048;
        v50 = v35;
        v30 = " [%s] %s:%d %@(%p) maxUnencryptedDataSize = %ld";
        v31 = v34;
        v32 = 58;
        goto LABEL_26;
      }
    }
  }

  return v13;
}

void __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) strong];
  v12[0] = 0;
  if (!v7)
  {
    __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_3();
    goto LABEL_11;
  }

  v8 = v7;
  if (a4 == 2)
  {
    v9 = 1;
LABEL_6:
    v10 = [v7 convertEncryptedData:a2 toData:v12 encrypted:a3];
    if (v10 < 0)
    {
      __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_1(v10);
    }

    else
    {
      v11 = [v8 delegate];
      [v11 vcSecureDataChannel:v8 messageType:v9 receivedData:v12[0]];
    }

    goto LABEL_11;
  }

  if (a4 == 6)
  {
    v9 = 2;
    goto LABEL_6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_2();
    }
  }

LABEL_11:
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  [(VCTransport *)self->_transport registerDataReceivedHandler:0 forCallID:self->_localCallID];

  if (self->tlsRecord)
  {
    tls_record_destroy();
  }

  v3.receiver = self;
  v3.super_class = VCSecureDataChannel;
  [(VCSecureDataChannel *)&v3 dealloc];
}

- (int)setupWithSharedSecret:(id)a3 isCaller:(BOOL)a4 error:(id *)a5
{
  if (a3)
  {
    if ([a3 length] <= 0x9F)
    {
      v8 = -2144993279;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSecureDataChannel setupWithSharedSecret:v9 isCaller:a3 error:v10];
        }
      }

      goto LABEL_20;
    }

    ccDRBGGetRngState();
    self->tlsRecord = tls_record_create();
    tls_record_set_protocol_version();
    [a3 bytes];
    [a3 length];
    if (tls_record_init_pending_ciphers())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSecureDataChannel setupWithSharedSecret:isCaller:error:];
        }
      }

LABEL_19:
      tls_record_destroy();
      self->tlsRecord = 0;
      v8 = -2144993228;
LABEL_20:
      [GKVoiceChatError getNSError:a5 code:32024 detailedCode:800 returnCode:v8 filePath:0 description:@"Could not setup secure data channel" reason:0];
      return v8;
    }

    if (tls_record_advance_read_cipher())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSecureDataChannel setupWithSharedSecret:isCaller:error:];
        }
      }

      goto LABEL_19;
    }

    v8 = tls_record_advance_write_cipher();
    if (v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSecureDataChannel setupWithSharedSecret:isCaller:error:];
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    self->tlsRecord = 0;
  }

  return v8;
}

- (int)sendData:(id)a3 messageType:(unsigned int)a4 encrypted:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (a5)
  {
    v9 = [(VCSecureDataChannel *)self maxEncryptedDataSize];
  }

  else
  {
    v9 = [(VCSecureDataChannel *)self maxUnencryptedDataSize];
  }

  if ([a3 length] > v9)
  {
    [VCSecureDataChannel sendData:a3 messageType:&v22 encrypted:?];
LABEL_19:
    v19 = v22;
    goto LABEL_13;
  }

  v10 = [(VCSecureDataChannel *)self convertData:a3 toEncryptedData:&v21 encrypted:v5];
  if (v10 < 0)
  {
    [VCSecureDataChannel sendData:v10 messageType:&v22 encrypted:?];
    goto LABEL_19;
  }

  if (a4 == 1)
  {
    v17 = 2;
    goto LABEL_12;
  }

  if (a4 == 2)
  {
    v17 = 6;
    goto LABEL_12;
  }

  v18 = VCSignalErrorAt(2149974017, "Signalled error at %s: Invalid message type %d", v11, v12, v13, v14, v15, v16, "getOFTTypeForSecureDataMessageType");
  if ((v18 & 0x80000000) == 0)
  {
    v17 = 0;
LABEL_12:
    v19 = [(VCTransport *)self->_transport sendData:v21 localCallID:self->_localCallID remoteCallID:self->_remoteCallID encrypted:v5 OFTType:v17];
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v19 = v18;
LABEL_13:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSecureDataChannel sendData:messageType:encrypted:];
    }
  }

LABEL_16:

  return v19;
}

- (int)convertEncryptedData:(id)a3 toData:(id *)a4 encrypted:(BOOL)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  memset(v11, 170, 17);
  if (!a3 || !a4)
  {
    [VCSecureDataChannel convertEncryptedData:toData:encrypted:];
LABEL_15:
    v9 = v12;
    v7 = v13[0];
    goto LABEL_8;
  }

  if (!a5)
  {
    v9 = 0;
    *a4 = a3;
    return v9;
  }

  if (!self->tlsRecord)
  {
    [VCSecureDataChannel convertEncryptedData:toData:encrypted:];
    goto LABEL_15;
  }

  [a3 length];
  [a3 bytes];
  *&v11[1] = tls_record_decrypted_size();
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:*&v11[1]];
  *&v11[9] = [v7 bytes];
  v8 = tls_record_decrypt();
  if (v8)
  {
    [(VCSecureDataChannel *)v8 convertEncryptedData:v7 toData:&v12 encrypted:v13];
    goto LABEL_15;
  }

  if (v11[0] != 23)
  {
    [(VCSecureDataChannel *)v11 convertEncryptedData:v7 toData:&v12 encrypted:v13];
    goto LABEL_15;
  }

  [v7 setLength:*&v11[1]];
  v9 = 0;
  *a4 = v7;
LABEL_8:

  return v9;
}

- (int)convertData:(id)a3 toEncryptedData:(id *)a4 encrypted:(BOOL)a5
{
  if (a3 && a4)
  {
    if (!a5)
    {
      v7 = 0;
      *a4 = a3;
      return v7;
    }

    if (self->tlsRecord)
    {
      v7 = -2144993277;
      [a3 bytes];
      [a3 length];
      v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:tls_record_encrypted_size()];
      v9 = v8;
      if (v8)
      {
        [v8 bytes];
        if (tls_record_encrypt())
        {
          v7 = -2144993228;
        }

        else
        {
          v7 = 0;
          *a4 = v9;
        }
      }

      goto LABEL_8;
    }

    [VCSecureDataChannel convertData:toEncryptedData:encrypted:];
  }

  else
  {
    [VCSecureDataChannel convertData:toEncryptedData:encrypted:];
  }

  v7 = v11;
  v9 = v12;
LABEL_8:

  return v7;
}

void __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_1(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v5 = a1;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to decrypt the data. (%X)", v4);
    }
  }
}

void __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid OFT Type %d", v2, v3, v4, v5);
}

void __84__VCSecureDataChannel_initWithLocalCallID_remoteCallID_isCaller_sharedSecret_error___block_invoke_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 57;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Packet handler called after secure data channel was released!", &v2, 0x1Cu);
    }
  }
}

- (void)setupWithSharedSecret:isCaller:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d tls_record_init_pending_ciphers failed with error 0x%X", v2, v3, v4, v5);
}

- (void)setupWithSharedSecret:isCaller:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d tls_record_advance_read_cipher failed with error 0x%X", v2, v3, v4, v5);
}

- (void)setupWithSharedSecret:isCaller:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d tls_record_advance_write_cipher failed with error 0x%X", v2, v3, v4, v5);
}

- (void)setupWithSharedSecret:(uint64_t)a1 isCaller:(void *)a2 error:(NSObject *)a3 .cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  [a2 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  v8 = 105;
  v9 = 2048;
  v10 = a2;
  v11 = v5;
  v12 = 160;
  v13 = v5;
  v14 = v6;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d sharedSecret (%p) invalid: requiredSize = %d, passedSize = %d", v7, 0x32u);
}

- (void)sendData:(int)a1 messageType:(_DWORD *)a2 encrypted:.cold.1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

- (void)sendData:(void *)a1 messageType:(_DWORD *)a2 encrypted:.cold.2(void *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [a1 length];
      OUTLINED_FUNCTION_10();
      v9 = v5;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v10 = v6;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v4, v7, " [%s] %s:%d Data is too large (%d)", v8);
    }
  }

  *a2 = -2144993277;
}

- (void)sendData:messageType:encrypted:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed with status: %X", v2, v3, v4, v5);
}

- (void)convertEncryptedData:(_DWORD *)a3 toData:(void *)a4 encrypted:.cold.1(int a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = v8;
      v13 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v14 = a1;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v9, v10, " [%s] %s:%d tls_record_decrypt failed with error 0x%X", &v11);
    }
  }

  *a4 = a2;
  *a3 = -2144993228;
}

- (void)convertEncryptedData:(_DWORD *)a3 toData:(void *)a4 encrypted:.cold.2(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      v12 = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCSecureDataChannel convertEncryptedData:toData:encrypted:]";
      v16 = 1024;
      v17 = 207;
      v18 = 1024;
      v19 = v11;
      OUTLINED_FUNCTION_25_5(&dword_1DB56E000, v9, v10, " [%s] %s:%d tls_record_decrypt returned contentType = %d != tls_record_type_AppData", &v12);
    }
  }

  *a4 = a2;
  *a3 = -2144993228;
}

- (void)convertEncryptedData:toData:encrypted:.cold.3()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_28();
}

- (void)convertEncryptedData:toData:encrypted:.cold.4()
{
  OUTLINED_FUNCTION_16_2();
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10();
      v3 = v1;
      v4 = "[VCSecureDataChannel convertEncryptedData:toData:encrypted:]";
      v5 = 1024;
      v6 = 189;
      v7 = v1;
      v8 = "[VCSecureDataChannel convertEncryptedData:toData:encrypted:]";
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid encrypted data passed to %s.", v2, 0x26u);
    }
  }

  OUTLINED_FUNCTION_7_28();
}

- (void)convertData:toEncryptedData:encrypted:.cold.1()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_28();
}

- (void)convertData:toEncryptedData:encrypted:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_7_28();
}

@end