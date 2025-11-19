void sub_1DE6A27B4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(uint64_t *a1, uint64_t **a2, double a3, double a4)
{
  v40 = *MEMORY[0x1E69E9840];
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(a2);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v29, a2, a3, a4);
  v9 = v29;
  v11 = *a1;
  v10 = a1[1];
  if (v30 - v29 != v10 - *a1)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "PCM_Operation_Context.cpp";
      v33 = 1024;
      v34 = 430;
      v35 = 2080;
      v36 = "not (dest_data.size() == samples.size())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s source and dest layout must be the same!", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("source and dest layout must be the same!", &v20);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v37 = "void AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(const Sample_Group<float> &, Container, Sample_Time_Range) const";
    v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v39 = 430;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  while (v11 != v10 && v9 != v30)
  {
    v12 = *(v9 + 8);
    if (v12 >= *(v11 + 8))
    {
      v12 = *(v11 + 8);
    }

    if (v12)
    {
      memcpy(*v9, *v11, 4 * v12);
      v10 = a1[1];
    }

    v11 += 16;
    v9 += 16;
  }

  result = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v29);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

double AMCP::DAL::PCM_Operation_Context::convert_audio_format(AudioConverterRef *a1, void *a2, double *a3, uint64_t *a4, double a5, double a6, double a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1[6])
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 372;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_audio_converter)";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &outOutputData);
    std::logic_error::logic_error(&v37, &outOutputData);
    v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5991430;
    v39 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v38);
    v48 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v50 = 372;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v14 = *a4;
  if (*a4)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0.0;
  }

  if (*a3 != v15)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 373;
      *&buf[18] = 2080;
      *&buf[20] = "not (source_format.mSampleRate == dest_container.get_format().mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &outOutputData);
    std::logic_error::logic_error(&v37, &outOutputData);
    v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5991430;
    v39 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v38);
    v48 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v50 = 373;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a4);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v37, v14, a6, a7);
  AMCP::DAL::create_abl(&v45, a2, a3);
  v16 = *a4;
  if (*a4)
  {
    *buf = *(v16 + 8);
    *&buf[16] = *(v16 + 24);
    v48 = *(v16 + 40);
  }

  else
  {
    v48 = 0;
    memset(buf, 0, sizeof(buf));
  }

  AMCP::DAL::create_abl(&outOutputData, &v37, buf);
  v17 = AudioConverterConvertComplexBuffer(a1[6], vcvtmd_s64_f64(a5), v45, outOutputData.__r_.__value_.__l.__data_);
  if (v17)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 381;
      *&buf[18] = 2080;
      *&buf[20] = "not (the_error == noErr)";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::convert_audio_format: AudioConverterConvertComplexBuffer failed", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("PCM_Operation_Context::convert_audio_format: AudioConverterConvertComplexBuffer failed", &v34);
    std::logic_error::logic_error(&v35, &v34);
    v35.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v38, &v35);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5991430;
    v39 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v38);
    v48 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v50 = 381;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&outOutputData, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&outOutputData.__r_.__value_.__l.__size_);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v45, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v46);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v37);
  v18 = *MEMORY[0x1E69E9840];
  return a6;
}

void sub_1DE6A3534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a39, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a40);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((v44 - 216), 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v44 - 208);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device::~Device(AMCP::IO_Core::Device *this)
{
  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::IO_Core::Device_Node_State::for_each_stream_connection(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = (result + 40 * a2 + 24);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = *(a3 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v5 + 48))(v5, v4 + 7);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t AMCP::IO_Core::Device_Node_State::for_each_stream_connection(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 1;
  v4 = result + 8;
  do
  {
    for (i = *(v4 + 40 * *(v8 + v3) + 16); i; i = *i)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v6 + 48))(v6, i + 7);
    }

    v3 += 4;
  }

  while (v3 != 8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State14prepare_deviceEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208))
  {
    if (!*(a2 + 272))
    {
      operator new();
    }
  }
}

void sub_1DE6A399C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State37set_cycle_meta_data_for_audio_captureERKNS_5Graph18IO_Proc_Cycle_InfoEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 208))
  {
    return;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 10);
  if (*(a2 + 264) == 1)
  {
    host_time = AMCP::DAL::DAL_Time::get_host_time(v4);
    if (host_time <= AMCP::DAL::DAL_Time::get_host_time((a2 + 224)))
    {
      return;
    }

    if (*(a2 + 264))
    {
      *(a2 + 224) = *(v3 + 20);
      *(a2 + 232) = v3[11];
      v6 = v3[13];
      *(a2 + 240) = v3[12];
      v7 = v3[14];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a2 + 256);
      *(a2 + 248) = v6;
      *(a2 + 256) = v7;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      return;
    }

    v4 = (v3 + 10);
  }

  v9 = *v4;
  *(a2 + 240) = *(v4 + 2);
  *(a2 + 224) = v9;
  v10 = v3[14];
  *(a2 + 248) = v3[13];
  *(a2 + 256) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 264) = 1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5988CE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State14end_processingEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 280);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State16register_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 192);
  v6 = *(a2 + 200);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 56))(&v8);
  if (v8)
  {
    (*(*v8 + 56))(&v10);
  }

  else
  {
    v10 = 0;
    v11[3] = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(*v4 + 384))(v4, *(a2 + 48), *(a2 + 40), *(v10 + 12), *(v10 + 16));
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v10, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE6A3ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988DE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988DE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988DE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State18unregister_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 192);
  v6 = *(a2 + 200);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 56))(&v8);
  if (v8)
  {
    (*(*v8 + 56))(&v10);
  }

  else
  {
    v10 = 0;
    v11[3] = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(*v4 + 392))(v4, *(a2 + 48), *(a2 + 40), *(v10 + 12), *(v10 + 16));
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v10, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE6A429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988E60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988E60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988E60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN4AMCP3DAL24Multi_Reader_Ring_BufferEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v11[0] = HIBYTE(v6);
      v11[1] = BYTE2(v6);
      v11[2] = BYTE1(v6);
      v9 = v6;
      v11[3] = v6;
      v11[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "CAMutex.cpp";
        v14 = 1024;
        v15 = 224;
        v16 = 1024;
        v17 = v9;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v9;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "CAMutex.cpp";
        v9 = 1024;
        v10 = 152;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "CAMutex.cpp";
    v9 = 1024;
    v10 = 160;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v7 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "CAMutex.cpp";
        v11 = 1024;
        v12 = 106;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v7;
    }

    atomic_store(v2, this + 2);
  }

  result = v3 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5988F30;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5988F30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAMutex.cpp";
      v10 = 1024;
      v11 = 56;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return this;
}

void HALS_OverloadMessage::perform(HALS_OverloadMessage *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v5 = v3;
  if (v3)
  {
    v17.__loc_.__locale_ = 0x676C6F6261697273;
    LODWORD(v17.__ct_) = 0;
    v6 = (*(*v3 + 112))(v3, v2, &v17, 0, 0, 0);
    v7 = v6;
    if (v6)
    {
      if (v6 >= 8)
      {
        if (v6 >> 3)
        {
          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v6 >> 3);
        }

        bzero(0, 0);
      }

      LODWORD(v14[0]) = 0;
      (*(*v5 + 120))(v5, v2, &v17, v7, v14, 0, 0, 0, 0);
    }
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  v8 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 1));
  if (v8)
  {
    v11 = v8;
    v12 = &unk_1F5991008;
    v13 = HALS_IOContext::CopyDescription(v8);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v15, v13, @"grid-in");
    if (v16)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v17, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}|[a-fA-F0-9.]{5}|[a-fA-F0-9-]{4}");
    }

    OS::CF::UntypedObject::~UntypedObject(v15);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v10, v13, @"grid-out");
    if (v16)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v17, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}|[a-fA-F0-9.]{5}|[a-fA-F0-9-]{4}");
    }

    OS::CF::UntypedObject::~UntypedObject(v15);
    OS::CF::UntypedObject::~UntypedObject(&v12);
    v8 = v11;
  }

  HALS_ObjectMap::ReleaseObject(v8, v9);
  HALS_OverloadMessage::OverloadDictionary::AssembleDictionary();
}

void sub_1DE6A573C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, char a58)
{
  OS::CF::UntypedObject::~UntypedObject((v58 - 240));
  OS::CF::UntypedObject::~UntypedObject((v58 - 224));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v58 - 192));
  OS::CF::UntypedObject::~UntypedObject((v58 - 208));
  OS::CF::UntypedObject::~UntypedObject(&a41);
  HALS_ObjectMap::ReleaseObject(a11, v60);
  HALS_OverloadMessage::OverloadDictionary::~OverloadDictionary(&a17);
  _Unwind_Resume(a1);
}

void sub_1DE6A58B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6A58C4);
  }

  JUMPOUT(0x1DE6A58CCLL);
}

void sub_1DE6A7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  STACK[0x4B0] = &STACK[0x498];
  std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  _Block_object_dispose(&STACK[0x500], 8);
  STACK[0x4B0] = a23;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  if (STACK[0x490])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x490]);
  }

  if (STACK[0x480])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x480]);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  OS::CF::UntypedObject::~UntypedObject(&a32);
  OS::CF::UntypedObject::~UntypedObject(&a34);
  OS::CF::UntypedObject::~UntypedObject(&a36);
  OS::CF::UntypedObject::~UntypedObject(&a38);
  OS::CF::UntypedObject::~UntypedObject(&a40);
  OS::CF::UntypedObject::~UntypedObject(&a42);
  OS::CF::UntypedObject::~UntypedObject(&a44);
  OS::CF::UntypedObject::~UntypedObject(&a46);
  OS::CF::UntypedObject::~UntypedObject(&a48);
  OS::CF::UntypedObject::~UntypedObject(&a50);
  OS::CF::UntypedObject::~UntypedObject(&a52);
  OS::CF::UntypedObject::~UntypedObject(&a54);
  OS::CF::UntypedObject::~UntypedObject(&a56);
  OS::CF::UntypedObject::~UntypedObject(&a58);
  OS::CF::UntypedObject::~UntypedObject(&a62);
  OS::CF::UntypedObject::~UntypedObject(&a64);
  OS::CF::UntypedObject::~UntypedObject(&a66);
  OS::CF::UntypedObject::~UntypedObject(&a68);
  OS::CF::UntypedObject::~UntypedObject(&a70);
  OS::CF::UntypedObject::~UntypedObject(&a72);
  OS::CF::UntypedObject::~UntypedObject(&a73);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x200]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x210]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x220]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x230]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x240]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x250]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x260]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x270]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x280]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x290]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2A0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2B0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2D0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2E0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2F0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x300]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x310]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x320]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x330]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x340]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x350]);
  MEMORY[0x1E12C1730](a10, 0x1020C40374504DCLL);
  _Unwind_Resume(a1);
}

std::string *OverloadReasonSet::getOverloadReasonList(std::string *this, void *a2)
{
  v2 = this;
  if (*a2)
  {
    v4 = 0;
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    while (((*a2 >> v4) & 1) == 0)
    {
LABEL_12:
      if (++v4 == 64)
      {
        return this;
      }
    }

    if ((*(v2 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 8))
      {
LABEL_9:
        v5 = "PageFaultsOnIOThread";
        if ((v4 - 1) <= 5u)
        {
          v5 = off_1E8678678[(v4 - 1)];
        }

        v6 = strlen(v5);
        this = std::string::append(v2, v5, v6);
        goto LABEL_12;
      }
    }

    else if (!*(v2 + 23))
    {
      goto LABEL_9;
    }

    std::string::append(v2, ",", 1uLL);
    goto LABEL_9;
  }

  return std::string::basic_string[abi:ne200100]<0>(this, "Unknown");
}

