@interface AUAudioUnit_XPC
- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)error;
- (BOOL)deleteUserPreset:(id)preset error:(id *)error;
- (BOOL)isLocalCachingDisabled;
- (BOOL)providesUserInterface;
- (BOOL)saveUserPreset:(id)preset error:(id *)error;
- (id).cxx_construct;
- (id)_getBus:(unsigned int)bus scope:(unsigned int)scope error:(id *)error;
- (id)_getInvalidationNotificationInfo;
- (id)_getValueForKey:(id)key;
- (id)_getValueForProperty:(id)property error:(id *)error;
- (id)audioUnitInstanceUUID;
- (id)inputBusses;
- (id)internalRenderBlock;
- (id)messageChannelFor:(id)for;
- (id)outputBusses;
- (id)parameterTree;
- (id)parametersForOverviewWithCount:(int64_t)count;
- (id)presetStateFor:(id)for error:(id *)error;
- (id)speechVoices;
- (id)supportedViewConfigurations:(id)configurations;
- (id)userPresets;
- (id)valueForUndefinedKey:(id)key;
- (void)_doOpen:(id)open completion:(id)completion;
- (void)_invalidatePipePoolAndUser;
- (void)_parameterTreeChanged;
- (void)_setState:(id)state forKey:(id)key error:(id *)error;
- (void)_setValue:(id)value forProperty:(id)property error:(id *)error;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)cancelSpeechRequest;
- (void)dealloc;
- (void)didCrash:(id)crash;
- (void)didInvalidate;
- (void)internalDeallocateRenderResources;
- (void)invalidateAllParameters;
- (void)propertiesChanged:(id)changed;
- (void)remoteReset;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)reset;
- (void)selectViewConfiguration:(id)configuration;
- (void)setMusicalContextBlock:(id)block;
- (void)setTransportStateBlock:(id)block;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)synthesizeSpeechRequest:(id)request;
@end

@implementation AUAudioUnit_XPC

- (id).cxx_construct
{
  MEMORY[0x193ADEF60](self + 584, a2);
  *(self + 82) = 850045863;
  *(self + 664) = 0u;
  *(self + 680) = 0u;
  *(self + 696) = 0u;
  *(self + 89) = 0;
  *(self + 93) = 850045863;
  *(self + 47) = 0u;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 100) = 0;
  *(self + 103) = 0;
  *(self + 105) = 0;
  *(self + 106) = 0;
  *(self + 104) = 0;
  *(self + 107) = 0;
  *(self + 108) = 0;
  *(self + 872) = 0;
  *(self + 944) = 0;
  *(self + 484) = 0;
  return self;
}

- (BOOL)isLocalCachingDisabled
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = self + 968;
  if ((*(self + 969) & 1) == 0)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(&v7, *(self + 72));
    v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_proxy(&v7);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::reply(&v7);
    [v3 localCachingDisabled:0 newValue:0 reply:v4];

    *v2 = v9 | 0x100;
    std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v8);

    if (!v2[1])
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  result = *v2;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)audioUnitInstanceUUID
{
  v8[6] = *MEMORY[0x1E69E9840];
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(&v7, *(self + 72));
  v2 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_proxy(&v7);
  v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::reply(&v7);
  [v2 retrieveInstanceUUID:v3];

  v4 = v8[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v8);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)speechVoices
{
  v9[6] = *MEMORY[0x1E69E9840];
  [(AUAudioUnit *)self componentDescription];
  if (v8 == 1635087216)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v8, *(self + 72));
    v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v8);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v8);
    [v3 getSpeechVoices:v4];

    v5 = v9[5];
    std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v9);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)cancelSpeechRequest
{
  v9[4] = *MEMORY[0x1E69E9840];
  [(AUAudioUnit *)self componentDescription];
  if (v8 == 1635087216)
  {
    v3 = *(self + 72);
    v7[0] = &unk_1F033F978;
    v7[1] = &__block_literal_global_221;
    v7[3] = v7;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v8, v3, v7);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v8);
    v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v8);
    [v4 cancelSpeechRequest:v5];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v9);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)synthesizeSpeechRequest:(id)request
{
  v11[4] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  [(AUAudioUnit *)self componentDescription];
  if (v10 == 1635087216)
  {
    v5 = *(self + 72);
    v9[0] = &unk_1F033F978;
    v9[1] = &__block_literal_global_219;
    v9[3] = v9;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v10, v5, v9);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v9);
    v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v10);
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v10);
    [v6 synthesizeSpeechRequest:requestCopy reply:v7];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v11);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)messageChannelFor:(id)for
{
  v27 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = *(self + 72);
  *aBlock = &unk_1F032CCB8;
  *&aBlock[8] = &v20;
  *&aBlock[24] = aBlock;
  v6 = v5;
  v20 = v6;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v21, aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](aBlock);
  v22 = 0;
  v23 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v26, v21);
  v7 = v20;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE10sync_proxyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c84_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP21NSXPCListenerEndpointEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  v9 = std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v9, v21);
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE5replyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c84_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP21NSXPCListenerEndpointEEEEEE_e43_v24__0__NSError_8__NSXPCListenerEndpoint_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
  v10 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  [v8 getCustomMessageChannelFor:forCopy reply:v10];

  v11 = v23;
  v12 = v11;
  v13 = v22;
  if (!v22)
  {
    if (v11)
    {
      v14 = [[AUMessageChannel_XPC alloc] initWithListenerEndpoint:v11];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!kAUExtensionScope)
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v14 = *kAUExtensionScope;
  if (v14)
  {
LABEL_8:
    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v13;
      *aBlock = 136315650;
      *&aBlock[4] = "AUAudioUnit_XPC.mm";
      *&aBlock[12] = 1024;
      *&aBlock[14] = 1345;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v17;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to receive messageChannel with error: %@", aBlock, 0x1Cu);
    }

LABEL_11:
    v14 = 0;
  }

