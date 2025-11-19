@interface VCSessionMessageTopic
- (BOOL)attemptToSendOrBufferReliableMessage:(id)a3 participantID:(unint64_t)a4 sequenceNumber:(int64_t)a5 retryNumber:(int64_t)a6;
- (BOOL)isDuplicateMessageID:(id)a3 messageHistory:(id)a4 participantID:(id)a5;
- (BOOL)isPayloadAssociated:(id)a3;
- (BOOL)sendReliableMessage:(id)a3 participantID:(unint64_t)a4 withOptions:(id)a5 completion:(id)a6;
- (VCSessionMessageTopic)initWithTopicKey:(id)a3 strings:(id)a4 allowConcurrent:(BOOL)a5 requireReliable:(BOOL)a6 controlChannel:(id)a7 sendCompletionHandler:(id)a8 receiveHandler:(id)aBlock sendMessageDataCompletionHandler:(id)a10 receiveMessageDictionaryHandler:(id)a11;
- (id)messageForCommand:(id)a3;
- (void)clearTransactionCacheForParticipant:(id)a3;
- (void)dealloc;
- (void)dispatchedCompletionHandlerForSendMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 result:(BOOL)a6 sequenceNumber:(int64_t)a7 retryNumber:(int64_t)a8;
- (void)dispatchedSendMessage:(id)a3 participantID:(unint64_t)a4 withSequence:(int64_t)a5 numRetries:(int64_t)a6;
- (void)handleSendMessageDidSucceed:(BOOL)a3 message:(id)a4 participantID:(id)a5;
- (void)passMessage:(id)a3 sequence:(int)a4 fromParticipant:(id)a5;
- (void)purgeExpiredEntries:(double)a3 messageHistory:(id)a4 participantID:(id)a5;
- (void)sendBufferedReliableMessagesForParticipantID:(unint64_t)a3;
- (void)sendMessage:(id)a3 participantID:(unint64_t)a4;
- (void)sendMessage:(id)a3 participantID:(unint64_t)a4 withSequence:(int64_t)a5 numRetries:(int64_t)a6;
- (void)setIsSendingEnabled:(BOOL)a3;
@end

@implementation VCSessionMessageTopic

- (VCSessionMessageTopic)initWithTopicKey:(id)a3 strings:(id)a4 allowConcurrent:(BOOL)a5 requireReliable:(BOOL)a6 controlChannel:(id)a7 sendCompletionHandler:(id)a8 receiveHandler:(id)aBlock sendMessageDataCompletionHandler:(id)a10 receiveMessageDictionaryHandler:(id)a11
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCSessionMessageTopic;
  v17 = [(VCSessionMessageTopic *)&v21 init];
  v17->topicKey = [a3 copy];
  v17->controlChannel = a7;
  if (a4)
  {
    v17->associatedStrings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a4];
    v17->shouldEncodeTopicKeyInMessage = 0;
    [(VCControlChannel *)v17->controlChannel addOptionalTopic:v17->topicKey];
  }

  else
  {
    v17->associatedStrings = 0;
    v17->shouldEncodeTopicKeyInMessage = 1;
  }

  v17->allowConcurrent = a5;
  v17->requireReliable = a6;
  if (a8)
  {
    v17->sendMessageCompletionBlock = _Block_copy(a8);
  }

  if (aBlock)
  {
    v17->receiveMessageBlock = _Block_copy(aBlock);
  }

  if (a10)
  {
    v17->sendMessageDataCompletionBlock = _Block_copy(a10);
  }

  if (a11)
  {
    v17->receiveMessageDictionaryBlock = _Block_copy(a11);
  }

  v17->transactionCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->_sendMessageBuffers = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->latestOutgoingMessageIndex = 0;
  v17->isSendingEnabled = 1;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  if (v17->allowConcurrent)
  {
    v19 = MEMORY[0x1E69E96A8];
  }

  else
  {
    v19 = 0;
  }

  v17->_outMessageQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSessionMessageTopic.outMessageQueue", v19, CustomRootQueue);
  return v17;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSString *)self->topicKey UTF8String];
      *buf = 136315906;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCSessionMessageTopic dealloc]";
      v17 = 1024;
      v18 = 126;
      v19 = 2080;
      v20 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessageTopic with topic %s dealloc", buf, 0x26u);
    }
  }

  sendMessageCompletionBlock = self->sendMessageCompletionBlock;
  if (sendMessageCompletionBlock)
  {
    _Block_release(sendMessageCompletionBlock);
  }

  sendMessageDataCompletionBlock = self->sendMessageDataCompletionBlock;
  if (sendMessageDataCompletionBlock)
  {
    _Block_release(sendMessageDataCompletionBlock);
  }

  receiveMessageBlock = self->receiveMessageBlock;
  if (receiveMessageBlock)
  {
    _Block_release(receiveMessageBlock);
  }

  receiveMessageDictionaryBlock = self->receiveMessageDictionaryBlock;
  if (receiveMessageDictionaryBlock)
  {
    _Block_release(receiveMessageDictionaryBlock);
  }

  outMessageQueue = self->_outMessageQueue;
  if (outMessageQueue)
  {
    dispatch_release(outMessageQueue);
  }

  inMessageQueue = self->inMessageQueue;
  if (inMessageQueue)
  {
    dispatch_release(inMessageQueue);
  }

  v12.receiver = self;
  v12.super_class = VCSessionMessageTopic;
  [(VCSessionMessageTopic *)&v12 dealloc];
}

