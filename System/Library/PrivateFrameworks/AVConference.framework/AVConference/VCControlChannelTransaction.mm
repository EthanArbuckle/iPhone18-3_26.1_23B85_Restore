@interface VCControlChannelTransaction
+ (BOOL)sendUnreliableMessage:(id)message sessionID:(unsigned int)d participantID:(id)iD transactionID:(id)transactionID transactionDelegate:(id)delegate withOptions:(id)options;
- (BOOL)sendReliableMessage:(id)message sessionID:(unsigned int)d participantID:(id)iD timeout:(id)timeout useFastRetries:(BOOL)retries withOptions:(id)options;
- (VCControlChannelTransaction)initWithTransportSessionID:(unsigned int)d participantID:(id)iD transactionID:(unint64_t)transactionID transactionDelegate:(id)delegate;
- (float)retryTimeoutForRetryAttempt:(unsigned int)attempt usingFastRetries:(BOOL)retries;
- (unsigned)retryCountUsingFastRetries:(BOOL)retries;
- (void)confirmedTransactionByParticipantID:(id)d sessionID:(unsigned int)iD;
- (void)dealloc;
- (void)flushTransaction;
@end

@implementation VCControlChannelTransaction

- (VCControlChannelTransaction)initWithTransportSessionID:(unsigned int)d participantID:(id)iD transactionID:(unint64_t)transactionID transactionDelegate:(id)delegate
{
  v47 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = VCControlChannelTransaction;
  v10 = [(VCObject *)&v34 init];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  v10->_sessionID = d;
  v10->_participantID = [iD copy];
  v11->_transactionID = transactionID;
  v11->_weakTransactionDelegate = objc_storeWeak(&v11->_weakTransactionDelegate, delegate);
  pthread_mutex_init(&v11->_transactionLock, 0);
  pthread_cond_init(&v11->_transactionDone, 0);
  v11->_isConfirmed = 0;
  if (objc_opt_class() != v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCControlChannelTransaction *)v11 performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return v11;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v23 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = v11->_sessionID;
        participantID = v11->_participantID;
        *buf = 136316674;
        v36 = v21;
        v37 = 2080;
        v38 = "[VCControlChannelTransaction initWithTransportSessionID:participantID:transactionID:transactionDelegate:]";
        v39 = 1024;
        v40 = 55;
        v41 = 2112;
        *v42 = v12;
        *&v42[8] = 2048;
        *&v42[10] = v11;
        v43 = 1024;
        v44 = sessionID;
        v45 = 2112;
        v46 = participantID;
        v18 = " [%s] %s:%d %@(%p) Created VCControlChannelTransaction object for sessionID='%d', participantID='%@'";
        v19 = v22;
        v20 = 64;
        goto LABEL_14;
      }

      return v11;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      return v11;
    }

    v26 = v11->_sessionID;
    v27 = v11->_participantID;
    *buf = 136316674;
    v36 = v21;
    v37 = 2080;
    v38 = "[VCControlChannelTransaction initWithTransportSessionID:participantID:transactionID:transactionDelegate:]";
    v39 = 1024;
    v40 = 55;
    v41 = 2112;
    *v42 = v12;
    *&v42[8] = 2048;
    *&v42[10] = v11;
    v43 = 1024;
    v44 = v26;
    v45 = 2112;
    v46 = v27;
    v28 = " [%s] %s:%d %@(%p) Created VCControlChannelTransaction object for sessionID='%d', participantID='%@'";
    v29 = v22;
    v30 = 64;
