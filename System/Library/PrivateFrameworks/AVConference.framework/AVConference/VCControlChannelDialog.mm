@interface VCControlChannelDialog
- (BOOL)sendReliableMessage:(id)message withTopic:(id)topic timeout:(id)timeout withOptions:(id)options;
- (BOOL)sendReliableMessageInternal:(id)internal withTopic:(id)topic timeout:(id)timeout useFastRetries:(BOOL)retries withOptions:(id)options;
- (BOOL)sendUnreliableMessage:(id)message withTopic:(id)topic sessionID:(unsigned int)d participantID:(id)iD transactionDelegate:(id)delegate;
- (VCControlChannelDialog)initWithSessionID:(unsigned int)d participantID:(id)iD participantUUID:(id)uID participantConfig:(id *)config transactionDelegate:(id)delegate;
- (id)handshakeOperationQueue;
- (void)cacheOutgoingMessage:(id)message topic:(id)topic timeout:(id)timeout withOptions:(id)options;
- (void)checkForSignificantHandshakeDelayWithDelegate:(id)delegate;
- (void)confirmTransaction:(id)transaction;
- (void)dealloc;
- (void)doHandshakeWithMessage:(id)message topic:(id)topic afterDelay:(double)delay withOptions:(id)options;
- (void)flushActiveTransactions;
- (void)removeTransactionForTransactionID:(int)d;
- (void)resetHandshake;
- (void)sendAllCachedMessagesAndDisableHandshakeWhenDone;
- (void)startHandshakeWithMessage:(id)message topic:(id)topic withOptions:(id)options;
@end

@implementation VCControlChannelDialog

- (VCControlChannelDialog)initWithSessionID:(unsigned int)d participantID:(id)iD participantUUID:(id)uID participantConfig:(id *)config transactionDelegate:(id)delegate
{
  v42 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = VCControlChannelDialog;
  v12 = [(VCObject *)&v29 init];
  v13 = v12;
  if (v12)
  {
    v12->_sessionID = d;
    v12->_participantID = [iD copy];
    v13->_participantUUID = [uID copy];
    v13->_weakTransactionDelegate = objc_storeWeak(&v13->_weakTransactionDelegate, delegate);
    v13->_transactions = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13->_cachedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13->_handshakeOperationQueue = dispatch_queue_create("com.apple.AVConference.VCControlChannelDialog.handshakeOperationQueue", v14);
    v13->_handshakeEnabled = config->var5;
    v13->_handshakeStartTime = NAN;
    [(VCControlChannelDialog *)v13 resetHandshake];
    if (objc_opt_class() == v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        v18 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            participantID = v13->_participantID;
            *buf = 136315906;
            v31 = v16;
            v32 = 2080;
            v33 = "[VCControlChannelDialog initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:]";
            v34 = 1024;
            v35 = 65;
            v36 = 2112;
            v37 = participantID;
            v20 = " [%s] %s:%d Created VCControlChannelDialog object with remoteParticipantID='%@'";
            v21 = v17;
            v22 = 38;
LABEL_14:
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [VCControlChannelDialog initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCControlChannelDialog *)v13 performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        v25 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v13->_participantID;
            *buf = 136316418;
            v31 = v23;
            v32 = 2080;
            v33 = "[VCControlChannelDialog initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:]";
            v34 = 1024;
            v35 = 65;
            v36 = 2112;
            v37 = v15;
            v38 = 2048;
            v39 = v13;
            v40 = 2112;
            v41 = v26;
            v20 = " [%s] %s:%d %@(%p) Created VCControlChannelDialog object with remoteParticipantID='%@'";
            v21 = v24;
            v22 = 58;
            goto LABEL_14;
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v27 = v13->_participantID;
          *buf = 136316418;
          v31 = v23;
          v32 = 2080;
          v33 = "[VCControlChannelDialog initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:]";
          v34 = 1024;
          v35 = 65;
          v36 = 2112;
          v37 = v15;
          v38 = 2048;
          v39 = v13;
          v40 = 2112;
          v41 = v27;
          _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) Created VCControlChannelDialog object with remoteParticipantID='%@'", buf, 0x3Au);
        }
      }
    }
  }

  return v13;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (id)handshakeOperationQueue
{
  v2 = self->_handshakeOperationQueue;

  return v2;
}

- (void)resetHandshake
{
  objc_sync_enter(self);
  handshakeEnabled = self->_handshakeEnabled;
  v4 = !handshakeEnabled;
  self->_isHandshakeMode = handshakeEnabled;
  self->_isHandshakeCommenced = v4;
  self->_shouldFinishHandshake = v4;
  [(NSMutableArray *)self->_cachedMessages removeAllObjects];

  objc_sync_exit(self);
}