- (BOOL)isPayloadAssociated:(id)a3
{
  objc_sync_enter(self);
  shouldEncodeTopicKeyInMessage = self->shouldEncodeTopicKeyInMessage;
  if (shouldEncodeTopicKeyInMessage)
  {
    LOBYTE(a3) = [a3 hasPrefix:self->topicKey];
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->associatedStrings containsObject:a3];
  }

  objc_sync_exit(self);
  if (shouldEncodeTopicKeyInMessage)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

- (void)setIsSendingEnabled:(BOOL)a3
{
  objc_sync_enter(self);
  self->isSendingEnabled = a3;

  objc_sync_exit(self);
}

- (id)messageForCommand:(id)a3
{
  if (self->shouldEncodeTopicKeyInMessage)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->topicKey, a3, v3, v4];
  }

  else
  {
    return a3;
  }
}

- (void)sendMessage:(id)a3 participantID:(unint64_t)a4
{
  objc_sync_enter(self);
  latestOutgoingMessageIndex = self->latestOutgoingMessageIndex;
  self->latestOutgoingMessageIndex = latestOutgoingMessageIndex + 1;
  objc_sync_exit(self);

  [(VCSessionMessageTopic *)self sendMessage:a3 participantID:a4 withSequence:latestOutgoingMessageIndex numRetries:0];
}

- (void)handleSendMessageDidSucceed:(BOOL)a3 message:(id)a4 participantID:(id)a5
{
  sendMessageCompletionBlock = self->sendMessageCompletionBlock;
  if (sendMessageCompletionBlock || (sendMessageCompletionBlock = self->sendMessageDataCompletionBlock) != 0)
  {
    sendMessageCompletionBlock[2](sendMessageCompletionBlock, a4, a3, a5);
  }
}

- (BOOL)sendReliableMessage:(id)a3 participantID:(unint64_t)a4 withOptions:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v11;
      v20 = 2080;
      v21 = "[VCSessionMessageTopic sendReliableMessage:participantID:withOptions:completion:]";
      v22 = 1024;
      v23 = 207;
      v24 = 2112;
      v25 = [(VCSessionMessageTopic *)self topicKey];
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendReliableMessage topic=%@", buf, 0x26u);
    }
  }

  controlChannel = self->controlChannel;
  v14 = [(VCSessionMessageTopic *)self topicKey];
  v15 = [(VCControlChannel *)self->controlChannel reliableMessageResendInterval];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__VCSessionMessageTopic_sendReliableMessage_participantID_withOptions_completion___block_invoke;
  v17[3] = &unk_1E85F9710;
  v17[4] = a6;
  return [(VCControlChannel *)controlChannel sendReliableMessage:a3 withTopic:v14 participantID:a4 timeout:v15 withOptions:a5 completion:v17];
}

