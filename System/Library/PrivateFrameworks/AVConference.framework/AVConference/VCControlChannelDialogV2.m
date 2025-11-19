@interface VCControlChannelDialogV2
- (VCControlChannelDialogV2)initWithSessionID:(unsigned int)a3 participantID:(id)a4 participantUUID:(id)a5 participantConfig:(id *)a6 transactionDelegate:(id)a7;
- (id)allocEncryptedPayloadFromPayloadData:(id)a3;
- (id)copyDecryptedDataFromEncryptedPayload:(id)a3;
- (id)newDataFromMessage:(id)a3 topic:(id)a4 transactionID:(unint64_t)a5 isReliable:(BOOL)a6 transactionDelegate:(id)a7;
- (id)processMessageData:(id)a3 participantID:(id)a4 topic:(id *)a5 transactionID:(id *)a6 messageStatus:(unsigned int *)a7 isInternalMessage:(BOOL *)a8;
- (void)dealloc;
- (void)sendConfirmationToParticipantID:(id)a3 transactionID:(id)a4 sessionID:(unsigned int)a5 transactionDelegate:(id)a6;
@end

@implementation VCControlChannelDialogV2

- (VCControlChannelDialogV2)initWithSessionID:(unsigned int)a3 participantID:(id)a4 participantUUID:(id)a5 participantConfig:(id *)a6 transactionDelegate:(id)a7
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCControlChannelDialogV2;
  v8 = [(VCControlChannelDialog *)&v13 initWithSessionID:*&a3 participantID:a4 participantUUID:a5 participantConfig:a6 transactionDelegate:a7];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  if (!a6)
  {
    [VCControlChannelDialogV2 initWithSessionID:v8 participantID:? participantUUID:? participantConfig:? transactionDelegate:?];
LABEL_12:

    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kVCCryptorCreationOption_DisableReplayProtection, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (VCCryptor_Create(v10, 1, a6->var3, a6->var1, v11, &v9->_uplinkCryptor))
  {
    [VCControlChannelDialogV2 initWithSessionID:v9 participantID:? participantUUID:? participantConfig:? transactionDelegate:?];
    goto LABEL_10;
  }

  if (VCCryptor_Create(v10, 1, a6->var4, a6->var2, v11, &v9->_downlinkCryptor))
  {
    [VCControlChannelDialogV2 initWithSessionID:v9 participantID:? participantUUID:? participantConfig:? transactionDelegate:?];
LABEL_10:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_12;
  }

  v9->_uplinkCryptorLock._os_unfair_lock_opaque = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  downlinkCryptor = self->_downlinkCryptor;
  if (downlinkCryptor)
  {
    CFRelease(downlinkCryptor);
  }

  uplinkCryptor = self->_uplinkCryptor;
  if (uplinkCryptor)
  {
    CFRelease(uplinkCryptor);
  }

  v5.receiver = self;
  v5.super_class = VCControlChannelDialogV2;
  [(VCControlChannelDialog *)&v5 dealloc];
}

- (id)allocEncryptedPayloadFromPayloadData:(id)a3
{
  blockBufferOut[2] = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  blockBufferOut[0] = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = [a3 bytes];
  v7 = [a3 length];
  if (CMBlockBufferCreateWithMemoryBlock(v5, v6, v7, *MEMORY[0x1E695E498], 0, 0, [a3 length], 0, blockBufferOut))
  {
    [VCControlChannelDialogV2 allocEncryptedPayloadFromPayloadData:];
  }

  else
  {
    os_unfair_lock_lock(&self->_uplinkCryptorLock);
    v8 = VCCryptor_Encrypt(self->_uplinkCryptor, blockBufferOut[0], &theBuffer);
    os_unfair_lock_unlock(&self->_uplinkCryptorLock);
    if (v8)
    {
      [VCControlChannelDialogV2 allocEncryptedPayloadFromPayloadData:];
    }

    else
    {
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      if (CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut))
        {
          v10 = objc_alloc(MEMORY[0x1E695DEF0]);
          v11 = [v10 initWithBytes:dataPointerOut length:DataLength];
          goto LABEL_6;
        }

        [VCControlChannelDialogV2 allocEncryptedPayloadFromPayloadData:];
      }

      else
      {
        [VCControlChannelDialogV2 allocEncryptedPayloadFromPayloadData:];
      }
    }
  }

  v11 = blockBufferOut[1];