- (void)flushActiveTransactions
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  self->_shouldFinishHandshake = 1;
  transactions = self->_transactions;
  self->_transactions = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_sync_exit(self);
  if (transactions)
  {
    allKeys = [(NSMutableDictionary *)transactions allKeys];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          [-[NSMutableDictionary objectForKeyedSubscript:](transactions objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v7++)), "flushTransaction"}];
        }

        while (v5 != v7);
        v5 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)removeTransactionForTransactionID:(int)d
{
  v3 = *&d;
  v27 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  -[NSMutableDictionary removeObjectForKey:](self->_transactions, "removeObjectForKey:", [objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{v3), "stringValue"}]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315906;
          v16 = v6;
          v17 = 2080;
          v18 = "[VCControlChannelDialog removeTransactionForTransactionID:]";
          v19 = 1024;
          v20 = 125;
          v21 = 1024;
          LODWORD(v22) = v3;
          v9 = " [%s] %s:%d removeTransactionForTransactionID: transactionID='%d' removed from list of transactions";
          v10 = v7;
          v11 = 34;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCControlChannelDialog removeTransactionForTransactionID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316418;
          v16 = v12;
          v17 = 2080;
          v18 = "[VCControlChannelDialog removeTransactionForTransactionID:]";
          v19 = 1024;
          v20 = 125;
          v21 = 2112;
          v22 = v5;
          v23 = 2048;
          selfCopy2 = self;
          v25 = 1024;
          v26 = v3;
          v9 = " [%s] %s:%d %@(%p) removeTransactionForTransactionID: transactionID='%d' removed from list of transactions";
          v10 = v13;
          v11 = 54;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCControlChannelDialog removeTransactionForTransactionID:]";
        v19 = 1024;
        v20 = 125;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        selfCopy2 = self;
        v25 = 1024;
        v26 = v3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) removeTransactionForTransactionID: transactionID='%d' removed from list of transactions", &v15, 0x36u);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)doHandshakeWithMessage:(id)message topic:(id)topic afterDelay:(double)delay withOptions:(id)options
{
  block[8] = *MEMORY[0x1E69E9840];
  v10 = dispatch_time(0, (delay * 1000000000.0));
  handshakeOperationQueue = self->_handshakeOperationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__VCControlChannelDialog_doHandshakeWithMessage_topic_afterDelay_withOptions___block_invoke;
  block[3] = &unk_1E85F3B00;
  block[4] = self;
  block[5] = message;
  block[6] = topic;
  block[7] = options;
  dispatch_after(v10, handshakeOperationQueue, block);
}

void __78__VCControlChannelDialog_doHandshakeWithMessage_topic_afterDelay_withOptions___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E1289F20](*(a1 + 32) + 176);
  v4 = [v3 isParticipantActive:{objc_msgSend(*(*v2 + 26), "unsignedLongLongValue")}];
  v5 = *v2;
  if ((v4 & 1) == 0)
  {
    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v21 = *(*v2 + 26);
      v22 = *(*v2 + 43);
      v31 = 136316162;
      v32 = v19;
      v33 = 2080;
      v34 = "[VCControlChannelDialog doHandshakeWithMessage:topic:afterDelay:withOptions:]_block_invoke";
      v35 = 1024;
      v36 = 140;
      v37 = 2112;
      v38 = v21;
      v39 = 1024;
      LODWORD(v40) = v22;
      v23 = " [%s] %s:%d Participant '%@' removed from the session '%d'. Cancelling handshake...";
      v24 = v20;
      v25 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [*v2 performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_17;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v28 = *v2;
      v29 = *(*v2 + 26);
      v30 = *(*v2 + 43);
      v31 = 136316674;
      v32 = v26;
      v33 = 2080;
      v34 = "[VCControlChannelDialog doHandshakeWithMessage:topic:afterDelay:withOptions:]_block_invoke";
      v35 = 1024;
      v36 = 140;
      v37 = 2112;
      v38 = v18;
      v39 = 2048;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      v43 = 1024;
      v44 = v30;
      v23 = " [%s] %s:%d %@(%p) Participant '%@' removed from the session '%d'. Cancelling handshake...";
      v24 = v27;
      v25 = 64;
    }

    _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, &v31, v25);
    goto LABEL_17;
  }

  if (!v5[192])
  {
    if (![v5 sendReliableMessageInternal:*(a1 + 40) withTopic:*(a1 + 48) timeout:&unk_1F5799A20 useFastRetries:1 withOptions:*(a1 + 56)])
    {
      [*(a1 + 32) checkForSignificantHandshakeDelayWithDelegate:v3];
      [*(a1 + 32) doHandshakeWithMessage:*(a1 + 40) topic:*(a1 + 48) afterDelay:*(a1 + 56) withOptions:0.25];
      goto LABEL_17;
    }

    if (objc_opt_class() == *v2)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v9 = *(*v2 + 26);
      v31 = 136315906;
      v32 = v7;
      v33 = 2080;
      v34 = "[VCControlChannelDialog doHandshakeWithMessage:topic:afterDelay:withOptions:]_block_invoke";
      v35 = 1024;
      v36 = 149;
      v37 = 2112;
      v38 = v9;
      v10 = " [%s] %s:%d Handshake acknowledged from '%@'";
      v11 = v8;
      v12 = 38;
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

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v15 = *v2;
      v16 = *(*v2 + 26);
      v31 = 136316418;
      v32 = v13;
      v33 = 2080;
      v34 = "[VCControlChannelDialog doHandshakeWithMessage:topic:afterDelay:withOptions:]_block_invoke";
      v35 = 1024;
      v36 = 149;
      v37 = 2112;
      v38 = v6;
      v39 = 2048;
      v40 = v15;
      v41 = 2112;
      v42 = v16;
      v10 = " [%s] %s:%d %@(%p) Handshake acknowledged from '%@'";
      v11 = v14;
      v12 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v31, v12);
