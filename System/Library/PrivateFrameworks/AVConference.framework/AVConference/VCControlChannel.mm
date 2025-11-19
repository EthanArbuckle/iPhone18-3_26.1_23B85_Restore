@interface VCControlChannel
- (VCControlChannel)init;
- (void)dealloc;
@end

@implementation VCControlChannel

- (VCControlChannel)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCControlChannel;
  v2 = [(VCObject *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v2->_asyncProcessingQueue = dispatch_queue_create("com.apple.AVConference.VCControlChannel.AsyncProcessingQueue", v3);
    v2->_reliableMessageResendInterval = 9;
    v2->_optionalTopics = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  objc_storeWeak(&self->_messageReceivedDelegate, 0);
  objc_storeWeak(&self->_dataReceivedDelegate, 0);
  asyncProcessingQueue = self->_asyncProcessingQueue;
  if (asyncProcessingQueue)
  {
    dispatch_release(asyncProcessingQueue);
  }

  v4.receiver = self;
  v4.super_class = VCControlChannel;
  [(VCObject *)&v4 dealloc];
}

@end