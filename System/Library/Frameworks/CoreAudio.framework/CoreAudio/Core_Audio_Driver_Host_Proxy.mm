@interface Core_Audio_Driver_Host_Proxy
- (AudioServerPlugInHostInterface)get_host_interface;
- (Core_Audio_Driver_Host_Proxy)init;
- (DictionaryRef)driver_storage;
- (PropertyListRef)copy_from_driver_storage:(StringRef)copy_from_driver_storage;
- (id).cxx_construct;
- (id)init_with_host_endpoint:(id)init_with_host_endpoint driver:(id)driver;
- (int)delete_from_driver_storage:(StringRef)delete_from_driver_storage;
- (int)write_to_driver_storage:(StringRef)write_to_driver_storage property_list:(PropertyListRef)property_list;
- (shared_ptr<Host_Interface>)host_interface;
- (shared_ptr<caulk::mach::unfair_lock>)config_change_lock;
- (shared_ptr<caulk::mach::unfair_lock>)driver_storage_lock;
- (void)setDriver_storage:(DictionaryRef)driver_storage;
@end

@implementation Core_Audio_Driver_Host_Proxy

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  return self;
}

- (shared_ptr<caulk::mach::unfair_lock>)config_change_lock
{
  cntrl = self->_config_change_lock.__cntrl_;
  *v2 = self->_config_change_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setDriver_storage:(DictionaryRef)driver_storage
{
  mCFObject = self->_driver_storage.mObject.mCFObject;
  v5 = *driver_storage.mObject.mCFObject;
  self->_driver_storage.mObject.mCFObject = *driver_storage.mObject.mCFObject;
  if (v5)
  {
    CFRetain(v5);
  }

  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (DictionaryRef)driver_storage
{
  v3 = v2;
  mCFObject = self->_driver_storage.mObject.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->_driver_storage.mObject.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (shared_ptr<caulk::mach::unfair_lock>)driver_storage_lock
{
  cntrl = self->_driver_storage_lock.__cntrl_;
  *v2 = self->_driver_storage_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<Host_Interface>)host_interface
{
  cntrl = self->_host_interface.__cntrl_;
  *v2 = self->_host_interface.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)delete_from_driver_storage:(StringRef)delete_from_driver_storage
{
  v10 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage___block_invoke;
  v9[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage__E4__10_e17_v16__0__NSError_8l;
  v9[4] = &v10;
  v5 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v9];

  isa = delete_from_driver_storage.var0.var0->isa;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage___block_invoke_33;
  v8[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage__E4__11_e8_v12__0i8l;
  v8[4] = &v10;
  [v5 delete_storage_settings:isa reply:v8];
  LODWORD(connection_to_host) = v10;

  return connection_to_host;
}

- (int)write_to_driver_storage:(StringRef)write_to_driver_storage property_list:(PropertyListRef)property_list
{
  v15 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list___block_invoke;
  v14[3] = &__block_descriptor_40_ea8_32c83_ZTSKZ70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list__E3__8_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v7 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v14];
  v8 = 560947818;

  v13 = *property_list.var0.var0;
  if (v13)
  {
    v9 = AMCP::HAL::pack_property_data(15, 8u, &v13);
    if (v9)
    {
      isa = write_to_driver_storage.var0.var0->isa;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3321888768;
      v12[2] = __70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list___block_invoke_28;
      v12[3] = &__block_descriptor_40_ea8_32c83_ZTSKZ70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list__E3__9_e8_v12__0i8l;
      v12[4] = &v15;
      [v7 write_storage_settings:isa storage_data:v9 reply:v12];
      v8 = v15;
    }
  }

  return v8;
}

- (PropertyListRef)copy_from_driver_storage:(StringRef)copy_from_driver_storage
{
  v5 = v3;
  v16 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke;
  v15[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__6_e17_v16__0__NSError_8l;
  v15[4] = &v16;
  v7 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v15];

  isa = copy_from_driver_storage.var0.var0->isa;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke_22;
  v13[3] = &__block_descriptor_48_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__7_e19_v20__0i8__NSData_12l;
  v13[4] = &v16;
  v13[5] = &v14;
  v14 = 0;
  [v7 copy_storage_settings:isa reply:v13];
  v9 = v14;
  if (v16 || !v14)
  {
    *v5 = 0;
  }

  else
  {
    v12 = 8;
    cf = 0;
    v16 = AMCP::HAL::unpack_property_data(v14, 15, &v12, &cf);
    if (v16 || !cf)
    {
      *v5 = 0;
    }

    else
    {
      mcp_applesauce::CF::PropertyListRef::from_get(v5, cf);
      CFRelease(cf);
    }

    v9 = v14;
  }

  return v10;
}

- (AudioServerPlugInHostInterface)get_host_interface
{
  [(Core_Audio_Driver_Host_Proxy *)self host_interface];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v3;
}

- (id)init_with_host_endpoint:(id)init_with_host_endpoint driver:(id)driver
{
  init_with_host_endpointCopy = init_with_host_endpoint;
  driverCopy = driver;
  v14.receiver = self;
  v14.super_class = Core_Audio_Driver_Host_Proxy;
  v15 = 0;
  v8 = [(Core_Audio_Driver_Host_Proxy *)&v14 init];
  v15 = v8;
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:init_with_host_endpointCopy];
    connection_to_host = v8->_connection_to_host;
    v8->_connection_to_host = v9;

    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599AAB0];
    [(NSXPCConnection *)v8->_connection_to_host setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v8->_connection_to_host resume];
    std::allocate_shared[abi:ne200100]<Host_Interface,std::allocator<Host_Interface>,Core_Audio_Driver_Host_Proxy * {__strong}&,0>();
  }

  v12 = 0;

  return v12;
}

- (Core_Audio_Driver_Host_Proxy)init
{
  v6.receiver = self;
  v6.super_class = Core_Audio_Driver_Host_Proxy;
  v2 = [(Core_Audio_Driver_Host_Proxy *)&v6 init];
  v7 = v2;
  if (v2)
  {
    connection_to_host = v2->_connection_to_host;
    v2->_connection_to_host = 0;

    std::allocate_shared[abi:ne200100]<Host_Interface,std::allocator<Host_Interface>,Core_Audio_Driver_Host_Proxy * {__strong}&,0>();
  }

  v4 = 0;

  return v4;
}

@end