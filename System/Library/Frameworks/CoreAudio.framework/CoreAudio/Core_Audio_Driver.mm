@interface Core_Audio_Driver
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (Core_Audio_Driver)init;
- (id).cxx_construct;
- (id)init_driver_interface:(AudioServerPlugInDriverInterface *)init_driver_interface invalidation_handler:(function<void)(;
- (int)create_and_start_io_receiver:(unsigned int)create_and_start_io_receiver client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger;
- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver;
- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver client_id:(unsigned int)client_id;
- (int)handle_register_buffer:(dict)handle_register_buffer;
- (int)handle_unregister_buffer:(dict)handle_unregister_buffer;
- (shared_ptr<Property_Type_Info>)m_property_type_info;
- (shared_ptr<caulk::mach::unfair_lock>)config_change_info_lock;
- (shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock;
- (shared_ptr<std::map<unsigned)config_change_info_map;
- (shared_ptr<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,)io_receivers;
- (shared_ptr<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,)io_buffer_list;
- (void)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply;
- (void)create_device:(id)create_device client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply;
- (void)dealloc;
- (void)get_property_data:(Driver_Property_Identity *)get_property_data qualifier:(id)qualifier data_size:(unsigned int)data_size reply:(id)reply;
- (void)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier:(id)qualifier reply:(id)reply;
- (void)has_property:(Driver_Property_Identity *)has_property reply:(id)reply;
- (void)initialize:(id)initialize reply:(id)reply;
- (void)is_property_settable:(Driver_Property_Identity *)is_property_settable reply:(id)reply;
- (void)object_was_destroyed:(unsigned int)object_was_destroyed reply:(id)reply;
- (void)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply;
- (void)register_io_buffer:(id)register_io_buffer reply:(id)reply;
- (void)release_unpacked_cf_objects:(unsigned int)release_unpacked_cf_objects qualifier_data:(id)qualifier_data data_type:(unsigned int)data_type data:(id)data;
- (void)setConfig_change_info_map:(shared_ptr<std:(void *>>)config_change_info_map :map<unsigned long)long;
- (void)setIo_buffer_list:()shared_ptr<std:(applesauce::xpc::dict>>>)std :vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t;
- (void)setIo_receiver_lock:(shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock;
- (void)setIo_receivers:()shared_ptr<std:(std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>)std :unordered_map<AMCP::Portal::IPC::io_messenger_id_t;
- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info;
- (void)set_property_data:(Driver_Property_Identity *)set_property_data qualifier:(id)qualifier data:(id)data reply:(id)reply;
- (void)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id reply:(id)reply;
- (void)store_change_info:(void *)store_change_info for_token:(unint64_t)for_token;
- (void)unregister_io_buffer:(id)unregister_io_buffer reply:(id)reply;
@end

@implementation Core_Audio_Driver

- (id).cxx_construct
{
  *(self + 23) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  return self;
}

- (void)setIo_buffer_list:()shared_ptr<std:(applesauce::xpc::dict>>>)std :vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_buffer_list.__cntrl_;
  self->_io_buffer_list.__ptr_ = v4;
  self->_io_buffer_list.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,)io_buffer_list
{
  cntrl = self->_io_buffer_list.__cntrl_;
  *v2 = self->_io_buffer_list.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setIo_receivers:()shared_ptr<std:(std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>)std :unordered_map<AMCP::Portal::IPC::io_messenger_id_t
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_receivers.__cntrl_;
  self->_io_receivers.__ptr_ = v4;
  self->_io_receivers.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,)io_receivers
{
  cntrl = self->_io_receivers.__cntrl_;
  *v2 = self->_io_receivers.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setIo_receiver_lock:(shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock
{
  v4 = *io_receiver_lock.__ptr_;
  v3 = *(io_receiver_lock.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_receiver_lock.__cntrl_;
  self->_io_receiver_lock.__ptr_ = v4;
  self->_io_receiver_lock.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock
{
  cntrl = self->_io_receiver_lock.__cntrl_;
  *v2 = self->_io_receiver_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info
{
  v4 = *m_property_type_info.__ptr_;
  v3 = *(m_property_type_info.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  self->_m_custom_property_type_cache.__ptr_ = v4;
  self->_m_custom_property_type_cache.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<Property_Type_Info>)m_property_type_info
{
  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  *v2 = self->_m_custom_property_type_cache.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setConfig_change_info_map:(shared_ptr<std:(void *>>)config_change_info_map :map<unsigned long)long
{
  v4 = *config_change_info_map.__ptr_;
  v3 = *(config_change_info_map.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_config_change_info_map.__cntrl_;
  self->_config_change_info_map.__ptr_ = v4;
  self->_config_change_info_map.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::map<unsigned)config_change_info_map
{
  cntrl = self->_config_change_info_map.__cntrl_;
  *v2 = self->_config_change_info_map.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<caulk::mach::unfair_lock>)config_change_info_lock
{
  cntrl = self->_config_change_info_lock.__cntrl_;
  *v2 = self->_config_change_info_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)set_property_data:(Driver_Property_Identity *)set_property_data qualifier:(id)qualifier data:(id)data reply:(id)reply
{
  v61 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  dataCopy = data;
  selfCopy = self;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  [(Core_Audio_Driver *)self m_property_type_info];
  p_var2 = &set_property_data->var2;
  property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(*buf, set_property_data->var0, set_property_data->var2.mSelector);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  unpack_data_from_qualifier(buf, HIDWORD(property_data_and_qualifier_type_code), qualifierCopy);
  v44 = *buf;
  v13 = *&buf[8];
  v39 = *&buf[12];
  v14 = dataCopy;
  if (!v14)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v32;
      AMCP::Log::Scope::get_os_log_t(*v32);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v34 = *v32;
      AMCP::Log::Scope::get_os_log_t(*v32);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 682;
      v56 = 2080;
      v57 = "value == nil";
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Value is nil, cannot unpack data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v48, "Value is nil, cannot unpack data");
    std::runtime_error::runtime_error(&v49, &v48);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5992170;
    v50 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v49);
    v58 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_value(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
    v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v60 = 682;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
  }

  if (property_data_and_qualifier_type_code >= 0x13)
  {
    v18 = 4;
  }

  else
  {
    v15 = property_data_and_qualifier_type_code & 0x1F;
    v16 = qword_1DE796208[v15];
    v17 = qword_1DE7962A0[v15];
    v18 = v17 | v16;
    if (((v17 | v16) & 0x100000000) == 0)
    {
      v18 = [v14 length];
    }
  }

  v46 = v18;
  v19 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:{objc_msgSend(v14, "length")}];
  v20 = v19;
  v21 = AMCP::HAL::unpack_property_data(v14, property_data_and_qualifier_type_code, &v46, [v19 mutableBytes]);
  if (v21)
  {
    v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v35 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
    }

    v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = *v36;
      AMCP::Log::Scope::get_os_log_t(*v36);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    else
    {
      v38 = *v36;
      AMCP::Log::Scope::get_os_log_t(*v36);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 687;
      v56 = 2080;
      v57 = "data_error != kAudioHardwareNoError";
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unpack value", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v48, "Failed to unpack value");
    std::runtime_error::runtime_error(&v49, &v48);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5992170;
    v50 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v49);
    v58 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_value(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
    v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v60 = 687;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
  }

  v22 = v46;

  SetPropertyData = (*asp_interface)->SetPropertyData;
  var0 = set_property_data->var0;
  var1 = set_property_data->var1;
  v26 = v44;
  bytes = [v44 bytes];
  v28 = v19;
  v29 = (SetPropertyData)(asp_interface, var0, var1, p_var2, v13, bytes, v22, [v19 bytes]);
  replyCopy[2](replyCopy, v29);
  [(Core_Audio_Driver *)selfCopy release_unpacked_cf_objects:v39 qualifier_data:v44 data_type:property_data_and_qualifier_type_code data:v19];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)get_property_data:(Driver_Property_Identity *)get_property_data qualifier:(id)qualifier data_size:(unsigned int)data_size reply:(id)reply
{
  v48 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  replyCopy = reply;
  selfCopy = self;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  [(Core_Audio_Driver *)self m_property_type_info];
  property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v46, get_property_data->var0, get_property_data->var2.mSelector);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  unpack_data_from_qualifier(&v46, property_qualifier_type_code, qualifierCopy);
  v44 = v46;
  v11 = v47;
  v38 = HIDWORD(v47);
  [(Core_Audio_Driver *)self m_property_type_info];
  v12 = v46;
  var0 = get_property_data->var0;
  mSelector = get_property_data->var2.mSelector;
  std::mutex::lock((v46 + 24));
  v15 = *v12;
  v16 = *(v12 + 1);
  if (*v12 != v16)
  {
    while (*v15 != var0)
    {
      v15 += 48;
      if (v15 == v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (v15 == v16 || (v17 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v15 + 8), mSelector)) == 0)
  {
LABEL_16:
    hal_property_value_type_code = AMCP::HAL::get_hal_property_value_type_code(mSelector);
  }

  else
  {
    v18 = *(v17 + 5);
    if (v18 == 1918990199)
    {
      hal_property_value_type_code = 1;
    }

    else
    {
      if (v18 == 1667658612)
      {
        v19 = 6;
      }

      else
      {
        v19 = 0;
      }

      if (v18 == 1886155636)
      {
        hal_property_value_type_code = 15;
      }

      else
      {
        hal_property_value_type_code = v19;
      }
    }
  }

  std::mutex::unlock((v12 + 24));
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v39 = hal_property_value_type_code;
  v21 = qword_1DE7962A0[hal_property_value_type_code] | qword_1DE796208[hal_property_value_type_code];
  if ((v21 & 0x100000000) == 0)
  {
    LODWORD(v21) = data_size;
  }

  v45 = v21;
  v22 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:v21];
  GetPropertyData = (*asp_interface)->GetPropertyData;
  v24 = get_property_data->var0;
  var1 = get_property_data->var1;
  v26 = v44;
  bytes = [(Property_Type_Info *)v44 bytes];
  v28 = v22;
  v29 = (GetPropertyData)(asp_interface, v24, var1, &get_property_data->var2, v11, bytes, v45, &v45, [v22 mutableBytes]);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    if (get_property_data->var2.mSelector == 1668641652)
    {
      [(Core_Audio_Driver *)selfCopy m_property_type_info];
      v31 = v46;
      v32 = get_property_data->var0;
      v33 = v45;
      v34 = v22;
      Property_Type_Info::add_custom_properties(v31, v32, v33 / 0xCuLL, [v22 bytes]);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }
    }

    v35 = v45;
    v36 = v22;
    v30 = AMCP::HAL::pack_property_data(v39, v35, [v22 bytes]);
  }

  replyCopy[2](replyCopy, v29, v30);
  [(Core_Audio_Driver *)selfCopy release_unpacked_cf_objects:v38 qualifier_data:v44 data_type:v39 data:v22];

  v37 = *MEMORY[0x1E69E9840];
}

- (void)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier:(id)qualifier reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  replyCopy = reply;
  v22 = 0;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  [(Core_Audio_Driver *)self m_property_type_info];
  p_var2 = &get_property_data_size->var2;
  property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v23, get_property_data_size->var0, get_property_data_size->var2.mSelector);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  unpack_data_from_qualifier(&v23, property_qualifier_type_code, qualifierCopy);
  v12 = v23;
  v14 = v24;
  v13 = HIDWORD(v24);
  GetPropertyDataSize = (*asp_interface)->GetPropertyDataSize;
  var0 = get_property_data_size->var0;
  var1 = get_property_data_size->var1;
  v18 = v23;
  v19 = (GetPropertyDataSize)(asp_interface, var0, var1, p_var2, v14, [v12 bytes], &v22);
  replyCopy[2](replyCopy, v19, v22);
  [(Core_Audio_Driver *)self release_unpacked_cf_objects:v13 qualifier_data:v12 data_type:0 data:0];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)is_property_settable:(Driver_Property_Identity *)is_property_settable reply:(id)reply
{
  v11 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v10[0] = 0;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v8 = ((*asp_interface)->IsPropertySettable)(asp_interface, is_property_settable->var0, is_property_settable->var1, &is_property_settable->var2, v10);
  replyCopy[2](replyCopy, v8, v10[0]);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)release_unpacked_cf_objects:(unsigned int)release_unpacked_cf_objects qualifier_data:(id)qualifier_data data_type:(unsigned int)data_type data:(id)data
{
  qualifier_dataCopy = qualifier_data;
  dataCopy = data;
  v15 = qualifier_dataCopy;
  if (v15)
  {
    if ([v15 bytes])
    {
      if (release_unpacked_cf_objects <= 0x10 && ((1 << release_unpacked_cf_objects) & 0x18040) != 0)
      {
        v11 = *[v15 bytes];
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  v12 = dataCopy;
  v13 = v12;
  if (v12)
  {
    if ([v12 bytes])
    {
      if (data_type <= 0x10 && ((1 << data_type) & 0x18040) != 0)
      {
        v14 = *[v13 bytes];
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }
}

- (void)has_property:(Driver_Property_Identity *)has_property reply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v8 = ((*asp_interface)->HasProperty)(asp_interface, has_property->var0, has_property->var1, &has_property->var2);
  replyCopy[2](replyCopy, v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  [(Core_Audio_Driver *)self io_receiver_lock];
  os_unfair_lock_lock(lock);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  [(Core_Audio_Driver *)self io_receivers];
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(lock, stop_synchronous_messenger, client_id);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = v9;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  caulk::ipc::synchronous_messenger::semaphore_receiver::stop(*(v10[3] + 32), 5.0);
  [(Core_Audio_Driver *)self io_receivers];
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(lock, stop_synchronous_messenger, client_id);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  os_unfair_lock_unlock(lock);
  replyCopy[2](replyCopy, 0);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unregister_io_buffer:(id)unregister_io_buffer reply:(id)reply
{
  unregister_io_bufferCopy = unregister_io_buffer;
  replyCopy = reply;
  object = [unregister_io_bufferCopy object];
  v9 = object;
  if (!object)
  {
    v9 = xpc_null_create();
  }

  v10 = v9;
  v11 = v10;
  if (!v10 || (v12 = v10, MEMORY[0x1E12C2A30](v10) != MEMORY[0x1E69E9E80]))
  {
    v12 = xpc_null_create();
  }

  applesauce::xpc::object::object(&v15, v12);
  v13 = [(Core_Audio_Driver *)self handle_unregister_buffer:&v15];
  v14 = v15;
  v15 = 0;

  replyCopy[2](replyCopy, v13);
}

- (void)register_io_buffer:(id)register_io_buffer reply:(id)reply
{
  register_io_bufferCopy = register_io_buffer;
  replyCopy = reply;
  object = [register_io_bufferCopy object];
  v9 = object;
  if (!object)
  {
    v9 = xpc_null_create();
  }

  v10 = v9;
  v11 = v10;
  if (!v10 || (v12 = v10, MEMORY[0x1E12C2A30](v10) != MEMORY[0x1E69E9E80]))
  {
    v12 = xpc_null_create();
  }

  applesauce::xpc::object::object(&v15, v12);
  v13 = [(Core_Audio_Driver *)self handle_register_buffer:&v15];
  v14 = v15;
  v15 = 0;

  replyCopy[2](replyCopy, v13);
}

- (int)handle_unregister_buffer:(dict)handle_unregister_buffer
{
  v82 = *MEMORY[0x1E69E9840];
  buffer_key = get_buffer_key(handle_unregister_buffer.var0.fObj);
  v7 = v6;
  [(Core_Audio_Driver *)self io_receiver_lock];
  v8 = *buf;
  os_unfair_lock_lock(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  [(Core_Audio_Driver *)self io_buffer_list];
  v9 = **buf;
  [(Core_Audio_Driver *)self io_buffer_list];
  v10 = v61.~runtime_error_0;
  if (v9 != v10)
  {
    while (*v9 != __PAIR128__(v7, buffer_key))
    {
      v9 = (v9 + 24);
      if (v9 == v10)
      {
        v9 = v61.~runtime_error_0;
        break;
      }
    }
  }

  if (v61.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61.__imp_.__imp_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  [(Core_Audio_Driver *)self io_buffer_list];
  v11 = *&buf[8];
  v12 = *(*buf + 8);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v9 == v12)
  {
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v38;
      AMCP::Log::Scope::get_os_log_t(*v38);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v23 = *v38;
      AMCP::Log::Scope::get_os_log_t(*v38);
      objc_claimAutoreleasedReturnValue();
    }

    v40 = 560947818;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 551;
      v76 = 1024;
      *v77 = buffer_key;
      *&v77[4] = 1024;
      *&v77[6] = HIDWORD(buffer_key);
      v78 = 1024;
      LODWORD(v79) = v7;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Could not find buffer key in map! device id: %u, client id: %u, stream id: %u", buf, 0x24u);
    }

    goto LABEL_70;
  }

  [(Core_Audio_Driver *)self io_buffer_list];
  v13 = *buf;
  v14 = *(*buf + 8);
  if ((v9 + 24) != v14)
  {
    do
    {
      *v9 = *(v9 + 24);
      v15 = *(v9 + 5);
      v16 = xpc_null_create();
      v17 = *(v9 + 5);
      *(v9 + 5) = v16;

      v18 = *(v9 + 2);
      *(v9 + 2) = v15;

      v19 = (v9 + 24);
      v20 = (v9 + 48);
      v9 = (v9 + 24);
    }

    while (v20 != v14);
    v9 = v19;
  }

  std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](v13, v9);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  [(Core_Audio_Driver *)self io_receivers];
  v21 = *(*buf + 16);
  [(Core_Audio_Driver *)self io_receivers];
  for (; v21; v21 = *v21)
  {
    if (v21[2] == buffer_key)
    {
      break;
    }
  }

  if (v61.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61.__imp_.__imp_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  [(Core_Audio_Driver *)self io_receivers];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v21)
  {
    v22 = v21[3];
    v23 = AMCP::Log::Scope::get_os_log_t(*handle_unregister_buffer.var0.fObj);
    v24 = v23;
    if (!v23)
    {
      v24 = xpc_null_create();
    }

    v25 = v24;
    v26 = v25;
    v74 = v25;
    if (!v25 || MEMORY[0x1E12C2A30](v25) != MEMORY[0x1E69E9E80])
    {
      v27 = xpc_null_create();
      v28 = v74;
      v74 = v27;
    }

    *buf = &v74;
    *&buf[8] = "buffer shared memory";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v73, buf);
    *buf = &v74;
    *&buf[8] = "buffer device id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v72, buf);
    v29 = applesauce::xpc::dyn_cast_or_default(&v72, 0);
    *buf = &v74;
    *&buf[8] = "buffer client id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v71, buf);
    v30 = applesauce::xpc::dyn_cast_or_default(&v71, 0);
    *buf = &v74;
    *&buf[8] = "buffer stream id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v70, buf);
    v31 = applesauce::xpc::dyn_cast_or_default(&v70, 0);
    *buf = &v74;
    *&buf[8] = "buffer type";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v69, buf);
    v32 = applesauce::xpc::dyn_cast_or_default(&v69, 0);
    v68[0] = v29;
    v68[1] = v30;
    v68[2] = v31;
    v68[3] = v32;
    v33 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(v22 + 10, v68);
    if (!v33)
    {
      v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v55 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        v58 = *v56;
        AMCP::Log::Scope::get_os_log_t(*v56);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      else
      {
        v58 = *v56;
        AMCP::Log::Scope::get_os_log_t(*v56);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IO_Receiver.mm";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        v76 = 2080;
        *v77 = "find_result == m_shared_memory_map.end()";
        _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s buffer key doesnt exist in the map!", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v67);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v60, "buffer key doesnt exist in the map!");
      std::runtime_error::runtime_error(&v61, &v60);
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = -1;
      v61.__vftable = &unk_1F5992170;
      v62 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v61);
      v79 = "void AMCP::Portal::IPC::IO_Receiver::unregister_buffer(__strong xpc_object_t)";
      v80 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      v81 = 182;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v59);
    }

    v34 = v22[11];
    v35 = v33[1];
    v36 = vcnt_s8(v34);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      if (v35 >= *&v34)
      {
        v35 %= *&v34;
      }
    }

    else
    {
      v35 &= *&v34 - 1;
    }

    v41 = v22[10];
    v42 = *(v41 + 8 * v35);
    do
    {
      v43 = v42;
      v42 = *v42;
    }

    while (v42 != v33);
    if (v43 == v22 + 12)
    {
      goto LABEL_60;
    }

    v44 = v43[1];
    if (v36.u32[0] > 1uLL)
    {
      if (v44 >= *&v34)
      {
        v44 %= *&v34;
      }
    }

    else
    {
      v44 &= *&v34 - 1;
    }

    if (v44 != v35)
    {
LABEL_60:
      if (!*v33)
      {
        goto LABEL_61;
      }

      v45 = *(*v33 + 8);
      if (v36.u32[0] > 1uLL)
      {
        if (v45 >= *&v34)
        {
          v45 %= *&v34;
        }
      }

      else
      {
        v45 &= *&v34 - 1;
      }

      if (v45 != v35)
      {
LABEL_61:
        *(v41 + 8 * v35) = 0;
      }
    }

    v46 = *v33;
    if (*v33)
    {
      v47 = *(v46 + 8);
      if (v36.u32[0] > 1uLL)
      {
        if (v47 >= *&v34)
        {
          v47 %= *&v34;
        }
      }

      else
      {
        v47 &= *&v34 - 1;
      }

      if (v47 != v35)
      {
        *(v22[10] + 8 * v47) = v43;
        v46 = *v33;
      }
    }

    *v43 = v46;
    *v33 = 0;
    --v22[13];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,void *>>>::operator()[abi:ne200100](1, v33);
    v48 = v69;
    v69 = 0;

    v49 = v70;
    v70 = 0;

    v50 = v71;
    v71 = 0;

    v51 = v72;
    v72 = 0;

    v52 = v74;
    v74 = 0;

    v40 = 0;
LABEL_70:

    goto LABEL_71;
  }

  v40 = 0;
LABEL_71:
  os_unfair_lock_unlock(v8);
  v53 = *MEMORY[0x1E69E9840];
  return v40;
}

- (int)handle_register_buffer:(dict)handle_register_buffer
{
  v46 = *MEMORY[0x1E69E9840];
  buffer_key = get_buffer_key(handle_register_buffer.var0.fObj);
  v6 = v5;
  [(Core_Audio_Driver *)self io_receiver_lock];
  i = *lock;
  os_unfair_lock_lock(*lock);
  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  [(Core_Audio_Driver *)self io_buffer_list];
  v8 = **lock;
  [(Core_Audio_Driver *)self io_buffer_list];
  v9 = v39[1];
  if (v8 != v9)
  {
    while (*v8 != __PAIR128__(v6, buffer_key))
    {
      v8 = (v8 + 24);
      if (v8 == v9)
      {
        v8 = v39[1];
        break;
      }
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  [(Core_Audio_Driver *)self io_buffer_list];
  v10 = *&lock[8];
  v11 = *(*lock + 8);
  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  if (v8 == v11)
  {
    [(Core_Audio_Driver *)self io_buffer_list];
    *lock = buffer_key;
    *&lock[8] = v6;
    applesauce::xpc::object::object(&lock[16], *handle_register_buffer.var0.fObj);
    v17 = v39[1];
    v16 = v39[2];
    if (v17 >= v16)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v39) >> 3);
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v39) >> 3);
      v21 = 2 * v20;
      if (2 * v20 <= v19 + 1)
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        if (v22 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 8 * ((v17 - *v39) >> 3);
      std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v23, lock);
      v25 = *v39;
      v24 = v39[1];
      v37 = v23 + *v39 - v24;
      if (v24 != *v39)
      {
        v36 = i;
        v26 = v23 + *v39 - v24;
        v27 = *v39;
        do
        {
          std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v26, v27);
          v27 += 24;
          v26 += 24;
        }

        while (v27 != v24);
        for (i = v36; v25 != v24; v25 += 24)
        {
          v28 = *(v25 + 16);
          *(v25 + 16) = 0;
        }
      }

      v18 = v23 + 24;
      v29 = *v39;
      *v39 = v37;
      *(v39 + 1) = (v23 + 24);
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v39[1], lock);
      v18 = v17 + 24;
      v39[1] = v17 + 24;
    }

    v39[1] = v18;
    v30 = *&lock[16];
    *&lock[16] = 0;

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    [(Core_Audio_Driver *)self io_receivers];
    v31 = *(*lock + 16);
    [(Core_Audio_Driver *)self io_receivers];
    for (; v31; v31 = *v31)
    {
      if (v31[2] == buffer_key)
      {
        break;
      }
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (*&lock[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
    }

    [(Core_Audio_Driver *)self io_receivers];
    if (*&lock[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
    }

    if (v31)
    {
      v32 = v31[3];
      v33 = *handle_register_buffer.var0.fObj;
      AMCP::Log::Scope::get_os_log_t(*handle_register_buffer.var0.fObj);
      objc_claimAutoreleasedReturnValue();
      AMCP::Portal::IPC::IO_Receiver::register_buffer(v32, v33);
    }
  }

  else
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *lock = 136316162;
      *&lock[4] = "Core_Audio_Driver.mm";
      *&lock[12] = 1024;
      *&lock[14] = 499;
      *&lock[18] = 1024;
      *&lock[20] = buffer_key;
      v42 = 1024;
      v43 = HIDWORD(buffer_key);
      v44 = 1024;
      v45 = v6;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Buffer was already registered! device id: %u, client id: %u, stream id: %u", lock, 0x24u);
    }
  }

  os_unfair_lock_unlock(i);
  v34 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)object_was_destroyed:(unsigned int)object_was_destroyed reply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  [(Core_Audio_Driver *)self m_property_type_info];
  Property_Type_Info::remove_custom_properties(v8, object_was_destroyed);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  replyCopy[2](replyCopy, 0);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)create_device:(id)create_device client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  create_deviceCopy = create_device;
  bundle_idCopy = bundle_id;
  replyCopy = reply;
  v20 = 0;
  v21[0] = client_id;
  v21[1] = process_id;
  v23 = bundle_idCopy;
  is_native_endianessCopy = is_native_endianess;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v18 = ((*asp_interface)->CreateDevice)(asp_interface, create_deviceCopy, v21, &v20);
  replyCopy[2](replyCopy, v18, v20);

  v19 = *MEMORY[0x1E69E9840];
}

- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver
{
  [(Core_Audio_Driver *)self io_receiver_lock];
  os_unfair_lock_lock(lock);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  [(Core_Audio_Driver *)self io_receivers];
  for (i = *&lock[4]._os_unfair_lock_opaque; i; i = *i)
  {
    if (*(i + 4) == destroy_io_receiver)
    {
      operator new();
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  os_unfair_lock_unlock(lock);
  return 0;
}

- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver client_id:(unsigned int)client_id
{
  [(Core_Audio_Driver *)self io_receiver_lock];
  os_unfair_lock_lock(lock);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  [(Core_Audio_Driver *)self io_receivers];
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(lock, destroy_io_receiver, client_id);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  os_unfair_lock_unlock(lock);
  return 0;
}

- (int)create_and_start_io_receiver:(unsigned int)create_and_start_io_receiver client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger
{
  v42 = *MEMORY[0x1E69E9840];
  work_group_portCopy = work_group_port;
  io_messengerCopy = io_messenger;
  if (io_messengerCopy)
  {
    [(Core_Audio_Driver *)self asp_interface];
    [(Core_Audio_Driver *)self io_receiver_lock];
    os_unfair_lock_lock(*buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    [(Core_Audio_Driver *)self io_receivers];
    v12 = *(*buf + 16);
    [(Core_Audio_Driver *)self io_receivers];
    if (v12)
    {
      while (*(v12 + 4) != create_and_start_io_receiver || *(v12 + 5) != client_id)
      {
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_8;
        }
      }

      v13 = 0;
    }

    else
    {
LABEL_8:
      v13 = 1;
    }

    if (v27.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27.__imp_.__imp_);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    [(Core_Audio_Driver *)self io_receivers];
    v18 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v13)
    {
      [io_messengerCopy object];
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v22;
      AMCP::Log::Scope::get_os_log_t(*v22);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v24 = *v22;
      AMCP::Log::Scope::get_os_log_t(*v22);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 286;
      v37 = 2080;
      v38 = "find_result != self.io_receivers->end()";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO Messenger was already created", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v33, "IO Messenger was already created");
    std::runtime_error::runtime_error(&v27, &v33);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v27.__vftable = &unk_1F5992170;
    v28 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v27);
    v39 = "[Core_Audio_Driver create_and_start_io_receiver:client_id:nominal_sample_rate:io_buffer_frame_size:work_group_port:io_messenger:]";
    v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    LODWORD(v41) = 286;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
  }

  v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v14 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(0);
  }

  v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *v15;
    AMCP::Log::Scope::get_os_log_t(*v15);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v17 = *v15;
    AMCP::Log::Scope::get_os_log_t(*v15);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "Core_Audio_Driver.mm";
    *&buf[12] = 1024;
    *&buf[14] = 274;
    _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d io messenger/buffer is nil", buf, 0x12u);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 1852797029;
}