LABEL_6:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v11;
}

- (id)copyDecryptedDataFromEncryptedPayload:(id)a3
{
  blockBufferOut[2] = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  blockBufferOut[0] = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = [a3 bytes];
  v7 = [a3 length];
  if (CMBlockBufferCreateWithMemoryBlock(v5, v6, v7, *MEMORY[0x1E695E498], 0, 0, [a3 length], 0, blockBufferOut))
  {
    [VCControlChannelDialogV2 copyDecryptedDataFromEncryptedPayload:];
  }

  else if (VCCryptor_Decrypt(self->_downlinkCryptor, blockBufferOut[0], &theBuffer))
  {
    [VCControlChannelDialogV2 copyDecryptedDataFromEncryptedPayload:];
  }

  else
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
    {
      dataPointerOut = 0;
      if (!CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut))
      {
        v9 = objc_alloc(MEMORY[0x1E695DEF0]);
        v10 = [v9 initWithBytes:dataPointerOut length:DataLength];
        goto LABEL_6;
      }

      [VCControlChannelDialogV2 copyDecryptedDataFromEncryptedPayload:];
    }

    else
    {
      [VCControlChannelDialogV2 copyDecryptedDataFromEncryptedPayload:];
    }
  }

  v10 = blockBufferOut[1];
LABEL_6:
  if (blockBufferOut[0])
  {
    CFRelease(blockBufferOut[0]);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v10;
}

- (id)newDataFromMessage:(id)a3 topic:(id)a4 transactionID:(unint64_t)a5 isReliable:(BOOL)a6 transactionDelegate:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v33 = 136315650;
      v34 = v26;
      v35 = 2080;
      v36 = "[VCControlChannelDialogV2 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:]";
      v37 = 1024;
      v38 = 131;
      v28 = " [%s] %s:%d topic must not be nil";
      v29 = v27;
      v30 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_29;
      }

      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v33 = 136316162;
      v34 = v31;
      v35 = 2080;
      v36 = "[VCControlChannelDialogV2 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:]";
      v37 = 1024;
      v38 = 131;
      v39 = 2112;
      v40 = v19;
      v41 = 2048;
      v42 = self;
      v28 = " [%s] %s:%d %@(%p) topic must not be nil";
      v29 = v32;
      v30 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v33, v30);
LABEL_29:
    v14 = 0;
    v12 = 0;
LABEL_30:
    v17 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  v11 = objc_alloc_init(VCCCMessage);
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v33 = 136316162;
        v34 = v20;
        v35 = 2080;
        v36 = "[VCControlChannelDialogV2 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:]";
        v37 = 1024;
        v38 = 134;
        v39 = 2112;
        v40 = a4;
        v41 = 2112;
        v42 = a3;
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate outgoing message for '%@:%@'", &v33, 0x30u);
      }
    }

    goto LABEL_29;
  }

  v12 = v11;
  [(VCCCMessage *)v11 setTransactionID:a5];
  [(VCCCMessage *)v12 setTopic:a4];
  -[VCCCMessage setPayload:](v12, "setPayload:", [a3 VCCCData]);
  v13 = objc_alloc_init(VCCCMessageWrapper);
  if (!v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v33 = 136316162;
        v34 = v22;
        v35 = 2080;
        v36 = "[VCControlChannelDialogV2 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:]";
        v37 = 1024;
        v38 = 141;
        v39 = 2112;
        v40 = a4;
        v41 = 2112;
        v42 = a3;
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate message wrapper for '%@:%@'", &v33, 0x30u);
      }
    }

    v14 = 0;
    goto LABEL_30;
  }

  v14 = v13;
  [(VCCCMessageWrapper *)v13 setMessage:v12];
  v15 = [(VCCCMessageWrapper *)v14 data];
  v16 = [(VCControlChannelDialogV2 *)self allocEncryptedPayloadFromPayloadData:v15];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v33 = 136316162;
        v34 = v24;
        v35 = 2080;
        v36 = "[VCControlChannelDialogV2 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:]";
        v37 = 1024;
        v38 = 147;
        v39 = 2112;
        v40 = a4;
        v41 = 2112;
        v42 = a3;
        _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not encrypt outgoing message '%@:%@'", &v33, 0x30u);
      }
    }

    v17 = 0;
  }

