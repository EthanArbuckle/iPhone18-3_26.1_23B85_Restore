@interface AXIPCDelayedMessage
- (AXIPCDelayedMessage)initWithMessage:(id)a3 completion:(id)a4;
@end

@implementation AXIPCDelayedMessage

- (AXIPCDelayedMessage)initWithMessage:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXIPCDelayedMessage;
  v9 = [(AXIPCDelayedMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    v11 = [v8 copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end