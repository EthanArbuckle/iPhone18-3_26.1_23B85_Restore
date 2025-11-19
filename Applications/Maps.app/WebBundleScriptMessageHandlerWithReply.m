@interface WebBundleScriptMessageHandlerWithReply
- (WebBundleScriptMessageHandlerWithReply)initWithDelegate:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5;
@end

@implementation WebBundleScriptMessageHandlerWithReply

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 body];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveMessageFromUserContentController:v8 message:v12 replyHandler:v9];
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

- (WebBundleScriptMessageHandlerWithReply)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WebBundleScriptMessageHandlerWithReply;
  v5 = [(WebBundleScriptMessageHandlerWithReply *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end