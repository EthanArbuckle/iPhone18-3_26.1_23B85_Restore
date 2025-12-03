@interface _BEWKUserContentControllerScriptMessageHandlerProxy
- (WKScriptMessageHandler)handler;
- (_BEWKUserContentControllerScriptMessageHandlerProxy)initWithHandler:(id)handler;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation _BEWKUserContentControllerScriptMessageHandlerProxy

- (_BEWKUserContentControllerScriptMessageHandlerProxy)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = _BEWKUserContentControllerScriptMessageHandlerProxy;
  v5 = [(_BEWKUserContentControllerScriptMessageHandlerProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handler, handlerCopy);
  }

  return v6;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  controllerCopy = controller;
  handler = [(_BEWKUserContentControllerScriptMessageHandlerProxy *)self handler];
  [handler userContentController:controllerCopy didReceiveScriptMessage:messageCopy];
}

- (WKScriptMessageHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end