LABEL_20:
    _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, v28, buf, v30);
    return v11;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v11;
  }

  v13 = VRTraceErrorLogLevelToCSTR();
  v14 = *MEMORY[0x1E6986650];
  v15 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      return v11;
    }

    v32 = v11->_sessionID;
    v33 = v11->_participantID;
    *buf = 136316162;
    v36 = v13;
    v37 = 2080;
    v38 = "[VCControlChannelTransaction initWithTransportSessionID:participantID:transactionID:transactionDelegate:]";
    v39 = 1024;
    v40 = 55;
    v41 = 1024;
    *v42 = v32;
    *&v42[4] = 2112;
    *&v42[6] = v33;
    v28 = " [%s] %s:%d Created VCControlChannelTransaction object for sessionID='%d', participantID='%@'";
    v29 = v14;
    v30 = 44;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v11->_sessionID;
    v17 = v11->_participantID;
    *buf = 136316162;
    v36 = v13;
    v37 = 2080;
    v38 = "[VCControlChannelTransaction initWithTransportSessionID:participantID:transactionID:transactionDelegate:]";
    v39 = 1024;
    v40 = 55;
    v41 = 1024;
    *v42 = v16;
    *&v42[4] = 2112;
    *&v42[6] = v17;
    v18 = " [%s] %s:%d Created VCControlChannelTransaction object for sessionID='%d', participantID='%@'";
    v19 = v14;
    v20 = 44;
LABEL_14:
    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
  }

  return v11;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 168);
  v4 = *(a2 + 176);
  v5 = 136316162;
  selfCopy = self;
  v7 = 2080;
  v8 = "[VCControlChannelTransaction dealloc]";
  v9 = 1024;
  v10 = 62;
  v11 = 1024;
  v12 = v3;
  v13 = 2112;
  v14 = v4;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Dealloc VCControlChannelTransaction object for sessionID='%d', participantID='%@'", &v5, 0x2Cu);
}

- (void)flushTransaction
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_transactionLock);
  self->_isFlushed = 1;
  self->_isConfirmed = 1;
  pthread_cond_signal(&self->_transactionDone);
  pthread_mutex_unlock(&self->_transactionLock);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sessionID = self->_sessionID;
        participantID = self->_participantID;
        v15 = 136316162;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCControlChannelTransaction flushTransaction]";
        v19 = 1024;
        v20 = 76;
        v21 = 1024;
        *v22 = sessionID;
        *&v22[4] = 2112;
        *&v22[6] = participantID;
        v8 = " [%s] %s:%d flushTransaction: transaction has been flushed for sessionID='%d', participantID='%@'";
        v9 = v5;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_sessionID;
        v14 = self->_participantID;
        v15 = 136316674;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCControlChannelTransaction flushTransaction]";
        v19 = 1024;
        v20 = 76;
        v21 = 2112;
        *v22 = v3;
        *&v22[8] = 2048;
        *&v22[10] = self;
        v23 = 1024;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v8 = " [%s] %s:%d %@(%p) flushTransaction: transaction has been flushed for sessionID='%d', participantID='%@'";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }
}