- (void)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply
{
  replyCopy = reply;
  concurrent_queue = [(Core_Audio_Driver *)self concurrent_queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply___block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10_e5_v8__0l;
  selfCopy = self;
  v13 = _Block_copy(replyCopy);
  v14 = selfCopy;
  v16 = v14;
  abort_device_configuration_changeCopy = abort_device_configuration_change;
  actionCopy = action;
  changeCopy = change;
  v20 = _Block_copy(v13);
  dispatch_async(concurrent_queue, block);
}

- (void)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply
{
  replyCopy = reply;
  concurrent_queue = [(Core_Audio_Driver *)self concurrent_queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply___block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9_e5_v8__0l;
  selfCopy = self;
  v13 = _Block_copy(replyCopy);
  v14 = selfCopy;
  v16 = v14;
  perform_device_configuration_changeCopy = perform_device_configuration_change;
  actionCopy = action;
  changeCopy = change;
  v20 = _Block_copy(v13);
  dispatch_async(concurrent_queue, block);
}

- (void)initialize:(id)initialize reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = 2003329396;
  initializeCopy = initialize;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v10 = [[Core_Audio_Driver_Host_Proxy alloc] init_with_host_endpoint:initializeCopy driver:self];
  [(Core_Audio_Driver *)self setDriver_host_proxy:v10];

  driver_host_proxy = [(Core_Audio_Driver *)self driver_host_proxy];
  get_host_interface = [driver_host_proxy get_host_interface];

  if (asp_interface && get_host_interface)
  {
    v6 = ((*asp_interface)->Initialize)(asp_interface, get_host_interface);
  }

  replyCopy[2](replyCopy, v6);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)store_change_info:(void *)store_change_info for_token:(unint64_t)for_token
{
  v35 = *MEMORY[0x1E69E9840];
  [(Core_Audio_Driver *)self config_change_info_lock];
  os_unfair_lock_lock(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  config_change_info_map = [(Core_Audio_Driver *)self config_change_info_map];
  v7 = *(v29 + 8);
  if (!v7)
  {
LABEL_16:
    operator new();
  }

  v8 = v29 + 8;
  v9 = *(v29 + 8);
  do
  {
    v10 = *(v9 + 32);
    v11 = v10 >= for_token;
    v12 = v10 < for_token;
    if (v11)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * v12);
  }

  while (v9);
  if (v8 != v29 + 8 && *(v8 + 32) <= for_token)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(config_change_info_map);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v17;
      AMCP::Log::Scope::get_os_log_t(*v17);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v19 = *v17;
      AMCP::Log::Scope::get_os_log_t(*v17);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 135;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: change token/info item is already in the map", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v21, "change token/info item is already in the map!");
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    v32 = "[Core_Audio_Driver store_change_info:for_token:]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v34 = 135;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  while (1)
  {
    while (1)
    {
      v13 = v7;
      v14 = v7[4];
      if (v14 <= for_token)
      {
        break;
      }

      v7 = *v13;
      if (!*v13)
      {
        goto LABEL_16;
      }
    }

    if (v14 >= for_token)
    {
      break;
    }

    v7 = v13[1];
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  os_unfair_lock_unlock(*buf);
  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599BDF0];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_16029];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__Core_Audio_Driver_listener_shouldAcceptNewConnection___block_invoke_2;
  v8[3] = &unk_1E8678318;
  v8[4] = self;
  [connectionCopy setInvalidationHandler:v8];
  [connectionCopy resume];

  return 1;
}

