@interface Core_Audio_Driver_Service_Client
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (Core_Audio_Driver_Service_Client)init;
- (id).cxx_construct;
- (id)deferred_driver_loaded:(NSObject  *){objcproto17OS_dispatch_queue} reply:(id)&&;
- (id)get_lazy_connection:(shared_ptr<Driver_File>)get_lazy_connection;
- (id)init_with_driver_service_undertaker:(shared_ptr<std::function<void)(std::shared_ptr<Driver_File>;
- (int)load_driver:(shared_ptr<Driver_File>)load_driver driver_endpoint:(id *)driver_endpoint;
- (shared_ptr<Driver_File>)driver_file;
- (shared_ptr<std::function<void)driver_service_undertaker;
- (uint64_t)connect_to_driver_service:;
- (void)connect_to_driver_service:(shared_ptr<Driver_File>)connect_to_driver_service;
- (void)dealloc;
- (void)deferred_driver_loaded:(id)deferred_driver_loaded reply:(id)reply;
- (void)invalidate;
- (void)send_endpoint_to_driver_service;
- (void)setDriver_file:(shared_ptr<Driver_File>)driver_file;
- (void)setDriver_service_undertaker:(shared_ptr<std::function<void)(std::shared_ptr<Driver_File>;
- (void)tell_driver_service_to_exit;
@end

@implementation Core_Audio_Driver_Service_Client

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 56) = 0;
  *(self + 17) = 0;
  *(self + 18) = 850045863;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 29) = 850045863;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 40) = 850045863;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 49) = dispatch_semaphore_create(0);
  *(self + 400) = 0;
  *(self + 408) = 0;
  return self;
}

