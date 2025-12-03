@interface VCSessionMessaging
- (BOOL)sendReliableMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d withOptions:(id)options completion:(id)completion;
- (VCSessionMessaging)initWithControlChannel:(id)channel remoteVersion:(id)version;
- (id)allocMessageFromPayload:(id)payload forTopic:(id)topic participantID:(id)d;
- (id)newDictionaryFromUnpackedMessage:(id)message;
- (id)newDictionaryFromUnpackedMessage:(id)message forTopic:(id)topic controlChannelVersion:(int)version;
- (id)newDictionaryFromUnpackedMessageV2:(id)v2;
- (id)newDictionaryFromUnpackedMomentsMessage:(id)message;
- (id)newPackedMessageFromDictionary:(id)dictionary;
- (id)newPackedMessageFromDictionary:(id)dictionary forTopic:(id)topic controlChannelVersion:(int)version;
- (id)newPackedMessageFromDictionaryV2:(id)v2;
- (id)newPackedMessageFromMomentsDictionary:(id)dictionary;
- (void)addParticipant:(id)participant controlChannelProtocolVersion:(int)version;
- (void)addTopic:(id)topic associatedStrings:(id)strings allowConcurrent:(BOOL)concurrent requireReliable:(BOOL)reliable sendMessageDictionaryCompletionHandler:(id)handler receiveMessageDictionaryHandler:(id)dictionaryHandler;
- (void)addTopic:(id)topic associatedStrings:(id)strings allowConcurrent:(BOOL)concurrent sendCompletionHandler:(id)handler receiveHandler:(id)receiveHandler;
- (void)controlChannel:(id)channel clearTransactionCacheForParticipant:(id)participant;
- (void)controlChannel:(id)channel sendReliableMessage:(id)message didSucceed:(BOOL)succeed toParticipant:(id)participant;
- (void)controlChannel:(id)channel topic:(id)topic payload:(id)payload transactionID:(unsigned int)d fromParticipant:(id)participant;
- (void)dealloc;
- (void)searchMatchingTopic:(id)topic payload:(id)payload transactionID:(unsigned int)d fromParticipant:(id)participant;
- (void)sendMessage:(id)message withTopic:(id)topic;
- (void)sendMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d;
- (void)sendMessageDictionary:(id)dictionary withTopic:(id)topic participantID:(unint64_t)d;
- (void)startMessaging;
- (void)stopMessaging;
@end

@implementation VCSessionMessaging

- (VCSessionMessaging)initWithControlChannel:(id)channel remoteVersion:(id)version
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionMessaging;
  v5 = [(VCSessionMessaging *)&v7 init:channel];
  if (v5)
  {
    v5->topics = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v5->participants = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_storeWeak(&v5->controlChannelWeak, channel);
    [channel setMessageReceivedDelegate:v5];
  }

  return v5;
}

- (void)addParticipant:(id)participant controlChannelProtocolVersion:(int)version
{
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&version];
  participants = self->participants;

  [(NSMutableDictionary *)participants setObject:v6 forKeyedSubscript:participant];
}

- (void)startMessaging
{
  v4[5] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__VCSessionMessaging_startMessaging__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(global_queue, v4);
}

void __36__VCSessionMessaging_startMessaging__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [objc_loadWeak((*(a1 + 32) + 16)) setMessageReceivedDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*(a1 + 32) + 8) objectEnumerator];
  while (1)
  {
    v5 = [v4 nextObject];
    if (!v5)
    {
      break;
    }

    [v5 setIsSendingEnabled:1];
  }

  objc_sync_exit(v3);

  objc_autoreleasePoolPop(v2);
}

- (void)stopMessaging
{
  v3 = objc_autoreleasePoolPush();
  [objc_loadWeak(&self->controlChannelWeak) setMessageReceivedDelegate:0];
  objc_sync_enter(self);
  objectEnumerator = [(NSMutableDictionary *)self->topics objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    [nextObject setIsSendingEnabled:0];
  }

  self->topics = 0;
  objc_sync_exit(self);

  objc_autoreleasePoolPop(v3);
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSessionMessaging dealloc]";
      v10 = 1024;
      v11 = 77;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessaging dealloc", buf, 0x1Cu);
    }
  }

  objc_storeWeak(&self->controlChannelWeak, 0);
  v5.receiver = self;
  v5.super_class = VCSessionMessaging;
  [(VCSessionMessaging *)&v5 dealloc];
}

