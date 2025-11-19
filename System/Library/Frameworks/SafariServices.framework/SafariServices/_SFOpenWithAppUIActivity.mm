@interface _SFOpenWithAppUIActivity
- (_SFOpenWithAppUIActivity)initWithApplicationIdentifier:(id)a3 andFilePath:(id)a4;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)performActivity;
@end

@implementation _SFOpenWithAppUIActivity

- (_SFOpenWithAppUIActivity)initWithApplicationIdentifier:(id)a3 andFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _SFOpenWithAppUIActivity;
  v8 = [(UIActivity *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
    appProxy = v8->_appProxy;
    v8->_appProxy = v9;

    objc_storeStrong(&v8->_filePath, a4);
  }

  return v8;
}

- (void)performActivity
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_filePath];
  v5 = [(LSApplicationProxy *)self->_appProxy bundleIdentifier];
  v6 = [v3 operationToOpenResource:v4 usingApplication:v5 uniqueDocumentIdentifier:0 userInfo:0 delegate:self];

  [v6 start];
}

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___SFOpenWithAppUIActivity_openResourceOperation_didFinishCopyingResource___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end