void sub_1DE6A7F04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_OverloadMessage::OverloadDictionary::~OverloadDictionary(void **this)
{
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 3));
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_17820()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void *OS::CF::Number::Number<unsigned long long>(void *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void *OS::CF::Number::Number<double>(void *a1, double a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void *OS::CF::Number::Number<long long>(void *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

uint64_t GetTransportType(const HALS_Device *a1)
{
  v1 = *(a1 + 4);
  v5 = 0x676C6F627472616ELL;
  v6 = 0;
  v3 = 0;
  v4 = 4;
  (*(*a1 + 120))(a1, v1, &v5, 4, &v4, &v3, 0, 0, 0);
  return v3;
}

const char *GetDeviceTransportName(int a1)
{
  if (a1 > 1735554415)
  {
    if (a1 > 1953002861)
    {
      if (a1 > 1986622067)
      {
        if (a1 == 1986622068)
        {
          return "Virtual";
        }

        if (a1 == 1986818665)
        {
          return "SystemCapture";
        }
      }

      else
      {
        if (a1 == 1953002862)
        {
          return "Thunderbolt";
        }

        if (a1 == 1970496032)
        {
          return "USB";
        }
      }
    }

    else if (a1 > 1835169138)
    {
      if (a1 == 1835169139)
      {
        return "MikeyBus";
      }

      if (a1 == 1885563168)
      {
        return "PCI";
      }
    }

    else
    {
      if (a1 == 1735554416)
      {
        return "Aggregate";
      }

      if (a1 == 1751412073)
      {
        return "HDMI";
      }
    }
  }

  else if (a1 > 1651275108)
  {
    if (a1 > 1685090931)
    {
      if (a1 == 1685090932)
      {
        return "DisplayPort";
      }

      if (a1 == 1700886114)
      {
        return "AVB";
      }
    }

    else
    {
      if (a1 == 1651275109)
      {
        return "Bluetooth";
      }

      if (a1 == 1668506482)
      {
        return "ContinuityScreen";
      }
    }
  }

  else if (a1 > 1651271008)
  {
    if (a1 == 1651271009)
    {
      return "BluetoothLE";
    }

    if (a1 == 1651274862)
    {
      return "BuiltIn";
    }
  }

  else
  {
    if (a1 == 825440564)
    {
      return "FireWire";
    }

    if (a1 == 1634300528)
    {
      return "AirPlay";
    }
  }

  return "Unknown";
}

uint64_t GetMasterDataSourceValue(const HALS_Device *a1, int a2)
{
  if (a2)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  v3 = (*(*a1 + 648))(a1, 1685287523, v2, 0);
  v5 = v3;
  if (v3)
  {
    SelectorControlValue = HALS_Control::GetSelectorControlValue(v3);
  }

  else
  {
    SelectorControlValue = 0;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return SelectorControlValue;
}

const char *GetMasterDataSourceName(int a1)
{
  if (a1 > 1768778082)
  {
    if (a1 > 1818848868)
    {
      if (a1 == 1818848869)
      {
        return "Line";
      }

      if (a1 == 1936745574)
      {
        return "SPDIF";
      }
    }

    else
    {
      if (a1 == 1768778083)
      {
        return "Internal Microphone";
      }

      if (a1 == 1769173099)
      {
        return "Internal Speaker";
      }
    }
  }

  else if (a1 > 1702064234)
  {
    if (a1 == 1702064235)
    {
      return "External Speaker";
    }

    if (a1 == 1751412846)
    {
      return "Headphones";
    }
  }

  else
  {
    if (a1 == 1667506208)
    {
      return "CD";
    }

    if (a1 == 1701669219)
    {
      return "External Microphone";
    }
  }

  return "Unknown";
}

uint64_t AMCP::get_box_property_traits_list(AMCP *this)
{
  {
    AMCP::get_box_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_box_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_box_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_box_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_box_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_box_property_traits_list(void)::$_0 &&>>()
{
  v27[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1651861860, 1, 1, 0, &AMCP::Property_Traits<1651861860u>::k_valid_scopes, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, 0, 1651861860, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1953653102, 1, 0, 0, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, 0, 1953653102, 23);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1651007861, 1, 0, 0, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, &AMCP::Property_Traits<1651013225u>::k_valid_scopes, 0, 1651007861, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1651013225, 1, 0, 0, &AMCP::Property_Traits<1651013225u>::k_valid_scopes, &AMCP::Property_Traits<1651010921u>::k_valid_scopes, 0, 1651013225, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1651010921, 1, 0, 0, &AMCP::Property_Traits<1651010921u>::k_valid_scopes, &AMCP::Property_Traits<1651536495u>::k_valid_scopes, 0, 1651010921, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1651536495, 1, 0, 0, &AMCP::Property_Traits<1651536495u>::k_valid_scopes, &AMCP::Property_Traits<1652060014u>::k_valid_scopes, 0, 1651536495, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1652060014, 1, 0, 1, &AMCP::Property_Traits<1652060014u>::k_valid_scopes, &AMCP::Property_Traits<1652060006u>::k_valid_scopes, 0, 1652060014, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v25, 1652060006, 1, 0, 0, &AMCP::Property_Traits<1652060006u>::k_valid_scopes, &AMCP::Property_Traits<1650751011u>::k_valid_scopes, 0, 1652060006, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v26, 1650751011, 1, 0, 0, &AMCP::Property_Traits<1650751011u>::k_valid_scopes, &AMCP::Property_Traits<1650682915u>::k_valid_scopes, 0, 0, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v27, 1650682915, 1, 0, 0, &AMCP::Property_Traits<1650682915u>::k_valid_scopes, &AMCP::Property_Traits<1969841184u>::k_valid_scopes, 0, 0, 14);
  operator new();
}

void sub_1DE6A8EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1344;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

void AMCP::IOAudio2::Control::~Control(AMCP::IOAudio2::Control *this)
{
  AMCP::IOAudio2::Control::~Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = this;
  v30 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59896E8;
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Control.cpp";
        v26 = 1024;
        v27 = 56;
        v28 = 1024;
        v29 = v19;
        v20 = v17;
        v21 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v20, v21, "%32s:%-5d Tore down Control with object id %u", &v24, 0x18u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Control.cpp";
        v26 = 1024;
        v27 = 56;
        v28 = 1024;
        v29 = v18;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tore down Control with object id %u", &v24, 0x18u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v1 + 8);
        v24 = 136315650;
        v25 = "IOAudio2_Control.cpp";
        v26 = 1024;
        v27 = 56;
        v28 = 1024;
        v29 = v22;
        v20 = v9;
        v21 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(v1);
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1DE6A9210(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IOAudio2::Control::build_core(AMCP::IOAudio2::Control *this)
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Core::Broker::reserve_id(*(*(**(this + 3) + 32) + 16));
  *(this + 8) = v2;
  *v76 = 0u;
  *v77 = 0u;
  v78 = 1065353216;
  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    v2 = AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  switch(v6)
  {
    case 1:
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(this + 8);
        v37 = *(this + 12);
        v35.i32[0] = bswap32(*(this + 13));
        v38 = vzip1_s8(v35, v35);
        v39.i64[0] = 0x1F0000001FLL;
        v39.i64[1] = 0x1F0000001FLL;
        v40.i64[0] = 0x1F0000001FLL;
        v40.i64[1] = 0x1F0000001FLL;
        v41.i64[0] = 0x5F0000005FLL;
        v41.i64[1] = 0x5F0000005FLL;
        v42 = vbsl_s8(vmovn_s32(vcgtq_u32(v41, vsraq_n_s32(v40, vshlq_n_s32(vmovl_u16(v38), 0x18uLL), 0x18uLL))), v38, 0x2E002E002E002ELL);
        v75 = 4;
        v43 = vuzp1_s8(v42, v42);
        LODWORD(v73) = v43.i32[0];
        BYTE4(v73) = 0;
        v43.i32[0] = bswap32(v37);
        v44 = vzip1_s8(v43, v43);
        v45.i64[0] = 0x1F0000001FLL;
        v45.i64[1] = 0x1F0000001FLL;
        v46 = vbsl_s8(vmovn_s32(vcgtq_u32(v41, vsraq_n_s32(v45, vshlq_n_s32(vmovl_u16(v44), 0x18uLL), 0x18uLL))), v44, 0x2E002E002E002ELL);
        v72 = 4;
        v47 = vuzp1_s8(v46, v46);
        LODWORD(cf) = v47.i32[0];
        BYTE4(cf) = 0;
        v48 = *(this + 15);
        v47.i32[0] = bswap32(*(this + 14));
        v49 = vzip1_s8(v47, v47);
        v70 = 4;
        v50 = vbsl_s8(vmovn_s32(vcgtq_u32(v41, vsraq_n_s32(v39, vshlq_n_s32(vmovl_u16(v49), 0x18uLL), 0x18uLL))), v49, 0x2E002E002E002ELL);
        LODWORD(__p[0]) = vuzp1_s8(v50, v50).u32[0];
        BYTE4(__p[0]) = 0;
        buf = 136316674;
        buf_4 = "IOAudio2_Control.cpp";
        v81 = 1024;
        v82 = 64;
        v83 = 1024;
        v84 = v36;
        v85 = 2080;
        v86 = &v73;
        v87 = 2080;
        p_cf = &cf;
        v89 = 2080;
        v90 = __p;
        v91 = 1024;
        v92 = v48;
        v51 = v18;
        v52 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v51, v52, "%32s:%-5d Building Core %u for Control (%s, %s, %s, %u)", &buf, 0x3Cu);
        goto LABEL_30;
      }

      break;
    case 2:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(this + 8);
        v21 = *(this + 12);
        v19.i32[0] = bswap32(*(this + 13));
        v22 = vzip1_s8(v19, v19);
        v23.i64[0] = 0x1F0000001FLL;
        v23.i64[1] = 0x1F0000001FLL;
        v24.i64[0] = 0x1F0000001FLL;
        v24.i64[1] = 0x1F0000001FLL;
        v25.i64[0] = 0x5F0000005FLL;
        v25.i64[1] = 0x5F0000005FLL;
        v26 = vbsl_s8(vmovn_s32(vcgtq_u32(v25, vsraq_n_s32(v24, vshlq_n_s32(vmovl_u16(v22), 0x18uLL), 0x18uLL))), v22, 0x2E002E002E002ELL);
        v75 = 4;
        v27 = vuzp1_s8(v26, v26);
        LODWORD(v73) = v27.i32[0];
        BYTE4(v73) = 0;
        v27.i32[0] = bswap32(v21);
        v28 = vzip1_s8(v27, v27);
        v29.i64[0] = 0x1F0000001FLL;
        v29.i64[1] = 0x1F0000001FLL;
        v30 = vbsl_s8(vmovn_s32(vcgtq_u32(v25, vsraq_n_s32(v29, vshlq_n_s32(vmovl_u16(v28), 0x18uLL), 0x18uLL))), v28, 0x2E002E002E002ELL);
        v72 = 4;
        v31 = vuzp1_s8(v30, v30);
        LODWORD(cf) = v31.i32[0];
        BYTE4(cf) = 0;
        v32 = *(this + 15);
        v31.i32[0] = bswap32(*(this + 14));
        v33 = vzip1_s8(v31, v31);
        v70 = 4;
        v34 = vbsl_s8(vmovn_s32(vcgtq_u32(v25, vsraq_n_s32(v23, vshlq_n_s32(vmovl_u16(v33), 0x18uLL), 0x18uLL))), v33, 0x2E002E002E002ELL);
        LODWORD(__p[0]) = vuzp1_s8(v34, v34).u32[0];
        BYTE4(__p[0]) = 0;
        buf = 136316674;
        buf_4 = "IOAudio2_Control.cpp";
        v81 = 1024;
        v82 = 64;
        v83 = 1024;
        v84 = v20;
        v85 = 2080;
        v86 = &v73;
        v87 = 2080;
        p_cf = &cf;
        v89 = 2080;
        v90 = __p;
        v91 = 1024;
        v92 = v32;
        _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Building Core %u for Control (%s, %s, %s, %u)", &buf, 0x3Cu);
LABEL_30:
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (v72 < 0)
        {
          operator delete(cf);
        }

        if (v75 < 0)
        {
          operator delete(v73);
        }
      }

      break;
    case 3:
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v54 = *(this + 8);
        v55 = *(this + 12);
        v53.i32[0] = bswap32(*(this + 13));
        v56 = vzip1_s8(v53, v53);
        v57.i64[0] = 0x1F0000001FLL;
        v57.i64[1] = 0x1F0000001FLL;
        v58.i64[0] = 0x1F0000001FLL;
        v58.i64[1] = 0x1F0000001FLL;
        v59.i64[0] = 0x5F0000005FLL;
        v59.i64[1] = 0x5F0000005FLL;
        v60 = vbsl_s8(vmovn_s32(vcgtq_u32(v59, vsraq_n_s32(v58, vshlq_n_s32(vmovl_u16(v56), 0x18uLL), 0x18uLL))), v56, 0x2E002E002E002ELL);
        v75 = 4;
        v61 = vuzp1_s8(v60, v60);
        LODWORD(v73) = v61.i32[0];
        BYTE4(v73) = 0;
        v61.i32[0] = bswap32(v55);
        v62 = vzip1_s8(v61, v61);
        v63.i64[0] = 0x1F0000001FLL;
        v63.i64[1] = 0x1F0000001FLL;
        v64 = vbsl_s8(vmovn_s32(vcgtq_u32(v59, vsraq_n_s32(v63, vshlq_n_s32(vmovl_u16(v62), 0x18uLL), 0x18uLL))), v62, 0x2E002E002E002ELL);
        v72 = 4;
        v65 = vuzp1_s8(v64, v64);
        LODWORD(cf) = v65.i32[0];
        BYTE4(cf) = 0;
        v66 = *(this + 15);
        v65.i32[0] = bswap32(*(this + 14));
        v67 = vzip1_s8(v65, v65);
        v70 = 4;
        v68 = vbsl_s8(vmovn_s32(vcgtq_u32(v59, vsraq_n_s32(v57, vshlq_n_s32(vmovl_u16(v67), 0x18uLL), 0x18uLL))), v67, 0x2E002E002E002ELL);
        LODWORD(__p[0]) = vuzp1_s8(v68, v68).u32[0];
        BYTE4(__p[0]) = 0;
        buf = 136316674;
        buf_4 = "IOAudio2_Control.cpp";
        v81 = 1024;
        v82 = 64;
        v83 = 1024;
        v84 = v54;
        v85 = 2080;
        v86 = &v73;
        v87 = 2080;
        p_cf = &cf;
        v89 = 2080;
        v90 = __p;
        v91 = 1024;
        v92 = v66;
        v51 = v10;
        v52 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      break;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v73 = 0x676C6F6269646E74;
  LODWORD(v74) = 0;
  LODWORD(cf) = *(this + 8);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>();
}

void sub_1DE6A9BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio2::Control::update_value(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x736C6472, *(a1 + 52)))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(cf, v2, @"value");
      if (cf[0])
      {
        applesauce::CF::convert_to<unsigned int,0>(cf[0]);
        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_21;
  }

  if (AMCP::is_base_of(0x6C65766C, *(a1 + 52)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const*>(v15, v3, @"range map");
      AMCP::IOAudio2::make_level_map(cf, v15);
      operator new();
    }

    goto LABEL_21;
  }

  if (AMCP::is_base_of(0x746F676C, *(a1 + 52)))
  {
    cf[0] = @"value";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    operator new();
  }

  if (AMCP::is_base_of(0x736C6374, *(a1 + 52)))
  {
    cf[0] = @"multi-selector";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::IOAudio2::Device::get_device_connection(&v14, **(*(a1 + 24) + 376));
    v4 = *(a1 + 32);
    v5 = **(a1 + 24);
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  result = AMCP::is_base_of(0x7370616E, *(a1 + 52));
  if (result)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(cf, v9, @"value");
      if (cf[0])
      {
        applesauce::CF::convert_to<unsigned int,0>(cf[0]);
        operator new();
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v13, "Could not construct");
      __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_21:
    v12 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v12);
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6AB6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, io_connect_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, io_connect_t connect, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, std::__shared_weak_count *a33, uint64_t a34)
{
  __cxa_free_exception(v37);
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  IOConnectRelease(v36);
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio2::Control::update_range(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x736C6472, *(a1 + 52)))
  {
    cf[0] = @"read only";
    v5 = 0x676C6F626372646FLL;
    LODWORD(v6) = 0;
    LOBYTE(v4) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  if (AMCP::is_base_of(0x6C65766C, *(a1 + 52)))
  {
    cf[0] = @"read only";
    v5 = 0x676C6F626372646FLL;
    LODWORD(v6) = 0;
    LOBYTE(v4) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  if (AMCP::is_base_of(0x746F676C, *(a1 + 52)))
  {
    cf[0] = @"read only";
    v5 = 0x676C6F626372646FLL;
    LODWORD(v6) = 0;
    LOBYTE(v4) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  if (AMCP::is_base_of(0x736C6374, *(a1 + 52)))
  {
    cf[0] = @"read only";
    v5 = 0x676C6F626372646FLL;
    LODWORD(v6) = 0;
    LOBYTE(v4) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  result = AMCP::is_base_of(0x7370616E, *(a1 + 52));
  if (result)
  {
    cf[0] = @"read only";
    v5 = 0x676C6F626372646FLL;
    LODWORD(v6) = 0;
    LOBYTE(v4) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>((a1 + 40), cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6AC850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  __cxa_free_exception(v25);
  applesauce::CF::NumberRef::~NumberRef(&__p);
  _Unwind_Resume(a1);
}

void sub_1DE6ACCE0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,std::tuple<unsigned int,unsigned int> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,std::tuple<unsigned int,unsigned int> const&)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINSt3__15tupleIJjjEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,std::tuple<unsigned int,unsigned int> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::tuple<unsigned int,unsigned int>>(AMCP::Address const&,std::tuple<unsigned int,unsigned int> const&)::{lambda(void)#1}>,std::tuple<unsigned int,unsigned int> ()(void)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5989BF0;
  a2[1] = *(result + 8);
  return result;
}

void AMCP::IOAudio2::make_level_map(AMCP::IOAudio2 *this, CFArrayRef *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_51;
  }

  if (!CFArrayGetCount(*a2))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315650;
      *&cf[4] = "IOAudio2_Control.cpp";
      v35 = 1024;
      v36 = 32;
      v37 = 2080;
      v38 = "in_range_map->get_size() > 0";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s there needs to be at least one item in the range map", cf, 0x1Cu);
    }

    abort();
  }

  if (!*a2)
  {
LABEL_51:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v33, *a2, 0);
  if (!v33)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(cf, v33, @"start int value");
  if (!*cf)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = applesauce::CF::convert_to<unsigned int,0>(*cf);
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (!*a2)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v29);
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v33, *a2, 0);
  if (!v33)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v30, "Could not construct");
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(cf, v33, @"start db value");
  if (!*cf)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::convert_to<long long,0>(*cf);
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v6 = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(v6);
    v8 = Count;
    v9 = *a2;
    if (*a2)
    {
      v32 = CFArrayGetCount(*a2);
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v32 = 0;
      if (!Count)
      {
        goto LABEL_32;
      }
    }

    if (v6 != v9 || v32)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(cf, v6, 0);
      if (*cf)
      {
        applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v33, *cf, @"integer steps");
        if (v33)
        {
          applesauce::CF::convert_to<unsigned int,0>(v33);
          if (v33)
          {
            CFRelease(v33);
          }

          if (*cf)
          {
            applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v33, *cf, @"db per step");
            if (v33)
            {
              applesauce::CF::convert_to<long long,0>(v33);
              if (v33)
              {
                CFRelease(v33);
              }

              std::allocator<unsigned long>::allocate_at_least[abi:ne200100](1uLL);
            }

            v25 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v25, "Could not construct");
            __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v23 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v23, "Could not construct");
          __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not construct");
        __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

