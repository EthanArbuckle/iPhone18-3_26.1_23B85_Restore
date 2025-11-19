@interface CarbonComponentScannerXPCClient
- (AudioComponentVector)initialScan:(SEL)a3;
- (CarbonComponentScannerXPCClient)init;
- (id)xpcConnection;
- (void)closeService;
- (void)dealloc;
- (void)handleConnectionError:(BOOL)a3;
- (void)rescan:(id)a3 added:(void *)a4 removed:(void *)a5;
@end

@implementation CarbonComponentScannerXPCClient

- (void)closeService
{
  v12 = *MEMORY[0x1E69E9840];
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  v6[0] = &unk_1F033F978;
  v6[1] = &__block_literal_global_15898;
  v2 = v6[3] = v6;
  v7 = v2;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v8, v6);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v11, v8);
  v3 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v9[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v10, v11);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v11);
  [v4 closeService];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)rescan:(id)a3 added:(void *)a4 removed:(void *)a5
{
  v27[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  aBlock.__begin_ = &unk_1F033F8D0;
  aBlock.__end_ = &v20;
  v9 = *&aBlock.mSorted = &aBlock;
  v20 = v9;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v21, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v22 = 0;
  v23 = 0;
  obj = 0;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v27, v21);
  v10 = v20;
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE10sync_proxyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c71_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataS6_EEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v26, v27);
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  v12 = std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v27);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v12, v21);
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE5replyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c71_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataS6_EEEEEE_e39_v32__0__NSError_8__NSData_16__NSData_24l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v26, v27);
  v13 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v27);
  [v11 rescan:v8 reply:v13];

  v14 = v22;
  if (v14)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v15 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock.__begin_) = 136315650;
      *(&aBlock.__begin_ + 4) = "CarbonComponentScannerXPCClient.mm";
      WORD2(aBlock.__end_) = 1024;
      *(&aBlock.__end_ + 6) = 112;
      WORD1(aBlock.__cap_) = 2112;
      *(&aBlock.__cap_ + 4) = v14;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient error encountered on rescan: %@", &aBlock, 0x1Cu);
    }
  }

  else
  {
    v18 = 0;
    v19 = v23;
    objc_storeStrong(&v18, obj);
    AudioComponentVector::createWithSerializedData(&aBlock, v19);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(a4);
    *a4 = *&aBlock.__begin_;
    *(a4 + 2) = aBlock.__cap_;
    memset(&aBlock, 0, 24);
    *(a4 + 24) = aBlock.mSorted;
    v27[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v27);
    AudioComponentVector::createWithSerializedData(&aBlock, v18);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(a5);
    *a5 = *&aBlock.__begin_;
    *(a5 + 2) = aBlock.__cap_;
    memset(&aBlock, 0, 24);
    *(a5 + 24) = aBlock.mSorted;
    v27[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v27);
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  v17 = *MEMORY[0x1E69E9840];
}

- (AudioComponentVector)initialScan:(SEL)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  aBlock.__begin_ = &unk_1F033F810;
  aBlock.__end_ = &v18;
  v7 = *&aBlock.mSorted = &aBlock;
  v18 = v7;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v19, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v20 = 0;
  v21 = 0;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v24, v19);
  v8 = v18;
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE10sync_proxyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c68_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v23, v24);
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  v10 = std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v10, v19);
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE5replyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c68_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataEEEEEE_e28_v24__0__NSError_8__NSData_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v23, v24);
  v11 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
  [v9 initialScan:v6 reply:v11];

  v12 = v20;
  if (v12)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v13 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock.__begin_) = 136315650;
      *(&aBlock.__begin_ + 4) = "CarbonComponentScannerXPCClient.mm";
      WORD2(aBlock.__end_) = 1024;
      *(&aBlock.__end_ + 6) = 88;
      WORD1(aBlock.__cap_) = 2112;
      *(&aBlock.__cap_ + 4) = v12;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient error encountered on initialScan: %@", &aBlock, 0x1Cu);
    }

    *&retstr->__begin_ = 0u;
    *&retstr->__cap_ = 0u;
    retstr->mSorted = 1;
  }

  else
  {
    v14 = v21;
    AudioComponentVector::createWithSerializedData(&aBlock, v14);
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(retstr, aBlock.__begin_, aBlock.__end_, (aBlock.__end_ - aBlock.__begin_) >> 4);
    retstr->mSorted = aBlock.mSorted;
    v24[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v24);
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v19);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleConnectionError:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v5 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v7 = "interrupted";
    *&v12[4] = "CarbonComponentScannerXPCClient.mm";
    *v12 = 136315650;
    if (v3)
    {
      v7 = "invalidated";
    }

    *&v12[12] = 1024;
    *&v12[14] = 70;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient connection was %s!", v12, 0x1Cu);
  }

  connection = self->_connection;
  p_connection = &self->_connection;
  [(NSXPCConnection *)connection invalidate];
  v10 = *p_connection;
  *p_connection = 0;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)xpcConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.audio.CarbonComponentScanner.x86-64"];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0356570];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke;
    v10[3] = &unk_1E72C2DF8;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke_2;
    v8[3] = &unk_1E72C2DF8;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleConnectionError:0];
  }
}

void __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleConnectionError:1];
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = CarbonComponentScannerXPCClient;
  [(CarbonComponentScannerXPCClient *)&v5 dealloc];
}

- (CarbonComponentScannerXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CarbonComponentScannerXPCClient;
  v2 = [(CarbonComponentScannerXPCClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v3;
}

@end