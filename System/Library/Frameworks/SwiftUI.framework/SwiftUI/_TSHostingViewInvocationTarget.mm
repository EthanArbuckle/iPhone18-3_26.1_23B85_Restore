@interface _TSHostingViewInvocationTarget
- (_TSHostingViewInvocationTarget)initWithHandler:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _TSHostingViewInvocationTarget

- (_TSHostingViewInvocationTarget)initWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  handler = self->_handler;
  self->_handler = v4;

  return self;
}

- (void)forwardInvocation:(id)a3
{
  handler = self->_handler;
  v4 = [a3 selector];
  v5 = handler[2];

  v5(handler, v4);
}

@end