LABEL_16:
    v17 = *v2;
    objc_sync_enter(*v2);
    [*v2 sendAllCachedMessagesAndDisableHandshakeWhenDone];
    objc_sync_exit(v17);
    goto LABEL_17;
  }

  __78__VCControlChannelDialog_doHandshakeWithMessage_topic_afterDelay_withOptions___block_invoke_cold_1(v5, v2);
LABEL_17:
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)checkForSignificantHandshakeDelayWithDelegate:(id)delegate
{
  if (self->_isHandshakeCommenced && micro() - self->_handshakeStartTime > 30.0)
  {
    [delegate reportSignificantHandshakeDelaySymptomForParticipantID:self->_participantID];
    self->_handshakeStartTime = NAN;
  }
}

- (void)sendAllCachedMessagesAndDisableHandshakeWhenDone
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_cachedMessages count])
  {
    self->_isHandshakeMode = 0;
    [(VCObject *)self reportingAgent];
    participantUUID = self->_participantUUID;
    v54 = @"VCSPUUID";
    v55[0] = participantUUID;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    reportingGenericEvent();
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sessionID = self->_sessionID;
      participantID = self->_participantID;
      *buf = 136316162;
      v41 = v26;
      v42 = 2080;
      v43 = "[VCControlChannelDialog sendAllCachedMessagesAndDisableHandshakeWhenDone]";
      v44 = 1024;
      v45 = 183;
      v46 = 1024;
      *v47 = sessionID;
      *&v47[4] = 2112;
      *&v47[6] = participantID;
      v30 = " [%s] %s:%d sendAllCachedMessagesAndDisableHandshakeWhenDone: Handshake turned off for _sessionID='%d', _participantID='%@'";
      v31 = v27;
      v32 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v35 = self->_sessionID;
      v36 = self->_participantID;
      *buf = 136316674;
      v41 = v33;
      v42 = 2080;
      v43 = "[VCControlChannelDialog sendAllCachedMessagesAndDisableHandshakeWhenDone]";
      v44 = 1024;
      v45 = 183;
      v46 = 2112;
      *v47 = v25;
      *&v47[8] = 2048;
      *&v47[10] = self;
      *&v47[18] = 1024;
      *&v47[20] = v35;
      v48 = 2112;
      v49 = v36;
      v30 = " [%s] %s:%d %@(%p) sendAllCachedMessagesAndDisableHandshakeWhenDone: Handshake turned off for _sessionID='%d', _participantID='%@'";
      v31 = v34;
      v32 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    return;
  }

  if ([(NSMutableArray *)self->_cachedMessages count])
  {
    v4 = 0;
    *&v3 = 136316674;
    v37 = v3;
    do
    {
      v5 = [(NSMutableArray *)self->_cachedMessages objectAtIndexedSubscript:v4, v37];
      v6 = [v5 objectForKeyedSubscript:@"CachedTopic"];
      v7 = [v5 objectForKeyedSubscript:@"CachedMessage"];
      v8 = [v5 objectForKeyedSubscript:@"CachedOptions"];
      v9 = [v5 objectForKeyedSubscript:@"Temeout"];
      handshakeOperationQueue = self->_handshakeOperationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__VCControlChannelDialog_sendAllCachedMessagesAndDisableHandshakeWhenDone__block_invoke;
      block[3] = &unk_1E85F6478;
      block[4] = self;
      block[5] = v7;
      block[6] = v6;
      block[7] = v9;
      block[8] = v8;
      dispatch_async(handshakeOperationQueue, block);
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_14;
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v21 = self->_sessionID;
        v22 = self->_participantID;
        *buf = v37;
        v41 = v19;
        v42 = 2080;
        v43 = "[VCControlChannelDialog sendAllCachedMessagesAndDisableHandshakeWhenDone]";
        v44 = 1024;
        v45 = 195;
        v46 = 1024;
        *v47 = v21;
        *&v47[4] = 2112;
        *&v47[6] = v22;
        *&v47[14] = 2112;
        *&v47[16] = v6;
        v48 = 2112;
        v49 = v7;
        v16 = v20;
        v17 = " [%s] %s:%d sendAllCachedMessagesAndDisableHandshakeWhenDone: Sent cached message for _sessionID='%d', _participantID='%@', topic='%@', reliable message='%@' ";
        v18 = 64;
      }

      else
      {
        v11 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v11 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_14;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v14 = self->_sessionID;
        v15 = self->_participantID;
        *buf = 136317186;
        v41 = v12;
        v42 = 2080;
        v43 = "[VCControlChannelDialog sendAllCachedMessagesAndDisableHandshakeWhenDone]";
        v44 = 1024;
        v45 = 195;
        v46 = 2112;
        *v47 = v11;
        *&v47[8] = 2048;
        *&v47[10] = self;
        *&v47[18] = 1024;
        *&v47[20] = v14;
        v48 = 2112;
        v49 = v15;
        v50 = 2112;
        v51 = v6;
        v52 = 2112;
        v53 = v7;
        v16 = v13;
        v17 = " [%s] %s:%d %@(%p) sendAllCachedMessagesAndDisableHandshakeWhenDone: Sent cached message for _sessionID='%d', _participantID='%@', topic='%@', reliable message='%@' ";
        v18 = 84;
      }

      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
LABEL_14:
      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_cachedMessages count]);
  }

  [(NSMutableArray *)self->_cachedMessages removeAllObjects];
  v23 = self->_handshakeOperationQueue;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __74__VCControlChannelDialog_sendAllCachedMessagesAndDisableHandshakeWhenDone__block_invoke_32;
  v38[3] = &unk_1E85F3778;
  v38[4] = self;
  dispatch_async(v23, v38);
}