- (void)confirmedTransactionByParticipantID:(id)d sessionID:(unsigned int)iD
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_sessionID == iD && ![d compare:self->_participantID])
  {
    pthread_mutex_lock(&self->_transactionLock);
    self->_isConfirmed = 1;
    pthread_cond_signal(&self->_transactionDone);
    pthread_mutex_unlock(&self->_transactionLock);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136316162;
          v25 = v20;
          v26 = 2080;
          v27 = "[VCControlChannelTransaction confirmedTransactionByParticipantID:sessionID:]";
          v28 = 1024;
          v29 = 85;
          v30 = 1024;
          *v31 = iD;
          *&v31[4] = 2112;
          *&v31[6] = d;
          v12 = " [%s] %s:%d transactionConfirmedByParticipantID: message has been ACKed for sessionID='%d', participantID='%@'";
          v13 = v21;
          v14 = 44;
          goto LABEL_13;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136316674;
          v25 = v22;
          v26 = 2080;
          v27 = "[VCControlChannelTransaction confirmedTransactionByParticipantID:sessionID:]";
          v28 = 1024;
          v29 = 85;
          v30 = 2112;
          *v31 = v19;
          *&v31[8] = 2048;
          *&v31[10] = self;
          *&v31[18] = 1024;
          *v32 = iD;
          *&v32[4] = 2112;
          *&v32[6] = d;
          v12 = " [%s] %s:%d %@(%p) transactionConfirmedByParticipantID: message has been ACKed for sessionID='%d', participantID='%@'";
          v13 = v23;
          v14 = 64;
          goto LABEL_13;
        }
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sessionID = self->_sessionID;
        participantID = self->_participantID;
        v24 = 136316674;
        v25 = v8;
        v26 = 2080;
        v27 = "[VCControlChannelTransaction confirmedTransactionByParticipantID:sessionID:]";
        v28 = 1024;
        v29 = 87;
        v30 = 1024;
        *v31 = sessionID;
        *&v31[4] = 1024;
        *&v31[6] = iD;
        *&v31[10] = 2112;
        *&v31[12] = participantID;
        *v32 = 2112;
        *&v32[2] = d;
        v12 = " [%s] %s:%d transactionConfirmedByParticipantID: confirmation mismatch: sessionID '%d'!='%d', participantID '%@'!='%@'";
        v13 = v9;
        v14 = 60;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v24, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_sessionID;
        v18 = self->_participantID;
        v24 = 136317186;
        v25 = v15;
        v26 = 2080;
        v27 = "[VCControlChannelTransaction confirmedTransactionByParticipantID:sessionID:]";
        v28 = 1024;
        v29 = 87;
        v30 = 2112;
        *v31 = v7;
        *&v31[8] = 2048;
        *&v31[10] = self;
        *&v31[18] = 1024;
        *v32 = v17;
        *&v32[4] = 1024;
        *&v32[6] = iD;
        *&v32[10] = 2112;
        *&v32[12] = v18;
        v33 = 2112;
        dCopy = d;
        v12 = " [%s] %s:%d %@(%p) transactionConfirmedByParticipantID: confirmation mismatch: sessionID '%d'!='%d', participantID '%@'!='%@'";
        v13 = v16;
        v14 = 80;
        goto LABEL_13;
      }
    }
  }
}

- (unsigned)retryCountUsingFastRetries:(BOOL)retries
{
  if (retries)
  {
    return 120;
  }

  else
  {
    return 10;
  }
}

- (float)retryTimeoutForRetryAttempt:(unsigned int)attempt usingFastRetries:(BOOL)retries
{
  LODWORD(v4) = 0.25;
  if (!retries)
  {
    attemptCopy = [(VCControlChannelTransaction *)self retryCountUsingFastRetries:0, v4]- 1;
    if (attemptCopy >= attempt)
    {
      attemptCopy = attempt;
    }

    LODWORD(v4) = retryTimeout[attemptCopy];
  }

  return *&v4;
}

