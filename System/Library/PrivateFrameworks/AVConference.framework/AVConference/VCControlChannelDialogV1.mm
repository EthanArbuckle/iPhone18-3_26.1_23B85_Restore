@interface VCControlChannelDialogV1
+ (BOOL)encryptMessage:(id)message buffer:(char *)buffer size:(unsigned int)size sequenceNumber:(unsigned __int16)number transactionDelegate:(id)delegate;
+ (BOOL)processMessageFromParticipant:(id)participant transactionID:(id)d messageType:(unsigned int)type sessionID:(unsigned int)iD transactionDelegate:(id)delegate;
+ (id)newEncryptedMessageFromMessage:(id)message sequenceNumber:(unsigned __int16)number transactionDelegate:(id)delegate;
+ (void)sendConfirmationToParticipantID:(id)d transactionID:(id)iD sessionID:(unsigned int)sessionID transactionDelegate:(id)delegate;
- (BOOL)decryptMessageWithMKI:(void *)i message:(id)message buffer:(char *)buffer size:(unsigned int)size sequenceNumber:(unsigned __int16)number;
- (BOOL)processMessageFromParticipant:(id)participant transactionID:(id)d messageType:(unsigned int)type transactionDelegate:(id)delegate;
- (VCControlChannelDialogV1)initWithSessionID:(unsigned int)d participantID:(id)iD participantUUID:(id)uID optionalTopics:(id)topics participantConfig:(id *)config transactionDelegate:(id)delegate;
- (id)newDataFromMessage:(id)message topic:(id)topic transactionID:(unint64_t)d isReliable:(BOOL)reliable transactionDelegate:(id)delegate;
- (id)processEncryptedPayload:(id)payload isData:(BOOL)data topic:(id *)topic sequenceNumber:(id)number MKIData:(id)iData participantID:(id)d;
- (id)processMessageData:(id)data participantID:(id)d topic:(id *)topic transactionID:(id *)iD messageStatus:(unsigned int *)status isInternalMessage:(BOOL *)message;
- (void)dealloc;
- (void)getTopic:(id *)topic message:(id *)message fromPayload:(id)payload;
@end

@implementation VCControlChannelDialogV1

- (VCControlChannelDialogV1)initWithSessionID:(unsigned int)d participantID:(id)iD participantUUID:(id)uID optionalTopics:(id)topics participantConfig:(id *)config transactionDelegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCControlChannelDialogV1;
  v9 = [(VCControlChannelDialog *)&v11 initWithSessionID:*&d participantID:iD participantUUID:uID participantConfig:config transactionDelegate:delegate];
  if (v9)
  {
    v9->_optionalTopics = topics;
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCControlChannelDialogV1;
  [(VCControlChannelDialog *)&v3 dealloc];
}