LABEL_12:

  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken
{
  result = *(self + 72);
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)userPresets
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(AUAudioUnit *)self supportsUserPresets])
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  v3 = *(self + 72);
  *aBlock = &unk_1F032CC10;
  *&aBlock[8] = &v17;
  *&aBlock[24] = aBlock;
  v4 = v3;
  v17 = v4;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v18, aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](aBlock);
  v19 = 0;
  obj = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v23, v18);
  v5 = v17;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE10sync_proxyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c91_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  v7 = std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v7, v18);
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE5replyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c91_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v8 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  [v6 loadUserPresets:v8];

  objc_storeStrong(self + 120, obj);
  v9 = v19;
  if (v19)
  {
    if (kAUExtensionScope)
    {
      v10 = *kAUExtensionScope;
      if (!v10)
      {
LABEL_12:
        v11 = MEMORY[0x1E695E0F0];
        goto LABEL_13;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    v13 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v9;
      *aBlock = 136315650;
      *&aBlock[4] = "AUAudioUnit_XPC.mm";
      *&aBlock[12] = 1024;
      *&aBlock[14] = 1317;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v14;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load user presets: %@", aBlock, 0x1Cu);
    }

    goto LABEL_12;
  }

  v11 = *(self + 120);
LABEL_13:

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v18);
LABEL_14:
  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)presetStateFor:(id)for error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    v7 = *(self + 72);
    aBlock = &unk_1F032CB68;
    v22 = &v17;
    p_aBlock = &aBlock;
    v8 = v7;
    v17 = v8;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v18, &aBlock);

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
    v19 = 0;
    v20 = 0;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v26, v18);
    v9 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 3321888768;
    v23 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE10sync_proxyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c101_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEEEE_e17_v16__0__NSError_8l;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
    v11 = std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v11, v18);
    aBlock = MEMORY[0x1E69E9820];
    v22 = 3321888768;
    v23 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE5replyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c101_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEEEE_e34_v24__0__NSError_8__NSDictionary_16l;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
    v12 = _Block_copy(&aBlock);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
    [v10 presetStateFor:forCopy reply:v12];

    if (error)
    {
      *error = v19;
    }

    v13 = v20;
    if (v19)
    {
      error = 0;
    }

    else
    {
      error = v20;
    }

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v18);
  }

  else if (error)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v14;

    error = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return error;
}

- (BOOL)deleteUserPreset:(id)preset error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v12, *(self + 72));
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v12);
    v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v12);
    [v7 deleteUserPreset:presetCopy reply:v8];

    if (error)
    {
      *error = v14;
    }

    LOBYTE(error) = v14 == 0;

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v13);
  }

  else if (error)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v9;

    LOBYTE(error) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)saveUserPreset:(id)preset error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v13, *(self + 72));
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v13);
    fullStateForDocument = [(AUAudioUnit *)self fullStateForDocument];
    v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v13);
    [v7 saveUserPreset:presetCopy state:fullStateForDocument reply:v9];

    if (error)
    {
      *error = v15;
    }

    LOBYTE(error) = v15 == 0;

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v14);
  }

  else if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v10;

    LOBYTE(error) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)_setState:(id)state forKey:(id)key error:(id *)error
{
  stateCopy = state;
  keyCopy = key;
  [(AUAudioUnit_XPC *)self invalidateAllParameters];
  v9 = [AUAudioUnitProperty propertyWithKey:keyCopy];
  [(AUAudioUnit_XPC *)self _setValue:stateCopy forProperty:v9 error:error];
}

- (void)invalidateAllParameters
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(self + 119);
  if (v2)
  {
    allParameters = [v2 allParameters];
  }

  else
  {
    allParameters = MEMORY[0x1E695E0F0];
  }

  v4 = [allParameters countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allParameters);
        }

        [*(*(&v8 + 1) + 8 * i) setLocalValueStale:{1, v8}];
      }

      v4 = [allParameters countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)providesUserInterface
{
  cachedViewController = [(AUAudioUnit *)self cachedViewController];
  v3 = cachedViewController != 0;

  return v3;
}

- (void)selectViewConfiguration:(id)configuration
{
  v11[4] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = *(self + 72);
  v9[0] = &unk_1F033F978;
  v9[1] = &__block_literal_global_207;
  v9[3] = v9;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v10, v5, v9);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v9);
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v10);
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v10);
  [v6 selectViewConfiguration:configurationCopy reply:v7];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v11);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)supportedViewConfigurations:(id)configurations
{
  v24 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v5 = *(self + 72);
  aBlock = &unk_1F032CA18;
  v19 = &v14;
  p_aBlock = &aBlock;
  v6 = v5;
  v14 = v6;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v15, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v16 = 0;
  v17 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v23, v15);
  v7 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP10NSIndexSetEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  v9 = std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v9, v15);
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP10NSIndexSetEEEEEE_e32_v24__0__NSError_8__NSIndexSet_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v10 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  [v8 supportedViewConfigurations:configurationsCopy reply:v10];

  v11 = v17;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v15);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)parametersForOverviewWithCount:(int64_t)count
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(self + 72);
  aBlock = &unk_1F032C970;
  v18 = &v13;
  p_aBlock = &aBlock;
  v5 = v4;
  v13 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v14, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v15 = 0;
  v16 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v22, v14);
  v6 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  v8 = std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v8, v14);
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v9 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  [v7 parametersForOverviewWithCount:count reply:v9];

  v10 = v16;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v14);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)parameterTree
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(self + 119);
  if (v2)
  {
    goto LABEL_2;
  }

  std::mutex::lock((self + 744));
  v3 = *(self + 119);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = *(self + 72);
    aBlock = &unk_1F032C778;
    v30 = &v25;
    p_aBlock = &aBlock;
    v7 = v6;
    v25 = v7;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v26, &aBlock);

    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
    v27 = 0;
    obj = 0;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v34, v26);
    v8 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 3321888768;
    v31 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE10sync_proxyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c78_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP15AUParameterTreeEEEEEE_e17_v16__0__NSError_8l;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v33, v34);
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v33);
    v10 = std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v34);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v10, v26);
    aBlock = MEMORY[0x1E69E9820];
    v30 = 3321888768;
    v31 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE5replyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c78_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP15AUParameterTreeEEEEEE_e37_v24__0__NSError_8__AUParameterTree_16l;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v33, v34);
    v11 = _Block_copy(&aBlock);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v33);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v34);
    [v9 getParameterTree:v11];

    objc_storeStrong(self + 119, obj);
    LOBYTE(v9) = v27 == 0;

    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
    if (v9)
    {
      objc_initWeak(&aBlock, *(self + 72));
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke;
      v23[3] = &unk_1E72C0E00;
      objc_copyWeak(&v24, &aBlock);
      [*(self + 119) setImplementorValueProvider:v23];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke_2;
      v21[3] = &unk_1E72C0E28;
      objc_copyWeak(&v22, &aBlock);
      [*(self + 119) setImplementorStringFromValueCallback:v21];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke_3;
      v19[3] = &unk_1E72C0E50;
      objc_copyWeak(&v20, &aBlock);
      [*(self + 119) setImplementorValueFromStringCallback:v19];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __32__AUAudioUnit_XPC_parameterTree__block_invoke_4;
      v17 = &unk_1E72C0E78;
      objc_copyWeak(&v18, &aBlock);
      [*(self + 119) setImplementorDisplayNameWithLengthCallback:&v14];
      [*(self + 119) setRemoteParameterSynchronizerXPCConnection:{*(self + 72), v14, v15, v16, v17}];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&aBlock);
      std::mutex::unlock((self + 744));
      v2 = *(self + 119);