LABEL_32:
  *&v10 = vcvtd_n_f64_u64(v5, 0x20uLL) + (v5 >> 32);
  *cf = v10 | (v4 << 32);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  AMCP::Utility::Sorted_Vector<std::tuple<float,int>,AMCP::Utility::Extract_Key_Self<std::tuple<float,int>>,std::less<std::tuple<float,int>>,std::allocator<std::tuple<float,int>>>::insert_unique(this, cf);
  v12 = *this;
  v11 = *(this + 1);
  if (v11 - *this < 9)
  {
LABEL_38:
    __assert_rtn("Level_Map", "Level_Map.h", 67, "data_is_valid()");
  }

  v14 = *v12;
  v13 = v12 + 2;
  v15 = v14;
  do
  {
    v16 = v15;
    v15 = *v13;
    if (v16 >= *v13 || *(v13 - 1) >= *(v13 + 1))
    {
      goto LABEL_38;
    }

    v13 += 2;
  }

  while (v13 != v11);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE6AD540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_rangeERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598A460;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F598A460;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F598A460;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_rangeERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598A360;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F598A360;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_range(AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F598A360;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::Utility::Level_Map>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::Utility::Level_Map>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5989D00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::Sorted_Vector<std::tuple<float,int>,AMCP::Utility::Extract_Key_Self<std::tuple<float,int>>,std::less<std::tuple<float,int>>,std::allocator<std::tuple<float,int>>>::insert_unique(void *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = &v3[-*a1];
  if (v3 == *a1)
  {
    v8 = a1[1];
  }

  else
  {
    v6 = v5 >> 3;
    v7 = *a2;
    v8 = *a1;
    do
    {
      v9 = v6 >> 1;
      v10 = &v8[8 * (v6 >> 1)];
      v11 = *(v10 + 1) < *(a2 + 4);
      if (*v10 != v7)
      {
        v11 = *v10 < v7;
      }

      v12 = v10 + 8;
      v6 += ~(v6 >> 1);
      if (v11)
      {
        v8 = v12;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v6);
  }

  if (v3 == v8)
  {
    goto LABEL_21;
  }

  v13 = *a2;
  v14 = *(v8 + 1);
  v15 = *(a2 + 4);
  v16 = v14 >= v15;
  v17 = v15 >= v14;
  if (*v8 != *a2)
  {
    v16 = *v8 >= *a2;
  }

  if (*v8 != v13)
  {
    v17 = *a2 >= *v8;
  }

  if (!v16 || !v17)
  {
LABEL_21:
    v19 = a1[2];
    if (v3 >= v19)
    {
      v26 = (v5 >> 3) + 1;
      if (v26 >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v27 = v8 - v4;
      v28 = v19 - v4;
      v29 = (v19 - v4) >> 2;
      if (v29 > v26)
      {
        v26 = v29;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v26;
      }

      v31 = v27 >> 3;
      if (v30)
      {
        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v30);
      }

      v32 = (8 * v31);
      v33 = 8 * v31;
      if (!v31)
      {
        if (v27 < 1)
        {
          if (v8 == v4)
          {
            v34 = 1;
          }

          else
          {
            v34 = v27 >> 2;
          }

          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v34);
        }

        v32 = (v32 - (((v27 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
        v33 = v32;
      }

      *v32 = *a2;
      v35 = v33 + 8;
      memcpy((v33 + 8), v8, a1[1] - v8);
      v36 = *a1;
      v40 = (v35 + a1[1] - v8);
      a1[1] = v8;
      v37 = v8 - v36;
      v38 = v32 - (v8 - v36);
      memcpy(v38, v36, v37);
      v39 = *a1;
      *a1 = v38;
      *(a1 + 1) = v40;
      if (v39)
      {

        operator delete(v39);
      }
    }

    else if (v8 == v3)
    {
      *v3 = *a2;
      a1[1] = v3 + 8;
    }

    else
    {
      v20 = a1[1];
      if (v3 >= 8)
      {
        *v3 = *(v3 - 1);
        v20 = v3 + 8;
      }

      a1[1] = v20;
      if (v3 != v8 + 8)
      {
        v21 = 0;
        do
        {
          v22 = &v3[v21];
          *(v22 - 2) = *&v3[v21 - 16];
          *(v22 - 1) = *&v3[v21 - 12];
          v21 -= 8;
        }

        while (v8 - v3 + 8 != v21);
      }

      v23 = v20 <= a2 || v8 > a2;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      v25 = (a2 + v24);
      *v8 = *v25;
      *(v8 + 1) = v25[1];
    }
  }

  else
  {
    *v8 = v13;
    *(v8 + 1) = v15;
  }
}

void sub_1DE6ADE5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 28));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control31update_stereo_pan_control_valueERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::operator()(_DWORD *a1, float *a2)
{
  v2 = *a2;
  if (*a2 <= 0.0)
  {
    v3 = a1[6];
  }

  else if (v2 == 0.5)
  {
    v3 = a1[7];
  }

  else if (v2 >= 1.0)
  {
    v3 = a1[8];
  }

  else
  {
    if (v2 >= 0.5)
    {
      v5 = (v2 + -0.5) + (v2 + -0.5);
      v7 = a1[7];
      v6 = a1[8];
    }

    else
    {
      v5 = v2 + v2;
      v7 = a1[6];
      v6 = a1[7];
    }

    v3 = v7 + (v5 * (v6 - v7));
  }

  v4 = a1[9];
  if (v4)
  {
    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int &>(&__p, v4, a1[11], v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int &>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  input = a3;
  v6 = a4;
  std::vector<unsigned long long>::vector[abi:ne200100](&v4);
}

void sub_1DE6AE220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v34 = *(v32 - 96);
      if (v34)
      {
        *(v32 - 88) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 36));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 36));
  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  v6 = *(a2 + 28);
  *(a1 + 28) = v6;
  v7 = IOConnectAddRef(v6);
  if (v7)
  {
    v10 = v7;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v10, v12, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6AE470(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598AB78;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 36));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598AB78;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 36));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control31update_stereo_pan_control_valueERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = *(a1 + 24);
  result = 0.0;
  v4 = v1 - v2;
  if (v1 < v2)
  {
    v5 = *(a1 + 28);
    result = 0.5;
    if (v1 != v5)
    {
      v6 = *(a1 + 32);
      result = 1.0;
      if (v1 > v6)
      {
        v7 = v1 >= v5;
        v8 = v1 - v5;
        if (v7)
        {
          return ((v8 / (v6 - v5)) * 0.5) + 0.5;
        }

        else
        {
          return (v4 / (v5 - v2)) * 0.5;
        }
      }
    }
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598AAF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  a2[3] = *(result + 24);
  a2[4] = v4;
  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598AAF8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_stereo_pan_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598AAF8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<unsigned int>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59897B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control29update_selector_control_valueERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v17, *a2, a2[1], (a2[1] - *a2) >> 2);
    v3 = v17;
    v4 = v18;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v5 = *(a1 + 32);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    outputCnt = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&outputStruct, 1024);
    v6 = v4 - v3;
    v20 = 1024;
    if (IOConnectCallMethod(v5, 8u, 0, 0, v3, v4 - v3, 0, &outputCnt, outputStruct, &v20))
    {
      __cxa_allocate_exception(0x20uLL);
      std::system_category();
      operator new();
    }

    std::vector<unsigned long long>::resize(&v24, outputCnt);
    v7 = outputStruct;
    if (v20 <= v22 - outputStruct)
    {
      if (v20 >= v22 - outputStruct)
      {
        v8 = v22;
      }

      else
      {
        v8 = &outputStruct[v20];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&outputStruct, v20 - (v22 - outputStruct));
      v7 = outputStruct;
      v8 = v22;
    }

    if (v24)
    {
      operator delete(v24);
    }

    v11 = v8 - v7;
    std::vector<unsigned int>::vector[abi:ne200100](&v24, v11 >> 2);
    memcpy(v24, v7, v11 & 0xFFFFFFFFFFFFFFFCLL);
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v12 = v24;
    if (v6 == v25 - v24 && !memcmp(v3, v24, v4 - v3))
    {
      v13 = *(a1 + 16);
      v14 = *v13;
      v13[1] = *v13;
      std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v13, v14, v3, v4, v6 >> 2);
      AMCP::Core::Conductor::notify_control_value_observers(*(*(a1 + 48) + 32), *(a1 + 36));
      v12 = v24;
    }

    if (v12)
    {
      v25 = v12;
      operator delete(v12);
    }

    if (v7)
    {
      operator delete(v7);
    }

    if (v3)
    {
      operator delete(v3);
    }
  }

  else
  {
    v9 = *a2;
    if (*a2 != a2[1])
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int const&>(&v24, v10, *(a1 + 40), *v9);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }
}

void sub_1DE6AED90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      v37 = *(v35 - 120);
      if (v37)
      {
        *(v35 - 112) = v37;
        operator delete(v37);
      }

      v38 = *(v35 - 88);
      if (v38)
      {
        operator delete(v38);
      }

      if (v32)
      {
        operator delete(v32);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int const&>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  input = a3;
  v6 = a4;
  std::vector<unsigned long long>::vector[abi:ne200100](&v4);
}

