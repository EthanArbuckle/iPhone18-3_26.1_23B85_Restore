@interface AXIPCServerMessageHandlerContext
- (AXIPCServerMessageHandlerContext)initWithHandler:(id)handler;
- (AXIPCServerMessageHandlerContext)initWithTarget:(id)target selector:(SEL)selector async:(BOOL)async;
- (SEL)selector;
- (id)target;
@end

@implementation AXIPCServerMessageHandlerContext

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (AXIPCServerMessageHandlerContext)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = AXIPCServerMessageHandlerContext;
  v5 = [(AXIPCServerMessageHandlerContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (handlerCopy)
    {
      v7 = [handlerCopy copy];
      handler = v6->_handler;
      v6->_handler = v7;
    }

    else
    {
      handler = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (AXIPCServerMessageHandlerContext)initWithTarget:(id)target selector:(SEL)selector async:(BOOL)async
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = AXIPCServerMessageHandlerContext;
  v9 = [(AXIPCServerMessageHandlerContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (targetCopy && selector)
    {
      objc_storeWeak(&v9->_target, targetCopy);
      v10->_selector = selector;
      v10->_async = async;
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

@end