- (BOOL)sendReliableMessage:(id)message sessionID:(unsigned int)d participantID:(id)iD timeout:(id)timeout useFastRetries:(BOOL)retries withOptions:(id)options
{
  retriesCopy = retries;
  v101 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E1289F20](&self->_weakTransactionDelegate, a2);
  v12 = &selRef_isLatencySensitiveModeEnabled;
  v87 = [(VCControlChannelTransaction *)self retryCountUsingFastRetries:retriesCopy];
  v13 = 0;
  if (!v87)
  {
    v41 = 0;
    v14 = 0.0;
    goto LABEL_86;
  }

  v14 = 0.0;
  v86 = 136316418;
  while (1)
  {
    if (([v11 isParticipantActive:{objc_msgSend(iD, "unsignedLongLongValue", v86)}] & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          v41 = 0;
          goto LABEL_35;
        }

        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x1E6986650];
        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
LABEL_69:
          v41 = 0;
          goto LABEL_86;
        }

        *buf = 136316162;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 122;
        v95 = 2112;
        *v96 = iD;
        *&v96[8] = 1024;
        *&v96[10] = d;
        v48 = " [%s] %s:%d Stop sending message to remote participant '%@' which is not part of session '%d'";
        v49 = v47;
        v50 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v42 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
        }

        else
        {
          v42 = &stru_1F570E008;
        }

        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_69;
        }

        v61 = VRTraceErrorLogLevelToCSTR();
        v62 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        *buf = 136316674;
        *&buf[4] = v61;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 122;
        v95 = 2112;
        *v96 = v42;
        *&v96[8] = 2048;
        *&v96[10] = self;
        *&v96[18] = 2112;
        *&v96[20] = iD;
        *&v96[28] = 1024;
        *&v96[30] = d;
        v48 = " [%s] %s:%d %@(%p) Stop sending message to remote participant '%@' which is not part of session '%d'";
        v49 = v62;
        v50 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
      goto LABEL_69;
    }

    pthread_mutex_lock(&self->_transactionLock);
    if (self->_isFlushed)
    {
      if (objc_opt_class() == self)
      {
        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_68;
        }

        v51 = VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_68;
        }

        *buf = v86;
        *&buf[4] = v51;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 128;
        v95 = 1024;
        *v96 = v13 + 1;
        *&v96[4] = 1024;
        *&v96[6] = d;
        *&v96[10] = 2112;
        *&v96[12] = iD;
        v53 = " [%s] %s:%d Transaction flushed. Not sending message on attempt '%d', sessionID='%d', participantID='%@'";
        v54 = v52;
        v55 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v43 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
        }

        else
        {
          v43 = &stru_1F570E008;
        }

        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_68;
        }

        v63 = VRTraceErrorLogLevelToCSTR();
        v64 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_68;
        }

        *buf = 136316930;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 128;
        v95 = 2112;
        *v96 = v43;
        *&v96[8] = 2048;
        *&v96[10] = self;
        *&v96[18] = 1024;
        *&v96[20] = v13 + 1;
        *&v96[24] = 1024;
        *&v96[26] = d;
        *&v96[30] = 2112;
        *&v96[32] = iD;
        v53 = " [%s] %s:%d %@(%p) Transaction flushed. Not sending message on attempt '%d', sessionID='%d', participantID='%@'";
        v54 = v64;
        v55 = 70;
      }

      _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, v53, buf, v55);
LABEL_68:
      pthread_mutex_unlock(&self->_transactionLock);
      goto LABEL_69;
    }

    v15 = v11;
    if (!+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:](VCControlChannelTransaction, "sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:", message, d, iD, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_transactionID], v11, options))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_16;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = v86;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 138;
        v95 = 1024;
        *v96 = v13 + 1;
        *&v96[4] = 1024;
        *&v96[6] = d;
        *&v96[10] = 2112;
        *&v96[12] = iD;
        v19 = v23;
        v20 = " [%s] %s:%d Network failed to send message on attempt '%d', sessionID='%d', participantID='%@'";
        v21 = 50;
        goto LABEL_15;
      }

      v16 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316930;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
          v93 = 1024;
          v94 = 138;
          v95 = 2112;
          *v96 = v16;
          *&v96[8] = 2048;
          *&v96[10] = self;
          *&v96[18] = 1024;
          *&v96[20] = v13 + 1;
          *&v96[24] = 1024;
          *&v96[26] = d;
          *&v96[30] = 2112;
          *&v96[32] = iD;
          v19 = v18;
          v20 = " [%s] %s:%d %@(%p) Network failed to send message on attempt '%d', sessionID='%d', participantID='%@'";
          v21 = 70;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
        }
      }
    }