- (BOOL)processMessageFromParticipant:(id)participant transactionID:(id)d messageType:(unsigned int)type transactionDelegate:(id)delegate
{
  v54 = *MEMORY[0x1E69E9840];
  if (type == 2)
  {
    [VCControlChannelDialogV1 sendConfirmationToParticipantID:participant transactionID:d sessionID:self->super._sessionID transactionDelegate:delegate];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      sessionID = self->super._sessionID;
      *v50 = 136316418;
      *&v50[4] = v14;
      *&v50[12] = 2080;
      *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
      *&v50[22] = 1024;
      *v51 = 72;
      *&v51[4] = 1024;
      *&v51[6] = sessionID;
      *&v51[10] = 2112;
      *&v51[12] = participant;
      *&v51[20] = 2112;
      *&v51[22] = d;
      v17 = " [%s] %s:%d processMessage: Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
      v18 = v15;
      v19 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v22 = self->super._sessionID;
      *v50 = 136316930;
      *&v50[4] = v20;
      *&v50[12] = 2080;
      *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
      *&v50[22] = 1024;
      *v51 = 72;
      *&v51[4] = 2112;
      *&v51[6] = v12;
      *&v51[14] = 2048;
      *&v51[16] = self;
      *&v51[24] = 1024;
      *&v51[26] = v22;
      *&v51[30] = 2112;
      participantCopy3 = participant;
      LOWORD(v53) = 2112;
      *(&v53 + 2) = d;
      v17 = " [%s] %s:%d %@(%p) processMessage: Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
      v18 = v21;
      v19 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v50, v19);
    goto LABEL_30;
  }

  if (type != 1)
  {
    goto LABEL_30;
  }

  v10 = objc_opt_class();
  if (d)
  {
    if (v10 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_29;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v25 = self->super._sessionID;
      *v50 = 136316674;
      *&v50[4] = v23;
      *&v50[12] = 2080;
      *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
      *&v50[22] = 1024;
      *v51 = 67;
      *&v51[4] = 1024;
      *&v51[6] = v25;
      *&v51[10] = 2112;
      *&v51[12] = participant;
      *&v51[20] = 2112;
      *&v51[22] = d;
      *&v51[30] = 1024;
      LODWORD(participantCopy3) = 1;
      v26 = " [%s] %s:%d Reliable message has been ACKed for _sessionID='%d', participantID='%@', transactionID='%@', messageType='%d'";
      v27 = v24;
      v28 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_29;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v31 = self->super._sessionID;
      *v50 = 136317186;
      *&v50[4] = v29;
      *&v50[12] = 2080;
      *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
      *&v50[22] = 1024;
      *v51 = 67;
      *&v51[4] = 2112;
      *&v51[6] = v11;
      *&v51[14] = 2048;
      *&v51[16] = self;
      *&v51[24] = 1024;
      *&v51[26] = v31;
      *&v51[30] = 2112;
      participantCopy3 = participant;
      LOWORD(v53) = 2112;
      *(&v53 + 2) = d;
      WORD5(v53) = 1024;
      HIDWORD(v53) = 1;
      v26 = " [%s] %s:%d %@(%p) Reliable message has been ACKed for _sessionID='%d', participantID='%@', transactionID='%@', messageType='%d'";
      v27 = v30;
      v28 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, v50, v28);
LABEL_29:
    [(VCControlChannelDialog *)self confirmTransaction:d, *v50, *&v50[16], *v51, *&v51[16], participantCopy3, v53];
    goto LABEL_30;
  }

  if (v10 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v43 = self->super._sessionID;
        *v50 = 136316162;
        *&v50[4] = v41;
        *&v50[12] = 2080;
        *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
        *&v50[22] = 1024;
        *v51 = 64;
        *&v51[4] = 1024;
        *&v51[6] = v43;
        *&v51[10] = 2112;
        *&v51[12] = participant;
        v44 = " [%s] %s:%d processMessage: sequenceNumber may not be nil!!! Aborting processing message for _sessionID='%d', participantID='%@'";
        v45 = v42;
        v46 = 44;
LABEL_49:
        _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, v44, v50, v46);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v49 = self->super._sessionID;
        *v50 = 136316674;
        *&v50[4] = v47;
        *&v50[12] = 2080;
        *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
        *&v50[22] = 1024;
        *v51 = 64;
        *&v51[4] = 2112;
        *&v51[6] = v13;
        *&v51[14] = 2048;
        *&v51[16] = self;
        *&v51[24] = 1024;
        *&v51[26] = v49;
        *&v51[30] = 2112;
        participantCopy3 = participant;
        v44 = " [%s] %s:%d %@(%p) processMessage: sequenceNumber may not be nil!!! Aborting processing message for _sessionID='%d', participantID='%@'";
        v45 = v48;
        v46 = 64;
        goto LABEL_49;
      }
    }
  }

LABEL_30:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 136315906;
        *&v50[4] = v33;
        *&v50[12] = 2080;
        *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
        *&v50[22] = 1024;
        *v51 = 77;
        *&v51[4] = 1024;
        *&v51[6] = type < 2;
        v35 = " [%s] %s:%d processMessageFromParticipant: isInternalMessage='%d'";
        v36 = v34;
        v37 = 34;
LABEL_40:
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, v50, v37);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v32 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v32 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 136316418;
        *&v50[4] = v38;
        *&v50[12] = 2080;
        *&v50[14] = "[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:transactionDelegate:]";
        *&v50[22] = 1024;
        *v51 = 77;
        *&v51[4] = 2112;
        *&v51[6] = v32;
        *&v51[14] = 2048;
        *&v51[16] = self;
        *&v51[24] = 1024;
        *&v51[26] = type < 2;
        v35 = " [%s] %s:%d %@(%p) processMessageFromParticipant: isInternalMessage='%d'";
        v36 = v39;
        v37 = 54;
        goto LABEL_40;
      }
    }
  }

  return type < 2;
}

+ (BOOL)encryptMessage:(id)message buffer:(char *)buffer size:(unsigned int)size sequenceNumber:(unsigned __int16)number transactionDelegate:(id)delegate
{
  numberCopy = number;
  v38 = *MEMORY[0x1E69E9840];
  if (![message VCCCGetBytes:buffer size:*&size])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v23 = 136316418;
      v24 = v16;
      v25 = 2080;
      v26 = "+[VCControlChannelDialogV1 encryptMessage:buffer:size:sequenceNumber:transactionDelegate:]";
      v27 = 1024;
      v28 = 86;
      v29 = 2112;
      messageCopy = message;
      v31 = 1024;
      *v32 = [message VCCCLength];
      *&v32[4] = 1024;
      *&v32[6] = size;
      v18 = " [%s] %s:%d encryptMessage: message '%@' is too long (%d > %d)";
      v19 = v17;
      v20 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v23 = 136316930;
      v24 = v21;
      v25 = 2080;
      v26 = "+[VCControlChannelDialogV1 encryptMessage:buffer:size:sequenceNumber:transactionDelegate:]";
      v27 = 1024;
      v28 = 86;
      v29 = 2112;
      messageCopy = v15;
      v31 = 2048;
      *v32 = self;
      *&v32[8] = 2112;
      messageCopy2 = message;
      v34 = 1024;
      vCCCLength = [message VCCCLength];
      v36 = 1024;
      sizeCopy = size;
      v18 = " [%s] %s:%d %@(%p) encryptMessage: message '%@' is too long (%d > %d)";
      v19 = v22;
      v20 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v23, v20);
    return 0;
  }

  vCCCLength2 = [message VCCCLength];

  return [delegate encryptData:buffer size:vCCCLength2 sequenceNumber:numberCopy];
}

