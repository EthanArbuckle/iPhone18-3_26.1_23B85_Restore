@interface AXIPCDelayedMessage
- (AXIPCDelayedMessage)initWithMessage:(id)message completion:(id)completion;
@end

@implementation AXIPCDelayedMessage

- (AXIPCDelayedMessage)initWithMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = AXIPCDelayedMessage;
  v9 = [(AXIPCDelayedMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end