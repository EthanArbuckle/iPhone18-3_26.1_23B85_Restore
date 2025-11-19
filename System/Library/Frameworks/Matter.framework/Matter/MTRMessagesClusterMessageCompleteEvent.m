@interface MTRMessagesClusterMessageCompleteEvent
- (MTRMessagesClusterMessageCompleteEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRMessagesClusterMessageCompleteEvent

- (MTRMessagesClusterMessageCompleteEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRMessagesClusterMessageCompleteEvent;
  v2 = [(MTRMessagesClusterMessageCompleteEvent *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    messageID = v2->_messageID;
    v2->_messageID = v3;

    responseID = v2->_responseID;
    v2->_responseID = 0;

    reply = v2->_reply;
    v2->_reply = 0;

    futureMessagesPreference = v2->_futureMessagesPreference;
    v2->_futureMessagesPreference = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMessagesClusterMessageCompleteEvent);
  v5 = [(MTRMessagesClusterMessageCompleteEvent *)self messageID];
  [(MTRMessagesClusterMessageCompleteEvent *)v4 setMessageID:v5];

  v6 = [(MTRMessagesClusterMessageCompleteEvent *)self responseID];
  [(MTRMessagesClusterMessageCompleteEvent *)v4 setResponseID:v6];

  v7 = [(MTRMessagesClusterMessageCompleteEvent *)self reply];
  [(MTRMessagesClusterMessageCompleteEvent *)v4 setReply:v7];

  v8 = [(MTRMessagesClusterMessageCompleteEvent *)self futureMessagesPreference];
  [(MTRMessagesClusterMessageCompleteEvent *)v4 setFutureMessagesPreference:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_messageID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: messageID:%@ responseID:%@; reply:%@; futureMessagesPreference:%@; >", v5, v6, self->_responseID, self->_reply, self->_futureMessagesPreference];;

  return v7;
}

@end