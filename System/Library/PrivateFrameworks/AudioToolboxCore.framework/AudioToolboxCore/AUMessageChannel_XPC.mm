@interface AUMessageChannel_XPC
- (AUMessageChannel_XPC)initWithListenerEndpoint:(id)endpoint;
- (id)callAudioUnit:(id)unit;
- (void)dealloc;
@end

@implementation AUMessageChannel_XPC

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  v10[0] = &unk_1F032C4F0;
  v10[1] = &__block_literal_global_117;
  v10[3] = v10;
  v4 = xpcConnection;
  v11 = v4;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v12, v10);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v15, v12);
  v5 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33AUAudioUnitMessageChannelProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v13[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v14, v15);
  v6 = [(NSXPCConnection *)v5 remoteObjectProxyWithErrorHandler:v13];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v14);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v15);
  [v6 releaseChannel];

  v7 = self->_xpcConnection;
  self->_xpcConnection = 0;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v12);
  v9.receiver = self;
  v9.super_class = AUMessageChannel_XPC;
  [(AUMessageChannel_XPC *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)callAudioUnit:(id)unit
{
  v15 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(&v11, self->_xpcConnection);
  v5 = caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(&v11);
  v6 = caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::reply(&v11);
  [v5 onCallRemoteAU:unitCopy reply:v6];

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
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (AUMessageChannel_XPC)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v13.receiver = self;
  v13.super_class = AUMessageChannel_XPC;
  v5 = [(AUMessageChannel_XPC *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034F390];
    [(NSXPCConnection *)v5->_xpcConnection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_xpcConnection setInterruptionHandler:&__block_literal_global_105];
    [(NSXPCConnection *)v5->_xpcConnection setInvalidationHandler:&__block_literal_global_110];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034F390];
    [(NSXPCConnection *)v5->_xpcConnection setExportedInterface:v9];

    v10 = [[ExportedMessageChannel alloc] initWithMessageChannel:v5];
    [(NSXPCConnection *)v5->_xpcConnection setExportedObject:v10];

    [(NSXPCConnection *)v5->_xpcConnection resume];
    v11 = v5;
  }

  return v5;
}

@end