void sub_1DE6AF070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v34 = *(v32 - 96);
      if (v34)
      {
        *(v32 - 88) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    v9 = v6;
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v9, v11, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 28) = *(a2 + 28);
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6AF2B8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A880;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A880;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control29update_selector_control_valueERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *v2, v2[1], (v2[1] - *v2) >> 2);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598A790;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A790;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_selector_control_value(AMCP::Core::Operation_Set &)::$_0>,std::vector<unsigned int> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A790;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control28update_BOOLean_control_valueERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int &>(&__p, v3, *(a1 + 32), *a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    v9 = v6;
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v9, v11, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 20) = *(a2 + 20);
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6AF96C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A630;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A630;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control28update_BOOLean_control_valueERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598A540;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A540;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_BOOLean_control_value(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A540;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598A4F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3::~$_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_valueERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v3 = AMCP::Utility::Level_Map::calculate_raw_from_decibel(*(a1 + 8), *a2);
  v4 = *(a1 + 40);
  if (v4)
  {
    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,int &>(&__p, v4, *(a1 + 48), v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,int &>(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  input = a3;
  v6 = a4;
  std::vector<unsigned long long>::vector[abi:ne200100](&v4);
}

void sub_1DE6B0114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v34 = *(v32 - 96);
      if (v34)
      {
        *(v32 - 88) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3::$_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = IOConnectAddRef(v6);
  if (v7)
  {
    v10 = v7;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v10, v12, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 36) = *(a2 + 36);
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6B0384(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A108;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A108;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_valueERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2>,float ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2>,float ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F598A088;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A088;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_2>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A088;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_valueERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(**(a1 + 8) + 4);
    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,int &>(&__p, v3, *(a1 + 48), v4 + (fmaxf(fminf(*a2, 1.0), 0.0) * (*(*(*(a1 + 8) + 8) - 4) - v4)));
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = IOConnectAddRef(v6);
  if (v7)
  {
    v10 = v7;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v10, v12, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 36) = *(a2 + 36);
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6B0AA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5989F78;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5989F78;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_volume_control_valueERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **(a1 + 24);
  v3 = *(*v1 + 4);
  result = 0.0;
  if (v2 > v3)
  {
    v5 = *(v1[1] - 4);
    result = 1.0;
    if (v5 > v2)
    {
      return (v2 - v3) / (v5 - v3);
    }
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F5989DF8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989DF8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_volume_control_value(AMCP::Core::Operation_Set &)::$_0>,float ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989DF8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<int>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5989D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_slider_control_valueERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned int const&,unsigned int const&>(&__p, v3, *(a1 + 32), *a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    v9 = v6;
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v9, v11, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  *(a1 + 20) = *(a2 + 20);
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1DE6B1298(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59898F8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_1>,void ()(unsigned int const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59898F8;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  IOConnectRelease(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio27Control27update_slider_control_valueERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5989808;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989808;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Control::update_slider_control_value(AMCP::Core::Operation_Set &)::$_0>,unsigned int ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5989808;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *AMCP::IOAudio2::Control::create_from_dictionary_list(void *this, AMCP::IOAudio2::Device *a2, CFArrayRef *a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v3 = *a3;
  if (*a3)
  {
    this = CFArrayGetCount(*a3);
    v5 = this;
    v6 = *a3;
    if (*a3)
    {
      this = CFArrayGetCount(*a3);
      v7 = this;
      if (!v5)
      {
        return this;
      }
    }

    else
    {
      v7 = 0;
      if (!this)
      {
        return this;
      }
    }

    if (v3 != v6 || v7)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v3, 0);
      operator new();
    }
  }

  return this;
}

void sub_1DE6B1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Control>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5989768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_HAL_BypassCallbacks::onClientIO(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a7;
  if ((*(result + 317) & 1) == 0)
  {
    DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::set_output<char>(v7);
  }

  if (a6 && a4 && a5)
  {
    if (a7)
    {
      DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::copy_input_to_output<float,(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0>::CopyStrategy)0>(v7);
    }
  }

  return result;
}

uint64_t DSP_HAL_BypassCallbacks::expectFormat(DSP_HAL_BypassCallbacks *this, const DSP_Host_Types::AdaptRequest *a2)
{
  *(this + 317) = 0;
  if (*(a2 + 14))
  {
    v4 = *(*(a2 + 12) + 28);
  }

  else
  {
    v4 = 1;
  }

  if (*(a2 + 84) == *(a2 + 85))
  {
    v11 = 0;
    return v11 & 1;
  }

  DSP_Host_Types::AdaptRequest::AdaptRequest(&v17, a2);
  v5 = *(a2 + 84);
  v6 = *v5;
  v7 = v5[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  if (v4 <= 0xA)
  {
    if (((1 << v4) & 0x5CE) != 0)
    {
LABEL_9:
      v9 = v6[83];
      v10 = v6[84];
      goto LABEL_13;
    }

    if (((1 << v4) & 0x30) != 0)
    {
      v9 = v6[86];
      v10 = v6[87];
LABEL_13:
      if (v9 == v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v4 == 9)
    {
      v9 = v6[89];
      if (v9 != v6[90])
      {
LABEL_14:
        v12 = *v9;
        if (DSP_Dictionariable::DictionarySet::has_all_values(*(*v9 + 240), *(*v9 + 248)))
        {
          if (*(v12 + 236) != 1)
          {
            goto LABEL_58;
          }

          if (*(v12 + 232) == 1)
          {
            if (*(v12 + 209) == 1)
            {
              if (*(v12 + 208))
              {
LABEL_21:
                v8 = v12 + 112;
                goto LABEL_23;
              }

              if (*(v12 + 188))
              {
                if (*(v12 + 184) == 1)
                {
                  goto LABEL_21;
                }

                goto LABEL_22;
              }
            }

LABEL_58:
            std::__throw_bad_optional_access[abi:ne200100]();
          }
        }

LABEL_22:
        v8 = 0;
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

LABEL_23:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v8)
  {
    goto LABEL_48;
  }

  DSP_Host_Types::FormatDescription::operator=(this + 8, v8);
  DSP_Host_Types::FormatDescription::operator=(this + 160, v8);
  if ((v4 & 0xFFFFFFFE) == 4 && DSP_Dictionariable::DictionarySet::has_all_values(*(a2 + 31), *(a2 + 32)) && DSP_Dictionariable::DictionarySet::has_all_values(*(a2 + 31), *(a2 + 32)))
  {
    if (*(a2 + 244) != 1)
    {
      goto LABEL_57;
    }

    if (*(a2 + 60) == 1)
    {
      if (*(a2 + 217) != 1)
      {
        goto LABEL_57;
      }

      if (*(a2 + 216))
      {
        goto LABEL_35;
      }

      if (*(a2 + 196) != 1)
      {
        goto LABEL_57;
      }

      if (*(a2 + 48) == 1)
      {
LABEL_35:
        DSP_Host_Types::FormatDescription::operator=(this + 8, a2 + 120);
      }
    }
  }

  v13 = 0;
  if (*(a2 + 444))
  {
    v14 = *(a2 + 110);
  }

  else
  {
    v14 = 0;
  }

  *(this + 78) = v14;
  if (*(this + 132) == 1)
  {
    v13 = *(this + 32);
  }

  if (*(this + 284) == 1)
  {
    v15 = *(this + 70);
  }

  else
  {
    v15 = 0;
  }

  if (v13 != v15)
  {
    goto LABEL_48;
  }

  if (*(this + 56) != 1 || (*(this + 208) & 1) == 0)
  {
LABEL_57:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 6) == *(this + 25))
  {
    v11 = 1;
    *(this + 317) = 1;
    goto LABEL_49;
  }

LABEL_48:
  v11 = *(this + 317);
LABEL_49:
  v17 = &unk_1F598DC40;
  v24 = &v23;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v24);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(&v22);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v21);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v20);
  v17 = &unk_1F598DC90;
  if (v19 == 1 && cf)
  {
    CFRelease(cf);
  }

  return v11 & 1;
}

void sub_1DE6B2088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  DSP_HAL_BypassCallbacks::expectFormat(DSP_Host_Types::AdaptRequest const&)::$_1::~$_1(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_HAL_BypassCallbacks::expectFormat(DSP_Host_Types::AdaptRequest const&)::$_1::~$_1(uint64_t a1)
{
  *(a1 + 8) = &unk_1F598DC40;
  v4 = (a1 + 680);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((a1 + 80));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 56));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 32));
  *(a1 + 8) = &unk_1F598DC90;
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void DSP_HAL_BypassCallbacks::~DSP_HAL_BypassCallbacks(DSP_HAL_BypassCallbacks *this)
{
  *this = &unk_1F598ABF8;
  v1 = this + 8;
  atomic_load(this + 316);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(this + 160);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598ABF8;
  v1 = this + 8;
  atomic_load(this + 316);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(this + 160);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(v1);
}

{
  *this = &unk_1F598ABF8;
  v1 = this + 8;
  atomic_load(this + 316);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(this + 160);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(v1);
}

uint64_t DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(uint64_t a1)
{
  *a1 = &unk_1F598DDD8;
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 80));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 56));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 24));
  *a1 = &unk_1F598DE18;
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return a1;
}

void DSP_HAL_BypassCallbacks::DSP_HAL_BypassCallbacks(DSP_HAL_BypassCallbacks *this, HAL_DSP_IOCallbacks *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1F598ABF8;
  DSP_Host_Types::FormatDescription::FormatDescription((this + 8), "");
  *(this + 1) = &unk_1F598ACA8;
  DSP_Host_Types::FormatDescription::FormatDescription((this + 160), "");
  *(this + 20) = &unk_1F598ACA8;
  *(this + 316) = 0;
  atomic_store(0, this + 316);
  *&v4 = DSP_HAL_BypassCallbacks::onRegisterClient;
  *(&v4 + 1) = 0;
  v5 = this;
  std::function<void ()>::operator=<std::__bind<void (DSP_HAL_BypassCallbacks::*),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>,void>(a2, &v4);
}

void sub_1DE6B24C4(_Unwind_Exception *a1)
{
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(v2);
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(v1);
  _Unwind_Resume(a1);
}

void std::function<void ()(unsigned int)>::operator=<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>,void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 2);
  operator new();
}

uint64_t std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIM23DSP_HAL_BypassCallbacksFvjRKN4AMCP15Proc_Cycle_InfoEmPNS2_11Proc_StreamEmS7_EJPS1_RKNS_12placeholders4__phILi1EEERKNSC_ILi2EEERKNSC_ILi3EEERKNSC_ILi4EEERKNSC_ILi5EEERKNSC_ILi6EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(void *a1, unsigned int *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v7 = a1[2];
  v8 = a1[1];
  v9 = (a1[3] + (v7 >> 1));
  if (v7)
  {
    v8 = *(*v9 + v8);
  }

  return v8(v9, *a2, a3, *a4, *a5, *a6, *a7);
}

__n128 std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&>>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598ADC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIM23DSP_HAL_BypassCallbacksFvjEJPS1_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::operator()(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (DSP_HAL_BypassCallbacks::*)(unsigned int),DSP_HAL_BypassCallbacks*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598AD18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(uint64_t a1)
{
  DSP_HAL_BypassCallbacks::FormatPlus<BOOL>::~FormatPlus(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_PDPEngine::_WriteToStream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a6)
  {
    v7 = *a6 + *(a6 + 8);
  }

  else
  {
    v7 = 0;
  }

  result = (*(*(a1 + 1144) + 120))(*(*(a1 + 1136) + 16), *(a3 + 8), a5, a4 + 144, v7, *(a4 + 208), *(a4 + 216));
  if (result)
  {
    v12[0] = BYTE3(result);
    v12[1] = BYTE2(result);
    v12[2] = BYTE1(result);
    v11 = result;
    v12[3] = result;
    v12[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "HALS_PDPUCPlugIn.cpp";
      v15 = 1024;
      v16 = 190;
      v17 = 1024;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::WriteToStream: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v11;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6B2B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6B2A04);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PDPEngine::_ReadFromStream_Read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a6)
  {
    v7 = *a6 + *(a6 + 8);
  }

  else
  {
    v7 = 0;
  }

  result = (*(*(a1 + 1144) + 112))(*(*(a1 + 1136) + 16), *(a3 + 8), a5, a4 + 80, v7, *(a4 + 208), *(a4 + 216));
  if (result)
  {
    v12[0] = BYTE3(result);
    v12[1] = BYTE2(result);
    v12[2] = BYTE1(result);
    v11 = result;
    v12[3] = result;
    v12[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "HALS_PDPUCPlugIn.cpp";
      v15 = 1024;
      v16 = 184;
      v17 = 1024;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::ReadFromStream: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v11;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_PDPEngine::_EndIOCycle(HALS_PDPEngine *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(*(this + 143) + 136))(*(*(this + 142) + 16), *(a3 + 130), a3 + 592, a3 + 656, *(a3 + 90), *(a3 + 91));
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v5 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_PDPUCPlugIn.cpp";
      v10 = 1024;
      v11 = 202;
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::EndIOCycle: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6B2E58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6B2D44);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PDPEngine::_BeginIOCycle(HALS_PDPEngine *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  HALS_IOEngine2::_BeginIOCycle(this, a2, a3);
  result = (*(*(this + 143) + 96))(*(*(this + 142) + 16), *(a3 + 130), a3 + 592, a3 + 656, *(a3 + 90), *(a3 + 91));
  if (result)
  {
    v9[0] = BYTE3(result);
    v9[1] = BYTE2(result);
    v9[2] = BYTE1(result);
    v7 = result;
    v9[3] = result;
    v9[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "HALS_PDPUCPlugIn.cpp";
      v12 = 1024;
      v13 = 170;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::BeginIOCycle: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6B2FFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6B2EE8);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PDPEngine::_TellHardwareToStop(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 1144);
  v2 = *(*(a1 + 1136) + 16);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  v4.mElement = 0;
  return HALS_PDPUCPlugIn::ObjectSetPropertyData(*(v1 + 80), v2, &v4, 0, 0, 4, &v5);
}

void sub_1DE6B3088(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6B307CLL);
}

uint64_t HALS_PDPEngine::_TellHardwareToStart(uint64_t a1)
{
  v4.mElement = 0;
  v5 = 1;
  v1 = *(a1 + 1144);
  v2 = *(*(a1 + 1136) + 16);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  HALS_PDPUCPlugIn::ObjectSetPropertyData(*(v1 + 80), v2, &v4, 0, 0, 4, &v5);
  return 0;
}

void sub_1DE6B30F8(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE6B30E8);
}

uint64_t HALS_PDPEngine::GetZeroTimeStamp(HALS_PDPEngine *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  result = (*(*(this + 143) + 88))(*(*(this + 142) + 16), a3, a4, a5);
  if (result)
  {
    v9[0] = BYTE3(result);
    v9[1] = BYTE2(result);
    v9[2] = BYTE1(result);
    v7 = result;
    v9[3] = result;
    v9[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "HALS_PDPUCPlugIn.cpp";
      v12 = 1024;
      v13 = 164;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPUCPlugIn::GetZeroTimeStamp: got an error from the plug-in, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6B3284(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6B3170);
  }

  _Unwind_Resume(a1);
}

void HALS_PDPEngine::~HALS_PDPEngine(HALS_PDPEngine *this)
{
  HALS_IOEngine2::~HALS_IOEngine2(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::Mach_Port::reset(AMCP::Utility::Mach_Port *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = (this + 8);
  std::mutex::lock((this + 8));
  if (*(this + 9))
  {
    operator new();
  }

  std::mutex::unlock(v2);
  v3 = *this;
  if (*this)
  {
    if (*(this + 4) != 1 || (mach_port_deallocate(*MEMORY[0x1E69E9A60], v3), (v3 = *this) != 0))
    {
      if (*(this + 5) == 1)
      {
        mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 1u, -1);
      }
    }
  }

  *this = 0;
  *(this + 2) = 0;
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B34F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN4AMCP7Utility9Mach_Port21reset_receive_handlerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0,std::allocator<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7Utility9Mach_Port21reset_receive_handlerEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0,std::allocator<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  std::mutex::lock((v2 + 8));
  v3 = *(a1 + 8);
  **(a1 + 16) = 1;
  std::condition_variable::notify_all(v3);

  std::mutex::unlock((v2 + 8));
}

__n128 std::__function::__func<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0,std::allocator<AMCP::Utility::Mach_Port::reset_receive_handler(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598B6C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AMCP::Utility::Mach_Port::create_port(AMCP::Utility::Mach_Port *this)
{
  v35 = *MEMORY[0x1E69E9840];
  name = 0;
  v1 = MEMORY[0x1E69E9A60];
  v2 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (v3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v27 = "Mach_Port.cpp";
      v28 = 1024;
      v29 = 69;
      v30 = 2080;
      v31 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to allocate the mach port", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v23, v3, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v24, v23);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(&buf, v24);
    v32 = "static mach_port_t AMCP::Utility::Mach_Port::create_port(mach_port_msgcount_t)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Mach_Port.cpp";
    v34 = 69;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  v20 = MEMORY[0x1E12C16E0]();
  p_name = &name;
  inserted = mach_port_insert_right(*v1, name, name, 0x14u);
  v6 = inserted;
  AMCP::Utility::Kernel_Error_Category::get(inserted);
  if (v6)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v27 = "Mach_Port.cpp";
      v28 = 1024;
      v29 = 85;
      v30 = 2080;
      v31 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to create the send right", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v23, v6, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v24, v23);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(&buf, v24);
    v32 = "static mach_port_t AMCP::Utility::Mach_Port::create_port(mach_port_msgcount_t)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Mach_Port.cpp";
    v34 = 85;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  v8 = name;
  applesauce::raii::v1::detail::ScopeGuard<AMCP::Utility::Mach_Port::create_port::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&v20);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::Utility::Mach_Port::create_port(unsigned int)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], **(a1 + 8));
  }

  return a1;
}

void AMCP::Utility::Mach_Port::set_receive_handler(unsigned int *a1, dispatch_queue_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "Mach_Port.cpp";
      v30 = 1024;
      v31 = 123;
      v32 = 2080;
      v33 = "m_port != MACH_PORT_NULL";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  std::mutex::lock((a1 + 2));
  v6 = dispatch_source_create(MEMORY[0x1E69E96D8], *a1, 0, *a2);
  v7 = *(a1 + 9);
  *(a1 + 9) = v6;
  if (v7)
  {
    dispatch_release(v7);
    v6 = *(a1 + 9);
  }

  if (!v6)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v29 = "Mach_Port.cpp";
      v30 = 1024;
      v31 = 127;
      v32 = 2080;
      v33 = "!m_receive_source";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to allocate the dispatch source", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v18, "failed to allocate the dispatch source");
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v34 = "void AMCP::Utility::Mach_Port::set_receive_handler(const applesauce::dispatch::queue &, Receive_Handler)";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Mach_Port.cpp";
    v36 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 1174405120;
  handler[2] = ___ZN4AMCP7Utility9Mach_Port19set_receive_handlerERKN10applesauce8dispatch2v15queueENSt3__18functionIFvvEEE_block_invoke;
  handler[3] = &__block_descriptor_tmp_18414;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v27, a3);
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(*(a1 + 9));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27);
  std::mutex::unlock((a1 + 2));
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN4AMCP7Utility9Mach_Port19set_receive_handlerERKN10applesauce8dispatch2v15queueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t AMCP::Utility::Mach_Port::receive_message(mach_port_name_t rcv_name, mach_msg_size_t rcv_size, mach_msg_header_t *msg, mach_msg_header_t *a4)
{
  if (!rcv_name)
  {
    return 268451842;
  }

  if (a4)
  {
    v5 = 258;
  }

  else
  {
    v5 = 2;
  }

  *&msg->msgh_bits = 0;
  *&msg->msgh_remote_port = 0;
  *&msg->msgh_voucher_port = 0;
  return mach_msg(msg, v5, 0, rcv_size, rcv_name, 0, 0);
}

void AMCP::Time_Stamp_Historian::clear_time_stamp_buffer(AMCP::Time_Stamp_Historian *this)
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 15);
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 10);
    do
    {
      v3 += 24;
      if (v3 == *(this + 9))
      {
        v3 = *(this + 8);
      }

      --v2;
    }

    while (v2);
    *(this + 10) = v3;
  }

  *(this + 12) = 0;
  v21 = 0uLL;
  v4 = 3;
  v22 = 0;
  do
  {
    v5 = boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(this + 8, &v21);
    --v4;
  }

  while (v4);
  *(this + 6) = 0;
  if (*(this + 12) != 3)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "Time_Stamp_Historian.cpp";
      v25 = 1024;
      v26 = 85;
      v27 = 2080;
      v28 = "not (m_time_stamp_buffer.size() == k_time_stamp_history_buffer_size)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v12);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v29 = "void AMCP::Time_Stamp_Historian::clear_time_stamp_buffer()";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/Time_Stamp_Historian.cpp";
    v31 = 85;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v6 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(this + 15);
}