- (id)newDataFromMessage:(id)message topic:(id)topic transactionID:(unint64_t)d isReliable:(BOOL)reliable transactionDelegate:(id)delegate
{
  v29 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    [VCControlChannelDialogV1 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:];
    return v28;
  }

  if (!topic)
  {
    [VCControlChannelDialogV1 newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:];
    return v28;
  }

  reliableCopy = reliable;
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NSArray *)self->_optionalTopics containsObject:topic])
  {
    v25 = @":";
    v26 = messageCopy;
    topicCopy = topic;
    messageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@"];
  }

  v13 = [VCControlChannelDialogV1 newEncryptedMessageFromMessage:messageCopy sequenceNumber:d transactionDelegate:delegate];
  if (!v13)
  {
    [(VCControlChannelDialogV1 *)self newDataFromMessage:v14 topic:v15 transactionID:v16 isReliable:v17 transactionDelegate:v18, v19, topicCopy, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, vars0, vars8];
    return v28;
  }

  v20 = v13;
  [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", d), @"TransactionID"}];
  if (reliableCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v21), @"Status"}];
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];

  return v22;
}

+ (id)newEncryptedMessageFromMessage:(id)message sequenceNumber:(unsigned __int16)number transactionDelegate:(id)delegate
{
  numberCopy = number;
  v28 = *MEMORY[0x1E69E9840];
  if (![delegate isEncryptionEnabled])
  {
    return [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{message, @"Message", 0}];
  }

  memset(__b, 170, sizeof(__b));
  lastUsedMKIBytes = [delegate lastUsedMKIBytes];
  if (lastUsedMKIBytes && (v10 = lastUsedMKIBytes, [VCControlChannelDialogV1 encryptMessage:message buffer:__b size:2048 sequenceNumber:numberCopy transactionDelegate:delegate]))
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:{objc_msgSend(message, "VCCCLength")}];
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, objc_msgSend(message, "VCCCPayloadKey"), 0}];
    [v12 setObject:v10 forKeyedSubscript:@"MKI"];
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
          +[VCControlChannelDialogV1 newEncryptedMessageFromMessage:sequenceNumber:transactionDelegate:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v18 = v15;
          v19 = 2080;
          v20 = "+[VCControlChannelDialogV1 newEncryptedMessageFromMessage:sequenceNumber:transactionDelegate:]";
          v21 = 1024;
          v22 = 125;
          v23 = 2112;
          v24 = v14;
          v25 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) newEncryptedMessageFromMessage: encryption failed. Dropping the message...", buf, 0x30u);
        }
      }
    }

    return 0;
  }

  return v12;
}

+ (void)sendConfirmationToParticipantID:(id)d transactionID:(id)iD sessionID:(unsigned int)sessionID transactionDelegate:(id)delegate
{
  v7 = *&sessionID;
  v35 = *MEMORY[0x1E69E9840];
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{iD, @"TransactionID", 0}];
  [v12 setObject:&unk_1F579BE98 forKeyedSubscript:@"Status"];
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  objc_autoreleasePoolPop(v11);
  v14 = objc_opt_class();
  if (!v13)
  {
    [VCControlChannelDialogV1 sendConfirmationToParticipantID:self transactionID:? sessionID:? transactionDelegate:?];
    goto LABEL_14;
  }

  if (v14 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_13;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 136316418;
    v24 = v16;
    v25 = 2080;
    v26 = "+[VCControlChannelDialogV1 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
    v27 = 1024;
    v28 = 143;
    v29 = 1024;
    *v30 = v7;
    *&v30[4] = 2112;
    *&v30[6] = d;
    *&v30[14] = 2112;
    *&v30[16] = iD;
    v18 = " [%s] %s:%d Dialog send confirmation for sessionID='%d', participantID='%@', transactionID='%@'";
    v19 = v17;
    v20 = 54;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_13;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 136316930;
    v24 = v21;
    v25 = 2080;
    v26 = "+[VCControlChannelDialogV1 sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:]";
    v27 = 1024;
    v28 = 143;
    v29 = 2112;
    *v30 = v15;
    *&v30[8] = 2048;
    *&v30[10] = self;
    *&v30[18] = 1024;
    *&v30[20] = v7;
    v31 = 2112;
    dCopy = d;
    v33 = 2112;
    iDCopy = iD;
    v18 = " [%s] %s:%d %@(%p) Dialog send confirmation for sessionID='%d', participantID='%@', transactionID='%@'";
    v19 = v22;
    v20 = 74;
  }

  _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_13:
  [VCControlChannelTransaction sendUnreliableMessage:v13 sessionID:v7 participantID:d transactionID:0 transactionDelegate:delegate withOptions:0];
