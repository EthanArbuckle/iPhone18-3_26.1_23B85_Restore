void sub_1DE31C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  __cxa_free_exception(v45);
  a45 = &a13;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&a45);
  a45 = &a16;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

void std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    v5 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 88;
        std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(v3);
      }

      while (v3 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if ((0x2E8BA2E8BA2E8BA3 * ((v5[2] - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL && (v7 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void AMCP::DAL::DAL_Timed_Segment::get_format(AMCP::DAL::DAL_Timed_Segment *this, uint64_t a2)
{
  (*(*a2 + 56))(&v5, a2);
  v3 = v5;
  if (v5)
  {
    v4 = *(v5 + 24);
    *this = *(v5 + 8);
    *(this + 1) = v4;
    *(this + 4) = *(v3 + 40);
  }

  else
  {
    *(this + 4) = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::~Fixed_Buffer(AMCP::DAL::Fixed_Buffer *this)
{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

double AMCP::Graph::Manifest_Task::calculate_samples_to_process_for_output(AMCP::Graph::Manifest_Task *this, AMCP::Graph::Manifest_Task *a2)
{
  if (this == a2)
  {
    return 4294967300.0;
  }

  v3 = this;
  v4 = 4294967300.0;
  do
  {
    v5 = *v3;
    v6 = *(v3 + 1);
    while (v5 != v6)
    {
      v7 = *v5;
      v20 = *(*v5 + 208);
      v8 = v7[29];
      v21 = v7[28];
      v22 = v8;
      v9 = v7[30];
      v23 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v20);
      v11 = *v5;
      v16 = *(*v5 + 168);
      v12 = v11[24];
      v17 = v11[23];
      v18 = v12;
      v13 = v11[25];
      v19 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = AMCP::DAL::DAL_Time::get_sample_time(&v16);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (round(sample_time - v14) < round(v4))
      {
        v4 = sample_time - v14;
      }

      v5 += 16;
    }

    v3 = (v3 + 40);
  }

  while (v3 != a2);
  return v4;
}

void sub_1DE31CA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Packetized_File_Handler::get_name(AMCP::DAL::Packetized_File_Handler *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 56);
    a2->__r_.__value_.__r.__words[2] = *(this + 9);
  }
}

__n128 AMCP::DAL::Packetized_File_Handler::get_format@<Q0>(AMCP::DAL::Packetized_File_Handler *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 8);
  v3 = *(this + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 5);
  return result;
}

OpaqueExtAudioFile *AMCP::DAL::Packetized_File_Reader::close(AMCP::DAL::Packetized_File_Reader *this)
{
  result = *(this + 6);
  if (result)
  {
    result = ExtAudioFileDispose(result);
    *(this + 6) = 0;
  }

  return result;
}

void AMCP::DAL::Packetized_File_Reader::read_data(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v120 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v78 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v80 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      v81 = *v80;
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }

    else
    {
      v81 = *v80;
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Packetized_File_Reader.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 214;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Reader::Read: m_audio_File is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v94);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Packetized_File_Reader::Read: m_audio_File is null", &ioData);
    std::logic_error::logic_error(&v89, &ioData);
    v89.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(__p, &v89);
    *&__p[24] = 0;
    v106 = 0;
    v107 = 0;
    v108 = -1;
    *__p = &unk_1F5991430;
    *&__p[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, __p);
    v112 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
    *&v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
    DWORD2(v113) = 214;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v97);
  }

  (*(*a1 + 40))(buf);
  v6 = *&buf[20];
  AMCP::DAL::Writable_Range::get_direct_write_ranges(&v94, a2);
  v7 = v94;
  v84 = v95;
  if (v94 == v95)
  {
    goto LABEL_64;
  }

  v82 = a3;
  v8 = 0;
  v9 = v95;
  v83 = v6;
  do
  {
    v10 = *(v7 + 16);
    *buf = *v7;
    v11 = *(v7 + 40);
    v112 = *(v7 + 32);
    *&buf[16] = v10;
    v12 = *(v7 + 48);
    *&v113 = v11;
    *(&v113 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v7 + 56);
    v14 = *(v7 + 80);
    v115 = *(v7 + 72);
    v114 = v13;
    v15 = *(v7 + 88);
    v116 = v14;
    v117 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(v7 + 104);
    v118 = *(v7 + 96);
    v119 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *buf;
    v17 = *&buf[8];
    v19 = *(a1 + 136) - *(a1 + 128);
    if (v19)
    {
      ioData.__r_.__value_.__r.__words[0] = 0;
      *(&v110 + 1) = 0;
      v20 = AMCP::Utility::AudioBufferList_Create((-1431655765 * (v19 >> 3)));
      v99.__vftable = &unk_1F59915B8;
      v101 = &v99;
      *__p = v20;
      std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](&__p[8], &v99);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v99);
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](&ioData, __p);
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](__p, 0);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&__p[8]);
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 20);
      v24 = ioData.__r_.__value_.__r.__words[0];
      v25 = (ioData.__r_.__value_.__r.__words[0] + 16);
      if ((v23 & 0x20) != 0)
      {
LABEL_12:
        if (v22 < *(a1 + 36))
        {
          v26 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        while (!v21)
        {
          v26 = *(a1 + 36);
LABEL_16:
          *(v25 - 2) = v26;
          v27 = (*(a1 + 128) + v21);
          *(v25 - 1) = v27[1];
          *v25 = *v27;
          v25 += 2;
          ++v22;
          v21 += 24;
          if ((v23 & 0x20) != 0)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(&ioData, v118, v119);
      v24 = ioData.__r_.__value_.__r.__words[0];
    }

    v28 = vcvtmd_s64_f64(v17 - v18) / v6;
    ioNumberFrames = v28;
    v29 = ExtAudioFileRead(*(a1 + 48), &ioNumberFrames, v24);
    if (v29)
    {
      v62 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v62 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v29);
      }

      v64 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v63 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        v65 = *v64;
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      else
      {
        v65 = *v64;
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Packetized_File_Reader.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 227;
        *&__p[18] = 2080;
        *&__p[20] = "not (the_error == noErr)";
        _os_log_error_impl(&dword_1DE1F9000, v65, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Reader::Packetized_File_Reader: reading the data failed", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v90);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("Packetized_File_Reader::Packetized_File_Reader: reading the data failed", &v89);
      std::logic_error::logic_error(&v88, &v89);
      v88.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v99, &v88);
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = -1;
      v99.__vftable = &unk_1F5991430;
      v100 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v99);
      v106 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
      v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
      v108 = 227;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v92);
    }

    if (ioNumberFrames)
    {
      v30 = *(a1 + 16);
      v31 = *(a1 + 96);
      if (v30 == v31)
      {
        v32 = v118;
        v33 = v119;
        if (v119)
        {
          atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v32)
        {
          (*(*v32 + 72))(v32, &ioData);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        goto LABEL_52;
      }

      if (v30 != 1667326771 || v31 != 1633889587)
      {
        v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v74 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v29);
        }

        v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = *v76;
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        else
        {
          v77 = *v76;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Packetized_File_Reader.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 234;
          *&__p[18] = 2080;
          *&__p[20] = "not (m_format.mFormatID == kAudioFormat60958AC3 && m_file_format.mFormatID == kAudioFormatAC3)";
          _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Incorrect client format", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v90);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Incorrect client format", &v89);
        std::logic_error::logic_error(&v88, &v89);
        v88.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v99, &v88);
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v104 = -1;
        v99.__vftable = &unk_1F5991430;
        v100 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v99);
        v106 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
        v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
        v108 = 234;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v92);
      }

      v34 = a2;
      v35 = ioData.__r_.__value_.__r.__words[0];
      AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(&v97, v118, v119);
      v37 = *(v97 + 12);
      v38 = *(a1 + 24);
      if (v37 < v38)
      {
        goto LABEL_96;
      }

      v39 = *(v35 + 12);
      if (v37 < v39)
      {
        goto LABEL_96;
      }

      v40 = *(a1 + 96);
      v41 = *(v35 + 16);
      v42 = *(a1 + 16);
      v43 = *(v97 + 16);
      if (v40 == 1667326771)
      {
        v44 = v39 - 8;
      }

      else
      {
        v44 = *(v35 + 12);
      }

      v45 = v41[4 * (v40 == 1667326771)];
      if (v45 == 2935)
      {
        v46 = 0;
      }

      else
      {
        if (v45 != 30475)
        {
          v66 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v66 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v68 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v67 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
            v69 = *v68;
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }

          else
          {
            v69 = *v68;
          }

          v36 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
          if (v36)
          {
            *__p = 136315394;
            *&__p[4] = "Packetized_File_Reader.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 72;
            _os_log_error_impl(&dword_1DE1F9000, v69, OS_LOG_TYPE_ERROR, "%32s:%-5d convert_ac3_to_cac3: missing sync word", __p, 0x12u);
          }

LABEL_96:
          v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v70 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            v73 = *v72;
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          else
          {
            v73 = *v72;
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315650;
            *&__p[4] = "Packetized_File_Reader.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 240;
            *&__p[18] = 2080;
            *&__p[20] = "not (the_error == noErr)";
            _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to convert ac3 to cac3", __p, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v91);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string("Failed to convert ac3 to cac3", &v92);
          std::logic_error::logic_error(&v90, &v92);
          v90.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v99, &v90);
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = -1;
          v99.__vftable = &unk_1F5991430;
          v100 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v99);
          v106 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
          v107 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
          v108 = 240;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v88);
        }

        v46 = 1;
      }

      if (v40 == 1633889587 && v42 == 1667326771)
      {
        v47 = v41[2];
        if (v46)
        {
          LOBYTE(v47) = HIBYTE(v41[2]);
        }

        *v43 = 1310718066;
        *(v43 + 4) = ((v47 & 7) << 8) | 1;
        *(v43 + 6) = 8 * v39;
        v48 = (v43 + 8);
        if (!v46)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v48 = *(v97 + 16);
        if (!v46)
        {
LABEL_44:
          memcpy(v48, v41, v44);
LABEL_49:
          if (v42 == 1667326771)
          {
            bzero(&v48[v44 & 0xFFFFFFFFFFFFFFFELL], v43 + v38 - &v48[v44 & 0xFFFFFFFFFFFFFFFELL]);
          }

          std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v97, 0);
          std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v98);
          a2 = v34;
          v6 = v83;
          v9 = v84;
          goto LABEL_52;
        }
      }

      if (v44 >= 2)
      {
        v49 = v44 >> 1;
        v50 = v48;
        do
        {
          v51 = *v41++;
          *v50++ = bswap32(v51) >> 16;
          --v49;
        }

        while (v49);
      }

      goto LABEL_49;
    }

