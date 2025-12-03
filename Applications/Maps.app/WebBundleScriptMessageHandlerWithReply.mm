@interface WebBundleScriptMessageHandlerWithReply
- (WebBundleScriptMessageHandlerWithReply)initWithDelegate:(id)delegate;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler;
@end

@implementation WebBundleScriptMessageHandlerWithReply

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  body = [message body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = body;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveMessageFromUserContentController:controllerCopy message:v12 replyHandler:handlerCopy];
  }

  else
  {
    WeakRetained = sub_100038318();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Incorrect message from web module: %@", &v14, 0xCu);
    }
  }
}

- (WebBundleScriptMessageHandlerWithReply)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = WebBundleScriptMessageHandlerWithReply;
  v5 = [(WebBundleScriptMessageHandlerWithReply *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end