LABEL_6:

  return v17;
}

- (id)processMessageData:(id)a3 participantID:(id)a4 topic:(id *)a5 transactionID:(id *)a6 messageStatus:(unsigned int *)a7 isInternalMessage:(BOOL *)a8
{
  v100 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136315650;
      v87 = v57;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 163;
      v59 = " [%s] %s:%d messageData length must not be 0";
      goto LABEL_95;
    }

    if (objc_opt_respondsToSelector())
    {
      v47 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v47 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v67 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136316162;
    v87 = v67;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 163;
    v92 = 2112;
    *v93 = v47;
    *&v93[8] = 2048;
    *&v93[10] = self;
    v59 = " [%s] %s:%d %@(%p) messageData length must not be 0";
LABEL_120:
    v65 = v68;
    v66 = 48;
    goto LABEL_121;
  }

  if (!a5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v60 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136315650;
      v87 = v60;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 164;
      v59 = " [%s] %s:%d topic must not be nil";
      goto LABEL_95;
    }

    if (objc_opt_respondsToSelector())
    {
      v48 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v48 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v69 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136316162;
    v87 = v69;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 164;
    v92 = 2112;
    *v93 = v48;
    *&v93[8] = 2048;
    *&v93[10] = self;
    v59 = " [%s] %s:%d %@(%p) topic must not be nil";
    goto LABEL_120;
  }

  if (!a6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v61 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136315650;
      v87 = v61;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 165;
      v59 = " [%s] %s:%d transactionID must not be nil";
      goto LABEL_95;
    }

    if (objc_opt_respondsToSelector())
    {
      v49 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v49 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v70 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136316162;
    v87 = v70;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 165;
    v92 = 2112;
    *v93 = v49;
    *&v93[8] = 2048;
    *&v93[10] = self;
    v59 = " [%s] %s:%d %@(%p) transactionID must not be nil";
    goto LABEL_120;
  }

  if (!a7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v62 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136315650;
      v87 = v62;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 166;
      v59 = " [%s] %s:%d messageStatus must not be nil";
      goto LABEL_95;
    }

    if (objc_opt_respondsToSelector())
    {
      v50 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v50 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v71 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136316162;
    v87 = v71;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 166;
    v92 = 2112;
    *v93 = v50;
    *&v93[8] = 2048;
    *&v93[10] = self;
    v59 = " [%s] %s:%d %@(%p) messageStatus must not be nil";
    goto LABEL_120;
  }

  if (!a8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v63 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136315650;
      v87 = v63;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 167;
      v59 = " [%s] %s:%d isInternalMessage must not be nil";
      goto LABEL_95;
    }

    if (objc_opt_respondsToSelector())
    {
      v51 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v51 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v72 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136316162;
    v87 = v72;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 167;
    v92 = 2112;
    *v93 = v51;
    *&v93[8] = 2048;
    *&v93[10] = self;
    v59 = " [%s] %s:%d %@(%p) isInternalMessage must not be nil";
    goto LABEL_120;
  }

  v14 = [(VCControlChannelDialogV2 *)self copyDecryptedDataFromEncryptedPayload:a3];
  if (!v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        sessionID = self->super._sessionID;
        *buf = 136316418;
        v87 = v52;
        v88 = 2080;
        v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
        v90 = 1024;
        v91 = 170;
        v92 = 1024;
        *v93 = sessionID;
        *&v93[4] = 2112;
        *&v93[6] = a4;
        *&v93[14] = 2112;
        *&v93[16] = 0;
        _os_log_error_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not decrypt incoming payload for _sessionID='%d', participantID='%@', transactionID='%@'", buf, 0x36u);
      }
    }

    goto LABEL_122;
  }

  v15 = v14;
  v16 = [[VCCCMessageWrapper alloc] initWithData:v14];

  if (!v16)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v55 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v55 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_122;
      }

      v73 = VRTraceErrorLogLevelToCSTR();
      v68 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      *buf = 136316162;
      v87 = v73;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 174;
      v92 = 2112;
      *v93 = v55;
      *&v93[8] = 2048;
      *&v93[10] = self;
      v59 = " [%s] %s:%d %@(%p) messageData does have neither message nor acknowledgment. Ignoring malformed messageData";
      goto LABEL_120;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_122;
    }

    v64 = VRTraceErrorLogLevelToCSTR();
    v58 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_122;
    }

    *buf = 136315650;
    v87 = v64;
    v88 = 2080;
    v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v90 = 1024;
    v91 = 174;
    v59 = " [%s] %s:%d messageData does have neither message nor acknowledgment. Ignoring malformed messageData";