LABEL_52:
    std::string::basic_string[abi:ne200100]<0>(&v86, "packetized_file_reader_node");
    v52 = v86;
    v96[0] = v87;
    *(v96 + 7) = *(&v87 + 7);
    v53 = HIBYTE(v87);
    v86 = 0;
    v87 = 0uLL;
    *__p = 0;
    *&__p[8] = v52;
    *&__p[16] = v96[0];
    *&__p[23] = *(v96 + 7);
    __p[31] = v53;
    v96[0] = 0;
    *(v96 + 7) = 0;
    v106 = 0;
    LODWORD(v107) = 0;
    AMCP::DAL::Writable_Range::commit_direct_write(*(a2 + 80), __p, buf);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&ioData, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&ioData.__r_.__value_.__l.__size_);
    if (v119)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

    if (*(&v113 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v113 + 1));
    }

    v8 += v28;
    v7 += 112;
  }

  while (v7 != v9);
  a3 = v82;
  if (!v8)
  {
LABEL_64:
    *a3 = 0;
    a3[80] = 0;
    goto LABEL_80;
  }

  *__p = *a2;
  v54 = *(a2 + 24);
  *&__p[16] = *(a2 + 16);
  *&__p[24] = v54;
  v55 = *(a2 + 32);
  v106 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v85 = v54;
    *(&v85 + 1) = v55;
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v85 = v54;
  }

  LODWORD(ioData.__r_.__value_.__l.__data_) = 2;
  *&ioData.__r_.__value_.__l.__size_ = (v8 * v6);
  ioData.__r_.__value_.__r.__words[2] = 0;
  v110 = v85;
  boost::operators_impl::operator+(&v99, __p, &ioData);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, __p, &v99);
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

  if (*(&v110 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v110 + 1));
  }

  *v82 = *buf;
  v56 = *&buf[24];
  *(v82 + 2) = *&buf[16];
  *(v82 + 3) = v56;
  v57 = v112;
  *(v82 + 4) = v112;
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v82 + 40) = v113;
  v58 = *(&v114 + 1);
  *(v82 + 7) = v114;
  *(v82 + 8) = v58;
  v59 = v115;
  *(v82 + 9) = v115;
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    v60 = v115;
    v82[80] = 1;
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }
  }

  else
  {
    v82[80] = 1;
  }

  if (v112)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v112);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

LABEL_80:
  *buf = &v94;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  v61 = *MEMORY[0x1E69E9840];
}

void sub_1DE31DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a39, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a40);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a60, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a61);
  v63 = *(v61 - 136);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = *(v61 - 152);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v61 - 192);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  *(v61 - 240) = &a34;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100]((v61 - 240));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = a2 + 1;
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](a1, v4);
  v7 = (a1 + 4);
  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = a2[4];
  v9 = a2 + 4;
  v8 = v10;
  if (v10)
  {
    if (v8 == v5)
    {
      *v7 = a1 + 1;
      (*(**v9 + 24))(*v9, a1 + 1);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = a1 + 4;
  }

  *v9 = 0;
  return a1;
}

uint64_t std::__function::__func<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1},std::allocator<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1}>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7Utility10create_ablEjEUlP15AudioBufferListE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

caulk::rt_safe_memory_resource *std::__function::__func<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1},std::allocator<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1}>,void ()(AudioBufferList *)>::operator()(uint64_t a1, unsigned int **a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v3 = *a2;
    v4 = *v3;
    return caulk::rt_safe_memory_resource::rt_deallocate(result, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AMCP::DAL::Packetized_File_Reader::~Packetized_File_Reader(AMCP::DAL::Packetized_File_Reader *this)
{
  AMCP::DAL::Packetized_File_Reader::~Packetized_File_Reader(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966720;
  v2 = *(this + 6);
  if (v2)
  {
    ExtAudioFileDispose(v2);
    *(this + 6) = 0;
  }

  v3 = (this + 128);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F597F3B0;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

void std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v4 - 24));
      }

      while (v4 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((v6[2] - v5) >> 3) < 0xAAAAAAAAAAAAAABLL && (v7 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v7, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v16 = (v3 + 24 * a2);
      while (v4 != v16)
      {
        v4 = (v4 - 24);
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data(v4);
      }

      *(a1 + 8) = v16;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3) >= v7)
    {
      v17 = 24 * ((24 * v7 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v17);
      *(a1 + 8) = v4 + v17;
    }

    else
    {
      if (a2 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v18[4] = a1;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a2)
      {
        v10 = a2;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      v12 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v11);
      v13 = v12 + v5;
      v18[0] = v12;
      v18[1] = v12 + v5;
      v18[3] = v12 + 24 * v14;
      v15 = 24 * ((24 * v7 - 24) / 0x18) + 24;
      bzero(v12 + v5, v15);
      v18[2] = &v13[v15];
      std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(a1, v18);
      std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(v18);
    }
  }
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0xAAAAAAAAAAAAAABLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

AMCP::DAL::Audio_Samples_Data *std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      *(v9 + 2) = *(v8 + 2);
      *v9 = v10;
      v9 += 24;
      v8 = (v8 + 24);
    }

    while (v8 != v5);
    do
    {
      AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data(result);
      result = (v11 + 24);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

void std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((i - 24));
  }

  v4 = *a1;
  if (*a1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 3) < 0xAAAAAAAAAAAAAABLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    return;
  }

  v4 = v3[2];
  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = 0;
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_36[v7];
      if (v10 == 47)
      {
        v8 = &aLibraryCachesC_36[v7];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }

      v12 = v7++ >= 0xFFF;
    }

    while (!v12);
    if (*MEMORY[0x1E69E3C08])
    {
      if (v8)
      {
        v13 = v8 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
      }

      v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      v15 = v14;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 20) = 2;
      *(v14 + 24) = v13;
      *(v14 + 32) = 30;
      v16 = &unk_1F59667D0;
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v19 = 0;
  v9 = *(v17 + 8);
  v20 = 47;
  do
  {
    v21 = &aLibraryCachesC_36[v18];
    if (v20 == 47)
    {
      v19 = &aLibraryCachesC_36[v18];
    }

    v20 = v21[1];
    if (!v21[1])
    {
      break;
    }

    v12 = v18++ >= 0xFFF;
  }

  while (!v12);
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_35;
  }

  if (v19)
  {
    v22 = v19 + 1;
  }

  else
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
  }

  v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v15 = v14;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 20) = 2;
  *(v14 + 24) = v22;
  *(v14 + 32) = 33;
  v16 = &unk_1F5966828;
LABEL_30:
  *v14 = v16;
  caulk::concurrent::messenger::enqueue(v9, v15);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [ahal_dsp] DSP after process event (rt).", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [ahal_dsp] DSP before process event (rt).", &v10, 0x12u);
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

void caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostEventListener_Stream::on_dsp_event(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    v5 = **v3;
    if (v6)
    {
      v7 = v6;
      v8 = *(a2 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = 0;
        v15 = 0;
        v16 = 47;
        do
        {
          v17 = &aLibraryCachesC_36[v14];
          if (v16 == 47)
          {
            v15 = &aLibraryCachesC_36[v14];
          }

          v16 = v17[1];
          if (!v17[1])
          {
            break;
          }
        }

        while (v14++ < 0xFFF);
        if (v15)
        {
          v19 = v15 + 1;
        }

        else
        {
          v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
        }

        caulk::string_from_4cc(&__p, *(v7 + 2));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v21 = *(a1 + 8);
        *buf = 136315906;
        v24 = v19;
        v25 = 1024;
        v26 = 20;
        v27 = 2080;
        v28 = p_p;
        v29 = 1024;
        v30 = v21;
        _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] DSP property changed %s (Context ID: %d)", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE31EAEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = bswap32(__val);
  v8 = v3;
  if ((v3 - 32) > 0x5E || ((v3 >> 8) - 32) > 0x5E || ((v3 << 8 >> 24) - 32) > 0x5E || ((v3 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v9 = 39;
    v7 = 39;
    result = strlen(&v7);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(&retstr->__r_.__value_.__s + 23) = result;
    if (result)
    {
      result = memcpy(retstr, &v7, result);
    }

    retstr->__r_.__value_.__s.__data_[v5] = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE31EC44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Control::~Control(AMCP::Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AMCP::Slider_Control::~Slider_Control(AMCP::Slider_Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AMCP::Level_Control::~Level_Control(AMCP::Level_Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AMCP::Boolean_Control::~Boolean_Control(AMCP::Boolean_Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AMCP::Selector_Control::~Selector_Control(AMCP::Selector_Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AMCP::Stereo_Pan_Control::~Stereo_Pan_Control(AMCP::Stereo_Pan_Control *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t AMCP::Control::Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(a1, a2, a3);
  *v4 = &unk_1F5966880;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x6163746C);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 30;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE31F1F8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void AMCP::Control::Control(AMCP::Control *this, const AMCP::Device *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(***(a2 + 4) + 16);
  operator new();
}

void sub_1DE31F414(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7ControlC1ERKNS_6DeviceEjjjjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  result = AMCP::is_base_of(0x6163746C, *(a1 + 16));
  if (result)
  {
    if (*(*(a1 + 8) + 8) == AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2))
    {
      simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
      result = AMCP::is_base_of(*(a1 + 16), simple_required);
      if (result)
      {
        v6 = AMCP::Core::Core::get_simple_required_property<1668047219u>(*a2);
        v7 = AMCP::Core::Core::get_simple_required_property<1668506480u>(*a2);
        v8 = AMCP::Core::Core::get_simple_required_property<1667591277u>(*a2);
        result = 0;
        if (v6 == *(a1 + 20) && v7 == *(a1 + 24))
        {
          return v8 == *(a1 + 28);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1668506480u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "pcscbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v8 = 4;
      strcpy(__p, "cscp");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE31F6CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1667591277u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "mlecbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v8 = 4;
      strcpy(__p, "celm");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE31F84C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59669D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t AMCP::Control::get_scope(AMCP::Control *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1668506480u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Control::get_element(AMCP::Control *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1667591277u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Control::is_read_only(AMCP::Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "odrcbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v15 = 4;
          strcpy(__p, "crdo");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE31FBD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Control::Value_Observer::Value_Observer(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    a1[1] = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    a1[1] = 0;
  }

  a1[2] = a3;
  return a1;
}

void AMCP::Control::Value_Observer::~Value_Observer(std::__shared_weak_count **this)
{
  AMCP::Control::Value_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::Control::Value_Observer::reset(AMCP::Control::Value_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*this)
    {
      v5 = *(this + 2);
      if (v5)
      {
        AMCP::Core::Conductor::destroy_control_value_observer(*(*this + 32), v5);
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::Control::create_value_observer(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !*(a1 + 16))
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "Control.cpp";
      v27 = 1024;
      v28 = 119;
      v29 = 2080;
      v30 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "No underlying object");
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v31 = "Control::Value_Observer AMCP::Control::create_value_observer(const Value_Observer_Proc &)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v33 = 119;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v8 = *(a1 + 32);
  v9 = *(**v8 + 32);
  *buf = *(a1 + 8);
  v10 = AMCP::Observer::Map<std::function<void ()>,unsigned int,true,std::less<unsigned int>>::register_observer(v9 + 2480, buf, a2);
  AMCP::Control::Value_Observer::Value_Observer(a3, v8, v10);
  v11 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE31FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v21 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 129));
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Slider_Control::Slider_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668A0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x736C6472);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 130;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_slider_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE32017C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1DE320310(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t AMCP::Slider_Control::get_value(AMCP::Slider_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "vrdsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
      if (!HIDWORD(v6))
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v15 = 4;
          strcpy(__p, "sdrv");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE32054C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Slider_Control::set_value(AMCP::Slider_Control *this, int a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F6273647276;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,unsigned int const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LODWORD(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE32069C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE320674);
}

uint64_t AMCP::Slider_Control::set_value_and_wait(AMCP::Slider_Control *this, int a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F6273647276;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,unsigned int const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LODWORD(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE32081C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3207F4);
}

unint64_t AMCP::Slider_Control::get_range(AMCP::Slider_Control *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "rrdsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(v5, buf);
      if ((v7 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *v14;
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          v15 = *v14;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 4;
          strcpy(__p, "sdrr");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v19 = 1024;
          v20 = 391;
          v21 = 2080;
          v22 = "optional_value.operator BOOL() == true";
          v23 = 2080;
          v24 = __p;
          v25 = 1024;
          v26 = 1735159650;
          v27 = 1024;
          v28 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v8 = v6 & 0xFFFFFFFF00000000;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 | v9;
}

void sub_1DE320A1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
LABEL_14:
    LOBYTE(v5) = 0;
    return v5 | (v2 << 8);
  }

  AMCP::Core::Core::find_operation(&v12, a1, a2);
  v5 = v12;
  if (v12)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      v5 = AMCP::Core::Operation::call_function<std::tuple<unsigned int,unsigned int>>(v5);
LABEL_5:
      v7 = 0;
      v2 = v5 >> 8;
      goto LABEL_11;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v10, v5);
      v5 = AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(v10);
      if (v11)
      {
        v11(0, v10, 0, 0);
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 0;
  }

  v7 = 1;
LABEL_11:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v7)
  {
    goto LABEL_14;
  }

  return v5 | (v2 << 8);
}

uint64_t AMCP::Level_Control::Level_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668C0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x6C65766C);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 202;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_level_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE320C6C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1DE320E00(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

float AMCP::Level_Control::get_scalar_value(AMCP::Level_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vsclbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v10 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            v15 = 4;
            strcpy(__p, "lcsv");
            *buf = 136316418;
            *&buf[4] = "Core.h";
            v17 = 1024;
            v18 = 391;
            v19 = 2080;
            v20 = "optional_value.operator BOOL() == true";
            v21 = 2080;
            v22 = __p;
            v23 = 1024;
            v24 = 1735159650;
            v25 = 1024;
            v26 = 0;
            _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          abort();
        }

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE321038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    goto LABEL_13;
  }

  AMCP::Core::Core::find_operation(&v14, a1, a2);
  v5 = v14;
  if (v14)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<float>(v5);
      v2 = v7;
LABEL_5:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v9))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v12, v5);
      v2 = AMCP::Thing::convert_to<float>(v12);
      if (v13)
      {
        v13(0, v12, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v8 = 1;
LABEL_10:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!v8)
  {
    v10 = 0x100000000;
    return v10 | LODWORD(v2);
  }

LABEL_13:
  v10 = 0;
  LODWORD(v2) &= 0xFFFFFF00;
  return v10 | LODWORD(v2);
}

uint64_t AMCP::Level_Control::set_scalar_value(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C637376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE32128C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE321264);
}

uint64_t AMCP::Level_Control::set_scalar_value_and_wait(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C637376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE32140C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3213E4);
}

float AMCP::Level_Control::get_decibel_value(AMCP::Level_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vdclbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v10 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            v15 = 4;
            strcpy(__p, "lcdv");
            *buf = 136316418;
            *&buf[4] = "Core.h";
            v17 = 1024;
            v18 = 391;
            v19 = 2080;
            v20 = "optional_value.operator BOOL() == true";
            v21 = 2080;
            v22 = __p;
            v23 = 1024;
            v24 = 1735159650;
            v25 = 1024;
            v26 = 0;
            _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          abort();
        }

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE3215F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Level_Control::set_decibel_value(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C636476;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE321748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE321720);
}

uint64_t AMCP::Level_Control::set_decibel_value_and_wait(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C636476;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE3218C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3218A0);
}

double AMCP::Level_Control::get_decibel_range(AMCP::Level_Control *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v4 = 0.0;
    if (v3)
    {
      v5 = v3;
      v6 = *(this + 2);
      if (!v6)
      {
LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_18;
      }

      v22 = 0x676C6F626C636472;
      v23 = 0;
      has_property = AMCP::Core::Core::has_property(v6, &v22);
      if (!has_property)
      {
LABEL_19:
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
          v21 = 4;
          strcpy(&__p, "lcdr");
          *buf = 136316418;
          v25 = "Core.h";
          v26 = 1024;
          v27 = 391;
          v28 = 2080;
          v29 = "optional_value.operator BOOL() == true";
          v30 = 2080;
          *v31 = &__p;
          *&v31[8] = 1024;
          v32 = 1735159650;
          v33 = 1024;
          v34 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v21 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v6, &v22);
      v8 = __p;
      if (__p)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<CA::ValueRange>(v8);
          v4 = v10;
LABEL_8:
          v11 = 0;
          goto LABEL_14;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v8);
          v4 = AMCP::Thing::convert_to<CA::ValueRange>(buf);
          if (*&v31[2])
          {
            (*&v31[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v11 = 1;
LABEL_14:
      has_property = v20;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0.0;
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE321B68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<CA::ValueRange>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRange, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRange, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE322010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[145];
}

float AMCP::Level_Control::convert_scalar_value_to_decibels(AMCP::Level_Control *this, float a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0 || (v5 = *(this + 2)) == 0)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Control.cpp";
      v47 = 1024;
      v48 = 314;
      v49 = 2080;
      v50 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v36, "No underlying object");
    std::runtime_error::runtime_error(&v39, &v36);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "float32_t AMCP::Level_Control::convert_scalar_value_to_decibels(float32_t) const";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v53 = 314;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v6 = v3;
  v32 = 0x676C6F626C637364;
  v33 = 0;
  operation = AMCP::Core::Core::find_operation(&v34, v5, &v32);
  v8 = v34;
  if (!v34)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v47 = 1024;
      v48 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v53 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float)>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v47 = 1024;
      v48 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<float ()(float)>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v47 = 1024;
      v48 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  *buf = a2;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(*v12 + 48))(v12, buf);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1DE3229DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
    std::runtime_error::~runtime_error(&a28);
    if (a26 < 0)
    {
      operator delete(a21);
    }

    if (v30)
    {
      __cxa_free_exception(v29);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 145));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<float ()(float)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[147];
}

float AMCP::Level_Control::convert_decibel_value_to_scalar(AMCP::Level_Control *this, float a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0 || (v5 = *(this + 2)) == 0)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Control.cpp";
      v47 = 1024;
      v48 = 321;
      v49 = 2080;
      v50 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v36, "No underlying object");
    std::runtime_error::runtime_error(&v39, &v36);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "float32_t AMCP::Level_Control::convert_decibel_value_to_scalar(float32_t) const";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v53 = 321;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v6 = v3;
  v32 = 0x676C6F626C637364;
  v33 = 0;
  operation = AMCP::Core::Core::find_operation(&v34, v5, &v32);
  v8 = v34;
  if (!v34)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v47 = 1024;
      v48 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v53 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v47 = 1024;
      v48 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v47 = 1024;
      v48 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v37);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  *buf = a2;
  LOBYTE(v39.__vftable) = 1;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(*v12 + 48))(v12, buf, &v39);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1DE3233EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
    std::runtime_error::~runtime_error(&a28);
    if (a26 < 0)
    {
      operator delete(a21);
    }

    if (v30)
    {
      __cxa_free_exception(v29);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 145));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[149];
}

uint64_t AMCP::Boolean_Control::Boolean_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668E0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x746F676C);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 332;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_BOOLean_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE323678(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1DE32380C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Boolean_Control::get_value(AMCP::Boolean_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "lvcbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v15 = 4;
          strcpy(__p, "bcvl");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE323A4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Boolean_Control::set_value(AMCP::Boolean_Control *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F626263766CLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE323B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE323B74);
}

uint64_t AMCP::Boolean_Control::set_value_and_wait(AMCP::Boolean_Control *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F626263766CLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE323D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE323CF4);
}