LABEL_14:
}

+ (BOOL)processMessageFromParticipant:(id)participant transactionID:(id)d messageType:(unsigned int)type sessionID:(unsigned int)iD transactionDelegate:(id)delegate
{
  v41 = *MEMORY[0x1E69E9840];
  if (participant && type == 2)
  {
    [VCControlChannelDialogV1 sendConfirmationToParticipantID:"sendConfirmationToParticipantID:transactionID:sessionID:transactionDelegate:" transactionID:? sessionID:? transactionDelegate:?];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136316418;
          v30 = v13;
          v31 = 2080;
          v32 = "+[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:sessionID:transactionDelegate:]";
          v33 = 1024;
          v34 = 160;
          v35 = 1024;
          *v36 = iD;
          *&v36[4] = 2112;
          *&v36[6] = participant;
          *&v36[14] = 2112;
          *&v36[16] = d;
          v15 = " [%s] %s:%d +processMessage: Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
          v16 = v14;
          v17 = 54;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v29, v17);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136316930;
          v30 = v18;
          v31 = 2080;
          v32 = "+[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:sessionID:transactionDelegate:]";
          v33 = 1024;
          v34 = 160;
          v35 = 2112;
          *v36 = v12;
          *&v36[8] = 2048;
          *&v36[10] = self;
          *&v36[18] = 1024;
          *&v36[20] = iD;
          v37 = 2112;
          participantCopy = participant;
          v39 = 2112;
          dCopy = d;
          v15 = " [%s] %s:%d %@(%p) +processMessage: Sent confirmation for _sessionID='%d', participantID='%@', transactionID='%@'";
          v16 = v19;
          v17 = 74;
          goto LABEL_13;
        }
      }
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315906;
        v30 = v21;
        v31 = 2080;
        v32 = "+[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:sessionID:transactionDelegate:]";
        v33 = 1024;
        v34 = 162;
        v35 = 1024;
        *v36 = type > 1;
        v23 = " [%s] %s:%d +processMessageFromParticipant: shouldNotifyClient='%d'";
        v24 = v22;
        v25 = 34;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, &v29, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136316418;
        v30 = v26;
        v31 = 2080;
        v32 = "+[VCControlChannelDialogV1 processMessageFromParticipant:transactionID:messageType:sessionID:transactionDelegate:]";
        v33 = 1024;
        v34 = 162;
        v35 = 2112;
        *v36 = v20;
        *&v36[8] = 2048;
        *&v36[10] = self;
        *&v36[18] = 1024;
        *&v36[20] = type > 1;
        v23 = " [%s] %s:%d %@(%p) +processMessageFromParticipant: shouldNotifyClient='%d'";
        v24 = v27;
        v25 = 54;
        goto LABEL_24;
      }
    }
  }

  return type > 1;
}