uint64_t __74__VCControlChannelDialog_sendAllCachedMessagesAndDisableHandshakeWhenDone__block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) sendAllCachedMessagesAndDisableHandshakeWhenDone];

  return objc_sync_exit(v2);
}

- (void)startHandshakeWithMessage:(id)message topic:(id)topic withOptions:(id)options
{
  v26[1] = *MEMORY[0x1E69E9840];
  self->_isHandshakeCommenced = 1;
  self->_handshakeStartTime = micro();
  [(VCObject *)self reportingAgent];
  v25 = @"VCSPUUID";
  v26[0] = self->_participantUUID;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  reportingGenericEvent();
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sessionID = self->_sessionID;
        participantID = self->_participantID;
        *v21 = 136316674;
        *&v21[4] = v10;
        *&v21[12] = 2080;
        *&v21[14] = "[VCControlChannelDialog startHandshakeWithMessage:topic:withOptions:]";
        *&v21[22] = 1024;
        *v22 = 217;
        *&v22[4] = 1024;
        *&v22[6] = sessionID;
        *&v22[10] = 2112;
        *&v22[12] = participantID;
        *&v22[20] = 2112;
        *&v22[22] = topic;
        *&v22[30] = 2112;
        messageCopy = message;
        v14 = " [%s] %s:%d Started handshake for session '%d' with participant '%@' using topic '%@', message '%@'";
        v15 = v11;
        v16 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v21, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_sessionID;
        v20 = self->_participantID;
        *v21 = 136317186;
        *&v21[4] = v17;
        *&v21[12] = 2080;
        *&v21[14] = "[VCControlChannelDialog startHandshakeWithMessage:topic:withOptions:]";
        *&v21[22] = 1024;
        *v22 = 217;
        *&v22[4] = 2112;
        *&v22[6] = v9;
        *&v22[14] = 2048;
        *&v22[16] = self;
        *&v22[24] = 1024;
        *&v22[26] = v19;
        *&v22[30] = 2112;
        messageCopy = v20;
        *v24 = 2112;
        *&v24[2] = topic;
        *&v24[10] = 2112;
        *&v24[12] = message;
        v14 = " [%s] %s:%d %@(%p) Started handshake for session '%d' with participant '%@' using topic '%@', message '%@'";
        v15 = v18;
        v16 = 84;
        goto LABEL_11;
      }
    }
  }

  [(VCControlChannelDialog *)self doHandshakeWithMessage:message topic:topic afterDelay:options withOptions:0.0, *v21, *&v21[16], *v22, *&v22[16], messageCopy, *v24, *&v24[16]];
}

