@interface MTRMessagesClusterMessageStruct
- (MTRMessagesClusterMessageStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRMessagesClusterMessageStruct

- (MTRMessagesClusterMessageStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRMessagesClusterMessageStruct;
  v2 = [(MTRMessagesClusterMessageStruct *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    messageID = v2->_messageID;
    v2->_messageID = v3;

    priority = v2->_priority;
    v2->_priority = &unk_284C3E588;

    messageControl = v2->_messageControl;
    v2->_messageControl = &unk_284C3E588;

    startTime = v2->_startTime;
    v2->_startTime = 0;

    duration = v2->_duration;
    v2->_duration = 0;

    messageText = v2->_messageText;
    v2->_messageText = &stru_284BD0DD8;

    responses = v2->_responses;
    v2->_responses = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMessagesClusterMessageStruct);
  v5 = [(MTRMessagesClusterMessageStruct *)self messageID];
  [(MTRMessagesClusterMessageStruct *)v4 setMessageID:v5];

  v6 = [(MTRMessagesClusterMessageStruct *)self priority];
  [(MTRMessagesClusterMessageStruct *)v4 setPriority:v6];

  v7 = [(MTRMessagesClusterMessageStruct *)self messageControl];
  [(MTRMessagesClusterMessageStruct *)v4 setMessageControl:v7];

  v8 = [(MTRMessagesClusterMessageStruct *)self startTime];
  [(MTRMessagesClusterMessageStruct *)v4 setStartTime:v8];

  v9 = [(MTRMessagesClusterMessageStruct *)self duration];
  [(MTRMessagesClusterMessageStruct *)v4 setDuration:v9];

  v10 = [(MTRMessagesClusterMessageStruct *)self messageText];
  [(MTRMessagesClusterMessageStruct *)v4 setMessageText:v10];

  v11 = [(MTRMessagesClusterMessageStruct *)self responses];
  [(MTRMessagesClusterMessageStruct *)v4 setResponses:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_messageID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: messageID:%@ priority:%@; messageControl:%@; startTime:%@; duration:%@; messageText:%@; responses:%@; >", v5, v6, self->_priority, self->_messageControl, self->_startTime, self->_duration, self->_messageText, self->_responses];;

  return v7;
}

@end