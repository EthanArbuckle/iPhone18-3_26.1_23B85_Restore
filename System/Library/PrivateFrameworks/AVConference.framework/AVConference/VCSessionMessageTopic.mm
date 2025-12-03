@interface VCSessionMessageTopic
- (BOOL)attemptToSendOrBufferReliableMessage:(id)message participantID:(unint64_t)d sequenceNumber:(int64_t)number retryNumber:(int64_t)retryNumber;
- (BOOL)isDuplicateMessageID:(id)d messageHistory:(id)history participantID:(id)iD;
- (BOOL)isPayloadAssociated:(id)associated;
- (BOOL)sendReliableMessage:(id)message participantID:(unint64_t)d withOptions:(id)options completion:(id)completion;
- (VCSessionMessageTopic)initWithTopicKey:(id)key strings:(id)strings allowConcurrent:(BOOL)concurrent requireReliable:(BOOL)reliable controlChannel:(id)channel sendCompletionHandler:(id)handler receiveHandler:(id)aBlock sendMessageDataCompletionHandler:(id)self0 receiveMessageDictionaryHandler:(id)self1;
- (id)messageForCommand:(id)command;
- (void)clearTransactionCacheForParticipant:(id)participant;
- (void)dealloc;
- (void)dispatchedCompletionHandlerForSendMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d result:(BOOL)result sequenceNumber:(int64_t)number retryNumber:(int64_t)retryNumber;
- (void)dispatchedSendMessage:(id)message participantID:(unint64_t)d withSequence:(int64_t)sequence numRetries:(int64_t)retries;
- (void)handleSendMessageDidSucceed:(BOOL)succeed message:(id)message participantID:(id)d;
- (void)passMessage:(id)message sequence:(int)sequence fromParticipant:(id)participant;
- (void)purgeExpiredEntries:(double)entries messageHistory:(id)history participantID:(id)d;
- (void)sendBufferedReliableMessagesForParticipantID:(unint64_t)d;
- (void)sendMessage:(id)message participantID:(unint64_t)d;
- (void)sendMessage:(id)message participantID:(unint64_t)d withSequence:(int64_t)sequence numRetries:(int64_t)retries;
- (void)setIsSendingEnabled:(BOOL)enabled;
@end

@implementation VCSessionMessageTopic

- (VCSessionMessageTopic)initWithTopicKey:(id)key strings:(id)strings allowConcurrent:(BOOL)concurrent requireReliable:(BOOL)reliable controlChannel:(id)channel sendCompletionHandler:(id)handler receiveHandler:(id)aBlock sendMessageDataCompletionHandler:(id)self0 receiveMessageDictionaryHandler:(id)self1
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCSessionMessageTopic;
  v17 = [(VCSessionMessageTopic *)&v21 init];
  v17->topicKey = [key copy];
  v17->controlChannel = channel;
  if (strings)
  {
    v17->associatedStrings = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:strings];
    v17->shouldEncodeTopicKeyInMessage = 0;
    [(VCControlChannel *)v17->controlChannel addOptionalTopic:v17->topicKey];
  }

  else
  {
    v17->associatedStrings = 0;
    v17->shouldEncodeTopicKeyInMessage = 1;
  }

  v17->allowConcurrent = concurrent;
  v17->requireReliable = reliable;
  if (handler)
  {
    v17->sendMessageCompletionBlock = _Block_copy(handler);
  }

  if (aBlock)
  {
    v17->receiveMessageBlock = _Block_copy(aBlock);
  }

  if (completionHandler)
  {
    v17->sendMessageDataCompletionBlock = _Block_copy(completionHandler);
  }

  if (dictionaryHandler)
  {
    v17->receiveMessageDictionaryBlock = _Block_copy(dictionaryHandler);
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
      uTF8String = [(NSString *)self->topicKey UTF8String];
      *buf = 136315906;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCSessionMessageTopic dealloc]";
      v17 = 1024;
      v18 = 126;
      v19 = 2080;
      v20 = uTF8String;
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