void sub_1DE6B4414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a28);
  MEMORY[0x1E12C0F00](&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a11)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 153));
  os_unfair_lock_unlock(v28 + 15);
  _Unwind_Resume(a1);
}

void AMCP::Time_Stamp_Historian::clear_time_stamp_deltas(AMCP::Time_Stamp_Historian *this)
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 16);
    do
    {
      v3 += 24;
      if (v3 == *(this + 15))
      {
        v3 = *(this + 14);
      }

      --v2;
    }

    while (v2);
    *(this + 16) = v3;
  }

  *(this + 18) = 0;
  v20 = 0uLL;
  v21 = 0;
  boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(this + 14, &v20);
  v4 = boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(this + 14, &v20);
  if (*(this + 18) != 2)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "Time_Stamp_Historian.cpp";
      v24 = 1024;
      v25 = 104;
      v26 = 2080;
      v27 = "not (m_time_stamp_delta_buffer.size() == k_time_stamp_history_buffer_size - 1)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v11);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v28 = "void AMCP::Time_Stamp_Historian::clear_time_stamp_deltas()";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Clock/Time_Stamp_Historian.cpp";
    v30 = 104;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  v5 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(this + 26);
}

void sub_1DE6B47A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a28);
  MEMORY[0x1E12C0F00](&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a11)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 153));
  os_unfair_lock_unlock(v28 + 26);
  _Unwind_Resume(a1);
}

void boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::destroy(void **a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[2];
    do
    {
      v2 += 24;
      if (v2 == a1[1])
      {
        v2 = *a1;
      }

      --v1;
    }

    while (v1);
    a1[2] = v2;
  }

  v3 = *a1;
  if (v3)
  {
    operator delete(v3);
  }
}

uint64_t *boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(uint64_t *result, __int128 *a2)
{
  v2 = result[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) == result[4])
  {
    if (v2 != *result)
    {
      v3 = result[3];
      v4 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v4;
      v5 = result[3] + 24;
      result[3] = v5;
      if (v5 == result[1])
      {
        v5 = *result;
        result[3] = *result;
      }

      result[2] = v5;
    }
  }

  else
  {
    v6 = result[3];
    v7 = *a2;
    *(v6 + 16) = *(a2 + 2);
    *v6 = v7;
    v8 = result[3] + 24;
    result[3] = v8;
    if (v8 == result[1])
    {
      result[3] = *result;
    }

    ++result[4];
  }

  return result;
}

void AMCP::Time_Stamp_Historian::calculate_and_save_delta(AMCP::Time_Stamp_Historian *this)
{
  if (*(this + 12) >= 2uLL)
  {
    v10 = v1;
    v11 = v2;
    v4 = boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(this + 8, 2);
    v5 = boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(this + 8, 1);
    v6 = *(v5 + 16);
    v7 = *(v4 + 8) - *(v5 + 8);
    *&v8 = *v4 - *v5;
    *(&v8 + 1) = v7;
    v9 = v6;
    os_unfair_lock_lock(this + 26);
    boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::push_back_impl<AMCP::Zero_Time_Stamp const&>(this + 14, &v8);
    os_unfair_lock_unlock(this + 26);
  }
}

void HALS_DSPHostAudioDevice::device_uid(HALS_DSPHostAudioDevice *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

void HALS_DSPHostAudioDevice::model_id(HALS_DSPHostAudioDevice *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 1);
    a2->__r_.__value_.__r.__words[2] = *(this + 4);
  }
}

void HALS_DSPHostAudioDevice::~HALS_DSPHostAudioDevice(HALS_DSPHostAudioDevice *this)
{
  HALS_DSPHostAudioDevice::~HALS_DSPHostAudioDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598B878;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void sub_1DE6B5440(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  HALS_ObjectMap::ReleaseObject(v25, a2);
  if (*(v24 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v24 + 8));
  }

  _Unwind_Resume(a1);
}

void HALS_DSPHostAudioDevice::EssentialProperties::~EssentialProperties(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostAudioDevice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598B998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOProc::~HALS_IOProc(HALS_IOProc *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t HALS_MultiTap_Engine::_SetAudioCaptureMode(uint64_t result, int a2)
{
  v2 = *(result + 736);
  if (a2)
  {
    *(result + 736) = v2 + 1;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else if (v2)
  {
    v3 = v2 - 1;
    *(result + 736) = v3;
    if (!v3)
    {
      a2 = 0;
LABEL_8:
      *(*(result + 744) + 536) = a2;
    }
  }

  return result;
}

uint64_t HALS_MultiTap_Engine::NotifyWaitingTapThatIOHasFullyStarted(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  v2 = *(v1 + 352);
  v3 = *(v1 + 360);
  while (v2 != v3)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(**v2);
    v6 = v4;
    if (v4)
    {
      if (((*(**(v4 + 104) + 160))(*(v4 + 104)) & 1) == 0)
      {
        (*(**(v6 + 104) + 816))(*(v6 + 104), *(v6 + 16));
      }
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
    v2 += 2;
  }

  return 0;
}

uint64_t HALS_MultiTap_Engine::ReadFromStream(uint64_t *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(a1 + 95, a2);
  result = 1852797029;
  if (a3 || !v12)
  {
    return result;
  }

  v14 = *a6;
  v15 = (*a6 + *(a6 + 2));
  v16 = a1[93];
  v17 = *(a5 + 592);
  HALS_MultiTap::fetch_reader_state(&v33, v16, a2);
  if (v33)
  {
    os_unfair_lock_lock((v16 + 432));
    v18 = *(v16 + 544);
    bzero(v15, *(v16 + 48) * a4);
    v19 = *(v16 + 568);
    v69 = *(v16 + 560);
    v70 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v71, &v69, v17, (v17 + a4));
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    (*(*v18 + 72))(v66, v18);
    caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(&v39, &v71, v66);
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v58, &v39);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (*&v39.mSMPTETime.mSubframes)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v39.mSMPTETime.mSubframes);
    }

    if (!AMCP::DAL::DAL_Time::operator<(&v58, &v62))
    {
      goto LABEL_44;
    }

    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_readable_range(v18, &v46, &v54);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    v20 = *(v16 + 48) * a4;
    v45[0] = v20;
    v45[1] = v15;
    if (!v14 && v20)
    {
      std::terminate();
    }

    (*(***(v16 + 552) + 24))(**(v16 + 552), v45);
    v22 = *(v16 + 552);
    v24 = *v22;
    v23 = v22[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = v71;
    v25 = v73;
    v38 = v72;
    v26 = v74;
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = v75;
    v27 = v77;
    v36 = v76;
    v28 = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v39.mSampleTime = &unk_1F598F618;
    *&v39.mHostTime = v37;
    v39.mWordClockTime = v38;
    *&v39.mSMPTETime.mSubframes = v25;
    *&v39.mSMPTETime.mType = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v39.mSMPTETime.mHours = v35;
    v40 = v36;
    v41 = v27;
    v42 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = v24;
      v44 = v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      if (!v26)
      {
LABEL_34:
        AMCP::DAL::Fixed_Buffer::receive_data(&v39, v21, &v54);
        *&v39.mSampleTime = &unk_1F598F618;
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (*&v39.mSMPTETime.mType)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v39.mSMPTETime.mType);
        }

        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }

        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

LABEL_44:
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        a4 = a4;
        if (v68)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        os_unfair_lock_unlock((v16 + 432));
        kdebug_trace();
        goto LABEL_57;
      }
    }

    else
    {
      v43 = v24;
      v44 = v23;
      if (!v26)
      {
        goto LABEL_34;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    goto LABEL_34;
  }

LABEL_57:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  HALS_MultiTap::fetch_reader_state(&v71, a1[93], a2);
  if (v71)
  {
    v29 = *(v71 + 8);
    if (v29)
    {
      if ((*(*a1 + 912))(a1))
      {
        v30 = *(a5 + 608);
        *&v39.mSampleTime = *(a5 + 592);
        *&v39.mRateScalar = v30;
        v31 = *(a5 + 640);
        *&v39.mSMPTETime.mSubframes = *(a5 + 624);
        *&v39.mSMPTETime.mHours = v31;
        v39.mFlags = DWORD2(v31) | 6;
        HALS_IOClock::TranslateTime(*(a5 + 368), (a5 + 592), &v39);
        v32 = *(a5 + 368);
        v55[0] = 0;
        v55[1] = 0;
        v54 = 0;
        HALS_IOClock::GetRaw0Time(v32, &v54, v55);
        HALB_CaptureFile::Write(v29, a5 + 528, &v39.mSampleTime, &v54, a4, v15);
      }
    }
  }

  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }

  return 0;
}

void sub_1DE6B5CD0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_1DE6B5D34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a21);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a68);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v68 - 184));
  __clang_call_terminate(a1);
}

void HALS_MultiTap::fetch_reader_state(HALS_MultiTap *this, uint64_t a2, unsigned int a3)
{
  os_unfair_lock_lock((a2 + 384));
  v6 = *(a2 + 400);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (v6 <= a3)
    {
      v8 = a3 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & a3;
  }

  v9 = *(*(a2 + 392) + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_17:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 4) != a3)
  {
    goto LABEL_16;
  }

  v12 = v10[4];
  *this = v10[3];
  *(this + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_18:

  os_unfair_lock_unlock((a2 + 384));
}

void HALS_MultiTap_Engine::StopIO(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 740));
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1 + 760), *(a2 + 16));
  os_unfair_lock_unlock((a1 + 740));
  if (v4)
  {
    v5 = *(a1 + 744);
    v6 = *(a2 + 16);
    HALS_MultiTap::fetch_reader_state(&v20, v5, v6);
    if (v20)
    {
      HALS_MultiTap::stop(v5);
      os_unfair_lock_lock((v5 + 384));
      v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v5 + 392), v6);
      if (v7)
      {
        v8 = *(v5 + 400);
        v9 = v7[1];
        v10 = vcnt_s8(v8);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          if (v9 >= *&v8)
          {
            v9 %= *&v8;
          }
        }

        else
        {
          v9 &= *&v8 - 1;
        }

        v11 = *(v5 + 392);
        v12 = *(v11 + 8 * v9);
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12 != v7);
        if (v13 == (v5 + 408))
        {
          goto LABEL_22;
        }

        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v9)
        {
LABEL_22:
          if (!*v7)
          {
            goto LABEL_23;
          }

          v15 = *(*v7 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v9)
          {
LABEL_23:
            *(v11 + 8 * v9) = 0;
          }
        }

        v16 = *v7;
        if (*v7)
        {
          v17 = *(v16 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v17 >= *&v8)
            {
              v17 %= *&v8;
            }
          }

          else
          {
            v17 &= *&v8 - 1;
          }

          if (v17 != v9)
          {
            *(*(v5 + 392) + 8 * v17) = v13;
            v16 = *v7;
          }
        }

        *v13 = v16;
        *v7 = 0;
        --*(v5 + 416);
        std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v7);
      }

      os_unfair_lock_unlock((v5 + 384));
      if (*(v5 + 488) == 1)
      {
        std::function<void ()(HALS_MultiTap::Reader_Action_State)>::operator()(*(v5 + 480), 1);
      }
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    v18 = *(a1 + 16);
    v19 = *(a2 + 16);

    kdebug_trace();
  }
}

void HALS_MultiTap::stop(os_unfair_lock_s *this)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 36);
  if (!*&this[38]._os_unfair_lock_opaque)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_MultiTap.cpp";
      v11 = 1024;
      v12 = 960;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::stop: too many stops", &v9, 0x12u);
    }
  }

  v7 = *&this[38]._os_unfair_lock_opaque - 1;
  *&this[38]._os_unfair_lock_opaque = v7;
  if (!v7)
  {
    *&this[40]._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(this + 108);
    HALS_MultiTap::_free_ring_buffer(this);
    os_unfair_lock_unlock(this + 108);
  }

  os_unfair_lock_unlock(this + 36);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B6214(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::function<void ()(HALS_MultiTap::Reader_Action_State)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t HALS_MultiTap::_free_ring_buffer(HALS_MultiTap *this)
{
  result = *(this + 68);
  *(this + 68) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(this + 76) == 1)
  {
    v3 = *(this + 55);
  }

  else
  {
    v3 = (*(this + 3) / 3.0);
  }

  *(this + 55) = v3;
  *(this + 56) = 0;
  return result;
}