- (void)addTopic:(id)topic associatedStrings:(id)strings allowConcurrent:(BOOL)concurrent requireReliable:(BOOL)reliable sendMessageDictionaryCompletionHandler:(id)handler receiveMessageDictionaryHandler:(id)dictionaryHandler
{
  v11[7] = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __152__VCSessionMessaging_addTopic_associatedStrings_allowConcurrent_requireReliable_sendMessageDictionaryCompletionHandler_receiveMessageDictionaryHandler___block_invoke;
    v11[3] = &unk_1E85F96E8;
    v11[4] = self;
    v11[5] = topic;
    v11[6] = handler;
  }

  else
  {
    v9 = 0;
  }

  v10 = [[VCSessionMessageTopic alloc] initWithTopicKey:topic strings:strings allowConcurrent:concurrent requireReliable:reliable controlChannel:objc_loadWeak(&self->controlChannelWeak) sendMessageDataCompletionHandler:v9 receiveMessageDictionaryHandler:dictionaryHandler];
  objc_sync_enter(self);
  [(NSMutableDictionary *)self->topics setObject:v10 forKeyedSubscript:[(VCSessionMessageTopic *)v10 topicKey]];
  objc_sync_exit(self);
}

void __152__VCSessionMessaging_addTopic_associatedStrings_allowConcurrent_requireReliable_sendMessageDictionaryCompletionHandler_receiveMessageDictionaryHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([*(*(a1 + 32) + 24) objectForKeyedSubscript:a4])
  {
    v7 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKeyedSubscript:{a4), "intValue"}];
  }

  else
  {
    v7 = 1;
  }

  v8 = [*(a1 + 32) newDictionaryFromUnpackedMessage:a2 forTopic:*(a1 + 40) controlChannelVersion:v7];
  (*(*(a1 + 48) + 16))();
}

- (void)addTopic:(id)topic associatedStrings:(id)strings allowConcurrent:(BOOL)concurrent sendCompletionHandler:(id)handler receiveHandler:(id)receiveHandler
{
  v8 = [[VCSessionMessageTopic alloc] initWithTopicKey:topic strings:strings allowConcurrent:concurrent controlChannel:objc_loadWeak(&self->controlChannelWeak) sendCompletionHandler:handler receiveHandler:receiveHandler];
  objc_sync_enter(self);
  [(NSMutableDictionary *)self->topics setObject:v8 forKeyedSubscript:[(VCSessionMessageTopic *)v8 topicKey]];
  objc_sync_exit(self);
}

- (void)sendMessage:(id)message withTopic:(id)topic
{
  v22 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v7 = [(NSMutableDictionary *)self->topics objectForKeyedSubscript:topic];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCSessionMessaging sendMessage:withTopic:]";
      v14 = 1024;
      v15 = 166;
      v16 = 2112;
      messageCopy = message;
      v18 = 2112;
      topicCopy = topic;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessaging: sendMessage:%@, %@, %@", &v10, 0x3Au);
    }
  }

  [v7 sendMessage:message];
  objc_sync_exit(self);
}

- (void)sendMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d
{
  v26 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v9 = [(NSMutableDictionary *)self->topics objectForKeyedSubscript:topic];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316674;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCSessionMessaging sendMessage:withTopic:participantID:]";
      v16 = 1024;
      v17 = 176;
      v18 = 2112;
      messageCopy = message;
      v20 = 2048;
      dCopy = d;
      v22 = 2112;
      topicCopy = topic;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessaging: sendMessage:%@ for participantID:%llu, %@, %@", &v12, 0x44u);
    }
  }

  [v9 sendMessage:message participantID:d];
  objc_sync_exit(self);
}

