@interface QLWKURLSchemeHandlerProxy
- (QLWKURLSchemeHandlerProxy)initWithHandler:(id)handler;
- (WKURLSchemeHandler)handler;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation QLWKURLSchemeHandlerProxy

- (QLWKURLSchemeHandlerProxy)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = QLWKURLSchemeHandlerProxy;
  v5 = [(QLWKURLSchemeHandlerProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(QLWKURLSchemeHandlerProxy *)v5 setHandler:handlerCopy];
  }

  return v6;
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  viewCopy = view;
  handler = [(QLWKURLSchemeHandlerProxy *)self handler];
  [handler webView:viewCopy startURLSchemeTask:taskCopy];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  taskCopy = task;
  viewCopy = view;
  handler = [(QLWKURLSchemeHandlerProxy *)self handler];
  [handler webView:viewCopy stopURLSchemeTask:taskCopy];
}

- (WKURLSchemeHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end