- (BOOL)isPayloadAssociated:(id)associated
{
  objc_sync_enter(self);
  shouldEncodeTopicKeyInMessage = self->shouldEncodeTopicKeyInMessage;
  if (shouldEncodeTopicKeyInMessage)
  {
    LOBYTE(associated) = [associated hasPrefix:self->topicKey];
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->associatedStrings containsObject:associated];
  }

  objc_sync_exit(self);
  if (shouldEncodeTopicKeyInMessage)
  {
    associatedCopy = associated;
  }

  else
  {
    associatedCopy = v6;
  }

  return associatedCopy & 1;
}

- (void)setIsSendingEnabled:(BOOL)enabled
{
  objc_sync_enter(self);
  self->isSendingEnabled = enabled;

  objc_sync_exit(self);
}

- (id)messageForCommand:(id)command
{
  if (self->shouldEncodeTopicKeyInMessage)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->topicKey, command, v3, v4];
  }

  else
  {
    return command;
  }
}

- (void)sendMessage:(id)message participantID:(unint64_t)d
{
  objc_sync_enter(self);
  latestOutgoingMessageIndex = self->latestOutgoingMessageIndex;
  self->latestOutgoingMessageIndex = latestOutgoingMessageIndex + 1;
  objc_sync_exit(self);

  [(VCSessionMessageTopic *)self sendMessage:message participantID:d withSequence:latestOutgoingMessageIndex numRetries:0];
}

- (void)handleSendMessageDidSucceed:(BOOL)succeed message:(id)message participantID:(id)d
{
  sendMessageCompletionBlock = self->sendMessageCompletionBlock;
  if (sendMessageCompletionBlock || (sendMessageCompletionBlock = self->sendMessageDataCompletionBlock) != 0)
  {
    sendMessageCompletionBlock[2](sendMessageCompletionBlock, message, succeed, d);
  }
}

- (BOOL)sendReliableMessage:(id)message participantID:(unint64_t)d withOptions:(id)options completion:(id)completion
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
      topicKey = [(VCSessionMessageTopic *)self topicKey];
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendReliableMessage topic=%@", buf, 0x26u);
    }
  }

  controlChannel = self->controlChannel;
  topicKey2 = [(VCSessionMessageTopic *)self topicKey];
  reliableMessageResendInterval = [(VCControlChannel *)self->controlChannel reliableMessageResendInterval];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__VCSessionMessageTopic_sendReliableMessage_participantID_withOptions_completion___block_invoke;
  v17[3] = &unk_1E85F9710;
  v17[4] = completion;
  return [(VCControlChannel *)controlChannel sendReliableMessage:message withTopic:topicKey2 participantID:d timeout:reliableMessageResendInterval withOptions:options completion:v17];
}

- (void)sendMessage:(id)message participantID:(unint64_t)d withSequence:(int64_t)sequence numRetries:(int64_t)retries
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->isSendingEnabled)
  {
    if (retries < 8)
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
          sequenceCopy = sequence;
          v34 = 1024;
          v35 = latestOutgoingMessageIndex;
          v36 = 1024;
          retriesCopy = retries;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendMessage topic=%@ reliable=%d, concurent=%d, outgoingIndex=%d, lastOutgoingIndex=%d, retries=%d", buf, 0x44u);
        }
      }

      if (self->requireReliable)
      {
        if (!retries || self->latestOutgoingMessageIndex - 1 <= sequence)
        {
          outMessageQueue = self->_outMessageQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__VCSessionMessageTopic_sendMessage_participantID_withSequence_numRetries___block_invoke;
          block[3] = &unk_1E85F9788;
          block[4] = self;
          block[5] = message;
          block[6] = d;
          block[7] = sequence;
          block[8] = retries;
          dispatch_async(outMessageQueue, block);
        }
      }

      else
      {
        [(VCControlChannel *)self->controlChannel sendUnreliableMessage:message withTopic:self->topicKey participantID:d];
      }

      objc_sync_exit(self);
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{d, d, sequence}];

      [(VCSessionMessageTopic *)self handleSendMessageDidSucceed:0 message:message participantID:v10];
    }
  }
}

