@interface VCXPCServerUser
- (VCXPCServerUser)init;
- (void)dealloc;
@end

@implementation VCXPCServerUser

- (VCXPCServerUser)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCXPCServerUser;
  result = [(VCXPCServerUser *)&v3 init];
  if (result)
  {
    result->_eventLogLevel = 7;
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  queue = self->queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = VCXPCServerUser;
  [(VCXPCServerUser *)&v4 dealloc];
}

@end