LABEL_95:
    v65 = v58;
    v66 = 28;
LABEL_121:
    _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, v59, buf, v66);
LABEL_122:
    v16 = 0;
    goto LABEL_123;
  }

  if (![(VCCCMessageWrapper *)v16 hasMessage]&& ![(VCCCMessageWrapper *)v16 hasAcknowledgement])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_123;
      }

      v74 = VRTraceErrorLogLevelToCSTR();
      v75 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_123;
      }

      *buf = 136315650;
      v87 = v74;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 175;
      v76 = " [%s] %s:%d messageData does have neither message nor acknowledgment. Ignoring malformed messageData";
      v77 = v75;
      v78 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v56 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v56 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_123;
      }

      v79 = VRTraceErrorLogLevelToCSTR();
      v80 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_123;
      }

      *buf = 136316162;
      v87 = v79;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 175;
      v92 = 2112;
      *v93 = v56;
      *&v93[8] = 2048;
      *&v93[10] = self;
      v76 = " [%s] %s:%d %@(%p) messageData does have neither message nor acknowledgment. Ignoring malformed messageData";
      v77 = v80;
      v78 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEFAULT, v76, buf, v78);
LABEL_123:
    v23 = 0;
    goto LABEL_52;
  }

  v17 = [(VCCCMessageWrapper *)v16 hasMessage];
  v84 = a5;
  v85 = a7;
  if (v17)
  {
    v82 = a6;
    v18 = [(VCCCMessageWrapper *)v16 message];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCCCMessage transactionID](v18, "transactionID")}];
    v20 = [(VCCCMessage *)v18 topic];
    if ([(NSString *)v20 length])
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    if ([(VCCCMessage *)v18 hasPayload])
    {
      v22 = [(VCCCMessage *)v18 payload];
    }

    if ([(NSData *)v22 length])
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = MEMORY[0x1E1289F20](&self->super._weakTransactionDelegate);
    [(VCControlChannelDialogV2 *)self sendConfirmationToParticipantID:a4 transactionID:v19 sessionID:self->super._sessionID transactionDelegate:v24];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6 || (v27 = VRTraceErrorLogLevelToCSTR(), v28 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_34:
        if (v24)
        {
          CFRelease(v24);
          LODWORD(v24) = 0;
        }

        goto LABEL_50;
      }

      v29 = self->super._sessionID;
      *buf = 136316418;
      v87 = v27;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 189;
      v92 = 1024;
      *v93 = v29;
      *&v93[4] = 2112;
      *&v93[6] = a4;
      *&v93[14] = 2112;
      *&v93[16] = v19;
      v30 = " [%s] %s:%d Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
      v31 = v28;
      v32 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v81 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v81 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_34;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v35 = self->super._sessionID;
      *buf = 136316930;
      v87 = v33;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 189;
      v92 = 2112;
      *v93 = v81;
      *&v93[8] = 2048;
      *&v93[10] = self;
      *&v93[18] = 1024;
      *&v93[20] = v35;
      v94 = 2112;
      v95 = a4;
      v96 = 2112;
      v97 = v19;
      v30 = " [%s] %s:%d %@(%p) Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
      v31 = v34;
      v32 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_34;
  }

  if ([(VCCCMessageWrapper *)v16 hasAcknowledgement])
  {
    v82 = a6;
    v25 = [(VCCCMessageWrapper *)v16 acknowledgement];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCCCMessageAcknowledgment transactionID](v25, "transactionID")}];
    v26 = a8;
    if ([(VCCCMessageAcknowledgment *)v25 hasStatus])
    {
      LODWORD(v24) = [(VCCCMessageAcknowledgment *)v25 status];
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_49;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v39 = self->super._sessionID;
      *buf = 136316674;
      v87 = v37;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 196;
      v92 = 1024;
      *v93 = v39;
      *&v93[4] = 2112;
      *&v93[6] = a4;
      *&v93[14] = 2112;
      *&v93[16] = v19;
      v94 = 1024;
      LODWORD(v95) = v24;
      v40 = " [%s] %s:%d Reliable message has been ACKed for _sessionID='%d', participantID='%@', transactionID='%@', messageStatus='%d'";
      v41 = v38;
      v42 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v36 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v36 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_49;
      }

      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v45 = self->super._sessionID;
      *buf = 136317186;
      v87 = v43;
      v88 = 2080;
      v89 = "[VCControlChannelDialogV2 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v90 = 1024;
      v91 = 196;
      v92 = 2112;
      *v93 = v36;
      *&v93[8] = 2048;
      *&v93[10] = self;
      *&v93[18] = 1024;
      *&v93[20] = v45;
      v94 = 2112;
      v95 = a4;
      v96 = 2112;
      v97 = v19;
      v98 = 1024;
      v99 = v24;
      v40 = " [%s] %s:%d %@(%p) Reliable message has been ACKed for _sessionID='%d', participantID='%@', transactionID='%@', messageStatus='%d'";
      v41 = v44;
      v42 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