- (void)dispatchedSendMessage:(id)message participantID:(unint64_t)d withSequence:(int64_t)sequence numRetries:(int64_t)retries
{
  v68 = *MEMORY[0x1E69E9840];
  if (self->isSendingEnabled)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [(VCControlChannel *)self->controlChannel sendReliableMessageAndWait:[(VCSessionMessageTopic *)self messageForCommand:message] withTopic:self->topicKey];
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
        selfCopy3 = self;
        v56 = 2080;
        dCopy3 = v24;
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
      -[VCSessionMessageTopic handleSendMessageDidSucceed:message:participantID:](self, "handleSendMessageDidSucceed:message:participantID:", 1, message, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
      return;
    }

    if (self->allowConcurrent)
    {
      v11 = [(VCControlChannel *)self->controlChannel sendReliableMessageAndWait:message withTopic:self->topicKey participantID:d];
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
            selfCopy3 = self;
            v56 = 2080;
            dCopy3 = v37;
            v58 = 2048;
            sequenceCopy3 = d;
            v60 = 2048;
            dCopy4 = sequence;
            v62 = 2048;
            sequenceCopy4 = retries;
            v64 = 2112;
            retriesCopy4 = message;
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
          selfCopy3 = d;
          v56 = 2048;
          dCopy3 = sequence;
          v58 = 2048;
          sequenceCopy3 = retries;
          v60 = 2112;
          dCopy4 = message;
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

    v14 = [(VCSessionMessageTopic *)self attemptToSendOrBufferReliableMessage:message participantID:d sequenceNumber:sequence retryNumber:retries];
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
          selfCopy3 = topicKey;
          v56 = 2048;
          dCopy3 = d;
          v58 = 2048;
          sequenceCopy3 = sequence;
          v60 = 2048;
          dCopy4 = retries;
          v62 = 2112;
          sequenceCopy4 = message;
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
          block[5] = message;
          block[6] = d;
          block[7] = sequence;
          block[8] = retries;
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
          selfCopy3 = self;
          v56 = 2080;
          dCopy3 = v41;
          v58 = 2112;
          sequenceCopy3 = v42;
          v60 = 2048;
          dCopy4 = d;
          v62 = 2048;
          sequenceCopy4 = sequence;
          v64 = 2048;
          retriesCopy4 = retries;
          v66 = 2112;
          messageCopy4 = message;
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

- (BOOL)attemptToSendOrBufferReliableMessage:(id)message participantID:(unint64_t)d sequenceNumber:(int64_t)number retryNumber:(int64_t)retryNumber
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_outMessageQueue);
  if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]))
  {
    array = [MEMORY[0x1E695DF70] array];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sendMessageBuffers, "setObject:forKeyedSubscript:", array, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
  }

  v12 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
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
      selfCopy2 = self;
      v37 = 2048;
      dCopy = d;
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

  if (!message)
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
      selfCopy2 = self;
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
  v15 = [[VCSessionMessageBufferElement alloc] initWithMessage:message sequenceNumber:number retryNumber:retryNumber];
  [v13 addObject:v15];

  if (!v14)
  {
    [(VCSessionMessageTopic *)self sendBufferedReliableMessagesForParticipantID:d];
  }

  LOBYTE(v16) = 1;
  return v16;
}