- (void)sendMessage:(id)a3 participantID:(unint64_t)a4 withSequence:(int64_t)a5 numRetries:(int64_t)a6
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->isSendingEnabled)
  {
    if (a6 < 8)
    {
      objc_sync_enter(self);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          topicKey = self->topicKey;
          requireReliable = self->requireReliable;
          allowConcurrent = self->allowConcurrent;
          latestOutgoingMessageIndex = self->latestOutgoingMessageIndex;
          *buf = 136317186;
          v21 = v12;
          v22 = 2080;
          v23 = "[VCSessionMessageTopic sendMessage:participantID:withSequence:numRetries:]";
          v24 = 1024;
          v25 = 227;
          v26 = 2112;
          v27 = topicKey;
          v28 = 1024;
          v29 = requireReliable;
          v30 = 1024;
          v31 = allowConcurrent;
          v32 = 1024;
          v33 = a5;
          v34 = 1024;
          v35 = latestOutgoingMessageIndex;
          v36 = 1024;
          v37 = a6;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendMessage topic=%@ reliable=%d, concurent=%d, outgoingIndex=%d, lastOutgoingIndex=%d, retries=%d", buf, 0x44u);
        }
      }

      if (self->requireReliable)
      {
        if (!a6 || self->latestOutgoingMessageIndex - 1 <= a5)
        {
          outMessageQueue = self->_outMessageQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__VCSessionMessageTopic_sendMessage_participantID_withSequence_numRetries___block_invoke;
          block[3] = &unk_1E85F9788;
          block[4] = self;
          block[5] = a3;
          block[6] = a4;
          block[7] = a5;
          block[8] = a6;
          dispatch_async(outMessageQueue, block);
        }
      }

      else
      {
        [(VCControlChannel *)self->controlChannel sendUnreliableMessage:a3 withTopic:self->topicKey participantID:a4];
      }

      objc_sync_exit(self);
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a4, a4, a5}];

      [(VCSessionMessageTopic *)self handleSendMessageDidSucceed:0 message:a3 participantID:v10];
    }
  }
}

- (void)dispatchedSendMessage:(id)a3 participantID:(unint64_t)a4 withSequence:(int64_t)a5 numRetries:(int64_t)a6
{
  v68 = *MEMORY[0x1E69E9840];
  if (self->isSendingEnabled)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [(VCControlChannel *)self->controlChannel sendReliableMessageAndWait:[(VCSessionMessageTopic *)self messageForCommand:a3] withTopic:self->topicKey];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_42;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v18 = "FAILURE";
        v47 = v16;
        *buf = 136315906;
        v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
        v48 = 2080;
        if (v11)
        {
          v18 = "SUCCESS";
        }

        v50 = 1024;
        v51 = 268;
        v52 = 2080;
        v53 = v18;
        v19 = " [%s] %s:%d sendReliableMessageAndWait result=%s";
        v20 = v17;
        v21 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
        }

        else
        {
          v13 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_42;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v24 = "FAILURE";
        v47 = v22;
        *buf = 136316418;
        v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
        v48 = 2080;
        if (v11)
        {
          v24 = "SUCCESS";
        }

        v50 = 1024;
        v51 = 268;
        v52 = 2112;
        v53 = v13;
        v54 = 2048;
        v55 = self;
        v56 = 2080;
        v57 = v24;
        v19 = " [%s] %s:%d %@(%p) sendReliableMessageAndWait result=%s";
        v20 = v23;
        v21 = 58;
      }

LABEL_40:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      if (!v11)
      {
        goto LABEL_55;
      }

