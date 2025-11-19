@interface AssetLoader
- (void)loadURL:(id)a3 extensionToken:(id)a4 withReply:(id)a5;
@end

@implementation AssetLoader

- (void)loadURL:(id)a3 extensionToken:(id)a4 withReply:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  if (![v7 cStringUsingEncoding:4])
  {
    v8[2](v8, @"Unable to get sandbox.read extension");
  }

  if (sandbox_extension_consume() == -1)
  {
    v8[2](v8, @"Unable to consume sandbox.read extension.");
  }

  v9 = [MDLAssetLoader alloc];
  v10 = [v14 pathExtension];
  v11 = [v10 uppercaseString];
  v12 = [v9 initWithExtension:v11];

  v13 = [v12 loadURL:v14];
  v8[2](v8, v13);
  sandbox_extension_release();
}

@end