LABEL_16:
    pthread_mutex_unlock(&self->_transactionLock);
    [(VCControlChannelTransaction *)self retryTimeoutForRetryAttempt:v13 usingFastRetries:retriesCopy];
    v25 = v24;
    v26 = v14 + v24;
    if (timeout)
    {
      [timeout floatValue];
      if (v26 > v27)
      {
        [timeout floatValue];
        v25 = v28 - v14;
        v26 = v14 + (v28 - v14);
      }

      if (v25 <= 0.0)
      {
        break;
      }
    }

    v14 = v26;
    pthread_mutex_lock(&self->_transactionLock);
    if (!self->_isConfirmed)
    {
      memset(buf, 170, 16);
      convertTimeoutToRelativeTimespec(v25);
      *buf = v29;
      *&buf[8] = v30;
      pthread_cond_timedwait_relative_np(&self->_transactionDone, &self->_transactionLock, buf);
    }

    pthread_mutex_unlock(&self->_transactionLock);
    isConfirmed = self->_isConfirmed;
    v32 = objc_opt_class();
    if (isConfirmed)
    {
      v11 = v15;
      if (v32 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          v41 = 1;
          goto LABEL_35;
        }

        v56 = VRTraceErrorLogLevelToCSTR();
        v57 = *MEMORY[0x1E6986650];
        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
LABEL_75:
          v41 = 1;
          goto LABEL_86;
        }

        *buf = 136316162;
        *&buf[4] = v56;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 168;
        v95 = 1024;
        *v96 = d;
        *&v96[4] = 2112;
        *&v96[6] = iD;
        v58 = " [%s] %s:%d Message has been confirmed for sessionID='%d' by remote participant participantID='%@'";
        v59 = v57;
        v60 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v44 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
        }

        else
        {
          v44 = &stru_1F570E008;
        }

        v12 = &selRef_isLatencySensitiveModeEnabled;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_75;
        }

        v65 = VRTraceErrorLogLevelToCSTR();
        v66 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_75;
        }

        *buf = 136316674;
        *&buf[4] = v65;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 168;
        v95 = 2112;
        *v96 = v44;
        *&v96[8] = 2048;
        *&v96[10] = self;
        *&v96[18] = 1024;
        *&v96[20] = d;
        *&v96[24] = 2112;
        *&v96[26] = iD;
        v58 = " [%s] %s:%d %@(%p) Message has been confirmed for sessionID='%d' by remote participant participantID='%@'";
        v59 = v66;
        v60 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, v58, buf, v60);
      goto LABEL_75;
    }

    if (v32 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_33;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = v86;
      *&buf[4] = v39;
      *&buf[12] = 2080;
      *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
      v93 = 1024;
      v94 = 165;
      v95 = 1024;
      *v96 = v13 + 1;
      *&v96[4] = 2048;
      *&v96[6] = v26;
      *&v96[14] = 1024;
      *&v96[16] = retriesCopy;
      v36 = v40;
      v37 = " [%s] %s:%d Attempt '%d' timed out. Aggregated wait is '%f', useFastRetries=%d";
      v38 = 50;
    }

    else
    {
      v33 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v33 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_33;
      }

      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 136316930;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
      v93 = 1024;
      v94 = 165;
      v95 = 2112;
      *v96 = v33;
      *&v96[8] = 2048;
      *&v96[10] = self;
      *&v96[18] = 1024;
      *&v96[20] = v13 + 1;
      *&v96[24] = 2048;
      *&v96[26] = v26;
      *&v96[34] = 1024;
      *&v96[36] = retriesCopy;
      v36 = v35;
      v37 = " [%s] %s:%d %@(%p) Attempt '%d' timed out. Aggregated wait is '%f', useFastRetries=%d";
      v38 = 70;
    }

    _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
