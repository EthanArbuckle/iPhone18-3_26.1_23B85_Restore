@interface GroupMessageContext
- (GroupMessageContext)initWithGroupPayload:(id)payload additionalPayload:(id)additionalPayload isGroupChat:(BOOL)chat;
@end

@implementation GroupMessageContext

- (GroupMessageContext)initWithGroupPayload:(id)payload additionalPayload:(id)additionalPayload isGroupChat:(BOOL)chat
{
  payloadCopy = payload;
  additionalPayloadCopy = additionalPayload;
  v15.receiver = self;
  v15.super_class = GroupMessageContext;
  v10 = [(GroupMessageContext *)&v15 init];
  groupPayload = v10->_groupPayload;
  v10->_groupPayload = payloadCopy;
  v12 = payloadCopy;

  additionalPayload = v10->_additionalPayload;
  v10->_additionalPayload = additionalPayloadCopy;

  v10->_groupChat = chat;
  return v10;
}

@end