uint64_t AMCP::Selector_Control::Selector_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F5966900;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x736C6374);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 394;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_selector_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE323E98(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1DE32402C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Selector_Control::is_multi_value(AMCP::Selector_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "mccsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v15 = 4;
          strcpy(__p, "sccm");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE32426C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Selector_Control::get_value(AMCP::Selector_Control *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    AMCP::Core::Core::get_simple_required_property<1935893353u>(&__p, v5);
    v6 = *__p;
    operator delete(__p);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void AMCP::Core::Core::get_simple_required_property<1935893353u>(void *a1, AMCP::Core::Core *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  strcpy(buf, "iccsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v13, a2, buf);
  if ((v15 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v12 = 4;
      strcpy(__p, "scci");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v17 = 1024;
      v18 = 391;
      v19 = 2080;
      v20 = "optional_value.operator BOOL() == true";
      v21 = 2080;
      v22 = __p;
      v23 = 1024;
      v24 = 1735159650;
      v25 = 1024;
      v26 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v13;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v13, v14, (v14 - v13) >> 2);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    operator delete(v4);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE3244C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

int8x8_t *AMCP::Selector_Control::set_value(AMCP::Selector_Control *this, int a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v9 = a2;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v9, &__p, 1uLL);
    v7 = AMCP::Core::Core::set_simple_property_value<1935893353u>(v7, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v7;
}

void sub_1DE32457C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324554);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1935893353u>(int8x8_t *a1, uint64_t *a2)
{
  v12 = 0x676C6F6273636369;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8, *a2, a2[1], (a2[1] - *a2) >> 2);
      v9 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE3246A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324690);
}

uint64_t AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE324B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[153];
}

int8x8_t *AMCP::Selector_Control::set_value_and_wait(AMCP::Selector_Control *this, int a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v9 = a2;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v9, &__p, 1uLL);
    v7 = AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(v7, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v7;
}

void sub_1DE324D3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324D14);
}

uint64_t AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(int8x8_t *a1, uint64_t *a2)
{
  v12 = 0x676C6F6273636369;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8, *a2, a2[1], (a2[1] - *a2) >> 2);
      v9 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE324E68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324E50);
}

void AMCP::Selector_Control::get_multi_value(AMCP::Selector_Control *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1935893353u>(a2, v7);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t AMCP::Selector_Control::set_multi_value(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = AMCP::Core::Core::set_simple_property_value<1935893353u>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

uint64_t AMCP::Selector_Control::set_multi_value_and_wait(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void AMCP::Selector_Control::get_item_list(AMCP::Selector_Control *this@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v20 = 0x676C6F6273636169;
    v21 = 0;
    has_property = AMCP::Core::Core::has_property(v7, &v20);
    if (!has_property)
    {
      goto LABEL_22;
    }

    AMCP::Core::Core::find_operation(&v27, v7, &v20);
    v9 = v27;
    if (v27)
    {
      v10 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10))
      {
        AMCP::Core::Operation::call_function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(buf, v9);
        v19 = *&buf[8];
        v22 = *buf;
        v23 = *&buf[16];
        memset(buf, 0, 24);
        v24 = 1;
        __p[0] = buf;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_8:
        v11 = 0;
        v9 = v19;
        goto LABEL_15;
      }

      v13 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v13))
      {
        AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v9);
        AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(__p, buf);
        v19 = __p[1];
        v22 = *__p;
        v23 = v26;
        __p[1] = 0;
        v26 = 0;
        __p[0] = 0;
        v24 = 1;
        v29 = __p;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v29);
        if (*&v32[2])
        {
          (*&v32[2])(0, buf, 0, 0);
        }

        goto LABEL_8;
      }
    }

    v11 = 1;
LABEL_15:
    has_property = v28;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if ((v11 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2, v22, v9, (v9 - v22) >> 4);
      *buf = &v22;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_19;
    }

LABEL_22:
    LOBYTE(v22) = 0;
    v24 = 0;
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
      HIBYTE(v26) = 4;
      strcpy(__p, "scai");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2080;
      *&buf[20] = "optional_value.operator BOOL() == true";
      v31 = 2080;
      *v32 = __p;
      *&v32[8] = 1024;
      v33 = 1735159650;
      v34 = 1024;
      v35 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1DE32534C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<unsigned int, unsigned int, applesauce::CF::StringRef>>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<unsigned int, unsigned int, applesauce::CF::StringRef>>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3257FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[155];
}

uint64_t AMCP::Stereo_Pan_Control::Stereo_Pan_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F5966920;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x7370616E);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Control.cpp";
      v14 = 1024;
      v15 = 520;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_stereo_pan_control)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE325A50(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1DE325BE4(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

float AMCP::Stereo_Pan_Control::get_value(AMCP::Stereo_Pan_Control *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.5;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vcpsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v10 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            v15 = 4;
            strcpy(__p, "spcv");
            *buf = 136316418;
            *&buf[4] = "Core.h";
            v17 = 1024;
            v18 = 391;
            v19 = 2080;
            v20 = "optional_value.operator BOOL() == true";
            v21 = 2080;
            v22 = __p;
            v23 = 1024;
            v24 = 1735159650;
            v25 = 1024;
            v26 = 0;
            _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          abort();
        }

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE325E1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Stereo_Pan_Control::set_value(AMCP::Stereo_Pan_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F6273706376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE325F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE325F44);
}

uint64_t AMCP::Stereo_Pan_Control::set_value_and_wait(AMCP::Stereo_Pan_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F6273706376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE3260EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3260C4);
}

unint64_t AMCP::Stereo_Pan_Control::get_channels(AMCP::Stereo_Pan_Control *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ccpsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(v5, buf);
      if ((v7 & 1) == 0)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *v14;
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          v15 = *v14;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 4;
          strcpy(__p, "spcc");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v19 = 1024;
          v20 = 391;
          v21 = 2080;
          v22 = "optional_value.operator BOOL() == true";
          v23 = 2080;
          v24 = __p;
          v25 = 1024;
          v26 = 1735159650;
          v27 = 1024;
          v28 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v8 = v6 & 0xFFFFFFFF00000000;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 | v9;
}

void sub_1DE3262EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::compute_system_differences(void *a1, uint64_t a2, uint64_t a3)
{
  v73 = 0;
  v74 = 0;
  v75 = 0;
  for (i = (a2 + 16); ; std::vector<unsigned int>::push_back[abi:ne200100](&v73, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v70 = 0;
  v71 = 0;
  v7 = (a3 + 16);
  v72 = 0;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    std::vector<unsigned int>::push_back[abi:ne200100](&v70, v7 + 4);
  }

  v8 = v73;
  v9 = v74;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v10 = v70;
  v11 = v71;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  *v65 = 0u;
  v66 = 0u;
  if (v8 != v9)
  {
    while (1)
    {
      if (v10 == v11)
      {
        do
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v66 + 8, v8++);
        }

        while (v8 != v9);
        goto LABEL_18;
      }

      if (*v8 == *v10)
      {
        break;
      }

      if (*v8 >= *v10)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v68, v10);
        goto LABEL_14;
      }

      std::vector<unsigned int>::push_back[abi:ne200100](&v66 + 8, v8++);
LABEL_15:
      if (v8 == v9)
      {
        goto LABEL_18;
      }
    }

    std::vector<unsigned int>::push_back[abi:ne200100](v65, v8++);
LABEL_14:
    ++v10;
    goto LABEL_15;
  }

LABEL_18:
  for (j = a1; v10 != v11; ++v10)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&v68, v10);
  }

  memset(v63, 0, sizeof(v63));
  v64 = 1065353216;
  v12 = v65[0];
  v49 = v65[1];
  if (v65[0] != v65[1])
  {
LABEL_21:
    v13 = *v12;
    v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(*a2, *(a2 + 8), *v12);
    if (v14)
    {
      v15 = v14;
      v16 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(*a3, *(a3 + 8), v13);
      if (v16)
      {
        v17 = v16;
        *__p = 0u;
        *v51 = 0u;
        v52 = 1065353216;
        v82 = 0u;
        v83 = 0u;
        v84 = 1065353216;
        v79 = 0u;
        v80 = 0u;
        v81 = 1065353216;
        v76 = 0u;
        v77 = 0u;
        v78 = 1065353216;
        v18 = v15[5];
        if (!v18)
        {
LABEL_34:
          for (k = v17[5]; k; k = *k)
          {
            if (!std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(v15 + 3, (k + 16)))
            {
              std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(&v76, (k + 16));
            }
          }

          _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(v59, __p, &v82, &v79, &v76);
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v77);
          v26 = v76;
          *&v76 = 0;
          if (v26)
          {
            operator delete(v26);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v80);
          v27 = v79;
          *&v79 = 0;
          if (v27)
          {
            operator delete(v27);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v83);
          v28 = v82;
          *&v82 = 0;
          if (v28)
          {
            operator delete(v28);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v51[0]);
          v29 = __p[0];
          __p[0] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(__p, v59, v60, v61, v62);
          v30 = *v12;
          if (!*(&v63[0] + 1))
          {
            goto LABEL_62;
          }

          v31 = vcnt_s8(*(v63 + 8));
          v31.i16[0] = vaddlv_u8(v31);
          if (v31.u32[0] > 1uLL)
          {
            v32 = *v12;
            if (*(&v63[0] + 1) <= v30)
            {
              v32 = v30 % DWORD2(v63[0]);
            }
          }

          else
          {
            v32 = (DWORD2(v63[0]) - 1) & v30;
          }

          v33 = *(*&v63[0] + 8 * v32);
          if (!v33 || (v34 = *v33) == 0)
          {
LABEL_62:
            operator new();
          }

          while (1)
          {
            v35 = v34[1];
            if (v35 == v30)
            {
              if (*(v34 + 4) == v30)
              {
                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v58);
                v36 = v57;
                v57 = 0;
                if (v36)
                {
                  operator delete(v36);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v56);
                v37 = v55;
                v55 = 0;
                if (v37)
                {
                  operator delete(v37);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v54);
                v38 = v53;
                v53 = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v51[0]);
                v39 = __p[0];
                __p[0] = 0;
                if (v39)
                {
                  operator delete(v39);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v62[2]);
                v40 = v62[0];
                v62[0] = 0;
                if (v40)
                {
                  operator delete(v40);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v61[2]);
                v41 = v61[0];
                v61[0] = 0;
                if (v41)
                {
                  operator delete(v41);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v60[2]);
                v42 = v60[0];
                v60[0] = 0;
                if (v42)
                {
                  operator delete(v42);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v59[2]);
                v43 = v59[0];
                v59[0] = 0;
                if (v43)
                {
                  operator delete(v43);
                }

                if (++v12 == v49)
                {
                  goto LABEL_80;
                }

                goto LABEL_21;
              }
            }

            else
            {
              if (v31.u32[0] > 1uLL)
              {
                if (v35 >= *(&v63[0] + 1))
                {
                  v35 %= *(&v63[0] + 1);
                }
              }

              else
              {
                v35 &= *(&v63[0] + 1) - 1;
              }

              if (v35 != v32)
              {
                goto LABEL_62;
              }
            }

            v34 = *v34;
            if (!v34)
            {
              goto LABEL_62;
            }
          }
        }

        while (1)
        {
          v19 = (v18 + 16);
          v20 = std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(v17 + 3, (v18 + 16));
          if (v20)
          {
            v21 = v20;
            if (v18 != v20)
            {
              v22 = *(v18 + 64);
              v23 = v20[8];
              if (v22 && v23)
              {
                if (!(v22)(5, v18 + 32, v20 + 4, 0))
                {
                  goto LABEL_32;
                }
              }

              else if (v22 | v23)
              {
LABEL_32:
                v19 = (v21 + 2);
                v24 = &v82;
                goto LABEL_33;
              }
            }

            v24 = __p;
          }

          else
          {
            v24 = &v79;
          }

LABEL_33:
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(v24, v19);
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_34;
          }
        }
      }

      v46 = 50;
      v47 = "after_iter != in_after.end()";
    }

    else
    {
      v46 = 47;
      v47 = "before_iter != in_before.end()";
    }

    __assert_rtn("compute_system_differences", "Snapshot.cpp", v46, v47);
  }