LABEL_2:
      v3 = v2;
      goto LABEL_7;
    }
  }

  std::mutex::unlock((self + 744));
LABEL_7:
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)propertiesChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  std::recursive_mutex::lock((self + 584));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = changedCopy;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v14 = 0;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = *(v9 + 20);
        if (v10)
        {
          v11 = [(AUAudioUnit_XPC *)self _getBus:*(v9 + 24) scope:v10 error:0];
          [v11 propertyChanged:v9];
        }

        else if ([*(v9 + 8) isEqualToString:@"inputBusses"])
        {
          v6 = 1;
        }

        else if ([*(v9 + 8) isEqualToString:@"outputBusses"])
        {
          v14 = 1;
        }

        else
        {
          if ([*(v9 + 8) isEqualToString:@"parameterTree"])
          {
            [(AUAudioUnit_XPC *)self _parameterTreeChanged];
          }

          [(AUAudioUnit_XPC *)self willChangeValueForKey:*(v9 + 8)];
          [(AUAudioUnit_XPC *)self didChangeValueForKey:*(v9 + 8)];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);

    std::recursive_mutex::unlock((self + 584));
    if (v6)
    {
      [(AUAudioUnit_XPC *)self _refreshBusses:1];
    }

    if (v14)
    {
      [(AUAudioUnit_XPC *)self _refreshBusses:2];
    }
  }

  else
  {

    std::recursive_mutex::unlock((self + 584));
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_getBus:(unsigned int)bus scope:(unsigned int)scope error:(id *)error
{
  if (scope == 1)
  {
    v7 = &OBJC_IVAR___AUAudioUnit_XPC__inputBusses;
LABEL_5:
    v8 = *(self + *v7);
    if ([v8 count] > bus)
    {
      v9 = [v8 objectAtIndexedSubscript:?];
      goto LABEL_13;
    }

    if (error)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10877 userInfo:0];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (scope == 2)
  {
    v7 = &OBJC_IVAR___AUAudioUnit_XPC__outputBusses;
    goto LABEL_5;
  }

  v8 = 0;
  if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10866 userInfo:0];
LABEL_11:
    v9 = 0;
    *error = v10;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:

  return v9;
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  v15[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v12 removeObserver:observer forKeyPath:pathCopy];
  if ((*(self + 742) & 1) == 0)
  {
    std::recursive_mutex::lock((self + 584));
    v7 = [AUAudioUnitProperty propertyWithKey:pathCopy];
    v8 = *(self + 72);
    v13[0] = &unk_1F033F978;
    v13[1] = &__block_literal_global_192;
    v13[3] = v13;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v14, v8, v13);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v13);
    v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v14);
    v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v14);
    [v9 removePropertyObserver:v7 context:0 reply:v10];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v15);
    std::recursive_mutex::unlock((self + 584));
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  v17[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  *(self + 742) = 1;
  v14.receiver = self;
  v14.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v14 removeObserver:observer forKeyPath:pathCopy context:context];
  std::recursive_mutex::lock((self + 584));
  v9 = [AUAudioUnitProperty propertyWithKey:pathCopy];
  v10 = *(self + 72);
  v15[0] = &unk_1F033F978;
  v15[1] = &__block_literal_global_190;
  v15[3] = v15;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v16, v10, v15);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v15);
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v16);
  v12 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v16);
  [v11 removePropertyObserver:v9 context:context reply:v12];

  *(self + 742) = 0;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17);

  std::recursive_mutex::unlock((self + 584));
  v13 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v19[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v16 addObserver:observer forKeyPath:pathCopy options:options context:context];
  std::recursive_mutex::lock((self + 584));
  v11 = [AUAudioUnitProperty propertyWithKey:pathCopy];
  v12 = *(self + 72);
  v17[0] = &unk_1F033F978;
  v17[1] = &__block_literal_global_188;
  v17[3] = v17;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v18, v12, v17);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17);
  v13 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v18);
  v14 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v18);
  [v13 addPropertyObserver:v11 context:context reply:v14];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v19);
  std::recursive_mutex::unlock((self + 584));

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v13, *(self + 72));
  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v13);
  v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v13);
  [v8 setValue:valueCopy forKey:keyCopy reply:v9];

  v10 = v15;
  if (v10)
  {
    [(AUAudioUnit_XPC *)self propertiesChanged:v10];
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v14);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)valueForUndefinedKey:(id)key
{
  v11[6] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(&v10, *(self + 72));
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_proxy(&v10);
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::reply(&v10);
  [v5 valueForKey:keyCopy reply:v6];

  v7 = v11[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v11);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_setValue:(id)value forProperty:(id)property error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v14, *(self + 72));
  v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v14);
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v14);
  [v10 setValue:valueCopy forProperty:propertyCopy propagateError:error != 0 reply:v11];

  v12 = v17;
  if (v12)
  {
    [(AUAudioUnit_XPC *)self propertiesChanged:v12];
  }

  if (error && v16)
  {
    *error = v16;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v15);
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_getValueForKey:(id)key
{
  v4 = [AUAudioUnitProperty propertyWithKey:key];
  v5 = [(AUAudioUnit_XPC *)self _getValueForProperty:v4 error:0];

  return v5;
}