- (void)sendMessageDictionary:(id)dictionary withTopic:(id)topic participantID:(unint64_t)d
{
  v28 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v9 = [(NSMutableDictionary *)self->topics objectForKeyedSubscript:topic];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316674;
      v15 = v10;
      v16 = 2080;
      v17 = "[VCSessionMessaging sendMessageDictionary:withTopic:participantID:]";
      v18 = 1024;
      v19 = 186;
      v20 = 2112;
      dictionaryCopy = dictionary;
      v22 = 2048;
      dCopy = d;
      v24 = 2112;
      topicCopy = topic;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessaging: sendMessageDictionary=%@ for participantID=%llu, topicKey=%@, topic=%@", &v14, 0x44u);
    }
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->participants, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d]))
  {
    v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->participants objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", d)), "intValue"}];
  }

  else
  {
    v12 = 1;
  }

  v13 = [(VCSessionMessaging *)self newPackedMessageFromDictionary:dictionary forTopic:topic controlChannelVersion:v12];
  [v9 sendMessage:v13 participantID:d];

  objc_sync_exit(self);
}

- (BOOL)sendReliableMessage:(id)message withTopic:(id)topic participantID:(unint64_t)d withOptions:(id)options completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v13 = [(NSMutableDictionary *)self->topics objectForKeyedSubscript:topic];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCSessionMessaging sendReliableMessage:withTopic:participantID:withOptions:completion:]";
      v23 = 1024;
      v24 = 204;
      v25 = 2112;
      messageCopy = message;
      v27 = 2048;
      dCopy = d;
      v29 = 2112;
      topicCopy = topic;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSessionMessaging: sendMessage=%@ for participantID=%llu, topicKey=%@, topic=%@", buf, 0x44u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__VCSessionMessaging_sendReliableMessage_withTopic_participantID_withOptions_completion___block_invoke;
  v18[3] = &unk_1E85F9710;
  v18[4] = completion;
  v16 = [v13 sendReliableMessage:message participantID:d withOptions:options completion:v18];
  objc_sync_exit(self);
  return v16;
}

- (id)newPackedMessageFromDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return 0;
  }

  allKeys = [dictionary allKeys];
  if ([allKeys count] && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v5 = objc_msgSend(allKeys, "countByEnumeratingWithState:objects:count:", &v17, v16, 16)) != 0))
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [dictionary objectForKeyedSubscript:v10];
        if (v10)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          if (v7)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@=%@:", v7, v10, v11];
          }

          else
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@:", v10, v11, v15];
          }

          v7 = v13;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newDictionaryFromUnpackedMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    return 0;
  }

  v3 = [message componentsSeparatedByString:@":"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v19;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      v10 = [v9 rangeOfCharacterFromSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"="}];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16[1] = [v9 substringFromIndex:{v10 + 1, objc_msgSend(v9, "substringToIndex:", v10)}];
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        if (v12)
        {
          v14 = v13;
          if (v13)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v6 setObject:v14 forKeyedSubscript:v12];
          }
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
  }

  while (v5);
  return v6;
}

- (id)newPackedMessageFromMomentsDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return 0;
  }

  allKeys = [dictionary allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [dictionary objectForKeyedSubscript:v10];
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = v11;
        if (!v7)
        {
          v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
        }

        [v7 appendFormat:@"%@=%@?", v10, v13];
      }
    }

    v6 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

- (id)newDictionaryFromUnpackedMomentsMessage:(id)message
{
  v18 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    return 0;
  }

  v3 = [message componentsSeparatedByString:@"?"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v15;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v14 + 1) + 8 * i) componentsSeparatedByString:@"="];
      if ([v9 count] >= 2)
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = [v9 objectAtIndexedSubscript:1];
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v6 setObject:v11 forKeyedSubscript:v10];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v5);
  return v6;
}

