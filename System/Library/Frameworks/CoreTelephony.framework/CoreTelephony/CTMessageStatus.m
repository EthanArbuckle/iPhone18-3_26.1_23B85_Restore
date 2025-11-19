@interface CTMessageStatus
- (CTMessageStatus)initWithMessageId:(unsigned int)a3 messageType:(int)a4 result:(int)a5;
@end

@implementation CTMessageStatus

- (CTMessageStatus)initWithMessageId:(unsigned int)a3 messageType:(int)a4 result:(int)a5
{
  v9.receiver = self;
  v9.super_class = CTMessageStatus;
  result = [(CTMessageStatus *)&v9 init];
  if (result)
  {
    result->_messageId = a3;
    result->_messageType = a4;
    result->_result = a5;
  }

  return result;
}

@end