- (id)_getValueForProperty:(id)property error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(&v14, *(self + 72));
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_proxy(&v14);
  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::reply(&v14);
  [v7 valueForProperty:propertyCopy propagateError:error != 0 reply:v8];

  v9 = v17;
  v10 = v9;
  if (error)
  {
    v10 = v9;
    if (v16)
    {
      *error = v16;
      v10 = v17;
    }
  }

  v11 = v9;

  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](&v15);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)internalRenderBlock
{
  [(AUAudioUnit *)self componentDescription];
  v3 = 1;
  if (v12 <= 1635085669)
  {
    if (v12 == 1635083896 || v12 == 1635084142)
    {
      goto LABEL_10;
    }
  }

  else if ((v12 - 1635085670) <= 0xF && ((1 << (v12 - 102)) & 0x8009) != 0 || v12 == 1635086188)
  {
    goto LABEL_10;
  }

  v3 = 0;
LABEL_10:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AUAudioUnit_XPC_internalRenderBlock__block_invoke;
  v10[3] = &__block_descriptor_41_e433_i60__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36r__AURenderEvent__AURenderEventHeader___AURenderEvent_qCC__AUParameterEvent___AURenderEvent_qC_3C_IQf__AUMIDIEvent___AURenderEvent_qCCSC_3C___AUMIDIEventList___AURenderEvent_qCCC_MIDIEventList_iI_1_MIDIEventPacket_QI_64I______44___i___I__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_Iq__AudioBufferList_I_1_AudioBuffer_II_v____52l;
  v10[4] = self + 872;
  v11 = v3;
  v6 = _Block_copy(v10);
  v7 = _Block_copy(v6);

  return v7;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v3 reset];
  [(AUAudioUnit_XPC *)self remoteReset];
}