uint64_t HALS_MultiTap_Engine::StartIO(os_unfair_lock_s *this, HALS_IOContext *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 185);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[190]._os_unfair_lock_opaque, *(a2 + 4));
  os_unfair_lock_unlock(this + 185);
  if (v4)
  {
    os_unfair_lock_opaque = this[4]._os_unfair_lock_opaque;
    v6 = *(a2 + 4);
    kdebug_trace();
    v7 = *&this[186]._os_unfair_lock_opaque;
    v10 = *(a2 + 4);
    os_unfair_lock_lock((v7 + 384));
    if (!std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v7 + 392), v10))
    {
      operator new();
    }

    os_unfair_lock_unlock((v7 + 384));
    result = 0;
  }

  else
  {
    result = 1852797029;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6B67D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v2, 0x1020C40C1DD3C34);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALS_MultiTap_Reader_State>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALS_MultiTap_Reader_State>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALS_MultiTap_Reader_State>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALS_MultiTap_Reader_State>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void HALS_MultiTap::start(os_unfair_lock_s *this)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 36);
  v3 = *&this[38]._os_unfair_lock_opaque;
  if (v3 == -1)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_MultiTap.cpp";
      v11 = 1024;
      v12 = 944;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::start: too many starts", &v9, 0x12u);
    }

    v3 = *&this[38]._os_unfair_lock_opaque;
  }

  *&this[38]._os_unfair_lock_opaque = v3 + 1;
  if (!v3)
  {
    *&this[40]._os_unfair_lock_opaque = mach_absolute_time();
    os_unfair_lock_lock(this + 108);
    HALS_MultiTap::_allocate_ring_buffer(this);
  }

  os_unfair_lock_unlock(this + 36);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B6D74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_MultiTap::_allocate_ring_buffer(HALS_MultiTap *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 76) == 1)
  {
    v1 = *(this + 55);
    v2 = *(this + 3);
  }

  else
  {
    v1 = (*(this + 3) / 3.0);
  }

  *(this + 55) = v1;
  *(this + 56) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "tap timebase ");
  std::to_string(&v8, 5);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v8;
  }

  else
  {
    v3 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v5 = std::string::append(&v9, v3, size);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v11, ":", 1uLL);
  __p = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  AMCP::Graph::make_mock_timebase();
}

void std::default_delete<AMCP::DAL::Container>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_MultiTap_Reader_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598BFC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL HALS_MultiTap_Engine::IsIORunningForReferenceStream(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  os_unfair_lock_lock((v1 + 384));
  v2 = *(v1 + 416) != 0;
  os_unfair_lock_unlock((v1 + 384));
  return v2;
}

BOOL HALS_MultiTap_Engine::IsIORunning(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  os_unfair_lock_lock((v1 + 384));
  v2 = *(v1 + 416) != 0;
  os_unfair_lock_unlock((v1 + 384));
  return v2;
}

uint64_t HALS_MultiTap_Engine::Unregister_IOThread(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  if (*(v1 + 76) == 1 && (v2 = *(v1 + 88)) != 0)
  {
    return (*(*v2 + 664))();
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_MultiTap_Engine::Register_IOThread(HALS_MultiTap_Engine *this, double a2)
{
  v2 = *(this + 93);
  if (*(v2 + 76) == 1 && (v3 = *(v2 + 88)) != 0)
  {
    return (*(*v3 + 656))(a2);
  }

  else
  {
    return 0;
  }
}

void HALS_MultiTap_Engine::TimelineWasReset(HALS_MultiTap_Engine *this)
{
  v2 = *(this + 93);
  os_unfair_lock_lock(v2 + 108);
  v3 = *(*(this + 93) + 544);
  v4 = 0;
  *__p = 0u;
  v6 = 0u;
  v7 = 0;
  (*(*v3 + 112))(v3, &v4);
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(v2 + 108);
}

void sub_1DE6B742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v15 + 108);
  _Unwind_Resume(a1);
}

void *HALS_MultiTap_Engine::QuantizeAnchorTime(void *this, double a2)
{
  v2 = this[93];
  if (*(v2 + 76) == 1)
  {
    this = *(v2 + 88);
    if (this)
    {
      return (*(*this + 640))(a2);
    }
  }

  return this;
}

uint64_t HALS_MultiTap_Engine::GetZeroTimeStamp(HALS_MultiTap_Engine *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v9 = *(this + 93);
  if (*(v9 + 76) == 1 && (v10 = *(v9 + 88)) != 0 && (v11 = (*(*v10 + 688))(v10), v9 = *(this + 93), v11))
  {
    v12 = *(**(v9 + 88) + 632);

    return v12();
  }

  else
  {
    v14 = mach_absolute_time();
    os_unfair_lock_lock((v9 + 144));
    v15 = *(v9 + 160);
    v16 = *(v9 + 168);
    os_unfair_lock_unlock((v9 + 144));
    if (v15)
    {
      v17 = -(v15 - v14);
      if (v14 >= v15)
      {
        v17 = (v14 - v15);
      }

      v18 = round(v17 / v16);
    }

    else
    {
      v18 = 0.0;
    }

    v19 = *(this + 93);
    v20 = *(v19 + 440);
    memset(&v23.mHostTime, 0, 48);
    *&v23.mFlags = 1;
    v21 = floor(v18 / v20) * v20;
    memset(&v22, 0, 56);
    *&v22.mFlags = 2;
    v23.mSampleTime = v21;
    HALS_MultiTap::translate_time(v19, &v23, &v22);
    *a3 = v21;
    *a4 = v22.mHostTime;
    *a5 = 1;
    return 0;
  }
}

void HALS_MultiTap::translate_time(os_unfair_lock_s *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  mFlags = a3->mFlags;
  if (mFlags)
  {
    os_unfair_lock_lock(this + 36);
    v7 = *&this[40]._os_unfair_lock_opaque;
    v8 = *&this[42]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 36);
    v9 = a2->mFlags;
    if (v9)
    {
      mSampleTime = a2->mSampleTime;
    }

    else
    {
      mSampleTime = 0.0;
      if (v7 && (v9 & 2) != 0)
      {
        mHostTime = a2->mHostTime;
        v12 = -(v7 - mHostTime);
        v13 = mHostTime >= v7;
        v14 = mHostTime - v7;
        if (v13)
        {
          v12 = v14;
        }

        mSampleTime = round(v12 / v8);
      }
    }

    a3->mSampleTime = mSampleTime;
    mFlags = a3->mFlags;
    if ((mFlags & 2) == 0)
    {
LABEL_3:
      if ((mFlags & 4) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if ((mFlags & 2) == 0)
  {
    goto LABEL_3;
  }

  os_unfair_lock_lock(this + 36);
  v15 = *&this[40]._os_unfair_lock_opaque;
  v16 = *&this[42]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 36);
  v17 = a2->mFlags;
  if ((v17 & 2) != 0)
  {
    v18 = a2->mHostTime;
  }

  else
  {
    v18 = 0;
    if (v15 && (v17 & 1) != 0)
    {
      v19 = a2->mSampleTime;
      if (a2->mSampleTime >= 0.0)
      {
        v18 = v15 + vcvtad_u64_f64(v16 * v19);
      }

      else
      {
        v18 = v15 - vcvtad_u64_f64(v16 * (0.0 - v19));
      }
    }
  }

  a3->mHostTime = v18;
  if ((a3->mFlags & 4) != 0)
  {
LABEL_4:
    a3->mRateScalar = 1.0;
  }
}

void HALS_MultiTap_Engine::SetAudioCaptureMode(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN20HALS_MultiTap_Engine19SetAudioCaptureModeE17AudioCapturerMode_block_invoke;
  v3[3] = &__block_descriptor_tmp_17_18554;
  v3[4] = a1;
  v4 = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_MultiTap_Engine::IsCaptureFileEnabled(HALS_MultiTap_Engine *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK20HALS_MultiTap_Engine20IsCaptureFileEnabledEv_block_invoke;
  v4[3] = &unk_1E86786D0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE6B7930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK20HALS_MultiTap_Engine20IsCaptureFileEnabledEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 912))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__n128 HALS_MultiTap_Engine::GetPhysicalFormatForStreamAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 744);
  result = *(v4 + 24);
  v6 = *(v4 + 40);
  *(a4 + 32) = *(v4 + 56);
  *a4 = result;
  *(a4 + 16) = v6;
  return result;
}

__n128 HALS_MultiTap_Engine::GetVirtualFormatForStreamAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 744);
  result = *(v4 + 24);
  v6 = *(v4 + 40);
  *(a4 + 32) = *(v4 + 56);
  *a4 = result;
  *(a4 + 16) = v6;
  return result;
}

uint64_t HALS_MultiTap_Engine::UseClockBoundsCheck(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  if (*(v1 + 76) == 1 && (v2 = *(v1 + 88)) != 0)
  {
    return (*(*v2 + 392))();
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_MultiTap_Engine::IsClockStable(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  if (*(v1 + 76) == 1 && (v2 = *(v1 + 88)) != 0)
  {
    return (*(*v2 + 384))();
  }

  else
  {
    return 1;
  }
}

uint64_t HALS_MultiTap_Engine::GetClockAlgorithm(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  if (*(v1 + 76) == 1 && (v2 = *(v1 + 88)) != 0)
  {
    return (*(*v2 + 376))();
  }

  else
  {
    return 1918990199;
  }
}

uint64_t HALS_MultiTap_Engine::GetSafetyOffset(HALS_MultiTap_Engine *this)
{
  v1 = *(this + 93);
  if (*(v1 + 76) == 1 && (v2 = *(v1 + 88)) != 0)
  {
    return (*(*v2 + 360))();
  }

  else
  {
    return *(v1 + 68);
  }
}

void HALS_MultiTap_Engine::CopyAllContexts(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *a2;
  os_unfair_lock_lock((a1 + 740));
  v4 = *(a1 + 776);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    do
    {
      ++v5;
      v6 = *v6;
    }

    while (v6);
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v23, v4, v5);
  v7 = v23;
  v8 = v24;
  os_unfair_lock_unlock((a1 + 740));
  if (v7 != v8)
  {
    v9 = v7;
    do
    {
      v10 = HALS_ObjectMap::CopyObjectByObjectID(*v9);
      v11 = v10;
      if (v10)
      {
        v13 = *(a2 + 8);
        v12 = *(a2 + 16);
        if (v13 >= v12)
        {
          v15 = (v13 - *a2) >> 3;
          if ((v15 + 1) >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v16 = v12 - *a2;
          v17 = v16 >> 2;
          if (v16 >> 2 <= (v15 + 1))
          {
            v17 = v15 + 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v18);
          }

          v19 = (8 * v15);
          *v19 = v11;
          v14 = 8 * v15 + 8;
          v20 = *(a2 + 8) - *a2;
          v21 = v19 - v20;
          memcpy(v19 - v20, *a2, v20);
          v22 = *a2;
          *a2 = v21;
          *(a2 + 8) = v14;
          *(a2 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v10;
          v14 = (v13 + 1);
        }

        *(a2 + 8) = v14;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  if (v7)
  {

    operator delete(v7);
  }
}

void HALS_MultiTap_Engine::MaybeRefreshCompositionOnAllContexts(os_unfair_lock_s *this, const AudioObjectPropertyAddress **a2, const AudioObjectPropertyAddress *a3)
{
  v15 = 0x676C6F6261657245;
  LODWORD(v16) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (!CAPropertyAddress::IsCongruentAddress(&v15, v4, a3))
    {
      if (++v4 == v5)
      {
        return;
      }
    }
  }

  if (v4 != v5)
  {
    os_unfair_lock_lock(this + 185);
    v6 = *&this[194]._os_unfair_lock_opaque;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v7 = 0;
    if (v6)
    {
      v8 = v6;
      do
      {
        ++v7;
        v8 = *v8;
      }

      while (v8);
    }

    std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v15, v6, v7);
    v9 = v15;
    v10 = v16;
    os_unfair_lock_unlock(this + 185);
    if (v9 != v10)
    {
      v11 = v9;
      do
      {
        v12 = HALS_ObjectMap::CopyObjectByObjectID(*v11);
        v14 = v12;
        if (v12)
        {
          (*(**(v12 + 104) + 248))(*(v12 + 104));
        }

        HALS_ObjectMap::ReleaseObject(v14, v13);
        ++v11;
      }

      while (v11 != v10);
    }

    if (v9)
    {

      operator delete(v9);
    }
  }
}

void HALS_MultiTap_Engine::AssessAllContexts(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 185);
  v2 = *&this[194]._os_unfair_lock_opaque;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v3 = 0;
  if (v2)
  {
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v11, v2, v3);
  v5 = v11;
  v6 = v12;
  os_unfair_lock_unlock(this + 185);
  if (v5 != v6)
  {
    v7 = v5;
    do
    {
      v8 = HALS_ObjectMap::CopyObjectByObjectID(*v7);
      v10 = v8;
      if (v8)
      {
        (*(**(v8 + 104) + 240))(*(v8 + 104));
      }

      HALS_ObjectMap::ReleaseObject(v10, v9);
      ++v7;
    }

    while (v7 != v6);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void HALS_MultiTap_Engine::ResumeAllContexts(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 740));
  v2 = *(a1 + 776);
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v3 = 0;
  if (v2)
  {
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v11, v2, v3);
  v5 = v11;
  v6 = v12;
  os_unfair_lock_unlock((a1 + 740));
  if (v5 != v6)
  {
    v7 = v5;
    do
    {
      v8 = HALS_ObjectMap::CopyObjectByObjectID(*v7);
      v10 = v8;
      if (v8)
      {
        (*(**(v8 + 104) + 216))(*(v8 + 104), *(a1 + 16));
      }

      HALS_ObjectMap::ReleaseObject(v10, v9);
      ++v7;
    }

    while (v7 != v6);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void HALS_MultiTap_Engine::PauseAllContexts(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 740));
  v4 = *(a1 + 776);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    do
    {
      ++v5;
      v6 = *v6;
    }

    while (v6);
  }

  std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v24, v4, v5);
  v7 = v24;
  v8 = v25;
  os_unfair_lock_unlock((a1 + 740));
  if (v7 != v8)
  {
    v9 = v7;
    do
    {
      v10 = *v9;
      v11 = HALS_ObjectMap::CopyObjectByObjectID(*v9);
      v13 = v11;
      if (v11 && (*(**(v11 + 104) + 200))(*(v11 + 104), *(a1 + 16)))
      {
        v15 = *(a2 + 8);
        v14 = *(a2 + 16);
        if (v15 >= v14)
        {
          v17 = *a2;
          v18 = v15 - *a2;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v22);
          }

          *(4 * v19) = v10;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v23 = *a2;
          *a2 = 0;
          *(a2 + 8) = v16;
          *(a2 + 16) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v15 = v10;
          v16 = (v15 + 1);
        }

        *(a2 + 8) = v16;
      }

      HALS_ObjectMap::ReleaseObject(v13, v12);
      ++v9;
    }

    while (v9 != v8);
  }

  if (v7)
  {

    operator delete(v7);
  }
}

