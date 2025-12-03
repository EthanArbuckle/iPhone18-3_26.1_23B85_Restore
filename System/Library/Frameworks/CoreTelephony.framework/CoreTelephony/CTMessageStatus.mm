@interface CTMessageStatus
- (CTMessageStatus)initWithMessageId:(unsigned int)id messageType:(int)type result:(int)result;
@end

@implementation CTMessageStatus

- (CTMessageStatus)initWithMessageId:(unsigned int)id messageType:(int)type result:(int)result
{
  v9.receiver = self;
  v9.super_class = CTMessageStatus;
  result = [(CTMessageStatus *)&v9 init];
  if (result)
  {
    result->_messageId = id;
    result->_messageType = type;
    result->_result = result;
  }

  return result;
}

@end