LABEL_54:
      -[VCSessionMessageTopic handleSendMessageDidSucceed:message:participantID:](self, "handleSendMessageDidSucceed:message:participantID:", 1, a3, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]);
      return;
    }

    if (self->allowConcurrent)
    {
      v11 = [(VCControlChannel *)self->controlChannel sendReliableMessageAndWait:a3 withTopic:self->topicKey participantID:a4];
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v12 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
        }

        else
        {
          v12 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v37 = "FAILURE";
            *buf = 136317442;
            v47 = v35;
            v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
            v48 = 2080;
            if (v11)
            {
              v37 = "SUCCESS";
            }

            v50 = 1024;
            v51 = 257;
            v52 = 2112;
            v53 = v12;
            v54 = 2048;
            v55 = self;
            v56 = 2080;
            v57 = v37;
            v58 = 2048;
            v59 = a4;
            v60 = 2048;
            v61 = a5;
            v62 = 2048;
            v63 = a6;
            v64 = 2112;
            v65 = a3;
            v19 = " [%s] %s:%d %@(%p) sendReliableMessageAndWait result=%s, participantID=%llu, index=%ld, retry=%ld, payload=%@";
            v20 = v36;
            v21 = 98;
            goto LABEL_40;
          }
        }

        goto LABEL_42;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v27 = "FAILURE";
          *buf = 136316930;
          v47 = v25;
          v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
          v48 = 2080;
          if (v11)
          {
            v27 = "SUCCESS";
          }

          v50 = 1024;
          v51 = 257;
          v52 = 2080;
          v53 = v27;
          v54 = 2048;
          v55 = a4;
          v56 = 2048;
          v57 = a5;
          v58 = 2048;
          v59 = a6;
          v60 = 2112;
          v61 = a3;
          v19 = " [%s] %s:%d sendReliableMessageAndWait result=%s, participantID=%llu, index=%ld, retry=%ld, payload=%@";
          v20 = v26;
          v21 = 78;
          goto LABEL_40;
        }
      }

LABEL_42:
      v38 = 0;
      if (!v11)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v14 = [(VCSessionMessageTopic *)self attemptToSendOrBufferReliableMessage:a3 participantID:a4 sequenceNumber:a5 retryNumber:a6];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          topicKey = self->topicKey;
          v31 = "FAILURE";
          *buf = 136317186;
          if (v14)
          {
            v31 = "SUCCESS";
          }

          v47 = v28;
          v48 = 2080;
          v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
          v50 = 1024;
          v51 = 263;
          v52 = 2080;
          v53 = v31;
          v54 = 2112;
          v55 = topicKey;
          v56 = 2048;
          v57 = a4;
          v58 = 2048;
          v59 = a5;
          v60 = 2048;
          v61 = a6;
          v62 = 2112;
          v63 = a3;
          v32 = " [%s] %s:%d attemptToSendOrBufferReliableMessage result=%s, topic=%@ participantID=%llu, index=%ld, retry=%ld, payload=%@";
          v33 = v29;
          v34 = 88;
LABEL_50:
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
          if (v14)
          {
            return;
          }

LABEL_55:
          v43 = dispatch_time(0, 2000000000);
          outMessageQueue = self->_outMessageQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__VCSessionMessageTopic_dispatchedSendMessage_participantID_withSequence_numRetries___block_invoke;
          block[3] = &unk_1E85F9788;
          block[4] = self;
          block[5] = a3;
          block[6] = a4;
          block[7] = a5;
          block[8] = a6;
          dispatch_after(v43, outMessageQueue, block);
          return;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v41 = "FAILURE";
          v42 = self->topicKey;
          *buf = 136317698;
          if (v14)
          {
            v41 = "SUCCESS";
          }

          v47 = v39;
          v48 = 2080;
          v49 = "[VCSessionMessageTopic dispatchedSendMessage:participantID:withSequence:numRetries:]";
          v50 = 1024;
          v51 = 263;
          v52 = 2112;
          v53 = v15;
          v54 = 2048;
          v55 = self;
          v56 = 2080;
          v57 = v41;
          v58 = 2112;
          v59 = v42;
          v60 = 2048;
          v61 = a4;
          v62 = 2048;
          v63 = a5;
          v64 = 2048;
          v65 = a6;
          v66 = 2112;
          v67 = a3;
          v32 = " [%s] %s:%d %@(%p) attemptToSendOrBufferReliableMessage result=%s, topic=%@ participantID=%llu, index=%ld, retry=%ld, payload=%@";
          v33 = v40;
          v34 = 108;
          goto LABEL_50;
        }
      }
    }

    v38 = 1;
    if (v14)
    {
LABEL_53:
      if (v38)
      {
        return;
      }

      goto LABEL_54;
    }

    goto LABEL_55;
  }
}

