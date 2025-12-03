@interface RCDisplayLinkBlockTargetProxy
- (RCDisplayLinkBlockTargetProxy)initWithHandlerBlock:(id)block;
- (void)dealloc;
- (void)displayLinkFired:(id)fired;
@end

@implementation RCDisplayLinkBlockTargetProxy

- (RCDisplayLinkBlockTargetProxy)initWithHandlerBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = RCDisplayLinkBlockTargetProxy;
  result = [(RCDisplayLinkBlockTargetProxy *)&v5 init];
  if (result)
  {
    result->_handlerBlock = block;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RCDisplayLinkBlockTargetProxy;
  [(RCDisplayLinkBlockTargetProxy *)&v3 dealloc];
}

- (void)displayLinkFired:(id)fired
{
  handlerBlock = self->_handlerBlock;
  if (handlerBlock && (handlerBlock[2](handlerBlock, a2) & 1) == 0)
  {

    [fired invalidate];
  }
}

@end