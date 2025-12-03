@interface AURemoteMessageChannel
- (AURemoteMessageChannel)initWithMessageChannel:(id)channel;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)onCallRemoteAU:(id)u reply:(id)reply;
- (void)releaseChannel;
- (void)retainSelfIfRequired;
@end

@implementation AURemoteMessageChannel

- (void)releaseChannel
{
  messageChannel = self->_messageChannel;
  self->_messageChannel = 0;

  selfRetained = self->_selfRetained;
  self->_selfRetained = 0;
}

- (void)retainSelfIfRequired
{
  if (self->_messageChannel)
  {
    if (self->_listener)
    {
      objc_storeStrong(&self->_selfRetained, self);
    }
  }
}

- (void)onCallRemoteAU:(id)u reply:(id)reply
{
  uCopy = u;
  replyCopy = reply;
  messageChannel = self->_messageChannel;
  if (messageChannel)
  {
    v8 = [(AUMessageChannel *)messageChannel callAudioUnit:uCopy];
    replyCopy[2](replyCopy, 0, v8);
  }

  else
  {
    replyCopy[2](replyCopy, 0, 0);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_xpcConnection, connection);
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034F390];
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v7];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034F390];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v8];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke;
  v15[3] = &__block_descriptor_40_ea8_32c47_ZTSN5caulk8weak_refI22AURemoteMessageChannelEE_e5_v8__0l;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke_234;
  v13[3] = &__block_descriptor_40_ea8_32c47_ZTSN5caulk8weak_refI22AURemoteMessageChannelEE_e5_v8__0l;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v13];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_initWeak(&from, self->_xpcConnection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke_2;
  v10[3] = &__block_descriptor_40_ea8_32c40_ZTSN5caulk8weak_refI15NSXPCConnectionEE_e36___NSDictionary_16__0__NSDictionary_8l;
  objc_copyWeak(&v11, &from);
  [(AUMessageChannel *)self->_messageChannel setCallHostBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return 1;
}

void __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_ClientConnecti.isa);
  v2 = caulk::strong<AURemoteMessageChannel>((a1 + 32));
  if (v2)
  {
    v3 = v2[3];
    v2[3] = 0;
    v7 = v2;

    v4 = v7[2];
    v7[2] = 0;

    v5 = v7[1];
    v7[1] = 0;

    v6 = v7[4];
    v7[4] = 0;

    v2 = v7;
  }
}

void __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke_234(uint64_t a1)
{
  NSLog(&cfstr_ClientConnecti_0.isa);
  v2 = caulk::strong<AURemoteMessageChannel>((a1 + 32));
  if (v2)
  {
    v3 = v2[3];
    v2[3] = 0;
    v7 = v2;

    v4 = v7[2];
    v7[2] = 0;

    v5 = v7[1];
    v7[1] = 0;

    v6 = v7[4];
    v7[4] = 0;

    v2 = v7;
  }
}

id __61__AURemoteMessageChannel_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(&v11, WeakRetained);
    v5 = caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(&v11);
    v6 = caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::reply(&v11);
    [v5 onCallRemoteAU:v3 reply:v6];

    v7 = v14;
    if (v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = v14;
    }

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&v12);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (AURemoteMessageChannel)initWithMessageChannel:(id)channel
{
  channelCopy = channel;
  v12.receiver = self;
  v12.super_class = AURemoteMessageChannel;
  v6 = [(AURemoteMessageChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageChannel, channel);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v7->_listener;
    v7->_listener = anonymousListener;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
    v10 = v7;
  }

  return v7;
}

@end