- (void)sendBufferedReliableMessagesForParticipantID:(unint64_t)d
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_outMessageQueue);
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
  if (v5)
  {
    firstObject = [v5 firstObject];
    if (firstObject)
    {
      v7 = firstObject;
      message = [firstObject message];
      sequenceNumber = [v7 sequenceNumber];
      retryNumber = [v7 retryNumber];
      controlChannel = self->controlChannel;
      topicKey = self->topicKey;
      reliableMessageResendInterval = [(VCControlChannel *)controlChannel reliableMessageResendInterval];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__VCSessionMessageTopic_sendBufferedReliableMessagesForParticipantID___block_invoke;
      v17[3] = &unk_1E85F97D8;
      v17[4] = self;
      v17[5] = message;
      v17[6] = d;
      v17[7] = sequenceNumber;
      v17[8] = retryNumber;
      [(VCControlChannel *)controlChannel sendReliableMessage:message withTopic:topicKey participantID:d timeout:reliableMessageResendInterval completion:v17];
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
        selfCopy = self;
        v28 = 2048;
        dCopy = d;
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

- (void)dispatchedCompletionHandlerForSendMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d result:(BOOL)result sequenceNumber:(int64_t)number retryNumber:(int64_t)retryNumber
{
  resultCopy = result;
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
    if (resultCopy)
    {
      v18 = "SUCCESS";
    }

    v46 = 1024;
    v47 = 345;
    v48 = 2080;
    dCopy3 = v18;
    v50 = 2112;
    selfCopy2 = topic;
    v52 = 2048;
    dCopy4 = d;
    v54 = 2048;
    topicCopy2 = number;
    v56 = 2048;
    numberCopy4 = retryNumber;
    v58 = 2112;
    numberCopy2 = message;
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
      if (resultCopy)
      {
        v24 = "SUCCESS";
      }

      v46 = 1024;
      v47 = 345;
      v48 = 2112;
      dCopy3 = v15;
      v50 = 2048;
      selfCopy2 = self;
      v52 = 2080;
      dCopy4 = v24;
      v54 = 2112;
      topicCopy2 = topic;
      v56 = 2048;
      numberCopy4 = d;
      v58 = 2048;
      numberCopy2 = number;
      v60 = 2048;
      retryNumberCopy4 = retryNumber;
      v62 = 2112;
      messageCopy2 = message;
      v19 = " [%s] %s:%d %@(%p) sendReliableMessage result=%s topic=%@ participantID=%llu, index=%ld, retry=%ld, payload=%@";
      v20 = v23;
      v21 = 108;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }
  }

LABEL_16:
  if (resultCopy)
  {
    -[VCSessionMessageTopic handleSendMessageDidSucceed:message:participantID:](self, "handleSendMessageDidSucceed:message:participantID:", 1, message, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
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
    block[5] = message;
    block[6] = d;
    block[7] = number;
    block[8] = retryNumber;
    dispatch_after(v25, outMessageQueue, block);
  }

  v27 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sendMessageBuffers, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]);
  if ([v27 count])
  {
    v28 = [v27 objectAtIndexedSubscript:0];
    if ([v28 sequenceNumber] == number && objc_msgSend(v28, "retryNumber") == retryNumber)
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

      sequenceNumber = [v28 sequenceNumber];
      retryNumber = [v28 retryNumber];
      *buf = 136316930;
      v43 = v30;
      v44 = 2080;
      v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
      v46 = 1024;
      v47 = 360;
      v48 = 2048;
      dCopy3 = d;
      v50 = 2048;
      selfCopy2 = sequenceNumber;
      v52 = 2048;
      dCopy4 = number;
      v54 = 2048;
      topicCopy2 = retryNumber;
      v56 = 2048;
      numberCopy4 = retryNumber;
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

      sequenceNumber2 = [v28 sequenceNumber];
      retryNumber2 = [v28 retryNumber];
      *buf = 136317442;
      v43 = v37;
      v44 = 2080;
      v45 = "[VCSessionMessageTopic dispatchedCompletionHandlerForSendMessage:withTopic:participantID:result:sequenceNumber:retryNumber:]";
      v46 = 1024;
      v47 = 360;
      v48 = 2112;
      dCopy3 = v29;
      v50 = 2048;
      selfCopy2 = self;
      v52 = 2048;
      dCopy4 = d;
      v54 = 2048;
      topicCopy2 = sequenceNumber2;
      v56 = 2048;
      numberCopy4 = number;
      v58 = 2048;
      numberCopy2 = retryNumber2;
      v60 = 2048;
      retryNumberCopy4 = retryNumber;
      v34 = " [%s] %s:%d %@(%p) Cannot match element in participantMessageBuffer for participantID=%llu, element index=%ld, index=%ld, element retry=%ld, retry=%ld";
      v35 = v38;
      v36 = 98;
    }

    _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
  }