- (void)remoteReset
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = *(self + 72);
  v5[0] = &unk_1F033F978;
  v5[1] = &__block_literal_global_180;
  v5[3] = v5;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v6, v2, v5);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v5);
  v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v6);
  [v3 reset:&__block_literal_global_182];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)internalDeallocateRenderResources
{
  v9[6] = *MEMORY[0x1E69E9840];
  v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  AURegistrationServerConnection::WakeExtension(*(v3 + 48), *(self + 182), 3);
  if (*(self + 944) == 1)
  {
    auoop::RenderPipeUser::~RenderPipeUser((self + 872));
    *(v4 + 72) = 0;
  }

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v8, *(self + 72));
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v8);
  [v5 uninitialize:&__block_literal_global_176];

  v7.receiver = self;
  v7.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v7 internalDeallocateRenderResources];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v9);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)error
{
  v136 = *MEMORY[0x1E69E9840];
  if ([(AUAudioUnit *)self renderResourcesAllocated])
  {
    v5 = 1;
    goto LABEL_9;
  }

  musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
  mIDIOutputEventBlock = [(AUAudioUnit *)self MIDIOutputEventBlock];
  errorCopy = error;
  mIDIOutputEventListBlock = [(AUAudioUnit *)self MIDIOutputEventListBlock];
  v10 = transportStateBlock != 0;
  v11 = musicalContextBlock != 0;
  v12 = mIDIOutputEventListBlock != 0;

  v13 = *(self + 72);
  aBlock = &unk_1F032C628;
  *&v124 = v131;
  *&v125 = &aBlock;
  v14 = v13;
  *v131 = v14;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v131[8], &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&aBlock);
  v135 = 0;
  v133 = 0u;
  memset(v134, 0, sizeof(v134));
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v117, &v131[8]);
  v15 = *v131;
  aBlock = MEMORY[0x1E69E9820];
  *&v124 = 3321888768;
  *(&v124 + 1) = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE10sync_proxyEv_block_invoke;
  *&v125 = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJmmmU8__strongP6NSDatabjEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v125 + 8, &v117);
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v125 + 8);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v117);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v117, &v131[8]);
  aBlock = MEMORY[0x1E69E9820];
  *&v124 = 3321888768;
  *(&v124 + 1) = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE5replyEv_block_invoke;
  *&v125 = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJmmmU8__strongP6NSDatabjEEEEEE_e43_v56__0__NSError_8Q16Q24Q32__NSData_40B48I52l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v125 + 8, &v117);
  v17 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v125 + 8);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v117);
  [v16 initialize:(v11 || 2 * v10) | (4 * (mIDIOutputEventBlock != 0)) | (8 * v12) reply:v17];

  v18 = DWORD2(v133);
  v19 = *v134;
  v20 = *&v134[8];
  v21 = *&v134[16];
  v22 = v135;
  v23 = v133;
  if (v23)
  {
    v24 = v23;
    if (error)
    {
      v25 = v23;
      *error = v24;
    }

    [(AUAudioUnit *)self setRenderResourcesAllocated:0];

    std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v131[8]);
    goto LABEL_7;
  }

  v110 = v22;

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v131[8]);
  if (v20 <= 0)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
      *error = v5 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v113.receiver = self;
  v113.super_class = AUAudioUnit_XPC;
  if (![(AUAudioUnit *)&v113 allocateRenderResourcesAndReturnError:error])
  {
    goto LABEL_7;
  }

  v28 = v21;
  [v21 bytes];
  v109 = v21;
  v29 = [v21 length];
  if (v29 >= 0x28)
  {
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v29 / 0x28);
  }

  mIDIOutputBufferSizeHint = [(AUAudioUnit *)self MIDIOutputBufferSizeHint];
  v31 = v21;
  LOBYTE(aBlock) = 1;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v32 = v31;
  v127 = v32;
  v128 = 0.0;
  v129 = v18;
  v130 = mIDIOutputBufferSizeHint;
  v33 = AUOOPRenderingClient::NeverTimesOut(v32);
  if ((v33 & 1) == 0)
  {
    LOBYTE(aBlock) = 0;
  }

  [v32 bytes];
  if (0xCCCCCCCCCCCCCCCDLL * ((40 * ([v32 length] / 0x28uLL)) >> 3) != v20 + v19)
  {
    std::terminate();
  }

  bytes = [v32 bytes];
  v35 = 40 * ([v32 length] / 0x28uLL);
  if (!v35)
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_88;
  }

  v38 = 0;
  v39 = (bytes + 16);
  v40 = 0.0;
  do
  {
    if (v19 == v38)
    {
      v128 = *(v39 - 2);
    }

    if (*(v39 - 2) == 1819304813 && *(v39 + 1) == 1)
    {
      v41 = *(v39 + 2);
      if (v41 == *v39)
      {
        v42 = *(v39 + 4);
        if (v41 >= v42 >> 3)
        {
          v43 = *(v39 + 3);
          if (v43)
          {
            v44 = *(v39 - 1);
            if ((v44 & 0x20) != 0 || (v47 = v41 == v41 / v43 * v43, v41 /= v43, v47))
            {
              v45 = 0;
              if ((v44 & 2) == 0 && 8 * v41 == v42)
              {
                if (v44)
                {
                  if ((v44 & 0x1F84) != 0)
                  {
                    goto LABEL_82;
                  }

                  if (v41 == 4)
                  {
                    v45 = 1;
                  }

                  else
                  {
                    v45 = 4 * (v41 == 8);
                  }
                }

                else if ((v44 & 4) != 0)
                {
                  v46 = (v44 >> 7) & 0x3F;
                  if (v46 == 24 && v41 == 4)
                  {
                    v45 = 3;
                  }

                  else if (v46 || v41 != 4)
                  {
                    v47 = v41 == 2 && v46 == 0;
                    if (v47)
                    {
                      v45 = 2;
                    }

                    else
                    {
                      v45 = 0;
                    }
                  }

                  else
                  {
                    v45 = 5;
                  }
                }

                else
                {
                  v45 = 0;
                }
              }

              v48 = (*(v39 - 1) & 0x20) == 0;
              if (v38 >= v19)
              {
                v51 = v126;
                if (v126 >= *(&v126 + 1))
                {
                  v106 = v126 - *(&v125 + 1);
                  v56 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *(&v125 + 1)) >> 2);
                  v57 = v56 + 1;
                  if (v56 + 1 > 0x1555555555555555)
                  {
LABEL_147:
                    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                  }

                  v103 = *(&v125 + 1);
                  if (0x5555555555555556 * ((*(&v126 + 1) - *(&v125 + 1)) >> 2) > v57)
                  {
                    v57 = 0x5555555555555556 * ((*(&v126 + 1) - *(&v125 + 1)) >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((*(&v126 + 1) - *(&v125 + 1)) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v58 = 0x1555555555555555;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  if (v58)
                  {
                    std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](v58);
                  }

                  v61 = 4 * ((v126 - *(&v125 + 1)) >> 2);
                  *v61 = v45;
                  *(v61 + 4) = v43;
                  *(v61 + 8) = v48;
                  *(v61 + 9) = 0;
                  *(v61 + 11) = 0;
                  v52 = 12 * v56 + 12;
                  memcpy((12 * v56 - v106), v103, v106);
                  *(&v125 + 1) = 12 * v56 - v106;
                  v126 = v52;
                  if (v103)
                  {
                    operator delete(v103);
                  }
                }

                else
                {
                  *v126 = v45;
                  *(v51 + 4) = v43;
                  *(v51 + 8) = v48;
                  *(v51 + 9) = 0;
                  v52 = v51 + 12;
                  *(v51 + 11) = 0;
                }

                *&v126 = v52;
              }

              else
              {
                v49 = *(&v124 + 1);
                if (*(&v124 + 1) >= v125)
                {
                  v105 = *(&v124 + 1) - v124;
                  v53 = 0xAAAAAAAAAAAAAAABLL * ((*(&v124 + 1) - v124) >> 2);
                  v54 = v53 + 1;
                  if (v53 + 1 > 0x1555555555555555)
                  {
                    goto LABEL_147;
                  }

                  v102 = v124;
                  if (0x5555555555555556 * ((v125 - v124) >> 2) > v54)
                  {
                    v54 = 0x5555555555555556 * ((v125 - v124) >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v55 = 0x1555555555555555;
                  }

                  else
                  {
                    v55 = v54;
                  }

                  if (v55)
                  {
                    std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](v55);
                  }

                  v59 = 4 * ((*(&v124 + 1) - v124) >> 2);
                  *v59 = v45;
                  *(v59 + 4) = v43;
                  *(v59 + 8) = v48;
                  *(v59 + 9) = 0;
                  *(v59 + 11) = 0;
                  v50 = 12 * v53 + 12;
                  v60 = v59 - v105;
                  memcpy((v59 - v105), v102, v105);
                  *&v124 = v60;
                  *(&v124 + 1) = v50;
                  *&v125 = 0;
                  if (v102)
                  {
                    operator delete(v102);
                  }
                }

                else
                {
                  **(&v124 + 1) = v45;
                  *(v49 + 4) = v43;
                  *(v49 + 8) = v48;
                  *(v49 + 9) = 0;
                  v50 = v49 + 12;
                  *(v49 + 11) = 0;
                }

                *(&v124 + 1) = v50;
              }

              v21 = v109;
            }
          }
        }
      }
    }

LABEL_82:
    if (v40 == 0.0)
    {
      v40 = *(v39 - 2);
    }

    else if (*(v39 - 2) != v40)
    {
      LOBYTE(aBlock) = 0;
    }

    ++v38;
    v39 += 5;
    v35 -= 40;
  }

  while (v35);
  v36 = *(&v125 + 1);
  v37 = v126;
