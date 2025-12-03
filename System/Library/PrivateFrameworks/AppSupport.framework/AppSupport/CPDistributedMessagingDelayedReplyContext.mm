@interface CPDistributedMessagingDelayedReplyContext
- (CPDistributedMessagingDelayedReplyContext)initWithReplyPort:(unsigned int)port portPassing:(BOOL)passing;
- (void)dealloc;
@end

@implementation CPDistributedMessagingDelayedReplyContext

- (CPDistributedMessagingDelayedReplyContext)initWithReplyPort:(unsigned int)port portPassing:(BOOL)passing
{
  v7.receiver = self;
  v7.super_class = CPDistributedMessagingDelayedReplyContext;
  result = [(CPDistributedMessagingDelayedReplyContext *)&v7 init];
  if (result)
  {
    result->_replyPort = port;
    result->_portPassing = passing;
  }

  return result;
}

- (void)dealloc
{
  replyPort = self->_replyPort;
  if (replyPort + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], replyPort);
  }

  v4.receiver = self;
  v4.super_class = CPDistributedMessagingDelayedReplyContext;
  [(CPDistributedMessagingDelayedReplyContext *)&v4 dealloc];
}

@end