LABEL_80:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  v44 = v68;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(j, v68, *(&v68 + 1), (*(&v68 + 1) - v68) >> 2);
  j[3] = 0;
  j[4] = 0;
  j[5] = 0;
  v45 = *(&v66 + 1);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((j + 3), *(&v66 + 1), v67, (v67 - *(&v66 + 1)) >> 2);
  std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>::unordered_map((j + 6), v63);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(v63);
  if (v44)
  {
    operator delete(v44);
  }

  if (v45)
  {
    operator delete(v45);
  }

  if (v65[0])
  {
    operator delete(v65[0]);
  }

  if (v70)
  {
    operator delete(v70);
  }

  if (v73)
  {
    operator delete(v73);
  }
}

void sub_1DE3269DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(a10 + 32) = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v13;
    operator delete(v13);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1, a2);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(v9 + 40, a3);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1 + 80, a4);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1 + 120, a5);
  return a1;
}

void sub_1DE326B6C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1 + 80);
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1 + 40);
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table((v2 + 18));
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table((v2 + 13));
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table((v2 + 8));
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[8];
      if (v3)
      {
        v3(0, v1 + 4, 0, 0);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 144);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 104);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 64);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 24);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(a1, i + 4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(void *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 & 0xFF000000 | (v2 << 32) | *&v4 & 0xFFFFFFLL;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 & 0xFF000000 | (v2 << 32) | *&v4 & 0xFFFFFFLL;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (v10[2] != __PAIR64__(v3, v2) || *(v10 + 6) != v4)
  {
    goto LABEL_18;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Address,AMCP::Thing>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[8];
    if (v3)
    {
      v3(0, __p + 4, 0, 0);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v6 == v11)
    {
      if (result[2] == __PAIR64__(v4, v3) && *(result + 6) == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>> const&>(a1, *(i + 4));
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>> const&>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void *AMCP::Core::make_external_diff(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0;
  *v35 = 0;
  *&v35[8] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 24, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  *(a1 + 48) = v34;
  *(a1 + 56) = *v35;
  *v35 = 0;
  *&v35[8] = 0;
  v34 = 0;
  result = boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::~vector(&v34);
  v5 = a2[8];
  if (v5)
  {
    v20 = "emplace";
    v21 = "this->priv_in_range_or_end(position)";
    do
    {
      if (*(v5 + 88) || *(v5 + 128) || *(v5 + 168))
      {
        memset(v30, 0, sizeof(v30));
        for (i = *(v5 + 80); i; i = *i)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v34, v30, 0, i + 4, (i + 8));
        }

        memset(v29, 0, sizeof(v29));
        for (j = *(v5 + 120); j; j = *j)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v34, v29, 0, j + 4, (j + 8));
        }

        memset(v28, 0, sizeof(v28));
        for (k = *(v5 + 160); k; k = *k)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v34, v28, 0, k + 4, (k + 8));
        }

        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v22, v30);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v24, v29);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v26, v28);
        v31 = 0;
        inserted = 0;
        v33 = 0;
        v10 = *(a1 + 48);
        v9 = *(a1 + 56);
        if (!v10 && v9)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v11 = &v10[20 * v9];
        v34 = v11;
        inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>>::priv_insert_unique_prepare(v10, &v34, *(v5 + 16), &v33);
        v12 = v33;
        if (inserted)
        {
          v13 = 1862;
          if (v10 > v33 || v33 > v11)
          {
            goto LABEL_35;
          }

          v14 = *(a1 + 64);
          if (v14 < v9)
          {
            v13 = 2821;
            v20 = "priv_insert_forward_range";
            v21 = "this->m_holder.capacity() >= this->m_holder.m_size";
LABEL_35:
            __assert_rtn(v20, "vector.hpp", v13, v21);
          }

          if (v14 == v9)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>*,unsigned int const&,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>(&v31, (a1 + 48), v33, &v22, (v5 + 16));
          }

          else if (v11 == v33)
          {
            *v11 = *(v5 + 16);
            *(v11 + 8) = v22;
            *(v11 + 16) = v23;
            v23 = 0uLL;
            v22 = 0;
            *(v11 + 32) = v24;
            *(v11 + 40) = v25;
            v25 = 0uLL;
            v24 = 0;
            *(v11 + 56) = v26;
            *(v11 + 64) = v27;
            v26 = 0;
            v27 = 0uLL;
            ++*(a1 + 56);
          }

          else
          {
            v15 = v11 - 80;
            *v11 = *(v11 - 80);
            *(v11 + 8) = *(v11 - 72);
            *(v11 + 16) = *(v11 - 64);
            *(v11 - 72) = 0;
            *(v11 - 64) = 0;
            *(v11 + 32) = *(v11 - 48);
            *(v11 + 40) = *(v11 - 40);
            *(v11 - 56) = 0;
            *(v11 - 48) = 0;
            *(v11 - 40) = 0;
            *(v11 - 32) = 0;
            *(v11 + 56) = *(v11 - 24);
            *(v11 + 64) = *(v11 - 16);
            *(v11 - 16) = 0;
            *(v11 - 8) = 0;
            *(v11 - 24) = 0;
            ++*(a1 + 56);
            if ((v11 - 80) != v12)
            {
              v16 = (v11 - 80);
              do
              {
                v17 = *(v16 - 20);
                v16 -= 20;
                *v15 = v17;
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>((v15 + 8), (v15 - 72));
                v15 = v16;
              }

              while (v16 != v12);
            }

            LODWORD(v34) = *(v5 + 16);
            v18 = v22;
            *&v35[8] = v23;
            v22 = 0;
            v23 = 0uLL;
            *v35 = v18;
            v36 = v24;
            v37 = v25;
            v24 = 0;
            v25 = 0uLL;
            v38 = v26;
            v39 = v27;
            v26 = 0;
            v27 = 0uLL;
            *v12 = v34;
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(v12 + 1, v35);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v38);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v36);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v35);
          }
        }

        else
        {
          if (v9 < 0xCCCCCCCCCCCCCCCDLL * ((v33 - v10) >> 4))
          {
            __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
          }

          v31 = v33;
          std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(v33 + 1, &v22);
        }

        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v26);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v24);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v22);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v28);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v29);
        result = boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v30);
      }

      v5 = *v5;
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE327908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    v14 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v14;
      operator delete(v14);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 32);
    do
    {
      --v2;
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3 + 3);
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3);
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3 - 3);
      v3 += 10;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  v53 = 0;
  v9 = *a2;
  if (!a3)
  {
    v26 = *(a2 + 8);
    if (v9)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26 == 0;
    }

    if (!v27)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v18 = &v9[14 * v26];
LABEL_30:
    v54 = v18;
    goto LABEL_31;
  }

  v10 = *(a2 + 8);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = &v9[14 * v10];
  if (v12 == a3)
  {
    goto LABEL_15;
  }

  v13 = *a4;
  v14 = a4[1];
  v16 = *a3;
  v15 = a3[1];
  v17 = *a4 == *a3;
  if (v14 >= v15)
  {
    v17 = 0;
  }

  if (v13 < v16 || v17 || v13 == v16 && v14 == v15 && a4[2] < a3[2])
  {
LABEL_15:
    v53 = a3;
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    v19 = *(a3 - 14);
    v20 = *(a3 - 13);
    v18 = a3 - 14;
    v21 = *a4;
    v22 = a4[1];
    v23 = v19 == *a4;
    if (v20 >= v22)
    {
      v23 = 0;
    }

    if (v19 < v21 || v23 || (v24 = *(a3 - 12), v25 = a4[2], v19 == v21) && v20 == v22 && v24 < v25)
    {
LABEL_23:
      *(a1 + 8) = 1;
      goto LABEL_32;
    }

    v46 = v19 == v21 && v22 < v20;
    v48 = v20 == v22 && v25 < v24;
    if (v21 >= v19 && !v46 && !v48)
    {
      v53 = a3 - 14;
      *(a1 + 8) = 0;
      goto LABEL_67;
    }

    goto LABEL_30;
  }

  v54 = v12;
  v9 = a3;
