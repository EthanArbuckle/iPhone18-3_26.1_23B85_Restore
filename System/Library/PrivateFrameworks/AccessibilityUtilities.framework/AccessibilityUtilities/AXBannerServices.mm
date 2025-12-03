@interface AXBannerServices
+ (id)sharedInstance;
- (AXUIClient)serverClient;
- (id)_init;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
- (void)dismissBanner;
- (void)presentBannerWithTitle:(id)title message:(id)message duration:(double)duration;
@end

@implementation AXBannerServices

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken != -1)
  {
    +[AXBannerServices sharedInstance];
  }

  v3 = sharedInstance__SharedInstance;

  return v3;
}

uint64_t __34__AXBannerServices_sharedInstance__block_invoke()
{
  sharedInstance__SharedInstance = [[AXBannerServices alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXBannerServices;
  return [(AXBannerServices *)&v3 init];
}

- (AXUIClient)serverClient
{
  serverClient = self->_serverClient;
  if (!serverClient)
  {
    v4 = MEMORY[0x1E696AEC0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    v8 = [v4 stringWithFormat:@"AXBannerServicesClient-%@-%@", processName, v7];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v9 = getAXUIClientClass_softClass_0;
    v18 = getAXUIClientClass_softClass_0;
    if (!getAXUIClientClass_softClass_0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getAXUIClientClass_block_invoke_0;
      v14[3] = &unk_1E71E9A80;
      v14[4] = &v15;
      __getAXUIClientClass_block_invoke_0(v14);
      v9 = v16[3];
    }

    v10 = v9;
    _Block_object_dispose(&v15, 8);
    v11 = [[v9 alloc] initWithIdentifier:v8 serviceBundleName:@"AXBannerUIServer"];
    v12 = self->_serverClient;
    self->_serverClient = v11;

    [(AXUIClient *)self->_serverClient setDelegate:self];
    serverClient = self->_serverClient;
  }

  return serverClient;
}

- (void)presentBannerWithTitle:(id)title message:(id)message duration:(double)duration
{
  titleCopy = title;
  messageCopy = message;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (titleCopy)
  {
    [dictionary setObject:titleCopy forKeyedSubscript:@"title"];
  }

  if (messageCopy)
  {
    [dictionary setObject:messageCopy forKeyedSubscript:@"message"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [dictionary setObject:v10 forKeyedSubscript:@"duration"];

  serverClient = [(AXBannerServices *)self serverClient];
  [serverClient sendAsynchronousMessage:dictionary withIdentifier:1000 targetAccessQueue:0 completion:0];
}

- (void)dismissBanner
{
  serverClient = [(AXBannerServices *)self serverClient];
  [serverClient sendAsynchronousMessage:MEMORY[0x1E695E0F8] withIdentifier:1001 targetAccessQueue:0 completion:0];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  serverClient = [(AXBannerServices *)self serverClient];

  if (serverClient == clientCopy)
  {
    serverClient = self->_serverClient;
    self->_serverClient = 0;
  }
}

@end