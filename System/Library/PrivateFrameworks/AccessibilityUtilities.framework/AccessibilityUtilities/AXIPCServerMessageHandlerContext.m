@interface AXIPCServerMessageHandlerContext
- (AXIPCServerMessageHandlerContext)initWithHandler:(id)a3;
- (AXIPCServerMessageHandlerContext)initWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5;
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

- (AXIPCServerMessageHandlerContext)initWithHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AXIPCServerMessageHandlerContext;
  v5 = [(AXIPCServerMessageHandlerContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
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

- (AXIPCServerMessageHandlerContext)initWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = AXIPCServerMessageHandlerContext;
  v9 = [(AXIPCServerMessageHandlerContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (v8 && a4)
    {
      objc_storeWeak(&v9->_target, v8);
      v10->_selector = a4;
      v10->_async = a5;
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

@end