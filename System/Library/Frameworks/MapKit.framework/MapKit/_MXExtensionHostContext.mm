@interface _MXExtensionHostContext
- (_MXExtensionURLHandling)URLHandlingDelegate;
- (void)openURL:(id)a3 completionHandler:(id)a4;
@end

@implementation _MXExtensionHostContext

- (_MXExtensionURLHandling)URLHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_URLHandlingDelegate);

  return WeakRetained;
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MXExtensionHostContext *)self URLHandlingDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53___MXExtensionHostContext_openURL_completionHandler___block_invoke;
  v10[3] = &unk_1E76C9DD8;
  v11 = v6;
  v9 = v6;
  [v8 openURL:v7 completionHandler:v10];
}

@end