- (BOOL)decryptMessageWithMKI:(void *)i message:(id)message buffer:(char *)buffer size:(unsigned int)size sequenceNumber:(unsigned __int16)number
{
  numberCopy = number;
  v42 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_17;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *v39 = 136316418;
      *&v39[4] = v14;
      *&v39[12] = 2080;
      *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 167;
      WORD2(v40) = 2112;
      *(&v40 + 6) = i;
      HIWORD(v40) = 2112;
      *v41 = message;
      *&v41[8] = 1024;
      *&v41[10] = numberCopy;
      v17 = " [%s] %s:%d decryptMessageWithMKI='%@' message='%@', sequenceNumber='%d'";
      v18 = v15;
      v19 = 54;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v39, v19);
      goto LABEL_17;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v39 = 136316418;
      *&v39[4] = v14;
      *&v39[12] = 2080;
      *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 167;
      WORD2(v40) = 2112;
      *(&v40 + 6) = i;
      HIWORD(v40) = 2112;
      *v41 = message;
      *&v41[8] = 1024;
      *&v41[10] = numberCopy;
      v23 = " [%s] %s:%d decryptMessageWithMKI='%@' message='%@', sequenceNumber='%d'";
      v24 = v15;
      v25 = 54;
      goto LABEL_34;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *v39 = 136316930;
        *&v39[4] = v20;
        *&v39[12] = 2080;
        *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
        *&v39[22] = 1024;
        LODWORD(v40) = 167;
        WORD2(v40) = 2112;
        *(&v40 + 6) = v13;
        HIWORD(v40) = 2048;
        *v41 = self;
        *&v41[8] = 2112;
        *&v41[10] = i;
        *&v41[18] = 2112;
        *&v41[20] = message;
        *&v41[28] = 1024;
        *&v41[30] = numberCopy;
        v17 = " [%s] %s:%d %@(%p) decryptMessageWithMKI='%@' message='%@', sequenceNumber='%d'";
        v18 = v21;
        v19 = 74;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *v39 = 136316930;
        *&v39[4] = v20;
        *&v39[12] = 2080;
        *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
        *&v39[22] = 1024;
        LODWORD(v40) = 167;
        WORD2(v40) = 2112;
        *(&v40 + 6) = v13;
        HIWORD(v40) = 2048;
        *v41 = self;
        *&v41[8] = 2112;
        *&v41[10] = i;
        *&v41[18] = 2112;
        *&v41[20] = message;
        *&v41[28] = 1024;
        *&v41[30] = numberCopy;
        v23 = " [%s] %s:%d %@(%p) decryptMessageWithMKI='%@' message='%@', sequenceNumber='%d'";
        v24 = v21;
        v25 = 74;
LABEL_34:
        _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, v23, v39, v25);
      }
    }
  }

LABEL_17:
  if ([message length] > size)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v31 = [message length];
      *v39 = 136316418;
      *&v39[4] = v29;
      *&v39[12] = 2080;
      *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 170;
      WORD2(v40) = 2112;
      *(&v40 + 6) = message;
      HIWORD(v40) = 1024;
      *v41 = v31;
      *&v41[4] = 1024;
      *&v41[6] = size;
      v32 = " [%s] %s:%d decryptMessageWithMKI: message='%@' is too long (%d > %d)";
      v33 = v30;
      v34 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v26 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v38 = [message length];
      *v39 = 136316930;
      *&v39[4] = v35;
      *&v39[12] = 2080;
      *&v39[14] = "[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:]";
      *&v39[22] = 1024;
      LODWORD(v40) = 170;
      WORD2(v40) = 2112;
      *(&v40 + 6) = v26;
      HIWORD(v40) = 2048;
      *v41 = self;
      *&v41[8] = 2112;
      *&v41[10] = message;
      *&v41[18] = 1024;
      *&v41[20] = v38;
      *&v41[24] = 1024;
      *&v41[26] = size;
      v32 = " [%s] %s:%d %@(%p) decryptMessageWithMKI: message='%@' is too long (%d > %d)";
      v33 = v36;
      v34 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, v32, v39, v34);
    return 0;
  }

  [message getBytes:buffer length:size];
  v27 = MEMORY[0x1E1289F20](&self->super._weakTransactionDelegate);
  v28 = [v27 decryptWithMKI:i data:buffer size:objc_msgSend(message sequenceNumber:{"length"), numberCopy}];
  if (v27)
  {
    CFRelease(v27);
  }

  return v28;
}

- (id)processEncryptedPayload:(id)payload isData:(BOOL)data topic:(id *)topic sequenceNumber:(id)number MKIData:(id)iData participantID:(id)d
{
  v41 = *MEMORY[0x1E69E9840];
  *topic = 0;
  if (!iData)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136316418;
    *&buf[4] = v24;
    v31 = 2080;
    v32 = "[VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:]";
    v33 = 1024;
    v34 = 184;
    v35 = 2112;
    v36 = v22;
    v37 = 2048;
    selfCopy2 = self;
    v39 = 2112;
    dCopy2 = d;
    v26 = " [%s] %s:%d %@(%p) processEncryptedMessage: message received but MKI is not included in the packet from participantID='%@'. Dropping message...";
    goto LABEL_36;
  }

  dataCopy = data;
  memset(__b, 170, sizeof(__b));
  [iData getBytes:__b length:2048];
  v15 = [[VCMediaKeyIndex alloc] initWithBytes:__b bufferSize:16];
  LOBYTE(number) = -[VCControlChannelDialogV1 decryptMessageWithMKI:message:buffer:size:sequenceNumber:](self, "decryptMessageWithMKI:message:buffer:size:sequenceNumber:", v15, payload, __b, 2048, [number unsignedShortValue]);

  if ((number & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136316418;
    *&buf[4] = v27;
    v31 = 2080;
    v32 = "[VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:]";
    v33 = 1024;
    v34 = 192;
    v35 = 2112;
    v36 = v23;
    v37 = 2048;
    selfCopy2 = self;
    v39 = 2112;
    dCopy2 = d;
    v26 = " [%s] %s:%d %@(%p) processEncryptedMessage: message received from participantID='%@' but could not decrypt it. Dropping message...";
LABEL_36:
    _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x3Au);
    return 0;
  }

  v16 = [payload length];
  if (dataCopy)
  {
    if (v16)
    {
      v17 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:{objc_msgSend(payload, "length")}];
    }

    else
    {
      v17 = 0;
    }

    v19 = @"VCExternalClientDataTopic";
  }

  else
  {
    if (v16)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__b length:objc_msgSend(payload encoding:{"length"), 4}];
    }

    else
    {
      v18 = 0;
    }

    *buf = 0;
    v28 = 0;
    [(VCControlChannelDialogV1 *)self getTopic:buf message:&v28 fromPayload:v18];
    v17 = [v28 dataUsingEncoding:4];
    v20 = [*buf length];
    v19 = *buf;
    if (!v20)
    {
      v19 = 0;
    }
  }

  *topic = v19;
  return v17;
}