LABEL_88:
  if (0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 2) > 1)
  {
    LOBYTE(aBlock) = 0;
  }

  v62 = *(self + 72);
  musicalContextBlock2 = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock2 = [(AUAudioUnit *)self transportStateBlock];
  mIDIOutputEventBlock2 = [(AUAudioUnit *)self MIDIOutputEventBlock];
  mIDIOutputEventListBlock2 = [(AUAudioUnit *)self MIDIOutputEventListBlock];
  isRenderingOffline = [(AUAudioUnit *)self isRenderingOffline];
  v99 = musicalContextBlock2;
  [(AUAudioUnit *)self componentDescription];
  v98 = *v131 == 1635085673;
  v64 = *(self + 107);
  std::recursive_mutex::lock(v64);
  v66 = *(v64 + 80);
  v65 = *(v64 + 88);
  if (v66 != v65)
  {
    while (1)
    {
      v67 = *v66;
      if (*(*v66 + 8) == 1)
      {
        v69 = *(v67 + 16);
        v68 = *(v67 + 24);
        if (v68 - v69 == *(&v124 + 1) - v124)
        {
          if (v69 == v68)
          {
LABEL_99:
            v72 = *(v67 + 40);
            v71 = *(v67 + 48);
            if (v71 - v72 == v37 - v36)
            {
              if (v72 == v71)
              {
LABEL_106:
                if (*(v67 + 72) == v128 && *(v67 + 80) >= v129 && *(v67 + 84) >= v130)
                {
                  break;
                }
              }

              else
              {
                v73 = v36;
                while (*v72 == *v73 && *(v72 + 4) == *(v73 + 4) && *(v72 + 8) == *(v73 + 8))
                {
                  v72 += 12;
                  v73 += 12;
                  if (v72 == v71)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }
          }

          else
          {
            v70 = v124;
            while (*v69 == *v70 && *(v69 + 4) == *(v70 + 4) && *(v69 + 8) == *(v70 + 8))
            {
              v69 += 12;
              v70 += 12;
              if (v69 == v68)
              {
                goto LABEL_99;
              }
            }
          }
        }
      }

      if (++v66 == v65)
      {
        goto LABEL_110;
      }
    }
  }

  if (v66 == v65)
  {
LABEL_110:
    v74 = *(v64 + 64);
    operator new();
  }

  v75 = *v66;
  v76 = v62;
  v77 = v76;
  v78 = *(v75 + 88);
  v79 = *(v75 + 92);
  *(v75 + 88) = v78 + 1;
  if (*(v75 + 96) > v78)
  {
    v80 = v78 + 1;
  }

  else
  {
    v80 = *(v75 + 96);
  }

  v108 = v76;
  if (v79 < v80)
  {
    while (1)
    {
      v82 = *(v75 + 120);
      v81 = *(v75 + 128);
      while (v82 != v81)
      {
        if (!*(v82 + 8) && (atomic_exchange(v82, 1u) & 1) == 0)
        {
          *(v82 + 24) = pthread_self();
          bytes2 = [*(v75 + 64) bytes];
          v84 = [*(v75 + 64) length];
          v114 = bytes2;
          v115 = 0xCCCCCCCCCCCCCCCDLL * ((40 * (v84 / 0x28)) >> 3);
          v116 = *(v75 + 80);
          v77;
          operator new();
        }

        v82 += 32;
      }
    }
  }

  v85 = [*(v64 + 184) count];
  v86 = [*(v64 + 184) addObject:v108];
  if (!v85)
  {
    v87 = auoop::gWorkgroupManager(v86);
    if (*(v64 + 176) == 1)
    {
      auoop::WorkgroupPropagator::~WorkgroupPropagator((v64 + 104));
      *(v64 + 176) = 0;
    }

    *v131 = &unk_1F0327218;
    *&v131[8] = v64 + 64;
    *&v131[24] = v131;
    auoop::WorkgroupPropagator::WorkgroupPropagator(v64 + 104, v87, v131);
    std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v131);
    *(v64 + 176) = 1;
  }

  *&v131[16] = v108;
  *&v131[24] = v99;
  v132 = transportStateBlock2;
  *&v133 = mIDIOutputEventBlock2;
  *(&v133 + 1) = mIDIOutputEventListBlock2;
  *v134 = v110;
  v134[4] = isRenderingOffline;
  v134[5] = v98;
  *&v134[6] = v112;
  v134[8] = 0;
  *v131 = 0;
  *&v131[8] = self;
  v117 = v75;
  *&v118 = self;
  *(&v118 + 1) = v108;
  *&v119 = v99;
  *(&v119 + 1) = transportStateBlock2;
  *v120 = mIDIOutputEventBlock2;
  *&v120[8] = mIDIOutputEventListBlock2;
  *&v120[16] = v110;
  v120[20] = isRenderingOffline;
  v120[21] = v98;
  *&v120[22] = v112;
  v121 = 0;
  v122 = 1;
  auoop::RenderPipeUser::~RenderPipeUser(v131);
  std::recursive_mutex::unlock(v64);
  v5 = v122;
  if (v122)
  {
    v88 = (self + 872);
    if (*(self + 944) == 1)
    {
      v89 = *v88;
      v90 = v117;
      *(self + 55) = v118;
      *(self + 56) = v119;
      *(self + 57) = *v120;
      *(self + 926) = *&v120[14];
    }

    else
    {
      v89 = 0;
      v90 = v117;
      *(self + 55) = v118;
      *(self + 56) = v119;
      *(self + 57) = *v120;
      *(self + 116) = *&v120[16];
      *(self + 936) = 0;
      *(self + 944) = 1;
    }

    *v88 = v90;
    v117 = v89;
    v93 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    AURegistrationServerConnection::WakeExtension(*(v93 + 48), *(self + 182), 2);
    goto LABEL_141;
  }

  v91 = v117;
  if (!kAUExtensionScope)
  {
    v92 = MEMORY[0x1E69E9C10];
    v94 = MEMORY[0x1E69E9C10];
    goto LABEL_135;
  }

  v92 = *kAUExtensionScope;
  if (v92)
  {
LABEL_135:
    v95 = v92;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = [v91 description];
      *v131 = 136315650;
      *&v131[4] = "AUAudioUnit_XPC.mm";
      *&v131[12] = 1024;
      *&v131[14] = 823;
      *&v131[18] = 2112;
      *&v131[20] = v96;
      _os_log_impl(&dword_18F5DF000, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d render pipe user creation failure (%@)", v131, 0x1Cu);
    }
  }

  if (errorCopy)
  {
    v97 = v91;
    *errorCopy = v91;
  }

  [(AUAudioUnit *)self deallocateRenderResources];

LABEL_141:
  caulk::__expected_detail::base<auoop::RenderPipeUser,NSError * {__strong}>::~base(&v117);

  if (*(&v125 + 1))
  {
    operator delete(*(&v125 + 1));
  }

  if (v124)
  {
    operator delete(v124);
  }

LABEL_8:

LABEL_9:
  v26 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (void)setTransportStateBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v8 setTransportStateBlock:blockCopy];
  v5 = self + 872;
  if (*(self + 944) == 1)
  {
    musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
    transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
    auoop::RenderPipeUser::setV3HostCallbacks(v5, musicalContextBlock, transportStateBlock);
  }
}

