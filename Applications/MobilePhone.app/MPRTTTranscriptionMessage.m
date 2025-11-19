@interface MPRTTTranscriptionMessage
- (MPRTTTranscriptionMessage)initWithCallUUID:(id)a3;
- (NSAttributedString)attributedText;
- (NSString)text;
- (id)makeTranscriptMessage;
- (void)fetchRTTConversationForCallUUID:(id)a3;
@end

@implementation MPRTTTranscriptionMessage

- (MPRTTTranscriptionMessage)initWithCallUUID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MPRTTTranscriptionMessage;
  v5 = [(MPRTTTranscriptionMessage *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.mobilephone.rttConversations", v6);
    rttConversationsQueue = v5->_rttConversationsQueue;
    v5->_rttConversationsQueue = v7;

    [(MPRTTTranscriptionMessage *)v5 fetchRTTConversationForCallUUID:v4];
  }

  return v5;
}

- (void)fetchRTTConversationForCallUUID:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchRTTConversationForCallUUID", buf, 2u);
  }

  v6 = RTTUIUtilitiesClass();
  if (v6)
  {
    v7 = v6;
    objc_initWeak(buf, self);
    rttConversationsQueue = self->_rttConversationsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61__MPRTTTranscriptionMessage_fetchRTTConversationForCallUUID___block_invoke;
    block[3] = &unk_1002867B8;
    objc_copyWeak(v12, buf);
    v12[1] = v7;
    v11 = v4;
    dispatch_async(rttConversationsQueue, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because we could not find RTTUIUtilities", buf, 2u);
    }
  }
}

void __61__MPRTTTranscriptionMessage_fetchRTTConversationForCallUUID___block_invoke(id *a1)
{
  objc_copyWeak(&to, a1 + 5);
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    v3 = [a1[6] sharedUtilityProvider];
    v4 = [a1[4] UUIDString];
    v5 = [v3 conversationForCallUID:v4];

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __61__MPRTTTranscriptionMessage_fetchRTTConversationForCallUUID___block_invoke_59;
      block[3] = &unk_100285C30;
      objc_copyWeak(&v9, a1 + 5);
      v5 = v5;
      v7 = v5;
      v8 = a1[4];
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v9);
    }
  }

  else
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated before starting", buf, 2u);
    }
  }

  objc_destroyWeak(&to);
}

void __61__MPRTTTranscriptionMessage_fetchRTTConversationForCallUUID___block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConversation:*(a1 + 32)];
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished fetchRTTConversationForCallUUID", v8, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"MPVoicemailRTTTranscriptDidLoadCallIDKey";
    v6 = [*(a1 + 40) UUIDString];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"MPVoicemailRTTTranscriptDidLoadNotification" object:0 userInfo:v7];
  }

  else
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated when trying to write conversation", v8, 2u);
    }
  }
}

- (id)makeTranscriptMessage
{
  if (self->_conversation)
  {
    v3 = +[NSMutableString string];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(RTTConversation *)self->_conversation utterances];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if (([v9 isMe] & 1) == 0)
          {
            v10 = [v9 text];
            if ([v9 isTranscription])
            {
              v11 = ttyLocString();
              v12 = [NSString stringWithFormat:v11, &stru_10028F310];

              v13 = [v10 stringByReplacingOccurrencesOfString:v12 withString:&stru_10028F310];

              v10 = v13;
            }

            if ([(__CFString *)v3 length])
            {
              [(__CFString *)v3 appendString:@" "];
            }

            [(__CFString *)v3 appendString:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = &stru_10028F310;
  }

  return v3;
}

- (NSAttributedString)attributedText
{
  v2 = self;
  v3 = [(MPRTTTranscriptionMessage *)v2 text];
  v4 = [objc_allocWithZone(NSAttributedString) initWithString:v3];

  return v4;
}

- (NSString)text
{
  v2 = self;
  v3 = [(MPRTTTranscriptionMessage *)v2 makeTranscriptMessage];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  return v3;
}

@end