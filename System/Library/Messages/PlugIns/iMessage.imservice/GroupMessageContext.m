@interface GroupMessageContext
- (GroupMessageContext)initWithGroupPayload:(id)a3 additionalPayload:(id)a4 isGroupChat:(BOOL)a5;
@end

@implementation GroupMessageContext

- (GroupMessageContext)initWithGroupPayload:(id)a3 additionalPayload:(id)a4 isGroupChat:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = GroupMessageContext;
  v10 = [(GroupMessageContext *)&v15 init];
  groupPayload = v10->_groupPayload;
  v10->_groupPayload = v8;
  v12 = v8;

  additionalPayload = v10->_additionalPayload;
  v10->_additionalPayload = v9;

  v10->_groupChat = a5;
  return v10;
}

@end