- (id)newPackedMessageFromDictionaryV2:(id)v2
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    [VCSessionMessaging newPackedMessageFromDictionaryV2:v7];
LABEL_8:
    v4 = v7[0];
    return v4;
  }

  if (([MEMORY[0x1E696AE40] propertyList:v2 isValidForFormat:200] & 1) == 0)
  {
    [(VCSessionMessaging *)v2 newPackedMessageFromDictionaryV2:v7];
    goto LABEL_8;
  }

  v6 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v6];
  if (!v4)
  {
    [(VCSessionMessaging *)v2 newPackedMessageFromDictionaryV2:v7];
    goto LABEL_8;
  }

  return v4;
}

- (id)newDictionaryFromUnpackedMessageV2:(id)v2
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (!v2)
  {
    [VCSessionMessaging newDictionaryFromUnpackedMessageV2:v9];
LABEL_8:
    v5 = v9[0];
    return v5;
  }

  v7 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:&v8 error:&v7];
  if (!v4)
  {
    [(VCSessionMessaging *)v2 newDictionaryFromUnpackedMessageV2:v9];
    goto LABEL_8;
  }

  v5 = v4;
  if (v8 != 200)
  {
    [(VCSessionMessaging *)&v8 newDictionaryFromUnpackedMessageV2:v2, v4, v9];
    goto LABEL_8;
  }

  return v5;
}

- (id)newPackedMessageFromDictionary:(id)dictionary forTopic:(id)topic controlChannelVersion:(int)version
{
  if (version == 2)
  {

    return [(VCSessionMessaging *)self newPackedMessageFromDictionaryV2:dictionary, topic];
  }

  else if (version == 1)
  {
    if ([topic isEqualToString:@"VCSessionMomentsStateMessageTopic"])
    {

      return [(VCSessionMessaging *)self newPackedMessageFromMomentsDictionary:dictionary];
    }

    else
    {

      return [(VCSessionMessaging *)self newPackedMessageFromDictionary:dictionary];
    }
  }

  else
  {
    return 0;
  }
}

- (id)newDictionaryFromUnpackedMessage:(id)message forTopic:(id)topic controlChannelVersion:(int)version
{
  if (version == 2)
  {

    return [(VCSessionMessaging *)self newDictionaryFromUnpackedMessageV2:message, topic];
  }

  else if (version == 1)
  {
    if ([topic isEqualToString:@"VCSessionMomentsStateMessageTopic"])
    {

      return [(VCSessionMessaging *)self newDictionaryFromUnpackedMomentsMessage:message];
    }

    else
    {

      return [(VCSessionMessaging *)self newDictionaryFromUnpackedMessage:message];
    }
  }

  else
  {
    return 0;
  }
}

- (void)searchMatchingTopic:(id)topic payload:(id)payload transactionID:(unsigned int)d fromParticipant:(id)participant
{
  v7 = *&d;
  v34 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (topic)
  {
    topic = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", topic];
  }

  else
  {
    topic = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v23 = v10;
      v24 = 2080;
      v25 = "[VCSessionMessaging searchMatchingTopic:payload:transactionID:fromParticipant:]";
      v26 = 1024;
      v27 = 388;
      v28 = 2112;
      v29 = topic;
      v30 = 2112;
      payloadCopy = payload;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCControlChannelDelegate receivedMessage callback with message '%@%@'", buf, 0x30u);
    }
  }

  objectEnumerator = [(NSMutableDictionary *)self->topics objectEnumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          topicKey = [nextObject topicKey];
          *buf = 136316418;
          v23 = v15;
          v24 = 2080;
          v25 = "[VCSessionMessaging searchMatchingTopic:payload:transactionID:fromParticipant:]";
          v26 = 1024;
          v27 = 393;
          v28 = 2112;
          v29 = topicKey;
          v30 = 2112;
          payloadCopy = topic;
          v32 = 2112;
          payloadCopy3 = payload;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Is topic '%@' assisiated with incoming message '%@%@' block...", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        topicKey2 = [nextObject topicKey];
        *buf = 136316418;
        v23 = v15;
        v24 = 2080;
        v25 = "[VCSessionMessaging searchMatchingTopic:payload:transactionID:fromParticipant:]";
        v26 = 1024;
        v27 = 393;
        v28 = 2112;
        v29 = topicKey2;
        v30 = 2112;
        payloadCopy = topic;
        v32 = 2112;
        payloadCopy3 = payload;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Is topic '%@' assisiated with incoming message '%@%@' block...", buf, 0x3Au);
      }
    }

    if (([objc_msgSend(nextObject "topicKey")] & 1) != 0 || (isKindOfClass & 1) != 0 && objc_msgSend(nextObject, "isPayloadAssociated:", payload))
    {
      [nextObject passMessage:payload sequence:v7 fromParticipant:participant];
    }
  }

  objc_sync_exit(self);
}