- (void)cacheOutgoingMessage:(id)message topic:(id)topic timeout:(id)timeout withOptions:(id)options
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:topic forKeyedSubscript:@"CachedTopic"];
  [v11 setObject:message forKeyedSubscript:@"CachedMessage"];
  [v11 setObject:options forKeyedSubscript:@"CachedOptions"];
  [v11 setObject:timeout forKeyedSubscript:@"Temeout"];
  [(NSMutableArray *)self->_cachedMessages addObject:v11];

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sessionID = self->_sessionID;
        participantID = self->_participantID;
        v24 = 136316674;
        v25 = v13;
        v26 = 2080;
        v27 = "[VCControlChannelDialog cacheOutgoingMessage:topic:timeout:withOptions:]";
        v28 = 1024;
        v29 = 237;
        v30 = 1024;
        *v31 = sessionID;
        *&v31[4] = 2112;
        *&v31[6] = participantID;
        *&v31[14] = 2112;
        *&v31[16] = topic;
        v32 = 2112;
        messageCopy = message;
        v17 = " [%s] %s:%d cacheOutgoingMessage: Cached a new message for sessionID='%d', _participantID='%@', topic='%@', reliable message='%@' ";
        v18 = v14;
        v19 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v24, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_sessionID;
        v23 = self->_participantID;
        v24 = 136317186;
        v25 = v20;
        v26 = 2080;
        v27 = "[VCControlChannelDialog cacheOutgoingMessage:topic:timeout:withOptions:]";
        v28 = 1024;
        v29 = 237;
        v30 = 2112;
        *v31 = v12;
        *&v31[8] = 2048;
        *&v31[10] = self;
        *&v31[18] = 1024;
        *&v31[20] = v22;
        v32 = 2112;
        messageCopy = v23;
        v34 = 2112;
        topicCopy = topic;
        v36 = 2112;
        messageCopy2 = message;
        v17 = " [%s] %s:%d %@(%p) cacheOutgoingMessage: Cached a new message for sessionID='%d', _participantID='%@', topic='%@', reliable message='%@' ";
        v18 = v21;
        v19 = 84;
        goto LABEL_11;
      }
    }
  }
}

- (BOOL)sendReliableMessage:(id)message withTopic:(id)topic timeout:(id)timeout withOptions:(id)options
{
  if (topic)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (!message && (isKindOfClass & 1) != 0)
    {
      [VCControlChannelDialog sendReliableMessage:withTopic:timeout:withOptions:];
      return v13;
    }

    else
    {
      objc_sync_enter(self);
      if (self->_isHandshakeMode)
      {
        if (self->_isHandshakeCommenced)
        {
          [(VCControlChannelDialog *)self cacheOutgoingMessage:message topic:topic timeout:timeout withOptions:options];
        }

        else
        {
          [(VCControlChannelDialog *)self startHandshakeWithMessage:message topic:topic withOptions:options];
        }

        objc_sync_exit(self);
        return 1;
      }

      else
      {
        objc_sync_exit(self);

        return [(VCControlChannelDialog *)self sendReliableMessageInternal:message withTopic:topic timeout:timeout useFastRetries:0 withOptions:options];
      }
    }
  }

  else
  {
    [VCControlChannelDialog sendReliableMessage:withTopic:timeout:withOptions:];
    return v14;
  }
}

- (BOOL)sendReliableMessageInternal:(id)internal withTopic:(id)topic timeout:(id)timeout useFastRetries:(BOOL)retries withOptions:(id)options
{
  retriesCopy = retries;
  v73 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E1289F20](&self->_weakTransactionDelegate, a2);
  objc_sync_enter(v13);
  nextTransactionID = [v13 nextTransactionID];
  objc_sync_exit(v13);
  objc_sync_enter(self);
  v57 = [(VCControlChannelDialog *)self newDataFromMessage:internal topic:topic transactionID:nextTransactionID isReliable:1 transactionDelegate:v13];
  if (!v57)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:];
        }
      }

      goto LABEL_50;
    }

    if (objc_opt_respondsToSelector())
    {
      v42 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v42 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v51 = VRTraceErrorLogLevelToCSTR(), v52 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_50:
      objc_sync_exit(self);
      v28 = 0;
      goto LABEL_27;
    }

    *buf = 136316162;
    v60 = v51;
    v61 = 2080;
    v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
    v63 = 1024;
    v64 = 290;
    v65 = 2112;
    *v66 = v42;
    *&v66[8] = 2048;
    *&v66[10] = self;
    v48 = " [%s] %s:%d %@(%p) messageData should not be nil";
    v49 = v52;
    v50 = 48;