void HALS_MultiTap_Engine::UnregisterIOContext(os_unfair_lock_s *this, HALS_IOContext *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 4);
    v8 = 136315650;
    v9 = "HALS_MultiTap.cpp";
    v10 = 1024;
    v11 = 1287;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap_Engine::UnregisterIOContext: unregistering IOContext %d", &v8, 0x18u);
  }

  os_unfair_lock_lock(this + 185);
  v5 = *(a2 + 4);
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[190]._os_unfair_lock_opaque, v5);
  if (v6)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&this[190]._os_unfair_lock_opaque, v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "HALS_MultiTap.cpp";
    v10 = 1024;
    v11 = 1297;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap_Engine::UnregisterIOContext: unregistering IOContext %d, but it wasn't registered", &v8, 0x18u);
  }

  os_unfair_lock_unlock(this + 185);
  v7 = *MEMORY[0x1E69E9840];
}

void HALS_MultiTap_Engine::RegisterIOContext(os_unfair_lock_s *this, HALS_IOContext *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 4);
    v6 = 136315650;
    v7 = "HALS_MultiTap.cpp";
    v8 = 1024;
    v9 = 1279;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap_Engine::RegisterIOContext: registering IOContext %d", &v6, 0x18u);
  }

  os_unfair_lock_lock(this + 185);
  v6 = *(a2 + 4);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&this[190]._os_unfair_lock_opaque, v6);
  os_unfair_lock_unlock(this + 185);
  v5 = *MEMORY[0x1E69E9840];
}

void HALS_MultiTap_Engine::~HALS_MultiTap_Engine(HALS_MultiTap_Engine *this)
{
  HALS_MultiTap_Engine::~HALS_MultiTap_Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598BA00;
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 760);
  v2 = *(this + 94);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HALS_IOEngine::~HALS_IOEngine(this);
}

void HALS_MultiTap_Writer_State::initialize(HALS_MultiTap_Writer_State *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(this + 12);
  v3 = *(this + 11);
  v4 = v1;
  v5 = *(this + 26);
  *&v3 = **(this + 1);
  v2 = *(this + 32);
  operator new();
}

void HALS_MultiTap_Writer_State::teardown(HALS_MultiTap_Writer_State *this)
{
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    HALB_IOBufferManager_Server::FreeBuffer(v3, *(this + 50) * *(this + 34));
    *(this + 18) = 0;
  }

  v4 = *(this + 19);
  if (v4)
  {
    HALB_IOBufferManager_Server::FreeBuffer(v4, *(this + 50) * *(this + 34));
    *(this + 19) = 0;
  }

  *(this + 17) = 0;
  *(this + 20) = 0;
}

uint64_t HALS_MultiTap::create_engine(uint64_t this)
{
  v2 = *MEMORY[0x1E69E9840];
  if (!*(this + 16))
  {
    operator new();
  }

  v1 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE6B8F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v13);
    v15 = *(v12 + 94);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    HALS_IOEngine::~HALS_IOEngine(v12);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_MultiTap::copy_engine(HALS_MultiTap *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    HALS_MultiTap::create_engine(this);
    v2 = *(this + 4);
  }

  return HALS_ObjectMap::CopyObjectByObjectID(v2);
}

void HALS_MultiTap::register_meta_device(os_unfair_lock_s *this, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "HALS_MultiTap.cpp";
    v13 = 1024;
    v14 = 222;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap::register_meta_device: registering IOContext %d", buf, 0x18u);
  }

  os_unfair_lock_lock(this + 24);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[26]._os_unfair_lock_opaque, a2);
  if (v4)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "HALS_MultiTap.cpp";
      v13 = 1024;
      v14 = 225;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::register_meta_device: meta device already is already registered", buf, 0x12u);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&this[26]._os_unfair_lock_opaque, a2);
  os_unfair_lock_unlock(this + 24);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B91B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_MultiTap::unregister_meta_device(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "HALS_MultiTap.cpp";
    v12 = 1024;
    v13 = 231;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap::unregister_meta_device: unregistering IOContext %d", &v10, 0x18u);
  }

  os_unfair_lock_lock((a1 + 96));
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1 + 104), a2);
  if (v4)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase((a1 + 104), v4);
  }

  else
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_MultiTap.cpp";
      v12 = 1024;
      v13 = 234;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::unregister_meta_device: meta device already is not registered", &v10, 0x12u);
    }
  }

  os_unfair_lock_unlock((a1 + 96));
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B9354(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_MultiTap::set_format(HALS_MultiTap *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v53 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100000000) == 0)
  {
    v3 = *(this + 16);
  }

  if (v3 == 1)
  {
    if (*(a2 + 28) != 2)
    {
      v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v31 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v34 = *v33;
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        v34 = *v33;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_MultiTap.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 452;
        *&buf[18] = 2080;
        *&buf[20] = "not (format.mChannelsPerFrame == 2)";
        _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format must be stereo for stereo mixdown", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Format must be stereo for stereo mixdown", &v39);
      std::logic_error::logic_error(&v40, &v39);
      v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v40);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = -1;
      __p.__vftable = &unk_1F5991430;
      v42 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      v50 = "void HALS_MultiTap::set_format(const CA::StreamDescription &, std::optional<HALS_MultiChannelMixer::Mixdown>)";
      v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
      v52 = 452;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }
  }

  else if (!v3 && *(a2 + 28) != 1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_MultiTap.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 449;
      *&buf[18] = 2080;
      *&buf[20] = "not (format.mChannelsPerFrame == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format must be mono for mono mixdown", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Format must be mono for mono mixdown", &v39);
    std::logic_error::logic_error(&v40, &v39);
    v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    __p.__vftable = &unk_1F5991430;
    v42 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    v50 = "void HALS_MultiTap::set_format(const CA::StreamDescription &, std::optional<HALS_MultiChannelMixer::Mixdown>)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_MultiTap.cpp";
    v52 = 449;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v10 = HALS_MultiTap::copy_engine(this);
  v11 = v10;
  __p.__vftable = 0;
  __p.__imp_.__imp_ = 0;
  v42 = 0;
  if (v10)
  {
    (*(*v10 + 224))(v10, &__p);
  }

  std::__shared_mutex_base::lock((this + 176));
  os_unfair_lock_lock(this + 36);
  os_unfair_lock_lock(this + 108);
  HALS_MultiTap::_free_ring_buffer(this);
  v12 = *(this + 44);
  v13 = *(this + 45);
  while (v12 != v13)
  {
    v14 = *v12;
    v12 += 2;
    HALS_MultiTap_Writer_State::teardown(v14);
  }

  v15 = *(a2 + 32);
  v16 = *(a2 + 16);
  *(this + 24) = *a2;
  *(this + 7) = v15;
  *(this + 40) = v16;
  *(this + 16) = v3;
  v17 = *(this + 3);
  *(this + 21) = 24000000.0 / v17;
  *(this + 20) = 0;
  if (*(this + 76) == 1)
  {
    v18 = *(this + 55);
  }

  else
  {
    v18 = (v17 / 3.0);
  }

  *(this + 55) = v18;
  if (*(this + 19))
  {
    *(this + 20) = mach_absolute_time();
    HALS_MultiTap::_allocate_ring_buffer(this);
  }

  v19 = *(this + 44);
  if (v19 != *(this + 45))
  {
    v20 = *v19;
    v21 = *(this + 16);
    v22 = *(this + 24);
    v23 = *(this + 40);
    *(v20 + 208) = *(this + 7);
    *(v20 + 176) = v22;
    *(v20 + 192) = v23;
    v24 = *(v20 + 40);
    v25 = *(this + 24);
    v26 = *(this + 40);
    *(v20 + 104) = *(this + 7);
    *(v20 + 88) = v26;
    *(v20 + 72) = v25;
    if (v21 == 2 || v24 != v21)
    {
      *(v20 + 40) = v21;
      *(v20 + 112) = 0;
      *(v20 + 120) = 0;
      HALS_MultiChannelMixer::InitializeGainTables((v20 + 40));
    }

    HALS_MultiTap_Writer_State::initialize(v20);
  }

  os_unfair_lock_unlock(this + 108);
  os_unfair_lock_unlock(this + 36);
  std::__shared_mutex_base::unlock((this + 176));
  if (v11)
  {
    memset(buf, 0, 24);
    (*(*v11 + 256))(v11, buf);
    v27 = *buf;
    v28 = *&buf[8];
    while (v27 != v28)
    {
      (*(**(*v27 + 104) + 248))(*(*v27 + 104));
      v27 += 8;
    }

    (*(*v11 + 232))(v11, &__p);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  os_unfair_lock_lock(this + 24);
  if (*(this + 16))
  {
    v36[0] = 0;
    v36[1] = 0;
    HALS_System::GetInstance(&v38, 0, v36);
    std::unordered_set<unsigned int>::unordered_set(&v35, this + 104);
    v48 = 0;
    operator new();
  }

  os_unfair_lock_unlock(this + 24);
  if (__p.__vftable)
  {
    __p.__imp_.__imp_ = __p.__vftable;
    operator delete(__p.__vftable);
  }

  HALS_ObjectMap::ReleaseObject(v11, v29);
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1DE6B9B8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0,std::allocator<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN13HALS_MultiTap10set_formatERKN2CA17StreamDescriptionENSt3__18optionalIN22HALS_MultiChannelMixer7MixdownEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0,std::allocator<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (a1 + 24);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    v2 = HALS_ObjectMap::CopyObjectByObjectID(*(v1 + 4));
    v4 = v2;
    if (v2)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x4802000000;
      v28 = __Block_byref_object_copy__6128;
      v29 = __Block_byref_object_dispose__6129;
      __p = 0u;
      v31 = 0u;
      v19 = 0;
      v20 = &v19;
      v21 = 0x4002000000;
      v22 = __Block_byref_object_copy__1;
      v23 = __Block_byref_object_dispose__2;
      memset(v24, 0, sizeof(v24));
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZN15HALS_MetaDevice25HandleTapSampleRateChangeEv_block_invoke;
      v18[3] = &unk_1E8674A58;
      v18[5] = &v19;
      v18[6] = v2;
      v18[4] = &v25;
      v5 = (*(*v2 + 64))(v2);
      HALB_CommandGate::ExecuteCommand(v5, v18);
      v6 = v26[5];
      v7 = v26[6];
      if (v6 != v7)
      {
        HALS_Object::PropertiesChanged(v4, v4[4], 0, -1431655765 * ((v7 - v6) >> 2), v6);
      }

      v8 = v20[5];
      v9 = v20[6] - v8;
      if ((v9 & 0x1FFFFFFFE0) != 0)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v11 >= v9 >> 5)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = v8 + v10;
          v13 = HALS_ObjectMap::CopyObjectByObjectID(*(v8 + v10 + 24));
          v15 = v13;
          v16 = *(v12 + 8);
          if (*v12 != v16 && v13 != 0)
          {
            HALS_Object::PropertiesChanged(v4, *(v13 + 16), 0, -1431655765 * ((v16 - *v12) >> 2), *v12);
          }

          HALS_ObjectMap::ReleaseObject(v15, v14);
          ++v11;
          v8 = v20[5];
          v9 = v20[6] - v8;
          v10 += 32;
        }

        while (v11 < (v9 >> 5));
      }

      _Block_object_dispose(&v19, 8);
      v32 = v24;
      std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v32);
      _Block_object_dispose(&v25, 8);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    HALS_ObjectMap::ReleaseObject(v4, v3);
  }
}

void sub_1DE6B9EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  _Block_object_dispose(&a22, 8);
  *(v38 - 128) = v37;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v38 - 128));
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v36, v40);
  _Unwind_Resume(a1);
}

void std::__function::__func<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0,std::allocator<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0,std::allocator<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598BE48;
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0,std::allocator<HALS_MultiTap::set_format(CA::StreamDescription const&,std::optional<HALS_MultiChannelMixer::Mixdown>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598BE48;
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((a1 + 1));
  return a1;
}

void HALS_MultiTap::set_device_id(uint64_t a1, HALS_ObjectMap *this)
{
  RealDeviceObjectID = this;
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = this;
  *(a1 + 76) = BYTE4(this);
  if ((this & 0x100000000) == 0)
  {
    goto LABEL_2;
  }

  v6 = HALS_ObjectMap::CopyObjectByObjectID(this);
  v8 = v6;
  if (v6)
  {
    v10 = *(v6 + 20);
    v9 = *(v6 + 24);
    if (v10 == v9 || v10 == 1633773415)
    {
      if (v10 == 1633773415 || v10 != v9)
      {
        goto LABEL_17;
      }
    }

    else if (v9 == 1633773415)
    {
LABEL_17:
      v13 = *(v6 + 1576);
      if (v13 || (v13 = *(v8 + 196)) != 0)
      {
        RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(v13);
      }

      else
      {
        RealDeviceObjectID = 0;
      }

      goto LABEL_20;
    }

    HALS_ObjectMap::ReleaseObject(v6, v7);
    v8 = 0;
  }

LABEL_20:
  v14 = HALS_ObjectMap::CopyObjectByObjectID(RealDeviceObjectID);
  v15 = v14;
  if (!v14)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315650;
      v33 = "HALS_MultiTap.cpp";
      v34 = 1024;
      v35 = 564;
      v36 = 1024;
      v37 = RealDeviceObjectID;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::set_device_id: Failed to find target device for ID: %u", &v32, 0x18u);
    }

    if (*(a1 + 76) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  *(a1 + 440) = (*(*v14 + 304))(v14);
  v16 = HALS_IODevice::CopyIOEngine(v15);
  v17 = *(a1 + 88);
  *(a1 + 88) = v16;
  HALS_ObjectMap::ReleaseObject(v17, v18);
  if (*(a1 + 88))
  {
    v21 = 0;
    goto LABEL_37;
  }

  v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v26 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v19);
  }

  v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    v29 = *v28;
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  else
  {
    v29 = *v28;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v32 = 136315650;
    v33 = "HALS_MultiTap.cpp";
    v34 = 1024;
    v35 = 558;
    v36 = 1024;
    v37 = RealDeviceObjectID;
    _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::set_device_id: Failed to copy engine for device ID: %u", &v32, 0x18u);
  }

  if (*(a1 + 76))
  {
LABEL_35:
    *(a1 + 76) = 0;
  }

