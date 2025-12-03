@interface AssetLoader
- (void)loadURL:(id)l extensionToken:(id)token withReply:(id)reply;
@end

@implementation AssetLoader

- (void)loadURL:(id)l extensionToken:(id)token withReply:(id)reply
{
  lCopy = l;
  tokenCopy = token;
  replyCopy = reply;
  if (![tokenCopy cStringUsingEncoding:4])
  {
    replyCopy[2](replyCopy, @"Unable to get sandbox.read extension");
  }

  if (sandbox_extension_consume() == -1)
  {
    replyCopy[2](replyCopy, @"Unable to consume sandbox.read extension.");
  }

  v9 = [MDLAssetLoader alloc];
  pathExtension = [lCopy pathExtension];
  uppercaseString = [pathExtension uppercaseString];
  v12 = [v9 initWithExtension:uppercaseString];

  v13 = [v12 loadURL:lCopy];
  replyCopy[2](replyCopy, v13);
  sandbox_extension_release();
}

@end