LABEL_52:
    _os_log_error_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);
    goto LABEL_50;
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_transactions, "objectForKeyedSubscript:", [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{nextTransactionID), "stringValue"}]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_50;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      sessionID = self->_sessionID;
      participantID = self->_participantID;
      *buf = 136316418;
      v60 = v44;
      v61 = 2080;
      v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
      v63 = 1024;
      v64 = 292;
      v65 = 1024;
      *v66 = sessionID;
      *&v66[4] = 2112;
      *&v66[6] = participantID;
      *&v66[14] = 2048;
      *&v66[16] = nextTransactionID;
      v48 = " [%s] %s:%d sendReliableMessageInternal: attempt to send duplicate transaction detected for _sessionID='%d', _participantID='%@', transactionID='%llu'. Aborted send...";
      v49 = v45;
      v50 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v43 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
      }

      else
      {
        v43 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_50;
      }

      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v55 = self->_sessionID;
      v56 = self->_participantID;
      *buf = 136316930;
      v60 = v53;
      v61 = 2080;
      v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
      v63 = 1024;
      v64 = 292;
      v65 = 2112;
      *v66 = v43;
      *&v66[8] = 2048;
      *&v66[10] = self;
      *&v66[18] = 1024;
      *&v66[20] = v55;
      v67 = 2112;
      v68 = v56;
      v69 = 2048;
      v70 = nextTransactionID;
      v48 = " [%s] %s:%d %@(%p) sendReliableMessageInternal: attempt to send duplicate transaction detected for _sessionID='%d', _participantID='%@', transactionID='%llu'. Aborted send...";
      v49 = v54;
      v50 = 74;
    }

    goto LABEL_52;
  }

  objc_sync_exit(self);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_14;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = self->_sessionID;
    v19 = self->_participantID;
    *buf = 136316674;
    v60 = v16;
    v61 = 2080;
    v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
    v63 = 1024;
    v64 = 295;
    v65 = 1024;
    *v66 = v18;
    *&v66[4] = 2112;
    *&v66[6] = v19;
    *&v66[14] = 2048;
    *&v66[16] = nextTransactionID;
    v67 = 2112;
    v68 = v57;
    v20 = " [%s] %s:%d sendReliableMessageInternal: creating a new transaction for _sessionID='%d', _participantID='%@', transactionID='%llu', data='%@'";
    v21 = v17;
    v22 = 64;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_14;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v25 = self->_sessionID;
    v26 = self->_participantID;
    *buf = 136317186;
    v60 = v23;
    v61 = 2080;
    v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
    v63 = 1024;
    v64 = 295;
    v65 = 2112;
    *v66 = v15;
    *&v66[8] = 2048;
    *&v66[10] = self;
    *&v66[18] = 1024;
    *&v66[20] = v25;
    v67 = 2112;
    v68 = v26;
    v69 = 2048;
    v70 = nextTransactionID;
    v71 = 2112;
    v72 = v57;
    v20 = " [%s] %s:%d %@(%p) sendReliableMessageInternal: creating a new transaction for _sessionID='%d', _participantID='%@', transactionID='%llu', data='%@'";
    v21 = v24;
    v22 = 84;
  }

  _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_14:
  v27 = [[VCControlChannelTransaction alloc] initWithTransportSessionID:self->_sessionID participantID:self->_participantID transactionID:nextTransactionID transactionDelegate:v13];
  if (v27)
  {
    objc_sync_enter(self);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_transactions, "setObject:forKeyedSubscript:", v27, [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{nextTransactionID), "stringValue"}]);
    objc_sync_exit(self);
    v28 = [(VCControlChannelTransaction *)v27 sendReliableMessage:v57 sessionID:self->_sessionID participantID:self->_participantID timeout:timeout useFastRetries:retriesCopy withOptions:options];

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v32 = self->_sessionID;
      v33 = self->_participantID;
      *buf = 136316674;
      v60 = v30;
      v61 = 2080;
      v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
      v63 = 1024;
      v64 = 307;
      v65 = 1024;
      *v66 = v32;
      *&v66[4] = 2112;
      *&v66[6] = v33;
      *&v66[14] = 2048;
      *&v66[16] = nextTransactionID;
      v67 = 2112;
      v68 = v57;
      v34 = " [%s] %s:%d sendReliableMessageInternal: Remove transaction for _sessionID='%d', _participantID='%@', transactionID='%llu', data='%@'";
      v35 = v31;
      v36 = 64;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v39 = self->_sessionID;
      v40 = self->_participantID;
      *buf = 136317186;
      v60 = v37;
      v61 = 2080;
      v62 = "[VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:]";
      v63 = 1024;
      v64 = 307;
      v65 = 2112;
      *v66 = v29;
      *&v66[8] = 2048;
      *&v66[10] = self;
      *&v66[18] = 1024;
      *&v66[20] = v39;
      v67 = 2112;
      v68 = v40;
      v69 = 2048;
      v70 = nextTransactionID;
      v71 = 2112;
      v72 = v57;
      v34 = " [%s] %s:%d %@(%p) sendReliableMessageInternal: Remove transaction for _sessionID='%d', _participantID='%@', transactionID='%llu', data='%@'";
      v35 = v38;
      v36 = 84;
    }

    _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
