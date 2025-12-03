@interface __NSMessageBuilder
- (void)forwardInvocation:(id)invocation;
@end

@implementation __NSMessageBuilder

- (void)forwardInvocation:(id)invocation
{
  [invocation setTarget:self->_target];
  if (self->_addr)
  {
    *self->_addr = invocation;
  }
}

@end