- (BOOL)attemptToSendOrBufferReliableMessage:(id)a3 participantID:(unint64_t)a4 sequenceNumber:(int64_t)a5 retryNumber:(int64_t)a6
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_outMessageQueue);
  if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]))
  {
    v11 = [MEMORY[0x1E695DF70] array];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sendMessageBuffers, "setObject:forKeyedSubscript:", v11, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]);
  }

  v12 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4]);
  if (!v12)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_29;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      v27 = 136316418;
      v28 = v19;
      v29 = 2080;
      v30 = "[VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:]";
      v31 = 1024;
      v32 = 297;
      v33 = 2112;
      v34 = v17;
      v35 = 2048;
      v36 = self;
      v37 = 2048;
      v38 = a4;
      v21 = " [%s] %s:%d %@(%p) Cannot create sendMessageBuffer for participantID=%llu";
      v22 = v20;
      v23 = 58;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v21, &v27, v23);
      goto LABEL_29;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      [VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:];
    }

LABEL_29:
    LOBYTE(v16) = 0;
    return v16;
  }

  if (!a3)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_29;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      v27 = 136316162;
      v28 = v24;
      v29 = 2080;
      v30 = "[VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:]";
      v31 = 1024;
      v32 = 299;
      v33 = 2112;
      v34 = v18;
      v35 = 2048;
      v36 = self;
      v21 = " [%s] %s:%d %@(%p) Cannot send or buffer with a nil message";
      v22 = v25;
      v23 = 48;
      goto LABEL_28;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      [VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:];
    }

    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v12 count];
  v15 = [[VCSessionMessageBufferElement alloc] initWithMessage:a3 sequenceNumber:a5 retryNumber:a6];
  [v13 addObject:v15];

  if (!v14)
  {
    [(VCSessionMessageTopic *)self sendBufferedReliableMessagesForParticipantID:a4];
  }

  LOBYTE(v16) = 1;
  return v16;
}

- (void)sendBufferedReliableMessagesForParticipantID:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_outMessageQueue);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3]);
  if (v5)
  {
    v6 = [v5 firstObject];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 message];
      v9 = [v7 sequenceNumber];
      v10 = [v7 retryNumber];
      controlChannel = self->controlChannel;
      topicKey = self->topicKey;
      v13 = [(VCControlChannel *)controlChannel reliableMessageResendInterval];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__VCSessionMessageTopic_sendBufferedReliableMessagesForParticipantID___block_invoke;
      v17[3] = &unk_1E85F97D8;
      v17[4] = self;
      v17[5] = v8;
      v17[6] = a3;
      v17[7] = v9;
      v17[8] = v10;
      [(VCControlChannel *)controlChannel sendReliableMessage:v8 withTopic:topicKey participantID:a3 timeout:v13 completion:v17];
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionMessageTopic sendBufferedReliableMessagesForParticipantID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCSessionMessageTopic sendBufferedReliableMessagesForParticipantID:]";
        v22 = 1024;
        v23 = 319;
        v24 = 2112;
        v25 = v14;
        v26 = 2048;
        v27 = self;
        v28 = 2048;
        v29 = a3;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Cannot retrieve sendMessageBuffer for participantID=%llu", buf, 0x3Au);
      }
    }
  }
}

__n128 __70__VCSessionMessageTopic_sendBufferedReliableMessagesForParticipantID___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCSessionMessageTopic_sendBufferedReliableMessagesForParticipantID___block_invoke_2;
  block[3] = &unk_1E85F97B0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 32);
  v10 = a2;
  v7 = v2;
  v8 = v3;
  v9 = *(a1 + 64);
  dispatch_async(v4, block);
  return result;
}