LABEL_33:
    v13 = (v13 + 1);
    v11 = v15;
    if (v87 == v13)
    {
      v41 = 0;
      LODWORD(v13) = v87;
LABEL_35:
      v12 = &selRef_isLatencySensitiveModeEnabled;
      goto LABEL_86;
    }
  }

  if (objc_opt_class() != self)
  {
    v11 = v15;
    if (objc_opt_respondsToSelector())
    {
      v45 = [(VCControlChannelTransaction *)self performSelector:sel_logPrefix];
    }

    else
    {
      v45 = &stru_1F570E008;
    }

    v12 = &selRef_isLatencySensitiveModeEnabled;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v72 = VRTraceErrorLogLevelToCSTR();
      v73 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v86;
        *&buf[4] = v72;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        v93 = 1024;
        v94 = 149;
        v95 = 2112;
        *v96 = v45;
        *&v96[8] = 2048;
        *&v96[10] = self;
        *&v96[18] = 2112;
        *&v96[20] = timeout;
        v69 = " [%s] %s:%d %@(%p) User-specified timeout '%@' has expired. Aborting confirmation wait";
        v70 = v73;
        v71 = 58;
LABEL_84:
        _os_log_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEFAULT, v69, buf, v71);
      }
    }

    goto LABEL_85;
  }

  v11 = v15;
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    v41 = 0;
    v14 = v26;
    goto LABEL_35;
  }

  v67 = VRTraceErrorLogLevelToCSTR();
  v68 = *MEMORY[0x1E6986650];
  v12 = &selRef_isLatencySensitiveModeEnabled;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = v67;
    *&buf[12] = 2080;
    *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
    v93 = 1024;
    v94 = 149;
    v95 = 2112;
    *v96 = timeout;
    v69 = " [%s] %s:%d User-specified timeout '%@' has expired. Aborting confirmation wait";
    v70 = v68;
    v71 = 38;
    goto LABEL_84;
  }

LABEL_85:
  v41 = 0;
  v14 = v26;
LABEL_86:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v78 = "FAILURE";
        *buf = 136316930;
        *&buf[4] = v76;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        if (v41)
        {
          v78 = "SUCCESS";
        }

        v93 = 1024;
        v94 = 172;
        v95 = 2112;
        *v96 = iD;
        *&v96[8] = 1024;
        *&v96[10] = d;
        *&v96[14] = 2080;
        *&v96[16] = v78;
        *&v96[24] = 1024;
        *&v96[26] = v13 + 1;
        *&v96[30] = 2048;
        *&v96[32] = v14;
        v79 = " [%s] %s:%d Finished sending message to participantID='%@' for sessionID='%d', result='%s', attempt='%d', aggregated wait='%f'";
        v80 = v77;
        v81 = 70;
LABEL_100:
        _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, v79, buf, v81);
      }
    }
  }

  else
  {
    v74 = v12[456];
    if (objc_opt_respondsToSelector())
    {
      v75 = [(VCControlChannelTransaction *)self performSelector:v74];
    }

    else
    {
      v75 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v82 = VRTraceErrorLogLevelToCSTR();
      v83 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v84 = "FAILURE";
        *buf = 136317442;
        *&buf[4] = v82;
        *&buf[12] = 2080;
        *&buf[14] = "[VCControlChannelTransaction sendReliableMessage:sessionID:participantID:timeout:useFastRetries:withOptions:]";
        if (v41)
        {
          v84 = "SUCCESS";
        }

        v93 = 1024;
        v94 = 172;
        v95 = 2112;
        *v96 = v75;
        *&v96[8] = 2048;
        *&v96[10] = self;
        *&v96[18] = 2112;
        *&v96[20] = iD;
        *&v96[28] = 1024;
        *&v96[30] = d;
        *&v96[34] = 2080;
        *&v96[36] = v84;
        v97 = 1024;
        v98 = v13 + 1;
        v99 = 2048;
        v100 = v14;
        v79 = " [%s] %s:%d %@(%p) Finished sending message to participantID='%@' for sessionID='%d', result='%s', attempt='%d', aggregated wait='%f'";
        v80 = v83;
        v81 = 90;
        goto LABEL_100;
      }
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v41;
}

