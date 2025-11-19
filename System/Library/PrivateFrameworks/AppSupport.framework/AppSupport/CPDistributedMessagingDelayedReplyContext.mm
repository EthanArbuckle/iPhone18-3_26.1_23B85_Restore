@interface CPDistributedMessagingDelayedReplyContext
- (CPDistributedMessagingDelayedReplyContext)initWithReplyPort:(unsigned int)a3 portPassing:(BOOL)a4;
- (void)dealloc;
@end

@implementation CPDistributedMessagingDelayedReplyContext

- (CPDistributedMessagingDelayedReplyContext)initWithReplyPort:(unsigned int)a3 portPassing:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CPDistributedMessagingDelayedReplyContext;
  result = [(CPDistributedMessagingDelayedReplyContext *)&v7 init];
  if (result)
  {
    result->_replyPort = a3;
    result->_portPassing = a4;
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