- (id)processMessageData:(id)data participantID:(id)d topic:(id *)topic transactionID:(id *)iD messageStatus:(unsigned int *)status isInternalMessage:(BOOL *)message
{
  v103 = *MEMORY[0x1E69E9840];
  v89 = 0;
  if (!topic)
  {
    [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
    return *buf;
  }

  if (!iD)
  {
    [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
    return *buf;
  }

  if (!status)
  {
    [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
    return *buf;
  }

  messageCopy = message;
  if (!message)
  {
    [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
    return *buf;
  }

  if (objc_opt_respondsToSelector())
  {
    v83 = messageCopy;
    v88 = 0;
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:objc_msgSend(v11 fromData:"setWithObjects:" error:{v12, v13, v14, v15, v16, v17, objc_opt_class(), 0), data, &v88}];
    dCopy2 = d;
    if (!v18)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v60 = VRTraceErrorLogLevelToCSTR();
          v61 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCControlChannelDialogV1 processMessageData:v60 participantID:&v88 topic:v61 transactionID:? messageStatus:? isInternalMessage:?];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v38 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
        }

        else
        {
          v38 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v63 = VRTraceErrorLogLevelToCSTR();
          v64 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = v63;
            v91 = 2080;
            v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
            v93 = 1024;
            v94 = 224;
            v95 = 2112;
            dCopy8 = v38;
            v97 = 2048;
            selfCopy7 = self;
            v99 = 2112;
            dCopy7 = v88;
            _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unarchive message. error='%@'", buf, 0x3Au);
          }
        }
      }
    }

    messageCopy = v83;
  }

  else
  {
    v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:data error:0];
    dCopy2 = d;
  }

  v20 = [objc_msgSend(v18 objectForKeyedSubscript:{@"Status", "intValue"}];
  v21 = [v18 objectForKeyedSubscript:@"TransactionID"];
  v22 = [v18 objectForKeyedSubscript:@"EncryptedMessage"];
  v23 = [v18 objectForKeyedSubscript:@"EncryptedData"];
  v24 = [v18 objectForKeyedSubscript:@"Message"];
  v25 = MEMORY[0x1E1289F20](&self->super._weakTransactionDelegate);
  if (![v25 isEncryptionEnabled])
  {
    if (v24 || !v22)
    {
      *buf = 0;
      -[VCControlChannelDialogV1 getTopic:message:fromPayload:](self, "getTopic:message:fromPayload:", &v89, buf, [v24 VCCCString]);
      vCCCData = [*buf VCCCData];
LABEL_16:
      v24 = vCCCData;
      goto LABEL_17;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v65 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v65 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_99;
      }

      v71 = VRTraceErrorLogLevelToCSTR();
      v72 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      *buf = 136316418;
      *&buf[4] = v71;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 250;
      v95 = 2112;
      dCopy8 = v65;
      v97 = 2048;
      selfCopy7 = self;
      v99 = 2112;
      dCopy7 = d;
      v68 = " [%s] %s:%d %@(%p) messageReceived: message encryption is disabled locally via user defaults but remote participant '%@' sends encrypted messages. Dropping encrypted message. FIX ENCRYPTION INCONSYSTENCY!!!)";
LABEL_97:
      v69 = v72;
      v70 = 58;
      goto LABEL_98;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_99;
    }

    v66 = VRTraceErrorLogLevelToCSTR();
    v67 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    *buf = 136315906;
    *&buf[4] = v66;
    v91 = 2080;
    v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v93 = 1024;
    v94 = 250;
    v95 = 2112;
    dCopy8 = d;
    v68 = " [%s] %s:%d messageReceived: message encryption is disabled locally via user defaults but remote participant '%@' sends encrypted messages. Dropping encrypted message. FIX ENCRYPTION INCONSYSTENCY!!!)";
LABEL_92:
    v69 = v67;
    v70 = 38;
LABEL_98:
    _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, v68, buf, v70);
