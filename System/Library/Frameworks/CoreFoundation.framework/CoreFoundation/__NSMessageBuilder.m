@interface __NSMessageBuilder
- (void)forwardInvocation:(id)a3;
@end

@implementation __NSMessageBuilder

- (void)forwardInvocation:(id)a3
{
  [a3 setTarget:self->_target];
  if (self->_addr)
  {
    *self->_addr = a3;
  }
}

@end