- (void)setDriver_file:(shared_ptr<Driver_File>)driver_file
{
  v4 = *driver_file.__ptr_;
  v3 = *(driver_file.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(self + 9);
  *(self + 8) = v4;
  *(self + 9) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (shared_ptr<Driver_File>)driver_file
{
  v3 = *(self + 9);
  *v2 = *(self + 8);
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setDriver_service_undertaker:(shared_ptr<std::function<void)(std::shared_ptr<Driver_File>
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(self + 7);
  *(self + 6) = v4;
  *(self + 7) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (shared_ptr<std::function<void)driver_service_undertaker
{
  v3 = *(self + 7);
  *v2 = *(self + 6);
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)deferred_driver_loaded:(id)deferred_driver_loaded reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  deferred_driver_loadedCopy = deferred_driver_loaded;
  replyCopy = reply;
  delegate = [(Core_Audio_Driver_Service_Client *)self delegate];
  if (delegate)
  {
    [(Core_Audio_Driver_Service_Client *)self queue];
    v9 = delegate;
    v10 = deferred_driver_loadedCopy;
    v11 = v13;
    operator new();
  }

  replyCopy[2](replyCopy, 0);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)deferred_driver_loaded:(NSObject  *){objcproto17OS_dispatch_queue} reply:(id)&&
{
  selfCopy = self;
  v2 = *self;
  if (v2)
  {
    [v2 deferred_driver_loaded:*(self + 8)];
  }

  return std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&selfCopy);
}

- (void)invalidate
{
  connection_to_driver_service = [(Core_Audio_Driver_Service_Client *)self connection_to_driver_service];
  if (connection_to_driver_service)
  {
    [connection_to_driver_service invalidate];
  }

  connection_from_driver_service = [(Core_Audio_Driver_Service_Client *)self connection_from_driver_service];
  v4 = connection_from_driver_service;
  if (connection_from_driver_service)
  {
    [connection_from_driver_service invalidate];
  }

  listener = [(Core_Audio_Driver_Service_Client *)self listener];
  v6 = listener;
  if (listener)
  {
    [listener invalidate];
  }
}

- (void)tell_driver_service_to_exit
{
  [(Core_Audio_Driver_Service_Client *)self driver_file];
  v3 = [(Core_Audio_Driver_Service_Client *)self get_lazy_connection:v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __63__Core_Audio_Driver_Service_Client_tell_driver_service_to_exit__block_invoke;
  v5[3] = &__block_descriptor_33_ea8_32c76_ZTSKZ63__Core_Audio_Driver_Service_Client_tell_driver_service_to_exit_E3__9_e17_v16__0__NSError_8l;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v4 exit_service];
}

- (int)load_driver:(shared_ptr<Driver_File>)load_driver driver_endpoint:(id *)driver_endpoint
{
  ptr = load_driver.__ptr_;
  v5 = *(load_driver.__ptr_ + 1);
  v18 = *load_driver.__ptr_;
  v19 = v5;
  cntrl = load_driver.__cntrl_;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  driver_endpoint = [(Core_Audio_Driver_Service_Client *)self get_lazy_connection:&v18, load_driver.__cntrl_, driver_endpoint];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v17 = 2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint___block_invoke;
  v15[3] = &__block_descriptor_48_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__5_e17_v16__0__NSError_8l;
  v7 = *(*ptr + 8);
  v15[4] = &v17;
  v8 = v7;
  v16 = v8;
  v9 = [driver_endpoint synchronousRemoteObjectProxyWithErrorHandler:v15];

  v10 = **ptr;
  v11 = *(*ptr + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint___block_invoke_27;
  v14[3] = &__block_descriptor_48_ea8_32c77_ZTSKZ64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint__E3__6_e34_v20__0i8__NSXPCListenerEndpoint_12l;
  v14[4] = &v17;
  v14[5] = &cntrl;
  [v9 load_driver:v10 driver_name:v11 reply:v14];
  v12 = v17;

  return v12;
}

- (id)get_lazy_connection:(shared_ptr<Driver_File>)get_lazy_connection
{
  ptr = get_lazy_connection.__ptr_;
  queue[42] = *MEMORY[0x1E69E9840];
  [(Core_Audio_Driver_Service_Client *)self queue:get_lazy_connection.__ptr_];
  selfCopy = self;
  v7 = *ptr;
  v6 = *(ptr + 1);
  v11[0] = selfCopy;
  v11[1] = v7;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZ56__Core_Audio_Driver_Service_Client_get_lazy_connection__E3__4EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v11;
  dispatch_sync(queue[0], block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  connection_to_driver_service = [(Core_Audio_Driver_Service_Client *)selfCopy connection_to_driver_service];
  v9 = *MEMORY[0x1E69E9840];

  return connection_to_driver_service;
}

- (void)connect_to_driver_service:(shared_ptr<Driver_File>)connect_to_driver_service
{
  ptr = connect_to_driver_service.__ptr_;
  v5 = *(connect_to_driver_service.__ptr_ + 1);
  v20 = *connect_to_driver_service.__ptr_;
  v21 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(Core_Audio_Driver_Service_Client *)self setDriver_file:&v20, connect_to_driver_service.__cntrl_];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:*(*ptr + 32)];
  [(Core_Audio_Driver_Service_Client *)self setConnection_to_driver_service:v6];

  connection_to_driver_service = [(Core_Audio_Driver_Service_Client *)self connection_to_driver_service];
  [connection_to_driver_service uniquify];

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599D2B8];
  connection_to_driver_service2 = [(Core_Audio_Driver_Service_Client *)self connection_to_driver_service];
  [connection_to_driver_service2 setRemoteObjectInterface:v8];

  connection_to_driver_service3 = [(Core_Audio_Driver_Service_Client *)self connection_to_driver_service];
  [connection_to_driver_service3 setExportedObject:self];

  selfCopy = self;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 3321888768;
  v24 = ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
  v25 = &__block_descriptor_40_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__2_e5_v8__0l;
  v12 = selfCopy;
  v26 = v12;
  v13 = _Block_copy(&aBlock);

  connection_to_driver_service4 = [(Core_Audio_Driver_Service_Client *)v12 connection_to_driver_service];
  [connection_to_driver_service4 setInvalidationHandler:v13];

  connection_to_driver_service5 = [(Core_Audio_Driver_Service_Client *)v12 connection_to_driver_service];
  aBlock = MEMORY[0x1E69E9820];
  v23 = 3321888768;
  v24 = ___ZZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__ENK3__3cvU13block_pointerFvvEEv_block_invoke;
  v25 = &__block_descriptor_40_ea8_32c75_ZTSKZ62__Core_Audio_Driver_Service_Client_connect_to_driver_service__E3__3_e5_v8__0l;
  v16 = connection_to_driver_service5;
  v26 = v16;
  v17 = _Block_copy(&aBlock);

  connection_to_driver_service6 = [(Core_Audio_Driver_Service_Client *)v12 connection_to_driver_service];
  [connection_to_driver_service6 setInterruptionHandler:v17];

  connection_to_driver_service7 = [(Core_Audio_Driver_Service_Client *)v12 connection_to_driver_service];
  [connection_to_driver_service7 resume];

  [(Core_Audio_Driver_Service_Client *)v12 send_endpoint_to_driver_service];
}

- (uint64_t)connect_to_driver_service:
{
  v1 = *self;
  v3 = self[2];
  v2 = self[3];
  selfCopy = self;
  v7 = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&selfCopy);
}