LABEL_99:
    v24 = 0;
    goto LABEL_65;
  }

  if (v22)
  {
    vCCCData = -[VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:](self, "processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:", v22, 0, &v89, v21, [v18 objectForKeyedSubscript:@"MKI"], dCopy2);
    if (!(vCCCData | v89))
    {
      [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
LABEL_39:
      v24 = *buf;
      goto LABEL_65;
    }

    goto LABEL_16;
  }

  if (v23)
  {
    vCCCData = -[VCControlChannelDialogV1 processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:](self, "processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:", v23, 1, &v89, v21, [v18 objectForKeyedSubscript:@"MKI"], dCopy2);
    if (!(vCCCData | v89))
    {
      [VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:];
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  if (!v24 && v20 != 1)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v73 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v73 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_99;
      }

      v80 = VRTraceErrorLogLevelToCSTR();
      v72 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_99;
      }

      *buf = 136316418;
      *&buf[4] = v80;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 246;
      v95 = 2112;
      dCopy8 = v73;
      v97 = 2048;
      selfCopy7 = self;
      v99 = 2112;
      dCopy7 = d;
      v68 = " [%s] %s:%d %@(%p) processEncryptedMessage: message encryption is enabled but remote participant '%@' sends un-encrypted messages. Dropping un-encrypted message. FIX ENCRYPTION INCONSYSTENCY!!!)";
      goto LABEL_97;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_99;
    }

    v74 = VRTraceErrorLogLevelToCSTR();
    v67 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    *buf = 136315906;
    *&buf[4] = v74;
    v91 = 2080;
    v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v93 = 1024;
    v94 = 246;
    v95 = 2112;
    dCopy8 = d;
    v68 = " [%s] %s:%d processEncryptedMessage: message encryption is enabled but remote participant '%@' sends un-encrypted messages. Dropping un-encrypted message. FIX ENCRYPTION INCONSYSTENCY!!!)";
    goto LABEL_92;
  }

  if (v20 == 1)
  {
LABEL_17:
    v27 = objc_opt_class();
    if (dCopy2)
    {
      if (v27 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_32;
        }

        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136315906;
        *&buf[4] = v30;
        v91 = 2080;
        v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
        v93 = 1024;
        v94 = 260;
        v95 = 2112;
        dCopy8 = dCopy2;
        v32 = " [%s] %s:%d messageReceived: found existing dialog for participantID='%@'";
        v33 = v31;
        v34 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v28 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
        }

        else
        {
          v28 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_32;
        }

        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136316418;
        *&buf[4] = v35;
        v91 = 2080;
        v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
        v93 = 1024;
        v94 = 260;
        v95 = 2112;
        dCopy8 = v28;
        v97 = 2048;
        selfCopy7 = self;
        v99 = 2112;
        dCopy7 = dCopy2;
        v32 = " [%s] %s:%d %@(%p) messageReceived: found existing dialog for participantID='%@'";
        v33 = v36;
        v34 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
LABEL_32:
      v37 = [(VCControlChannelDialogV1 *)self processMessageFromParticipant:dCopy2 transactionID:v21 messageType:v20 transactionDelegate:v25];
      goto LABEL_49;
    }

    if (v27 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 136315650;
      *&buf[4] = v39;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 263;
      v41 = " [%s] %s:%d messageReceived: no participantID provided. Processing without dialog";
      v42 = v40;
      v43 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_48;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 136316162;
      *&buf[4] = v44;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 263;
      v95 = 2112;
      dCopy8 = v29;
      v97 = 2048;
      selfCopy7 = self;
      v41 = " [%s] %s:%d %@(%p) messageReceived: no participantID provided. Processing without dialog";
      v42 = v45;
      v43 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
LABEL_48:
    v37 = [VCControlChannelDialogV1 processMessageFromParticipant:0 transactionID:v21 messageType:v20 sessionID:self->super._sessionID transactionDelegate:v25];
LABEL_49:
    v46 = v37;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_64;
      }

      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      v50 = @"Will";
      sessionID = self->super._sessionID;
      if (v46)
      {
        v50 = @"Will not";
      }

      *buf = 136316162;
      *&buf[4] = v48;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 267;
      v95 = 2112;
      dCopy8 = v50;
      v97 = 1024;
      LODWORD(selfCopy7) = sessionID;
      v52 = " [%s] %s:%d messageReceived: %@ notify client for sessionID '%d'";
      v53 = v49;
      v54 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v47 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
      }

      else
      {
        v47 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_64;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      v57 = @"Will";
      v58 = self->super._sessionID;
      if (v46)
      {
        v57 = @"Will not";
      }

      *buf = 136316674;
      *&buf[4] = v55;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 267;
      v95 = 2112;
      dCopy8 = v47;
      v97 = 2048;
      selfCopy7 = self;
      v99 = 2112;
      dCopy7 = v57;
      v101 = 1024;
      v102 = v58;
      v52 = " [%s] %s:%d %@(%p) messageReceived: %@ notify client for sessionID '%d'";
      v53 = v56;
      v54 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
LABEL_64:
    *status = v20;
    *iD = v21;
    *messageCopy = v46;
    *topic = v89;
    goto LABEL_65;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v62 = [(VCControlChannelDialogV1 *)self performSelector:sel_logPrefix];
    }

    else
    {
      v62 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_65;
    }

    v81 = VRTraceErrorLogLevelToCSTR();
    v82 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *buf = 136316418;
    *&buf[4] = v81;
    v91 = 2080;
    v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
    v93 = 1024;
    v94 = 247;
    v95 = 2112;
    dCopy8 = v62;
    v97 = 2048;
    selfCopy7 = self;
    v99 = 2112;
    dCopy7 = d;
    v77 = " [%s] %s:%d %@(%p) processEncryptedMessage: message encryption is enabled but message payload is empty for participant '%@'";
    v78 = v82;
    v79 = 58;
    goto LABEL_117;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v75 = VRTraceErrorLogLevelToCSTR();
    v76 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v75;
      v91 = 2080;
      v92 = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
      v93 = 1024;
      v94 = 247;
      v95 = 2112;
      dCopy8 = d;
      v77 = " [%s] %s:%d processEncryptedMessage: message encryption is enabled but message payload is empty for participant '%@'";
      v78 = v76;
      v79 = 38;
