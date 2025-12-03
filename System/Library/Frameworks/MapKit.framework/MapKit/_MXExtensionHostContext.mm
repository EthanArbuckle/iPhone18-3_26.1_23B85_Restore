@interface _MXExtensionHostContext
- (_MXExtensionURLHandling)URLHandlingDelegate;
- (void)openURL:(id)l completionHandler:(id)handler;
@end

@implementation _MXExtensionHostContext

- (_MXExtensionURLHandling)URLHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_URLHandlingDelegate);

  return WeakRetained;
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  uRLHandlingDelegate = [(_MXExtensionHostContext *)self URLHandlingDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53___MXExtensionHostContext_openURL_completionHandler___block_invoke;
  v10[3] = &unk_1E76C9DD8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [uRLHandlingDelegate openURL:lCopy completionHandler:v10];
}

@end