- (void)send_endpoint_to_driver_service
{
  v8 = 1;
  connection_to_driver_service = [(Core_Audio_Driver_Service_Client *)self connection_to_driver_service];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __67__Core_Audio_Driver_Service_Client_send_endpoint_to_driver_service__block_invoke;
  v7[3] = &__block_descriptor_40_ea8_32c80_ZTSKZ67__Core_Audio_Driver_Service_Client_send_endpoint_to_driver_service_E3__0_e17_v16__0__NSError_8l;
  v7[4] = &v8;
  v4 = [connection_to_driver_service synchronousRemoteObjectProxyWithErrorHandler:v7];

  endpoint = [(Core_Audio_Driver_Service_Client *)self endpoint];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = __67__Core_Audio_Driver_Service_Client_send_endpoint_to_driver_service__block_invoke_11;
  v6[3] = &__block_descriptor_40_ea8_32c80_ZTSKZ67__Core_Audio_Driver_Service_Client_send_endpoint_to_driver_service_E3__1_e8_v12__0B8l;
  v6[4] = &v8;
  [v4 set_driver_service_client_endpoint:endpoint reply:v6];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599A658];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_4135];
  [connectionCopy setInvalidationHandler:&__block_literal_global_8];
  [connectionCopy resume];
  [(Core_Audio_Driver_Service_Client *)self setConnection_from_driver_service:connectionCopy];

  return 1;
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(self + 1);
    *(self + 1) = 0;
  }

  v5 = *(self + 3);
  if (v5)
  {
    [v5 invalidate];
    [*(self + 3) setDelegate:0];
    v6 = *(self + 3);
    *(self + 3) = 0;
  }

  v7 = *(self + 4);
  if (v7)
  {
    *(self + 4) = 0;
  }

  v8.receiver = self;
  v8.super_class = Core_Audio_Driver_Service_Client;
  [(Core_Audio_Driver_Service_Client *)&v8 dealloc];
}

- (id)init_with_driver_service_undertaker:(shared_ptr<std::function<void)(std::shared_ptr<Driver_File>
{
  ptr = a3.__ptr_;
  v4 = [(Core_Audio_Driver_Service_Client *)self init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v6 = ptr[1];
    v8 = *ptr;
    v9 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(Core_Audio_Driver_Service_Client *)v4 setDriver_service_undertaker:&v8];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return v5;
}

- (Core_Audio_Driver_Service_Client)init
{
  obj[42] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = Core_Audio_Driver_Service_Client;
  v2 = [(Core_Audio_Driver_Service_Client *)&v9 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    v4 = *(v2 + 3);
    *(v2 + 3) = anonymousListener;

    [*(v2 + 3) setDelegate:v2];
    endpoint = [*(v2 + 3) endpoint];
    v6 = *(v2 + 4);
    *(v2 + 4) = endpoint;

    [*(v2 + 3) resume];
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(obj, "driver host connection queue");
    objc_storeStrong(v2 + 10, obj[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(obj);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

@end