LABEL_117:
      _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, v77, buf, v79);
    }
  }

LABEL_65:
  if (v25)
  {
    CFRelease(v25);
  }

  return v24;
}

- (void)getTopic:(id *)topic message:(id *)message fromPayload:(id)payload
{
  payloadCopy = payload;
  v8 = [payload rangeOfString:@":"];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    *topic = [payloadCopy substringToIndex:v8];
    payloadCopy = [payloadCopy substringFromIndex:v9 + 1];
    if (![payloadCopy length])
    {
      payloadCopy = 0;
    }
  }

  *message = payloadCopy;
}

- (void)newDataFromMessage:(uint64_t)a3 topic:(uint64_t)a4 transactionID:(uint64_t)a5 isReliable:(uint64_t)a6 transactionDelegate:(uint64_t)a7 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_40_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_11_0();
  a16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v24)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    a12 = 103;
    v28 = " [%s] %s:%d newDataFromMessage: encryption failed. Dropping the message...";
    v29 = v27;
    v30 = 28;
LABEL_11:
    _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, v28, &a9, v30);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      v28 = " [%s] %s:%d %@(%p) newDataFromMessage: encryption failed. Dropping the message...";
      v29 = v31;
      v30 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)newDataFromMessage:topic:transactionID:isReliable:transactionDelegate:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

+ (void)newEncryptedMessageFromMessage:sequenceNumber:transactionDelegate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 125;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d newEncryptedMessageFromMessage: encryption failed. Dropping the message...", v1, 0x1Cu);
}

+ (void)sendConfirmationToParticipantID:(char)a1 transactionID:(void *)a2 sessionID:transactionDelegate:.cold.1(char a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136315650;
        v12 = v2;
        OUTLINED_FUNCTION_0();
        v13 = 142;
        v4 = " [%s] %s:%d Can not send confirmation: messageData is nil";
        v5 = v3;
        v6 = 28;
LABEL_12:
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, v4, &v11, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [a2 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = v9;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        v14 = v8;
        v15 = 2048;
        v16 = a2;
        v4 = " [%s] %s:%d %@(%p) Can not send confirmation: messageData is nil";
        v5 = v10;
        v6 = 48;
        goto LABEL_12;
      }
    }
  }
}

- (void)processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d processEncryptedMessage: message received from participantID='%@' but could not decrypt it. Dropping message...");
}

- (void)processEncryptedPayload:isData:topic:sequenceNumber:MKIData:participantID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d processEncryptedMessage: message received but MKI is not included in the packet from participantID='%@'. Dropping message...");
}

- (void)processMessageData:(NSObject *)a3 participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[VCControlChannelDialogV1 processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:]";
  *&v3[22] = 1024;
  LODWORD(v4) = 224;
  WORD2(v4) = 2112;
  *(&v4 + 6) = *a2;
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d Failed to unarchive message. error='%@'", *v3, *&v3[8], *&v3[16], v4, *MEMORY[0x1E69E9840]);
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.5()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.6()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)processMessageData:participantID:topic:transactionID:messageStatus:isInternalMessage:.cold.7()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_35())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_22();
LABEL_10:
        _os_log_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_30_1())
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_19_13();
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

@end