LABEL_32:
  [(VCSessionMessageTopic *)self sendBufferedReliableMessagesForParticipantID:d];
}

- (BOOL)isDuplicateMessageID:(id)d messageHistory:(id)history participantID:(id)iD
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = [history objectForKeyedSubscript:@"replayThreshold"];
  if (v8)
  {
    v9 = v8;
    unsignedLongLongValue = [d unsignedLongLongValue];
    if (unsignedLongLongValue <= [v9 unsignedLongLongValue])
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
          iDCopy2 = iD;
          v38 = 2112;
          dCopy2 = d;
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

  v11 = [history objectForKeyedSubscript:@"messageHistory"];
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
      if ([d isEqualToNumber:{objc_msgSend(v16, "objectForKeyedSubscript:", @"messageID"}])
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
        iDCopy2 = iD;
        v38 = 2112;
        dCopy2 = d;
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

- (void)purgeExpiredEntries:(double)entries messageHistory:(id)history participantID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = [history objectForKeyedSubscript:@"messageHistory"];
  v8 = [objc_msgSend(history objectForKeyedSubscript:{@"replayThreshold", "unsignedLongLongValue"}];
  if ([v7 count])
  {
    *&v9 = 136316930;
    v17 = v9;
    do
    {
      firstObject = [v7 firstObject];
      [objc_msgSend(firstObject objectForKeyedSubscript:{@"expireTime", "doubleValue"}];
      v12 = v11;
      v13 = [objc_msgSend(firstObject objectForKeyedSubscript:{@"messageID", "unsignedLongLongValue"}];
      if (v12 > entries)
      {
        break;
      }

      v14 = v13;
      if (v8 <= v13)
      {
        v8 = v13;
      }

      [history setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v8), @"replayThreshold"}];
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
          dCopy = d;
          v27 = 2048;
          v28 = v14;
          v29 = 2048;
          v30 = v12;
          v31 = 2048;
          entriesCopy = entries;
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

- (void)passMessage:(id)message sequence:(int)sequence fromParticipant:(id)participant
{
  v6 = *&sequence;
  v41 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!participant)
  {
    participant = &unk_1F579BB50;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v10 = micro();
  v11 = [(NSMutableDictionary *)self->transactionCache objectForKeyedSubscript:participant];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->transactionCache setObject:v11 forKeyedSubscript:participant];
  }

  v12 = [v11 objectForKeyedSubscript:@"messageHistory"];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 setObject:v12 forKeyedSubscript:@"messageHistory"];
  }

  [(VCSessionMessageTopic *)self purgeExpiredEntries:v11 messageHistory:participant participantID:v10];
  if ([(VCSessionMessageTopic *)self isDuplicateMessageID:v9 messageHistory:v11 participantID:participant])
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
        participantCopy3 = participant;
        v35 = 2112;
        messageCopy2 = message;
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
        participantCopy3 = participant;
        v35 = 2112;
        messageCopy2 = v9;
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
        participantCopy3 = participant;
        v35 = 2112;
        messageCopy2 = message;
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
    block[5] = message;
    block[6] = participant;
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

- (void)clearTransactionCacheForParticipant:(id)participant
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
      participantCopy = participant;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clearTransactionCacheForParticipant:%@", &v7, 0x26u);
    }
  }

  [(NSMutableDictionary *)self->transactionCache removeObjectForKey:participant];
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