- (void)setMusicalContextBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v8 setMusicalContextBlock:blockCopy];
  v5 = self + 872;
  if (*(self + 944) == 1)
  {
    musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
    transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
    auoop::RenderPipeUser::setV3HostCallbacks(v5, musicalContextBlock, transportStateBlock);
  }
}

- (id)outputBusses
{
  if ([(AUAudioUnit_XPC *)self isLocalCachingDisabled])
  {
    [(AUAudioUnit_XPC *)self _refreshBusses:2];
  }

  v3 = *(self + 102);

  return v3;
}

- (id)inputBusses
{
  if ([(AUAudioUnit_XPC *)self isLocalCachingDisabled])
  {
    [(AUAudioUnit_XPC *)self _refreshBusses:1];
  }

  v3 = *(self + 101);

  return v3;
}

- (void)_parameterTreeChanged
{
  v3 = *(self + 119);
  if (v3)
  {
    [v3 setRemoteParameterSynchronizerXPCConnection:0];
    v4 = *(self + 119);
    *(self + 119) = 0;
  }
}

- (void)dealloc
{
  v12[6] = *MEMORY[0x1E69E9840];
  v3 = *(self + 119);
  if (v3)
  {
    [v3 setRemoteParameterSynchronizerXPCConnection:*(self + 72)];
    v4 = *(self + 119);
    *(self + 119) = 0;
  }

  v5 = *(self + 72);
  if (v5)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v11, v5);
    v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v11);
    [v6 close:&__block_literal_global_166];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v12);
  }

  v7 = *(self + 101);
  *(self + 101) = 0;

  v8 = *(self + 102);
  *(self + 102) = 0;

  v10.receiver = self;
  v10.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)didCrash:(id)crash
{
  v39 = *MEMORY[0x1E69E9840];
  crashCopy = crash;
  [(AUAudioUnit_XPC *)self _invalidatePipePoolAndUser];
  val = self;
  _getInvalidationNotificationInfo = [(AUAudioUnit_XPC *)self _getInvalidationNotificationInfo];
  v5 = [_getInvalidationNotificationInfo mutableCopy];

  v21 = v5;
  if (crashCopy)
  {
    v6 = [crashCopy valueForKey:@"Path"];
    v18 = v6;
    if (v6)
    {
      [v5 setObject:v6 forKey:{@"Executable Path", v6}];
    }

    [v5 valueForKey:{@"Descriptions", v18}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v8)
    {
      v9 = *v29;
      v10 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v28 + 1) + 8 * i) getValue:&v27];
          if (kAUExtensionScope)
          {
            v12 = *kAUExtensionScope;
            if (!v12)
            {
              continue;
            }
          }

          else
          {
            v13 = v10;
            v12 = v10;
          }

          v14 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            CAFormatter::CAFormatter(&v26, &v27);
            *buf = 136315650;
            v33 = "AUAudioUnit_XPC.mm";
            v34 = 1024;
            v35 = 641;
            v36 = 2080;
            v37 = v26;
            _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Crashed AU possible component description: %s", buf, 0x1Cu);
            if (v26)
            {
              free(v26);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v8);
    }
  }

  objc_initWeak(buf, val);
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __28__AUAudioUnit_XPC_didCrash___block_invoke;
  block[3] = &unk_1F032C220;
  objc_copyWeak(&v25, buf);
  v24 = v21;
  v16 = v21;
  dispatch_async(v15, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)didInvalidate
{
  [(AUAudioUnit_XPC *)self _invalidatePipePoolAndUser];
  _getInvalidationNotificationInfo = [(AUAudioUnit_XPC *)self _getInvalidationNotificationInfo];
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 0);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __32__AUAudioUnit_XPC_didInvalidate__block_invoke;
  block[3] = &unk_1F032C220;
  objc_copyWeak(&v9, &location);
  v8 = _getInvalidationNotificationInfo;
  v6 = _getInvalidationNotificationInfo;
  dispatch_after(v4, v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_getInvalidationNotificationInfo
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"audioUnit";
  v3 = [MEMORY[0x1E696B098] valueWithPointer:*(self + 90)];
  v13[0] = v3;
  v12[1] = @"AUAudioUnit";
  v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
  v13[1] = v4;
  v12[2] = @"Service PID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(self + 182)];
  v13[2] = v5;
  v12[3] = @"Host PID";
  v6 = MEMORY[0x1E696AD98];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v6 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_invalidatePipePoolAndUser
{
  v2 = self + 872;
  if (*(self + 944) == 1)
  {
    atomic_store(1u, self + 936);
  }

  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AUAudioUnit_XPC__invalidatePipePoolAndUser__block_invoke;
  block[3] = &unk_1E72C2AA8;
  objc_copyWeak(v5, &location);
  v5[1] = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

- (void)_doOpen:(id)open completion:(id)completion
{
  v81 = *MEMORY[0x1E69E9840];
  openCopy = open;
  completionCopy = completion;
  objc_storeStrong(self + 72, open);
  objc_initWeak(&location, self);
  v7 = *(self + 72);
  aBlock = &unk_1F032C538;
  v76 = &v67;
  p_aBlock = &aBlock;
  v8 = v7;
  v67 = v8;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v68, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](&aBlock);
  v69 = 0;
  v70 = 0;
  v72 = 0;
  v71 = 0;
  v73 = 0;
  memset(v74, 0, sizeof(v74));
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v80, v68);
  v9 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 3321888768;
  v77 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c79_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbbU8__strongP7NSArrayS6_bbimmEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v79, v80);
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v79);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v80);
  [(AUAudioUnit *)self componentDescription];
  auInstanceUUID = [(AUAudioUnit_XPC *)self auInstanceUUID];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v80, v68);
  aBlock = MEMORY[0x1E69E9820];
  v76 = 3321888768;
  v77 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c79_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbbU8__strongP7NSArrayS6_bbimmEEEEEE_e62_v68__0__NSError_8B16B20__NSArray_24__NSArray_32B40B44i48Q52Q60l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v79, v80);
  v12 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v79);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v80);
  [v10 open:v63 instanceUUID:auInstanceUUID reply:v12];

  v13 = v69;
  if (v13)
  {
    completionCopy[2](completionCopy, v13);
    goto LABEL_62;
  }

  *(self + 370) = v70;
  v51 = v71;
  v52 = v72;
  v14 = v73;
  v15 = HIBYTE(v73);
  *(self + 182) = v74[0];
  *(self + 732) = vmovn_s64(*&v74[1]);
  v16 = [[AUAudioUnitBusArray_XPC alloc] initWithOwner:self scope:1 busses:v51 countWritable:v14];
  v17 = *(self + 101);
  *(self + 101) = v16;

  v18 = [[AUAudioUnitBusArray_XPC alloc] initWithOwner:self scope:2 busses:v52 countWritable:v15];
  v19 = *(self + 102);
  *(self + 102) = v18;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v20 = *(self + 101);
  v21 = [v20 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v21)
  {
    v22 = *v60;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v59 + 1) + 8 * i);
        objc_storeWeak((v24 + 112), self);
        objc_storeWeak((v24 + 120), *(self + 72));
      }

      v21 = [v20 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v21);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = *(self + 102);
  v26 = [v25 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v26)
  {
    v27 = *v56;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v55 + 1) + 8 * j);
        objc_storeWeak((v29 + 112), self);
        objc_storeWeak((v29 + 120), *(self + 72));
      }

      v26 = [v25 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v26);
  }

  {
    auoop::RenderPipePoolManager::instance(void)::global = 0;
    qword_1EAD0E5E8 = 0;
    qword_1EAD0E5F0 = 0;
    qword_1EAD0E5E0 = 0;
  }

  os_unfair_lock_lock(&auoop::RenderPipePoolManager::instance(void)::global);
  v30 = *(self + 182);
  v31 = qword_1EAD0E5E0;
  v32 = qword_1EAD0E5E8;
  v33 = qword_1EAD0E5E0;
  if (qword_1EAD0E5E0 != qword_1EAD0E5E8)
  {
    while (1)
    {
      v34 = v33[1];
      if (!v34 || *(v34 + 8) == -1)
      {
        break;
      }

      v33 += 2;
      if (v33 == qword_1EAD0E5E8)
      {
        goto LABEL_39;
      }
    }

    if (v33 != qword_1EAD0E5E8)
    {
      v35 = v33 + 2;
      if (v33 + 2 != qword_1EAD0E5E8)
      {
        do
        {
          v36 = v35[1];
          if (v36 && *(v36 + 8) != -1)
          {
            v37 = *v35;
            *v35 = 0;
            v35[1] = 0;
            v38 = v33[1];
            *v33 = v37;
            v33[1] = v36;
            if (v38)
            {
              std::__shared_weak_count::__release_weak(v38);
            }

            v33 += 2;
          }

          v35 += 2;
        }

        while (v35 != v32);
        v31 = qword_1EAD0E5E0;
        v32 = qword_1EAD0E5E8;
      }
    }
  }

  if (v33 == v32)
  {
LABEL_39:
    v33 = v32;
  }

  else
  {
    while (v32 != v33)
    {
      v39 = *(v32 - 8);
      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      v32 -= 16;
    }

    qword_1EAD0E5E8 = v33;
    v31 = qword_1EAD0E5E0;
  }

  if (v31 == v33)
  {
    goto LABEL_52;
  }

  do
  {
    v40 = *(v31 + 8);
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      if (v41)
      {
        v42 = v41;
        v43 = *v31;
        if (!*v31)
        {
          goto LABEL_48;
        }

        std::recursive_mutex::lock(*v31);
        if (*v43[1].__m_.__opaque != v30)
        {
          std::recursive_mutex::unlock(v43);
LABEL_48:
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          goto LABEL_49;
        }

        v44 = v43[1].__m_.__opaque[4];
        std::recursive_mutex::unlock(v43);
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        if ((v44 & 1) == 0)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_49:
    v31 += 16;
  }

  while (v31 != v33);
  v31 = v33;
LABEL_51:
  v33 = qword_1EAD0E5E8;
LABEL_52:
  if (v31 == v33 || (v45 = *(v31 + 8)) == 0 || (v46 = std::__shared_weak_count::lock(v45)) == 0)
  {
LABEL_58:
    operator new();
  }

  if (!*v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    goto LABEL_58;
  }

  *&v47 = *v31;
  *(&v47 + 1) = v46;
  v48 = *(self + 108);
  *(self + 856) = v47;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  os_unfair_lock_unlock(&auoop::RenderPipePoolManager::instance(void)::global);
  v49 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  AURegistrationServerConnection::RegisterExtensionProcess(v49);
  completionCopy[2](completionCopy, 0);

  v13 = 0;
LABEL_62:

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v68);
  objc_destroyWeak(&location);

  v50 = *MEMORY[0x1E69E9840];
}

@end