LABEL_26:
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __99__VCControlChannelDialog_sendReliableMessageInternal_withTopic_timeout_useFastRetries_withOptions___block_invoke;
    v58[3] = &unk_1E85F40E0;
    v58[4] = self;
    v58[5] = nextTransactionID;
    [v13 scheduleAfter:4 block:v58];
    goto LABEL_27;
  }

  [VCControlChannelDialog sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:];
  v28 = buf[0];
LABEL_27:

  if (v13)
  {
    CFRelease(v13);
  }

  return v28;
}

- (BOOL)sendUnreliableMessage:(id)message withTopic:(id)topic sessionID:(unsigned int)d participantID:(id)iD transactionDelegate:(id)delegate
{
  v9 = *&d;
  v39 = *MEMORY[0x1E69E9840];
  objc_sync_enter(delegate);
  nextTransactionID = [delegate nextTransactionID];
  objc_sync_exit(delegate);
  v14 = [(VCControlChannelDialog *)self newDataFromMessage:message topic:topic transactionID:nextTransactionID isReliable:0 transactionDelegate:delegate];
  if (!v14)
  {
    [VCControlChannelDialog sendUnreliableMessage:withTopic:sessionID:participantID:transactionDelegate:];
    v15 = v25;
    goto LABEL_13;
  }

  v15 = +[VCControlChannelTransaction sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:](VCControlChannelTransaction, "sendUnreliableMessage:sessionID:participantID:transactionID:transactionDelegate:withOptions:", v14, v9, iD, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:nextTransactionID], delegate, 0);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316674;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCControlChannelDialog sendUnreliableMessage:withTopic:sessionID:participantID:transactionDelegate:]";
        v29 = 1024;
        v30 = 338;
        v31 = 1024;
        *v32 = v9;
        *&v32[4] = 2112;
        *&v32[6] = iD;
        *&v32[14] = 2048;
        *&v32[16] = nextTransactionID;
        v33 = 2112;
        iDCopy = message;
        v19 = " [%s] %s:%d Dialog send unreliable message for sessionID='%d', participantID='%@', transactionID='%llu', message='%@'";
        v20 = v18;
        v21 = 64;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136317186;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCControlChannelDialog sendUnreliableMessage:withTopic:sessionID:participantID:transactionDelegate:]";
        v29 = 1024;
        v30 = 338;
        v31 = 2112;
        *v32 = v16;
        *&v32[8] = 2048;
        *&v32[10] = self;
        *&v32[18] = 1024;
        *&v32[20] = v9;
        v33 = 2112;
        iDCopy = iD;
        v35 = 2048;
        v36 = nextTransactionID;
        v37 = 2112;
        messageCopy2 = message;
        v19 = " [%s] %s:%d %@(%p) Dialog send unreliable message for sessionID='%d', participantID='%@', transactionID='%llu', message='%@'";
        v20 = v23;
        v21 = 84;
        goto LABEL_12;
      }
    }
  }

LABEL_13:

  return v15;
}