- (void)dispatchedCompletionHandlerForSendMessage:(id)a3 withTopic:(id)a4 participantID:(unint64_t)a5 result:(BOOL)a6 sequenceNumber:(int64_t)a7 retryNumber:(int64_t)a8
{
  v10 = a6;
  v64 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
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

    v18 = "FAILURE";
    v43 = v16;
    *buf = 136317186;
    v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
    v44 = 2080;
    if (v10)
    {
      v18 = "SUCCESS";
    }

    v46 = 1024;
    v47 = 345;
    v48 = 2080;
    v49 = v18;
    v50 = 2112;
    v51 = a4;
    v52 = 2048;
    v53 = a5;
    v54 = 2048;
    v55 = a7;
    v56 = 2048;
    v57 = a8;
    v58 = 2112;
    v59 = a3;
    v19 = " [%s] %s:%d sendReliableMessage result=%s topic=%@ participantID=%llu, index=%ld, retry=%ld, payload=%@";
    v20 = v17;
    v21 = 88;
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
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
      v24 = "FAILURE";
      *buf = 136317698;
      v43 = v22;
      v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
      v44 = 2080;
      if (v10)
      {
        v24 = "SUCCESS";
      }

      v46 = 1024;
      v47 = 345;
      v48 = 2112;
      v49 = v15;
      v50 = 2048;
      v51 = self;
      v52 = 2080;
      v53 = v24;
      v54 = 2112;
      v55 = a4;
      v56 = 2048;
      v57 = a5;
      v58 = 2048;
      v59 = a7;
      v60 = 2048;
      v61 = a8;
      v62 = 2112;
      v63 = a3;
      v19 = " [%s] %s:%d %@(%p) sendReliableMessage result=%s topic=%@ participantID=%llu, index=%ld, retry=%ld, payload=%@";
      v20 = v23;
      v21 = 108;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }
  }

LABEL_16:
  if (v10)
  {
    -[VCSessionMessageTopic handleSendMessageDidSucceed:message:participantID:](self, "handleSendMessageDidSucceed:message:participantID:", 1, a3, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5]);
  }

  else
  {
    v25 = dispatch_time(0, 2000000000);
    outMessageQueue = self->_outMessageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__VCSessionMessageTopic_dispatchedCompletionHandlerForSendMessage_withTopic_participantID_result_sequenceNumber_retryNumber___block_invoke;
    block[3] = &unk_1E85F9788;
    block[4] = self;
    block[5] = a3;
    block[6] = a5;
    block[7] = a7;
    block[8] = a8;
    dispatch_after(v25, outMessageQueue, block);
  }

  v27 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5]);
  if ([v27 count])
  {
    v28 = [v27 objectAtIndexedSubscript:0];
    if ([v28 sequenceNumber] == a7 && objc_msgSend(v28, "retryNumber") == a8)
    {
      [v27 removeObjectAtIndex:0];
      goto LABEL_32;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_32;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v32 = [v28 sequenceNumber];
      v33 = [v28 retryNumber];
      *buf = 136316930;
      v43 = v30;
      v44 = 2080;
      v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
      v46 = 1024;
      v47 = 360;
      v48 = 2048;
      v49 = a5;
      v50 = 2048;
      v51 = v32;
      v52 = 2048;
      v53 = a7;
      v54 = 2048;
      v55 = v33;
      v56 = 2048;
      v57 = a8;
      v34 = " [%s] %s:%d Cannot match element in participantMessageBuffer for participantID=%llu, element index=%ld, index=%ld, element retry=%ld, retry=%ld";
      v35 = v31;
      v36 = 78;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCSessionMessageTopic *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_32;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v39 = [v28 sequenceNumber];
      v40 = [v28 retryNumber];
      *buf = 136317442;
      v43 = v37;
      v44 = 2080;
      v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
      v46 = 1024;
      v47 = 360;
      v48 = 2112;
      v49 = v29;
      v50 = 2048;
      v51 = self;
      v52 = 2048;
      v53 = a5;
      v54 = 2048;
      v55 = v39;
      v56 = 2048;
      v57 = a7;
      v58 = 2048;
      v59 = v40;
      v60 = 2048;
      v61 = a8;
      v34 = " [%s] %s:%d %@(%p) Cannot match element in participantMessageBuffer for participantID=%llu, element index=%ld, index=%ld, element retry=%ld, retry=%ld";
      v35 = v38;
      v36 = 98;
    }

    _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
  }