LABEL_49:
    [(VCControlChannelDialog *)self confirmTransaction:v19];
    v21 = 0;
    v23 = 0;
    a8 = v26;
LABEL_50:
    a6 = v82;
    goto LABEL_51;
  }

  LODWORD(v24) = 0;
  v19 = 0;
  v21 = 0;
  v23 = 0;
LABEL_51:
  *v84 = v21;
  *v85 = v24;
  *a6 = v19;
  *a8 = !v17;
LABEL_52:

  return v23;
}

- (void)sendConfirmationToParticipantID:(id)a3 transactionID:(id)a4 sessionID:(unsigned int)a5 transactionDelegate:(id)a6
{
  v7 = *&a5;
  v49 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(VCCCMessageAcknowledgment);
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136316162;
    v38 = v26;
    v39 = 2080;
    v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
    v41 = 1024;
    v42 = 216;
    v43 = 1024;
    *v44 = v7;
    *&v44[4] = 2112;
    *&v44[6] = a4;
    v28 = " [%s] %s:%d Failed to allocate outgoing acknowledgment message for sessionID='%d', transactionID='%@'";
    goto LABEL_39;
  }

  -[VCCCMessageAcknowledgment setTransactionID:](v11, "setTransactionID:", [a4 unsignedLongValue]);
  v12 = objc_alloc_init(VCCCMessageWrapper);
  if (!v12)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_22;
    }

    v29 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136316162;
    v38 = v29;
    v39 = 2080;
    v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
    v41 = 1024;
    v42 = 220;
    v43 = 1024;
    *v44 = v7;
    *&v44[4] = 2112;
    *&v44[6] = a4;
    v28 = " [%s] %s:%d Failed to allocate message wrapper for sessionID='%d', transactionID='%@'";
LABEL_39:
    _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x2Cu);
LABEL_22:
    v13 = 0;