- (void)confirmTransaction:(id)transaction
{
  v35 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_transactions, "objectForKeyedSubscript:", [transaction stringValue]);
  objc_sync_exit(self);
  v6 = objc_opt_class();
  if (v5)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      sessionID = self->_sessionID;
      participantID = self->_participantID;
      *v31 = 136316418;
      *&v31[4] = v9;
      *&v31[12] = 2080;
      *&v31[14] = "[VCControlChannelDialog confirmTransaction:]";
      *&v31[22] = 1024;
      *v32 = 355;
      *&v32[4] = 1024;
      *&v32[6] = sessionID;
      *&v32[10] = 2112;
      *&v32[12] = participantID;
      *&v32[20] = 2112;
      *&v32[22] = transaction;
      v13 = " [%s] %s:%d confirmTransaction: Found matching transaction for _sessionID='%d', participantID='%@', transactionID='%@'";
      v14 = v10;
      v15 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v18 = self->_sessionID;
      v19 = self->_participantID;
      *v31 = 136316930;
      *&v31[4] = v16;
      *&v31[12] = 2080;
      *&v31[14] = "[VCControlChannelDialog confirmTransaction:]";
      *&v31[22] = 1024;
      *v32 = 355;
      *&v32[4] = 2112;
      *&v32[6] = v7;
      *&v32[14] = 2048;
      *&v32[16] = self;
      *&v32[24] = 1024;
      *&v32[26] = v18;
      *&v32[30] = 2112;
      v33 = v19;
      LOWORD(v34) = 2112;
      *(&v34 + 2) = transaction;
      v13 = " [%s] %s:%d %@(%p) confirmTransaction: Found matching transaction for _sessionID='%d', participantID='%@', transactionID='%@'";
      v14 = v17;
      v15 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v31, v15);
LABEL_16:
    [v5 confirmedTransactionByParticipantID:self->_participantID sessionID:{self->_sessionID, *v31, *&v31[16], *v32, *&v32[16], v33, v34}];

    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_sessionID;
        v23 = self->_participantID;
        *v31 = 136316418;
        *&v31[4] = v20;
        *&v31[12] = 2080;
        *&v31[14] = "[VCControlChannelDialog confirmTransaction:]";
        *&v31[22] = 1024;
        *v32 = 359;
        *&v32[4] = 1024;
        *&v32[6] = v22;
        *&v32[10] = 2112;
        *&v32[12] = v23;
        *&v32[20] = 2112;
        *&v32[22] = transaction;
        v24 = " [%s] %s:%d confirmTransaction: Could not find matching transaction for _sessionID='%d', participantID='%@', transactionID='%@'";
        v25 = v21;
        v26 = 54;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, v31, v26);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCControlChannelDialog *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_sessionID;
        v30 = self->_participantID;
        *v31 = 136316930;
        *&v31[4] = v27;
        *&v31[12] = 2080;
        *&v31[14] = "[VCControlChannelDialog confirmTransaction:]";
        *&v31[22] = 1024;
        *v32 = 359;
        *&v32[4] = 2112;
        *&v32[6] = v8;
        *&v32[14] = 2048;
        *&v32[16] = self;
        *&v32[24] = 1024;
        *&v32[26] = v29;
        *&v32[30] = 2112;
        v33 = v30;
        LOWORD(v34) = 2112;
        *(&v34 + 2) = transaction;
        v24 = " [%s] %s:%d %@(%p) confirmTransaction: Could not find matching transaction for _sessionID='%d', participantID='%@', transactionID='%@'";
        v25 = v28;
        v26 = 74;
        goto LABEL_25;
      }
    }
  }
}

- (void)initWithSessionID:participantID:participantUUID:participantConfig:transactionDelegate:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)removeTransactionForTransactionID:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __78__VCControlChannelDialog_doHandshakeWithMessage_topic_afterDelay_withOptions___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 136315650;
    v15 = v4;
    OUTLINED_FUNCTION_0();
    v19 = 142;
    OUTLINED_FUNCTION_16_0();
LABEL_12:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [*a2 performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v14 = 136316162;
      v15 = v11;
      v16 = 2080;
      v17 = "[VCControlChannelDialog doHandshakeWithMessage:topic:afterDelay:withOptions:]_block_invoke";
      v18 = 1024;
      OUTLINED_FUNCTION_9_9();
      v20 = v3;
      v21 = 2048;
      v22 = v13;
      v5 = &dword_1DB56E000;
      v8 = " [%s] %s:%d %@(%p) Dialog was flushed. Cancelling handshake...";
      v9 = &v14;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 48;
      goto LABEL_12;
    }
  }
}

- (void)sendReliableMessage:withTopic:timeout:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
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
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_14_4();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_1();
}

- (void)sendReliableMessage:withTopic:timeout:withOptions:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
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
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_14_4();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_1();
}

- (void)sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_14_4();
      v3 = OS_LOG_TYPE_ERROR;
      v6 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

- (void)sendReliableMessageInternal:withTopic:timeout:useFastRetries:withOptions:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)sendUnreliableMessage:withTopic:sessionID:participantID:transactionDelegate:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_14_4();
      v3 = OS_LOG_TYPE_ERROR;
      v6 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

@end