+ (BOOL)sendUnreliableMessage:(id)message sessionID:(unsigned int)d participantID:(id)iD transactionID:(id)transactionID transactionDelegate:(id)delegate withOptions:(id)options
{
  v70 = *MEMORY[0x1E69E9840];
  if (iD)
  {
    if (([delegate isParticipantActive:{objc_msgSend(iD, "unsignedLongLongValue")}] & 1) == 0)
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v22 = [self performSelector:sel_logPrefix];
        }

        else
        {
          v22 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_34;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          return v20;
        }

        v35 = 136316674;
        v36 = v32;
        v37 = 2080;
        v38 = "+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:]";
        v39 = 1024;
        v40 = 187;
        v41 = 2112;
        *v42 = v22;
        *&v42[8] = 2048;
        selfCopy2 = self;
        *v44 = 2112;
        *&v44[2] = iD;
        *&v44[10] = 1024;
        *v45 = d;
        v25 = " [%s] %s:%d %@(%p) sendUnreliableMessage: attempt to send message to remote participant '%@' which is not part of session '%d'";
        v26 = v33;
        v27 = 64;
        goto LABEL_33;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          return v20;
        }

        v35 = 136316162;
        v36 = v30;
        v37 = 2080;
        v38 = "+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:]";
        v39 = 1024;
        v40 = 187;
        v41 = 2112;
        *v42 = iD;
        *&v42[8] = 1024;
        LODWORD(selfCopy2) = d;
        v25 = " [%s] %s:%d sendUnreliableMessage: attempt to send message to remote participant '%@' which is not part of session '%d'";
        v26 = v31;
        v27 = 44;
LABEL_33:
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, &v35, v27);
      }

LABEL_34:
      LOBYTE(v20) = 0;
      return v20;
    }

    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    DWORD2(v49) = d;
    BYTE5(v68) = [options duplicateMessageOnServerLink];
    BYTE14(v61) = 1;
    *&v62 = [iD unsignedLongLongValue];
    if (transactionID)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    DWORD2(v49) = d;
    BYTE5(v68) = [options duplicateMessageOnServerLink];
    if (transactionID)
    {
LABEL_4:
      BYTE10(v63) = 1;
      *&v64 = [transactionID unsignedLongLongValue];
    }
  }

  memset(v48 + 1, 170, 0x7FFuLL);
  v15 = [message length];
  v16 = v15;
  LOBYTE(v48[0]) = 64;
  v17 = v15 + 1;
  if ((v15 + 1) >= 0x801)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_34;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        return v20;
      }

      v35 = 136317186;
      v36 = v28;
      v37 = 2080;
      v38 = "+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:]";
      v39 = 1024;
      v40 = 212;
      v41 = 2112;
      *v42 = v21;
      *&v42[8] = 2048;
      selfCopy2 = self;
      *v44 = 1024;
      *&v44[2] = 1;
      *&v44[6] = 1024;
      *&v44[8] = v16;
      *v45 = 1024;
      *&v45[2] = d;
      v46 = 2112;
      iDCopy = iD;
      v25 = " [%s] %s:%d %@(%p) Message length is too large (header[%d] data[%d]) to be sent. session[%d] particiapnt[%@] ";
      v26 = v29;
      v27 = 76;
      goto LABEL_33;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        return v20;
      }

      v35 = 136316674;
      v36 = v23;
      v37 = 2080;
      v38 = "+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:]";
      v39 = 1024;
      v40 = 212;
      v41 = 1024;
      *v42 = 1;
      *&v42[4] = 1024;
      *&v42[6] = v16;
      LOWORD(selfCopy2) = 1024;
      *(&selfCopy2 + 2) = d;
      HIWORD(selfCopy2) = 2112;
      *v44 = iD;
      v25 = " [%s] %s:%d Message length is too large (header[%d] data[%d]) to be sent. session[%d] particiapnt[%@] ";
      v26 = v24;
      v27 = 56;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  [message bytes];
  __memcpy_chk();
  [delegate addToSentStats:v17];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136316674;
      v36 = v18;
      v37 = 2080;
      v38 = "+[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:]";
      v39 = 1024;
      v40 = 222;
      v41 = 2112;
      *v42 = transactionID;
      *&v42[8] = 2048;
      selfCopy2 = v17;
      *v44 = 2112;
      *&v44[2] = iD;
      *&v44[10] = 1024;
      *v45 = d;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendUnreliableMessage: send message with transactionID=%@, size=%lu to remote participant=%@ which is part of session=%d", &v35, 0x40u);
    }
  }

  LOBYTE(v20) = VTP_Send(-1, v48, v17, 0, &v49) == v17;
  return v20;
}

@end