LABEL_23:
    v17 = 0;
    v15 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  [(VCCCMessageWrapper *)v12 setAcknowledgement:v11];
  v14 = [(VCCCMessageWrapper *)v13 data];
  if (!v14)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelDialogV2 sendConfirmationToParticipantID:v33 transactionID:? sessionID:? transactionDelegate:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v38 = v34;
          v39 = 2080;
          v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
          v41 = 1024;
          v42 = 225;
          v43 = 2112;
          *v44 = v30;
          *&v44[8] = 2048;
          *&v44[10] = self;
          _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Can not send confirmation: messageData is nil", buf, 0x30u);
        }
      }
    }

    goto LABEL_23;
  }

  v15 = v14;
  v16 = [(VCControlChannelDialogV2 *)self allocEncryptedPayloadFromPayloadData:v14];
  if (v16)
  {
    v17 = v16;
    [VCControlChannelTransaction sendUnreliableMessage:v16 sessionID:v7 participantID:a3 transactionID:0 transactionDelegate:a6 withOptions:0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v38 = v19;
          v39 = 2080;
          v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
          v41 = 1024;
          v42 = 237;
          v43 = 1024;
          *v44 = v7;
          *&v44[4] = 2112;
          *&v44[6] = a3;
          *&v44[14] = 2112;
          *&v44[16] = a4;
          v21 = " [%s] %s:%d Dialog send confirmation for sessionID='%d', participantID='%@', transactionID='%@'";
          v22 = v20;
          v23 = 54;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCControlChannelDialogV2 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v36 = a4;
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316930;
          v38 = v24;
          v39 = 2080;
          v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
          v41 = 1024;
          v42 = 237;
          v43 = 2112;
          *v44 = v18;
          *&v44[8] = 2048;
          *&v44[10] = self;
          *&v44[18] = 1024;
          *&v44[20] = v7;
          v45 = 2112;
          v46 = a3;
          v47 = 2112;
          v48 = v36;
          v21 = " [%s] %s:%d %@(%p) Dialog send confirmation for sessionID='%d', participantID='%@', transactionID='%@'";
          v22 = v25;
          v23 = 74;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v38 = v31;
        v39 = 2080;
        v40 = "[VCControlChannelDialogV2 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
        v41 = 1024;
        v42 = 228;
        v43 = 1024;
        *v44 = v7;
        *&v44[4] = 2112;
        *&v44[6] = a3;
        *&v44[14] = 2112;
        *&v44[16] = a4;
        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not encrypt confirmation for sessionID='%d', participantID='%@', transactionID='%@'", buf, 0x36u);
      }
    }

    v17 = 0;
  }

LABEL_16:
}

- (void)initWithSessionID:(void *)a1 participantID:participantUUID:participantConfig:transactionDelegate:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)initWithSessionID:(void *)a1 participantID:participantUUID:participantConfig:transactionDelegate:.cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)initWithSessionID:(void *)a1 participantID:participantUUID:participantConfig:transactionDelegate:.cold.3(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_8();
LABEL_10:
        _os_log_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_4_6();
        goto LABEL_10;
      }
    }
  }
}

- (void)allocEncryptedPayloadFromPayloadData:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBlockBufferCreateWithMemoryBlock failed with error '%d'", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)allocEncryptedPayloadFromPayloadData:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCCryptor_Encrypt failed with error '%d'", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)allocEncryptedPayloadFromPayloadData:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBlockBufferGetDataPointer failed", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)allocEncryptedPayloadFromPayloadData:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCCryptor_Encrypt produced non-contiguous buffer", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)copyDecryptedDataFromEncryptedPayload:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBlockBufferCreateWithMemoryBlock failed with error '%d'", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)copyDecryptedDataFromEncryptedPayload:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCCryptor_Decrypt failed with error '%d'", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)copyDecryptedDataFromEncryptedPayload:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d CMBlockBufferGetDataPointer failed", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)copyDecryptedDataFromEncryptedPayload:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCCryptor_Decrypt produced non-contiguous buffer", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)sendConfirmationToParticipantID:(uint64_t)a1 transactionID:sessionID:transactionDelegate:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 225;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can not send confirmation: messageData is nil", &v2, 0x1Cu);
}

@end