@interface _BEWKUserContentControllerScriptMessageHandlerProxy
- (WKScriptMessageHandler)handler;
- (_BEWKUserContentControllerScriptMessageHandlerProxy)initWithHandler:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation _BEWKUserContentControllerScriptMessageHandlerProxy

- (_BEWKUserContentControllerScriptMessageHandlerProxy)initWithHandler:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _BEWKUserContentControllerScriptMessageHandlerProxy;
  v5 = [(_BEWKUserContentControllerScriptMessageHandlerProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handler, v4);
  }

  return v6;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_BEWKUserContentControllerScriptMessageHandlerProxy *)self handler];
  [v8 userContentController:v7 didReceiveScriptMessage:v6];
}

- (WKScriptMessageHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end