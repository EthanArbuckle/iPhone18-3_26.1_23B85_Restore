@interface HSTExternalMessageEvent
- (HSTExternalMessageEvent)initWithMessage:(id)message;
@end

@implementation HSTExternalMessageEvent

- (HSTExternalMessageEvent)initWithMessage:(id)message
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = HSTExternalMessageEvent;
  v6 = [(HSTEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
    v8 = v7;
  }

  return v7;
}

@end