@interface _TSHostingViewInvocationTarget
- (_TSHostingViewInvocationTarget)initWithHandler:(id)handler;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _TSHostingViewInvocationTarget

- (_TSHostingViewInvocationTarget)initWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  handler = self->_handler;
  self->_handler = v4;

  return self;
}

- (void)forwardInvocation:(id)invocation
{
  handler = self->_handler;
  selector = [invocation selector];
  v5 = handler[2];

  v5(handler, selector);
}

@end