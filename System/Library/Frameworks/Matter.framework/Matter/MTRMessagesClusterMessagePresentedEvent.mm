@interface MTRMessagesClusterMessagePresentedEvent
- (MTRMessagesClusterMessagePresentedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMessagesClusterMessagePresentedEvent

- (MTRMessagesClusterMessagePresentedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRMessagesClusterMessagePresentedEvent;
  v2 = [(MTRMessagesClusterMessagePresentedEvent *)&v6 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    messageID = v2->_messageID;
    v2->_messageID = data;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMessagesClusterMessagePresentedEvent);
  messageID = [(MTRMessagesClusterMessagePresentedEvent *)self messageID];
  [(MTRMessagesClusterMessagePresentedEvent *)v4 setMessageID:messageID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_messageID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: messageID:%@ >", v5, v6];;

  return v7;
}

@end