- (void)dealloc
{
  asp_interface = self->_asp_interface;
  if (asp_interface)
  {
    Release = (*asp_interface)->Release;
    if (Release)
    {
      Release();
      self->_asp_interface = 0;
    }
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    v6 = self->_listener;
    self->_listener = 0;
  }

  driver_host_proxy = self->_driver_host_proxy;
  self->_driver_host_proxy = 0;

  v8.receiver = self;
  v8.super_class = Core_Audio_Driver;
  [(Core_Audio_Driver *)&v8 dealloc];
}

- (id)init_driver_interface:(AudioServerPlugInDriverInterface *)init_driver_interface invalidation_handler:(function<void)(
{
  v6 = [(Core_Audio_Driver *)self init];
  if (v6)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v6->_listener;
    v6->_listener = anonymousListener;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
    listener = [(Core_Audio_Driver *)v6 listener];
    endpoint = [listener endpoint];
    endpoint = v6->_endpoint;
    v6->_endpoint = endpoint;

    std::function<void ()(void)>::operator=(v6->_m_invalidation_handler.__f_.__buf_.__data, a4);
    v6->_asp_interface = init_driver_interface;
    if (init_driver_interface)
    {
      AddRef = (*init_driver_interface)->AddRef;
      if (AddRef)
      {
        (AddRef)(init_driver_interface);
      }
    }
  }

  return v6;
}

- (Core_Audio_Driver)init
{
  v8.receiver = self;
  v8.super_class = Core_Audio_Driver;
  v2 = [(Core_Audio_Driver *)&v8 init];
  v3 = v2;
  if (v2)
  {
    listener = v2->_listener;
    v2->_listener = 0;

    endpoint = v3->_endpoint;
    v3->_endpoint = 0;

    driver_host_proxy = v3->_driver_host_proxy;
    v3->_driver_host_proxy = 0;

    v3->_asp_interface = 0;
    v3->_host_interface = 0;
    operator new();
  }

  return 0;
}

@end