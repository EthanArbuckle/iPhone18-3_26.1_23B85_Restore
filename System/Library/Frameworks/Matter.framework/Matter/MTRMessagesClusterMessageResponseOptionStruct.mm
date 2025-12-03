@interface MTRMessagesClusterMessageResponseOptionStruct
- (MTRMessagesClusterMessageResponseOptionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMessagesClusterMessageResponseOptionStruct

- (MTRMessagesClusterMessageResponseOptionStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRMessagesClusterMessageResponseOptionStruct;
  v2 = [(MTRMessagesClusterMessageResponseOptionStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    messageResponseID = v2->_messageResponseID;
    v2->_messageResponseID = 0;

    label = v3->_label;
    v3->_label = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMessagesClusterMessageResponseOptionStruct);
  messageResponseID = [(MTRMessagesClusterMessageResponseOptionStruct *)self messageResponseID];
  [(MTRMessagesClusterMessageResponseOptionStruct *)v4 setMessageResponseID:messageResponseID];

  label = [(MTRMessagesClusterMessageResponseOptionStruct *)self label];
  [(MTRMessagesClusterMessageResponseOptionStruct *)v4 setLabel:label];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: messageResponseID:%@ label:%@; >", v5, self->_messageResponseID, self->_label];;

  return v6;
}

@end