LABEL_31:
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::priv_insert_unique_prepare(v9, &v54, a4, &v53);
  *(a1 + 8) = inserted;
  if (inserted)
  {
LABEL_32:
    v29 = v53;
    v30 = *a2;
    if (*a2 > v53)
    {
      goto LABEL_71;
    }

    v31 = *(a2 + 8);
    if (!v30 && v31)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v32 = &v30[14 * v31];
    if (v53 > v32)
    {
LABEL_71:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v33 = *(a2 + 16);
    if (v33 < v31)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v33 == v31)
    {
      v51 = *MEMORY[0x1E69E9840];
      v52 = v53;

      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,boost::container::dtl::pair<AMCP::Address,AMCP::Thing>*,AMCP::Address const&,AMCP::Thing const&>>(a1, a2, v52, a5, a4);
    }

    else
    {
      if (v32 == v53)
      {
        *v32 = *a4;
        v41 = a4[2];
        *(v32 + 16) = 0u;
        v42 = v32 + 16;
        *(v42 - 8) = v41;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0;
        v43 = *(a5 + 32);
        if (v43)
        {
          v43(1, a5);
        }

        ++*(a2 + 8);
      }

      else
      {
        v34 = (v32 - 56);
        boost::container::dtl::pair<AMCP::Address,AMCP::Thing>::pair(v32, v32 - 56);
        ++*(a2 + 8);
        if (v34 != v29)
        {
          v36 = v34;
          do
          {
            v37 = *(v36 - 7);
            v36 -= 14;
            *v34 = v37;
            v34[2] = *(v34 - 12);
            AMCP::swap((v34 - 10), (v34 + 4), v35);
            v34 = v36;
          }

          while (v36 != v29);
        }

        v38 = *a4;
        v54 = *a4;
        v39 = a4[2];
        v55 = v39;
        memset(v56, 0, sizeof(v56));
        v57 = 0;
        v40 = *(a5 + 32);
        if (v40)
        {
          v40(1, a5, v56, 0);
          v38 = v54;
          v39 = v55;
        }

        *v29 = v38;
        v29[2] = v39;
        AMCP::swap(v56, (v29 + 4), v35);
        if (v57)
        {
          v57(0, v56, 0, 0);
        }
      }

      *a1 = v29;
      v44 = *MEMORY[0x1E69E9840];
    }

    return;
  }

LABEL_67:
  if (*(a2 + 8) < (0x6DB6DB6DB6DB6DB7 * ((v53 - *a2) >> 3)))
  {
    __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
  }

  *a2;
  v49 = v53;
  *a1 = v53;
  v50 = *MEMORY[0x1E69E9840];

  AMCP::Thing::operator=((v49 + 4), a5, a3);
}

void sub_1DE327EA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 48);
    do
    {
      if (*v3)
      {
        (*v3)(0, (v3 - 4), 0, 0);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 4);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[20 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 20;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

char **std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(char **a1, char **a2)
{
  v4 = boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(a1, a2);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(v4 + 3, a2 + 3);

  return boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(a1 + 6, a2 + 6);
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>*,unsigned int const&,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>(void *a1, char *a2, char *a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 2);
  if (v5 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x199999999999999)
  {
    goto LABEL_28;
  }

  if (v5 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v5;
  }

  if (v5 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v5 / 5;
  }

  v8 = v5 + 1;
  if (v7 >= 0x199999999999999)
  {
    v7 = 0x199999999999999;
  }

  v9 = v8 > v7 ? v5 + 1 : v7;
  if (v8 > 0x199999999999999)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v15 = *a2;
  v16 = operator new(80 * v9);
  v17 = v16;
  v18 = *a2;
  v19 = *a2 + 80 * *(a2 + 1);
  v20 = v16;
  if (*a2 != a3)
  {
    v21 = *a2;
    v20 = v16;
    do
    {
      *v20 = *v21;
      *(v20 + 1) = *(v21 + 1);
      *(v20 + 1) = *(v21 + 1);
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 1) = 0;
      *(v20 + 4) = *(v21 + 4);
      *(v20 + 40) = *(v21 + 40);
      *(v21 + 5) = 0;
      *(v21 + 6) = 0;
      *(v21 + 4) = 0;
      *(v20 + 7) = *(v21 + 7);
      *(v20 + 4) = *(v21 + 4);
      *(v21 + 7) = 0;
      *(v21 + 8) = 0;
      *(v21 + 9) = 0;
      v21 += 80;
      v20 += 80;
    }

    while (v21 != a3);
  }

  *v20 = *a5;
  *(v20 + 1) = *a4;
  *(v20 + 1) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(v20 + 4) = *(a4 + 24);
  *(v20 + 40) = *(a4 + 32);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(v20 + 7) = *(a4 + 48);
  *(v20 + 4) = *(a4 + 56);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  if (v19 != a3)
  {
    v22 = v20 + 144;
    v23 = a3;
    do
    {
      *(v22 - 16) = *v23;
      *(v22 - 7) = *(v23 + 1);
      *(v22 - 3) = *(v23 + 1);
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 1) = 0;
      *(v22 - 4) = *(v23 + 4);
      *(v22 - 24) = *(v23 + 40);
      *(v23 + 5) = 0;
      *(v23 + 6) = 0;
      *(v23 + 4) = 0;
      *(v22 - 1) = *(v23 + 7);
      *v22 = *(v23 + 4);
      v22 += 5;
      *(v23 + 7) = 0;
      *(v23 + 8) = 0;
      *(v23 + 9) = 0;
      v23 += 80;
    }

    while (v23 != v19);
  }

  if (v18)
  {
    v24 = *(a2 + 1);
    if (v24)
    {
      v25 = v18 + 32;
      do
      {
        --v24;
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25 + 3);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25 - 3);
        v25 += 10;
      }

      while (v24);
    }

    operator delete(*a2);
  }

  v26 = *(a2 + 1) + 1;
  *a2 = v17;
  *(a2 + 1) = v26;
  *(a2 + 2) = v9;
  *a1 = &v17[a3 - v15];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F59875F8;
  exception[1] = this;
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

char **boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(char **a1, char **a2)
{
  if (a2 != a1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (v5)
    {
      v6 = (v4 + 48);
      do
      {
        if (*v6)
        {
          (*v6)(0, (v6 - 4), 0, 0);
        }

        v6 += 7;
        --v5;
      }

      while (v5);
      v4 = *a1;
    }

    a1[1] = 0;
    if (v4)
    {
      operator delete(v4);
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return a1;
}

char **boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(char **a1, const char *a2)
{
  v3 = *(a2 + 1);
  *a1 = 0;
  a1[1] = v3;
  a1[2] = 0;
  if (v3)
  {
    if (v3 >= 0x24924924924924ALL)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
    }

    v5 = operator new(56 * v3);
    *a1 = v5;
    a1[2] = v3;
    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = v5;
      v8 = 0;
      v9 = *a2;
      do
      {
        v10 = &v7[v8];
        *v10 = *(v9 + v8);
        *(v10 + 2) = *(v9 + v8 + 8);
        *&v7[v8 + 16] = 0u;
        *(v10 + 2) = 0u;
        *(v10 + 6) = 0;
        v11 = *(v9 + v8 + 48);
        if (v11)
        {
          v11(1, v9 + v8 + 16, &v7[v8 + 16], 0);
        }

        v8 += 56;
        --v6;
      }

      while (v6);
    }
  }

  return a1;
}

void sub_1DE328590(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 16))
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int *a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((*a2 - a1) >> 3);
    v5 = *a3;
    v6 = a3[1];
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v4 >> 1;
      v8 = &a1[14 * (v4 >> 1)];
      v9 = *v8;
      v10 = v8[1];
      v11 = *v8 == v5;
      if (v10 >= v6)
      {
        v11 = 0;
      }

      if (v9 < v5 || v11 || (v9 == v5 ? (v12 = v10 == v6) : (v12 = 0), v12 ? (v13 = v8[2] >= a3[2]) : (v13 = 1), !v13))
      {
        a1 = v8 + 14;
        v7 = v4 + ~v7;
      }

      v4 = v7;
    }

    while (v7);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v14 = *a3;
  v15 = a3[1];
  v17 = *a1;
  v16 = a1[1];
  v18 = v15 < v16 && *a3 == *a1;
  v19 = 1;
  if (v14 >= v17 && !v18)
  {
    return v14 == v17 && v15 == v16 && a3[2] < a1[2];
  }

  return v19;
}

AMCP::Thing *AMCP::Thing::operator=(AMCP::Thing *a1, uint64_t a2, AMCP::Thing *a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v4 = *(a2 + 32);
  if (v4)
  {
    v4(1);
  }

  AMCP::swap(v6, a1, a3);
  if (v7)
  {
    v7(0, v6, 0, 0);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,boost::container::dtl::pair<AMCP::Address,AMCP::Thing>*,AMCP::Address const&,AMCP::Thing const&>>(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 2);
  if (v5 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x249249249249249)
  {
    goto LABEL_32;
  }

  if (v5 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v5;
  }

  if (v5 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v5 / 5;
  }

  v8 = v5 + 1;
  if (v7 >= 0x249249249249249)
  {
    v7 = 0x249249249249249;
  }

  v9 = v8 > v7 ? v5 + 1 : v7;
  if (v8 > 0x249249249249249)
  {
LABEL_32:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v28 = *a2;
  v14 = operator new(56 * v9);
  v15 = v14;
  v16 = *a2;
  v17 = *(a2 + 1);
  v30 = v14;
  v32 = a2;
  v18 = v14;
  if (v16 != a3)
  {
    v19 = v16;
    v18 = v14;
    do
    {
      boost::container::dtl::pair<AMCP::Address,AMCP::Thing>::pair(v18, v19);
      v19 += 56;
      v18 += 56;
    }

    while (v19 != a3);
  }

  v31 = v18;
  *v18 = *a5;
  *(v18 + 8) = *(a5 + 8);
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  v20 = *(a4 + 32);
  if (v20)
  {
    v20(1, a4, v18 + 16, 0);
  }

  v21 = v16 + 56 * v17;
  if (v21 != a3)
  {
    v22 = v18 + 56;
    v23 = a3;
    do
    {
      v24 = boost::container::dtl::pair<AMCP::Address,AMCP::Thing>::pair(v22, v23);
      v23 += 56;
      v22 = v24 + 56;
    }

    while (v23 != v21);
  }

  v30 = 0;
  v31 = 0;
  boost::container::dtl::scoped_destructor_range<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::~scoped_destructor_range(&v30);
  if (v16)
  {
    v25 = *(a2 + 1);
    if (v25)
    {
      v26 = (v16 + 48);
      do
      {
        if (*v26)
        {
          (*v26)(0, (v26 - 4), 0, 0);
        }

        v26 += 7;
        --v25;
      }

      while (v25);
    }

    operator delete(*a2);
  }

  v27 = *(a2 + 1) + 1;
  *a2 = v15;
  *(a2 + 1) = v27;
  *(a2 + 2) = v9;
  *a1 = &v15[a3 - v28];
}

void sub_1DE3289CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::container::dtl::scoped_destructor_range<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::~scoped_destructor_range(va);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::pair<AMCP::Address,AMCP::Thing>::pair(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = 0u;
  *(a1 + 8) = v3;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  v4 = *(a2 + 48);
  if (v4)
  {
    v4(2, a2 + 16);
  }

  return a1;
}

uint64_t *boost::container::dtl::scoped_destructor_range<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::~scoped_destructor_range(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      v4(0, v2 + 16, 0, 0);
      v2 = *a1;
      v3 = a1[1];
    }

    v2 += 56;
    *a1 = v2;
  }

  return a1;
}