LABEL_36:
  v21 = 1;
LABEL_37:
  HALS_ObjectMap::ReleaseObject(v15, v20);
  HALS_ObjectMap::ReleaseObject(v8, v30);
  if (!v21)
  {
    goto LABEL_40;
  }

  if (*(a1 + 76))
  {
    v4 = *(a1 + 440);
    goto LABEL_3;
  }

LABEL_2:
  v4 = (*(a1 + 24) / 3.0);
LABEL_3:
  *(a1 + 440) = v4;
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  HALS_ObjectMap::ReleaseObject(v5, this);
LABEL_40:
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1DE6BA3B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void HALS_MultiTap::fetch_writer_state(HALS_MultiTap *this, uint64_t a2, unsigned int a3)
{
  os_unfair_lock_lock((a2 + 344));
  v6 = *(a2 + 352);
  v7 = *(a2 + 360);
  if (v7 == v6)
  {
    goto LABEL_11;
  }

  v8 = (v7 - v6) >> 4;
  do
  {
    v9 = v8 >> 1;
    v10 = &v6[16 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 16;
    v8 += ~(v8 >> 1);
    if (*v12 < a3)
    {
      v6 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == v6 || (v13 = *v6, **v6 != a3))
  {
LABEL_11:
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v14 = *(v6 + 1);
    *this = v13;
    *(this + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  os_unfair_lock_unlock((a2 + 344));
}

BOOL AMCP::Utility::Sorted_Vector<std::shared_ptr<HALS_MultiTap_Writer_State>,HALS_MultiTap_Writer_State_Ptr_Extract_Key,std::less<unsigned int>,std::allocator<std::shared_ptr<HALS_MultiTap_Writer_State>>>::find(_DWORD **a1, _DWORD **a2, unsigned int a3)
{
  if (a2 == a1)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
    v4 = (a2 - a1) >> 4;
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[2 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 2;
      v4 += ~(v4 >> 1);
      if (*v8 < a3)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  return v3 != a2 && **v3 == a3;
}

void std::__shared_ptr_emplace<HALS_MultiTap_Writer_State>::__on_zero_shared(uint64_t a1)
{
  HALS_MultiTap_Writer_State::teardown((a1 + 24));
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (a1 + 72);
  std::vector<HALS_MultiChannelMixer::StreamInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<HALS_MultiTap_Writer_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598BEC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_MultiTap::writer_stop(HALS_MultiTap *this, unsigned int a2)
{
  std::__shared_mutex_base::lock_shared((this + 176));
  HALS_MultiTap::fetch_writer_state(&v18, this, a2);
  if (v18)
  {
    HALS_MultiTap::stop(this);
    os_unfair_lock_lock(this + 86);
    v5 = *(this + 44);
    v4 = *(this + 45);
    if (AMCP::Utility::Sorted_Vector<std::shared_ptr<HALS_MultiTap_Writer_State>,HALS_MultiTap_Writer_State_Ptr_Extract_Key,std::less<unsigned int>,std::allocator<std::shared_ptr<HALS_MultiTap_Writer_State>>>::find(v5, v4, a2))
    {
      v7 = v6;
      v8 = v6 + 16;
      while (v8 != v4)
      {
        v9 = *v8;
        v8 += 16;
        if (*v9 != a2)
        {
          v10 = v8 - 16;
          goto LABEL_8;
        }
      }

      v10 = v4;
LABEL_8:
      if (v6 != v10)
      {
        if (v10 != v4)
        {
          v11 = -v5;
          v12 = &v6[v5];
          v13 = &v10[v5];
          do
          {
            v14 = &v13[v11];
            v15 = *&v13[v11];
            *v14 = 0;
            *(v14 + 1) = 0;
            v16 = *&v12[v11 + 8];
            *&v12[v11] = v15;
            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            v12 += 16;
            v13 += 16;
          }

          while (&v13[v11] != v4);
          v7 = &v12[v11];
          v4 = *(this + 45);
        }

        while (v4 != v7)
        {
          v17 = *(v4 - 1);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v4 -= 16;
        }

        *(this + 45) = v7;
      }
    }

    os_unfair_lock_unlock(this + 86);
    kdebug_trace();
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_mutex_base::unlock_shared((this + 176));
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_MultiTap::write(unsigned int,long long,AudioBufferList const*,AudioTimeStamp const*)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_MultiTap::write clip resampler output frames from %u to %u", &v12, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_MultiTap::write(unsigned int,long long,AudioBufferList const*,AudioTimeStamp const*)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_MultiTap::write(unsigned int,long long,AudioBufferList const*,AudioTimeStamp const*)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_MultiTap::write clip resampler input frames 0", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_MultiTap::write(unsigned int,long long,AudioBufferList const*,AudioTimeStamp const*)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void HALS_MultiTap::register_autostart_context(os_unfair_lock_s *this, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "HALS_MultiTap.cpp";
    v13 = 1024;
    v14 = 1132;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap::register_autostart_context: registering IOContext %d", buf, 0x18u);
  }

  os_unfair_lock_lock(this + 24);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[124]._os_unfair_lock_opaque, a2);
  if (v4)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "HALS_MultiTap.cpp";
      v13 = 1024;
      v14 = 1135;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::register_autostart_context: context already is already registered", buf, 0x12u);
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&this[124]._os_unfair_lock_opaque, a2);
  os_unfair_lock_unlock(this + 24);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6BAC5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_MultiTap::unregister_autostart_context(os_unfair_lock_s *this, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "HALS_MultiTap.cpp";
    v12 = 1024;
    v13 = 1143;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_MultiTap::unregister_autostart_context: unregistering IOContext %d", &v10, 0x18u);
  }

  os_unfair_lock_lock(this + 24);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[124]._os_unfair_lock_opaque, a2);
  if (v4)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&this[124]._os_unfair_lock_opaque, v4);
  }

  else
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_MultiTap.cpp";
      v12 = 1024;
      v13 = 1146;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MultiTap::unregister_autostart_context: context is not registered", &v10, 0x12u);
    }
  }

  os_unfair_lock_unlock(this + 24);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE6BAE00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t HALB_IOThread::DispatchPThread(HALB_IOThread *this, void *(__cdecl *a2)(void *), void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = (this + 8);
  if (*(this + 1))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v6 = 37;
      goto LABEL_6;
    }

    LODWORD(buf.__sig) = 136315394;
    *(&buf.__sig + 4) = "HALB_IOThread.cpp";
    *&buf.__opaque[4] = 1024;
    *&buf.__opaque[6] = 327;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "%25s:%-5d  HALB_IOThread::_Start: there already is a thread";
LABEL_4:
    _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, v5, &buf, 0x12u);
    goto LABEL_5;
  }

  if (*(this + 42) != 1735552612 && *(this + 42) != 2002872692)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    LODWORD(buf.__sig) = 136315394;
    *(&buf.__sig + 4) = "HALB_IOThread.cpp";
    *&buf.__opaque[4] = 1024;
    *&buf.__opaque[6] = 328;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "%25s:%-5d  HALB_IOThread::_Start: the state is not the ground or waiting state";
    goto LABEL_4;
  }

  v12 = pthread_attr_init(&buf);
  if (!v12)
  {
    v13 = pthread_attr_setdetachstate(&buf, 2);
    if (v13)
    {
      v6 = v13;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v20 = 136315394;
        v21 = "HALB_IOThread.cpp";
        v22 = 1024;
        v23 = 335;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d  HALB_IOThread::_Start: failed to set the detached attribute";
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, v15, v20, 0x12u);
      }
    }

    else
    {
      v16 = pthread_attr_getschedparam(&buf, &v19);
      if (v16)
      {
        v6 = v16;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v20 = 136315394;
          v21 = "HALB_IOThread.cpp";
          v22 = 1024;
          v23 = 340;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "%25s:%-5d  HALB_IOThread::_Start: failed to get the default scheduling parameters";
          goto LABEL_29;
        }
      }

      else
      {
        v19.sched_priority = 63;
        v17 = pthread_attr_setschedparam(&buf, &v19);
        if (v17)
        {
          v6 = v17;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v20 = 136315394;
            v21 = "HALB_IOThread.cpp";
            v22 = 1024;
            v23 = 344;
            v14 = MEMORY[0x1E69E9C10];
            v15 = "%25s:%-5d  HALB_IOThread::_Start: failed to set the priority";
            goto LABEL_29;
          }
        }

        else
        {
          v18 = pthread_attr_setschedpolicy(&buf, 4);
          if (v18)
          {
            v6 = v18;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v20 = 136315394;
              v21 = "HALB_IOThread.cpp";
              v22 = 1024;
              v23 = 347;
              v14 = MEMORY[0x1E69E9C10];
              v15 = "%25s:%-5d  HALB_IOThread::_Start: failed to set the scheduling policy";
              goto LABEL_29;
            }
          }

          else
          {
            v6 = pthread_create(v3, &buf, a2, a3);
            if (!v6)
            {
              if (*v3)
              {
                v6 = 0;
                *(this + 42) = 1937011316;
                goto LABEL_30;
              }

              v6 = 35;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v20 = 136315394;
              v21 = "HALB_IOThread.cpp";
              v22 = 1024;
              v23 = 355;
              v14 = MEMORY[0x1E69E9C10];
              v15 = "%25s:%-5d  HALB_IOThread::_Start: could not create a thread";
              goto LABEL_29;
            }
          }
        }
      }
    }

LABEL_30:
    pthread_attr_destroy(&buf);
    goto LABEL_6;
  }

  v6 = v12;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v20 = 136315394;
    v21 = "HALB_IOThread.cpp";
    v22 = 1024;
    v23 = 331;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOThread::_Start: the attributes could not be created", v20, 0x12u);
  }

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t HALB_IOThread::ConfigureThreadForRealtimePriority(_opaque_pthread_t **this, _opaque_pthread_t *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  IsCurrentThread = HALB_IOThread::IsCurrentThread(this, 1);
  if (!IsCurrentThread)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(IsCurrentThread);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALB_IOThread.cpp";
      v21 = 1024;
      v22 = 57;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::ConfigureThreadForRealtimePriority - must be called from on the thread", &v19, 0x12u);
    }
  }

  v11 = this[11];
  v12 = pthread_self();
  if (v11 != v12)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALB_IOThread.cpp";
      v21 = 1024;
      v22 = 58;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::ConfigureThreadForRealtimePriority - this thread ought to lock the lock", &v19, 0x12u);
    }
  }

  AMCP::Utility::configure_thread_for_realtime(this[1], a2, a3);
  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL HALB_IOThread::IsCurrentThread(HALB_IOThread *this, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(this + 11);
    v4 = pthread_self();
    if (v3 != v4)
    {
      v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v5 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v4);
      }

      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v7;
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      else
      {
        v8 = *v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALB_IOThread.cpp";
        v15 = 1024;
        v16 = 46;
        _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::IsCurrentThread: this thread ought to lock the lock", &v13, 0x12u);
      }
    }
  }

  v9 = *(this + 1);
  v10 = pthread_self();
  result = pthread_equal(v9, v10) != 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

AMCP::Log::AMCP_Scope_Registry *HALB_IOThread::ConfigureThreadForNormalPriority(_opaque_pthread_t **this)
{
  v20 = *MEMORY[0x1E69E9840];
  IsCurrentThread = HALB_IOThread::IsCurrentThread(this, 1);
  if (!IsCurrentThread)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(IsCurrentThread);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALB_IOThread.cpp";
      v18 = 1024;
      v19 = 72;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::ConfigureThreadForNormalPriority - must be called from on the thread", &v16, 0x12u);
    }
  }

  v7 = this[11];
  v8 = pthread_self();
  if (v7 != v8)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALB_IOThread.cpp";
      v18 = 1024;
      v19 = 73;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::ConfigureThreadForNormalPriority - this thread ought to lock the lock", &v16, 0x12u);
    }
  }

  result = AMCP::Utility::configure_thread_for_normal_priority(this[1], v9);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALB_IOThread::WaitForState(HALB_IOThread *this, int a2)
{
  v6 = (this + 16);
  v7 = HALB_Mutex::Lock((this + 16));
  v4 = HALB_IOThread::_WaitForState(this, a2);
  HALB_Guard::Locker::~Locker(&v6);
  return v4;
}

uint64_t HALB_IOThread::_WaitForState(HALB_IOThread *this, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 11);
  if (v4 != pthread_self())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALB_IOThread.cpp";
      v16 = 1024;
      v17 = 184;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOThread::_WaitForState: this thread ought to lock the lock", &v14, 0x12u);
    }

    v5 = 1;
    goto LABEL_22;
  }

  if (*(this + 42) != a2)
  {
    v8 = 0;
    v7 = 0;
    while (1)
    {
      v9 = v8;
      if (*(this + 42) == 1735552612 && *(this + 44) != 1735552612)
      {
        break;
      }

      v7 = HALB_Guard::WaitFor((this + 16), 0x3B9ACA00uLL);
      if ((v7 == 60 || v7 == 0) && v9 < 0xE)
      {
        v8 = v9 + 1;
        if (*(this + 42) != a2)
        {
          continue;
        }
      }

      ++v9;
      break;
    }

    v6 = (this + 172);
    if (!*(this + 43))
    {
      if (v9 >= 0xF && *(this + 42) != a2)
      {
        v5 = 60;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

LABEL_21:
    v5 = *v6;
    goto LABEL_22;
  }

  v6 = (this + 172);
  if (*(this + 43))
  {
    goto LABEL_21;
  }

  v7 = 0;
LABEL_25:
  if (*(this + 42) == 1735552612 && *(this + 42) != a2)
  {
    v5 = 89;
  }

  else
  {
    v5 = 0;
    if (v7 && v7 != 60)
    {
      if (*(this + 42) == a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = v7;
      }
    }
  }

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void HALB_IOThread::PostStateChange(_opaque_pthread_t **this, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  IsCurrentThread = HALB_IOThread::IsCurrentThread(this, 1);
  if (!IsCurrentThread)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(IsCurrentThread);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "HALB_IOThread.cpp";
      v19 = 1024;
      v20 = 143;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::PostStateChange: must be called from on the thread", &v17, 0x12u);
    }
  }

  v9 = this[11];
  v10 = pthread_self();
  if (v9 != v10)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "HALB_IOThread.cpp";
      v19 = 1024;
      v20 = 144;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::PostStateChange: this thread ought to lock the lock", &v17, 0x12u);
    }
  }

  if (HALB_IOThread::IsCurrentThread(this, 1))
  {
    v15 = this[11];
    if (v15 == pthread_self())
    {
      *(this + 44) = *(this + 42);
      *(this + 42) = a2;
      HALB_Guard::NotifyAll((this + 2));
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}