LABEL_32:
  [(VCSessionMessageTopic *)self sendBufferedReliableMessagesForParticipantID:a5];
}

- (BOOL)isDuplicateMessageID:(id)a3 messageHistory:(id)a4 participantID:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = [a4 objectForKeyedSubscript:@"replayThreshold"];
  if (v8)
  {
    v9 = v8;
    v10 = [a3 unsignedLongLongValue];
    if (v10 <= [v9 unsignedLongLongValue])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v31 = v22;
          v32 = 2080;
          v33 = "[VCSessionMessageTopic isDuplicateMessageID:messageHistory:participantID:]";
          v34 = 1024;
          v35 = 374;
          v36 = 2112;
          v37 = a5;
          v38 = 2112;
          v39 = a3;
          v40 = 2112;
          v41 = v9;
          v20 = " [%s] %s:%d ParticipantID=%@: Message too old: transactionID=%@, replayProtectionThreshold=%@";
          v21 = v23;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, 0x3Au);
        }
      }

LABEL_16:
      LOBYTE(v12) = 1;
      return v12;
    }
  }

  v11 = [a4 objectForKeyedSubscript:@"messageHistory"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v26 + 1) + 8 * v15);
      if ([a3 isEqualToNumber:{objc_msgSend(v16, "objectForKeyedSubscript:", @"messageID"}])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v25 count:16];
        v13 = v12;
        if (v12)
        {
          goto LABEL_5;
        }

        return v12;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v16 objectForKeyedSubscript:@"expireTime"];
        *buf = 136316418;
        v31 = v17;
        v32 = 2080;
        v33 = "[VCSessionMessageTopic isDuplicateMessageID:messageHistory:participantID:]";
        v34 = 1024;
        v35 = 378;
        v36 = 2112;
        v37 = a5;
        v38 = 2112;
        v39 = a3;
        v40 = 2112;
        v41 = v19;
        v20 = " [%s] %s:%d ParticipantID=%@: Found duplicate message with transactionID=%@ and expiration time=%@";
        v21 = v18;
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  return v12;
}

- (void)purgeExpiredEntries:(double)a3 messageHistory:(id)a4 participantID:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = [a4 objectForKeyedSubscript:@"messageHistory"];
  v8 = [objc_msgSend(a4 objectForKeyedSubscript:{@"replayThreshold", "unsignedLongLongValue"}];
  if ([v7 count])
  {
    *&v9 = 136316930;
    v17 = v9;
    do
    {
      v10 = [v7 firstObject];
      [objc_msgSend(v10 objectForKeyedSubscript:{@"expireTime", "doubleValue"}];
      v12 = v11;
      v13 = [objc_msgSend(v10 objectForKeyedSubscript:{@"messageID", "unsignedLongLongValue"}];
      if (v12 > a3)
      {
        break;
      }

      v14 = v13;
      if (v8 <= v13)
      {
        v8 = v13;
      }

      [a4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v8), @"replayThreshold"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v20 = v15;
          v21 = 2080;
          v22 = "[VCSessionMessageTopic purgeExpiredEntries:messageHistory:participantID:]";
          v23 = 1024;
          v24 = 399;
          v25 = 2112;
          v26 = a5;
          v27 = 2048;
          v28 = v14;
          v29 = 2048;
          v30 = v12;
          v31 = 2048;
          v32 = a3;
          v33 = 2048;
          v34 = v8;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ParticipantID=%@: Purging message with transactionID=%llu and expiration time=%f. Current time=%f, replayProtectionThreshold=%llu", buf, 0x4Eu);
        }
      }

      [v7 removeObjectAtIndex:0];
    }

    while ([v7 count]);
  }
}

