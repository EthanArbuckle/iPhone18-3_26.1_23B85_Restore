@interface MPRTTTranscriptionMessage
- (MPRTTTranscriptionMessage)initWithCallUUID:(id)d;
- (NSAttributedString)attributedText;
- (id)makeTranscriptMessage;
- (void)fetchRTTConversationForCallUUID:(id)d;
@end

@implementation MPRTTTranscriptionMessage

- (MPRTTTranscriptionMessage)initWithCallUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MPRTTTranscriptionMessage;
  v5 = [(MPRTTTranscriptionMessage *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.mobilephone.rttConversations", v6);
    rttConversationsQueue = v5->_rttConversationsQueue;
    v5->_rttConversationsQueue = v7;

    [(MPRTTTranscriptionMessage *)v5 fetchRTTConversationForCallUUID:dCopy];
  }

  return v5;
}

- (void)fetchRTTConversationForCallUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting fetchRTTConversationForCallUUID", buf, 2u);
  }

  v6 = sub_10001A58C();
  if (v6)
  {
    v7 = v6;
    objc_initWeak(buf, self);
    rttConversationsQueue = self->_rttConversationsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C9B6C;
    block[3] = &unk_100358F38;
    objc_copyWeak(v12, buf);
    v12[1] = v7;
    v11 = dCopy;
    dispatch_async(rttConversationsQueue, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because we could not find RTTUIUtilities", buf, 2u);
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
    utterances = [(RTTConversation *)self->_conversation utterances];
    v5 = [utterances countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(utterances);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if (([v9 isMe] & 1) == 0)
          {
            text = [v9 text];
            if ([v9 isTranscription])
            {
              v11 = ttyLocString();
              v12 = [NSString stringWithFormat:v11, &stru_100361FD0];

              v13 = [text stringByReplacingOccurrencesOfString:v12 withString:&stru_100361FD0];

              text = v13;
            }

            if ([(__CFString *)v3 length])
            {
              [(__CFString *)v3 appendString:@" "];
            }

            [(__CFString *)v3 appendString:text];
          }
        }

        v6 = [utterances countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = &stru_100361FD0;
  }

  return v3;
}

- (NSAttributedString)attributedText
{
  selfCopy = self;
  v3 = sub_1001B9A84();

  return v3;
}

@end