- (id)allocMessageFromPayload:(id)payload forTopic:(id)topic participantID:(id)d
{
  if ([(NSMutableDictionary *)self->participants objectForKeyedSubscript:d])
  {
    v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->participants objectForKeyedSubscript:{d), "intValue"}];
  }

  else
  {
    v9 = 1;
  }

  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->topics objectForKeyedSubscript:{topic), "expectedMessageType"}] == 1)
  {
    if (v9 == 1)
    {
      if (!payload)
      {
LABEL_12:
        v11 = [(VCSessionMessaging *)self newDictionaryFromUnpackedMessage:payload forTopic:topic controlChannelVersion:v9];
        goto LABEL_14;
      }

      payloadCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:payload encoding:4];
    }

    else
    {
      payloadCopy = payload;
    }

    payload = payloadCopy;
    goto LABEL_12;
  }

  if (payload)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:payload encoding:4];
    payload = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)controlChannel:(id)channel topic:(id)topic payload:(id)payload transactionID:(unsigned int)d fromParticipant:(id)participant
{
  v8 = *&d;
  v11 = [(VCSessionMessaging *)self allocMessageFromPayload:payload forTopic:topic participantID:participant];
  if (topic | v11)
  {
    [(VCSessionMessaging *)self searchMatchingTopic:topic payload:v11 transactionID:v8 fromParticipant:participant];
  }

  else
  {
    [VCSessionMessaging controlChannel:topic:payload:transactionID:fromParticipant:];
  }
}

- (void)controlChannel:(id)channel sendReliableMessage:(id)message didSucceed:(BOOL)succeed toParticipant:(id)participant
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCSessionMessaging controlChannel:sendReliableMessage:didSucceed:toParticipant:]";
      v12 = 1024;
      v13 = 443;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCControlChannelDelegate sendReliableMessage callback...", &v8, 0x1Cu);
    }
  }
}

- (void)controlChannel:(id)channel clearTransactionCacheForParticipant:(id)participant
{
  v16 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCSessionMessaging controlChannel:clearTransactionCacheForParticipant:]";
      v14 = 1024;
      v15 = 448;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCControlChannelDelegate clearParticipantTransactionCacheForParticipant callback...", &v10, 0x1Cu);
    }
  }

  objectEnumerator = [(NSMutableDictionary *)self->topics objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    [nextObject clearTransactionCacheForParticipant:participant];
  }

  objc_sync_exit(self);
}

- (void)newPackedMessageFromDictionaryV2:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = 0;
}

- (void)newPackedMessageFromDictionaryV2:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

- (void)newPackedMessageFromDictionaryV2:(void *)a1 .cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d newPackedMessageFromDictionaryV2 tuples must not be nil", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

- (void)newDictionaryFromUnpackedMessageV2:(uint64_t)a3 .cold.1(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCSessionMessaging newDictionaryFromUnpackedMessageV2:]";
      v15 = 1024;
      v16 = 332;
      v17 = 2048;
      v18 = v10;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d newDictionaryFromUnpackedMessageV2 unexpected format=%lu received from message=%@", &v11, 0x30u);
    }
  }

  *a4 = a3;
}

- (void)newDictionaryFromUnpackedMessageV2:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

- (void)newDictionaryFromUnpackedMessageV2:(void *)a1 .cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d newDictionaryFromUnpackedMessageV2 message must not be nil", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

- (void)controlChannel:topic:payload:transactionID:fromParticipant:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 433;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Topic and payload can not be both nil", &v2, 0x1Cu);
    }
  }
}

@end