- (void)passMessage:(id)a3 sequence:(int)a4 fromParticipant:(id)a5
{
  v6 = *&a4;
  v41 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!a5)
  {
    a5 = &unk_1F579BB50;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v10 = micro();
  v11 = [(NSMutableDictionary *)self->transactionCache objectForKeyedSubscript:a5];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->transactionCache setObject:v11 forKeyedSubscript:a5];
  }

  v12 = [v11 objectForKeyedSubscript:@"messageHistory"];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 setObject:v12 forKeyedSubscript:@"messageHistory"];
  }

  [(VCSessionMessageTopic *)self purgeExpiredEntries:v11 messageHistory:a5 participantID:v10];
  if ([(VCSessionMessageTopic *)self isDuplicateMessageID:v9 messageHistory:v11 participantID:a5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        topicKey = self->topicKey;
        *buf = 136316674;
        v28 = v13;
        v29 = 2080;
        v30 = "[VCSessionMessageTopic passMessage:sequence:fromParticipant:]";
        v31 = 1024;
        v32 = 452;
        v33 = 2112;
        v34 = a5;
        v35 = 2112;
        v36 = a3;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = topicKey;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d passMessage: ParticipantID '%@': Ignoring duplicate message '%@' with transactionID '%@' for topic '%@'", buf, 0x44u);
      }
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{v10 + -[VCControlChannel reliableMessageResendInterval](self->controlChannel, "reliableMessageResendInterval")}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v28 = v17;
        v29 = 2080;
        v30 = "[VCSessionMessageTopic passMessage:sequence:fromParticipant:]";
        v31 = 1024;
        v32 = 432;
        v33 = 2112;
        v34 = a5;
        v35 = 2112;
        v36 = v9;
        v37 = 2112;
        v38 = v12;
        v39 = 2112;
        v40 = v16;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d passMessage: Participant '%@': Added message ID '%@' to message history '%@', expireTime '%@'", buf, 0x44u);
      }
    }

    v25[0] = @"messageID";
    v25[1] = @"expireTime";
    v26[0] = v9;
    v26[1] = v16;
    [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, v25, 2)}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->topicKey;
        *buf = 136316674;
        v28 = v19;
        v29 = 2080;
        v30 = "[VCSessionMessageTopic passMessage:sequence:fromParticipant:]";
        v31 = 1024;
        v32 = 438;
        v33 = 2112;
        v34 = a5;
        v35 = 2112;
        v36 = a3;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d passMessage: ParticipantID '%@': Passing message '%@' with transactionID '%@' for topic '%@'", buf, 0x44u);
      }
    }

    inMessageQueue = self->inMessageQueue;
    if (!inMessageQueue)
    {
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      inMessageQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSessionMessageTopic.inMessageQueue", 0, CustomRootQueue);
      self->inMessageQueue = inMessageQueue;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__VCSessionMessageTopic_passMessage_sequence_fromParticipant___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = a3;
    block[6] = a5;
    dispatch_async(inMessageQueue, block);
  }

  objc_sync_exit(self);
}

void *__62__VCSessionMessageTopic_passMessage_sequence_fromParticipant___block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 72);
  if (v2)
  {
    return (*(v2 + 16))(v2, result[5], 0, result[6]);
  }

  v2 = *(v1 + 80);
  if (v2)
  {
    return (*(v2 + 16))(v2, result[5], 0, result[6]);
  }

  return result;
}

- (void)clearTransactionCacheForParticipant:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCSessionMessageTopic clearTransactionCacheForParticipant:]";
      v11 = 1024;
      v12 = 461;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clearTransactionCacheForParticipant:%@", &v7, 0x26u);
    }
  }

  [(NSMutableDictionary *)self->transactionCache removeObjectForKey:a3];
  objc_sync_exit(self);
}

- (void)attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:]";
  v5 = 1024;
  v6 = 299;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot send or buffer with a nil message", v2, 0x1Cu);
}

- (void)attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:.cold.2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:]";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Cannot create sendMessageBuffer for participantID=%llu", v3, *v4, "[VCSessionMessageTopic attemptToSendOrBufferReliableMessage:participantID:sequenceNumber:retryNumber:]" >> 16, v5);
}

- (void)sendBufferedReliableMessagesForParticipantID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCSessionMessageTopic sendBufferedReliableMessagesForParticipantID:]";
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Cannot retrieve sendMessageBuffer for participantID=%llu", v3, *v4, "[VCSessionMessageTopic sendBufferedReliableMessagesForParticipantID:]" >> 16, v5);
}

@end