void AMCP::make_description_from_thing(AMCP *this, const AMCP::Thing *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  v18 = 0;
  if (v4)
  {
    v4(3, a2, 0, &v18);
  }

  if (v18 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
  {
    AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(cf, a2);
    v5 = cf[0];
    if (cf[0])
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

  if (v18 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
  {
    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(cf, a2);
    v5 = cf[0];
    if (cf[0])
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

  if (v18 != AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>())
  {
    if (v18 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      AMCP::Thing::convert_to<applesauce::CF::BooleanRef>(cf, a2);
      v5 = cf[0];
      if (cf[0])
      {
        goto LABEL_25;
      }

      goto LABEL_68;
    }

    if (v18 == AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>() || v18 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
    {
      AMCP::Thing::convert_to<applesauce::CF::DataRef>(cf, a2);
      v5 = cf[0];
      if (cf[0])
      {
LABEL_25:
        CFRetain(cf[0]);
        *this = v5;
        CFRelease(v5);
        goto LABEL_69;
      }

LABEL_68:
      *this = 0;
      goto LABEL_69;
    }

    if (v18 != AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>() && !AMCP::is_one_of<AudioValueRange,CA::ValueRange,applesauce::CF::DictionaryRef>(&v18) && v18 != AMCP::Implementation::get_type_marker<CA::ChannelLayout>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>() && !AMCP::is_one_of<AudioStreamBasicDescription,CA::StreamDescription,applesauce::CF::DictionaryRef>(&v18))
    {
      if (AMCP::is_one_of<std::vector<AudioStreamBasicDescription>,std::vector<CA::StreamDescription>,applesauce::CF::ArrayRef>(&v18))
      {
        goto LABEL_37;
      }

      if (!AMCP::is_one_of<AudioStreamRangedDescription,CA::RangedStreamDescription,applesauce::CF::DictionaryRef>(&v18))
      {
        if (AMCP::is_one_of<std::vector<AudioStreamRangedDescription>,std::vector<CA::RangedStreamDescription>,applesauce::CF::ArrayRef>(&v18))
        {
          goto LABEL_37;
        }

        if (v18 != AMCP::Implementation::get_type_marker<std::tuple<CA::ValueRangeList,CA::StreamDescription>>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
        {
          if (v18 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>() || v18 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || v18 == AMCP::Implementation::get_type_marker<CA::ValueRangeList>() || v18 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
          {
            goto LABEL_37;
          }

          if (v18 != AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
          {
            if (v18 != AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
            {
              if (AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(&v18))
              {
                AMCP::Thing::convert_to<applesauce::CF::NumberRef>(cf, a2);
                applesauce::CF::TypeRef::from_get(this, cf[0]);
                applesauce::CF::NumberRef::~NumberRef(cf);
                goto LABEL_69;
              }

              if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(&v18))
              {
                if (v18 == AMCP::Implementation::get_type_marker<std::string>() || v18 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
                {
                  AMCP::Thing::convert_to<applesauce::CF::StringRef>(cf, a2);
                  applesauce::CF::TypeRef::from_get(this, cf[0]);
                  applesauce::CF::StringRef::~StringRef(cf);
                  goto LABEL_69;
                }

                if (v18 != AMCP::Implementation::get_type_marker<std::vector<std::string>>() && v18 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
                {
                  if (AMCP::is_one_of<mcp_applesauce::CF::PropertyListRef,applesauce::CF::StringRef,applesauce::CF::DataRef,applesauce::CF::NumberRef,applesauce::CF::BooleanRef,applesauce::CF::DateRef,applesauce::CF::ArrayRef,applesauce::CF::DictionaryRef>(&v18))
                  {
                    AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(cf, a2);
                    applesauce::CF::TypeRef::from_get(this, cf[0]);
                    mcp_applesauce::CF::PropertyListRef::~PropertyListRef(cf);
                    goto LABEL_69;
                  }

                  goto LABEL_68;
                }
              }
            }

LABEL_37:
            AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(cf, a2);
            applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef(this, cf[0]);
            applesauce::CF::ArrayRef::~ArrayRef(cf);
            goto LABEL_69;
          }
        }
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(cf, a2);
    applesauce::CF::DictionaryRef::operator applesauce::CF::TypeRef(this, cf[0]);
    applesauce::CF::DictionaryRef::~DictionaryRef(cf);
    goto LABEL_69;
  }

  AMCP::Thing::convert_to<applesauce::CF::URLRef>(&url, a2);
  v6 = url;
  if (!url)
  {
    goto LABEL_68;
  }

  v7 = CFURLCreateData(0, url, 0x8000100u, 1u);
  v8 = v7;
  cf[2] = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = CFStringCreateWithBytes(0, "Really A CFURL", 14, 0x8000100u, 0);
    v11 = v10;
    if (!v10)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(v10);
    v19 = v11;
    CFRetain(v8);
    v20 = v8;
    cf[0] = &v19;
    cf[1] = 1;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(cf);
    CFRetain(CFDictionaryRef);
    *this = CFDictionaryRef;
    CFRelease(CFDictionaryRef);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    CFRelease(v11);
    CFRelease(v8);
  }

  else
  {
    *this = 0;
  }

  CFRelease(v6);
LABEL_69:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE3290B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Address::to_string(std::string *this, unsigned int *a2, int8x8_t a3)
{
  a3.i32[0] = bswap32(*a2);
  v5 = vzip1_s8(a3, a3);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  *(&v23.__r_.__value_.__s + 23) = 4;
  LODWORD(v23.__r_.__value_.__l.__data_) = vuzp1_s8(v8, v8).u32[0];
  v23.__r_.__value_.__s.__data_[4] = 0;
  v9 = std::string::append(&v23, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  LODWORD(v10) = bswap32(a2[1]);
  *&v10 = vzip1_s8(*&v10, *&v10);
  v11.i64[0] = 0x1F0000001FLL;
  v11.i64[1] = 0x1F0000001FLL;
  v12.i64[0] = 0x5F0000005FLL;
  v12.i64[1] = 0x5F0000005FLL;
  *&v10 = vbsl_s8(vmovn_s32(vcgtq_u32(v12, vsraq_n_s32(v11, vshlq_n_s32(vmovl_u16(*&v10), 0x18uLL), 0x18uLL))), *&v10, 0x2E002E002E002ELL);
  v22 = 4;
  *__s = vuzp1_s8(*&v10, *&v10).u32[0];
  __s[4] = 0;
  v13 = std::string::append(&v24, __s, 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v25, "/", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, a2[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v20;
  }

  else
  {
    v17 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v26, v17, size);
  *this = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void *applesauce::CF::DictionaryRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void *applesauce::CF::ArrayRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

BOOL AMCP::is_one_of<AudioStreamRangedDescription,CA::RangedStreamDescription,applesauce::CF::DictionaryRef>(void *a1)
{
  v2 = &unk_1ECDAE000;
  {
    v2 = &unk_1ECDAE000;
    if (v5)
    {
      v2 = &unk_1ECDAE000;
    }
  }

  if (*a1 == v2[361])
  {
    return 1;
  }

  v3 = &unk_1ECDAE000;
  {
    v3 = &unk_1ECDAE000;
    if (v7)
    {
      v3 = &unk_1ECDAE000;
    }
  }

  return *a1 == v3[363] || *a1 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
}

void *applesauce::CF::TypeRef::from_get(void *this, CFTypeRef cf)
{
  v3 = this;
  if (cf)
  {
    this = CFRetain(cf);
  }

  *v3 = cf;
  return this;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_meta_device_property_traits_list(void)::$_0 &&>>()
{
  v34[6] = *MEMORY[0x1E69E9840];
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
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1969841184, 1, 1, 0, &AMCP::Property_Traits<1969841184u>::k_valid_scopes, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, 0, 1668639076, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1953653102, 1, 0, 0, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, 0, 1953653102, 23);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668049764, 1, 0, 0, &AMCP::Property_Traits<1668049764u>::k_valid_scopes, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, 0, 1668049764, 7);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1819569763, 1, 0, 0, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, 0, 1819569763, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1853059700, 1, 0, 1, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, 0, 1853059700, 17);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1853059619, 1, 0, 0, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, &AMCP::Property_Traits<1935763060u>::k_valid_scopes, 0, 1853059619, 25);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1836411236, 0, 0, 0, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, &AMCP::Property_Traits<1751737454u>::k_valid_scopes, 0, 1836411236, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v25, 1935763060, 1, 0, 0, &AMCP::Property_Traits<1935763060u>::k_valid_scopes, &AMCP::Property_Traits<1937009955u>::k_valid_scopes, 0, 1935763060, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v26, 1937009955, 1, 0, 0, &AMCP::Property_Traits<1937009955u>::k_valid_scopes, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, 0, 1937009955, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v27, 1685222501, 0, 0, 0, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, &AMCP::Property_Traits<1936879204u>::k_valid_scopes, 0, 1685222501, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v28, 1735554416, 1, 0, 1, &AMCP::Property_Traits<1735554416u>::k_valid_scopes, &AMCP::Property_Traits<1634169456u>::k_valid_scopes, 0, 1735554416, 3);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v29, 1634169456, 1, 0, 0, &AMCP::Property_Traits<1634169456u>::k_valid_scopes, &AMCP::Property_Traits<1633906541u>::k_valid_scopes, 0, 1634169456, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v30, 1633906541, 1, 0, 1, &AMCP::Property_Traits<1633906541u>::k_valid_scopes, &AMCP::Property_Traits<1634562932u>::k_valid_scopes, 0, 1633906541, 3);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v31, 1634562932, 1, 0, 1, &AMCP::Property_Traits<1634562932u>::k_valid_scopes, &AMCP::Property_Traits<1634755428u>::k_valid_scopes, 0, 1634562932, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v32, 1634755428, 1, 0, 1, &AMCP::Property_Traits<1634755428u>::k_valid_scopes, &AMCP::Property_Traits<1668445298u>::k_valid_scopes, 0, 1634755428, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v33, 1668445298, 1, 0, 0, &AMCP::Property_Traits<1668445298u>::k_valid_scopes, &AMCP::Property_Traits<1886549620u>::k_valid_scopes, 0, 1668445298, 12);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v34, 1936879204, 0, 0, 0, &AMCP::Property_Traits<1936879204u>::k_valid_scopes, &AMCP::Property_Traits<1684434036u>::k_valid_scopes, 0, 1936876644, 27);
  operator new();
}

void sub_1DE32A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1680;
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

void DSP_Dictionariable::TooledDictionary::~TooledDictionary(DSP_Dictionariable::TooledDictionary *this)
{
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(this);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(DSP_Dictionariable::DictionariableKvp *this)
{
  *this = &unk_1F598EBC8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void DSP_Dictionariable::DictionarySet::maybe_add_under_key(uint64_t **a1, __CFDictionary **a2, uint64_t a3)
{
  if (*(a3 + 8) == 1 && *a3 && CFStringGetLength(*a3) >= 1)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v7 = *a1;
    v6 = a1[1];
    while (v7 != v6)
    {
      (*(**v7 + 16))(*v7, &Mutable);
      ++v7;
    }

    if ((*(a3 + 8) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(*a2, *a3, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      (*(*v10 + 16))(v10, a2);
    }
  }
}

void sub_1DE32A28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

uint64_t DSP_Dictionariable::DictionarySet::maybe_load_from_under_key(uint64_t **a1, CFDictionaryRef *a2, uint64_t a3)
{
  if (*(a3 + 8) == 1 && *a3 && CFStringGetLength(*a3) >= 1)
  {
    v15[0] = &unk_1F598EC08;
    v15[1] = 0;
    v15[2] = a2;
    if ((*(a3 + 8) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(&cf, *a2, *a3);
    if (v14 == 1)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = 1;
      if (v6 == v7)
      {
        goto LABEL_9;
      }

      do
      {
        v8 = v8 & (*(**v6 + 24))(*v6, &cf);
        ++v6;
      }

      while (v6 != v7);
      if (v14)
      {
LABEL_9:
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    DSP_Dictionariable::TooledDictionary::~TooledDictionary(v15);
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v8 = 1;
    while (v9 != v10)
    {
      v11 = *v9++;
      v8 = v8 & (*(*v11 + 24))(v11, a2);
    }
  }

  return v8;
}

void sub_1DE32A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DSP_Dictionariable::TooledDictionary::~TooledDictionary(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void DSP_Dictionariable::DictionarySet::add_to(DSP_Dictionariable::DictionarySet *this, __CFArray **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v9 = Mutable;
  v6 = *this;
  v5 = *(this + 1);
  if (v6 == v5)
  {
    v7 = Mutable;
  }

  else
  {
    do
    {
      (*(**v6 + 16))(*v6, &v9);
      ++v6;
    }

    while (v6 != v5);
    v7 = v9;
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v7);
  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1DE32A58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

BOOL DSP_Dictionariable::DictionarySet::has_all_values(DSP_Dictionariable::DictionarySet *this, DSP_Dictionariable::DictionarySet *a2)
{
  v2 = (a2 - this) >> 3;
  if (a2 != this)
  {
    v4 = this;
    do
    {
      v5 = *v4;
      v4 = (v4 + 8);
      v2 -= (*(*v5 + 32))(v5);
    }

    while (v4 != a2);
  }

  return v2 == 0;
}

void HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream(HALS_Device_HostedDSP_ClientInfo::PerClientInfo *this, int a2)
{
  if (a2)
  {
    v3 = 24;
  }

  else
  {
    v3 = 72;
  }

  v4 = *(this + v3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    HALS_ObjectMap::ObjectIsDead(*(this + v3), v5);
    *(this + v3) = 0;
  }
}

void HALS_Device_HostedDSP_ClientInfo::~HALS_Device_HostedDSP_ClientInfo(HALS_Device_HostedDSP_ClientInfo *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v19 = 47;
    do
    {
      v20 = &aLibraryCachesC_39[v17];
      if (v19 == 47)
      {
        v18 = &aLibraryCachesC_39[v17];
      }

      v19 = v20[1];
      if (!v20[1])
      {
        break;
      }

      v21 = v17++ >= 0xFFF;
    }

    while (!v21);
    if (v18)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
    }

    v28 = 136315394;
    v29 = v22;
    v30 = 1024;
    v31 = 64;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_Device_HostedDSP_ClientInfo::HALS_Device_HostedDSP_ClientInfo::~HALS_Device_HostedDSP_ClientInfo() - poof!", &v28, 0x12u);
  }

  v7 = (this + 32);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (v7[6] | v7[12])
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = 0;
        v24 = 0;
        v25 = 47;
        do
        {
          v26 = &aLibraryCachesC_39[v23];
          if (v25 == 47)
          {
            v24 = &aLibraryCachesC_39[v23];
          }

          v25 = v26[1];
          if (!v26[1])
          {
            break;
          }

          v21 = v23++ >= 0xFFF;
        }

        while (!v21);
        if (v24)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
        }

        v28 = 136315394;
        v29 = v27;
        v30 = 1024;
        v31 = 69;
        _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DSPStreams abandoned during destruction of HALS_Device.", &v28, 0x12u);
      }

      break;
    }
  }

  std::mutex::~mutex((this + 56));
  v12 = *(this + 4);
  while (v12)
  {
    v13 = v12;
    v12 = *v12;
    if (*(v13 + 128) == 1)
    {
      v14 = v13[13];
      if (v14)
      {
        v13[14] = v14;
        operator delete(v14);
      }
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v13[10]);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v13 + 8, 0);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v13 + 7, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v13[4]);
    operator delete(v13);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE32A954(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *HALS_Device_HostedDSP_ClientInfo::find(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    if (*(a1 + 12) != 1)
    {
      return 0;
    }

    v5 = 0;
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a1 + 16), v5);
  if (v6)
  {
    return v6 + 3;
  }

  if (!a3)
  {
    return 0;
  }

  v15 = 0u;
  v16[0] = 0;
  v20 = 0;
  *v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v16[1] = &v17;
  v21 = v5;
  v22 = &v23;
  v23 = 0u;
  v24 = 0u;
  v26 = 0u;
  v25[0] = 0;
  v25[1] = &v26;
  v27 = 0;
  LOBYTE(__p[0]) = 0;
  v29 = 0;
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v8 <= v5)
    {
      v10 = v5 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & v5;
  }

  v11 = *(*(a1 + 16) + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v5)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_26;
    }

LABEL_25:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  if (*(v12 + 4) != v5)
  {
    goto LABEL_25;
  }

  v7 = v12 + 3;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v26);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v25, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v24 + 1, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v23);
  if (v20 == 1 && v18[1])
  {
    *&v19 = v18[1];
    operator delete(v18[1]);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v17);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v16, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v15 + 1, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(0);
  return v7;
}

void sub_1DE32AF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,void *>>>::operator()[abi:ne200100](1, v24);
  std::pair<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>::~pair(&a24);
  HALS_Device_HostedDSP_ClientInfo::PerClientInfo::~PerClientInfo(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__tree<DSP_Host_Types::AudioProcessingType>::__erase_unique<DSP_Host_Types::AudioProcessingType>(uint64_t **a1, unsigned int a2)
{
  v4 = (a1 + 1);
  result = a1[1];
  if (result)
  {
    v5 = v4;
    v6 = result;
    do
    {
      v7 = *(v6 + 7);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 == v4 || *(v5 + 7) > a2)
    {
      return 0;
    }

    else
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(result, v5);
      operator delete(v5);
      return 1;
    }
  }

  return result;
}

void std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 7);
      *(v9 + 28) = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= *(v15 + 7))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::pair<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      *(a1 + 96) = v2;
      operator delete(v2);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(a1 + 64));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((a1 + 48), 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((a1 + 40), 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(a1 + 16));
  return a1;
}

void HALS_Device_HostedDSP_ClientInfo::PerClientInfo::~PerClientInfo(HALS_Device_HostedDSP_ClientInfo::PerClientInfo *this)
{
  if (*(this + 104) == 1)
  {
    v2 = *(this + 10);
    if (v2)
    {
      *(this + 11) = v2;
      operator delete(v2);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 7));
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 5, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 4, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 1));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 128) == 1)
    {
      v3 = __p[13];
      if (v3)
      {
        __p[14] = v3;
        operator delete(v3);
      }
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(__p[10]);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](__p + 8, 0);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](__p + 7, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(__p[4]);
  }

  operator delete(__p);
}

void HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(HALS_Device_HostedDSP_ClientInfo *this, uint64_t a2, HALS_Client *a3, uint64_t a4)
{
  v5 = a3;
  std::mutex::lock((a2 + 56));
  if (a4)
  {
    v8 = *(a4 + 16);
  }

  else
  {
    if (*(a2 + 12) != 1)
    {
LABEL_9:
      *(this + 2) = 0;
      *(this + 1) = 0;
      *this = this + 8;
      goto LABEL_10;
    }

    v8 = 0;
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((a2 + 16), v8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = 6;
  if (v5)
  {
    v10 = 0;
  }

  std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](this, &v9[v10 + 3]);
LABEL_10:

  std::mutex::unlock((a2 + 56));
}